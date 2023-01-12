#ifndef FLUTTER_PLUGIN_COOL_BUTTON_PLUGIN_H_
#define FLUTTER_PLUGIN_COOL_BUTTON_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace cool_button {

class CoolButtonPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  CoolButtonPlugin();

  virtual ~CoolButtonPlugin();

  // Disallow copy and assign.
  CoolButtonPlugin(const CoolButtonPlugin&) = delete;
  CoolButtonPlugin& operator=(const CoolButtonPlugin&) = delete;

 private:
  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace cool_button

#endif  // FLUTTER_PLUGIN_COOL_BUTTON_PLUGIN_H_
