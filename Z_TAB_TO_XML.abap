*&---------------------------------------------------------------------*
*& Report  Z_TAB_TO_XML
*&
*&---------------------------------------------------------------------*
*&
*& "Easy conversion of internal table for XML format
*&---------------------------------------------------------------------*

REPORT z_tab_to_xml.

START-OF-SELECTION.

  DATA lv_xml TYPE string.

  SELECT * FROM t001 INTO TABLE @DATA(lt_table) WHERE bukrs IS NOT NULL.

  IF sy-subrc EQ 0.

    CALL TRANSFORMATION id "Check the content of ID transformation in TCODE: STRANS
      SOURCE output = lt_table[]
      RESULT XML lv_xml.

  ENDIF.