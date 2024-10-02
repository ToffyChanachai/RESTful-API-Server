"use strict";

/*
|--------------------------------------------------------------------------
| Routes
|--------------------------------------------------------------------------
|
| Http routes are entry points to your web application. You can create
| routes for different URL's and bind Controller actions to them.
|
| A complete guide on routing is available here.
| http://adonisjs.com/docs/4.1/routing
|
*/

/** @type {typeof import('@adonisjs/framework/src/Route/Manager')} */
const Route = use("Route");

Route.on("/").render("welcome");

Route.get("/todos", "TodoController.index"); // แสดงรายการทั้งหมด
Route.post("/todos", "TodoController.store"); // สร้างรายการใหม่
Route.get("/todos/:id", "TodoController.show"); // แสดงรายการที่ต้องการ
Route.put("/todos/:id", "TodoController.update"); // แก้ไขรายการ
Route.delete("/todos/:id", "TodoController.destroy"); // ลบรายการ

Route.patch("/todos/:id/complete", "TodoController.markComplete"); // ทำเครื่องหมายว่าทำเสร็จแล้ว
Route.patch("/todos/:id/incomplete", "TodoController.markIncomplete"); // ทำเครื่องหมายว่ายังไม่ได้ทำ
