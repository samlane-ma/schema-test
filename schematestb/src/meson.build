
install_data('SchemaTestB.plugin', install_dir: LIB_INSTALL_DIR)

SchemaTestBSources = [
'schematestb.vala',
]

SchemaTestBDependencies = [
dependency('gtk+-3.0', version: '>=3.18'),
dependency('budgie-1.0', version: '>=2')
]

SchemaTestBValaArgs = [
'--target-glib=2.38',
'--enable-deprecated'
]

shared_library('schematestb', SchemaTestBSources, dependencies: SchemaTestBDependencies, vala_args: SchemaTestBValaArgs, install: true, install_dir: LIB_INSTALL_DIR)