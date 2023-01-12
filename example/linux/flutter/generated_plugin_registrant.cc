//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <cool_button/cool_button_plugin.h>

void fl_register_plugins(FlPluginRegistry* registry) {
  g_autoptr(FlPluginRegistrar) cool_button_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "CoolButtonPlugin");
  cool_button_plugin_register_with_registrar(cool_button_registrar);
}
