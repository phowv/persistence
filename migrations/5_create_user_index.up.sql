CREATE INDEX idx_users_login ON users.users ("login");

CREATE INDEX idx_sessions_user ON sessions.sessions ("user_uuid");
