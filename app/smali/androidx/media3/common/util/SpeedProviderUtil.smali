.class public Landroidx/media3/common/util/SpeedProviderUtil;
.super Ljava/lang/Object;
.source "SpeedProviderUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDurationAfterSpeedProviderApplied(Landroidx/media3/common/audio/SpeedProvider;J)J
    .locals 10
    .param p0, "speedProvider"    # Landroidx/media3/common/audio/SpeedProvider;
    .param p1, "durationUs"    # J

    .line 36
    const-wide/16 v0, 0x0

    .line 37
    .local v0, "speedChangeTimeUs":J
    const-wide/16 v2, 0x0

    .line 38
    .local v2, "outputDurationUs":D
    :goto_0
    cmp-long v4, v0, p1

    if-gez v4, :cond_1

    .line 39
    invoke-interface {p0, v0, v1}, Landroidx/media3/common/audio/SpeedProvider;->getNextSpeedChangeTimeUs(J)J

    move-result-wide v4

    .line 40
    .local v4, "nextSpeedChangeTimeUs":J
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v4, v6

    if-nez v6, :cond_0

    .line 41
    const-wide v4, 0x7fffffffffffffffL

    .line 43
    :cond_0
    nop

    .line 44
    invoke-static {v4, v5, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    sub-long/2addr v6, v0

    long-to-double v6, v6

    .line 45
    invoke-interface {p0, v0, v1}, Landroidx/media3/common/audio/SpeedProvider;->getSpeed(J)F

    move-result v8

    float-to-double v8, v8

    div-double/2addr v6, v8

    add-double/2addr v2, v6

    .line 46
    move-wide v0, v4

    .line 47
    .end local v4    # "nextSpeedChangeTimeUs":J
    goto :goto_0

    .line 48
    :cond_1
    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    return-wide v4
.end method
