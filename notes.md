
- okay, so one idea is you can create a simple static page as a 'frame' -- a collection of streams, containing messages with content of different kinds. you could then organize a group of these pages into a 'space', which would track when things are added to any of the pages..

- more generally we should try to facilitate a number of different use cases
- okay, so a linktree: this is just a simple stream with a number of 'link' messages

suppose every user gets a few frames to start with in their personal space (you can create as many spaces as you like, but there's one that's YOURS which contains your identity frame, which has your private log in it, and the meta log of all your activities in the platform etc...)

- so for a linktree, you'd set your 'main presentational' frame in your home space to be the links-list stream (which you would keep static, and could even 'freeze' to enforce this/hint the system to present the list as a 'set'..) -- 

- let's think about twitter/insta sort of thing -- most of this is following other users, which i think just means being able to see their protected spaces (not their private spaces, which no one else can see period?) -- can you message into open streams in protected spaces?

  * the platform should try to facilitate this use case: let's say there's a default protected _log stream attached to your identity frame -- there's a special readonly _friends stream in your home space that aggregates _log messages from other users that have access to your identity

  * text versus image is the sort of thing that could be set at a stream level -- i think maybe there's a protected _photo stream and a _status stream -- these could be aggregated into a _log stream but... maybe _friends/photos and _friends/status could be optimized for image/text presentations respectively

- for space management to scale they sort of each have to be micro reddit/wiki/stack (you could think of magus as ultra-area51..?) -- how to reproduce those sorts of patterns within the platform? ...hmmm! :)
