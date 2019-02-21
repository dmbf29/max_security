Prison.destroy_all if Rails.env.development?

Prison.create!(
  name: "Alcatraz",
  banner_url: "https://i.ytimg.com/vi/vK6HsOreF7c/maxresdefault.jpg"
)

Prison.create!(
  name: "Guantanamo Bay",
  banner_url: "https://www.straitstimes.com/sites/default/files/styles/article_pictrure_780x520_/public/articles/2018/10/18/ST_20181018_PRISON18NZKF_4353249.jpg?itok=zq-67Gln&timestamp=1539800977"
)

Inmate.destroy_all if Rails.env.development?

Inmate.create!(
  name: 'Ted Bundy',
  image_url: 'https://upload.wikimedia.org/wikipedia/commons/thumb/c/cc/Ted_Bundy_headshot.jpg/220px-Ted_Bundy_headshot.jpg',
  prison: Prison.last
)

Inmate.create!(
  name: 'John Wayne Gacy',
  image_url: 'https://cdn2us.denofgeek.com/sites/denofgeekus/files/styles/main_wide/public/2017/10/john-wayne-gacy-killer-clown-20007790-1280x0.png?itok=Z9hp1iz5',
  prison: Prison.last
)

Inmate.create!(
  name: 'Charles Manson',
  image_url: 'https://www.alcatrazeast.com/wp-content/uploads/2017/06/Charles-Manson-and-the-Manson-Family-2.jpg',
  prison: Prison.last
)


# tag_names = %w(cannibal juggling strangling arson murder jaywalking dismembering)

# Tag.destroy_all
# tag_names.each do |tag_name|
#   Tag.create!(name: tag_name)
# end








