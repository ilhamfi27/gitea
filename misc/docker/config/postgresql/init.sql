CREATE USER gitea;
ALTER USER gitea WITH PASSWORD 'gitea123456';
CREATE DATABASE gitea;
CREATE DATABASE gitea_juicefs;
GRANT ALL PRIVILEGES ON DATABASE gitea TO gitea;
GRANT ALL PRIVILEGES ON DATABASE gitea_juicefs TO gitea;
