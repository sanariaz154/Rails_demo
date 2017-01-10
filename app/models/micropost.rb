class Micropost < ActiveRecord::Base


def create
  Micropost.create(micropost_params)
end

private

def micropost_params
  params.require(:micropost).permit(:content)
  params.require(:micropost).permit(:user_id)
end
belongs_to :user
validates :content, :length => { :maximum => 140 }
end
