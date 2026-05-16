//! By convention, root.zig is the root source file when making a package.
const std = @import("std");
const Io = std.Io;

pub fn Greet(writer: *Io.Writer) Io.Writer.Error!void {
    try writer.print("Hello Brother ;^)\n", .{});
}
