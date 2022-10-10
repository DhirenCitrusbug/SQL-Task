SELECT CORE_PLAYLIST.NAME AS PLAYLISTNAME,core_playlist.id,count( core_song.genre_id) as totlagenre
FROM CORE_PLAYLIST,
	CORE_PLAYLIST_SONG,
	CORE_SONG,core_genre
WHERE CORE_PLAYLIST.ID = CORE_PLAYLIST_SONG.PLAYLIST_ID
	AND CORE_PLAYLIST_SONG.SONG_ID = CORE_SONG.ID and core_song.genre_id = core_genre.id
GROUP BY playlistname,core_playlist.id having count(distinct core_song.genre_id)=1