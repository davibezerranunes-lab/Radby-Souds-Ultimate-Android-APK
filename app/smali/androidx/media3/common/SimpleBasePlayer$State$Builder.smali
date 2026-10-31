.class public final Landroidx/media3/common/SimpleBasePlayer$State$Builder;
.super Ljava/lang/Object;
.source "SimpleBasePlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/common/SimpleBasePlayer$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private adBufferedPositionMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

.field private adPositionMs:Ljava/lang/Long;

.field private adPositionMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

.field private audioAttributes:Landroidx/media3/common/AudioAttributes;

.field private availableCommands:Landroidx/media3/common/Player$Commands;

.field private contentBufferedPositionMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

.field private contentPositionMs:Ljava/lang/Long;

.field private contentPositionMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

.field private currentAdGroupIndex:I

.field private currentAdIndexInAdGroup:I

.field private currentCues:Landroidx/media3/common/text/CueGroup;

.field private currentMediaItemIndex:I

.field private currentMetadata:Landroidx/media3/common/MediaMetadata;

.field private currentTracks:Landroidx/media3/common/Tracks;

.field private deviceInfo:Landroidx/media3/common/DeviceInfo;

.field private deviceVolume:I

.field private discontinuityPositionMs:J

.field private hasPositionDiscontinuity:Z

.field private isDeviceMuted:Z

.field private isLoading:Z

.field private maxSeekToPreviousPositionMs:J

.field private newlyRenderedFirstFrame:Z

.field private playWhenReady:Z

.field private playWhenReadyChangeReason:I

.field private playbackParameters:Landroidx/media3/common/PlaybackParameters;

.field private playbackState:I

.field private playbackSuppressionReason:I

.field private playerError:Landroidx/media3/common/PlaybackException;

.field private playlist:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/common/SimpleBasePlayer$MediaItemData;",
            ">;"
        }
    .end annotation
.end field

.field private playlistMetadata:Landroidx/media3/common/MediaMetadata;

.field private positionDiscontinuityReason:I

.field private repeatMode:I

.field private seekBackIncrementMs:J

.field private seekForwardIncrementMs:J

.field private shuffleModeEnabled:Z

.field private surfaceSize:Landroidx/media3/common/util/Size;

.field private timedMetadata:Landroidx/media3/common/Metadata;

.field private timeline:Landroidx/media3/common/Timeline;

.field private totalBufferedDurationMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

.field private trackSelectionParameters:Landroidx/media3/common/TrackSelectionParameters;

.field private videoSize:Landroidx/media3/common/VideoSize;

.field private volume:F


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    sget-object v0, Landroidx/media3/common/Player$Commands;->EMPTY:Landroidx/media3/common/Player$Commands;

    iput-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->availableCommands:Landroidx/media3/common/Player$Commands;

    .line 152
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->playWhenReady:Z

    .line 153
    const/4 v1, 0x1

    iput v1, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->playWhenReadyChangeReason:I

    .line 154
    iput v1, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->playbackState:I

    .line 155
    iput v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->playbackSuppressionReason:I

    .line 156
    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->playerError:Landroidx/media3/common/PlaybackException;

    .line 157
    iput v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->repeatMode:I

    .line 158
    iput-boolean v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->shuffleModeEnabled:Z

    .line 159
    iput-boolean v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->isLoading:Z

    .line 160
    const-wide/16 v2, 0x1388

    iput-wide v2, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->seekBackIncrementMs:J

    .line 161
    const-wide/16 v2, 0x3a98

    iput-wide v2, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->seekForwardIncrementMs:J

    .line 162
    const-wide/16 v2, 0xbb8

    iput-wide v2, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->maxSeekToPreviousPositionMs:J

    .line 163
    sget-object v2, Landroidx/media3/common/PlaybackParameters;->DEFAULT:Landroidx/media3/common/PlaybackParameters;

    iput-object v2, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    .line 164
    sget-object v2, Landroidx/media3/common/TrackSelectionParameters;->DEFAULT_WITHOUT_CONTEXT:Landroidx/media3/common/TrackSelectionParameters;

    iput-object v2, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->trackSelectionParameters:Landroidx/media3/common/TrackSelectionParameters;

    .line 165
    sget-object v2, Landroidx/media3/common/AudioAttributes;->DEFAULT:Landroidx/media3/common/AudioAttributes;

    iput-object v2, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    .line 166
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->volume:F

    .line 167
    sget-object v2, Landroidx/media3/common/VideoSize;->UNKNOWN:Landroidx/media3/common/VideoSize;

    iput-object v2, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->videoSize:Landroidx/media3/common/VideoSize;

    .line 168
    sget-object v2, Landroidx/media3/common/text/CueGroup;->EMPTY_TIME_ZERO:Landroidx/media3/common/text/CueGroup;

    iput-object v2, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->currentCues:Landroidx/media3/common/text/CueGroup;

    .line 169
    sget-object v2, Landroidx/media3/common/DeviceInfo;->UNKNOWN:Landroidx/media3/common/DeviceInfo;

    iput-object v2, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->deviceInfo:Landroidx/media3/common/DeviceInfo;

    .line 170
    iput v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->deviceVolume:I

    .line 171
    iput-boolean v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->isDeviceMuted:Z

    .line 172
    sget-object v2, Landroidx/media3/common/util/Size;->UNKNOWN:Landroidx/media3/common/util/Size;

    iput-object v2, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->surfaceSize:Landroidx/media3/common/util/Size;

    .line 173
    iput-boolean v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->newlyRenderedFirstFrame:Z

    .line 174
    new-instance v2, Landroidx/media3/common/Metadata;

    new-array v3, v0, [Landroidx/media3/common/Metadata$Entry;

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v2, v4, v5, v3}, Landroidx/media3/common/Metadata;-><init>(J[Landroidx/media3/common/Metadata$Entry;)V

    iput-object v2, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->timedMetadata:Landroidx/media3/common/Metadata;

    .line 175
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    iput-object v2, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->playlist:Lcom/google/common/collect/ImmutableList;

    .line 176
    sget-object v2, Landroidx/media3/common/Timeline;->EMPTY:Landroidx/media3/common/Timeline;

    iput-object v2, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->timeline:Landroidx/media3/common/Timeline;

    .line 177
    iput-object v1, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->currentTracks:Landroidx/media3/common/Tracks;

    .line 178
    iput-object v1, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->currentMetadata:Landroidx/media3/common/MediaMetadata;

    .line 179
    sget-object v2, Landroidx/media3/common/MediaMetadata;->EMPTY:Landroidx/media3/common/MediaMetadata;

    iput-object v2, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->playlistMetadata:Landroidx/media3/common/MediaMetadata;

    .line 180
    const/4 v2, -0x1

    iput v2, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->currentMediaItemIndex:I

    .line 181
    iput v2, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->currentAdGroupIndex:I

    .line 182
    iput v2, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->currentAdIndexInAdGroup:I

    .line 183
    iput-object v1, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->contentPositionMs:Ljava/lang/Long;

    .line 184
    invoke-static {v4, v5}, Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;->getConstant(J)Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    move-result-object v2

    iput-object v2, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->contentPositionMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    .line 185
    iput-object v1, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->adPositionMs:Ljava/lang/Long;

    .line 186
    sget-object v1, Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;->ZERO:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    iput-object v1, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->adPositionMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    .line 187
    invoke-static {v4, v5}, Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;->getConstant(J)Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    move-result-object v1

    iput-object v1, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->contentBufferedPositionMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    .line 188
    sget-object v1, Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;->ZERO:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    iput-object v1, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->adBufferedPositionMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    .line 189
    sget-object v1, Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;->ZERO:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    iput-object v1, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->totalBufferedDurationMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    .line 190
    iput-boolean v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->hasPositionDiscontinuity:Z

    .line 191
    const/4 v0, 0x5

    iput v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->positionDiscontinuityReason:I

    .line 192
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->discontinuityPositionMs:J

    .line 193
    return-void
.end method

.method private constructor <init>(Landroidx/media3/common/SimpleBasePlayer$State;)V
    .locals 2
    .param p1, "state"    # Landroidx/media3/common/SimpleBasePlayer$State;

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    iget-object v0, p1, Landroidx/media3/common/SimpleBasePlayer$State;->availableCommands:Landroidx/media3/common/Player$Commands;

    iput-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->availableCommands:Landroidx/media3/common/Player$Commands;

    .line 197
    iget-boolean v0, p1, Landroidx/media3/common/SimpleBasePlayer$State;->playWhenReady:Z

    iput-boolean v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->playWhenReady:Z

    .line 198
    iget v0, p1, Landroidx/media3/common/SimpleBasePlayer$State;->playWhenReadyChangeReason:I

    iput v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->playWhenReadyChangeReason:I

    .line 199
    iget v0, p1, Landroidx/media3/common/SimpleBasePlayer$State;->playbackState:I

    iput v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->playbackState:I

    .line 200
    iget v0, p1, Landroidx/media3/common/SimpleBasePlayer$State;->playbackSuppressionReason:I

    iput v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->playbackSuppressionReason:I

    .line 201
    iget-object v0, p1, Landroidx/media3/common/SimpleBasePlayer$State;->playerError:Landroidx/media3/common/PlaybackException;

    iput-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->playerError:Landroidx/media3/common/PlaybackException;

    .line 202
    iget v0, p1, Landroidx/media3/common/SimpleBasePlayer$State;->repeatMode:I

    iput v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->repeatMode:I

    .line 203
    iget-boolean v0, p1, Landroidx/media3/common/SimpleBasePlayer$State;->shuffleModeEnabled:Z

    iput-boolean v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->shuffleModeEnabled:Z

    .line 204
    iget-boolean v0, p1, Landroidx/media3/common/SimpleBasePlayer$State;->isLoading:Z

    iput-boolean v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->isLoading:Z

    .line 205
    iget-wide v0, p1, Landroidx/media3/common/SimpleBasePlayer$State;->seekBackIncrementMs:J

    iput-wide v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->seekBackIncrementMs:J

    .line 206
    iget-wide v0, p1, Landroidx/media3/common/SimpleBasePlayer$State;->seekForwardIncrementMs:J

    iput-wide v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->seekForwardIncrementMs:J

    .line 207
    iget-wide v0, p1, Landroidx/media3/common/SimpleBasePlayer$State;->maxSeekToPreviousPositionMs:J

    iput-wide v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->maxSeekToPreviousPositionMs:J

    .line 208
    iget-object v0, p1, Landroidx/media3/common/SimpleBasePlayer$State;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    iput-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    .line 209
    iget-object v0, p1, Landroidx/media3/common/SimpleBasePlayer$State;->trackSelectionParameters:Landroidx/media3/common/TrackSelectionParameters;

    iput-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->trackSelectionParameters:Landroidx/media3/common/TrackSelectionParameters;

    .line 210
    iget-object v0, p1, Landroidx/media3/common/SimpleBasePlayer$State;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    iput-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    .line 211
    iget v0, p1, Landroidx/media3/common/SimpleBasePlayer$State;->volume:F

    iput v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->volume:F

    .line 212
    iget-object v0, p1, Landroidx/media3/common/SimpleBasePlayer$State;->videoSize:Landroidx/media3/common/VideoSize;

    iput-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->videoSize:Landroidx/media3/common/VideoSize;

    .line 213
    iget-object v0, p1, Landroidx/media3/common/SimpleBasePlayer$State;->currentCues:Landroidx/media3/common/text/CueGroup;

    iput-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->currentCues:Landroidx/media3/common/text/CueGroup;

    .line 214
    iget-object v0, p1, Landroidx/media3/common/SimpleBasePlayer$State;->deviceInfo:Landroidx/media3/common/DeviceInfo;

    iput-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->deviceInfo:Landroidx/media3/common/DeviceInfo;

    .line 215
    iget v0, p1, Landroidx/media3/common/SimpleBasePlayer$State;->deviceVolume:I

    iput v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->deviceVolume:I

    .line 216
    iget-boolean v0, p1, Landroidx/media3/common/SimpleBasePlayer$State;->isDeviceMuted:Z

    iput-boolean v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->isDeviceMuted:Z

    .line 217
    iget-object v0, p1, Landroidx/media3/common/SimpleBasePlayer$State;->surfaceSize:Landroidx/media3/common/util/Size;

    iput-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->surfaceSize:Landroidx/media3/common/util/Size;

    .line 218
    iget-boolean v0, p1, Landroidx/media3/common/SimpleBasePlayer$State;->newlyRenderedFirstFrame:Z

    iput-boolean v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->newlyRenderedFirstFrame:Z

    .line 219
    iget-object v0, p1, Landroidx/media3/common/SimpleBasePlayer$State;->timedMetadata:Landroidx/media3/common/Metadata;

    iput-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->timedMetadata:Landroidx/media3/common/Metadata;

    .line 220
    iget-object v0, p1, Landroidx/media3/common/SimpleBasePlayer$State;->timeline:Landroidx/media3/common/Timeline;

    iput-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->timeline:Landroidx/media3/common/Timeline;

    .line 221
    iget-object v0, p1, Landroidx/media3/common/SimpleBasePlayer$State;->timeline:Landroidx/media3/common/Timeline;

    instance-of v0, v0, Landroidx/media3/common/SimpleBasePlayer$PlaylistTimeline;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p1, Landroidx/media3/common/SimpleBasePlayer$State;->timeline:Landroidx/media3/common/Timeline;

    check-cast v0, Landroidx/media3/common/SimpleBasePlayer$PlaylistTimeline;

    invoke-static {v0}, Landroidx/media3/common/SimpleBasePlayer$PlaylistTimeline;->access$000(Landroidx/media3/common/SimpleBasePlayer$PlaylistTimeline;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->playlist:Lcom/google/common/collect/ImmutableList;

    goto :goto_0

    .line 224
    :cond_0
    iget-object v0, p1, Landroidx/media3/common/SimpleBasePlayer$State;->currentTracks:Landroidx/media3/common/Tracks;

    iput-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->currentTracks:Landroidx/media3/common/Tracks;

    .line 225
    iget-object v0, p1, Landroidx/media3/common/SimpleBasePlayer$State;->currentMetadata:Landroidx/media3/common/MediaMetadata;

    iput-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->currentMetadata:Landroidx/media3/common/MediaMetadata;

    .line 227
    :goto_0
    iget-object v0, p1, Landroidx/media3/common/SimpleBasePlayer$State;->playlistMetadata:Landroidx/media3/common/MediaMetadata;

    iput-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->playlistMetadata:Landroidx/media3/common/MediaMetadata;

    .line 228
    iget v0, p1, Landroidx/media3/common/SimpleBasePlayer$State;->currentMediaItemIndex:I

    iput v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->currentMediaItemIndex:I

    .line 229
    iget v0, p1, Landroidx/media3/common/SimpleBasePlayer$State;->currentAdGroupIndex:I

    iput v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->currentAdGroupIndex:I

    .line 230
    iget v0, p1, Landroidx/media3/common/SimpleBasePlayer$State;->currentAdIndexInAdGroup:I

    iput v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->currentAdIndexInAdGroup:I

    .line 231
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->contentPositionMs:Ljava/lang/Long;

    .line 232
    iget-object v1, p1, Landroidx/media3/common/SimpleBasePlayer$State;->contentPositionMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    iput-object v1, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->contentPositionMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    .line 233
    iput-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->adPositionMs:Ljava/lang/Long;

    .line 234
    iget-object v0, p1, Landroidx/media3/common/SimpleBasePlayer$State;->adPositionMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    iput-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->adPositionMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    .line 235
    iget-object v0, p1, Landroidx/media3/common/SimpleBasePlayer$State;->contentBufferedPositionMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    iput-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->contentBufferedPositionMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    .line 236
    iget-object v0, p1, Landroidx/media3/common/SimpleBasePlayer$State;->adBufferedPositionMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    iput-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->adBufferedPositionMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    .line 237
    iget-object v0, p1, Landroidx/media3/common/SimpleBasePlayer$State;->totalBufferedDurationMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    iput-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->totalBufferedDurationMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    .line 238
    iget-boolean v0, p1, Landroidx/media3/common/SimpleBasePlayer$State;->hasPositionDiscontinuity:Z

    iput-boolean v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->hasPositionDiscontinuity:Z

    .line 239
    iget v0, p1, Landroidx/media3/common/SimpleBasePlayer$State;->positionDiscontinuityReason:I

    iput v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->positionDiscontinuityReason:I

    .line 240
    iget-wide v0, p1, Landroidx/media3/common/SimpleBasePlayer$State;->discontinuityPositionMs:J

    iput-wide v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->discontinuityPositionMs:J

    .line 241
    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/SimpleBasePlayer$1;)V
    .locals 0
    .param p1, "x0"    # Landroidx/media3/common/SimpleBasePlayer$State;
    .param p2, "x1"    # Landroidx/media3/common/SimpleBasePlayer$1;

    .line 104
    invoke-direct {p0, p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;-><init>(Landroidx/media3/common/SimpleBasePlayer$State;)V

    return-void
.end method

.method static synthetic access$1000(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    .line 104
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->contentPositionMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    return-object v0
.end method

.method static synthetic access$1200(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)Lcom/google/common/collect/ImmutableList;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    .line 104
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->playlist:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method static synthetic access$1400(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)Landroidx/media3/common/PlaybackException;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    .line 104
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->playerError:Landroidx/media3/common/PlaybackException;

    return-object v0
.end method

.method static synthetic access$1500(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)Z
    .locals 1
    .param p0, "x0"    # Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    .line 104
    iget-boolean v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->isLoading:Z

    return v0
.end method

.method static synthetic access$1600(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)Z
    .locals 1
    .param p0, "x0"    # Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    .line 104
    iget-boolean v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->playWhenReady:Z

    return v0
.end method

.method static synthetic access$1700(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)I
    .locals 1
    .param p0, "x0"    # Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    .line 104
    iget v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->playbackSuppressionReason:I

    return v0
.end method

.method static synthetic access$1800(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)Landroidx/media3/common/PlaybackParameters;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    .line 104
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    return-object v0
.end method

.method static synthetic access$1900(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    .line 104
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->adPositionMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    return-object v0
.end method

.method static synthetic access$200(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)Landroidx/media3/common/Tracks;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    .line 104
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->currentTracks:Landroidx/media3/common/Tracks;

    return-object v0
.end method

.method static synthetic access$2000(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)Ljava/lang/Long;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    .line 104
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->adPositionMs:Ljava/lang/Long;

    return-object v0
.end method

.method static synthetic access$2100(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)Landroidx/media3/common/Player$Commands;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    .line 104
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->availableCommands:Landroidx/media3/common/Player$Commands;

    return-object v0
.end method

.method static synthetic access$2200(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)I
    .locals 1
    .param p0, "x0"    # Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    .line 104
    iget v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->playWhenReadyChangeReason:I

    return v0
.end method

.method static synthetic access$2300(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)I
    .locals 1
    .param p0, "x0"    # Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    .line 104
    iget v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->repeatMode:I

    return v0
.end method

.method static synthetic access$2400(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)Z
    .locals 1
    .param p0, "x0"    # Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    .line 104
    iget-boolean v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->shuffleModeEnabled:Z

    return v0
.end method

.method static synthetic access$2500(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)J
    .locals 2
    .param p0, "x0"    # Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    .line 104
    iget-wide v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->seekBackIncrementMs:J

    return-wide v0
.end method

.method static synthetic access$2600(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)J
    .locals 2
    .param p0, "x0"    # Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    .line 104
    iget-wide v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->seekForwardIncrementMs:J

    return-wide v0
.end method

.method static synthetic access$2700(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)J
    .locals 2
    .param p0, "x0"    # Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    .line 104
    iget-wide v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->maxSeekToPreviousPositionMs:J

    return-wide v0
.end method

.method static synthetic access$2800(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)Landroidx/media3/common/TrackSelectionParameters;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    .line 104
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->trackSelectionParameters:Landroidx/media3/common/TrackSelectionParameters;

    return-object v0
.end method

.method static synthetic access$2900(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)Landroidx/media3/common/AudioAttributes;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    .line 104
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    return-object v0
.end method

.method static synthetic access$300(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)Landroidx/media3/common/MediaMetadata;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    .line 104
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->currentMetadata:Landroidx/media3/common/MediaMetadata;

    return-object v0
.end method

.method static synthetic access$3000(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)F
    .locals 1
    .param p0, "x0"    # Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    .line 104
    iget v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->volume:F

    return v0
.end method

.method static synthetic access$3100(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)Landroidx/media3/common/VideoSize;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    .line 104
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->videoSize:Landroidx/media3/common/VideoSize;

    return-object v0
.end method

.method static synthetic access$3200(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)Landroidx/media3/common/text/CueGroup;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    .line 104
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->currentCues:Landroidx/media3/common/text/CueGroup;

    return-object v0
.end method

.method static synthetic access$3300(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)Landroidx/media3/common/DeviceInfo;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    .line 104
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->deviceInfo:Landroidx/media3/common/DeviceInfo;

    return-object v0
.end method

.method static synthetic access$3400(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)I
    .locals 1
    .param p0, "x0"    # Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    .line 104
    iget v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->deviceVolume:I

    return v0
.end method

.method static synthetic access$3500(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)Z
    .locals 1
    .param p0, "x0"    # Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    .line 104
    iget-boolean v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->isDeviceMuted:Z

    return v0
.end method

.method static synthetic access$3600(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)Landroidx/media3/common/util/Size;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    .line 104
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->surfaceSize:Landroidx/media3/common/util/Size;

    return-object v0
.end method

.method static synthetic access$3700(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)Z
    .locals 1
    .param p0, "x0"    # Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    .line 104
    iget-boolean v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->newlyRenderedFirstFrame:Z

    return v0
.end method

.method static synthetic access$3800(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)Landroidx/media3/common/Metadata;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    .line 104
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->timedMetadata:Landroidx/media3/common/Metadata;

    return-object v0
.end method

.method static synthetic access$3900(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)Landroidx/media3/common/MediaMetadata;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    .line 104
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->playlistMetadata:Landroidx/media3/common/MediaMetadata;

    return-object v0
.end method

.method static synthetic access$400(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)Landroidx/media3/common/Timeline;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    .line 104
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->timeline:Landroidx/media3/common/Timeline;

    return-object v0
.end method

.method static synthetic access$4000(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    .line 104
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->contentBufferedPositionMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    return-object v0
.end method

.method static synthetic access$4100(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    .line 104
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->adBufferedPositionMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    return-object v0
.end method

.method static synthetic access$4200(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    .line 104
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->totalBufferedDurationMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    return-object v0
.end method

.method static synthetic access$4300(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)Z
    .locals 1
    .param p0, "x0"    # Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    .line 104
    iget-boolean v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->hasPositionDiscontinuity:Z

    return v0
.end method

.method static synthetic access$4400(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)I
    .locals 1
    .param p0, "x0"    # Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    .line 104
    iget v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->positionDiscontinuityReason:I

    return v0
.end method

.method static synthetic access$4500(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)J
    .locals 2
    .param p0, "x0"    # Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    .line 104
    iget-wide v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->discontinuityPositionMs:J

    return-wide v0
.end method

.method static synthetic access$500(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)I
    .locals 1
    .param p0, "x0"    # Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    .line 104
    iget v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->playbackState:I

    return v0
.end method

.method static synthetic access$600(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)I
    .locals 1
    .param p0, "x0"    # Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    .line 104
    iget v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->currentAdGroupIndex:I

    return v0
.end method

.method static synthetic access$700(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)I
    .locals 1
    .param p0, "x0"    # Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    .line 104
    iget v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->currentAdIndexInAdGroup:I

    return v0
.end method

.method static synthetic access$800(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)I
    .locals 1
    .param p0, "x0"    # Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    .line 104
    iget v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->currentMediaItemIndex:I

    return v0
.end method

.method static synthetic access$900(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)Ljava/lang/Long;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    .line 104
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->contentPositionMs:Ljava/lang/Long;

    return-object v0
.end method


# virtual methods
.method public build()Landroidx/media3/common/SimpleBasePlayer$State;
    .locals 2

    .line 809
    new-instance v0, Landroidx/media3/common/SimpleBasePlayer$State;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/media3/common/SimpleBasePlayer$State;-><init>(Landroidx/media3/common/SimpleBasePlayer$State$Builder;Landroidx/media3/common/SimpleBasePlayer$1;)V

    return-object v0
.end method

.method public clearPositionDiscontinuity()Landroidx/media3/common/SimpleBasePlayer$State$Builder;
    .locals 1

    .line 803
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->hasPositionDiscontinuity:Z

    .line 804
    return-object p0
.end method

.method public setAdBufferedPositionMs(Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;)Landroidx/media3/common/SimpleBasePlayer$State$Builder;
    .locals 0
    .param p1, "adBufferedPositionMsSupplier"    # Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    .line 756
    iput-object p1, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->adBufferedPositionMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    .line 757
    return-object p0
.end method

.method public setAdPositionMs(J)Landroidx/media3/common/SimpleBasePlayer$State$Builder;
    .locals 1
    .param p1, "positionMs"    # J

    .line 705
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->adPositionMs:Ljava/lang/Long;

    .line 706
    return-object p0
.end method

.method public setAdPositionMs(Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;)Landroidx/media3/common/SimpleBasePlayer$State$Builder;
    .locals 1
    .param p1, "adPositionMsSupplier"    # Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    .line 724
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->adPositionMs:Ljava/lang/Long;

    .line 725
    iput-object p1, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->adPositionMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    .line 726
    return-object p0
.end method

.method public setAudioAttributes(Landroidx/media3/common/AudioAttributes;)Landroidx/media3/common/SimpleBasePlayer$State$Builder;
    .locals 0
    .param p1, "audioAttributes"    # Landroidx/media3/common/AudioAttributes;

    .line 426
    iput-object p1, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    .line 427
    return-object p0
.end method

.method public setAvailableCommands(Landroidx/media3/common/Player$Commands;)Landroidx/media3/common/SimpleBasePlayer$State$Builder;
    .locals 0
    .param p1, "availableCommands"    # Landroidx/media3/common/Player$Commands;

    .line 251
    iput-object p1, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->availableCommands:Landroidx/media3/common/Player$Commands;

    .line 252
    return-object p0
.end method

.method public setContentBufferedPositionMs(Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;)Landroidx/media3/common/SimpleBasePlayer$State$Builder;
    .locals 0
    .param p1, "contentBufferedPositionMsSupplier"    # Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    .line 741
    iput-object p1, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->contentBufferedPositionMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    .line 742
    return-object p0
.end method

.method public setContentPositionMs(J)Landroidx/media3/common/SimpleBasePlayer$State$Builder;
    .locals 1
    .param p1, "positionMs"    # J

    .line 665
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->contentPositionMs:Ljava/lang/Long;

    .line 666
    return-object p0
.end method

.method public setContentPositionMs(Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;)Landroidx/media3/common/SimpleBasePlayer$State$Builder;
    .locals 1
    .param p1, "contentPositionMsSupplier"    # Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    .line 685
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->contentPositionMs:Ljava/lang/Long;

    .line 686
    iput-object p1, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->contentPositionMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    .line 687
    return-object p0
.end method

.method public setCurrentAd(II)Landroidx/media3/common/SimpleBasePlayer$State$Builder;
    .locals 4
    .param p1, "adGroupIndex"    # I
    .param p2, "adIndexInAdGroup"    # I

    .line 644
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    move v3, v0

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    if-ne p2, v2, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    if-ne v3, v2, :cond_2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    .line 645
    iput p1, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->currentAdGroupIndex:I

    .line 646
    iput p2, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->currentAdIndexInAdGroup:I

    .line 647
    return-object p0
.end method

.method public setCurrentCues(Landroidx/media3/common/text/CueGroup;)Landroidx/media3/common/SimpleBasePlayer$State$Builder;
    .locals 0
    .param p1, "currentCues"    # Landroidx/media3/common/text/CueGroup;

    .line 465
    iput-object p1, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->currentCues:Landroidx/media3/common/text/CueGroup;

    .line 466
    return-object p0
.end method

.method public setCurrentMediaItemIndex(I)Landroidx/media3/common/SimpleBasePlayer$State$Builder;
    .locals 0
    .param p1, "currentMediaItemIndex"    # I

    .line 623
    iput p1, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->currentMediaItemIndex:I

    .line 624
    return-object p0
.end method

.method public setDeviceInfo(Landroidx/media3/common/DeviceInfo;)Landroidx/media3/common/SimpleBasePlayer$State$Builder;
    .locals 0
    .param p1, "deviceInfo"    # Landroidx/media3/common/DeviceInfo;

    .line 477
    iput-object p1, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->deviceInfo:Landroidx/media3/common/DeviceInfo;

    .line 478
    return-object p0
.end method

.method public setDeviceVolume(I)Landroidx/media3/common/SimpleBasePlayer$State$Builder;
    .locals 1
    .param p1, "deviceVolume"    # I

    .line 489
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    .line 490
    iput p1, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->deviceVolume:I

    .line 491
    return-object p0
.end method

.method public setIsDeviceMuted(Z)Landroidx/media3/common/SimpleBasePlayer$State$Builder;
    .locals 0
    .param p1, "isDeviceMuted"    # Z

    .line 502
    iput-boolean p1, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->isDeviceMuted:Z

    .line 503
    return-object p0
.end method

.method public setIsLoading(Z)Landroidx/media3/common/SimpleBasePlayer$State$Builder;
    .locals 0
    .param p1, "isLoading"    # Z

    .line 351
    iput-boolean p1, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->isLoading:Z

    .line 352
    return-object p0
.end method

.method public setMaxSeekToPreviousPositionMs(J)Landroidx/media3/common/SimpleBasePlayer$State$Builder;
    .locals 0
    .param p1, "maxSeekToPreviousPositionMs"    # J

    .line 389
    iput-wide p1, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->maxSeekToPreviousPositionMs:J

    .line 390
    return-object p0
.end method

.method public setNewlyRenderedFirstFrame(Z)Landroidx/media3/common/SimpleBasePlayer$State$Builder;
    .locals 0
    .param p1, "newlyRenderedFirstFrame"    # Z

    .line 531
    iput-boolean p1, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->newlyRenderedFirstFrame:Z

    .line 532
    return-object p0
.end method

.method public setPlayWhenReady(ZI)Landroidx/media3/common/SimpleBasePlayer$State$Builder;
    .locals 0
    .param p1, "playWhenReady"    # Z
    .param p2, "playWhenReadyChangeReason"    # I

    .line 266
    iput-boolean p1, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->playWhenReady:Z

    .line 267
    iput p2, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->playWhenReadyChangeReason:I

    .line 268
    return-object p0
.end method

.method public setPlaybackParameters(Landroidx/media3/common/PlaybackParameters;)Landroidx/media3/common/SimpleBasePlayer$State$Builder;
    .locals 0
    .param p1, "playbackParameters"    # Landroidx/media3/common/PlaybackParameters;

    .line 401
    iput-object p1, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    .line 402
    return-object p0
.end method

.method public setPlaybackState(I)Landroidx/media3/common/SimpleBasePlayer$State$Builder;
    .locals 0
    .param p1, "playbackState"    # I

    .line 282
    iput p1, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->playbackState:I

    .line 283
    return-object p0
.end method

.method public setPlaybackSuppressionReason(I)Landroidx/media3/common/SimpleBasePlayer$State$Builder;
    .locals 0
    .param p1, "playbackSuppressionReason"    # I

    .line 296
    iput p1, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->playbackSuppressionReason:I

    .line 297
    return-object p0
.end method

.method public setPlayerError(Landroidx/media3/common/PlaybackException;)Landroidx/media3/common/SimpleBasePlayer$State$Builder;
    .locals 0
    .param p1, "playerError"    # Landroidx/media3/common/PlaybackException;

    .line 312
    iput-object p1, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->playerError:Landroidx/media3/common/PlaybackException;

    .line 313
    return-object p0
.end method

.method public setPlaylist(Landroidx/media3/common/Timeline;Landroidx/media3/common/Tracks;Landroidx/media3/common/MediaMetadata;)Landroidx/media3/common/SimpleBasePlayer$State$Builder;
    .locals 1
    .param p1, "timeline"    # Landroidx/media3/common/Timeline;
    .param p2, "currentTracks"    # Landroidx/media3/common/Tracks;
    .param p3, "currentMetadata"    # Landroidx/media3/common/MediaMetadata;

    .line 592
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->playlist:Lcom/google/common/collect/ImmutableList;

    .line 593
    iput-object p1, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->timeline:Landroidx/media3/common/Timeline;

    .line 594
    iput-object p2, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->currentTracks:Landroidx/media3/common/Tracks;

    .line 595
    iput-object p3, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->currentMetadata:Landroidx/media3/common/MediaMetadata;

    .line 596
    return-object p0
.end method

.method public setPlaylist(Ljava/util/List;)Landroidx/media3/common/SimpleBasePlayer$State$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/common/SimpleBasePlayer$MediaItemData;",
            ">;)",
            "Landroidx/media3/common/SimpleBasePlayer$State$Builder;"
        }
    .end annotation

    .line 563
    .local p1, "playlist":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/SimpleBasePlayer$MediaItemData;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 564
    .local v0, "uids":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Object;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 565
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;

    iget-object v2, v2, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->uid:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "Duplicate MediaItemData UID in playlist"

    invoke-static {v2, v3}, Landroidx/media3/common/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 564
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 567
    .end local v1    # "i":I
    :cond_0
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    iput-object v1, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->playlist:Lcom/google/common/collect/ImmutableList;

    .line 568
    new-instance v1, Landroidx/media3/common/SimpleBasePlayer$PlaylistTimeline;

    iget-object v2, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->playlist:Lcom/google/common/collect/ImmutableList;

    invoke-direct {v1, v2}, Landroidx/media3/common/SimpleBasePlayer$PlaylistTimeline;-><init>(Ljava/util/List;)V

    iput-object v1, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->timeline:Landroidx/media3/common/Timeline;

    .line 569
    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->currentTracks:Landroidx/media3/common/Tracks;

    .line 570
    iput-object v1, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->currentMetadata:Landroidx/media3/common/MediaMetadata;

    .line 571
    return-object p0
.end method

.method public setPlaylistMetadata(Landroidx/media3/common/MediaMetadata;)Landroidx/media3/common/SimpleBasePlayer$State$Builder;
    .locals 0
    .param p1, "playlistMetadata"    # Landroidx/media3/common/MediaMetadata;

    .line 607
    iput-object p1, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->playlistMetadata:Landroidx/media3/common/MediaMetadata;

    .line 608
    return-object p0
.end method

.method public setPositionDiscontinuity(IJ)Landroidx/media3/common/SimpleBasePlayer$State$Builder;
    .locals 1
    .param p1, "positionDiscontinuityReason"    # I
    .param p2, "discontinuityPositionMs"    # J

    .line 789
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->hasPositionDiscontinuity:Z

    .line 790
    iput p1, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->positionDiscontinuityReason:I

    .line 791
    iput-wide p2, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->discontinuityPositionMs:J

    .line 792
    return-object p0
.end method

.method public setRepeatMode(I)Landroidx/media3/common/SimpleBasePlayer$State$Builder;
    .locals 0
    .param p1, "repeatMode"    # I

    .line 324
    iput p1, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->repeatMode:I

    .line 325
    return-object p0
.end method

.method public setSeekBackIncrementMs(J)Landroidx/media3/common/SimpleBasePlayer$State$Builder;
    .locals 0
    .param p1, "seekBackIncrementMs"    # J

    .line 363
    iput-wide p1, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->seekBackIncrementMs:J

    .line 364
    return-object p0
.end method

.method public setSeekForwardIncrementMs(J)Landroidx/media3/common/SimpleBasePlayer$State$Builder;
    .locals 0
    .param p1, "seekForwardIncrementMs"    # J

    .line 375
    iput-wide p1, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->seekForwardIncrementMs:J

    .line 376
    return-object p0
.end method

.method public setShuffleModeEnabled(Z)Landroidx/media3/common/SimpleBasePlayer$State$Builder;
    .locals 0
    .param p1, "shuffleModeEnabled"    # Z

    .line 336
    iput-boolean p1, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->shuffleModeEnabled:Z

    .line 337
    return-object p0
.end method

.method public setSurfaceSize(Landroidx/media3/common/util/Size;)Landroidx/media3/common/SimpleBasePlayer$State$Builder;
    .locals 0
    .param p1, "surfaceSize"    # Landroidx/media3/common/util/Size;

    .line 515
    iput-object p1, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->surfaceSize:Landroidx/media3/common/util/Size;

    .line 516
    return-object p0
.end method

.method public setTimedMetadata(Landroidx/media3/common/Metadata;)Landroidx/media3/common/SimpleBasePlayer$State$Builder;
    .locals 0
    .param p1, "timedMetadata"    # Landroidx/media3/common/Metadata;

    .line 546
    iput-object p1, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->timedMetadata:Landroidx/media3/common/Metadata;

    .line 547
    return-object p0
.end method

.method public setTotalBufferedDurationMs(Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;)Landroidx/media3/common/SimpleBasePlayer$State$Builder;
    .locals 0
    .param p1, "totalBufferedDurationMsSupplier"    # Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    .line 770
    iput-object p1, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->totalBufferedDurationMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    .line 771
    return-object p0
.end method

.method public setTrackSelectionParameters(Landroidx/media3/common/TrackSelectionParameters;)Landroidx/media3/common/SimpleBasePlayer$State$Builder;
    .locals 0
    .param p1, "trackSelectionParameters"    # Landroidx/media3/common/TrackSelectionParameters;

    .line 414
    iput-object p1, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->trackSelectionParameters:Landroidx/media3/common/TrackSelectionParameters;

    .line 415
    return-object p0
.end method

.method public setVideoSize(Landroidx/media3/common/VideoSize;)Landroidx/media3/common/SimpleBasePlayer$State$Builder;
    .locals 0
    .param p1, "videoSize"    # Landroidx/media3/common/VideoSize;

    .line 453
    iput-object p1, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->videoSize:Landroidx/media3/common/VideoSize;

    .line 454
    return-object p0
.end method

.method public setVolume(F)Landroidx/media3/common/SimpleBasePlayer$State$Builder;
    .locals 1
    .param p1, "volume"    # F

    .line 440
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    .line 441
    iput p1, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->volume:F

    .line 442
    return-object p0
.end method
