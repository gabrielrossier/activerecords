class AddReferenceOnProducts < ActiveRecord::Migration[6.1]
  def change
    add_reference  :products,:provider, index: true

  end
end
