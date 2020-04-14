require 'mp3info'

def play_music

  songs = [
  'lib/music/1.mp3',
  'lib/music/2.mp3',
  'lib/music/3.mp3',
  'lib/music/4.mp3'
  ]

  played_songs = []

  Thread.new do
    loop do
      if songs.empty?
        songs = played_songs
        played_songs.clear
      else
        song = songs.sample
        played_songs << song
        songs.reject! {|s| s == song}
        fork{exec "afplay", song}
        sleep Mp3Info.open(song).length.round
      end
    end
  end
end

def kill_music
  fork { exec 'killall', 'afplay' }
end
