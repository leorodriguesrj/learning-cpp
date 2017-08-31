OUTDIR=out.shared

[ -d "$OUTDIR" ] && rm -rfv $OUTDIR
mkdir -p $OUTDIR
gcc -fPIC -c module1.c -o $OUTDIR/module1.o
gcc -fPIC -c module2.c -o $OUTDIR/module2.o
gcc -shared -Wl,-soname,libmyotherlib.so -o $OUTDIR/libmyotherlib.so $OUTDIR/module1.o $OUTDIR/module2.o
gcc main.c -L./$OUTDIR -lmyotherlib -o program-shared