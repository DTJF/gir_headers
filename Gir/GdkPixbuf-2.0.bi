'            FreeBasic header file, auto-generated by
'                       ### girtobac ###
' LGPLv2.1 (C) 2013-2022 by Thomas{ doT ]Freiherr[ At ]gmx[ DoT }net
' Auto-translated from file /usr/share/gir-1.0/GdkPixbuf-2.0.gir
#INCLUDE ONCE "_GirToBac-0.0.bi"
' Repository version 1.2
#INCLUDE ONCE "GModule-2.0.bi"
#INCLUDE ONCE "Gio-2.0.bi"
TYPE AS LONG GdkColorspace
ENUM
  GDK_COLORSPACE_RGB = 0
END ENUM
TYPE AS LONG GdkInterpType
ENUM
  GDK_INTERP_NEAREST = 0
  GDK_INTERP_TILES = 1
  GDK_INTERP_BILINEAR = 2
  GDK_INTERP_HYPER = 3
END ENUM
#DEFINE GDK_PIXBUF_FEATURES_H 1
#DEFINE GDK_PIXBUF_MAJOR 2
#DEFINE GDK_PIXBUF_MICRO 0
#DEFINE GDK_PIXBUF_MINOR 40
#DEFINE GDK_PIXBUF_VERSION @!"2.40.0"
TYPE AS _GdkPixbuf GdkPixbuf
TYPE AS LONG GdkPixbufAlphaMode
ENUM
  GDK_PIXBUF_ALPHA_BILEVEL = 0
  GDK_PIXBUF_ALPHA_FULL = 1
END ENUM
TYPE AS _GdkPixbufAnimation GdkPixbufAnimation
TYPE AS _GdkPixbufAnimationIter GdkPixbufAnimationIter
TYPE AS LONG GdkPixbufError
ENUM
  GDK_PIXBUF_ERROR_CORRUPT_IMAGE = 0
  GDK_PIXBUF_ERROR_INSUFFICIENT_MEMORY = 1
  GDK_PIXBUF_ERROR_BAD_OPTION = 2
  GDK_PIXBUF_ERROR_UNKNOWN_TYPE = 3
  GDK_PIXBUF_ERROR_UNSUPPORTED_OPERATION = 4
  GDK_PIXBUF_ERROR_FAILED = 5
  GDK_PIXBUF_ERROR_INCOMPLETE_ANIMATION = 6
END ENUM
TYPE AS _GdkPixbufFormat GdkPixbufFormat
TYPE AS _GdkPixbufLoader GdkPixbufLoader
TYPE AS _GdkPixbufLoaderClass GdkPixbufLoaderClass
TYPE AS LONG GdkPixbufRotation
ENUM
  GDK_PIXBUF_ROTATE_NONE = 0
  GDK_PIXBUF_ROTATE_COUNTERCLOCKWISE = 90
  GDK_PIXBUF_ROTATE_UPSIDEDOWN = 180
  GDK_PIXBUF_ROTATE_CLOCKWISE = 270
END ENUM
TYPE AS _GdkPixbufSimpleAnim GdkPixbufSimpleAnim
TYPE AS _GdkPixbufSimpleAnimClass GdkPixbufSimpleAnimClass
TYPE AS _GdkPixbufSimpleAnimIter GdkPixbufSimpleAnimIter
EXTERN "C" LIB "gdk_pixbuf-2.0"
' P_X

TYPE GdkPixbufDestroyNotify AS SUB CDECL(BYVAL AS guchar PTR, BYVAL AS gpointer)
TYPE GdkPixbufSaveFunc AS FUNCTION CDECL(BYVAL AS const gchar PTR, BYVAL AS gsize, BYVAL AS GError PTR PTR, BYVAL AS gpointer) AS gboolean
' P_3

DECLARE FUNCTION gdk_colorspace_get_type() AS GType
#DEFINE GDK_TYPE_COLORSPACE (gdk_colorspace_get_type())
DECLARE FUNCTION gdk_interp_type_get_type() AS GType
#DEFINE GDK_TYPE_INTERP_TYPE (gdk_interp_type_get_type())
DECLARE FUNCTION gdk_pixbuf_get_type() AS GType
#DEFINE GDKPIXBUF_TYPE_PIXBUF (gdk_pixbuf_get_type())
#DEFINE GDKPIXBUF_PIXBUF(obj) (G_TYPE_CHECK_INSTANCE_CAST((obj), GDKPIXBUF_TYPE_PIXBUF, GdkPixbuf))
#DEFINE GDKPIXBUF_PIXBUF_CLASS(obj) (G_TYPE_CHECK_CLASS_CAST((obj), GDKPIXBUF_TYPE_PIXBUF, GdkPixbuf))
#DEFINE GDKPIXBUF_IS_PIXBUF(obj) (G_TYPE_CHECK_INSTANCE_TYPE((obj), GDKPIXBUF_TYPE_PIXBUF))
#DEFINE GDKPIXBUF_IS_CLASS_PIXBUF(obj) (G_TYPE_CHECK_CLASS_TYPE((obj), GDKPIXBUF_TYPE_PIXBUF))
#DEFINE GDKPIXBUF_PIXBUF_GET_CLASS(obj) (G_TYPE_INSTANCE_GET_CLASS((obj), GDKPIXBUF_TYPE_PIXBUF, GdkPixbuf))
DECLARE FUNCTION gdk_pixbuf_new(BYVAL AS GdkColorspace, BYVAL AS gboolean, BYVAL AS gint /'int'/, BYVAL AS gint /'int'/, BYVAL AS gint /'int'/) AS GdkPixbuf PTR
DECLARE FUNCTION gdk_pixbuf_new_from_bytes(BYVAL AS GBytes PTR, BYVAL AS GdkColorspace, BYVAL AS gboolean, BYVAL AS gint /'int'/, BYVAL AS gint /'int'/, BYVAL AS gint /'int'/, BYVAL AS gint /'int'/) AS GdkPixbuf PTR
DECLARE FUNCTION gdk_pixbuf_new_from_data(BYVAL AS const guchar PTR, BYVAL AS GdkColorspace, BYVAL AS gboolean, BYVAL AS gint /'int'/, BYVAL AS gint /'int'/, BYVAL AS gint /'int'/, BYVAL AS gint /'int'/, BYVAL AS GdkPixbufDestroyNotify, BYVAL AS gpointer) AS GdkPixbuf PTR
DECLARE FUNCTION gdk_pixbuf_new_from_file(BYVAL AS const char PTR, BYVAL AS GError PTR PTR) AS GdkPixbuf PTR
DECLARE FUNCTION gdk_pixbuf_new_from_file_at_scale(BYVAL AS const char PTR, BYVAL AS gint /'int'/, BYVAL AS gint /'int'/, BYVAL AS gboolean, BYVAL AS GError PTR PTR) AS GdkPixbuf PTR
DECLARE FUNCTION gdk_pixbuf_new_from_file_at_size(BYVAL AS const char PTR, BYVAL AS gint /'int'/, BYVAL AS gint /'int'/, BYVAL AS GError PTR PTR) AS GdkPixbuf PTR
DECLARE FUNCTION gdk_pixbuf_new_from_inline(BYVAL AS gint, BYVAL AS const guint8 PTR, BYVAL AS gboolean, BYVAL AS GError PTR PTR) AS GdkPixbuf PTR
DECLARE FUNCTION gdk_pixbuf_new_from_resource(BYVAL AS const char PTR, BYVAL AS GError PTR PTR) AS GdkPixbuf PTR
DECLARE FUNCTION gdk_pixbuf_new_from_resource_at_scale(BYVAL AS const char PTR, BYVAL AS gint /'int'/, BYVAL AS gint /'int'/, BYVAL AS gboolean, BYVAL AS GError PTR PTR) AS GdkPixbuf PTR
DECLARE FUNCTION gdk_pixbuf_new_from_stream(BYVAL AS GInputStream PTR, BYVAL AS GCancellable PTR, BYVAL AS GError PTR PTR) AS GdkPixbuf PTR
DECLARE FUNCTION gdk_pixbuf_new_from_stream_at_scale(BYVAL AS GInputStream PTR, BYVAL AS gint, BYVAL AS gint, BYVAL AS gboolean, BYVAL AS GCancellable PTR, BYVAL AS GError PTR PTR) AS GdkPixbuf PTR
DECLARE FUNCTION gdk_pixbuf_new_from_stream_finish(BYVAL AS GAsyncResult PTR, BYVAL AS GError PTR PTR) AS GdkPixbuf PTR
DECLARE FUNCTION gdk_pixbuf_new_from_xpm_data(BYVAL AS const char PTR PTR) AS GdkPixbuf PTR
DECLARE FUNCTION gdk_pixbuf_calculate_rowstride(BYVAL AS GdkColorspace, BYVAL AS gboolean, BYVAL AS gint /'int'/, BYVAL AS gint /'int'/, BYVAL AS gint /'int'/) AS gint
DECLARE FUNCTION gdk_pixbuf_get_file_info(BYVAL AS const gchar PTR, BYVAL AS gint PTR, BYVAL AS gint PTR) AS GdkPixbufFormat PTR
DECLARE SUB gdk_pixbuf_get_file_info_async(BYVAL AS const gchar PTR, BYVAL AS GCancellable PTR, BYVAL AS GAsyncReadyCallback, BYVAL AS gpointer)
DECLARE FUNCTION gdk_pixbuf_get_file_info_finish(BYVAL AS GAsyncResult PTR, BYVAL AS gint PTR, BYVAL AS gint PTR, BYVAL AS GError PTR PTR) AS GdkPixbufFormat PTR
DECLARE FUNCTION gdk_pixbuf_get_formats() AS GSList PTR
DECLARE FUNCTION gdk_pixbuf_init_modules(BYVAL AS const char PTR, BYVAL AS GError PTR PTR) AS gboolean
DECLARE SUB gdk_pixbuf_new_from_stream_async(BYVAL AS GInputStream PTR, BYVAL AS GCancellable PTR, BYVAL AS GAsyncReadyCallback, BYVAL AS gpointer)
DECLARE SUB gdk_pixbuf_new_from_stream_at_scale_async(BYVAL AS GInputStream PTR, BYVAL AS gint, BYVAL AS gint, BYVAL AS gboolean, BYVAL AS GCancellable PTR, BYVAL AS GAsyncReadyCallback, BYVAL AS gpointer)
DECLARE FUNCTION gdk_pixbuf_save_to_stream_finish(BYVAL AS GAsyncResult PTR, BYVAL AS GError PTR PTR) AS gboolean
DECLARE FUNCTION gdk_pixbuf_add_alpha(BYVAL AS const GdkPixbuf PTR, BYVAL AS gboolean, BYVAL AS guchar /'?'/, BYVAL AS guchar /'?'/, BYVAL AS guchar /'?'/) AS GdkPixbuf PTR
DECLARE FUNCTION gdk_pixbuf_apply_embedded_orientation(BYVAL AS GdkPixbuf PTR) AS GdkPixbuf PTR
DECLARE SUB gdk_pixbuf_composite(BYVAL AS const GdkPixbuf PTR, BYVAL AS GdkPixbuf PTR, BYVAL AS gint /'int'/, BYVAL AS gint /'int'/, BYVAL AS gint /'int'/, BYVAL AS gint /'int'/, BYVAL AS double, BYVAL AS double, BYVAL AS double, BYVAL AS double, BYVAL AS GdkInterpType, BYVAL AS gint /'int'/)
DECLARE SUB gdk_pixbuf_composite_color(BYVAL AS const GdkPixbuf PTR, BYVAL AS GdkPixbuf PTR, BYVAL AS gint /'int'/, BYVAL AS gint /'int'/, BYVAL AS gint /'int'/, BYVAL AS gint /'int'/, BYVAL AS double, BYVAL AS double, BYVAL AS double, BYVAL AS double, BYVAL AS GdkInterpType, BYVAL AS gint /'int'/, BYVAL AS gint /'int'/, BYVAL AS gint /'int'/, BYVAL AS gint /'int'/, BYVAL AS guint32, BYVAL AS guint32)
DECLARE FUNCTION gdk_pixbuf_composite_color_simple(BYVAL AS const GdkPixbuf PTR, BYVAL AS gint /'int'/, BYVAL AS gint /'int'/, BYVAL AS GdkInterpType, BYVAL AS gint /'int'/, BYVAL AS gint /'int'/, BYVAL AS guint32, BYVAL AS guint32) AS GdkPixbuf PTR
DECLARE FUNCTION gdk_pixbuf_copy(BYVAL AS const GdkPixbuf PTR) AS GdkPixbuf PTR
DECLARE SUB gdk_pixbuf_copy_area(BYVAL AS const GdkPixbuf PTR, BYVAL AS gint /'int'/, BYVAL AS gint /'int'/, BYVAL AS gint /'int'/, BYVAL AS gint /'int'/, BYVAL AS GdkPixbuf PTR, BYVAL AS gint /'int'/, BYVAL AS gint /'int'/)
DECLARE FUNCTION gdk_pixbuf_copy_options(BYVAL AS GdkPixbuf PTR, BYVAL AS GdkPixbuf PTR) AS gboolean
DECLARE SUB gdk_pixbuf_fill(BYVAL AS GdkPixbuf PTR, BYVAL AS guint32)
DECLARE FUNCTION gdk_pixbuf_flip(BYVAL AS const GdkPixbuf PTR, BYVAL AS gboolean) AS GdkPixbuf PTR
DECLARE FUNCTION gdk_pixbuf_get_bits_per_sample(BYVAL AS const GdkPixbuf PTR) AS gint /'int'/
DECLARE FUNCTION gdk_pixbuf_get_byte_length(BYVAL AS const GdkPixbuf PTR) AS gsize
DECLARE FUNCTION gdk_pixbuf_get_colorspace(BYVAL AS const GdkPixbuf PTR) AS GdkColorspace
DECLARE FUNCTION gdk_pixbuf_get_has_alpha(BYVAL AS const GdkPixbuf PTR) AS gboolean
DECLARE FUNCTION gdk_pixbuf_get_height(BYVAL AS const GdkPixbuf PTR) AS gint /'int'/
DECLARE FUNCTION gdk_pixbuf_get_n_channels(BYVAL AS const GdkPixbuf PTR) AS gint /'int'/
DECLARE FUNCTION gdk_pixbuf_get_option(BYVAL AS GdkPixbuf PTR, BYVAL AS const gchar PTR) AS const gchar PTR
DECLARE FUNCTION gdk_pixbuf_get_options(BYVAL AS GdkPixbuf PTR) AS GHashTable PTR
DECLARE FUNCTION gdk_pixbuf_get_pixels(BYVAL AS const GdkPixbuf PTR) AS guchar PTR
DECLARE FUNCTION gdk_pixbuf_get_pixels_with_length(BYVAL AS const GdkPixbuf PTR, BYVAL AS guint PTR) AS guchar PTR
DECLARE FUNCTION gdk_pixbuf_get_rowstride(BYVAL AS const GdkPixbuf PTR) AS gint /'int'/
DECLARE FUNCTION gdk_pixbuf_get_width(BYVAL AS const GdkPixbuf PTR) AS gint /'int'/
DECLARE FUNCTION gdk_pixbuf_new_subpixbuf(BYVAL AS GdkPixbuf PTR, BYVAL AS gint /'int'/, BYVAL AS gint /'int'/, BYVAL AS gint /'int'/, BYVAL AS gint /'int'/) AS GdkPixbuf PTR
DECLARE FUNCTION gdk_pixbuf_read_pixel_bytes(BYVAL AS const GdkPixbuf PTR) AS GBytes PTR
DECLARE FUNCTION gdk_pixbuf_read_pixels(BYVAL AS const GdkPixbuf PTR) AS const guint8 PTR
DECLARE FUNCTION gdk_pixbuf_ref(BYVAL AS GdkPixbuf PTR) AS GdkPixbuf PTR
DECLARE FUNCTION gdk_pixbuf_remove_option(BYVAL AS GdkPixbuf PTR, BYVAL AS const gchar PTR) AS gboolean
DECLARE FUNCTION gdk_pixbuf_rotate_simple(BYVAL AS const GdkPixbuf PTR, BYVAL AS GdkPixbufRotation) AS GdkPixbuf PTR
DECLARE SUB gdk_pixbuf_saturate_and_pixelate(BYVAL AS const GdkPixbuf PTR, BYVAL AS GdkPixbuf PTR, BYVAL AS gfloat, BYVAL AS gboolean)
DECLARE FUNCTION gdk_pixbuf_save(BYVAL AS GdkPixbuf PTR, BYVAL AS const char PTR, BYVAL AS const char PTR, BYVAL AS GError PTR PTR, ...) AS gboolean
DECLARE FUNCTION gdk_pixbuf_save_to_buffer(BYVAL AS GdkPixbuf PTR, BYVAL AS gchar PTR PTR, BYVAL AS gsize PTR, BYVAL AS const char PTR, BYVAL AS GError PTR PTR, ...) AS gboolean
DECLARE FUNCTION gdk_pixbuf_save_to_bufferv(BYVAL AS GdkPixbuf PTR, BYVAL AS gchar PTR PTR, BYVAL AS gsize PTR, BYVAL AS const char PTR, BYVAL AS char PTR PTR, BYVAL AS char PTR PTR, BYVAL AS GError PTR PTR) AS gboolean
DECLARE FUNCTION gdk_pixbuf_save_to_callback(BYVAL AS GdkPixbuf PTR, BYVAL AS GdkPixbufSaveFunc, BYVAL AS gpointer, BYVAL AS const char PTR, BYVAL AS GError PTR PTR, ...) AS gboolean
DECLARE FUNCTION gdk_pixbuf_save_to_callbackv(BYVAL AS GdkPixbuf PTR, BYVAL AS GdkPixbufSaveFunc, BYVAL AS gpointer, BYVAL AS const char PTR, BYVAL AS char PTR PTR, BYVAL AS char PTR PTR, BYVAL AS GError PTR PTR) AS gboolean
DECLARE FUNCTION gdk_pixbuf_save_to_stream(BYVAL AS GdkPixbuf PTR, BYVAL AS GOutputStream PTR, BYVAL AS const char PTR, BYVAL AS GCancellable PTR, BYVAL AS GError PTR PTR, ...) AS gboolean
DECLARE SUB gdk_pixbuf_save_to_stream_async(BYVAL AS GdkPixbuf PTR, BYVAL AS GOutputStream PTR, BYVAL AS const gchar PTR, BYVAL AS GCancellable PTR, BYVAL AS GAsyncReadyCallback, BYVAL AS gpointer, ...)
DECLARE FUNCTION gdk_pixbuf_save_to_streamv(BYVAL AS GdkPixbuf PTR, BYVAL AS GOutputStream PTR, BYVAL AS const char PTR, BYVAL AS char PTR PTR, BYVAL AS char PTR PTR, BYVAL AS GCancellable PTR, BYVAL AS GError PTR PTR) AS gboolean
DECLARE SUB gdk_pixbuf_save_to_streamv_async(BYVAL AS GdkPixbuf PTR, BYVAL AS GOutputStream PTR, BYVAL AS const gchar PTR, BYVAL AS gchar PTR PTR, BYVAL AS gchar PTR PTR, BYVAL AS GCancellable PTR, BYVAL AS GAsyncReadyCallback, BYVAL AS gpointer)
DECLARE FUNCTION gdk_pixbuf_savev(BYVAL AS GdkPixbuf PTR, BYVAL AS const char PTR, BYVAL AS const char PTR, BYVAL AS char PTR PTR, BYVAL AS char PTR PTR, BYVAL AS GError PTR PTR) AS gboolean
DECLARE SUB gdk_pixbuf_scale(BYVAL AS const GdkPixbuf PTR, BYVAL AS GdkPixbuf PTR, BYVAL AS gint /'int'/, BYVAL AS gint /'int'/, BYVAL AS gint /'int'/, BYVAL AS gint /'int'/, BYVAL AS double, BYVAL AS double, BYVAL AS double, BYVAL AS double, BYVAL AS GdkInterpType)
DECLARE FUNCTION gdk_pixbuf_scale_simple(BYVAL AS const GdkPixbuf PTR, BYVAL AS gint /'int'/, BYVAL AS gint /'int'/, BYVAL AS GdkInterpType) AS GdkPixbuf PTR
DECLARE FUNCTION gdk_pixbuf_set_option(BYVAL AS GdkPixbuf PTR, BYVAL AS const gchar PTR, BYVAL AS const gchar PTR) AS gboolean
DECLARE SUB gdk_pixbuf_unref(BYVAL AS GdkPixbuf PTR)
DECLARE FUNCTION gdk_pixbuf_alpha_mode_get_type() AS GType
#DEFINE GDK_TYPE_PIXBUF_ALPHA_MODE (gdk_pixbuf_alpha_mode_get_type())
DECLARE FUNCTION gdk_pixbuf_animation_get_type() AS GType
#DEFINE GDKPIXBUF_TYPE_PIXBUF_ANIMATION (gdk_pixbuf_animation_get_type())
#DEFINE GDKPIXBUF_PIXBUF_ANIMATION(obj) (G_TYPE_CHECK_INSTANCE_CAST((obj), GDKPIXBUF_TYPE_PIXBUF_ANIMATION, GdkPixbufAnimation))
#DEFINE GDKPIXBUF_PIXBUF_ANIMATION_CLASS(obj) (G_TYPE_CHECK_CLASS_CAST((obj), GDKPIXBUF_TYPE_PIXBUF_ANIMATION, GdkPixbuf))
#DEFINE GDKPIXBUF_IS_PIXBUF_ANIMATION(obj) (G_TYPE_CHECK_INSTANCE_TYPE((obj), GDKPIXBUF_TYPE_PIXBUF_ANIMATION))
#DEFINE GDKPIXBUF_IS_CLASS_PIXBUF_ANIMATION(obj) (G_TYPE_CHECK_CLASS_TYPE((obj), GDKPIXBUF_TYPE_PIXBUF_ANIMATION))
#DEFINE GDKPIXBUF_PIXBUF_ANIMATION_GET_CLASS(obj) (G_TYPE_INSTANCE_GET_CLASS((obj), GDKPIXBUF_TYPE_PIXBUF_ANIMATION, GdkPixbuf))
DECLARE FUNCTION gdk_pixbuf_animation_new_from_file(BYVAL AS const char PTR, BYVAL AS GError PTR PTR) AS GdkPixbufAnimation PTR
DECLARE FUNCTION gdk_pixbuf_animation_new_from_resource(BYVAL AS const char PTR, BYVAL AS GError PTR PTR) AS GdkPixbufAnimation PTR
DECLARE FUNCTION gdk_pixbuf_animation_new_from_stream(BYVAL AS GInputStream PTR, BYVAL AS GCancellable PTR, BYVAL AS GError PTR PTR) AS GdkPixbufAnimation PTR
DECLARE FUNCTION gdk_pixbuf_animation_new_from_stream_finish(BYVAL AS GAsyncResult PTR, BYVAL AS GError PTR PTR) AS GdkPixbufAnimation PTR
DECLARE SUB gdk_pixbuf_animation_new_from_stream_async(BYVAL AS GInputStream PTR, BYVAL AS GCancellable PTR, BYVAL AS GAsyncReadyCallback, BYVAL AS gpointer)
DECLARE FUNCTION gdk_pixbuf_animation_get_height(BYVAL AS GdkPixbufAnimation PTR) AS gint /'int'/
DECLARE FUNCTION gdk_pixbuf_animation_get_iter(BYVAL AS GdkPixbufAnimation PTR, BYVAL AS const GTimeVal PTR) AS GdkPixbufAnimationIter PTR
DECLARE FUNCTION gdk_pixbuf_animation_get_static_image(BYVAL AS GdkPixbufAnimation PTR) AS GdkPixbuf PTR
DECLARE FUNCTION gdk_pixbuf_animation_get_width(BYVAL AS GdkPixbufAnimation PTR) AS gint /'int'/
DECLARE FUNCTION gdk_pixbuf_animation_is_static_image(BYVAL AS GdkPixbufAnimation PTR) AS gboolean
DECLARE FUNCTION gdk_pixbuf_animation_ref(BYVAL AS GdkPixbufAnimation PTR) AS GdkPixbufAnimation PTR
DECLARE SUB gdk_pixbuf_animation_unref(BYVAL AS GdkPixbufAnimation PTR)
DECLARE FUNCTION gdk_pixbuf_animation_iter_get_type() AS GType
#DEFINE GDKPIXBUF_TYPE_PIXBUF_ANIMATION_ITER (gdk_pixbuf_animation_iter_get_type())
#DEFINE GDKPIXBUF_PIXBUF_ANIMATION_ITER(obj) (G_TYPE_CHECK_INSTANCE_CAST((obj), GDKPIXBUF_TYPE_PIXBUF_ANIMATION_ITER, GdkPixbufAnimationIter))
#DEFINE GDKPIXBUF_PIXBUF_ANIMATION_ITER_CLASS(obj) (G_TYPE_CHECK_CLASS_CAST((obj), GDKPIXBUF_TYPE_PIXBUF_ANIMATION_ITER, GdkPixbuf))
#DEFINE GDKPIXBUF_IS_PIXBUF_ANIMATION_ITER(obj) (G_TYPE_CHECK_INSTANCE_TYPE((obj), GDKPIXBUF_TYPE_PIXBUF_ANIMATION_ITER))
#DEFINE GDKPIXBUF_IS_CLASS_PIXBUF_ANIMATION_ITER(obj) (G_TYPE_CHECK_CLASS_TYPE((obj), GDKPIXBUF_TYPE_PIXBUF_ANIMATION_ITER))
#DEFINE GDKPIXBUF_PIXBUF_ANIMATION_ITER_GET_CLASS(obj) (G_TYPE_INSTANCE_GET_CLASS((obj), GDKPIXBUF_TYPE_PIXBUF_ANIMATION_ITER, GdkPixbuf))
DECLARE FUNCTION gdk_pixbuf_animation_iter_advance(BYVAL AS GdkPixbufAnimationIter PTR, BYVAL AS const GTimeVal PTR) AS gboolean
DECLARE FUNCTION gdk_pixbuf_animation_iter_get_delay_time(BYVAL AS GdkPixbufAnimationIter PTR) AS gint /'int'/
DECLARE FUNCTION gdk_pixbuf_animation_iter_get_pixbuf(BYVAL AS GdkPixbufAnimationIter PTR) AS GdkPixbuf PTR
DECLARE FUNCTION gdk_pixbuf_animation_iter_on_currently_loading_frame(BYVAL AS GdkPixbufAnimationIter PTR) AS gboolean
DECLARE FUNCTION gdk_pixbuf_error_get_type() AS GType
#DEFINE GDK_TYPE_PIXBUF_ERROR (gdk_pixbuf_error_get_type())
DECLARE FUNCTION gdk_pixbuf_format_copy(BYVAL AS const GdkPixbufFormat PTR) AS GdkPixbufFormat PTR
DECLARE SUB gdk_pixbuf_format_free(BYVAL AS GdkPixbufFormat PTR)
DECLARE FUNCTION gdk_pixbuf_format_get_description(BYVAL AS GdkPixbufFormat PTR) AS gchar PTR
DECLARE FUNCTION gdk_pixbuf_format_get_extensions(BYVAL AS GdkPixbufFormat PTR) AS gchar PTR PTR
DECLARE FUNCTION gdk_pixbuf_format_get_license(BYVAL AS GdkPixbufFormat PTR) AS gchar PTR
DECLARE FUNCTION gdk_pixbuf_format_get_mime_types(BYVAL AS GdkPixbufFormat PTR) AS gchar PTR PTR
DECLARE FUNCTION gdk_pixbuf_format_get_name(BYVAL AS GdkPixbufFormat PTR) AS gchar PTR
DECLARE FUNCTION gdk_pixbuf_format_is_disabled(BYVAL AS GdkPixbufFormat PTR) AS gboolean
DECLARE FUNCTION gdk_pixbuf_format_is_save_option_supported(BYVAL AS GdkPixbufFormat PTR, BYVAL AS const gchar PTR) AS gboolean
DECLARE FUNCTION gdk_pixbuf_format_is_scalable(BYVAL AS GdkPixbufFormat PTR) AS gboolean
DECLARE FUNCTION gdk_pixbuf_format_is_writable(BYVAL AS GdkPixbufFormat PTR) AS gboolean
DECLARE SUB gdk_pixbuf_format_set_disabled(BYVAL AS GdkPixbufFormat PTR, BYVAL AS gboolean)
TYPE _GdkPixbufLoader
  AS GObject parent_instance
  AS gpointer priv
END TYPE
DECLARE FUNCTION gdk_pixbuf_loader_get_type() AS GType
#DEFINE GDKPIXBUF_TYPE_PIXBUF_LOADER (gdk_pixbuf_loader_get_type())
#DEFINE GDKPIXBUF_PIXBUF_LOADER(obj) (G_TYPE_CHECK_INSTANCE_CAST((obj), GDKPIXBUF_TYPE_PIXBUF_LOADER, GdkPixbufLoader))
#DEFINE GDKPIXBUF_PIXBUF_LOADER_CLASS(obj) (G_TYPE_CHECK_CLASS_CAST((obj), GDKPIXBUF_TYPE_PIXBUF_LOADER, GdkPixbufPixbufLoaderClass))
#DEFINE GDKPIXBUF_IS_PIXBUF_LOADER(obj) (G_TYPE_CHECK_INSTANCE_TYPE((obj), GDKPIXBUF_TYPE_PIXBUF_LOADER))
#DEFINE GDKPIXBUF_IS_CLASS_PIXBUF_LOADER(obj) (G_TYPE_CHECK_CLASS_TYPE((obj), GDKPIXBUF_TYPE_PIXBUF_LOADER))
#DEFINE GDKPIXBUF_PIXBUF_LOADER_GET_CLASS(obj) (G_TYPE_INSTANCE_GET_CLASS((obj), GDKPIXBUF_TYPE_PIXBUF_LOADER, GdkPixbufPixbufLoaderClass))
DECLARE FUNCTION gdk_pixbuf_loader_new() AS GdkPixbufLoader PTR
DECLARE FUNCTION gdk_pixbuf_loader_new_with_mime_type(BYVAL AS const char PTR, BYVAL AS GError PTR PTR) AS GdkPixbufLoader PTR
DECLARE FUNCTION gdk_pixbuf_loader_new_with_type(BYVAL AS const char PTR, BYVAL AS GError PTR PTR) AS GdkPixbufLoader PTR
DECLARE FUNCTION gdk_pixbuf_loader_close(BYVAL AS GdkPixbufLoader PTR, BYVAL AS GError PTR PTR) AS gboolean
DECLARE FUNCTION gdk_pixbuf_loader_get_animation(BYVAL AS GdkPixbufLoader PTR) AS GdkPixbufAnimation PTR
DECLARE FUNCTION gdk_pixbuf_loader_get_format(BYVAL AS GdkPixbufLoader PTR) AS GdkPixbufFormat PTR
DECLARE FUNCTION gdk_pixbuf_loader_get_pixbuf(BYVAL AS GdkPixbufLoader PTR) AS GdkPixbuf PTR
DECLARE SUB gdk_pixbuf_loader_set_size(BYVAL AS GdkPixbufLoader PTR, BYVAL AS gint /'int'/, BYVAL AS gint /'int'/)
DECLARE FUNCTION gdk_pixbuf_loader_write(BYVAL AS GdkPixbufLoader PTR, BYVAL AS const guchar PTR, BYVAL AS gsize, BYVAL AS GError PTR PTR) AS gboolean
DECLARE FUNCTION gdk_pixbuf_loader_write_bytes(BYVAL AS GdkPixbufLoader PTR, BYVAL AS GBytes PTR, BYVAL AS GError PTR PTR) AS gboolean
TYPE _GdkPixbufLoaderClass
  AS GObjectClass parent_class
  size_prepared AS SUB CDECL(BYVAL AS GdkPixbufLoader PTR, BYVAL AS gint /'int'/, BYVAL AS gint /'int'/)
  area_prepared AS SUB CDECL(BYVAL AS GdkPixbufLoader PTR)
  area_updated AS SUB CDECL(BYVAL AS GdkPixbufLoader PTR, BYVAL AS gint /'int'/, BYVAL AS gint /'int'/, BYVAL AS gint /'int'/, BYVAL AS gint /'int'/)
  closed AS SUB CDECL(BYVAL AS GdkPixbufLoader PTR)
END TYPE
DECLARE FUNCTION gdk_pixbuf_rotation_get_type() AS GType
#DEFINE GDK_TYPE_PIXBUF_ROTATION (gdk_pixbuf_rotation_get_type())
DECLARE FUNCTION gdk_pixbuf_simple_anim_get_type() AS GType
#DEFINE GDKPIXBUF_TYPE_PIXBUF_SIMPLE_ANIM (gdk_pixbuf_simple_anim_get_type())
#DEFINE GDKPIXBUF_PIXBUF_SIMPLE_ANIM(obj) (G_TYPE_CHECK_INSTANCE_CAST((obj), GDKPIXBUF_TYPE_PIXBUF_SIMPLE_ANIM, GdkPixbufSimpleAnim))
#DEFINE GDKPIXBUF_PIXBUF_SIMPLE_ANIM_CLASS(obj) (G_TYPE_CHECK_CLASS_CAST((obj), GDKPIXBUF_TYPE_PIXBUF_SIMPLE_ANIM, GdkPixbufPixbufSimpleAnimClass))
#DEFINE GDKPIXBUF_IS_PIXBUF_SIMPLE_ANIM(obj) (G_TYPE_CHECK_INSTANCE_TYPE((obj), GDKPIXBUF_TYPE_PIXBUF_SIMPLE_ANIM))
#DEFINE GDKPIXBUF_IS_CLASS_PIXBUF_SIMPLE_ANIM(obj) (G_TYPE_CHECK_CLASS_TYPE((obj), GDKPIXBUF_TYPE_PIXBUF_SIMPLE_ANIM))
#DEFINE GDKPIXBUF_PIXBUF_SIMPLE_ANIM_GET_CLASS(obj) (G_TYPE_INSTANCE_GET_CLASS((obj), GDKPIXBUF_TYPE_PIXBUF_SIMPLE_ANIM, GdkPixbufPixbufSimpleAnimClass))
DECLARE FUNCTION gdk_pixbuf_simple_anim_new(BYVAL AS gint, BYVAL AS gint, BYVAL AS gfloat) AS GdkPixbufSimpleAnim PTR
DECLARE SUB gdk_pixbuf_simple_anim_add_frame(BYVAL AS GdkPixbufSimpleAnim PTR, BYVAL AS GdkPixbuf PTR)
DECLARE FUNCTION gdk_pixbuf_simple_anim_get_loop(BYVAL AS GdkPixbufSimpleAnim PTR) AS gboolean
DECLARE SUB gdk_pixbuf_simple_anim_set_loop(BYVAL AS GdkPixbufSimpleAnim PTR, BYVAL AS gboolean)
DECLARE FUNCTION gdk_pixbuf_simple_anim_iter_get_type() AS GType
#DEFINE GDKPIXBUF_TYPE_PIXBUF_SIMPLE_ANIM_ITER (gdk_pixbuf_simple_anim_iter_get_type())
#DEFINE GDKPIXBUF_PIXBUF_SIMPLE_ANIM_ITER(obj) (G_TYPE_CHECK_INSTANCE_CAST((obj), GDKPIXBUF_TYPE_PIXBUF_SIMPLE_ANIM_ITER, GdkPixbufSimpleAnimIter))
#DEFINE GDKPIXBUF_PIXBUF_SIMPLE_ANIM_ITER_CLASS(obj) (G_TYPE_CHECK_CLASS_CAST((obj), GDKPIXBUF_TYPE_PIXBUF_SIMPLE_ANIM_ITER, GdkPixbuf))
#DEFINE GDKPIXBUF_IS_PIXBUF_SIMPLE_ANIM_ITER(obj) (G_TYPE_CHECK_INSTANCE_TYPE((obj), GDKPIXBUF_TYPE_PIXBUF_SIMPLE_ANIM_ITER))
#DEFINE GDKPIXBUF_IS_CLASS_PIXBUF_SIMPLE_ANIM_ITER(obj) (G_TYPE_CHECK_CLASS_TYPE((obj), GDKPIXBUF_TYPE_PIXBUF_SIMPLE_ANIM_ITER))
#DEFINE GDKPIXBUF_PIXBUF_SIMPLE_ANIM_ITER_GET_CLASS(obj) (G_TYPE_INSTANCE_GET_CLASS((obj), GDKPIXBUF_TYPE_PIXBUF_SIMPLE_ANIM_ITER, GdkPixbuf))
' P_4

END EXTERN

