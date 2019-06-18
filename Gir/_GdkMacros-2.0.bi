#INCLUDE ONCE "Gir/_GLibMacros-2.0.bi"

#DEFINE GDK_ATOM_TO_POINTER(atom) (atom)
#DEFINE GDK_POINTER_TO_ATOM(_P_) CAST(GdkAtom, (_P_))
#DEFINE _GDK_MAKE_ATOM(_V_) CAST(GdkAtom, GUINT_TO_POINTER(_V_))
#DEFINE GDK_NONE _GDK_MAKE_ATOM(0)

#DEFINE GDK_SELECTION_PRIMARY _GDK_MAKE_ATOM(1)
#DEFINE GDK_SELECTION_SECONDARY _GDK_MAKE_ATOM(2)
#DEFINE GDK_SELECTION_CLIPBOARD _GDK_MAKE_ATOM(69)
#DEFINE GDK_TARGET_BITMAP _GDK_MAKE_ATOM(5)
#DEFINE GDK_TARGET_COLORMAP _GDK_MAKE_ATOM(7)
#DEFINE GDK_TARGET_DRAWABLE _GDK_MAKE_ATOM(17)
#DEFINE GDK_TARGET_PIXMAP _GDK_MAKE_ATOM(20)
#DEFINE GDK_TARGET_STRING _GDK_MAKE_ATOM(31)
#DEFINE GDK_SELECTION_TYPE_ATOM _GDK_MAKE_ATOM(4)
#DEFINE GDK_SELECTION_TYPE_BITMAP _GDK_MAKE_ATOM(5)
#DEFINE GDK_SELECTION_TYPE_COLORMAP _GDK_MAKE_ATOM(7)
#DEFINE GDK_SELECTION_TYPE_DRAWABLE _GDK_MAKE_ATOM(17)
#DEFINE GDK_SELECTION_TYPE_INTEGER _GDK_MAKE_ATOM(19)
#DEFINE GDK_SELECTION_TYPE_PIXMAP _GDK_MAKE_ATOM(20)
#DEFINE GDK_SELECTION_TYPE_WINDOW _GDK_MAKE_ATOM(33)
#DEFINE GDK_SELECTION_TYPE_STRING _GDK_MAKE_ATOM(31)
