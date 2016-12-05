/* folks-dummy.vapi generated by valac 0.35.1.8-323a, do not modify. */

namespace FolksDummy {
	[CCode (cheader_filename = "folks/folks-dummy.h")]
	public class Backend : Folks.Backend {
		public Backend ();
		public override void disable_persona_store (Folks.PersonaStore store);
		public override void enable_persona_store (Folks.PersonaStore store);
		public override async void prepare () throws GLib.Error;
		public void register_persona_stores (Gee.Set<FolksDummy.PersonaStore> stores, bool enable_stores = true);
		public override void set_persona_stores (Gee.Set<string>? store_ids);
		public override async void unprepare () throws GLib.Error;
		public void unregister_persona_stores (Gee.Set<FolksDummy.PersonaStore> stores);
		public override bool is_prepared { get; }
		public override bool is_quiescent { get; }
		public override string name { get; }
		public override Gee.Map<string,Folks.PersonaStore> persona_stores { get; }
	}
	[CCode (cheader_filename = "folks/folks-dummy.h")]
	public class FullPersona : FolksDummy.Persona, Folks.AntiLinkable, Folks.AvatarDetails, Folks.BirthdayDetails, Folks.EmailDetails, Folks.FavouriteDetails, Folks.GenderDetails, Folks.GroupDetails, Folks.ImDetails, Folks.LocalIdDetails, Folks.NameDetails, Folks.NoteDetails, Folks.PhoneDetails, Folks.RoleDetails, Folks.UrlDetails, Folks.PostalAddressDetails, Folks.WebServiceDetails {
		public FullPersona (FolksDummy.PersonaStore store, string contact_id, bool is_user = false, string[] linkable_properties = new string[0] { });
		public void update_anti_links (Gee.Set<string> anti_links);
		public void update_avatar (GLib.LoadableIcon? avatar);
		public void update_birthday (GLib.DateTime? birthday);
		public void update_calendar_event_id (string? calendar_event_id);
		public void update_email_addresses (Gee.Set<Folks.EmailFieldDetails> email_addresses);
		public void update_full_name (string full_name);
		public void update_gender (Folks.Gender gender);
		public void update_groups (Gee.Set<string> groups);
		public void update_im_addresses (Gee.MultiMap<string,Folks.ImFieldDetails> im_addresses);
		public void update_is_favourite (bool is_favourite);
		public void update_local_ids (Gee.Set<string> local_ids);
		public void update_nickname (string nickname);
		public void update_notes (Gee.Set<Folks.NoteFieldDetails> notes);
		public void update_phone_numbers (Gee.Set<Folks.PhoneFieldDetails> phone_numbers);
		public void update_postal_addresses (Gee.Set<Folks.PostalAddressFieldDetails> postal_addresses);
		public void update_roles (Gee.Set<Folks.RoleFieldDetails> roles);
		public void update_structured_name (Folks.StructuredName? structured_name);
		public void update_urls (Gee.Set<Folks.UrlFieldDetails> urls);
		public void update_web_service_addresses (Gee.MultiMap<string,Folks.WebServiceFieldDetails> web_service_addresses);
	}
	[CCode (cheader_filename = "folks/folks-dummy.h")]
	public class Persona : Folks.Persona {
		protected delegate void ChangePropertyCallback ();
		public Persona (FolksDummy.PersonaStore store, string contact_id, bool is_user = false, string[] linkable_properties = new string[0] { });
		protected async void change_property (string property_name, FolksDummy.Persona.ChangePropertyCallback callback);
		public override void linkable_property_to_links (string prop_name, Folks.Persona.LinkablePropertyCallback callback);
		public void update_linkable_properties (string[] linkable_properties);
		public void update_writeable_properties (string[] writeable_properties);
		public override string[] linkable_properties { get; }
		protected int property_change_delay { get; set; }
		public override string[] writeable_properties { get; }
	}
	[CCode (cheader_filename = "folks/folks-dummy.h")]
	public class PersonaStore : Folks.PersonaStore {
		public delegate int AddPersonaFromDetailsMock (FolksDummy.Persona persona) throws Folks.PersonaStoreError;
		public delegate int PrepareMock () throws Folks.PersonaStoreError;
		public delegate int RemovePersonaMock (FolksDummy.Persona persona) throws Folks.PersonaStoreError;
		public PersonaStore (string id, string display_name, string[] always_writeable_properties);
		public override async Folks.Persona? add_persona_from_details (GLib.HashTable<string,GLib.Value?> details) throws Folks.PersonaStoreError;
		public void freeze_personas_changed ();
		public override async void prepare () throws Folks.PersonaStoreError;
		public void reach_quiescence ();
		public void register_personas (Gee.Set<FolksDummy.Persona> personas);
		public override async void remove_persona (Folks.Persona persona) throws Folks.PersonaStoreError;
		public void thaw_personas_changed ();
		public void unregister_personas (Gee.Set<FolksDummy.Persona> personas);
		public void update_capabilities (Folks.MaybeBool can_add_personas, Folks.MaybeBool can_alias_personas, Folks.MaybeBool can_remove_personas);
		public void update_is_user_set_default (bool is_user_set_default);
		public void update_trust_level (Folks.PersonaStoreTrust trust_level);
		public FolksDummy.PersonaStore.AddPersonaFromDetailsMock? add_persona_from_details_mock { get; set; }
		public override string[] always_writeable_properties { get; }
		public override Folks.MaybeBool can_add_personas { get; }
		public override Folks.MaybeBool can_alias_personas { get; }
		public override Folks.MaybeBool can_group_personas { get; }
		public override Folks.MaybeBool can_remove_personas { get; }
		public override bool is_prepared { get; }
		public override bool is_quiescent { get; }
		public GLib.Type persona_type { get; set; }
		public override Gee.Map<string,Folks.Persona> personas { get; }
		public FolksDummy.PersonaStore.PrepareMock? prepare_mock { get; set; }
		public FolksDummy.PersonaStore.RemovePersonaMock? remove_persona_mock { get; set; }
		public override string type_id { get; }
	}
}
