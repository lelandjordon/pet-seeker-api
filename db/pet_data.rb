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
            }]
  }
  return pet_data
end
