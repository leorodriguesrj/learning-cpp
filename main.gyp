{
    'variables': {
        'cc': '$(CC)',
        'cxx': '$(CXX)',
        'ar': '$(AR)',
        'link': '$(LINK)'
    },
    'target_defaults': {

    },
    'targets': [
        {
            'target_name': 'libfinances',
            'type': 'shared_library',
            'sources': [
                'src/finances.c'
            ]
        },
        {
            'target_name': 'libconsole',
            'type': 'static_library',
            'sources': [
                'src/console.c'
            ]
        },
        {
            'target_name': 'libglobal',
            'type': 'shared_library',
            'dependencies': [
                'libconsole',
                'libfinances'
            ]
        },
        {
            'target_name': 'app1',
            'type': 'executable',
            'sources': [
                'src/main.c'
            ],
            'dependencies': [
                'libconsole',
                'libfinances'
            ]
        },
        {
            'target_name': 'app2',
            'type': 'executable',
            'sources': [
                'src/main.c'
            ],
            'dependencies': [
                'libglobal'
            ]
        }
    ]
}