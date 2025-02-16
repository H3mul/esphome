#include "esphome.h"

class FakeLightOutput : public Component, public LightOutput {
 public:
  void setup() override { }
  LightTraits get_traits() override {
    auto traits = LightTraits();
    traits.set_supported_color_modes({ColorMode::RGB, ColorMode::BRIGHTNESS});
    return traits;
  }

  void write_state(LightState *state) override { }
};