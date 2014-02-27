class Micropost < ActiveRecord::Base
  belongs_to :user
  validates :user_id, presence: true
  validates :content, presence: true, length: { maximum: 140 }


  default_scope order: 'microposts.created_at DESC'

  private
    def micropost_params
      params.require(:micropost).permit(:content)
    end
end
