'       FreeBasic header file, manual-generated file
'              containing types for GLib-2.0
' LGPLv2.1 (C) 2014-2021 by Thomas[ dot }Freiherr[ at ]gmx[ dot }net

TYPE AS  ZSTRING gchar, char
TYPE AS     BYTE gint8
TYPE AS    UBYTE guint8, guchar
TYPE AS    SHORT gint16, gshort, gunichar2
TYPE AS   USHORT guint16, gushort
TYPE AS     LONG gint, gint32, gunichar
TYPE AS    ULONG guint, guint32, gboolean ', GType

TYPE AS  LONGINT gint64, glong
TYPE AS ULONGINT guint64, gulong
TYPE AS   SINGLE gfloat
TYPE AS   DOUBLE gdouble
TYPE AS  INTEGER gssize, ssize_t, goffset
TYPE AS UINTEGER gsize, size_t

#INCLUDE ONCE "crt/stdio.bi"
#INCLUDE ONCE "crt/time.bi"
#UNDEF va_list
#IF __FB_VERSION__ < "1.07"
 TYPE AS ANY PTR va_list
#ELSE
 TYPE AS CVA_LIST va_list
#ENDIF
#IFNDEF FILE
 TYPE AS ANY PTR FILE
#ENDIF
#UNDEF TRUE
#UNDEF FALSE
CONST AS gboolean TRUE = 1, FALSE = 0
#UNDEF NULL
CONST AS ANY PTR NULL = 0

TYPE AS   ZSTRING PTR utf8, filename
TYPE AS       ANY PTR gpointer
TYPE AS CONST ANY PTR gconstpointer

#IFDEF __FB_64BIT__
#DEFINE G_MININT G_MININT64
#DEFINE G_MAXINT G_MAXINT64
#DEFINE G_MAXUINT G_MAXUINT64
#ELSE
#DEFINE G_MININT G_MININT32
#DEFINE G_MAXINT G_MAXINT32
#DEFINE G_MAXUINT G_MAXUINT32
#ENDIF
#DEFINE G_MINFLOAT 1.401298e-45
#DEFINE G_MAXFLOAT 3.402823e+38
#DEFINE G_MINDOUBLE 4.940656458412465e-324
#DEFINE G_MAXDOUBLE 1.797693134862316e+308
#DEFINE G_MAXULONG  &hFFFFFFFFul
#DEFINE G_MAXLONG   &h7FFFFFFFl
#DEFINE G_MAXUSHORT &hFFFF
#DEFINE G_MAXSHORT  &h7FFF
#DEFINE G_MAXSIZE G_MAXULONG
#DEFINE G_MAXSSIZE G_MAXLONG
#DEFINE G_MAXOFFSET G_MAXINT64

#DEFINE G_TYPE_CHECK_INSTANCE_CAST(instance, g_type, c_type) (_G_TYPE_CIC ((instance), (g_type), c_type))
#DEFINE G_TYPE_CHECK_CLASS_CAST(g_class, g_type, c_type) (_G_TYPE_CCC ((g_class), (g_type), c_type))
#DEFINE G_TYPE_CHECK_INSTANCE_TYPE(instance, g_type) (_G_TYPE_CIT ((instance), (g_type)))
#DEFINE G_TYPE_INSTANCE_GET_INTERFACE(instance, g_type, c_type) (_G_TYPE_IGI ((instance), (g_type), c_type))
#DEFINE G_TYPE_CHECK_CLASS_TYPE(g_class, g_type) (_G_TYPE_CCT ((g_class), (g_type)))
#DEFINE G_TYPE_INSTANCE_GET_CLASS(instance, g_type, c_type) (_G_TYPE_IGC ((instance), (g_type), c_type))

#IFNDEF G_DISABLE_CAST_CHECKS
#DEFINE _G_TYPE_CIC(ip, gt, ct) _
    (CAST(ct PTR, g_type_check_instance_cast_ (CAST(GTypeInstance PTR, ip), gt)))
#DEFINE _G_TYPE_CCC(cp, gt, ct) _
    (CAST(ct PTR, g_type_check_class_cast_ (CAST(GTypeClass PTR, cp), gt)))
#ELSE ' G_DISABLE_CAST_CHECKS
#DEFINE _G_TYPE_CIC(ip, gt, ct) (CAST(ct PTR, ip))
#DEFINE _G_TYPE_CCC(cp, gt, ct) (CAST(ct PTR, cp))
#ENDIF ' G_DISABLE_CAST_CHECKS

#DEFINE _G_TYPE_CIT(ip, gt) (g_type_check_instance_is_a (CAST(GTypeInstance PTR, ip), gt))
#DEFINE _G_TYPE_CCT(cp, gt) (g_type_check_class_is_a (CAST(GTypeClass PTR, cp), gt))
#DEFINE _G_TYPE_IGI(ip, gt, ct) (CAST(ct PTR, g_type_interface_peek ((CAST(GTypeInstance PTR, ip))->g_class, gt)))
#DEFINE _G_TYPE_IGC(ip, gt, ct) (CAST(ct PTR, ((CAST(GTypeInstance PTR, ip))->g_class)))
