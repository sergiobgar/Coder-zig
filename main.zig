const std   = @import("std");
const debug = std.debug;


pub fn coder() !u32{
    var key_int: u8 = 0;
    const Key = enum {
        weak,
        mediun,
        strong,
    };
    var key: [std.mem.page_size]u8 = undefined;
    var string_coder: [std.mem.page_size]u8 = undefined;
    var std_out = std.io.getStdOut();
    debug.print("String for code:\n", .{});
    var lenght_string = try std_out.read(string_coder[0..]);
    debug.print("Size => {}\n", .{string_coder[0..lenght_string].len});
    debug.print("------------------\n", .{});
    debug.print("Key:\n weak(w) \n mediun(m) \n strong(s) \n => ", .{});
    var length  = try std_out.read(key[0..]);
    //debug.print("key {s}", .{key});
    debug.print("------------------\n", .{});
    switch (key[0]) {
        'w' => key_int = 1,  
        'm' => key_int = 2,
        's' => key_int = 3,
        else => {
            return 1;
        },
    }
    for (string_coder[0..lenght_string]) |item| {
        var code = item + key_int;
        debug.print("{c}", .{code});
    }
    debug.print("\n", .{});
    return 0;
}

pub fn main () !void{
    var menu: bool = true;
    while (menu){
        var response: [std.mem.page_size]u8 = undefined;
        debug.print("------------------\n", .{});
        debug.print("Codificardor Cesar\n", .{});
        debug.print("------------------\n", .{});
        debug.print("1 Codificar(c)\n2 Terminar(t)\n=> ", .{});
        var std_out = std.io.getStdOut();
        var length  = try std_out.read(response[0..]);
        switch (response[0]) {
            'c'  => { 
                var res = try coder();
                },
            else => {
                return ;
                },
        }   
    }    
}