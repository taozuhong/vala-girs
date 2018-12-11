/* gssdp-1.2.vapi generated by vapigen, do not modify. */

[CCode (cprefix = "GSSDP", gir_namespace = "GSSDP", gir_version = "1.2", lower_case_cprefix = "gssdp_")]
namespace GSSDP {
	[CCode (cheader_filename = "libgssdp/gssdp.h", type_id = "gssdp_client_get_type ()")]
	public class Client : GLib.Object, GLib.Initable {
		[CCode (has_construct_function = false)]
		public Client (string? iface) throws GLib.Error;
		public void add_cache_entry (string ip_address, string user_agent);
		public void append_header (string name, string value);
		public void clear_headers ();
		public bool get_active ();
		public GLib.InetAddress get_address ();
		public GLib.SocketFamily get_family ();
		public unowned string get_host_ip ();
		public uint get_index ();
		public unowned string get_interface ();
		public unowned string get_network ();
		public unowned string get_server_id ();
		public unowned string guess_user_agent (string ip_address);
		public void remove_header (string name);
		public void set_network (string network);
		public void set_server_id (string server_id);
		[CCode (has_construct_function = false)]
		public Client.with_port (string? iface, uint16 msearch_port) throws GLib.Error;
		[NoAccessorMethod]
		public bool active { get; set; }
		[NoAccessorMethod]
		[Version (since = "1.1.1")]
		public GLib.SocketFamily address_family { get; construct; }
		[NoAccessorMethod]
		public string host_ip { owned get; set construct; }
		[NoAccessorMethod]
		public GLib.InetAddressMask host_mask { set construct; }
		public string @interface { get; construct; }
		[NoAccessorMethod]
		public uint msearch_port { get; construct; }
		public string network { get; set construct; }
		public string server_id { get; set; }
		[NoAccessorMethod]
		public uint socket_ttl { get; construct; }
		[NoAccessorMethod]
		[Version (since = "1.1.1")]
		public GSSDP.UDAVersion uda_version { get; construct; }
	}
	[CCode (cheader_filename = "libgssdp/gssdp.h", type_id = "gssdp_resource_browser_get_type ()")]
	public class ResourceBrowser : GLib.Object {
		[CCode (has_construct_function = false)]
		public ResourceBrowser (GSSDP.Client client, string target);
		public bool get_active ();
		public unowned GSSDP.Client get_client ();
		public ushort get_mx ();
		public unowned string get_target ();
		public bool rescan ();
		public void set_active (bool active);
		public void set_mx (ushort mx);
		public void set_target (string target);
		public bool active { get; set; }
		public GSSDP.Client client { get; construct; }
		public uint mx { get; set; }
		public string target { get; set; }
		public signal void resource_available (string usn, GLib.List<string> locations);
		public virtual signal void resource_unavailable (string usn);
	}
	[CCode (cheader_filename = "libgssdp/gssdp.h", type_id = "gssdp_resource_group_get_type ()")]
	public class ResourceGroup : GLib.Object {
		[CCode (has_construct_function = false)]
		public ResourceGroup (GSSDP.Client client);
		public uint add_resource (string target, string usn, GLib.List<string> locations);
		public uint add_resource_simple (string target, string usn, string location);
		public bool get_available ();
		public unowned GSSDP.Client get_client ();
		public uint get_max_age ();
		public uint get_message_delay ();
		public void remove_resource (uint resource_id);
		public void set_available (bool available);
		public void set_max_age (uint max_age);
		public void set_message_delay (uint message_delay);
		public bool available { get; set; }
		public GSSDP.Client client { get; construct; }
		public uint max_age { get; set; }
		public uint message_delay { get; set; }
	}
	[CCode (cheader_filename = "libgssdp/gssdp.h", cprefix = "GSSDP_UDA_VERSION_", type_id = "gssdp_uda_version_get_type ()")]
	public enum UDAVersion {
		[CCode (cname = "GSSDP_UDA_VERSION_UNSPECIFIED")]
		VERSION_UNSPECIFIED,
		[CCode (cname = "GSSDP_UDA_VERSION_1_0")]
		VERSION_1_0,
		[CCode (cname = "GSSDP_UDA_VERSION_1_1")]
		VERSION_1_1
	}
	[CCode (cheader_filename = "libgssdp/gssdp.h", cprefix = "GSSDP_ERROR_")]
	public errordomain Error {
		NO_IP_ADDRESS,
		FAILED;
		public static GLib.Quark quark ();
	}
	[CCode (cheader_filename = "libgssdp/gssdp.h", cname = "GSSDP_ALL_RESOURCES")]
	public const string ALL_RESOURCES;
}
