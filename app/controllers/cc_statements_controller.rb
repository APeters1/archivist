class CcStatementsController < ConstructController
  only_set_object

  @model_class = CcStatement
  @params_list = [:label, :literal, :parent, :position, :branch]
end