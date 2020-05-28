libdir = File.dirname(__FILE__)
$LOAD_PATH.unshift(libdir) unless $LOAD_PATH.include?(libdir)

require "<%= name %>/version"

require "<%= name %>/transport"
require "<%= name %>/connection"
