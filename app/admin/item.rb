ActiveAdmin.register Item do
  permit_params :name, :price

  # 省略するとid, created_at, updated_atも含めた全項目が出ます
  index do
    column :name
    column :price
    actions
  end

  # 省略するとid, created_at, updated_atも含めた全項目が出ます
  show do
    attributes_table do
      row :name
      row :price
    end
  end

  # 省略してもだいたい同じものが出てきます
  form do |f|
    f.inputs do
      f.input :name
      f.input :price
    end
    f.actions
  end
end
