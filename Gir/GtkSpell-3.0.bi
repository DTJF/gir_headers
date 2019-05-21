'            FreeBasic header file, auto-generated by
'                       ### GirToBac ###
' LGPLv2.1 (C) 2013-2014 by Thomas[ dot }Freiherr[ at ]gmx[ dot }net
' Auto-translated from file /usr/share/gir-1.0/GtkSpell-3.0.gir
#INCLUDE ONCE "_GirToBac-0.0.bi"

' Repository version 1.2
#INCLUDE ONCE "GLib-2.0.bi"
#INCLUDE ONCE "GObject-2.0.bi"
#INCLUDE ONCE "Gtk-3.0.bi"
TYPE AS _GtkSpellChecker GtkSpellChecker
TYPE AS _GtkSpellCheckerClass GtkSpellCheckerClass
TYPE AS _GtkSpellCheckerPrivate GtkSpellCheckerPrivate
TYPE AS LONG GtkSpellError
ENUM
  GTK_SPELL_ERROR_BACKEND = 0
END ENUM
EXTERN "C" LIB "gtkspell3-3"
' P_X

' P_3

TYPE _GtkSpellChecker
  AS GInitiallyUnowned parent_instance
  AS GtkSpellCheckerPrivate PTR priv
END TYPE
DECLARE FUNCTION gtk_spell_checker_get_type() AS GType
#DEFINE GTKSPELL_TYPE_SPELL_CHECKER (gtk_spell_checker_get_type())
#DEFINE GTKSPELL_SPELL_CHECKER(obj) (G_TYPE_CHECK_INSTANCE_CAST((obj), GTKSPELL_TYPE_SPELL_CHECKER, GtkSpellChecker))
#DEFINE GTKSPELL_SPELL_CHECKER_CLASS(obj) (G_TYPE_CHECK_CLASS_CAST((obj), GTKSPELL_TYPE_SPELL_CHECKER, GtkSpellCheckerClass))
#DEFINE GTKSPELL_IS_SPELL_CHECKER(obj) (G_TYPE_CHECK_INSTANCE_TYPE((obj), GTKSPELL_TYPE_SPELL_CHECKER))
#DEFINE GTKSPELL_IS_CLASS_SPELL_CHECKER(obj) (G_TYPE_CHECK_CLASS_TYPE((obj), GTKSPELL_TYPE_SPELL_CHECKER))
#DEFINE GTKSPELL_SPELL_CHECKER_GET_CLASS(obj) (G_TYPE_INSTANCE_GET_CLASS((obj), GTKSPELL_TYPE_SPELL_CHECKER, GtkSpellCheckerClass))
DECLARE FUNCTION gtk_spell_checker_new() AS GtkSpellChecker PTR
DECLARE FUNCTION gtk_spell_checker_decode_language_code(BYVAL AS const gchar PTR) AS gchar PTR
DECLARE FUNCTION gtk_spell_checker_get_from_text_view(BYVAL AS GtkTextView PTR) AS GtkSpellChecker PTR
DECLARE FUNCTION gtk_spell_checker_get_language_list() AS GList PTR
DECLARE FUNCTION gtk_spell_checker_attach(BYVAL AS GtkSpellChecker PTR, BYVAL AS GtkTextView PTR) AS gboolean
DECLARE SUB gtk_spell_checker_detach(BYVAL AS GtkSpellChecker PTR)
DECLARE FUNCTION gtk_spell_checker_get_language(BYVAL AS GtkSpellChecker PTR) AS const gchar PTR
DECLARE FUNCTION gtk_spell_checker_get_suggestions_menu(BYVAL AS GtkSpellChecker PTR, BYVAL AS GtkTextIter PTR) AS GtkWidget PTR
DECLARE SUB gtk_spell_checker_recheck_all(BYVAL AS GtkSpellChecker PTR)
DECLARE FUNCTION gtk_spell_checker_set_language(BYVAL AS GtkSpellChecker PTR, BYVAL AS const gchar PTR, BYVAL AS GError PTR PTR) AS gboolean
TYPE _GtkSpellCheckerClass
  AS GInitiallyUnownedClass parent_class
  language_changed AS SUB CDECL(BYVAL AS GtkSpellChecker PTR, BYVAL AS const gchar PTR)
END TYPE
' P_4

END EXTERN
