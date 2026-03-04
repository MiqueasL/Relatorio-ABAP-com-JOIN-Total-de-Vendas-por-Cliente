REPORT ZVENDASCLIENTE

DATA: gv_erdat TYPE vbak-erdat.

SELECT-OPTIONS: s_erdat FOR gv_erdat.

SELECT
  vbak~kunnr,
  kna1~name1,
  SUM( vbap~netwr ) AS total_vendido,
  SUM( vbap~kwmeng ) AS total_quantidade
  FROM vbak
  INNER JOIN vbap
    ON vbak~vbeln = vbap~vbeln
  INNER JOIN kna1
    ON vbak~kunnr = kna1~kunnr
  INTO TABLE @DATA(t_total_cliente)
  WHERE vbak~erdat IN @s_erdat
  GROUP BY
    vbak~kunnr,
    kna1~name1
  ORDER BY total_vendido DESCENDING.

DATA: go_alv TYPE REF TO cl_salv_table.

cl_salv_table=>factory(

IMPORTING
  r_salv_table = go_alv
  CHANGING
    t_table = t_total_cliente
    ).

go_alv->display( ).
