project('org.ubuntubudgie.applet.schematesta',
        ['vala', 'c'],
        version: '0.1.0',
        meson_version: '>=0.40.0',
        license: 'GPL2')

am_cflags = [
    '-fstack-protector',
    '-pedantic',
    '-Wstrict-prototypes',
    '-Wundef',
    '-Werror-implicit-function-declaration',
    '-Wformat',
    '-Wformat-security',
    '-Werror=format-security',
    '-Wconversion',
    '-Wunused-variable',
    '-Wunreachable-code',
    '-Wall',
    '-W'
]

add_global_arguments(am_cflags, language: 'c')

# Global path variable
prefix = get_option('prefix')
libdir = join_paths(prefix, get_option('libdir'))
datadir = join_paths(prefix, get_option('datadir'))

LOCALE_DIR = join_paths(prefix, get_option('localedir'))
PIXMAPS_DIR = join_paths(datadir, 'pixmaps')
LIB_INSTALL_DIR = join_paths(prefix, libdir, 'budgie-desktop', 'plugins', meson.project_name())
SCHEMA_DIR = join_paths(prefix, 'share', 'glib-2.0', 'schemas')

message('Installing applet...')
subdir('src')

install_data('org.ubuntubudgie.applet.schematesta.gschema.xml', install_dir: SCHEMA_DIR)

meson.add_install_script('meson_post_install')
