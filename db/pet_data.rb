def get_pet_data
  pet_data = {
    "sunnyside" => [{
              :species =>    "Dog",
              :breed =>      "Chihuahua",
              :age =>        13,
              :name =>       "Fluffy",
              :photo_url =>  "http://pisciottanicola.com/33-thickbox_default/chihuahua.jpg"
            },
            {
              :species =>    "Cat",
              :breed =>      "Calico",
              :age =>        2,
              :name =>       "Puffy",
              :photo_url =>  "http://25.media.tumblr.com/tumblr_m2e2300cak1qhz0g3o1_500.jpg"
            }],
    "happyhouse" => [{
              :species =>    "Dog",
              :breed =>      "Boxer",
              :age =>        5,
              :name =>       "Stinky",
              :photo_url =>  "http://3.bp.blogspot.com/_LTWqGVqO5uQ/TNkA9qzVTSI/AAAAAAAAAR8/gLE_gv9hAFc/s1600/Boxer3523.jpg"
            },
              :species =>    "Horse",
              :breed =>      "Draft Horse",
              :age =>        2,
              :name =>       "Fragrant",
              :photo_url =>  "http://www.worlddrafthorsenetwork.com/site/content/images/sale/49_1.jpg"
      }]
  }
  return pet_data
end
