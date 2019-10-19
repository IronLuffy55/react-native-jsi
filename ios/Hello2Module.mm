class JSI_EXPORT Hello2Module: public jsi::HostObject {
  public:
    Hello2Module(Hello2Module* hello2Module);
    static void install(Hello2Module *hello2Module);
    jsi::Value get(jsi::Runtime &runtime, const jsi::PropNameID &name)
      override;
  private:
    Hello2Module* hello2Module_;
};
