module Mapper
  class VariablesController < ::BasicController
    prepend_before_action :set_dataset
    only_set_object

    @model_class = Mapper::Variable
    @params_list = [:name, :label, :var_type, :dataset_id]

    protected
    def collection
      @dataset.variables
    end

    def set_dataset
      @dataset = policy_scope(Mapper::Dataset).find(params[:dataset_id])
    end
  end
end