$ as -o app.o app.s
$ ld -macosx_version_min 10.7.0 -no_pie -e _main -o app app.o