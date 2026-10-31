.class final Landroidx/media3/extractor/mp4/BoxParser$StriData;
.super Ljava/lang/Object;
.source "BoxParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/extractor/mp4/BoxParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "StriData"
.end annotation


# instance fields
.field private final eyeViewsReversed:Z

.field private final hasAdditionalViews:Z

.field private final hasLeftEyeView:Z

.field private final hasRightEyeView:Z


# direct methods
.method public constructor <init>(ZZZZ)V
    .locals 0
    .param p1, "hasLeftEyeView"    # Z
    .param p2, "hasRightEyeView"    # Z
    .param p3, "eyeViewsReversed"    # Z
    .param p4, "hasAdditionalViews"    # Z

    .line 2447
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2448
    iput-boolean p1, p0, Landroidx/media3/extractor/mp4/BoxParser$StriData;->hasLeftEyeView:Z

    .line 2449
    iput-boolean p2, p0, Landroidx/media3/extractor/mp4/BoxParser$StriData;->hasRightEyeView:Z

    .line 2450
    iput-boolean p3, p0, Landroidx/media3/extractor/mp4/BoxParser$StriData;->eyeViewsReversed:Z

    .line 2451
    iput-boolean p4, p0, Landroidx/media3/extractor/mp4/BoxParser$StriData;->hasAdditionalViews:Z

    .line 2452
    return-void
.end method

.method static synthetic access$1300(Landroidx/media3/extractor/mp4/BoxParser$StriData;)Z
    .locals 1
    .param p0, "x0"    # Landroidx/media3/extractor/mp4/BoxParser$StriData;

    .line 2437
    iget-boolean v0, p0, Landroidx/media3/extractor/mp4/BoxParser$StriData;->hasLeftEyeView:Z

    return v0
.end method

.method static synthetic access$1400(Landroidx/media3/extractor/mp4/BoxParser$StriData;)Z
    .locals 1
    .param p0, "x0"    # Landroidx/media3/extractor/mp4/BoxParser$StriData;

    .line 2437
    iget-boolean v0, p0, Landroidx/media3/extractor/mp4/BoxParser$StriData;->hasRightEyeView:Z

    return v0
.end method

.method static synthetic access$800(Landroidx/media3/extractor/mp4/BoxParser$StriData;)Z
    .locals 1
    .param p0, "x0"    # Landroidx/media3/extractor/mp4/BoxParser$StriData;

    .line 2437
    iget-boolean v0, p0, Landroidx/media3/extractor/mp4/BoxParser$StriData;->eyeViewsReversed:Z

    return v0
.end method
