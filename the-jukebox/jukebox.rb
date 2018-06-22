class Jukebox
  def initialize(requested_playlist)
    JUKEBOX_SONGS = ['Hello - Lionel Ritchie',
      'Kokomo - The Beach Boys'
      'Girl You Know It’s True - Milli Vanilli',
      'Agadoo - Black Lace',
      'Down Under - Men at Work',
      'Nothing\'s Gonna Stop Us Now - Starship',
      'Get Outta My Dreams, Get Into My Car - Billy Ocean',
      'I Just Called To Say I Love You - Stevie Wonder',
      'Hangin\' Tough - New Kids on the Block',
      'We Built This City - Starship',
      'Wake Me Up Before You Go Go - Wham!',
      'We Didn\'t Start The Fire - Billy Joel',
      'I Wanna Dance With Somebody - Whitney Houston',
      'U Can\'t Touch This - MC Hammer']
    @requested_playlist = requested_playlist
    @actual_playlist = []

    requested_playlist.each do |track|
      if JUKEBOX_SONGS.include?(track)
        @actual_playlist << track
      end
    end
  end


  def shuffle_songs!
    @actual_playlist.shuffle!
  end

  def play!
    playing = @actual_playlist.slice!(0)
    console.log(playing)
  end

  def add_track(track)
    if JUKEBOX_SONGS.include?(track)
      @actual_playlist << track
      return true
    else
      return false
    end
  end
end
