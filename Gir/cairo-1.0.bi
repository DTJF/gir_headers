'            FreeBasic header file, auto-generated by
'                       ### girtobac ###
' LGPLv2.1 (C) 2013-2019 by Thomas{ doT ]Freiherr[ At ]gmx[ DoT }net
' Auto-translated from file /usr/share/gir-1.0/cairo-1.0.gir
#IFNDEF CAIRO_H
#INCLUDE ONCE "_GirToBac-0.0.bi"
' Repository version 1.2
TYPE AS _cairo_t cairo_t
TYPE AS _cairo_surface_t cairo_surface_t
TYPE AS _cairo_matrix_t cairo_matrix_t
TYPE AS _cairo_pattern_t cairo_pattern_t
TYPE AS _cairo_region_t cairo_region_t
TYPE AS LONG cairo_content_t
ENUM
  CAIRO_CONTENT_COLOR = 4096
  CAIRO_CONTENT_ALPHA = 8192
  CAIRO_CONTENT_COLOR_ALPHA = 12288
END ENUM
TYPE AS _cairo_font_options_t cairo_font_options_t
TYPE AS _cairo_font_type_t cairo_font_type_t
TYPE AS _cairo_font_face_t cairo_font_face_t
TYPE AS _cairo_scaled_font_t cairo_scaled_font_t
TYPE AS _cairo_path_t cairo_path_t
TYPE AS _cairo_rectangle_int_t cairo_rectangle_int_t
EXTERN "C" LIB "cairo"
' P_X

' P_3

TYPE _cairo_rectangle_int_t
  AS gint x
  AS gint y
  AS gint width
  AS gint height
END TYPE
' P_4

DECLARE SUB cairo_image_surface_create()
END EXTERN

#ENDIF ' CAIRO_H
