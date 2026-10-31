.class final Landroidx/media3/exoplayer/MediaExtractorCompat$ExtractorOutputImpl;
.super Ljava/lang/Object;
.source "MediaExtractorCompat.java"

# interfaces
.implements Landroidx/media3/extractor/ExtractorOutput;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/MediaExtractorCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ExtractorOutputImpl"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media3/exoplayer/MediaExtractorCompat;


# direct methods
.method private constructor <init>(Landroidx/media3/exoplayer/MediaExtractorCompat;)V
    .locals 0

    .line 782
    iput-object p1, p0, Landroidx/media3/exoplayer/MediaExtractorCompat$ExtractorOutputImpl;->this$0:Landroidx/media3/exoplayer/MediaExtractorCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/exoplayer/MediaExtractorCompat;Landroidx/media3/exoplayer/MediaExtractorCompat$1;)V
    .locals 0
    .param p1, "x0"    # Landroidx/media3/exoplayer/MediaExtractorCompat;
    .param p2, "x1"    # Landroidx/media3/exoplayer/MediaExtractorCompat$1;

    .line 782
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/MediaExtractorCompat$ExtractorOutputImpl;-><init>(Landroidx/media3/exoplayer/MediaExtractorCompat;)V

    return-void
.end method


# virtual methods
.method public endTracks()V
    .locals 2

    .line 804
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompat$ExtractorOutputImpl;->this$0:Landroidx/media3/exoplayer/MediaExtractorCompat;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroidx/media3/exoplayer/MediaExtractorCompat;->access$302(Landroidx/media3/exoplayer/MediaExtractorCompat;Z)Z

    .line 805
    return-void
.end method

.method public seekMap(Landroidx/media3/extractor/SeekMap;)V
    .locals 1
    .param p1, "seekMap"    # Landroidx/media3/extractor/SeekMap;

    .line 809
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompat$ExtractorOutputImpl;->this$0:Landroidx/media3/exoplayer/MediaExtractorCompat;

    invoke-static {v0, p1}, Landroidx/media3/exoplayer/MediaExtractorCompat;->access$502(Landroidx/media3/exoplayer/MediaExtractorCompat;Landroidx/media3/extractor/SeekMap;)Landroidx/media3/extractor/SeekMap;

    .line 810
    return-void
.end method

.method public track(II)Landroidx/media3/extractor/TrackOutput;
    .locals 4
    .param p1, "id"    # I
    .param p2, "type"    # I

    .line 786
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompat$ExtractorOutputImpl;->this$0:Landroidx/media3/exoplayer/MediaExtractorCompat;

    invoke-static {v0}, Landroidx/media3/exoplayer/MediaExtractorCompat;->access$200(Landroidx/media3/exoplayer/MediaExtractorCompat;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/MediaExtractorCompat$MediaExtractorSampleQueue;

    .line 787
    .local v0, "sampleQueue":Landroidx/media3/exoplayer/MediaExtractorCompat$MediaExtractorSampleQueue;
    if-eqz v0, :cond_0

    .line 790
    return-object v0

    .line 792
    :cond_0
    iget-object v1, p0, Landroidx/media3/exoplayer/MediaExtractorCompat$ExtractorOutputImpl;->this$0:Landroidx/media3/exoplayer/MediaExtractorCompat;

    invoke-static {v1}, Landroidx/media3/exoplayer/MediaExtractorCompat;->access$300(Landroidx/media3/exoplayer/MediaExtractorCompat;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 794
    new-instance v1, Landroidx/media3/extractor/DiscardingTrackOutput;

    invoke-direct {v1}, Landroidx/media3/extractor/DiscardingTrackOutput;-><init>()V

    return-object v1

    .line 797
    :cond_1
    new-instance v1, Landroidx/media3/exoplayer/MediaExtractorCompat$MediaExtractorSampleQueue;

    iget-object v2, p0, Landroidx/media3/exoplayer/MediaExtractorCompat$ExtractorOutputImpl;->this$0:Landroidx/media3/exoplayer/MediaExtractorCompat;

    iget-object v3, p0, Landroidx/media3/exoplayer/MediaExtractorCompat$ExtractorOutputImpl;->this$0:Landroidx/media3/exoplayer/MediaExtractorCompat;

    invoke-static {v3}, Landroidx/media3/exoplayer/MediaExtractorCompat;->access$400(Landroidx/media3/exoplayer/MediaExtractorCompat;)Landroidx/media3/exoplayer/upstream/Allocator;

    move-result-object v3

    invoke-direct {v1, v2, v3, p1}, Landroidx/media3/exoplayer/MediaExtractorCompat$MediaExtractorSampleQueue;-><init>(Landroidx/media3/exoplayer/MediaExtractorCompat;Landroidx/media3/exoplayer/upstream/Allocator;I)V

    move-object v0, v1

    .line 798
    iget-object v1, p0, Landroidx/media3/exoplayer/MediaExtractorCompat$ExtractorOutputImpl;->this$0:Landroidx/media3/exoplayer/MediaExtractorCompat;

    invoke-static {v1}, Landroidx/media3/exoplayer/MediaExtractorCompat;->access$200(Landroidx/media3/exoplayer/MediaExtractorCompat;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 799
    return-object v0
.end method
