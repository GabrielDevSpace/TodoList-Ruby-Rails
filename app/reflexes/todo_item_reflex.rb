# frozen_string_literal: true

class TodoItemReflex < ApplicationReflex

  def marcar_completo
    todo_item = TodoItem.find(element.dataset.id)
    todo_item.update(completo: true, completo_em: Time.now)
  end

  def marcar_incompleto
    todo_item = TodoItem.find(element.dataset.id)
    todo_item.update(completo: false, completo_em: nil)
  end

end
