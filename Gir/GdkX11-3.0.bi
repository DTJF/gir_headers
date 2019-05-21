'            FreeBasic header file, auto-generated by
'                       ### girtobac ###
' LGPLv2.1 (C) 2013-2019 by Thomas{ doT ]Freiherr[ At ]gmx[ DoT }net
' Auto-translated from file /usr/share/gir-1.0/GdkX11-3.0.gir
#INCLUDE ONCE "_GirToBac-0.0.bi"
' Repository version 1.2
#INCLUDE ONCE "Gdk-3.0.bi"
#INCLUDE ONCE "GdkPixbuf-2.0.bi"
#INCLUDE ONCE "Gio-2.0.bi"
#INCLUDE ONCE "Pango-1.0.bi"
#INCLUDE ONCE "xlib-2.0.bi"
TYPE AS _GdkX11AppLaunchContext GdkX11AppLaunchContext
TYPE AS _GdkX11AppLaunchContextClass GdkX11AppLaunchContextClass
TYPE AS _GdkX11Cursor GdkX11Cursor
TYPE AS _GdkX11CursorClass GdkX11CursorClass
TYPE AS _GdkX11DeviceCore GdkX11DeviceCore
TYPE AS _GdkX11DeviceCoreClass GdkX11DeviceCoreClass
TYPE AS _GdkX11DeviceManagerCore GdkX11DeviceManagerCore
TYPE AS _GdkX11DeviceManagerCoreClass GdkX11DeviceManagerCoreClass
TYPE AS _GdkX11DeviceManagerXI2 GdkX11DeviceManagerXI2
TYPE AS _GdkX11DeviceManagerXI2Class GdkX11DeviceManagerXI2Class
TYPE AS _GdkX11DeviceXI2 GdkX11DeviceXI2
TYPE AS _GdkX11DeviceXI2Class GdkX11DeviceXI2Class
TYPE AS _GdkX11Display GdkX11Display
TYPE AS _GdkX11DisplayClass GdkX11DisplayClass
TYPE AS _GdkX11DisplayManager GdkX11DisplayManager
TYPE AS _GdkX11DisplayManagerClass GdkX11DisplayManagerClass
TYPE AS _GdkX11DragContext GdkX11DragContext
TYPE AS _GdkX11DragContextClass GdkX11DragContextClass
TYPE AS _GdkX11Keymap GdkX11Keymap
TYPE AS _GdkX11KeymapClass GdkX11KeymapClass
TYPE AS _GdkX11Screen GdkX11Screen
TYPE AS _GdkX11ScreenClass GdkX11ScreenClass
TYPE AS _GdkX11Visual GdkX11Visual
TYPE AS _GdkX11VisualClass GdkX11VisualClass
TYPE AS _GdkX11Window GdkX11Window
TYPE AS _GdkX11WindowClass GdkX11WindowClass
EXTERN "C" LIB "gdk-3"
' P_X

' P_3

DECLARE FUNCTION gdk_x11_app_launch_context_get_type() AS GType
#DEFINE GDKX11_TYPE_X11_APP_LAUNCH_CONTEXT (gdk_x11_app_launch_context_get_type())
#DEFINE GDKX11_X11_APP_LAUNCH_CONTEXT(obj) (G_TYPE_CHECK_INSTANCE_CAST((obj), GDKX11_TYPE_X11_APP_LAUNCH_CONTEXT, GdkX11AppLaunchContext))
#DEFINE GDKX11_X11_APP_LAUNCH_CONTEXT_CLASS(obj) (G_TYPE_CHECK_CLASS_CAST((obj), GDKX11_TYPE_X11_APP_LAUNCH_CONTEXT, GdkX11X11AppLaunchContextClass))
#DEFINE GDKX11_IS_X11_APP_LAUNCH_CONTEXT(obj) (G_TYPE_CHECK_INSTANCE_TYPE((obj), GDKX11_TYPE_X11_APP_LAUNCH_CONTEXT))
#DEFINE GDKX11_IS_CLASS_X11_APP_LAUNCH_CONTEXT(obj) (G_TYPE_CHECK_CLASS_TYPE((obj), GDKX11_TYPE_X11_APP_LAUNCH_CONTEXT))
#DEFINE GDKX11_X11_APP_LAUNCH_CONTEXT_GET_CLASS(obj) (G_TYPE_INSTANCE_GET_CLASS((obj), GDKX11_TYPE_X11_APP_LAUNCH_CONTEXT, GdkX11X11AppLaunchContextClass))
DECLARE FUNCTION gdk_x11_cursor_get_type() AS GType
#DEFINE GDKX11_TYPE_X11_CURSOR (gdk_x11_cursor_get_type())
#DEFINE GDKX11_X11_CURSOR(obj) (G_TYPE_CHECK_INSTANCE_CAST((obj), GDKX11_TYPE_X11_CURSOR, GdkX11Cursor))
#DEFINE GDKX11_X11_CURSOR_CLASS(obj) (G_TYPE_CHECK_CLASS_CAST((obj), GDKX11_TYPE_X11_CURSOR, GdkX11X11CursorClass))
#DEFINE GDKX11_IS_X11_CURSOR(obj) (G_TYPE_CHECK_INSTANCE_TYPE((obj), GDKX11_TYPE_X11_CURSOR))
#DEFINE GDKX11_IS_CLASS_X11_CURSOR(obj) (G_TYPE_CHECK_CLASS_TYPE((obj), GDKX11_TYPE_X11_CURSOR))
#DEFINE GDKX11_X11_CURSOR_GET_CLASS(obj) (G_TYPE_INSTANCE_GET_CLASS((obj), GDKX11_TYPE_X11_CURSOR, GdkX11X11CursorClass))
DECLARE FUNCTION gdk_x11_cursor_get_xcursor(BYVAL AS GdkCursor PTR) AS Cursor
DECLARE FUNCTION gdk_x11_cursor_get_xdisplay(BYVAL AS GdkCursor PTR) AS Display PTR
DECLARE FUNCTION gdk_x11_device_core_get_type() AS GType
#DEFINE GDKX11_TYPE_X11_DEVICE_CORE (gdk_x11_device_core_get_type())
#DEFINE GDKX11_X11_DEVICE_CORE(obj) (G_TYPE_CHECK_INSTANCE_CAST((obj), GDKX11_TYPE_X11_DEVICE_CORE, GdkX11DeviceCore))
#DEFINE GDKX11_X11_DEVICE_CORE_CLASS(obj) (G_TYPE_CHECK_CLASS_CAST((obj), GDKX11_TYPE_X11_DEVICE_CORE, GdkX11X11DeviceCoreClass))
#DEFINE GDKX11_IS_X11_DEVICE_CORE(obj) (G_TYPE_CHECK_INSTANCE_TYPE((obj), GDKX11_TYPE_X11_DEVICE_CORE))
#DEFINE GDKX11_IS_CLASS_X11_DEVICE_CORE(obj) (G_TYPE_CHECK_CLASS_TYPE((obj), GDKX11_TYPE_X11_DEVICE_CORE))
#DEFINE GDKX11_X11_DEVICE_CORE_GET_CLASS(obj) (G_TYPE_INSTANCE_GET_CLASS((obj), GDKX11_TYPE_X11_DEVICE_CORE, GdkX11X11DeviceCoreClass))
DECLARE FUNCTION gdk_x11_device_manager_core_get_type() AS GType
#DEFINE GDKX11_TYPE_X11_DEVICE_MANAGER_CORE (gdk_x11_device_manager_core_get_type())
#DEFINE GDKX11_X11_DEVICE_MANAGER_CORE(obj) (G_TYPE_CHECK_INSTANCE_CAST((obj), GDKX11_TYPE_X11_DEVICE_MANAGER_CORE, GdkX11DeviceManagerCore))
#DEFINE GDKX11_X11_DEVICE_MANAGER_CORE_CLASS(obj) (G_TYPE_CHECK_CLASS_CAST((obj), GDKX11_TYPE_X11_DEVICE_MANAGER_CORE, GdkX11X11DeviceManagerCoreClass))
#DEFINE GDKX11_IS_X11_DEVICE_MANAGER_CORE(obj) (G_TYPE_CHECK_INSTANCE_TYPE((obj), GDKX11_TYPE_X11_DEVICE_MANAGER_CORE))
#DEFINE GDKX11_IS_CLASS_X11_DEVICE_MANAGER_CORE(obj) (G_TYPE_CHECK_CLASS_TYPE((obj), GDKX11_TYPE_X11_DEVICE_MANAGER_CORE))
#DEFINE GDKX11_X11_DEVICE_MANAGER_CORE_GET_CLASS(obj) (G_TYPE_INSTANCE_GET_CLASS((obj), GDKX11_TYPE_X11_DEVICE_MANAGER_CORE, GdkX11X11DeviceManagerCoreClass))
DECLARE FUNCTION gdk_x11_device_manager_xi2_get_type() AS GType
#DEFINE GDKX11_TYPE_X11_DEVICE_MANAGER_XI2 (gdk_x11_device_manager_xi2_get_type())
#DEFINE GDKX11_X11_DEVICE_MANAGER_XI2(obj) (G_TYPE_CHECK_INSTANCE_CAST((obj), GDKX11_TYPE_X11_DEVICE_MANAGER_XI2, GdkX11DeviceManagerXI2))
#DEFINE GDKX11_X11_DEVICE_MANAGER_XI2_CLASS(obj) (G_TYPE_CHECK_CLASS_CAST((obj), GDKX11_TYPE_X11_DEVICE_MANAGER_XI2, GdkX11X11DeviceManagerXI2Class))
#DEFINE GDKX11_IS_X11_DEVICE_MANAGER_XI2(obj) (G_TYPE_CHECK_INSTANCE_TYPE((obj), GDKX11_TYPE_X11_DEVICE_MANAGER_XI2))
#DEFINE GDKX11_IS_CLASS_X11_DEVICE_MANAGER_XI2(obj) (G_TYPE_CHECK_CLASS_TYPE((obj), GDKX11_TYPE_X11_DEVICE_MANAGER_XI2))
#DEFINE GDKX11_X11_DEVICE_MANAGER_XI2_GET_CLASS(obj) (G_TYPE_INSTANCE_GET_CLASS((obj), GDKX11_TYPE_X11_DEVICE_MANAGER_XI2, GdkX11X11DeviceManagerXI2Class))
DECLARE FUNCTION gdk_x11_device_xi2_get_type() AS GType
#DEFINE GDKX11_TYPE_X11_DEVICE_XI2 (gdk_x11_device_xi2_get_type())
#DEFINE GDKX11_X11_DEVICE_XI2(obj) (G_TYPE_CHECK_INSTANCE_CAST((obj), GDKX11_TYPE_X11_DEVICE_XI2, GdkX11DeviceXI2))
#DEFINE GDKX11_X11_DEVICE_XI2_CLASS(obj) (G_TYPE_CHECK_CLASS_CAST((obj), GDKX11_TYPE_X11_DEVICE_XI2, GdkX11X11DeviceXI2Class))
#DEFINE GDKX11_IS_X11_DEVICE_XI2(obj) (G_TYPE_CHECK_INSTANCE_TYPE((obj), GDKX11_TYPE_X11_DEVICE_XI2))
#DEFINE GDKX11_IS_CLASS_X11_DEVICE_XI2(obj) (G_TYPE_CHECK_CLASS_TYPE((obj), GDKX11_TYPE_X11_DEVICE_XI2))
#DEFINE GDKX11_X11_DEVICE_XI2_GET_CLASS(obj) (G_TYPE_INSTANCE_GET_CLASS((obj), GDKX11_TYPE_X11_DEVICE_XI2, GdkX11X11DeviceXI2Class))
DECLARE FUNCTION gdk_x11_display_get_type() AS GType
#DEFINE GDKX11_TYPE_X11_DISPLAY (gdk_x11_display_get_type())
#DEFINE GDKX11_X11_DISPLAY(obj) (G_TYPE_CHECK_INSTANCE_CAST((obj), GDKX11_TYPE_X11_DISPLAY, GdkX11Display))
#DEFINE GDKX11_X11_DISPLAY_CLASS(obj) (G_TYPE_CHECK_CLASS_CAST((obj), GDKX11_TYPE_X11_DISPLAY, GdkX11X11DisplayClass))
#DEFINE GDKX11_IS_X11_DISPLAY(obj) (G_TYPE_CHECK_INSTANCE_TYPE((obj), GDKX11_TYPE_X11_DISPLAY))
#DEFINE GDKX11_IS_CLASS_X11_DISPLAY(obj) (G_TYPE_CHECK_CLASS_TYPE((obj), GDKX11_TYPE_X11_DISPLAY))
#DEFINE GDKX11_X11_DISPLAY_GET_CLASS(obj) (G_TYPE_INSTANCE_GET_CLASS((obj), GDKX11_TYPE_X11_DISPLAY, GdkX11X11DisplayClass))
DECLARE SUB gdk_x11_display_broadcast_startup_message(BYVAL AS GdkDisplay PTR, BYVAL AS const char PTR, ...)
DECLARE FUNCTION gdk_x11_display_error_trap_pop(BYVAL AS GdkDisplay PTR) AS gint
DECLARE SUB gdk_x11_display_error_trap_pop_ignored(BYVAL AS GdkDisplay PTR)
DECLARE SUB gdk_x11_display_error_trap_push(BYVAL AS GdkDisplay PTR)
DECLARE FUNCTION gdk_x11_display_get_startup_notification_id(BYVAL AS GdkDisplay PTR) AS const gchar PTR
DECLARE FUNCTION gdk_x11_display_get_user_time(BYVAL AS GdkDisplay PTR) AS guint32
DECLARE FUNCTION gdk_x11_display_get_xdisplay(BYVAL AS GdkDisplay PTR) AS Display PTR
DECLARE SUB gdk_x11_display_grab(BYVAL AS GdkDisplay PTR)
DECLARE SUB gdk_x11_display_set_cursor_theme(BYVAL AS GdkDisplay PTR, BYVAL AS const gchar PTR, BYVAL AS const gint)
DECLARE SUB gdk_x11_display_set_startup_notification_id(BYVAL AS GdkDisplay PTR, BYVAL AS const gchar PTR)
DECLARE SUB gdk_x11_display_set_window_scale(BYVAL AS GdkDisplay PTR, BYVAL AS gint)
DECLARE FUNCTION gdk_x11_display_string_to_compound_text(BYVAL AS GdkDisplay PTR, BYVAL AS const gchar PTR, BYVAL AS any ptr /'GdkAtom'/ PTR, BYVAL AS gint PTR, BYVAL AS guchar PTR PTR, BYVAL AS gint PTR) AS gint
DECLARE FUNCTION gdk_x11_display_text_property_to_text_list(BYVAL AS GdkDisplay PTR, BYVAL AS any ptr /'GdkAtom'/, BYVAL AS gint, BYVAL AS const guchar PTR, BYVAL AS gint, BYVAL AS gchar PTR PTR PTR) AS gint
DECLARE SUB gdk_x11_display_ungrab(BYVAL AS GdkDisplay PTR)
DECLARE FUNCTION gdk_x11_display_utf8_to_compound_text(BYVAL AS GdkDisplay PTR, BYVAL AS const gchar PTR, BYVAL AS any ptr /'GdkAtom'/ PTR, BYVAL AS gint PTR, BYVAL AS guchar PTR PTR, BYVAL AS gint PTR) AS gboolean
DECLARE FUNCTION gdk_x11_display_manager_get_type() AS GType
#DEFINE GDKX11_TYPE_X11_DISPLAY_MANAGER (gdk_x11_display_manager_get_type())
#DEFINE GDKX11_X11_DISPLAY_MANAGER(obj) (G_TYPE_CHECK_INSTANCE_CAST((obj), GDKX11_TYPE_X11_DISPLAY_MANAGER, GdkX11DisplayManager))
#DEFINE GDKX11_X11_DISPLAY_MANAGER_CLASS(obj) (G_TYPE_CHECK_CLASS_CAST((obj), GDKX11_TYPE_X11_DISPLAY_MANAGER, GdkX11X11DisplayManagerClass))
#DEFINE GDKX11_IS_X11_DISPLAY_MANAGER(obj) (G_TYPE_CHECK_INSTANCE_TYPE((obj), GDKX11_TYPE_X11_DISPLAY_MANAGER))
#DEFINE GDKX11_IS_CLASS_X11_DISPLAY_MANAGER(obj) (G_TYPE_CHECK_CLASS_TYPE((obj), GDKX11_TYPE_X11_DISPLAY_MANAGER))
#DEFINE GDKX11_X11_DISPLAY_MANAGER_GET_CLASS(obj) (G_TYPE_INSTANCE_GET_CLASS((obj), GDKX11_TYPE_X11_DISPLAY_MANAGER, GdkX11X11DisplayManagerClass))
DECLARE FUNCTION gdk_x11_drag_context_get_type() AS GType
#DEFINE GDKX11_TYPE_X11_DRAG_CONTEXT (gdk_x11_drag_context_get_type())
#DEFINE GDKX11_X11_DRAG_CONTEXT(obj) (G_TYPE_CHECK_INSTANCE_CAST((obj), GDKX11_TYPE_X11_DRAG_CONTEXT, GdkX11DragContext))
#DEFINE GDKX11_X11_DRAG_CONTEXT_CLASS(obj) (G_TYPE_CHECK_CLASS_CAST((obj), GDKX11_TYPE_X11_DRAG_CONTEXT, GdkX11X11DragContextClass))
#DEFINE GDKX11_IS_X11_DRAG_CONTEXT(obj) (G_TYPE_CHECK_INSTANCE_TYPE((obj), GDKX11_TYPE_X11_DRAG_CONTEXT))
#DEFINE GDKX11_IS_CLASS_X11_DRAG_CONTEXT(obj) (G_TYPE_CHECK_CLASS_TYPE((obj), GDKX11_TYPE_X11_DRAG_CONTEXT))
#DEFINE GDKX11_X11_DRAG_CONTEXT_GET_CLASS(obj) (G_TYPE_INSTANCE_GET_CLASS((obj), GDKX11_TYPE_X11_DRAG_CONTEXT, GdkX11X11DragContextClass))
DECLARE FUNCTION gdk_x11_keymap_get_type() AS GType
#DEFINE GDKX11_TYPE_X11_KEYMAP (gdk_x11_keymap_get_type())
#DEFINE GDKX11_X11_KEYMAP(obj) (G_TYPE_CHECK_INSTANCE_CAST((obj), GDKX11_TYPE_X11_KEYMAP, GdkX11Keymap))
#DEFINE GDKX11_X11_KEYMAP_CLASS(obj) (G_TYPE_CHECK_CLASS_CAST((obj), GDKX11_TYPE_X11_KEYMAP, GdkX11X11KeymapClass))
#DEFINE GDKX11_IS_X11_KEYMAP(obj) (G_TYPE_CHECK_INSTANCE_TYPE((obj), GDKX11_TYPE_X11_KEYMAP))
#DEFINE GDKX11_IS_CLASS_X11_KEYMAP(obj) (G_TYPE_CHECK_CLASS_TYPE((obj), GDKX11_TYPE_X11_KEYMAP))
#DEFINE GDKX11_X11_KEYMAP_GET_CLASS(obj) (G_TYPE_INSTANCE_GET_CLASS((obj), GDKX11_TYPE_X11_KEYMAP, GdkX11X11KeymapClass))
DECLARE FUNCTION gdk_x11_keymap_get_group_for_state(BYVAL AS GdkKeymap PTR, BYVAL AS guint) AS gint
DECLARE FUNCTION gdk_x11_keymap_key_is_modifier(BYVAL AS GdkKeymap PTR, BYVAL AS guint) AS gboolean
DECLARE FUNCTION gdk_x11_screen_get_type() AS GType
#DEFINE GDKX11_TYPE_X11_SCREEN (gdk_x11_screen_get_type())
#DEFINE GDKX11_X11_SCREEN(obj) (G_TYPE_CHECK_INSTANCE_CAST((obj), GDKX11_TYPE_X11_SCREEN, GdkX11Screen))
#DEFINE GDKX11_X11_SCREEN_CLASS(obj) (G_TYPE_CHECK_CLASS_CAST((obj), GDKX11_TYPE_X11_SCREEN, GdkX11X11ScreenClass))
#DEFINE GDKX11_IS_X11_SCREEN(obj) (G_TYPE_CHECK_INSTANCE_TYPE((obj), GDKX11_TYPE_X11_SCREEN))
#DEFINE GDKX11_IS_CLASS_X11_SCREEN(obj) (G_TYPE_CHECK_CLASS_TYPE((obj), GDKX11_TYPE_X11_SCREEN))
#DEFINE GDKX11_X11_SCREEN_GET_CLASS(obj) (G_TYPE_INSTANCE_GET_CLASS((obj), GDKX11_TYPE_X11_SCREEN, GdkX11X11ScreenClass))
DECLARE FUNCTION gdk_x11_screen_get_current_desktop(BYVAL AS GdkScreen PTR) AS guint32
DECLARE FUNCTION gdk_x11_screen_get_monitor_output(BYVAL AS GdkScreen PTR, BYVAL AS gint) AS XID
DECLARE FUNCTION gdk_x11_screen_get_number_of_desktops(BYVAL AS GdkScreen PTR) AS guint32
DECLARE FUNCTION gdk_x11_screen_get_screen_number(BYVAL AS GdkScreen PTR) AS gint /'int'/
DECLARE FUNCTION gdk_x11_screen_get_window_manager_name(BYVAL AS GdkScreen PTR) AS const char PTR
DECLARE FUNCTION gdk_x11_screen_get_xscreen(BYVAL AS GdkScreen PTR) AS any ptr /'Screen'/ PTR
DECLARE FUNCTION gdk_x11_screen_lookup_visual(BYVAL AS GdkScreen PTR, BYVAL AS VisualID) AS GdkVisual PTR
DECLARE FUNCTION gdk_x11_screen_supports_net_wm_hint(BYVAL AS GdkScreen PTR, BYVAL AS any ptr /'GdkAtom'/) AS gboolean
DECLARE FUNCTION gdk_x11_visual_get_type() AS GType
#DEFINE GDKX11_TYPE_X11_VISUAL (gdk_x11_visual_get_type())
#DEFINE GDKX11_X11_VISUAL(obj) (G_TYPE_CHECK_INSTANCE_CAST((obj), GDKX11_TYPE_X11_VISUAL, GdkX11Visual))
#DEFINE GDKX11_X11_VISUAL_CLASS(obj) (G_TYPE_CHECK_CLASS_CAST((obj), GDKX11_TYPE_X11_VISUAL, GdkX11X11VisualClass))
#DEFINE GDKX11_IS_X11_VISUAL(obj) (G_TYPE_CHECK_INSTANCE_TYPE((obj), GDKX11_TYPE_X11_VISUAL))
#DEFINE GDKX11_IS_CLASS_X11_VISUAL(obj) (G_TYPE_CHECK_CLASS_TYPE((obj), GDKX11_TYPE_X11_VISUAL))
#DEFINE GDKX11_X11_VISUAL_GET_CLASS(obj) (G_TYPE_INSTANCE_GET_CLASS((obj), GDKX11_TYPE_X11_VISUAL, GdkX11X11VisualClass))
DECLARE FUNCTION gdk_x11_visual_get_xvisual(BYVAL AS GdkVisual PTR) AS Visual PTR
DECLARE FUNCTION gdk_x11_window_get_type() AS GType
#DEFINE GDKX11_TYPE_X11_WINDOW (gdk_x11_window_get_type())
#DEFINE GDKX11_X11_WINDOW(obj) (G_TYPE_CHECK_INSTANCE_CAST((obj), GDKX11_TYPE_X11_WINDOW, GdkX11Window))
#DEFINE GDKX11_X11_WINDOW_CLASS(obj) (G_TYPE_CHECK_CLASS_CAST((obj), GDKX11_TYPE_X11_WINDOW, GdkX11X11WindowClass))
#DEFINE GDKX11_IS_X11_WINDOW(obj) (G_TYPE_CHECK_INSTANCE_TYPE((obj), GDKX11_TYPE_X11_WINDOW))
#DEFINE GDKX11_IS_CLASS_X11_WINDOW(obj) (G_TYPE_CHECK_CLASS_TYPE((obj), GDKX11_TYPE_X11_WINDOW))
#DEFINE GDKX11_X11_WINDOW_GET_CLASS(obj) (G_TYPE_INSTANCE_GET_CLASS((obj), GDKX11_TYPE_X11_WINDOW, GdkX11X11WindowClass))
DECLARE FUNCTION gdk_x11_window_foreign_new_for_display(BYVAL AS GdkDisplay PTR, BYVAL AS any ptr /'Window'/) AS GdkWindow PTR
DECLARE FUNCTION gdk_x11_window_lookup_for_display(BYVAL AS GdkDisplay PTR, BYVAL AS any ptr /'Window'/) AS GdkWindow PTR
DECLARE FUNCTION gdk_x11_window_get_desktop(BYVAL AS GdkWindow PTR) AS guint32
DECLARE FUNCTION gdk_x11_window_get_xid(BYVAL AS GdkWindow PTR) AS any ptr /'Window'/
DECLARE SUB gdk_x11_window_move_to_current_desktop(BYVAL AS GdkWindow PTR)
DECLARE SUB gdk_x11_window_move_to_desktop(BYVAL AS GdkWindow PTR, BYVAL AS guint32)
DECLARE SUB gdk_x11_window_set_frame_extents(BYVAL AS GdkWindow PTR, BYVAL AS gint /'int'/, BYVAL AS gint /'int'/, BYVAL AS gint /'int'/, BYVAL AS gint /'int'/)
DECLARE SUB gdk_x11_window_set_frame_sync_enabled(BYVAL AS GdkWindow PTR, BYVAL AS gboolean)
DECLARE SUB gdk_x11_window_set_hide_titlebar_when_maximized(BYVAL AS GdkWindow PTR, BYVAL AS gboolean)
DECLARE SUB gdk_x11_window_set_theme_variant(BYVAL AS GdkWindow PTR, BYVAL AS char PTR)
DECLARE SUB gdk_x11_window_set_user_time(BYVAL AS GdkWindow PTR, BYVAL AS guint32)
DECLARE SUB gdk_x11_window_set_utf8_property(BYVAL AS GdkWindow PTR, BYVAL AS const gchar PTR, BYVAL AS const gchar PTR)
' P_4

DECLARE FUNCTION gdk_x11_atom_to_xatom(BYVAL AS any ptr /'GdkAtom'/) AS Atom
DECLARE FUNCTION gdk_x11_atom_to_xatom_for_display(BYVAL AS GdkDisplay PTR, BYVAL AS any ptr /'GdkAtom'/) AS Atom
DECLARE FUNCTION gdk_x11_device_get_id(BYVAL AS GdkDevice PTR) AS gint
DECLARE FUNCTION gdk_x11_device_manager_lookup(BYVAL AS GdkDeviceManager PTR, BYVAL AS gint) AS GdkDevice PTR
DECLARE SUB gdk_x11_free_compound_text(BYVAL AS guchar PTR)
DECLARE SUB gdk_x11_free_text_list(BYVAL AS gchar PTR PTR)
DECLARE FUNCTION gdk_x11_get_default_root_xwindow() AS any ptr /'Window'/
DECLARE FUNCTION gdk_x11_get_default_screen() AS gint
DECLARE FUNCTION gdk_x11_get_default_xdisplay() AS Display PTR
DECLARE FUNCTION gdk_x11_get_server_time(BYVAL AS GdkWindow PTR) AS guint32
DECLARE FUNCTION gdk_x11_get_xatom_by_name(BYVAL AS const gchar PTR) AS Atom
DECLARE FUNCTION gdk_x11_get_xatom_by_name_for_display(BYVAL AS GdkDisplay PTR, BYVAL AS const gchar PTR) AS Atom
DECLARE FUNCTION gdk_x11_get_xatom_name(BYVAL AS Atom) AS const gchar PTR
DECLARE FUNCTION gdk_x11_get_xatom_name_for_display(BYVAL AS GdkDisplay PTR, BYVAL AS Atom) AS const gchar PTR
DECLARE SUB gdk_x11_grab_server()
DECLARE FUNCTION gdk_x11_lookup_xdisplay(BYVAL AS Display PTR) AS GdkDisplay PTR
DECLARE SUB gdk_x11_register_standard_event_type(BYVAL AS GdkDisplay PTR, BYVAL AS gint, BYVAL AS gint)
DECLARE SUB gdk_x11_set_sm_client_id(BYVAL AS const gchar PTR)
DECLARE SUB gdk_x11_ungrab_server()
DECLARE FUNCTION gdk_x11_xatom_to_atom(BYVAL AS Atom) AS any ptr /'GdkAtom'/
DECLARE FUNCTION gdk_x11_xatom_to_atom_for_display(BYVAL AS GdkDisplay PTR, BYVAL AS Atom) AS any ptr /'GdkAtom'/
END EXTERN

