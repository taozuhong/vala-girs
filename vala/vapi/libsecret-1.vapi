/* libsecret-1.vapi generated by vapigen-0.18, do not modify. */

[CCode (cprefix = "Secret", gir_namespace = "Secret", gir_version = "1", lower_case_cprefix = "secret_")]
namespace Secret {
	[CCode (cheader_filename = "libsecret/secret.h", copy_function = "g_boxed_copy", free_function = "g_boxed_free", type_id = "secret_schema_get_type ()")]
	[Compact]
	public class Schema {
		[CCode (array_length = false, array_null_terminated = true)]
		public weak Secret.SchemaAttribute[] attributes;
		public Secret.SchemaFlags flags;
		public weak string name;
		[CCode (has_construct_function = false)]
		public Schema (string name, Secret.SchemaFlags flags, ...);
		[CCode (has_construct_function = false)]
		public Schema.newv (string name, Secret.SchemaFlags flags, GLib.HashTable<string,Secret.SchemaAttributeType> attribute_names_and_types);
		public Secret.Schema @ref ();
		public void unref ();
	}
	[CCode (cheader_filename = "libsecret/secret.h", copy_function = "g_boxed_copy", free_function = "g_boxed_free", type_id = "secret_schema_attribute_get_type ()")]
	[Compact]
	public class SchemaAttribute {
		public weak string name;
		public Secret.SchemaAttributeType type;
	}
	[CCode (cheader_filename = "libsecret/secret.h", cprefix = "SECRET_ERROR_")]
	public enum Error {
		PROTOCOL,
		IS_LOCKED,
		NO_SUCH_OBJECT,
		ALREADY_EXISTS;
		public static GLib.Quark get_quark ();
	}
	[CCode (cheader_filename = "libsecret/secret.h", cprefix = "SECRET_SCHEMA_ATTRIBUTE_")]
	public enum SchemaAttributeType {
		STRING,
		INTEGER,
		BOOLEAN
	}
	[CCode (cheader_filename = "libsecret/secret.h", cprefix = "SECRET_SCHEMA_")]
	[Flags]
	public enum SchemaFlags {
		NONE,
		DONT_MATCH_NAME
	}
	[CCode (cheader_filename = "libsecret/secret.h", cname = "SECRET_COLLECTION_DEFAULT")]
	public const string COLLECTION_DEFAULT;
	[CCode (cheader_filename = "libsecret/secret.h", cname = "SECRET_COLLECTION_SESSION")]
	public const string COLLECTION_SESSION;
	[CCode (cheader_filename = "libsecret/secret.h")]
	public static GLib.HashTable<string,string> attributes_build (Secret.Schema schema, ...);
	[CCode (cheader_filename = "libsecret/secret.h")]
	public static GLib.HashTable<string,string> attributes_buildv (Secret.Schema schema, va_list va);
	[CCode (cheader_filename = "libsecret/secret.h")]
	public static async bool password_clear (Secret.Schema schema, GLib.Cancellable? cancellable, ...) throws GLib.Error;
	[CCode (cheader_filename = "libsecret/secret.h")]
	public static bool password_clear_sync (Secret.Schema schema, GLib.Cancellable? cancellable = null, ...) throws GLib.Error;
	[CCode (cheader_filename = "libsecret/secret.h", finish_name = "secret_password_clear_finish")]
	public static async bool password_clearv (Secret.Schema schema, GLib.HashTable<string,string> attributes, GLib.Cancellable? cancellable) throws GLib.Error;
	[CCode (cheader_filename = "libsecret/secret.h")]
	public static bool password_clearv_sync (Secret.Schema schema, GLib.HashTable<string,string> attributes, GLib.Cancellable? cancellable = null) throws GLib.Error;
	[CCode (cheader_filename = "libsecret/secret.h")]
	public static async string password_lookup (Secret.Schema schema, GLib.Cancellable? cancellable, ...) throws GLib.Error;
	[CCode (cheader_filename = "libsecret/secret.h")]
	public static string password_lookup_sync (Secret.Schema schema, GLib.Cancellable? cancellable = null, ...) throws GLib.Error;
	[CCode (cheader_filename = "libsecret/secret.h", finish_name = "secret_password_lookup_finish")]
	public static async string password_lookupv (Secret.Schema schema, GLib.HashTable<string,string> attributes, GLib.Cancellable? cancellable) throws GLib.Error;
	[CCode (cheader_filename = "libsecret/secret.h")]
	public static string password_lookupv_sync (Secret.Schema schema, GLib.HashTable<string,string> attributes, GLib.Cancellable? cancellable = null) throws GLib.Error;
	[CCode (cheader_filename = "libsecret/secret.h")]
	public static async bool password_store (Secret.Schema schema, string? collection, string label, string password, GLib.Cancellable? cancellable, ...) throws GLib.Error;
	[CCode (cheader_filename = "libsecret/secret.h")]
	public static bool password_store_sync (Secret.Schema schema, string? collection, string label, string password, GLib.Cancellable? cancellable = null, ...) throws GLib.Error;
	[CCode (cheader_filename = "libsecret/secret.h", finish_name = "secret_password_store_finish")]
	public static async bool password_storev (Secret.Schema schema, GLib.HashTable<string,string> attributes, string? collection, string label, string password, GLib.Cancellable? cancellable) throws GLib.Error;
	[CCode (cheader_filename = "libsecret/secret.h")]
	public static bool password_storev_sync (Secret.Schema schema, GLib.HashTable<string,string> attributes, string? collection, string label, string password, GLib.Cancellable? cancellable = null) throws GLib.Error;
	[CCode (cheader_filename = "libsecret/secret.h")]
	public static void password_wipe (string? password);
}