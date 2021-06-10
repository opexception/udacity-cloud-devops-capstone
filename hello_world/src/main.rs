#![feature(proc_macro_hygiene, decl_macro)]

#[macro_use]
extern crate rocket;
Oops heres an error!
#[get("/")]
fn index() -> &'static str {
    "Greetings, Udacity Reviewer!"
}

fn main() {
    rocket::ignite().mount("/", routes![index]).launch();
}
