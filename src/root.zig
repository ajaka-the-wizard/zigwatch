//! By convention, root.zig is the root source file when making a package.
const std = @import("std");
const Io = std.Io;

pub fn Greet(writer: *Io.Writer) Io.Writer.Error!void {
    try writer.print("Hello Brother ;^)\n", .{});
}

const err = error{ERRDIVISIONBYZERO};
pub fn divide(a: f16, b: f16) !f16 {
    if (b <= 0) return err.ERRDIVISIONBYZERO;
    return a / b;
}

test "divide" {
    const testing = std.testing;
    try testing.expectEqual(divide(2, 2), 1.0);
    try testing.expectEqual(divide(12.5, 100), 0.125);
    try testing.expectEqual(divide(34, 0), err.ERRDIVISIONBYZERO);
}
