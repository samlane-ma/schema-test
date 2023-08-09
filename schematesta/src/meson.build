
install_data('SchemaTestA.plugin', install_dir: LIB_INSTALL_DIR)

SchemaTestASources = [
'schematesta.vala',
]

SchemaTestADependencies = [
dependency('gtk+-3.0', version: '>=3.18'),
dependency('budgie-1.0', version: '>=2')
]

SchemaTestAValaArgs = [
'--target-glib=2.38',
'--enable-deprecated'
]

shared_library('schematesta', SchemaTestASources, dependencies: SchemaTestADependencies, vala_args: SchemaTestAValaArgs, install: true, install_dir: LIB_INSTALL_DIR)