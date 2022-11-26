SELECT 
	p.id, p.sexo, p.fecha,
	f.codigo AS cod_familia,
	f.nucleo AS nucleo_familia,
	po.nombre AS poblado,
	m.nombre AS municipio,
	d.nombre AS departamento
FROM persona p
INNER JOIN familia f ON (p.familia_id = f.id)
INNER JOIN poblado po ON (f.poblado_id = po.id)
INNER JOIN municipio m ON (po.municipio_id = m.id)
INNER JOIN departamento d ON (m.departamento_id = d.id)
