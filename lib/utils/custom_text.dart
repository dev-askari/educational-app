

class CustomTextSizing {

  CustomTextSizing._internalConstructor();

  static final CustomTextSizing _instance = CustomTextSizing._internalConstructor();

  factory CustomTextSizing(){
    return _instance;
  }


  static const String kPoppinsFontFamily = "Poppins";

}