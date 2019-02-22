class Rank
  include ActiveModel::Model

  attr_reader :creator_id, :page_id

  def initialize(creator_id:, page_id:)
    @creator_id, @page_id = creator_id, page_id
  end

  def answers
    Answer.all_present(creator_id, page_id)
  end
end
