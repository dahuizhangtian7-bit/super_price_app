class Category < ActiveHash::Base
  self.data = [
    { id: 1, name: '野菜' },
    { id: 2, name: '果物' },
    { id: 3, name: '肉' },
    { id: 4, name: '魚' },
    { id: 5, name: '調味料' },
    { id: 6, name: '乳製品' },
    { id: 7, name: '惣菜' },
    { id: 8, name: 'パン' },
    { id: 9, name: '飲料' },
    { id: 10, name: 'デザート' },
    { id: 11, name: 'お菓子' },
    { id: 12, name: '卵' },
    { id: 13, name: '缶詰' },
    { id: 14, name: '冷凍食品' },
    { id: 15, name: 'アイス' },
    { id: 16, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :items
end