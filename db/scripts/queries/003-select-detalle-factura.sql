SELECT f.id, u.username, f.total 
FROM factura f 
JOIN usuario u ON f.usuario_id = u.id;