'            FreeBasic header file, auto-generated by
'                       ### girtobac ###
' LGPLv2.1 (C) 2013-2019 by Thomas{ doT ]Freiherr[ At ]gmx[ DoT }net
' Auto-translated from file ../gir-1.0/GModule-2.0.gir
#INCLUDE ONCE "_GirToBac-0.0.bi"
' Repository version 1.2
#INCLUDE ONCE "GLib-2.0.bi"
TYPE AS _GModule GModule
TYPE AS LONG GModuleFlags
ENUM
  G_MODULE_BIND_LAZY = 1
  G_MODULE_BIND_LOCAL = 2
  G_MODULE_BIND_MASK = 3
END ENUM
EXTERN "C" LIB "gmodule-2.0"
' P_X

' P_3

DECLARE FUNCTION g_module_close(BYVAL AS GModule PTR) AS gboolean
DECLARE SUB g_module_make_resident(BYVAL AS GModule PTR)
DECLARE FUNCTION g_module_name(BYVAL AS GModule PTR) AS const gchar PTR
DECLARE FUNCTION g_module_symbol(BYVAL AS GModule PTR, BYVAL AS const gchar PTR, BYVAL AS gpointer PTR) AS gboolean
DECLARE FUNCTION g_module_build_path(BYVAL AS const gchar PTR, BYVAL AS const gchar PTR) AS gchar PTR
DECLARE FUNCTION g_module_error() AS const gchar PTR
DECLARE FUNCTION g_module_open(BYVAL AS const gchar PTR, BYVAL AS GModuleFlags) AS GModule PTR
DECLARE FUNCTION g_module_supported() AS gboolean
TYPE GModuleCheckInit AS FUNCTION CDECL(BYVAL AS GModule PTR) AS const gchar PTR
TYPE GModuleUnload AS SUB CDECL(BYVAL AS GModule PTR)
' P_4

END EXTERN

