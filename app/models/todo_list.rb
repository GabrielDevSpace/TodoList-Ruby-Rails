class TodoList < ApplicationRecord
  has_many :todo_items, dependent: :destroy

  def percent_complete
    return 0 if total_items == 0
    (100 * completed_items.to_f / total_items).round(1)
  end


  def completed_items
    @completed_items ||= todo_items.completo.count
  end


  def total_items
    @total_items ||= todo_items.count
  end


  def status
    case percent_complete.to_i
    when 0
      'Não Iniciado'
    when 100
      'Completo'
    else
      'Em Progresso'
    end
  end

  def badge_color
    case percent_complete.to_i
    when 0
      'dark'
    when 100
      'success'
    else
      'primary'
    end
  end
end
