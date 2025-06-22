# Projeto Banco de Dados - Sistema de Livraria
Este projeto simula um sistema de vendas de uma livraria, incluindo autores, livros, clientes, vendas e histórico de preços. As consultas foram desenvolvidas em MySQL.

## 🔗 Modelo Relacional

![Modelo Relacional](imagem/modelo_relacional.png)

---

## Consultas

1. **Clientes que compraram livros de pelo menos 3 gêneros diferentes**  
   [`01_clientes_3_generos.sql`](consultas/01_clientes_3_generos.sql)

2. **Autores com vendas acima de Machado de Assis**  
   [`02_vendas_autores_maior_machado.sql`](consultas/02_vendas_autores_maior_machado.sql)

3. **Valor total de vendas de Paulo Coelho**  
   [`03_total_vendas_paulo_coelho.sql`](consultas/03_total_vendas_paulo_coelho.sql)

4. **View de clientes que compraram de 3 ou mais gêneros**  
   [`04_view_clientes_3_generos.sql`](consultas/04_view_clientes_3_generos.sql)

5. **View de autores com vendas acima de Machado**  
   [`05_view_autores_maior_machado.sql`](consultas/05_view_autores_maior_machado.sql)

6. **Usuário com permissão apenas de SELECT**  
   [`06_usuario_select.sql`](consultas/06_usuario_select.sql)

7. **Criação de índice para coluna nome (autor)**  
   [`07_indice_autor_nome.sql`](consultas/07_indice_autor_nome.sql)

8. **Procedure para calcular vendas por autor**  
   [`08_procedure_total_venda.sql`](consultas/08_procedure_total_venda.sql)

9. **Trigger de log ao excluir item de venda**  
   [`09_trigger_log_exclusao_itemvenda.sql`](consultas/09_trigger_log_exclusao_itemvenda.sql)

10. **Trigger para histórico de alterações de preço**  
    [`10_trigger_historico_preco.sql`](consultas/10_trigger_historico_preco.sql)

---

## Requisitos
- MySQL Server
- MySQL Workbench ou outro client de SQL

## Observações
- Todas as estruturas (views, procedures, triggers) estão testadas e documentadas.
- A imagem do modelo foi gerada pelo MySQL Workbench.
