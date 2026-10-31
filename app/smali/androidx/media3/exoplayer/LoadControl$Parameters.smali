.class public final Landroidx/media3/exoplayer/LoadControl$Parameters;
.super Ljava/lang/Object;
.source "LoadControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/LoadControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Parameters"
.end annotation


# instance fields
.field public final bufferedDurationUs:J

.field public final mediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

.field public final playWhenReady:Z

.field public final playbackPositionUs:J

.field public final playbackSpeed:F

.field public final playerId:Landroidx/media3/exoplayer/analytics/PlayerId;

.field public final rebuffering:Z

.field public final targetLiveOffsetUs:J

.field public final timeline:Landroidx/media3/common/Timeline;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/analytics/PlayerId;Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJFZZJ)V
    .locals 0
    .param p1, "playerId"    # Landroidx/media3/exoplayer/analytics/PlayerId;
    .param p2, "timeline"    # Landroidx/media3/common/Timeline;
    .param p3, "mediaPeriodId"    # Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .param p4, "playbackPositionUs"    # J
    .param p6, "bufferedDurationUs"    # J
    .param p8, "playbackSpeed"    # F
    .param p9, "playWhenReady"    # Z
    .param p10, "rebuffering"    # Z
    .param p11, "targetLiveOffsetUs"    # J

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-object p1, p0, Landroidx/media3/exoplayer/LoadControl$Parameters;->playerId:Landroidx/media3/exoplayer/analytics/PlayerId;

    .line 107
    iput-object p2, p0, Landroidx/media3/exoplayer/LoadControl$Parameters;->timeline:Landroidx/media3/common/Timeline;

    .line 108
    iput-object p3, p0, Landroidx/media3/exoplayer/LoadControl$Parameters;->mediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 109
    iput-wide p4, p0, Landroidx/media3/exoplayer/LoadControl$Parameters;->playbackPositionUs:J

    .line 110
    iput-wide p6, p0, Landroidx/media3/exoplayer/LoadControl$Parameters;->bufferedDurationUs:J

    .line 111
    iput p8, p0, Landroidx/media3/exoplayer/LoadControl$Parameters;->playbackSpeed:F

    .line 112
    iput-boolean p9, p0, Landroidx/media3/exoplayer/LoadControl$Parameters;->playWhenReady:Z

    .line 113
    iput-boolean p10, p0, Landroidx/media3/exoplayer/LoadControl$Parameters;->rebuffering:Z

    .line 114
    iput-wide p11, p0, Landroidx/media3/exoplayer/LoadControl$Parameters;->targetLiveOffsetUs:J

    .line 115
    return-void
.end method
