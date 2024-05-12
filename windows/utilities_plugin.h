#ifndef FLUTTER_PLUGIN_UTILITIES_PLUGIN_H_
#define FLUTTER_PLUGIN_UTILITIES_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace utilities {

class UtilitiesPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  UtilitiesPlugin();

  virtual ~UtilitiesPlugin();

  // Disallow copy and assign.
  UtilitiesPlugin(const UtilitiesPlugin&) = delete;
  UtilitiesPlugin& operator=(const UtilitiesPlugin&) = delete;

  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace utilities

#endif  // FLUTTER_PLUGIN_UTILITIES_PLUGIN_H_
