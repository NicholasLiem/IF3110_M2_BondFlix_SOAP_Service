CREATE TABLE IF NOT EXISTS log (
    id INT AUTO_INCREMENT PRIMARY KEY,
    client VARCHAR(255),
    body_request TEXT,
    endpoint VARCHAR(255),
    ip VARCHAR(255),
    timestamp VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS api_key (
    id INT AUTO_INCREMENT PRIMARY KEY,
    api_key VARCHAR(255) UNIQUE,
    client VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS shorts_subscription (
    creator_id INT NOT NULL,
    subscriber_id INT NOT NULL,
    status ENUM('PENDING', 'REJECTED', 'ACCEPTED') NOT NULL DEFAULT 'PENDING',
    PRIMARY KEY (creator_id, subscriber_id)
);

INSERT IGNORE INTO api_key (api_key, client) VALUES ('rest-api-key', 'REST');
INSERT IGNORE INTO api_key (api_key, client) VALUES ('app-api-key', 'APP');