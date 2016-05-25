/* unity-extras.vapi generated by valac 0.32.0, do not modify. */

namespace Unity {
	[CCode (gir_namespace = "UnityExtras", gir_version = "1.0")]
	namespace Extras {
		[CCode (cheader_filename = "unity-extras.h")]
		public class PreviewPlayer : GLib.Object {
			public PreviewPlayer ();
			public async void close () throws GLib.Error;
			public async void pause () throws GLib.Error;
			public async void pause_resume () throws GLib.Error;
			public async void play (string uri) throws GLib.Error;
			public async void resume () throws GLib.Error;
			public async void stop () throws GLib.Error;
			public async GLib.HashTable<string,GLib.Variant> video_properties (string uri) throws GLib.Error;
			public signal void progress (string uri, Unity.MusicPreview.TrackState state, double progress);
		}
		[CCode (cheader_filename = "unity-extras.h")]
		public delegate void CreateScopeCallback ();
		[CCode (cheader_filename = "unity-extras.h")]
		public static bool dbus_name_has_owner (string name) throws GLib.Error;
		[CCode (cheader_filename = "unity-extras.h")]
		public static GLib.Application? dbus_own_name (string name, Unity.Extras.CreateScopeCallback scope_creation_cb) throws GLib.Error;
		[CCode (cheader_filename = "unity-extras.h")]
		public static async void show_in_folder (string uri) throws GLib.Error;
	}
}
