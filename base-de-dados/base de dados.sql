CREATE DATABASE MeuBancoDeDados;
USE MeuBancoDeDados;

CREATE TABLE Clientes (
    ClienteID INT PRIMARY KEY,
    Nome VARCHAR(100),
    Email VARCHAR(100)
);

CREATE TABLE Pedidos (
    PedidoID INT PRIMARY KEY,
    DataPedido DATE,
    ClienteID INT,
    FOREIGN KEY (ClienteID) REFERENCES Clientes(ClienteID)
);
INSERT INTO Clientes (ClienteID, Nome, Email) VALUES
(1, 'João Silva', 'joao.silva@example.com'),
(2, 'Maria Oliveira', 'maria.oliveira@example.com');

INSERT INTO Pedidos (PedidoID, DataPedido, ClienteID) VALUES
(1, '2024-09-01', 1),
(2, '2024-09-02', 2);
-- Consulta para obter todos os pedidos com os detalhes dos clientes
SELECT Pedidos.PedidoID, Pedidos.DataPedido, Clientes.Nome, Clientes.Email
FROM Pedidos
JOIN Clientes ON Pedidos.ClienteID = Clientes.ClienteID;
