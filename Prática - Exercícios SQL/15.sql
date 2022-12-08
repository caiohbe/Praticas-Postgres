-- Busque o produto com o segundo menor preço. Para este item, procure por sql offset.
SELECT * FROM produtos ORDER BY preco ASC LIMIT 1 OFFSET 1;