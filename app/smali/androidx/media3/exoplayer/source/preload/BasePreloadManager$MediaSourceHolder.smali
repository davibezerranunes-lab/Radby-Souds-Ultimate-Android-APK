.class final Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolder;
.super Ljava/lang/Object;
.source "BasePreloadManager.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/source/preload/BasePreloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MediaSourceHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Landroidx/media3/exoplayer/source/preload/BasePreloadManager<",
        "TT;>.MediaSourceHolder;>;"
    }
.end annotation


# instance fields
.field public final mediaSource:Landroidx/media3/exoplayer/source/MediaSource;

.field public final rankingData:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final startPositionUs:J

.field final synthetic this$0:Landroidx/media3/exoplayer/source/preload/BasePreloadManager;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/source/preload/BasePreloadManager;Landroidx/media3/exoplayer/source/MediaSource;Ljava/lang/Object;)V
    .locals 6
    .param p2, "mediaSource"    # Landroidx/media3/exoplayer/source/MediaSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/exoplayer/source/MediaSource;",
            "TT;)V"
        }
    .end annotation

    .line 412
    .local p0, "this":Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolder;, "Landroidx/media3/exoplayer/source/preload/BasePreloadManager<TT;>.MediaSourceHolder;"
    .local p3, "rankingData":Ljava/lang/Object;, "TT;"
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolder;-><init>(Landroidx/media3/exoplayer/source/preload/BasePreloadManager;Landroidx/media3/exoplayer/source/MediaSource;Ljava/lang/Object;J)V

    .line 413
    return-void
.end method

.method public constructor <init>(Landroidx/media3/exoplayer/source/preload/BasePreloadManager;Landroidx/media3/exoplayer/source/MediaSource;Ljava/lang/Object;J)V
    .locals 0
    .param p2, "mediaSource"    # Landroidx/media3/exoplayer/source/MediaSource;
    .param p4, "startPositionUs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/exoplayer/source/MediaSource;",
            "TT;J)V"
        }
    .end annotation

    .line 415
    .local p0, "this":Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolder;, "Landroidx/media3/exoplayer/source/preload/BasePreloadManager<TT;>.MediaSourceHolder;"
    .local p3, "rankingData":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolder;->this$0:Landroidx/media3/exoplayer/source/preload/BasePreloadManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 416
    iput-object p2, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolder;->mediaSource:Landroidx/media3/exoplayer/source/MediaSource;

    .line 417
    iput-object p3, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolder;->rankingData:Ljava/lang/Object;

    .line 418
    iput-wide p4, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolder;->startPositionUs:J

    .line 419
    return-void
.end method


# virtual methods
.method public compareTo(Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolder;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/exoplayer/source/preload/BasePreloadManager<",
            "TT;>.MediaSourceHolder;)I"
        }
    .end annotation

    .line 423
    .local p0, "this":Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolder;, "Landroidx/media3/exoplayer/source/preload/BasePreloadManager<TT;>.MediaSourceHolder;"
    .local p1, "o":Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolder;, "Landroidx/media3/exoplayer/source/preload/BasePreloadManager<TT;>.MediaSourceHolder;"
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolder;->this$0:Landroidx/media3/exoplayer/source/preload/BasePreloadManager;

    iget-object v0, v0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->rankingDataComparator:Ljava/util/Comparator;

    iget-object v1, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolder;->rankingData:Ljava/lang/Object;

    iget-object v2, p1, Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolder;->rankingData:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 405
    .local p0, "this":Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolder;, "Landroidx/media3/exoplayer/source/preload/BasePreloadManager<TT;>.MediaSourceHolder;"
    check-cast p1, Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolder;

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolder;->compareTo(Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolder;)I

    move-result p1

    return p1
.end method
