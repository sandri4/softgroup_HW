require 'faraday'
class Image
  def self.download(url)
    response = Faraday.get(url)
    con(response)
    name = "#{url.split('.').last}"
    File.open("lol.#{name}", 'wb') { |file| file.write(response.body) }
    end

  def self.con(response)
    raise ArgumentError, 'did u paste proper URL?' if response
                                                      .status.to_s
                                                      .scan(/^\d/) == (4 || 5)
    raise TypeError, 'your link doesn`t contain image' if response
                                                          .headers['Content-Type']
                                                          .split('/')
                                                          .first != 'image'
  end
end

Image.download('https://upload.wikimedia.org/wikipedia/commons/4/47/PNG_transparency_demonstration_1.png')
