/* gssdp-1.0.vapi generated by vapigen, do not modify. */

namespace GSSDP {
	[CCode (cheader_filename = "libgssdp/gssdp.h")]
	public class Client : GLib.Object, GLib.Initable {
		[CCode (has_construct_function = false)]
		public Client (GLib.MainContext? main_context, string iface) throws GLib.Error;
		public unowned string get_host_ip ();
		public unowned string get_network ();
		public void set_network (string network);
		[NoAccessorMethod]
		public bool active { get; set; }
		public string host_ip { get; }
		public string @interface { get; construct; }
		public void* main_context { get; construct; }
		public string network { get; set construct; }
		public string server_id { get; set; }
	}
	[CCode (cheader_filename = "libgssdp/gssdp.h")]
	public class ResourceBrowser : GLib.Object {
		[CCode (has_construct_function = false)]
		public ResourceBrowser (GSSDP.Client client, string target);
		public bool active { get; set; }
		public GSSDP.Client client { get; construct; }
		public uint mx { get; set; }
		public string target { get; set; }
		public signal void resource_available (string usn, GLib.List<string> locations);
		public virtual signal void resource_unavailable (string usn);
	}
	[CCode (cheader_filename = "libgssdp/gssdp.h")]
	public class ResourceGroup : GLib.Object {
		[CCode (has_construct_function = false)]
		public ResourceGroup (GSSDP.Client client);
		public uint add_resource (string target, string usn, GLib.List locations);
		public uint add_resource_simple (string target, string usn, string location);
		public void remove_resource (uint resource_id);
		public bool available { get; set; }
		public GSSDP.Client client { get; construct; }
		public uint max_age { get; set; }
		public uint message_delay { get; set; }
	}
	[CCode (cheader_filename = "libgssdp/gssdp.h", cprefix = "GSSDP_ERROR_")]
	public errordomain Error {
		NO_IP_ADDRESS,
		FAILED
	}
	[CCode (cheader_filename = "libgssdp/gssdp.h")]
	public const string ALL_RESOURCES;
	[CCode (cheader_filename = "libgssdp/gssdp.h")]
	public static GLib.Quark error_quark ();
}
