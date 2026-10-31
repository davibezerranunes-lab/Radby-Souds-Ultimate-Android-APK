.class final Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackState;
.super Ljava/lang/Object;
.source "ProgressiveMediaPeriod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TrackState"
.end annotation


# instance fields
.field public final trackEnabledStates:[Z

.field public final trackIsAudioVideoFlags:[Z

.field public final trackNotifiedDownstreamFormats:[Z

.field public final tracks:Landroidx/media3/exoplayer/source/TrackGroupArray;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/source/TrackGroupArray;[Z)V
    .locals 1
    .param p1, "tracks"    # Landroidx/media3/exoplayer/source/TrackGroupArray;
    .param p2, "trackIsAudioVideoFlags"    # [Z

    .line 1190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1191
    iput-object p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackState;->tracks:Landroidx/media3/exoplayer/source/TrackGroupArray;

    .line 1192
    iput-object p2, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackState;->trackIsAudioVideoFlags:[Z

    .line 1193
    iget v0, p1, Landroidx/media3/exoplayer/source/TrackGroupArray;->length:I

    new-array v0, v0, [Z

    iput-object v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackState;->trackEnabledStates:[Z

    .line 1194
    iget v0, p1, Landroidx/media3/exoplayer/source/TrackGroupArray;->length:I

    new-array v0, v0, [Z

    iput-object v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackState;->trackNotifiedDownstreamFormats:[Z

    .line 1195
    return-void
.end method
