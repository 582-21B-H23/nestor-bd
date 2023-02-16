-- Ajout des données de test pour la BD nestor

-- Utilisateurs
INSERT INTO utilisateur VALUES 
    (NULL, 'Julie Snyder', 'jsynder@gmail.com', 'ee26b0dd4af7e749aa1a8ee3c10ae9923f618980772e473f8819a5d4940e0db27ac185f8a0e1d5f84f88bc887fd67b143732c304cc5fa9ad8e6f57f50028a8ff', '2019-05-25'),
    (NULL, 'Martine Lavoie', 'mlavoie@gmail.com', 'we26b0dd4af7e749aa1a8ee3c10ae9923f618980772e473f8819a5d4940e0db27ac185f8a0e1d5f84f88bc887fd65b143732c304cc5fa9ad8e6f57f50028a8ff', '2023-02-16'),
    (NULL, 'Paul Azhar', 'azhar@cmaisonneuve.qc.ca', 'ee26b0dd4af7e749aa1a8ee3c10ae9923f618980772e473f8819a5d4940e0db27ac185f8a0e1d5f84f88bc887fd67b143732c304cc5fa9ad8e6f57f50028a8ff', '2021-05-25'),
    (NULL, 'Mona Lumba', 'lumbamona@gmail.com', 'ee26b0dd4af7e749aa1a8ee3c10ae9923f618980772e473f8819a5d4940e0db27ac185f8a0e1d5f84f88bc887fd67b143732c304cc5fa9ad8e6f57f50028a8ff', '2019-12-03');


INSERT INTO contact VALUES 
    (NULL, 'Plombier', '', 2),
    (NULL, 'Martin', 'Sicard', 2);


INSERT INTO telephone VALUES 
    (NULL, '5142345672', NULL, 'Bureau', 1),
    (NULL, '4382586985', NULL, 'Cellulaire', 1),
    (NULL, '5148963215', NULL, 'Bureau', 2),
    (NULL, '5147124555', NULL, 'Domicile', 2),
    (NULL, '4325858522', NULL, 'Autre', 2);
    
    