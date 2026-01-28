REPORT Z_DISPLAY_ALV_FROM_CDS_VIEW.

"Display ALV from CDS View

class lcl_main definition create private.

  public section.
    CLASS-METHODS create
      RETURNING
        value(r_result) TYPE REF TO lcl_main.

     methods run.

endclass.

class lcl_main implementation.

  METHOD create.

    CREATE OBJECT r_result.

  ENDMETHOD.

  METHOD run.
    cl_salv_gui_table_ida=>create_for_cds_view( 'Z_YOUR_CDS_VIEW_NAME' )->fullscreen( )->display( ).
  ENDMETHOD.

endclass.

START-OF-SELECTION.
    lcl_main=>create( )->run( ).