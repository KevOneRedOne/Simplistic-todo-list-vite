import './Todolist.css';
import React from 'react';
import { Title } from './components/Title';
import { TaskList } from './components/TaskList';
import { CurrentDate } from './components/CurrentDate';
import { TaskForm } from './components/TaskForm';

const TodoApp: React.FC = () => {
  return (
    <>
      <Title title="Just do it !" level="h1" />
      <TaskForm />
      <CurrentDate />
      <TaskList />
    </>
  );
};

export default TodoApp;
