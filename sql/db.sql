CREATE TABLE IF NOT EXISTS projects(
  id INTEGER PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
  name TEXT NOT NULL CHECK (name <> ''),
  priority INTEGER NOT NULL,
  description TEXT,
  deliverydate DATE NOT NULL
);

CREATE TABLE IF NOT EXISTS tasks (
  id INTEGER PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
  name TEXT NOT NULL CHECK (name <> ''),
  done BOOLEAN,
  projectId INTEGER REFERENCES projects(id)
);

INSERT INTO
  projects(name, priority, description, deliverydate)
VALUES
  (
    'Make a Web app',
    1,
    'Using Javascript',
    '2020-05-12'
  );

INSERT INTO
  projects(name, priority, description, deliverydate)
VALUES
  (
    'Make an App',
    1,
    'Using Dart',
    '2020-12-12'
  );

INSERT INTO
  projects(name, priority, description, deliverydate)
VALUES
  (
    'Make a desktop App',
    2,
    'C++',
    '2020-11-12'
  );

INSERT INTO
  projects(name, priority, description, deliverydate)
VALUES
  (
    'Make an App',
    1,
    'Using Dart',
    '2020-12-12'
  );

INSERT INTO
  tasks(name, done, projectId)
VALUES
  ('Download Vuejs', false, 1);

INSERT INTO
  tasks(name, done, projectId)
VALUES
  ('Create UI', false, 1);

INSERT INTO
  tasks(name, done, projectId)
VALUES
  ('Download Flutter', false, 2);

INSERT INTO
  tasks(name, done, projectId)
VALUES
  ('Design UI', false, 2);