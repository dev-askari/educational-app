class OptionsModel{
  String quesId = "";
  String opt = "";

  OptionsModel(this.quesId, this.opt);

  @override
  String toString() {
    return 'OptionsModel{quesId: $quesId, opt: $opt}';
  }
}