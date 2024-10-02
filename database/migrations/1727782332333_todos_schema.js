"use strict";

/** @type {import('@adonisjs/lucid/src/Schema')} */
const Schema = use("Schema");

class TodosSchema extends Schema {
  up() {
    this.create("todos", (table) => {
      table.increments("id");
      table.string("title", 255).notNullable();
      table.text("description");
      table.boolean("completed").defaultTo(false); // สถานะการทำรายการ
      table.timestamps(true);
    });
  }

  down() {
    this.drop("todos");
  }
}

module.exports = TodosSchema;
