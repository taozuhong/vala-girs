/* grilo-net-0.2.vapi generated by vapigen-0.30, do not modify. */

[CCode (cprefix = "GrlNet", gir_namespace = "GrlNet", gir_version = "0.2", lower_case_cprefix = "grl_net_")]
namespace GrlNet {
	[CCode (cheader_filename = "net/grl-net.h", type_id = "grl_net_wc_get_type ()")]
	public class Wc : GLib.Object {
		[CCode (has_construct_function = false)]
		public Wc ();
		public static GLib.Quark error_quark ();
		public void flush_delayed_requests ();
		public async bool request_async (string uri, GLib.Cancellable? cancellable, out unowned string content, out size_t length) throws GLib.Error;
		[CCode (finish_name = "grl_net_wc_request_finish")]
		public async bool request_with_headers_async (string uri, GLib.Cancellable? cancellable, ..., out unowned string content, out size_t length) throws GLib.Error;
		[CCode (finish_name = "grl_net_wc_request_finish")]
		public async bool request_with_headers_hash_async (string uri, GLib.HashTable<string,string>? headers, GLib.Cancellable? cancellable, out unowned string content, out size_t length) throws GLib.Error;
		public void set_cache (bool use_cache);
		public void set_cache_size (uint cache_size);
		public void set_log_level (uint log_level);
		public void set_throttling (uint throttling);
		[NoAccessorMethod]
		public bool cache { get; set construct; }
		[NoAccessorMethod]
		public uint cache_size { get; set construct; }
		[NoAccessorMethod]
		public uint loglevel { get; set; }
		[NoAccessorMethod]
		public uint throttling { get; set; }
		[NoAccessorMethod]
		public string user_agent { owned get; set construct; }
	}
	[CCode (cheader_filename = "net/grl-net.h", cprefix = "GRL_NET_WC_ERROR_", has_type_id = false)]
	public enum WcError {
		UNAVAILABLE,
		PROTOCOL_ERROR,
		AUTHENTICATION_REQUIRED,
		NOT_FOUND,
		CONFLICT,
		FORBIDDEN,
		NETWORK_ERROR,
		PROXY_ERROR,
		CANCELLED
	}
}
