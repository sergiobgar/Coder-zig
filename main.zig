const std   = @import("std");
const debug = std.debug;


pub fn coder() !void{

    debug.print("Introducca la cadena a codear:\n", .{});
    var string_coder: [std.mem.page_size]u8 = undefined;
    var stdout = std.io.getStdOut();
    var lenght_string = try stdout.read(string_coder[0..]);
    debug.print("Size => {}\n", .{string_coder[0..lenght_string].len});

    for (string_coder[0..lenght_string]) |item| {
        var code = item + 5;
        debug.print("{c}", .{code});
    }
    debug.print("\n", .{});

}


pub fn main () !void{
    
    var menu: bool = true;
    while (menu){
        //var status = try std.os.execveZ("/usr/bin/clear", undefined, undefined);
        var response: [std.mem.page_size]u8 = undefined;
        debug.print("------------------\n", .{});
        debug.print("Codificardor Cesar\n", .{});
        debug.print("------------------\n", .{});
        debug.print("1 Codificar(c)\n2 Terminar(t)\n=> ", .{});
        var std_out = std.io.getStdOut();
        var length  = try std_out.read(response[0..]);
        switch (response[0]) {
            'c'    => { 
                try coder();
                },
            else => {
                return ;
                },
        }
        
    }
    
    
    
}