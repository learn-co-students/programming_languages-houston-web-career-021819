require "pry"

def reformat_languages(languages)
  new_hash = {}
  languages.each do |style, langs|
    langs.each do |name, type|
      new_hash[name] = type
    end
  end
  new_hash.each do |name, type|
    new_hash[name][:style] = []
  end

  new_hash.each do |name, type|
    if languages[:oo].include?(name)
      new_hash[name][:style] << :oo
    end
    if languages[:functional].include?(name)
      new_hash[name][:style] << :functional
    end
  end
  new_hash
end
