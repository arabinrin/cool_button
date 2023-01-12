#include "include/cool_button/cool_button_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "cool_button_plugin.h"

void CoolButtonPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  cool_button::CoolButtonPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
