/*
 * This file is part of UbuntuBudgie
 *
 * Copyright © 2015-2017 Budgie Desktop Developers
 * Copyright © 2018-2019 Ubuntu Budgie Developers
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 3 of the License, or
 * (at your option) any later version.
 */

namespace SchemaTestBApplet {

public class Plugin : Budgie.Plugin, Peas.ExtensionBase{

    public Budgie.Applet get_panel_widget(string uuid){

        return new Applet(uuid);
    }

}

public class Applet : Budgie.Applet{

    private GLib.Settings? settings;
    public string uuid { public set; public get; }

    public Applet(string uuid){
        settings =  new GLib.Settings("org.ubuntubudgie.applet.schematestb");
        var boolval = settings.get_boolean("boolean-key");
        stdout.printf("boolean-key: %b\n", boolval);
        Gtk.Image icon = new Gtk.Image.from_icon_name("mail-unread-symbolic", Gtk.IconSize.MENU);
        add(icon);
        show_all();
    }
}

}

[ModuleInit]
public void peas_register_types(TypeModule module){

    // boilerplate - all modules need this
    var objmodule = module as Peas.ObjectModule;
    objmodule.register_extension_type(typeof(Budgie.Plugin), typeof(SchemaTestBApplet.Plugin));

}