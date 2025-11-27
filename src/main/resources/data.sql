-- One admin user, named admin1 with passwor 4dm1n and authority admin
INSERT INTO authorities(id,authority) VALUES (1,'ADMIN');
INSERT INTO appusers(id,username,password,authority) VALUES (1,'admin1','$2a$10$nMmTWAhPTqXqLDJTag3prumFrAJpsYtroxf0ojesFYq0k4PmcbWUS',1);

-- Ten player users, named player1 with passwor 0wn3r
INSERT INTO authorities(id,authority) VALUES (2,'PLAYER');
INSERT INTO appusers(id,username,password,authority) VALUES (4,'player1','$2a$10$DaS6KIEfF5CRTFrxIoGc7emY3BpZZ0.fVjwA3NiJ.BjpGNmocaS3e',2);
INSERT INTO appusers(id,username,password,authority) VALUES (5,'player2','$2a$10$DaS6KIEfF5CRTFrxIoGc7emY3BpZZ0.fVjwA3NiJ.BjpGNmocaS3e',2);
INSERT INTO appusers(id,username,password,authority) VALUES (6,'player3','$2a$10$DaS6KIEfF5CRTFrxIoGc7emY3BpZZ0.fVjwA3NiJ.BjpGNmocaS3e',2);
INSERT INTO appusers(id,username,password,authority) VALUES (7,'player4','$2a$10$DaS6KIEfF5CRTFrxIoGc7emY3BpZZ0.fVjwA3NiJ.BjpGNmocaS3e',2);
INSERT INTO appusers(id,username,password,authority) VALUES (8,'player5','$2a$10$DaS6KIEfF5CRTFrxIoGc7emY3BpZZ0.fVjwA3NiJ.BjpGNmocaS3e',2);
INSERT INTO appusers(id,username,password,authority) VALUES (9,'player6','$2a$10$DaS6KIEfF5CRTFrxIoGc7emY3BpZZ0.fVjwA3NiJ.BjpGNmocaS3e',2);
INSERT INTO appusers(id,username,password,authority) VALUES (10,'player7','$2a$10$DaS6KIEfF5CRTFrxIoGc7emY3BpZZ0.fVjwA3NiJ.BjpGNmocaS3e',2);
INSERT INTO appusers(id,username,password,authority) VALUES (11,'player8','$2a$10$DaS6KIEfF5CRTFrxIoGc7emY3BpZZ0.fVjwA3NiJ.BjpGNmocaS3e',2);
INSERT INTO appusers(id,username,password,authority) VALUES (12,'player9','$2a$10$DaS6KIEfF5CRTFrxIoGc7emY3BpZZ0.fVjwA3NiJ.BjpGNmocaS3e',2);
INSERT INTO appusers(id,username,password,authority) VALUES (13,'player10','$2a$10$DaS6KIEfF5CRTFrxIoGc7emY3BpZZ0.fVjwA3NiJ.BjpGNmocaS3e',2);


-- Data for testing the complex query:
INSERT INTO chess_board (id, creator_turn, jaque, current_turn_start) VALUES (15, 0, 0, null);
INSERT INTO chess_match(id, name, white_player_id, black_player_id, board_id, start, finish, turn_duration) VALUES 
                        (15, 'new', 4, 5, 15, '2025-10-20 12:00:00', null, 600);

INSERT INTO Position(id, x, y) VALUES
    (1, 1, 1),
    (2, 2, 1),
    (3, 3, 1),
    (4, 4, 1),
    (5, 5, 1),
    (6, 6, 1),
    (7, 7, 1),
    (8, 8, 1),
    (9, 1, 2),
    (10, 2, 2),
    (11, 3, 2),
    (12, 4, 2),
    (13, 5, 2),
    (14, 6, 2),
    (15, 7, 2),
    (16, 8, 2),
    (17, 1, 3),
    (18, 2, 3),
    (19, 3, 3),
    (20, 4, 3),
    (21, 5, 3),
    (22, 6, 3),
    (23, 7, 3),
    (24, 8, 3),
    (25, 1, 4),
    (26, 2, 4),
    (27, 3, 4),
    (28, 4, 4),
    (29, 5, 4),
    (30, 6, 4),
    (31, 7, 4),
    (32, 8, 4),
    (33, 1, 5),
    (34, 2, 5),
    (35, 3, 5),
    (36, 4, 5),
    (37, 5, 5),
    (38, 6, 5),
    (39, 7, 5),
    (40, 8, 5),
    (41, 1, 6),
    (42, 2, 6),
    (43, 3, 6),
    (44, 4, 6),
    (45, 5, 6),
    (46, 6, 6),
    (47, 7, 6),
    (48, 8, 6),
    (49, 1, 7),
    (50, 2, 7),
    (51, 3, 7),
    (52, 4, 7),
    (53, 5, 7),
    (54, 6, 7),
    (55, 7, 7),
    (56, 8, 7),
    (57, 1, 8),
    (58, 2, 8),
    (59, 3, 8),
    (60, 4, 8),
    (61, 5, 8),
    (62, 6, 8),
    (63, 7, 8),
    (64, 8, 8);

INSERT INTO piece_type (name, points) VALUES
  ('KING',   1000),
  ('QUEEN',  9),
  ('ROOK',   5),
  ('BISHOP', 3),
  ('KNIGHT', 3),
  ('PAWN',   1);

INSERT INTO Piece(id, type_name, color, position_id, board_id) VALUES 
    (123, 'ROOK', 'WHITE', 1, 15),
    (124, 'KNIGHT', 'WHITE', 9, 15),
    (125, 'BISHOP', 'WHITE', 17, 15),
    (126, 'QUEEN', 'WHITE', 25, 15),
    (127, 'KING', 'WHITE', 33, 15),
    (128, 'BISHOP', 'WHITE', 41, 15),
    (129, 'KNIGHT', 'WHITE', 49, 15),
    (130, 'ROOK', 'WHITE', 57, 15),
    (131, 'PAWN', 'WHITE', 2, 15),
    (132, 'PAWN', 'WHITE', 10, 15),
    (133, 'PAWN', 'WHITE', 18, 15),
    (134, 'PAWN', 'WHITE', 26, 15),
    (135, 'PAWN', 'WHITE', 34, 15),
    (136, 'PAWN', 'WHITE', 42, 15),
    (137, 'PAWN', 'WHITE', 50, 15),
    (138, 'PAWN', 'WHITE', 58, 15),
    (139, 'ROOK', 'BLACK', 8, 15),
    (140, 'KNIGHT', 'BLACK', 16, 15),
    (141, 'BISHOP', 'BLACK', 24, 15),
    (142, 'QUEEN', 'BLACK', 32, 15),
    (143, 'KING', 'BLACK', 40, 15),
    (144, 'BISHOP', 'BLACK', 48, 15),
    (145, 'KNIGHT', 'BLACK', 56, 15),
    (146, 'ROOK', 'BLACK', 64, 15),
    (147, 'PAWN', 'BLACK', 7, 15),
    (148, 'PAWN', 'BLACK', 15, 15),
    (149, 'PAWN', 'BLACK', 23, 15),
    (150, 'PAWN', 'BLACK', 31, 15),
    (151, 'PAWN', 'BLACK', 39, 15),
    (152, 'PAWN', 'BLACK', 47, 15),
    (153, 'PAWN', 'BLACK', 55, 15),
    (154, 'PAWN', 'BLACK', 63, 15);

    

-- ==========================================================
-- PARTIDA 5:
-- ==========================================================
INSERT INTO chess_board (id, creator_turn, current_turn_start, jaque)
VALUES (105, TRUE, CURRENT_TIMESTAMP(), false);

INSERT INTO chess_match (id, name, start, finish, turn_duration,  board_id, white_player_id, black_player_id)
VALUES (5, 'Partida 5', CURRENT_TIMESTAMP(), NULL, 300,  105, 4, 5);

-- ====== Piezas capturadas del tablero 105 ======

INSERT INTO piece (id, board_id, color, type_name,captured) VALUES
                (5000, 105, 'BLACK', 'QUEEN',TRUE), -- Reina negra (9)
                (5001, 105, 'BLACK', 'ROOK',TRUE), -- Torre negra (5)
                (5002, 105, 'WHITE', 'BISHOP',TRUE);-- Alfil blanco (3)

-- ====== Piezas en juego (opcional) ======
INSERT INTO piece (id, board_id, color, type_name)
VALUES 
  (5003, 105, 'WHITE', 'KING'),
  (5004, 105, 'BLACK', 'KING');

-- ==========================================================
-- PARTIDA 6: 
-- ==========================================================
INSERT INTO chess_board (id, creator_turn, current_turn_start, jaque)
VALUES (106, true, CURRENT_TIMESTAMP(), false);

INSERT INTO chess_match (id, name, start, finish, turn_duration,  board_id, white_player_id, black_player_id)
VALUES (6, 'Partida 6', CURRENT_TIMESTAMP(), NULL, 300, 106, 4, 5);

-- Ninguna captura para el tablero 106
INSERT INTO piece (id, board_id, color, type_name)
VALUES 
  (6000, 106, 'WHITE', 'KING'),
  (6001, 106, 'BLACK', 'KING');



-- =============================================================================
-- REGULATIONS
-- =============================================================================

INSERT INTO federation (id, name, acronym, description, foundational_date) VALUES
  (1, 'World Chess Federation', 'WCF', 'The international chess federation', '1924-07-20'),
  (2, 'European Chess Union', 'ECU', 'European governing chess body', '1985-07-18'),
  (3, 'Spanish Chess Federation', 'FEDA', 'Governing chess organization in Spain', '1927-10-14'),
  (4, 'French Chess Federation', 'FFE', 'National governing body for chess in France', '1933-03-19');

-- 1-14 , 15-29, 30-41, 42-49 rules for each federation
INSERT INTO rule (id, name, description, active, federation_id) VALUES
  (1, 'Use of Electronic Devices', 'Prohibited to use phones, tablets, or any electronic device during the game', true, 1),
  (2, 'Fair Play', 'Players must not cheat, manipulate results, or engage in any dishonest conduct', true, 1),
  (3, 'Respect for Opponents', 'Players must show respect and courtesy towards their opponents at all times', true, 1),
  (4, 'Arbiter Decisions', 'Players must accept arbiter decisions and may only appeal through formal channels', true, 1),
  (5, 'Equipment Handling', 'Players must not tamper with clocks or boards during the game', true, 1),
  (6, 'Result Reporting', 'Players are responsible for reporting the result correctly after game completion', true, 1),
  (7, 'Timekeeping Respect', 'Players must not distract opponents when making moves or pressing the clock', true, 1),
  (8, 'Prohibited Items', 'Bringing food, drinks, or other unauthorized items to the playing area is disallowed', true, 1),
  (9, 'Post-Game Conduct', 'Players should behave professionally after the game, regardless of outcome', true, 1),
  (10, 'Standard Rules', 'Chess played under classical time controls with official FIDE guidelines', true, 1),
  (11, 'Rapid Rules', 'Games played with a time control between 10 and 60 minutes per player', true, 1),
  (12, 'Blitz Rules', 'Fast-paced games with each player having less than 10 minutes', true, 1),
  (13, 'Player Move Completion', 'A move is considered complete only when the player releases the piece on a valid square', true, 1),
  (14, 'Touch Move', 'Player must move the piece they touch unless no legal move is possible', true, 1),

  (15, 'Silent Play', 'Talking or making noise that distracts opponents is forbidden during games', true, 2),
  (16, 'Time Delay Actions', 'Players must not deliberately delay the game to gain advantage', true, 2),
  (17, 'Prohibited Behavior', 'Aggressive or unsportsmanlike behavior can lead to penalties or disqualification', true, 2),
  (18, 'Spectator Interaction', 'Players must avoid discussing the game with spectators during play', true, 2),
  (19, 'Cheating Detection', 'Players are subject to anti-cheating measures including electronic scans', true, 2),
  (20, 'Dispute Resolution', 'Disputes must be reported immediately to the arbiter for resolution', true, 2),
  (21, 'Game Abandonment', 'Leaving the playing area without permission during the game is prohibited', true, 2),
  (22, 'Timekeeping Etiquette', 'Distracting opponents during their move or clock pressing is prohibited', true, 2),
  (23, 'Unauthorized Objects', 'No food, beverages, or unauthorized objects allowed in the playing area', true, 2),
  (24, 'Post-Game Behavior', 'Players are expected to maintain professionalism after completing their game', true, 2),
  (25, 'Standard Chess Regulations', 'Classical chess played according to internationally recognized FIDE standards', true, 2),
  (26, 'Rapid Chess Format', 'Matches played with time controls ranging from 10 up to 60 minutes per side', true, 2),
  (27, 'Blitz Chess Format', 'Games where each competitor has less than ten minutes on their clock', true, 2),
  (28, 'Move Finalization', 'Moves are finalized only once the piece is placed and released on a legal square', true, 2),
  (29, 'Obligatory Touch Move', 'The player is required to move the piece they have touched unless no legal move exists', true, 2),

  (30, 'Illegal Assistance', 'Accepting help from coaches or external sources during a game is forbidden', true, 3),
  (31, 'Appearance Standards', 'Players should adhere to dress codes or standards set by the event', true, 3),
  (32, 'Use of Notation', 'Players must record moves properly unless exempted by the time control', true, 3),
  (33, 'Withdrawal Rules', 'Players withdrawing from a tournament must notify organizers properly', true, 3),
  (34, 'Respecting Time Rules', 'It is forbidden to disturb opponents when they move or press the clock', true, 3),
  (35, 'Prohibited Personal Items', 'Players cannot bring snacks, drinks, or other unauthorized items to the game area', true, 3),
  (36, 'Professional Conduct After Game', 'Professional conduct is required from players after the conclusion of their games', true, 3),
  (37, 'Traditional Chess Guidelines', 'Games are played under traditional time controls following official FIDE regulations', true, 3),
  (38, 'Rapid Game Rules', 'Chess games with a time control that lasts between ten and sixty minutes per player', true, 3),
  (39, 'Blitz Game Rules', 'Each player has less than ten minutes to complete their moves in fast-paced play', true, 3),
  (40, 'Move Completion Rules', 'A move becomes official only after the piece is released on a valid destination square', true, 3),
  (41, 'Touch Move Obligation', 'Once a piece is touched, the player must move it if a legal move is available', true, 3),

  (42, 'Respect for Timekeeping', 'Players must not distract opponents when making moves or pressing the clock', true, 4),
  (43, 'Banned Items', 'Bringing food, drinks, or other unauthorized items to the playing area is disallowed', true, 4),
  (44, 'Conduct After Match', 'Players should behave professionally after the game, regardless of outcome', true, 4),
  (45, 'Classical Chess Rules', 'Chess played under classical time controls with official FIDE guidelines', true, 4),
  (46, 'Rapid Time Control', 'Games played with a time control between 10 and 60 minutes per player', true, 4),
  (47, 'Blitz Time Control', 'Fast-paced games with each player having less than 10 minutes', true, 4),
  (48, 'Completion of Moves', 'A move is considered complete only when the player releases the piece on a valid square', true, 4),
  (49, 'Mandatory Touch Move', 'Player must move the piece they touch unless no legal move is possible', true, 4);



INSERT INTO chess_event (id, name, date, category, federation_id) VALUES
  (1, 'World Chess Championship 2025', '2025-11-01', 'WORLD', 1),
  (2, 'European Rapid Championship 2025', '2025-08-15', 'REGIONAL', 2),
  (3, 'Spanish National Open 2025', '2025-06-20', 'NATIONAL', 3),
  (4, 'European Blitz Championship 2025', '2025-09-10', 'REGIONAL', 2),
  (5, 'Spanish Chess Junior Championship 2025', '2025-07-05', 'NATIONAL', 3),
  (6, 'European Chess Education Conference 2025', '2025-10-12', 'REGIONAL', 2),
  (7, 'Spanish Chess Training Seminar 2025', '2025-04-18', 'NATIONAL', 3),
  (8, 'European Coaching & Strategy Forum 2025', '2025-05-22', 'REGIONAL', 2),
  (9, 'Spanish Conference on Modern Chess Theory 2025', '2025-03-09', 'NATIONAL', 3);

-- rules applied in events
INSERT INTO chess_event_applies (applies_id, chess_event_id) VALUES
  (1, 1),
  (2, 1),
  (3, 1),
  (4, 1),
  (5, 1),
  (6, 1),
  (7, 1),
  (8, 1),
  (9, 1),
  (10, 1),
  (11, 1),
  (12, 1),
  (13, 1),
  (14, 1),

  (15, 2),
  (16, 2),
  (17, 2),
  (18, 2),
  (19, 2),
  (20, 2),
  (21, 2),
  (22, 2),
  (23, 2),
  (24, 2),
  (25, 2),
  (29, 2),

  (30, 3),
  (31, 3),
  (32, 3),
  (33, 3),
  (34, 3),
  (35, 3),
  (36, 3),
  (37, 3),
  (38, 3),
  (39, 3),
  (40, 3),
  (41, 3),

  (42, 4),
  (43, 4),
  (44, 4),
  (47, 4),
  (48, 4),
  (49, 4);


-- participants in events
INSERT INTO chess_event_participant (chess_event_id, participant_id) VALUES
  (1,4),(1,5),(1,6),(1,7),(1,8),(1,9),(1,10),(1,11), 
  (2,6),(2,7),(2,8),(2,9),(2,10),(2,12),(2,13),
  (3,4),(3,6),(3,8),(3,9),(3,11),(3,13),
  (4,5),(4,6),(4,7),(4,10),(4,11),(4,12),(4,13),
  (5,4),(5,5),(5,8),(5,9),(5,10),(5,12);

-- -- Me faltan datos para federation_organizes.