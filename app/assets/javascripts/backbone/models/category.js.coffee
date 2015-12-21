class Archivist.Models.Category extends Backbone.RelationalModel
  paramRoot: 'category'

  defaults:
    label: null

class Archivist.Collections.CategoriesCollection extends Backbone.Collection
  model: Archivist.Models.Category
  url: '/categories'
