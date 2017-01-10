class Micropost < ActiveRecord::Base


def create
  Category.create(category_params)
end

private

def category_params
  params.require(:category).permit(:content)
  params.require(:category).permit(:user_id)
end

validates :content, :length => { :maximum => 140 }
end
