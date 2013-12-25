require 'mkmf'

dir_config("puma_http11")

$defs.push "-Wno-deprecated-declarations"
$libs += " -lssl -lcrypto "
$libs += " -lgdi32 " if RUBY_PLATFORM =~ /mingw/

create_makefile("puma/puma_http11")
