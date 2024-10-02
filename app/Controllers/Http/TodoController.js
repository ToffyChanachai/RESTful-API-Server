"use strict";
const Todo = use("App/Models/Todo");

class TodoController {
  async index({ response }) {
    const todos = await Todo.all();
    return response.json(todos);
  }

  //Add Todo List
  async store({ request, response }) {
    const { title, description } = request.only(["title", "description"]);
    const todo = new Todo();
    todo.title = title;
    todo.description = description;
    await todo.save();

    return response.status(201).json(todo);
  }

  //Read Todo List
  async show({ params, response }) {
    const todo = await Todo.find(params.id);
    return response.json(todo);
  }

  //Edit Todo List
  async update({ params, request, response }) {
    const todo = await Todo.find(params.id);

    // check
    if (!todo) {
      return response.status(404).json({ message: "To-Do not found" });
    }
    const { title, description, completed } = request.only([
      "title",
      "description",
      "completed",
    ]);

    todo.title = title;
    todo.description = description;
    todo.completed = completed;

    await todo.save();

    return response.json(todo);
  }

  //Delete Todo List
  async destroy({ params, response }) {
    const todo = await Todo.find(params.id);
    await todo.delete();

    return response.status(204).json(null);
  }

  // Mark Complete
  async markComplete({ params, response }) {
    const todo = await Todo.find(params.id);
    todo.completed = true;
    await todo.save();

    return response.json(todo);
  }

   // Mark InComplete
  async markIncomplete({ params, response }) {
    const todo = await Todo.find(params.id);

    if (!todo) {
      return response.status(404).json({ message: "To-Do not found" });
    }

    todo.completed = false; // ตั้งค่า completed เป็น false
    await todo.save();

    return response.json(todo);
  }
}

module.exports = TodoController;
