.class public final Landroidx/media3/session/MediaSession$MediaItemsWithStartPosition;
.super Ljava/lang/Object;
.source "MediaSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/session/MediaSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MediaItemsWithStartPosition"
.end annotation


# instance fields
.field public final mediaItems:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/common/MediaItem;",
            ">;"
        }
    .end annotation
.end field

.field public final startIndex:I

.field public final startPositionMs:J


# direct methods
.method public constructor <init>(Ljava/util/List;IJ)V
    .locals 1
    .param p2, "startIndex"    # I
    .param p3, "startPositionMs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/common/MediaItem;",
            ">;IJ)V"
        }
    .end annotation

    .line 1836
    .local p1, "mediaItems":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/MediaItem;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1837
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/session/MediaSession$MediaItemsWithStartPosition;->mediaItems:Lcom/google/common/collect/ImmutableList;

    .line 1838
    iput p2, p0, Landroidx/media3/session/MediaSession$MediaItemsWithStartPosition;->startIndex:I

    .line 1839
    iput-wide p3, p0, Landroidx/media3/session/MediaSession$MediaItemsWithStartPosition;->startPositionMs:J

    .line 1840
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 1844
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 1845
    return v0

    .line 1847
    :cond_0
    instance-of v1, p1, Landroidx/media3/session/MediaSession$MediaItemsWithStartPosition;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 1848
    return v2

    .line 1851
    :cond_1
    move-object v1, p1

    check-cast v1, Landroidx/media3/session/MediaSession$MediaItemsWithStartPosition;

    .line 1853
    .local v1, "other":Landroidx/media3/session/MediaSession$MediaItemsWithStartPosition;
    iget-object v3, p0, Landroidx/media3/session/MediaSession$MediaItemsWithStartPosition;->mediaItems:Lcom/google/common/collect/ImmutableList;

    iget-object v4, v1, Landroidx/media3/session/MediaSession$MediaItemsWithStartPosition;->mediaItems:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v3, v4}, Lcom/google/common/collect/ImmutableList;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Landroidx/media3/session/MediaSession$MediaItemsWithStartPosition;->startIndex:I

    .line 1854
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, v1, Landroidx/media3/session/MediaSession$MediaItemsWithStartPosition;->startIndex:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-wide v3, p0, Landroidx/media3/session/MediaSession$MediaItemsWithStartPosition;->startPositionMs:J

    .line 1855
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-wide v4, v1, Landroidx/media3/session/MediaSession$MediaItemsWithStartPosition;->startPositionMs:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v3, v4}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 1853
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 1860
    iget-object v0, p0, Landroidx/media3/session/MediaSession$MediaItemsWithStartPosition;->mediaItems:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->hashCode()I

    move-result v0

    .line 1861
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroidx/media3/session/MediaSession$MediaItemsWithStartPosition;->startIndex:I

    add-int/2addr v1, v2

    .line 1862
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-wide v2, p0, Landroidx/media3/session/MediaSession$MediaItemsWithStartPosition;->startPositionMs:J

    invoke-static {v2, v3}, Lcom/google/common/primitives/Longs;->hashCode(J)I

    move-result v2

    add-int/2addr v0, v2

    .line 1863
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method
