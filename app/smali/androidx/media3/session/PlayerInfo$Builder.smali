.class public Landroidx/media3/session/PlayerInfo$Builder;
.super Ljava/lang/Object;
.source "PlayerInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/session/PlayerInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private audioAttributes:Landroidx/media3/common/AudioAttributes;

.field private cueGroup:Landroidx/media3/common/text/CueGroup;

.field private currentTracks:Landroidx/media3/common/Tracks;

.field private deviceInfo:Landroidx/media3/common/DeviceInfo;

.field private deviceMuted:Z

.field private deviceVolume:I

.field private discontinuityReason:I

.field private isLoading:Z

.field private isPlaying:Z

.field private maxSeekToPreviousPositionMs:J

.field private mediaItemTransitionReason:I

.field private mediaMetadata:Landroidx/media3/common/MediaMetadata;

.field private newPositionInfo:Landroidx/media3/common/Player$PositionInfo;

.field private oldPositionInfo:Landroidx/media3/common/Player$PositionInfo;

.field private playWhenReady:Z

.field private playWhenReadyChangeReason:I

.field private playbackParameters:Landroidx/media3/common/PlaybackParameters;

.field private playbackState:I

.field private playbackSuppressionReason:I

.field private playerError:Landroidx/media3/common/PlaybackException;

.field private playlistMetadata:Landroidx/media3/common/MediaMetadata;

.field private repeatMode:I

.field private seekBackIncrementMs:J

.field private seekForwardIncrementMs:J

.field private sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

.field private shuffleModeEnabled:Z

.field private timeline:Landroidx/media3/common/Timeline;

.field private timelineChangeReason:I

.field private trackSelectionParameters:Landroidx/media3/common/TrackSelectionParameters;

.field private videoSize:Landroidx/media3/common/VideoSize;

.field private volume:F


# direct methods
.method public constructor <init>(Landroidx/media3/session/PlayerInfo;)V
    .locals 2
    .param p1, "playerInfo"    # Landroidx/media3/session/PlayerInfo;

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    iget-object v0, p1, Landroidx/media3/session/PlayerInfo;->playerError:Landroidx/media3/common/PlaybackException;

    iput-object v0, p0, Landroidx/media3/session/PlayerInfo$Builder;->playerError:Landroidx/media3/common/PlaybackException;

    .line 159
    iget v0, p1, Landroidx/media3/session/PlayerInfo;->mediaItemTransitionReason:I

    iput v0, p0, Landroidx/media3/session/PlayerInfo$Builder;->mediaItemTransitionReason:I

    .line 160
    iget-object v0, p1, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iput-object v0, p0, Landroidx/media3/session/PlayerInfo$Builder;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    .line 161
    iget-object v0, p1, Landroidx/media3/session/PlayerInfo;->oldPositionInfo:Landroidx/media3/common/Player$PositionInfo;

    iput-object v0, p0, Landroidx/media3/session/PlayerInfo$Builder;->oldPositionInfo:Landroidx/media3/common/Player$PositionInfo;

    .line 162
    iget-object v0, p1, Landroidx/media3/session/PlayerInfo;->newPositionInfo:Landroidx/media3/common/Player$PositionInfo;

    iput-object v0, p0, Landroidx/media3/session/PlayerInfo$Builder;->newPositionInfo:Landroidx/media3/common/Player$PositionInfo;

    .line 163
    iget v0, p1, Landroidx/media3/session/PlayerInfo;->discontinuityReason:I

    iput v0, p0, Landroidx/media3/session/PlayerInfo$Builder;->discontinuityReason:I

    .line 164
    iget-object v0, p1, Landroidx/media3/session/PlayerInfo;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    iput-object v0, p0, Landroidx/media3/session/PlayerInfo$Builder;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    .line 165
    iget v0, p1, Landroidx/media3/session/PlayerInfo;->repeatMode:I

    iput v0, p0, Landroidx/media3/session/PlayerInfo$Builder;->repeatMode:I

    .line 166
    iget-boolean v0, p1, Landroidx/media3/session/PlayerInfo;->shuffleModeEnabled:Z

    iput-boolean v0, p0, Landroidx/media3/session/PlayerInfo$Builder;->shuffleModeEnabled:Z

    .line 167
    iget-object v0, p1, Landroidx/media3/session/PlayerInfo;->timeline:Landroidx/media3/common/Timeline;

    iput-object v0, p0, Landroidx/media3/session/PlayerInfo$Builder;->timeline:Landroidx/media3/common/Timeline;

    .line 168
    iget v0, p1, Landroidx/media3/session/PlayerInfo;->timelineChangeReason:I

    iput v0, p0, Landroidx/media3/session/PlayerInfo$Builder;->timelineChangeReason:I

    .line 169
    iget-object v0, p1, Landroidx/media3/session/PlayerInfo;->videoSize:Landroidx/media3/common/VideoSize;

    iput-object v0, p0, Landroidx/media3/session/PlayerInfo$Builder;->videoSize:Landroidx/media3/common/VideoSize;

    .line 170
    iget-object v0, p1, Landroidx/media3/session/PlayerInfo;->playlistMetadata:Landroidx/media3/common/MediaMetadata;

    iput-object v0, p0, Landroidx/media3/session/PlayerInfo$Builder;->playlistMetadata:Landroidx/media3/common/MediaMetadata;

    .line 171
    iget v0, p1, Landroidx/media3/session/PlayerInfo;->volume:F

    iput v0, p0, Landroidx/media3/session/PlayerInfo$Builder;->volume:F

    .line 172
    iget-object v0, p1, Landroidx/media3/session/PlayerInfo;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    iput-object v0, p0, Landroidx/media3/session/PlayerInfo$Builder;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    .line 173
    iget-object v0, p1, Landroidx/media3/session/PlayerInfo;->cueGroup:Landroidx/media3/common/text/CueGroup;

    iput-object v0, p0, Landroidx/media3/session/PlayerInfo$Builder;->cueGroup:Landroidx/media3/common/text/CueGroup;

    .line 174
    iget-object v0, p1, Landroidx/media3/session/PlayerInfo;->deviceInfo:Landroidx/media3/common/DeviceInfo;

    iput-object v0, p0, Landroidx/media3/session/PlayerInfo$Builder;->deviceInfo:Landroidx/media3/common/DeviceInfo;

    .line 175
    iget v0, p1, Landroidx/media3/session/PlayerInfo;->deviceVolume:I

    iput v0, p0, Landroidx/media3/session/PlayerInfo$Builder;->deviceVolume:I

    .line 176
    iget-boolean v0, p1, Landroidx/media3/session/PlayerInfo;->deviceMuted:Z

    iput-boolean v0, p0, Landroidx/media3/session/PlayerInfo$Builder;->deviceMuted:Z

    .line 177
    iget-boolean v0, p1, Landroidx/media3/session/PlayerInfo;->playWhenReady:Z

    iput-boolean v0, p0, Landroidx/media3/session/PlayerInfo$Builder;->playWhenReady:Z

    .line 178
    iget v0, p1, Landroidx/media3/session/PlayerInfo;->playWhenReadyChangeReason:I

    iput v0, p0, Landroidx/media3/session/PlayerInfo$Builder;->playWhenReadyChangeReason:I

    .line 179
    iget-boolean v0, p1, Landroidx/media3/session/PlayerInfo;->isPlaying:Z

    iput-boolean v0, p0, Landroidx/media3/session/PlayerInfo$Builder;->isPlaying:Z

    .line 180
    iget-boolean v0, p1, Landroidx/media3/session/PlayerInfo;->isLoading:Z

    iput-boolean v0, p0, Landroidx/media3/session/PlayerInfo$Builder;->isLoading:Z

    .line 181
    iget v0, p1, Landroidx/media3/session/PlayerInfo;->playbackSuppressionReason:I

    iput v0, p0, Landroidx/media3/session/PlayerInfo$Builder;->playbackSuppressionReason:I

    .line 182
    iget v0, p1, Landroidx/media3/session/PlayerInfo;->playbackState:I

    iput v0, p0, Landroidx/media3/session/PlayerInfo$Builder;->playbackState:I

    .line 183
    iget-object v0, p1, Landroidx/media3/session/PlayerInfo;->mediaMetadata:Landroidx/media3/common/MediaMetadata;

    iput-object v0, p0, Landroidx/media3/session/PlayerInfo$Builder;->mediaMetadata:Landroidx/media3/common/MediaMetadata;

    .line 184
    iget-wide v0, p1, Landroidx/media3/session/PlayerInfo;->seekBackIncrementMs:J

    iput-wide v0, p0, Landroidx/media3/session/PlayerInfo$Builder;->seekBackIncrementMs:J

    .line 185
    iget-wide v0, p1, Landroidx/media3/session/PlayerInfo;->seekForwardIncrementMs:J

    iput-wide v0, p0, Landroidx/media3/session/PlayerInfo$Builder;->seekForwardIncrementMs:J

    .line 186
    iget-wide v0, p1, Landroidx/media3/session/PlayerInfo;->maxSeekToPreviousPositionMs:J

    iput-wide v0, p0, Landroidx/media3/session/PlayerInfo$Builder;->maxSeekToPreviousPositionMs:J

    .line 187
    iget-object v0, p1, Landroidx/media3/session/PlayerInfo;->currentTracks:Landroidx/media3/common/Tracks;

    iput-object v0, p0, Landroidx/media3/session/PlayerInfo$Builder;->currentTracks:Landroidx/media3/common/Tracks;

    .line 188
    iget-object v0, p1, Landroidx/media3/session/PlayerInfo;->trackSelectionParameters:Landroidx/media3/common/TrackSelectionParameters;

    iput-object v0, p0, Landroidx/media3/session/PlayerInfo$Builder;->trackSelectionParameters:Landroidx/media3/common/TrackSelectionParameters;

    .line 189
    return-void
.end method


# virtual methods
.method public build()Landroidx/media3/session/PlayerInfo;
    .locals 39

    .line 381
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/media3/session/PlayerInfo$Builder;->timeline:Landroidx/media3/common/Timeline;

    .line 382
    invoke-virtual {v1}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Landroidx/media3/session/PlayerInfo$Builder;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-object v1, v1, Landroidx/media3/session/SessionPositionInfo;->positionInfo:Landroidx/media3/common/Player$PositionInfo;

    iget v1, v1, Landroidx/media3/common/Player$PositionInfo;->mediaItemIndex:I

    iget-object v2, v0, Landroidx/media3/session/PlayerInfo$Builder;->timeline:Landroidx/media3/common/Timeline;

    .line 383
    invoke-virtual {v2}, Landroidx/media3/common/Timeline;->getWindowCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 381
    :goto_1
    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 384
    new-instance v1, Landroidx/media3/session/PlayerInfo;

    move-object v2, v1

    iget-object v3, v0, Landroidx/media3/session/PlayerInfo$Builder;->playerError:Landroidx/media3/common/PlaybackException;

    iget v4, v0, Landroidx/media3/session/PlayerInfo$Builder;->mediaItemTransitionReason:I

    iget-object v5, v0, Landroidx/media3/session/PlayerInfo$Builder;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-object v6, v0, Landroidx/media3/session/PlayerInfo$Builder;->oldPositionInfo:Landroidx/media3/common/Player$PositionInfo;

    iget-object v7, v0, Landroidx/media3/session/PlayerInfo$Builder;->newPositionInfo:Landroidx/media3/common/Player$PositionInfo;

    iget v8, v0, Landroidx/media3/session/PlayerInfo$Builder;->discontinuityReason:I

    iget-object v9, v0, Landroidx/media3/session/PlayerInfo$Builder;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    iget v10, v0, Landroidx/media3/session/PlayerInfo$Builder;->repeatMode:I

    iget-boolean v11, v0, Landroidx/media3/session/PlayerInfo$Builder;->shuffleModeEnabled:Z

    iget-object v12, v0, Landroidx/media3/session/PlayerInfo$Builder;->videoSize:Landroidx/media3/common/VideoSize;

    iget-object v13, v0, Landroidx/media3/session/PlayerInfo$Builder;->timeline:Landroidx/media3/common/Timeline;

    iget v14, v0, Landroidx/media3/session/PlayerInfo$Builder;->timelineChangeReason:I

    iget-object v15, v0, Landroidx/media3/session/PlayerInfo$Builder;->playlistMetadata:Landroidx/media3/common/MediaMetadata;

    move-object/from16 v37, v1

    iget v1, v0, Landroidx/media3/session/PlayerInfo$Builder;->volume:F

    move/from16 v16, v1

    iget-object v1, v0, Landroidx/media3/session/PlayerInfo$Builder;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    move-object/from16 v17, v1

    iget-object v1, v0, Landroidx/media3/session/PlayerInfo$Builder;->cueGroup:Landroidx/media3/common/text/CueGroup;

    move-object/from16 v18, v1

    iget-object v1, v0, Landroidx/media3/session/PlayerInfo$Builder;->deviceInfo:Landroidx/media3/common/DeviceInfo;

    move-object/from16 v19, v1

    iget v1, v0, Landroidx/media3/session/PlayerInfo$Builder;->deviceVolume:I

    move/from16 v20, v1

    iget-boolean v1, v0, Landroidx/media3/session/PlayerInfo$Builder;->deviceMuted:Z

    move/from16 v21, v1

    iget-boolean v1, v0, Landroidx/media3/session/PlayerInfo$Builder;->playWhenReady:Z

    move/from16 v22, v1

    iget v1, v0, Landroidx/media3/session/PlayerInfo$Builder;->playWhenReadyChangeReason:I

    move/from16 v23, v1

    iget v1, v0, Landroidx/media3/session/PlayerInfo$Builder;->playbackSuppressionReason:I

    move/from16 v24, v1

    iget v1, v0, Landroidx/media3/session/PlayerInfo$Builder;->playbackState:I

    move/from16 v25, v1

    iget-boolean v1, v0, Landroidx/media3/session/PlayerInfo$Builder;->isPlaying:Z

    move/from16 v26, v1

    iget-boolean v1, v0, Landroidx/media3/session/PlayerInfo$Builder;->isLoading:Z

    move/from16 v27, v1

    iget-object v1, v0, Landroidx/media3/session/PlayerInfo$Builder;->mediaMetadata:Landroidx/media3/common/MediaMetadata;

    move-object/from16 v28, v1

    move-object/from16 v38, v2

    iget-wide v1, v0, Landroidx/media3/session/PlayerInfo$Builder;->seekBackIncrementMs:J

    move-wide/from16 v29, v1

    iget-wide v1, v0, Landroidx/media3/session/PlayerInfo$Builder;->seekForwardIncrementMs:J

    move-wide/from16 v31, v1

    iget-wide v1, v0, Landroidx/media3/session/PlayerInfo$Builder;->maxSeekToPreviousPositionMs:J

    move-wide/from16 v33, v1

    iget-object v1, v0, Landroidx/media3/session/PlayerInfo$Builder;->currentTracks:Landroidx/media3/common/Tracks;

    move-object/from16 v35, v1

    iget-object v1, v0, Landroidx/media3/session/PlayerInfo$Builder;->trackSelectionParameters:Landroidx/media3/common/TrackSelectionParameters;

    move-object/from16 v36, v1

    move-object/from16 v2, v38

    invoke-direct/range {v2 .. v36}, Landroidx/media3/session/PlayerInfo;-><init>(Landroidx/media3/common/PlaybackException;ILandroidx/media3/session/SessionPositionInfo;Landroidx/media3/common/Player$PositionInfo;Landroidx/media3/common/Player$PositionInfo;ILandroidx/media3/common/PlaybackParameters;IZLandroidx/media3/common/VideoSize;Landroidx/media3/common/Timeline;ILandroidx/media3/common/MediaMetadata;FLandroidx/media3/common/AudioAttributes;Landroidx/media3/common/text/CueGroup;Landroidx/media3/common/DeviceInfo;IZZIIIZZLandroidx/media3/common/MediaMetadata;JJJLandroidx/media3/common/Tracks;Landroidx/media3/common/TrackSelectionParameters;)V

    return-object v37
.end method

.method public setAudioAttributes(Landroidx/media3/common/AudioAttributes;)Landroidx/media3/session/PlayerInfo$Builder;
    .locals 0
    .param p1, "audioAttributes"    # Landroidx/media3/common/AudioAttributes;

    .line 278
    iput-object p1, p0, Landroidx/media3/session/PlayerInfo$Builder;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    .line 279
    return-object p0
.end method

.method public setCues(Landroidx/media3/common/text/CueGroup;)Landroidx/media3/session/PlayerInfo$Builder;
    .locals 0
    .param p1, "cueGroup"    # Landroidx/media3/common/text/CueGroup;

    .line 284
    iput-object p1, p0, Landroidx/media3/session/PlayerInfo$Builder;->cueGroup:Landroidx/media3/common/text/CueGroup;

    .line 285
    return-object p0
.end method

.method public setCurrentTracks(Landroidx/media3/common/Tracks;)Landroidx/media3/session/PlayerInfo$Builder;
    .locals 0
    .param p1, "tracks"    # Landroidx/media3/common/Tracks;

    .line 370
    iput-object p1, p0, Landroidx/media3/session/PlayerInfo$Builder;->currentTracks:Landroidx/media3/common/Tracks;

    .line 371
    return-object p0
.end method

.method public setDeviceInfo(Landroidx/media3/common/DeviceInfo;)Landroidx/media3/session/PlayerInfo$Builder;
    .locals 0
    .param p1, "deviceInfo"    # Landroidx/media3/common/DeviceInfo;

    .line 290
    iput-object p1, p0, Landroidx/media3/session/PlayerInfo$Builder;->deviceInfo:Landroidx/media3/common/DeviceInfo;

    .line 291
    return-object p0
.end method

.method public setDeviceMuted(Z)Landroidx/media3/session/PlayerInfo$Builder;
    .locals 0
    .param p1, "deviceMuted"    # Z

    .line 302
    iput-boolean p1, p0, Landroidx/media3/session/PlayerInfo$Builder;->deviceMuted:Z

    .line 303
    return-object p0
.end method

.method public setDeviceVolume(I)Landroidx/media3/session/PlayerInfo$Builder;
    .locals 0
    .param p1, "deviceVolume"    # I

    .line 296
    iput p1, p0, Landroidx/media3/session/PlayerInfo$Builder;->deviceVolume:I

    .line 297
    return-object p0
.end method

.method public setDiscontinuityReason(I)Landroidx/media3/session/PlayerInfo$Builder;
    .locals 0
    .param p1, "discontinuityReason"    # I

    .line 224
    iput p1, p0, Landroidx/media3/session/PlayerInfo$Builder;->discontinuityReason:I

    .line 225
    return-object p0
.end method

.method public setIsLoading(Z)Landroidx/media3/session/PlayerInfo$Builder;
    .locals 0
    .param p1, "isLoading"    # Z

    .line 327
    iput-boolean p1, p0, Landroidx/media3/session/PlayerInfo$Builder;->isLoading:Z

    .line 328
    return-object p0
.end method

.method public setIsPlaying(Z)Landroidx/media3/session/PlayerInfo$Builder;
    .locals 0
    .param p1, "isPlaying"    # Z

    .line 321
    iput-boolean p1, p0, Landroidx/media3/session/PlayerInfo$Builder;->isPlaying:Z

    .line 322
    return-object p0
.end method

.method public setMaxSeekToPreviousPositionMs(J)Landroidx/media3/session/PlayerInfo$Builder;
    .locals 0
    .param p1, "maxSeekToPreviousPositionMs"    # J

    .line 364
    iput-wide p1, p0, Landroidx/media3/session/PlayerInfo$Builder;->maxSeekToPreviousPositionMs:J

    .line 365
    return-object p0
.end method

.method public setMediaItemTransitionReason(I)Landroidx/media3/session/PlayerInfo$Builder;
    .locals 0
    .param p1, "mediaItemTransitionReason"    # I

    .line 200
    iput p1, p0, Landroidx/media3/session/PlayerInfo$Builder;->mediaItemTransitionReason:I

    .line 201
    return-object p0
.end method

.method public setMediaMetadata(Landroidx/media3/common/MediaMetadata;)Landroidx/media3/session/PlayerInfo$Builder;
    .locals 0
    .param p1, "mediaMetadata"    # Landroidx/media3/common/MediaMetadata;

    .line 346
    iput-object p1, p0, Landroidx/media3/session/PlayerInfo$Builder;->mediaMetadata:Landroidx/media3/common/MediaMetadata;

    .line 347
    return-object p0
.end method

.method public setNewPositionInfo(Landroidx/media3/common/Player$PositionInfo;)Landroidx/media3/session/PlayerInfo$Builder;
    .locals 0
    .param p1, "newPositionInfo"    # Landroidx/media3/common/Player$PositionInfo;

    .line 218
    iput-object p1, p0, Landroidx/media3/session/PlayerInfo$Builder;->newPositionInfo:Landroidx/media3/common/Player$PositionInfo;

    .line 219
    return-object p0
.end method

.method public setOldPositionInfo(Landroidx/media3/common/Player$PositionInfo;)Landroidx/media3/session/PlayerInfo$Builder;
    .locals 0
    .param p1, "oldPositionInfo"    # Landroidx/media3/common/Player$PositionInfo;

    .line 212
    iput-object p1, p0, Landroidx/media3/session/PlayerInfo$Builder;->oldPositionInfo:Landroidx/media3/common/Player$PositionInfo;

    .line 213
    return-object p0
.end method

.method public setPlayWhenReady(Z)Landroidx/media3/session/PlayerInfo$Builder;
    .locals 0
    .param p1, "playWhenReady"    # Z

    .line 308
    iput-boolean p1, p0, Landroidx/media3/session/PlayerInfo$Builder;->playWhenReady:Z

    .line 309
    return-object p0
.end method

.method public setPlayWhenReadyChangeReason(I)Landroidx/media3/session/PlayerInfo$Builder;
    .locals 0
    .param p1, "playWhenReadyChangeReason"    # I

    .line 315
    iput p1, p0, Landroidx/media3/session/PlayerInfo$Builder;->playWhenReadyChangeReason:I

    .line 316
    return-object p0
.end method

.method public setPlaybackParameters(Landroidx/media3/common/PlaybackParameters;)Landroidx/media3/session/PlayerInfo$Builder;
    .locals 0
    .param p1, "playbackParameters"    # Landroidx/media3/common/PlaybackParameters;

    .line 230
    iput-object p1, p0, Landroidx/media3/session/PlayerInfo$Builder;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    .line 231
    return-object p0
.end method

.method public setPlaybackState(I)Landroidx/media3/session/PlayerInfo$Builder;
    .locals 0
    .param p1, "playbackState"    # I

    .line 340
    iput p1, p0, Landroidx/media3/session/PlayerInfo$Builder;->playbackState:I

    .line 341
    return-object p0
.end method

.method public setPlaybackSuppressionReason(I)Landroidx/media3/session/PlayerInfo$Builder;
    .locals 0
    .param p1, "playbackSuppressionReason"    # I

    .line 334
    iput p1, p0, Landroidx/media3/session/PlayerInfo$Builder;->playbackSuppressionReason:I

    .line 335
    return-object p0
.end method

.method public setPlayerError(Landroidx/media3/common/PlaybackException;)Landroidx/media3/session/PlayerInfo$Builder;
    .locals 0
    .param p1, "playerError"    # Landroidx/media3/common/PlaybackException;

    .line 193
    iput-object p1, p0, Landroidx/media3/session/PlayerInfo$Builder;->playerError:Landroidx/media3/common/PlaybackException;

    .line 194
    return-object p0
.end method

.method public setPlaylistMetadata(Landroidx/media3/common/MediaMetadata;)Landroidx/media3/session/PlayerInfo$Builder;
    .locals 0
    .param p1, "playlistMetadata"    # Landroidx/media3/common/MediaMetadata;

    .line 266
    iput-object p1, p0, Landroidx/media3/session/PlayerInfo$Builder;->playlistMetadata:Landroidx/media3/common/MediaMetadata;

    .line 267
    return-object p0
.end method

.method public setRepeatMode(I)Landroidx/media3/session/PlayerInfo$Builder;
    .locals 0
    .param p1, "repeatMode"    # I

    .line 236
    iput p1, p0, Landroidx/media3/session/PlayerInfo$Builder;->repeatMode:I

    .line 237
    return-object p0
.end method

.method public setSeekBackIncrement(J)Landroidx/media3/session/PlayerInfo$Builder;
    .locals 0
    .param p1, "seekBackIncrementMs"    # J

    .line 352
    iput-wide p1, p0, Landroidx/media3/session/PlayerInfo$Builder;->seekBackIncrementMs:J

    .line 353
    return-object p0
.end method

.method public setSeekForwardIncrement(J)Landroidx/media3/session/PlayerInfo$Builder;
    .locals 0
    .param p1, "seekForwardIncrementMs"    # J

    .line 358
    iput-wide p1, p0, Landroidx/media3/session/PlayerInfo$Builder;->seekForwardIncrementMs:J

    .line 359
    return-object p0
.end method

.method public setSessionPositionInfo(Landroidx/media3/session/SessionPositionInfo;)Landroidx/media3/session/PlayerInfo$Builder;
    .locals 0
    .param p1, "sessionPositionInfo"    # Landroidx/media3/session/SessionPositionInfo;

    .line 206
    iput-object p1, p0, Landroidx/media3/session/PlayerInfo$Builder;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    .line 207
    return-object p0
.end method

.method public setShuffleModeEnabled(Z)Landroidx/media3/session/PlayerInfo$Builder;
    .locals 0
    .param p1, "shuffleModeEnabled"    # Z

    .line 242
    iput-boolean p1, p0, Landroidx/media3/session/PlayerInfo$Builder;->shuffleModeEnabled:Z

    .line 243
    return-object p0
.end method

.method public setTimeline(Landroidx/media3/common/Timeline;)Landroidx/media3/session/PlayerInfo$Builder;
    .locals 0
    .param p1, "timeline"    # Landroidx/media3/common/Timeline;

    .line 248
    iput-object p1, p0, Landroidx/media3/session/PlayerInfo$Builder;->timeline:Landroidx/media3/common/Timeline;

    .line 249
    return-object p0
.end method

.method public setTimelineChangeReason(I)Landroidx/media3/session/PlayerInfo$Builder;
    .locals 0
    .param p1, "timelineChangeReason"    # I

    .line 254
    iput p1, p0, Landroidx/media3/session/PlayerInfo$Builder;->timelineChangeReason:I

    .line 255
    return-object p0
.end method

.method public setTrackSelectionParameters(Landroidx/media3/common/TrackSelectionParameters;)Landroidx/media3/session/PlayerInfo$Builder;
    .locals 0
    .param p1, "parameters"    # Landroidx/media3/common/TrackSelectionParameters;

    .line 376
    iput-object p1, p0, Landroidx/media3/session/PlayerInfo$Builder;->trackSelectionParameters:Landroidx/media3/common/TrackSelectionParameters;

    .line 377
    return-object p0
.end method

.method public setVideoSize(Landroidx/media3/common/VideoSize;)Landroidx/media3/session/PlayerInfo$Builder;
    .locals 0
    .param p1, "videoSize"    # Landroidx/media3/common/VideoSize;

    .line 260
    iput-object p1, p0, Landroidx/media3/session/PlayerInfo$Builder;->videoSize:Landroidx/media3/common/VideoSize;

    .line 261
    return-object p0
.end method

.method public setVolume(F)Landroidx/media3/session/PlayerInfo$Builder;
    .locals 0
    .param p1, "volume"    # F

    .line 272
    iput p1, p0, Landroidx/media3/session/PlayerInfo$Builder;->volume:F

    .line 273
    return-object p0
.end method
