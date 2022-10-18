SELECT CORE_PLAYLIST.NAME AS PLAYLISTNAME,core_playlist.id,
 count(core_song_artist.artist_id) as allart
FROM CORE_PLAYLIST,
	CORE_PLAYLIST_SONG,
	CORE_SONG,core_song_artist,core_artist
WHERE CORE_PLAYLIST.ID = CORE_PLAYLIST_SONG.PLAYLIST_ID
	AND CORE_PLAYLIST_SONG.SONG_ID = CORE_SONG.ID and core_song_artist.song_id = core_song.id and core_song_artist.artist_id=core_artist.id
GROUP BY playlistname,core_playlist.id having count(DISTINCT core_song_artist.artist_id)=1
