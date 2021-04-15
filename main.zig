const std   = @import("std");
const debug = std.debug;


pub fn coder() void{

    debug.print("Introducca la cadena a codear:\n", .{});
    var string_coder: [std.mem.page_size]u8 = undefined;
    var stdout = std.io.getStdOut();
    var lenght_string = try stdout.read(string_coder[0..]);
    debug.print("Size => {}\n", .{string_coder[0..lenght_string].len});

    for (string_coder[0..lenght_string]) |item| {
        var code = item + 5;
        debug.print("{c}", .{code});
    }

}


pub fn main () !void{
    
    var join: bool = true;
    while (join) : () {
        
    }
    
    
    
}