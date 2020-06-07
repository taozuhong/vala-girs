/* rygel-renderer-2.6.vapi generated by valac 0.48.2.113-c404a, do not modify. */

namespace Rygel {
	[CCode (cheader_filename = "rygel-renderer.h")]
	public class MediaRenderer : Rygel.MediaDevice {
		public MediaRenderer (string title, Rygel.MediaPlayer player, Rygel.PluginCapabilities capabilities = PluginCapabilities.NONE);
		public override void constructed ();
		public weak Rygel.MediaPlayer player { private get; construct; }
	}
	[CCode (cheader_filename = "rygel-renderer.h")]
	public class MediaRendererPlugin : Rygel.Plugin {
		public MediaRendererPlugin (string name, string? title, string? description = null, Rygel.PluginCapabilities capabilities = PluginCapabilities.NONE);
		public override void apply_hacks (Rygel.RootDevice device, string description_path) throws GLib.Error;
		public override void constructed ();
		public virtual Rygel.MediaPlayer? get_player ();
		public string get_protocol_info ();
		public weak GLib.List<Rygel.DLNAProfile> supported_profiles { get; set construct; }
	}
	[CCode (cheader_filename = "rygel-renderer.h")]
	public interface MediaPlayer : GLib.Object {
		public abstract string[] get_mime_types ();
		public abstract string[] get_protocols ();
		protected double play_speed_to_double (string speed);
		public abstract bool seek (int64 time);
		public abstract bool seek_bytes (int64 bytes);
		public abstract string[] allowed_playback_speeds { owned get; }
		public abstract int64 byte_position { get; }
		public abstract bool can_seek { get; }
		public abstract bool can_seek_bytes { get; }
		public abstract string? content_features { owned get; set; }
		public abstract int64 duration { get; }
		public string duration_as_str { owned get; }
		public abstract string? metadata { owned get; set; }
		public abstract string? mime_type { owned get; set; }
		public abstract string playback_speed { owned get; set; }
		public abstract string playback_state { owned get; set; }
		public abstract int64 position { get; }
		public string position_as_str { owned get; }
		public string protocol_info { owned get; }
		public abstract int64 size { get; }
		public abstract string? uri { owned get; set; }
		public abstract string? user_agent { owned get; set; }
		public abstract double volume { get; set; }
	}
	[CCode (cheader_filename = "rygel-renderer.h")]
	public interface PlayerController : GLib.Object {
		public abstract bool is_play_mode_valid (string play_mode);
		public abstract bool next ();
		public abstract bool previous ();
		public abstract void set_next_playlist_uri (string uri, string metadata, GUPnP.MediaCollection collection);
		public abstract void set_next_single_play_uri (string uri, string metadata, string? mime, string? features);
		public abstract void set_playlist_uri (string uri, string metadata, GUPnP.MediaCollection collection);
		public abstract void set_single_play_uri (string uri, string metadata, string? mime, string? features);
		protected string unescape (string input);
		public abstract bool can_pause { get; }
		public abstract string current_transport_actions { owned get; }
		public abstract string metadata { owned get; protected set; }
		public abstract uint n_tracks { get; protected set; }
		public abstract string next_metadata { owned get; protected set; }
		public abstract string next_uri { owned get; protected set; }
		public abstract string play_mode { get; set; }
		public abstract string playback_state { get; set; }
		public abstract uint track { get; set; }
		public abstract string track_metadata { owned get; protected set; }
		public abstract string track_uri { owned get; protected set; }
		public abstract string uri { owned get; protected set; }
	}
}
