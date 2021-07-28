'            FreeBasic header file, auto-generated by
'                       ### girtobac ###
' LGPLv2.1 (C) 2013-2021 by Thomas{ doT ]Freiherr[ At ]gmx[ DoT }net
' Auto-translated from file /usr/share/gir-1.0/GstController-1.0.gir
#INCLUDE ONCE "_GirToBac-0.0.bi"
' Repository version 1.2
#INCLUDE ONCE "Gst-1.0.bi"
TYPE AS _GstARGBControlBinding GstARGBControlBinding
TYPE AS _GstARGBControlBindingClass GstARGBControlBindingClass
TYPE AS _GstControlPoint GstControlPoint
TYPE AS _GstDirectControlBinding GstDirectControlBinding
TYPE AS _GstDirectControlBindingClass GstDirectControlBindingClass
TYPE AS _GstInterpolationControlSource GstInterpolationControlSource
TYPE AS _GstInterpolationControlSourceClass GstInterpolationControlSourceClass
TYPE AS _GstInterpolationControlSourcePrivate GstInterpolationControlSourcePrivate
TYPE AS LONG GstInterpolationMode
ENUM
  GST_INTERPOLATION_MODE_NONE = 0
  GST_INTERPOLATION_MODE_LINEAR = 1
  GST_INTERPOLATION_MODE_CUBIC = 2
  GST_INTERPOLATION_MODE_CUBIC_MONOTONIC = 3
END ENUM
TYPE AS _GstLFOControlSource GstLFOControlSource
TYPE AS _GstLFOControlSourceClass GstLFOControlSourceClass
TYPE AS _GstLFOControlSourcePrivate GstLFOControlSourcePrivate
TYPE AS LONG GstLFOWaveform
ENUM
  GST_LFO_WAVEFORM_SINE = 0
  GST_LFO_WAVEFORM_SQUARE = 1
  GST_LFO_WAVEFORM_SAW = 2
  GST_LFO_WAVEFORM_REVERSE_SAW = 3
  GST_LFO_WAVEFORM_TRIANGLE = 4
END ENUM
TYPE AS _GstProxyControlBinding GstProxyControlBinding
TYPE AS _GstProxyControlBindingClass GstProxyControlBindingClass
TYPE AS _GstTimedValueControlSource GstTimedValueControlSource
TYPE AS _GstTimedValueControlSourceClass GstTimedValueControlSourceClass
TYPE AS _GstTimedValueControlSourcePrivate GstTimedValueControlSourcePrivate
TYPE AS _GstTriggerControlSource GstTriggerControlSource
TYPE AS _GstTriggerControlSourceClass GstTriggerControlSourceClass
TYPE AS _GstTriggerControlSourcePrivate GstTriggerControlSourcePrivate
EXTERN "C" LIB "gstcontroller-1.0"
' P_X

' P_3

TYPE _GstARGBControlBinding
  AS GstControlBinding parent
  AS GstControlSource PTR cs_a
  AS GstControlSource PTR cs_r
  AS GstControlSource PTR cs_g
  AS GstControlSource PTR cs_b
  AS GValue cur_value
  AS guint32 last_value
  AS gpointer _gst_reserved(3)
END TYPE
DECLARE FUNCTION gst_argb_control_binding_get_type() AS GType
#DEFINE GSTCONTROLLER_TYPE_ARGB_CONTROL_BINDING (gst_argb_control_binding_get_type())
#DEFINE GSTCONTROLLER_ARGB_CONTROL_BINDING(obj) (G_TYPE_CHECK_INSTANCE_CAST((obj), GSTCONTROLLER_TYPE_ARGB_CONTROL_BINDING, GstARGBControlBinding))
#DEFINE GSTCONTROLLER_ARGB_CONTROL_BINDING_CLASS(obj) (G_TYPE_CHECK_CLASS_CAST((obj), GSTCONTROLLER_TYPE_ARGB_CONTROL_BINDING, GstControllerARGBControlBindingClass))
#DEFINE GSTCONTROLLER_IS_ARGB_CONTROL_BINDING(obj) (G_TYPE_CHECK_INSTANCE_TYPE((obj), GSTCONTROLLER_TYPE_ARGB_CONTROL_BINDING))
#DEFINE GSTCONTROLLER_IS_CLASS_ARGB_CONTROL_BINDING(obj) (G_TYPE_CHECK_CLASS_TYPE((obj), GSTCONTROLLER_TYPE_ARGB_CONTROL_BINDING))
#DEFINE GSTCONTROLLER_ARGB_CONTROL_BINDING_GET_CLASS(obj) (G_TYPE_INSTANCE_GET_CLASS((obj), GSTCONTROLLER_TYPE_ARGB_CONTROL_BINDING, GstControllerARGBControlBindingClass))
DECLARE FUNCTION gst_argb_control_binding_new(BYVAL AS GstObject PTR, BYVAL AS const gchar PTR, BYVAL AS GstControlSource PTR, BYVAL AS GstControlSource PTR, BYVAL AS GstControlSource PTR, BYVAL AS GstControlSource PTR) AS GstControlBinding PTR
TYPE _GstARGBControlBindingClass
  AS GstControlBindingClass parent_class
  AS gpointer _gst_reserved(3)
END TYPE
TYPE _GstControlPoint
  AS GstClockTime timestamp
  AS gdouble value
END TYPE
DECLARE FUNCTION gst_control_point_copy(BYVAL AS GstControlPoint PTR) AS GstControlPoint PTR
DECLARE SUB gst_control_point_free(BYVAL AS GstControlPoint PTR)
TYPE _GstDirectControlBinding
  AS GstControlBinding parent
  AS GstControlSource PTR cs
  AS GValue cur_value
  AS gdouble last_value
  AS gint byte_size
  AS GstDirectControlBindingConvertValue convert_value
  AS GstDirectControlBindingConvertGValue convert_g_value
END TYPE
DECLARE FUNCTION gst_direct_control_binding_get_type() AS GType
#DEFINE GSTCONTROLLER_TYPE_DIRECT_CONTROL_BINDING (gst_direct_control_binding_get_type())
#DEFINE GSTCONTROLLER_DIRECT_CONTROL_BINDING(obj) (G_TYPE_CHECK_INSTANCE_CAST((obj), GSTCONTROLLER_TYPE_DIRECT_CONTROL_BINDING, GstDirectControlBinding))
#DEFINE GSTCONTROLLER_DIRECT_CONTROL_BINDING_CLASS(obj) (G_TYPE_CHECK_CLASS_CAST((obj), GSTCONTROLLER_TYPE_DIRECT_CONTROL_BINDING, GstControllerDirectControlBindingClass))
#DEFINE GSTCONTROLLER_IS_DIRECT_CONTROL_BINDING(obj) (G_TYPE_CHECK_INSTANCE_TYPE((obj), GSTCONTROLLER_TYPE_DIRECT_CONTROL_BINDING))
#DEFINE GSTCONTROLLER_IS_CLASS_DIRECT_CONTROL_BINDING(obj) (G_TYPE_CHECK_CLASS_TYPE((obj), GSTCONTROLLER_TYPE_DIRECT_CONTROL_BINDING))
#DEFINE GSTCONTROLLER_DIRECT_CONTROL_BINDING_GET_CLASS(obj) (G_TYPE_INSTANCE_GET_CLASS((obj), GSTCONTROLLER_TYPE_DIRECT_CONTROL_BINDING, GstControllerDirectControlBindingClass))
DECLARE FUNCTION gst_direct_control_binding_new(BYVAL AS GstObject PTR, BYVAL AS const gchar PTR, BYVAL AS GstControlSource PTR) AS GstControlBinding PTR
DECLARE FUNCTION gst_direct_control_binding_new_absolute(BYVAL AS GstObject PTR, BYVAL AS const gchar PTR, BYVAL AS GstControlSource PTR) AS GstControlBinding PTR
TYPE _GstDirectControlBindingClass
  AS GstControlBindingClass parent_class
  AS gpointer _gst_reserved(3)
END TYPE
TYPE GstDirectControlBindingConvertGValue AS SUB CDECL(BYVAL AS GstDirectControlBinding PTR, BYVAL AS gdouble, BYVAL AS GValue PTR)
TYPE GstDirectControlBindingConvertValue AS SUB CDECL(BYVAL AS GstDirectControlBinding PTR, BYVAL AS gdouble, BYVAL AS gpointer)
TYPE _GstInterpolationControlSource
  AS GstTimedValueControlSource parent
  AS GstInterpolationControlSourcePrivate PTR priv
  AS gpointer _gst_reserved(3)
END TYPE
DECLARE FUNCTION gst_interpolation_control_source_get_type() AS GType
#DEFINE GSTCONTROLLER_TYPE_INTERPOLATION_CONTROL_SOURCE (gst_interpolation_control_source_get_type())
#DEFINE GSTCONTROLLER_INTERPOLATION_CONTROL_SOURCE(obj) (G_TYPE_CHECK_INSTANCE_CAST((obj), GSTCONTROLLER_TYPE_INTERPOLATION_CONTROL_SOURCE, GstInterpolationControlSource))
#DEFINE GSTCONTROLLER_INTERPOLATION_CONTROL_SOURCE_CLASS(obj) (G_TYPE_CHECK_CLASS_CAST((obj), GSTCONTROLLER_TYPE_INTERPOLATION_CONTROL_SOURCE, GstControllerInterpolationControlSourceClass))
#DEFINE GSTCONTROLLER_IS_INTERPOLATION_CONTROL_SOURCE(obj) (G_TYPE_CHECK_INSTANCE_TYPE((obj), GSTCONTROLLER_TYPE_INTERPOLATION_CONTROL_SOURCE))
#DEFINE GSTCONTROLLER_IS_CLASS_INTERPOLATION_CONTROL_SOURCE(obj) (G_TYPE_CHECK_CLASS_TYPE((obj), GSTCONTROLLER_TYPE_INTERPOLATION_CONTROL_SOURCE))
#DEFINE GSTCONTROLLER_INTERPOLATION_CONTROL_SOURCE_GET_CLASS(obj) (G_TYPE_INSTANCE_GET_CLASS((obj), GSTCONTROLLER_TYPE_INTERPOLATION_CONTROL_SOURCE, GstControllerInterpolationControlSourceClass))
DECLARE FUNCTION gst_interpolation_control_source_new() AS GstControlSource PTR
TYPE _GstInterpolationControlSourceClass
  AS GstTimedValueControlSourceClass parent_class
  AS gpointer _gst_reserved(3)
END TYPE
TYPE _GstLFOControlSource
  AS GstControlSource parent
  AS GstLFOControlSourcePrivate PTR priv
  AS GMutex lock
  AS gpointer _gst_reserved(3)
END TYPE
DECLARE FUNCTION gst_interpolation_mode_get_type() AS GType
#DEFINE GST_TYPE_INTERPOLATION_MODE (gst_interpolation_mode_get_type())
DECLARE FUNCTION gst_lfo_control_source_get_type() AS GType
#DEFINE GSTCONTROLLER_TYPE_LFO_CONTROL_SOURCE (gst_lfo_control_source_get_type())
#DEFINE GSTCONTROLLER_LFO_CONTROL_SOURCE(obj) (G_TYPE_CHECK_INSTANCE_CAST((obj), GSTCONTROLLER_TYPE_LFO_CONTROL_SOURCE, GstLFOControlSource))
#DEFINE GSTCONTROLLER_LFO_CONTROL_SOURCE_CLASS(obj) (G_TYPE_CHECK_CLASS_CAST((obj), GSTCONTROLLER_TYPE_LFO_CONTROL_SOURCE, GstControllerLFOControlSourceClass))
#DEFINE GSTCONTROLLER_IS_LFO_CONTROL_SOURCE(obj) (G_TYPE_CHECK_INSTANCE_TYPE((obj), GSTCONTROLLER_TYPE_LFO_CONTROL_SOURCE))
#DEFINE GSTCONTROLLER_IS_CLASS_LFO_CONTROL_SOURCE(obj) (G_TYPE_CHECK_CLASS_TYPE((obj), GSTCONTROLLER_TYPE_LFO_CONTROL_SOURCE))
#DEFINE GSTCONTROLLER_LFO_CONTROL_SOURCE_GET_CLASS(obj) (G_TYPE_INSTANCE_GET_CLASS((obj), GSTCONTROLLER_TYPE_LFO_CONTROL_SOURCE, GstControllerLFOControlSourceClass))
DECLARE FUNCTION gst_lfo_control_source_new() AS GstControlSource PTR
TYPE _GstLFOControlSourceClass
  AS GstControlSourceClass parent_class
  AS gpointer _gst_reserved(3)
END TYPE
TYPE _GstProxyControlBinding
  AS GstControlBinding parent
  AS GWeakRef ref_object
  AS gchar PTR property_name
  AS gpointer _padding(3)
END TYPE
DECLARE FUNCTION gst_lfo_waveform_get_type() AS GType
#DEFINE GST_TYPE_LFO_WAVEFORM (gst_lfo_waveform_get_type())
DECLARE FUNCTION gst_proxy_control_binding_get_type() AS GType
#DEFINE GSTCONTROLLER_TYPE_PROXY_CONTROL_BINDING (gst_proxy_control_binding_get_type())
#DEFINE GSTCONTROLLER_PROXY_CONTROL_BINDING(obj) (G_TYPE_CHECK_INSTANCE_CAST((obj), GSTCONTROLLER_TYPE_PROXY_CONTROL_BINDING, GstProxyControlBinding))
#DEFINE GSTCONTROLLER_PROXY_CONTROL_BINDING_CLASS(obj) (G_TYPE_CHECK_CLASS_CAST((obj), GSTCONTROLLER_TYPE_PROXY_CONTROL_BINDING, GstControllerProxyControlBindingClass))
#DEFINE GSTCONTROLLER_IS_PROXY_CONTROL_BINDING(obj) (G_TYPE_CHECK_INSTANCE_TYPE((obj), GSTCONTROLLER_TYPE_PROXY_CONTROL_BINDING))
#DEFINE GSTCONTROLLER_IS_CLASS_PROXY_CONTROL_BINDING(obj) (G_TYPE_CHECK_CLASS_TYPE((obj), GSTCONTROLLER_TYPE_PROXY_CONTROL_BINDING))
#DEFINE GSTCONTROLLER_PROXY_CONTROL_BINDING_GET_CLASS(obj) (G_TYPE_INSTANCE_GET_CLASS((obj), GSTCONTROLLER_TYPE_PROXY_CONTROL_BINDING, GstControllerProxyControlBindingClass))
DECLARE FUNCTION gst_proxy_control_binding_new(BYVAL AS GstObject PTR, BYVAL AS const gchar PTR, BYVAL AS GstObject PTR, BYVAL AS const gchar PTR) AS GstControlBinding PTR
TYPE _GstProxyControlBindingClass
  AS GstControlBindingClass parent_class
  AS gpointer _padding(3)
END TYPE
TYPE _GstTimedValueControlSource
  AS GstControlSource parent
  AS GMutex lock
  AS GSequence PTR values
  AS gint nvalues
  AS gboolean valid_cache
  AS GstTimedValueControlSourcePrivate PTR priv
  AS gpointer _gst_reserved(3)
END TYPE
DECLARE FUNCTION gst_timed_value_control_source_get_type() AS GType
#DEFINE GSTCONTROLLER_TYPE_TIMED_VALUE_CONTROL_SOURCE (gst_timed_value_control_source_get_type())
#DEFINE GSTCONTROLLER_TIMED_VALUE_CONTROL_SOURCE(obj) (G_TYPE_CHECK_INSTANCE_CAST((obj), GSTCONTROLLER_TYPE_TIMED_VALUE_CONTROL_SOURCE, GstTimedValueControlSource))
#DEFINE GSTCONTROLLER_TIMED_VALUE_CONTROL_SOURCE_CLASS(obj) (G_TYPE_CHECK_CLASS_CAST((obj), GSTCONTROLLER_TYPE_TIMED_VALUE_CONTROL_SOURCE, GstControllerTimedValueControlSourceClass))
#DEFINE GSTCONTROLLER_IS_TIMED_VALUE_CONTROL_SOURCE(obj) (G_TYPE_CHECK_INSTANCE_TYPE((obj), GSTCONTROLLER_TYPE_TIMED_VALUE_CONTROL_SOURCE))
#DEFINE GSTCONTROLLER_IS_CLASS_TIMED_VALUE_CONTROL_SOURCE(obj) (G_TYPE_CHECK_CLASS_TYPE((obj), GSTCONTROLLER_TYPE_TIMED_VALUE_CONTROL_SOURCE))
#DEFINE GSTCONTROLLER_TIMED_VALUE_CONTROL_SOURCE_GET_CLASS(obj) (G_TYPE_INSTANCE_GET_CLASS((obj), GSTCONTROLLER_TYPE_TIMED_VALUE_CONTROL_SOURCE, GstControllerTimedValueControlSourceClass))
DECLARE FUNCTION gst_timed_value_control_source_find_control_point_iter(BYVAL AS GstTimedValueControlSource PTR, BYVAL AS GstClockTime) AS GSequenceIter PTR
DECLARE FUNCTION gst_timed_value_control_source_get_all(BYVAL AS GstTimedValueControlSource PTR) AS GList PTR
DECLARE FUNCTION gst_timed_value_control_source_get_count(BYVAL AS GstTimedValueControlSource PTR) AS gint
DECLARE FUNCTION gst_timed_value_control_source_set(BYVAL AS GstTimedValueControlSource PTR, BYVAL AS GstClockTime, BYVAL AS const gdouble) AS gboolean
DECLARE FUNCTION gst_timed_value_control_source_set_from_list(BYVAL AS GstTimedValueControlSource PTR, BYVAL AS const GSList PTR) AS gboolean
DECLARE FUNCTION gst_timed_value_control_source_unset(BYVAL AS GstTimedValueControlSource PTR, BYVAL AS GstClockTime) AS gboolean
DECLARE SUB gst_timed_value_control_source_unset_all(BYVAL AS GstTimedValueControlSource PTR)
TYPE _GstTimedValueControlSourceClass
  AS GstControlSourceClass parent_class
  AS gpointer _gst_reserved(3)
END TYPE
TYPE _GstTriggerControlSource
  AS GstTimedValueControlSource parent
  AS GstTriggerControlSourcePrivate PTR priv
  AS gpointer _gst_reserved(3)
END TYPE
DECLARE FUNCTION gst_trigger_control_source_get_type() AS GType
#DEFINE GSTCONTROLLER_TYPE_TRIGGER_CONTROL_SOURCE (gst_trigger_control_source_get_type())
#DEFINE GSTCONTROLLER_TRIGGER_CONTROL_SOURCE(obj) (G_TYPE_CHECK_INSTANCE_CAST((obj), GSTCONTROLLER_TYPE_TRIGGER_CONTROL_SOURCE, GstTriggerControlSource))
#DEFINE GSTCONTROLLER_TRIGGER_CONTROL_SOURCE_CLASS(obj) (G_TYPE_CHECK_CLASS_CAST((obj), GSTCONTROLLER_TYPE_TRIGGER_CONTROL_SOURCE, GstControllerTriggerControlSourceClass))
#DEFINE GSTCONTROLLER_IS_TRIGGER_CONTROL_SOURCE(obj) (G_TYPE_CHECK_INSTANCE_TYPE((obj), GSTCONTROLLER_TYPE_TRIGGER_CONTROL_SOURCE))
#DEFINE GSTCONTROLLER_IS_CLASS_TRIGGER_CONTROL_SOURCE(obj) (G_TYPE_CHECK_CLASS_TYPE((obj), GSTCONTROLLER_TYPE_TRIGGER_CONTROL_SOURCE))
#DEFINE GSTCONTROLLER_TRIGGER_CONTROL_SOURCE_GET_CLASS(obj) (G_TYPE_INSTANCE_GET_CLASS((obj), GSTCONTROLLER_TYPE_TRIGGER_CONTROL_SOURCE, GstControllerTriggerControlSourceClass))
DECLARE FUNCTION gst_trigger_control_source_new() AS GstControlSource PTR
TYPE _GstTriggerControlSourceClass
  AS GstTimedValueControlSourceClass parent_class
  AS gpointer _gst_reserved(3)
END TYPE
' P_4

DECLARE SUB gst_timed_value_control_invalidate_cache(BYVAL AS GstTimedValueControlSource PTR)
END EXTERN

