def reformat_languages(languages)
  new_hash = {}
  
  ######for ruby
  
  languages.each do |style, language|
    language.each do |lang_type, info|
      if lang_type == :ruby
         new_hash[lang_type]=info
         new_hash[lang_type][:style]=[style]
      end
    end
  end
  
  
  
  ####for javascript
  
   languages.each do |style, language|
    language.each do |lang_type, info|
      if lang_type == :javascript
         new_hash[lang_type]=info
         new_hash[lang_type][:style]=[style]
         #new_hash[lang_type][:style]=[]
         #new_hash[lang_type][:style] << [style]
      end
    end
  end

  languages.each do |style, language|
    if language.has_key?(:javascript) == true
        new_hash[:javascript][:style] << style
    end
  end
  new_hash[:javascript][:style].uniq!
  
  
  
  
  ####for python
  
   
  languages.each do |style, language|
    language.each do |lang_type, info|
      if lang_type == :python
         new_hash[lang_type]=info
         new_hash[lang_type][:style]=[style]
      end
    end
  end
  
  
  
  ##### for java
  
  languages.each do |style, language|
    language.each do |lang_type, info|
      if lang_type == :java
         new_hash[lang_type]=info
         new_hash[lang_type][:style]=[style]
      end
    end
  end
  
  #### for clojure
  
   
  languages.each do |style, language|
    language.each do |lang_type, info|
      if lang_type == :clojure
         new_hash[lang_type]=info
         new_hash[lang_type][:style]=[style]
      end
    end
  end
  
  
  #### for erlang
  
   
  languages.each do |style, language|
    language.each do |lang_type, info|
      if lang_type == :erlang
         new_hash[lang_type]=info
         new_hash[lang_type][:style]=[style]
      end
    end
  end
  
  
  #### for scala
  
   
  languages.each do |style, language|
    language.each do |lang_type, info|
      if lang_type == :scala
         new_hash[lang_type]=info
         new_hash[lang_type][:style]=[style]
      end
    end
  end
  return new_hash
end




