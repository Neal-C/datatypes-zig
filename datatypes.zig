const std = @import("std");

pub fn main() void {
    std.log.info("I quite don't get the dot+curlybraces yet", .{});

    std.log.info("I guess we're returning a String Object", .{});

    std.log.info("Hire me to know the thrilling conclusion of this investigation", .{});

    // numbers

    var mutableVariable: u32 = 42;

    mutableVariable = 99;

    std.debug.print("{} \n", .{mutableVariable});

    // booleans

    // floating-points

    var pi: f64 = 3.1415;
    _ = pi;

    // Struct
    // the size of a struct, is the size of its members
    const User = struct { 
        age: i32 
    };

    const ComposedStruct = struct {
        user: User,
    };

    std.debug.print("Size of User: {} \n", .{@sizeOf(User)});

    std.debug.print("Size of User: {} \n", .{@sizeOf(ComposedStruct)});

    const Day = enum { 
        Monday, 
        Tuesday, 
        Wednesday, 
        Thursday, 
        Friday, 
        Saturday, 
        Sunday 
    };

    var ligmaDay: Day = Day.Monday;

    std.debug.print("Day: {}", .{ligmaDay});

    //Unions
    const UserOrDay = union(enum){
        user:User,
        day: Day,
    };

    var user_or_day : UserOrDay = UserOrDay{
        .user = User{
            .age = 20,
        },
    };

    switch(user_or_day) {
        .user => |u| {
            std.log.info("some interesting text, {} \n", .{u});
        },
        else => std.log.info("it's ligma day, I guess \n", .{}),
    }

    //Type 

}
