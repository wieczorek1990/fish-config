
function createdb
  set database $argv[1]
  set username $argv[2]
  set password $argv[3]
  psql -c "
    create database $database;
  "
  psql -c"
    create user $username password '$password';
    grant all privileges on database $database to $username;
  "
end
