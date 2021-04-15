const std   = @import("std");
const debug = std.debug;

pub fn main () !void{
    
    const fruits = [_][]const u8 {"apple", "orange"};
    debug.print("Size => {}", .{fruits.len});
    
    debug.print("Introducca la cadena a codear:\n", .{});
    var string_coder: [std.mem.page_size]u8 = undefined;
    var stdout = std.io.getStdOut();
    var lenght_string = try stdout.read(string_coder[0..]);
    
    debug.print("La cadena es:\t{s}", .{string_coder[0..lenght_string]});
    debug.print("Size => {}\n", .{string_coder[0..lenght_string].len});
    
    for (string_coder[0..lenght_string]) |item| {
        var code = item + 5;
        debug.print("{c}", .{code});
    }
}