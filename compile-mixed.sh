OUTDIR=out.mixed

[ -d "$OUTDIR" ] && rm -rfv $OUTDIR
mkdir -p $OUTDIR
source ./compile-static.sh
gcc -fPIC -c module3.c -o $OUTDIR/module3.o
gcc -fPIC -c main.c -o $OUTDIR/main.o
gcc -shared -Wl,-soname,libmixed.so -o $OUTDIR/libmixed.so out.static/libmylib.a $OUTDIR/module3.o
gcc $OUTDIR/main.o -L./$OUTDIR -lmixed -o program-mixed