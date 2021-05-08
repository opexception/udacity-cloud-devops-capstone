#![feature(proc_macro_hygiene, decl_macro)]

#[macro_use] extern crate rocket;

// struct student {
//     name: String
// }

// #[post("/student", data = "student_form")]
// fn new_student(student_form: student) -> String {

// }

#[get("/")]
fn index() -> &'static str {
    "Hello, world!"
}

fn main() {
    rocket::ignite().mount("/", routes![index]).launch();
}
