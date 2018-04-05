class CreateReplies < ActiveRecord::Migration[5.1]
  def change
    create_table :replies do |t|

      t.text :content
      t.integer :post_id  # 자기가 어떤 글에 속한 댓글인지 알아야함. (1:N 관계)	
                          # _id 앞의 단어는 게시물들을 저장하는 model의 이름과 동일해야 함.
      t.timestamps
    end
  end
end
