SELECT CORE_PLAYLIST.ID AS PLAYLIST_ID,
	CORE_PLAYLIST.NAME AS PLAYLISTNAME,
	CORE_PLAYLIST_SONG.SONG_ID AS SONGID,
	CORE_SONG.NAME AS SONGNAME,
	CORE_LANGUAGE.TITLE AS _LANGUAGE
FROM CORE_PLAYLIST_SONG
INNER JOIN CORE_SONG ON CORE_PLAYLIST_SONG.SONG_ID = CORE_SONG.ID
INNER JOIN CORE_PLAYLIST ON CORE_PLAYLIST.ID = CORE_PLAYLIST_SONG.PLAYLIST_ID
INNER JOIN CORE_LANGUAGE ON CORE_SONG.LANGUAGE_ID = CORE_LANGUAGE.ID
WHERE CORE_LANGUAGE.TITLE = 'English'