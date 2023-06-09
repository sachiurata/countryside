module ApplicationHelper
  require "uri"

  def text_url_to_link text

    URI.extract(text, ['http','https']).uniq.each do |url|
      sub_text = ""
      sub_text << "<a href=" << url << " target=\"_blank\">" << url << "</a>"

      text.gsub!(url, sub_text)
    end

    return text
  end
  
  def type_flag()
    if @post.post_type == 1
        @profile_type1_flag = true
        @post_type_flag = 1
    end
  
    if @post.post_type == 2
      @profile_type2_flag = true
      @post_type_flag = 2
    end
  end
  
end
