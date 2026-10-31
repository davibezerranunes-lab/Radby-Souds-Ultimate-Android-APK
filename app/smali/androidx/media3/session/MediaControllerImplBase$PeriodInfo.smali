.class final Landroidx/media3/session/MediaControllerImplBase$PeriodInfo;
.super Ljava/lang/Object;
.source "MediaControllerImplBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/session/MediaControllerImplBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PeriodInfo"
.end annotation


# instance fields
.field private final index:I

.field private final periodPositionUs:J


# direct methods
.method public constructor <init>(IJ)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "periodPositionUs"    # J

    .line 3532
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3533
    iput p1, p0, Landroidx/media3/session/MediaControllerImplBase$PeriodInfo;->index:I

    .line 3534
    iput-wide p2, p0, Landroidx/media3/session/MediaControllerImplBase$PeriodInfo;->periodPositionUs:J

    .line 3535
    return-void
.end method

.method static synthetic access$100(Landroidx/media3/session/MediaControllerImplBase$PeriodInfo;)I
    .locals 1
    .param p0, "x0"    # Landroidx/media3/session/MediaControllerImplBase$PeriodInfo;

    .line 3528
    iget v0, p0, Landroidx/media3/session/MediaControllerImplBase$PeriodInfo;->index:I

    return v0
.end method

.method static synthetic access$200(Landroidx/media3/session/MediaControllerImplBase$PeriodInfo;)J
    .locals 2
    .param p0, "x0"    # Landroidx/media3/session/MediaControllerImplBase$PeriodInfo;

    .line 3528
    iget-wide v0, p0, Landroidx/media3/session/MediaControllerImplBase$PeriodInfo;->periodPositionUs:J

    return-wide v0
.end method
