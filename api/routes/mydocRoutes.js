'use strict';
module.exports = function(app) {
  var todoList = require('../controllers/mydocController');

  // todoList Routes
  app.route('/my-documents')
    .get(todoList.list_all_tasks)
    .post(todoList.create_a_task);


  app.route('/my-documents/:docId')
    .get(todoList.read_a_task)
    .put(todoList.update_a_task)
    .delete(todoList.delete_a_task);
};

