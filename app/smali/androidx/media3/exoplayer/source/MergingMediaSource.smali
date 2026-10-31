.class public final Landroidx/media3/exoplayer/source/MergingMediaSource;
.super Landroidx/media3/exoplayer/source/CompositeMediaSource;
.source "MergingMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/source/MergingMediaSource$IllegalMergeException;,
        Landroidx/media3/exoplayer/source/MergingMediaSource$MediaPeriodAndId;,
        Landroidx/media3/exoplayer/source/MergingMediaSource$ClippedTimeline;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/media3/exoplayer/source/CompositeMediaSource<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final PERIOD_COUNT_UNSET:I = -0x1

.field private static final PLACEHOLDER_MEDIA_ITEM:Landroidx/media3/common/MediaItem;


# instance fields
.field private final adjustPeriodTimeOffsets:Z

.field private final clipDurations:Z

.field private final clippedDurationsUs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final clippedMediaPeriods:Lcom/google/common/collect/Multimap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Multimap<",
            "Ljava/lang/Object;",
            "Landroidx/media3/exoplayer/source/ClippingMediaPeriod;",
            ">;"
        }
    .end annotation
.end field

.field private final compositeSequenceableLoaderFactory:Landroidx/media3/exoplayer/source/CompositeSequenceableLoaderFactory;

.field private final mediaPeriods:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/source/MergingMediaSource$MediaPeriodAndId;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mediaSources:[Landroidx/media3/exoplayer/source/MediaSource;

.field private mergeError:Landroidx/media3/exoplayer/source/MergingMediaSource$IllegalMergeException;

.field private final pendingTimelineSources:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/media3/exoplayer/source/MediaSource;",
            ">;"
        }
    .end annotation
.end field

.field private periodCount:I

.field private periodTimeOffsetsUs:[[J

.field private final timelines:[Landroidx/media3/common/Timeline;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 82
    new-instance v0, Landroidx/media3/common/MediaItem$Builder;

    invoke-direct {v0}, Landroidx/media3/common/MediaItem$Builder;-><init>()V

    .line 83
    const-string v1, "MergingMediaSource"

    invoke-virtual {v0, v1}, Landroidx/media3/common/MediaItem$Builder;->setMediaId(Ljava/lang/String;)Landroidx/media3/common/MediaItem$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/MediaItem$Builder;->build()Landroidx/media3/common/MediaItem;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/source/MergingMediaSource;->PLACEHOLDER_MEDIA_ITEM:Landroidx/media3/common/MediaItem;

    .line 82
    return-void
.end method

.method public varargs constructor <init>(ZZLandroidx/media3/exoplayer/source/CompositeSequenceableLoaderFactory;[Landroidx/media3/exoplayer/source/MediaSource;)V
    .locals 3
    .param p1, "adjustPeriodTimeOffsets"    # Z
    .param p2, "clipDurations"    # Z
    .param p3, "compositeSequenceableLoaderFactory"    # Landroidx/media3/exoplayer/source/CompositeSequenceableLoaderFactory;
    .param p4, "mediaSources"    # [Landroidx/media3/exoplayer/source/MediaSource;

    .line 159
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/CompositeMediaSource;-><init>()V

    .line 160
    iput-boolean p1, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->adjustPeriodTimeOffsets:Z

    .line 161
    iput-boolean p2, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->clipDurations:Z

    .line 162
    iput-object p4, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->mediaSources:[Landroidx/media3/exoplayer/source/MediaSource;

    .line 163
    iput-object p3, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->compositeSequenceableLoaderFactory:Landroidx/media3/exoplayer/source/CompositeSequenceableLoaderFactory;

    .line 164
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->pendingTimelineSources:Ljava/util/ArrayList;

    .line 165
    const/4 v0, -0x1

    iput v0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->periodCount:I

    .line 166
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->mediaPeriods:Ljava/util/List;

    .line 167
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p4

    if-ge v0, v1, :cond_0

    .line 168
    iget-object v1, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->mediaPeriods:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 170
    .end local v0    # "i":I
    :cond_0
    array-length v0, p4

    new-array v0, v0, [Landroidx/media3/common/Timeline;

    iput-object v0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->timelines:[Landroidx/media3/common/Timeline;

    .line 171
    const/4 v0, 0x0

    new-array v0, v0, [[J

    iput-object v0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->periodTimeOffsetsUs:[[J

    .line 172
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->clippedDurationsUs:Ljava/util/Map;

    .line 173
    invoke-static {}, Lcom/google/common/collect/MultimapBuilder;->hashKeys()Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;->arrayListValues()Lcom/google/common/collect/MultimapBuilder$ListMultimapBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/MultimapBuilder$ListMultimapBuilder;->build()Lcom/google/common/collect/ListMultimap;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->clippedMediaPeriods:Lcom/google/common/collect/Multimap;

    .line 174
    return-void
.end method

.method public varargs constructor <init>(ZZ[Landroidx/media3/exoplayer/source/MediaSource;)V
    .locals 1
    .param p1, "adjustPeriodTimeOffsets"    # Z
    .param p2, "clipDurations"    # Z
    .param p3, "mediaSources"    # [Landroidx/media3/exoplayer/source/MediaSource;

    .line 136
    new-instance v0, Landroidx/media3/exoplayer/source/DefaultCompositeSequenceableLoaderFactory;

    invoke-direct {v0}, Landroidx/media3/exoplayer/source/DefaultCompositeSequenceableLoaderFactory;-><init>()V

    invoke-direct {p0, p1, p2, v0, p3}, Landroidx/media3/exoplayer/source/MergingMediaSource;-><init>(ZZLandroidx/media3/exoplayer/source/CompositeSequenceableLoaderFactory;[Landroidx/media3/exoplayer/source/MediaSource;)V

    .line 141
    return-void
.end method

.method public varargs constructor <init>(Z[Landroidx/media3/exoplayer/source/MediaSource;)V
    .locals 1
    .param p1, "adjustPeriodTimeOffsets"    # Z
    .param p2, "mediaSources"    # [Landroidx/media3/exoplayer/source/MediaSource;

    .line 122
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroidx/media3/exoplayer/source/MergingMediaSource;-><init>(ZZ[Landroidx/media3/exoplayer/source/MediaSource;)V

    .line 123
    return-void
.end method

.method public varargs constructor <init>([Landroidx/media3/exoplayer/source/MediaSource;)V
    .locals 1
    .param p1, "mediaSources"    # [Landroidx/media3/exoplayer/source/MediaSource;

    .line 109
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Landroidx/media3/exoplayer/source/MergingMediaSource;-><init>(Z[Landroidx/media3/exoplayer/source/MediaSource;)V

    .line 110
    return-void
.end method

.method private computePeriodTimeOffsets()V
    .locals 10

    .line 312
    new-instance v0, Landroidx/media3/common/Timeline$Period;

    invoke-direct {v0}, Landroidx/media3/common/Timeline$Period;-><init>()V

    .line 313
    .local v0, "period":Landroidx/media3/common/Timeline$Period;
    const/4 v1, 0x0

    .local v1, "periodIndex":I
    :goto_0
    iget v2, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->periodCount:I

    if-ge v1, v2, :cond_1

    .line 314
    iget-object v2, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->timelines:[Landroidx/media3/common/Timeline;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    .line 315
    invoke-virtual {v2, v1, v0}, Landroidx/media3/common/Timeline;->getPeriod(ILandroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/media3/common/Timeline$Period;->getPositionInWindowUs()J

    move-result-wide v2

    neg-long v2, v2

    .line 316
    .local v2, "primaryWindowOffsetUs":J
    const/4 v4, 0x1

    .local v4, "timelineIndex":I
    :goto_1
    iget-object v5, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->timelines:[Landroidx/media3/common/Timeline;

    array-length v5, v5

    if-ge v4, v5, :cond_0

    .line 317
    iget-object v5, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->timelines:[Landroidx/media3/common/Timeline;

    aget-object v5, v5, v4

    .line 318
    invoke-virtual {v5, v1, v0}, Landroidx/media3/common/Timeline;->getPeriod(ILandroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/media3/common/Timeline$Period;->getPositionInWindowUs()J

    move-result-wide v5

    neg-long v5, v5

    .line 319
    .local v5, "secondaryWindowOffsetUs":J
    iget-object v7, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->periodTimeOffsetsUs:[[J

    aget-object v7, v7, v1

    sub-long v8, v2, v5

    aput-wide v8, v7, v4

    .line 316
    .end local v5    # "secondaryWindowOffsetUs":J
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 313
    .end local v2    # "primaryWindowOffsetUs":J
    .end local v4    # "timelineIndex":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 323
    .end local v1    # "periodIndex":I
    :cond_1
    return-void
.end method

.method private updateClippedDuration()V
    .locals 12

    .line 326
    new-instance v0, Landroidx/media3/common/Timeline$Period;

    invoke-direct {v0}, Landroidx/media3/common/Timeline$Period;-><init>()V

    .line 327
    .local v0, "period":Landroidx/media3/common/Timeline$Period;
    const/4 v1, 0x0

    .local v1, "periodIndex":I
    :goto_0
    iget v2, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->periodCount:I

    if-ge v1, v2, :cond_5

    .line 328
    const-wide/high16 v2, -0x8000000000000000L

    .line 329
    .local v2, "minDurationUs":J
    const/4 v4, 0x0

    .local v4, "timelineIndex":I
    :goto_1
    iget-object v5, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->timelines:[Landroidx/media3/common/Timeline;

    array-length v5, v5

    if-ge v4, v5, :cond_3

    .line 330
    iget-object v5, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->timelines:[Landroidx/media3/common/Timeline;

    aget-object v5, v5, v4

    invoke-virtual {v5, v1, v0}, Landroidx/media3/common/Timeline;->getPeriod(ILandroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/media3/common/Timeline$Period;->getDurationUs()J

    move-result-wide v5

    .line 331
    .local v5, "durationUs":J
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v7, v5, v7

    if-nez v7, :cond_0

    .line 332
    goto :goto_2

    .line 334
    :cond_0
    iget-object v7, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->periodTimeOffsetsUs:[[J

    aget-object v7, v7, v1

    aget-wide v8, v7, v4

    add-long/2addr v8, v5

    .line 335
    .local v8, "adjustedDurationUs":J
    const-wide/high16 v10, -0x8000000000000000L

    cmp-long v7, v2, v10

    if-eqz v7, :cond_1

    cmp-long v7, v8, v2

    if-gez v7, :cond_2

    .line 336
    :cond_1
    move-wide v2, v8

    .line 329
    .end local v5    # "durationUs":J
    .end local v8    # "adjustedDurationUs":J
    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 339
    .end local v4    # "timelineIndex":I
    :cond_3
    iget-object v4, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->timelines:[Landroidx/media3/common/Timeline;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v4, v1}, Landroidx/media3/common/Timeline;->getUidOfPeriod(I)Ljava/lang/Object;

    move-result-object v4

    .line 340
    .local v4, "periodUid":Ljava/lang/Object;
    iget-object v5, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->clippedDurationsUs:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    iget-object v5, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->clippedMediaPeriods:Lcom/google/common/collect/Multimap;

    invoke-interface {v5, v4}, Lcom/google/common/collect/Multimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;

    .line 342
    .local v6, "clippingMediaPeriod":Landroidx/media3/exoplayer/source/ClippingMediaPeriod;
    const-wide/16 v7, 0x0

    invoke-virtual {v6, v7, v8, v2, v3}, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->updateClipping(JJ)V

    .line 343
    .end local v6    # "clippingMediaPeriod":Landroidx/media3/exoplayer/source/ClippingMediaPeriod;
    goto :goto_3

    .line 327
    .end local v2    # "minDurationUs":J
    .end local v4    # "periodUid":Ljava/lang/Object;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 345
    .end local v1    # "periodIndex":I
    :cond_5
    return-void
.end method


# virtual methods
.method public canUpdateMediaItem(Landroidx/media3/common/MediaItem;)Z
    .locals 2
    .param p1, "mediaItem"    # Landroidx/media3/common/MediaItem;

    .line 183
    iget-object v0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->mediaSources:[Landroidx/media3/exoplayer/source/MediaSource;

    array-length v0, v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->mediaSources:[Landroidx/media3/exoplayer/source/MediaSource;

    aget-object v0, v0, v1

    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/source/MediaSource;->canUpdateMediaItem(Landroidx/media3/common/MediaItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public createPeriod(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/upstream/Allocator;J)Landroidx/media3/exoplayer/source/MediaPeriod;
    .locals 10
    .param p1, "id"    # Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .param p2, "allocator"    # Landroidx/media3/exoplayer/upstream/Allocator;
    .param p3, "startPositionUs"    # J

    .line 209
    iget-object v0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->mediaSources:[Landroidx/media3/exoplayer/source/MediaSource;

    array-length v0, v0

    new-array v0, v0, [Landroidx/media3/exoplayer/source/MediaPeriod;

    .line 210
    .local v0, "periods":[Landroidx/media3/exoplayer/source/MediaPeriod;
    iget-object v1, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->timelines:[Landroidx/media3/common/Timeline;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget-object v2, p1, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Landroidx/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v1

    .line 211
    .local v1, "periodIndex":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 212
    iget-object v3, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->timelines:[Landroidx/media3/common/Timeline;

    aget-object v3, v3, v2

    invoke-virtual {v3, v1}, Landroidx/media3/common/Timeline;->getUidOfPeriod(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->copyWithPeriodUid(Ljava/lang/Object;)Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-result-object v3

    .line 213
    .local v3, "mediaPeriodId":Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    iget-object v4, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->mediaSources:[Landroidx/media3/exoplayer/source/MediaSource;

    aget-object v4, v4, v2

    iget-object v5, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->periodTimeOffsetsUs:[[J

    aget-object v5, v5, v1

    aget-wide v6, v5, v2

    sub-long v5, p3, v6

    .line 214
    invoke-interface {v4, v3, p2, v5, v6}, Landroidx/media3/exoplayer/source/MediaSource;->createPeriod(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/upstream/Allocator;J)Landroidx/media3/exoplayer/source/MediaPeriod;

    move-result-object v4

    aput-object v4, v0, v2

    .line 216
    iget-object v4, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->mediaPeriods:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    new-instance v5, Landroidx/media3/exoplayer/source/MergingMediaSource$MediaPeriodAndId;

    aget-object v6, v0, v2

    const/4 v7, 0x0

    invoke-direct {v5, v3, v6, v7}, Landroidx/media3/exoplayer/source/MergingMediaSource$MediaPeriodAndId;-><init>(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/source/MediaPeriod;Landroidx/media3/exoplayer/source/MergingMediaSource$1;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    .end local v3    # "mediaPeriodId":Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 218
    .end local v2    # "i":I
    :cond_0
    new-instance v4, Landroidx/media3/exoplayer/source/MergingMediaPeriod;

    iget-object v2, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->compositeSequenceableLoaderFactory:Landroidx/media3/exoplayer/source/CompositeSequenceableLoaderFactory;

    iget-object v3, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->periodTimeOffsetsUs:[[J

    aget-object v3, v3, v1

    invoke-direct {v4, v2, v3, v0}, Landroidx/media3/exoplayer/source/MergingMediaPeriod;-><init>(Landroidx/media3/exoplayer/source/CompositeSequenceableLoaderFactory;[J[Landroidx/media3/exoplayer/source/MediaPeriod;)V

    .line 221
    .local v4, "mediaPeriod":Landroidx/media3/exoplayer/source/MediaPeriod;
    iget-boolean v2, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->clipDurations:Z

    if-eqz v2, :cond_1

    .line 222
    new-instance v2, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;

    iget-object v3, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->clippedDurationsUs:Ljava/util/Map;

    iget-object v5, p1, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 227
    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-static {v3}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const/4 v5, 0x1

    const-wide/16 v6, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;-><init>(Landroidx/media3/exoplayer/source/MediaPeriod;ZJJ)V

    .line 228
    .end local v4    # "mediaPeriod":Landroidx/media3/exoplayer/source/MediaPeriod;
    .local v2, "mediaPeriod":Landroidx/media3/exoplayer/source/MediaPeriod;
    iget-object v3, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->clippedMediaPeriods:Lcom/google/common/collect/Multimap;

    iget-object v4, p1, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    move-object v5, v2

    check-cast v5, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;

    invoke-interface {v3, v4, v5}, Lcom/google/common/collect/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_1

    .line 221
    .end local v2    # "mediaPeriod":Landroidx/media3/exoplayer/source/MediaPeriod;
    .restart local v4    # "mediaPeriod":Landroidx/media3/exoplayer/source/MediaPeriod;
    :cond_1
    move-object v2, v4

    .line 230
    .end local v4    # "mediaPeriod":Landroidx/media3/exoplayer/source/MediaPeriod;
    .restart local v2    # "mediaPeriod":Landroidx/media3/exoplayer/source/MediaPeriod;
    :goto_1
    return-object v2
.end method

.method public getMediaItem()Landroidx/media3/common/MediaItem;
    .locals 2

    .line 178
    iget-object v0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->mediaSources:[Landroidx/media3/exoplayer/source/MediaSource;

    array-length v0, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->mediaSources:[Landroidx/media3/exoplayer/source/MediaSource;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0}, Landroidx/media3/exoplayer/source/MediaSource;->getMediaItem()Landroidx/media3/common/MediaItem;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Landroidx/media3/exoplayer/source/MergingMediaSource;->PLACEHOLDER_MEDIA_ITEM:Landroidx/media3/common/MediaItem;

    :goto_0
    return-object v0
.end method

.method protected getMediaPeriodIdForChildMediaPeriodId(Ljava/lang/Integer;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .locals 4
    .param p1, "childSourceId"    # Ljava/lang/Integer;
    .param p2, "mediaPeriodId"    # Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 302
    iget-object v0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->mediaPeriods:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 303
    .local v0, "childMediaPeriodIds":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/source/MergingMediaSource$MediaPeriodAndId;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 304
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/exoplayer/source/MergingMediaSource$MediaPeriodAndId;

    invoke-static {v2}, Landroidx/media3/exoplayer/source/MergingMediaSource$MediaPeriodAndId;->access$200(Landroidx/media3/exoplayer/source/MergingMediaSource$MediaPeriodAndId;)Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 305
    iget-object v2, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->mediaPeriods:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/exoplayer/source/MergingMediaSource$MediaPeriodAndId;

    invoke-static {v2}, Landroidx/media3/exoplayer/source/MergingMediaSource$MediaPeriodAndId;->access$200(Landroidx/media3/exoplayer/source/MergingMediaSource$MediaPeriodAndId;)Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-result-object v2

    return-object v2

    .line 303
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 308
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method protected bridge synthetic getMediaPeriodIdForChildMediaPeriodId(Ljava/lang/Object;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .locals 0

    .line 54
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/source/MergingMediaSource;->getMediaPeriodIdForChildMediaPeriodId(Ljava/lang/Integer;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-result-object p1

    return-object p1
.end method

.method public maybeThrowSourceInfoRefreshError()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 201
    iget-object v0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->mergeError:Landroidx/media3/exoplayer/source/MergingMediaSource$IllegalMergeException;

    if-nez v0, :cond_0

    .line 204
    invoke-super {p0}, Landroidx/media3/exoplayer/source/CompositeMediaSource;->maybeThrowSourceInfoRefreshError()V

    .line 205
    return-void

    .line 202
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->mergeError:Landroidx/media3/exoplayer/source/MergingMediaSource$IllegalMergeException;

    throw v0
.end method

.method protected onChildSourceInfoRefreshed(Ljava/lang/Integer;Landroidx/media3/exoplayer/source/MediaSource;Landroidx/media3/common/Timeline;)V
    .locals 5
    .param p1, "childSourceId"    # Ljava/lang/Integer;
    .param p2, "mediaSource"    # Landroidx/media3/exoplayer/source/MediaSource;
    .param p3, "newTimeline"    # Landroidx/media3/common/Timeline;

    .line 271
    iget-object v0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->mergeError:Landroidx/media3/exoplayer/source/MergingMediaSource$IllegalMergeException;

    if-eqz v0, :cond_0

    .line 272
    return-void

    .line 274
    :cond_0
    iget v0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->periodCount:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 275
    invoke-virtual {p3}, Landroidx/media3/common/Timeline;->getPeriodCount()I

    move-result v0

    iput v0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->periodCount:I

    goto :goto_0

    .line 276
    :cond_1
    invoke-virtual {p3}, Landroidx/media3/common/Timeline;->getPeriodCount()I

    move-result v0

    iget v1, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->periodCount:I

    if-eq v0, v1, :cond_2

    .line 277
    new-instance v0, Landroidx/media3/exoplayer/source/MergingMediaSource$IllegalMergeException;

    invoke-direct {v0, v2}, Landroidx/media3/exoplayer/source/MergingMediaSource$IllegalMergeException;-><init>(I)V

    iput-object v0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->mergeError:Landroidx/media3/exoplayer/source/MergingMediaSource$IllegalMergeException;

    .line 278
    return-void

    .line 280
    :cond_2
    :goto_0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->periodTimeOffsetsUs:[[J

    array-length v0, v0

    if-nez v0, :cond_3

    .line 281
    iget v0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->periodCount:I

    iget-object v1, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->timelines:[Landroidx/media3/common/Timeline;

    array-length v1, v1

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x1

    aput v1, v3, v4

    aput v0, v3, v2

    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[J

    iput-object v0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->periodTimeOffsetsUs:[[J

    .line 283
    :cond_3
    iget-object v0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->pendingTimelineSources:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 284
    iget-object v0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->timelines:[Landroidx/media3/common/Timeline;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aput-object p3, v0, v1

    .line 285
    iget-object v0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->pendingTimelineSources:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 286
    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->adjustPeriodTimeOffsets:Z

    if-eqz v0, :cond_4

    .line 287
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/MergingMediaSource;->computePeriodTimeOffsets()V

    .line 289
    :cond_4
    iget-object v0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->timelines:[Landroidx/media3/common/Timeline;

    aget-object v0, v0, v2

    .line 290
    .local v0, "mergedTimeline":Landroidx/media3/common/Timeline;
    iget-boolean v1, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->clipDurations:Z

    if-eqz v1, :cond_5

    .line 291
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/MergingMediaSource;->updateClippedDuration()V

    .line 292
    new-instance v1, Landroidx/media3/exoplayer/source/MergingMediaSource$ClippedTimeline;

    iget-object v2, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->clippedDurationsUs:Ljava/util/Map;

    invoke-direct {v1, v0, v2}, Landroidx/media3/exoplayer/source/MergingMediaSource$ClippedTimeline;-><init>(Landroidx/media3/common/Timeline;Ljava/util/Map;)V

    move-object v0, v1

    .line 294
    :cond_5
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/source/MergingMediaSource;->refreshSourceInfo(Landroidx/media3/common/Timeline;)V

    .line 296
    .end local v0    # "mergedTimeline":Landroidx/media3/common/Timeline;
    :cond_6
    return-void
.end method

.method protected bridge synthetic onChildSourceInfoRefreshed(Ljava/lang/Object;Landroidx/media3/exoplayer/source/MediaSource;Landroidx/media3/common/Timeline;)V
    .locals 0

    .line 54
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/media3/exoplayer/source/MergingMediaSource;->onChildSourceInfoRefreshed(Ljava/lang/Integer;Landroidx/media3/exoplayer/source/MediaSource;Landroidx/media3/common/Timeline;)V

    return-void
.end method

.method protected prepareSourceInternal(Landroidx/media3/datasource/TransferListener;)V
    .locals 3
    .param p1, "mediaTransferListener"    # Landroidx/media3/datasource/TransferListener;

    .line 193
    invoke-super {p0, p1}, Landroidx/media3/exoplayer/source/CompositeMediaSource;->prepareSourceInternal(Landroidx/media3/datasource/TransferListener;)V

    .line 194
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->mediaSources:[Landroidx/media3/exoplayer/source/MediaSource;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 195
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->mediaSources:[Landroidx/media3/exoplayer/source/MediaSource;

    aget-object v2, v2, v0

    invoke-virtual {p0, v1, v2}, Landroidx/media3/exoplayer/source/MergingMediaSource;->prepareChildSource(Ljava/lang/Object;Landroidx/media3/exoplayer/source/MediaSource;)V

    .line 194
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 197
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public releasePeriod(Landroidx/media3/exoplayer/source/MediaPeriod;)V
    .locals 5
    .param p1, "mediaPeriod"    # Landroidx/media3/exoplayer/source/MediaPeriod;

    .line 235
    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->clipDurations:Z

    if-eqz v0, :cond_2

    .line 236
    move-object v0, p1

    check-cast v0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;

    .line 237
    .local v0, "clippingMediaPeriod":Landroidx/media3/exoplayer/source/ClippingMediaPeriod;
    iget-object v1, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->clippedMediaPeriods:Lcom/google/common/collect/Multimap;

    invoke-interface {v1}, Lcom/google/common/collect/Multimap;->entries()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 238
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Landroidx/media3/exoplayer/source/ClippingMediaPeriod;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 239
    iget-object v1, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->clippedMediaPeriods:Lcom/google/common/collect/Multimap;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lcom/google/common/collect/Multimap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 240
    goto :goto_1

    .line 242
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Landroidx/media3/exoplayer/source/ClippingMediaPeriod;>;"
    :cond_0
    goto :goto_0

    .line 243
    :cond_1
    :goto_1
    iget-object p1, v0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    .line 245
    .end local v0    # "clippingMediaPeriod":Landroidx/media3/exoplayer/source/ClippingMediaPeriod;
    :cond_2
    move-object v0, p1

    check-cast v0, Landroidx/media3/exoplayer/source/MergingMediaPeriod;

    .line 246
    .local v0, "mergingPeriod":Landroidx/media3/exoplayer/source/MergingMediaPeriod;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v2, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->mediaSources:[Landroidx/media3/exoplayer/source/MediaSource;

    array-length v2, v2

    if-ge v1, v2, :cond_5

    .line 247
    iget-object v2, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->mediaPeriods:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 248
    .local v2, "mediaPeriodsForSource":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/source/MergingMediaSource$MediaPeriodAndId;>;"
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 249
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/exoplayer/source/MergingMediaSource$MediaPeriodAndId;

    invoke-static {v4}, Landroidx/media3/exoplayer/source/MergingMediaSource$MediaPeriodAndId;->access$100(Landroidx/media3/exoplayer/source/MergingMediaSource$MediaPeriodAndId;)Landroidx/media3/exoplayer/source/MediaPeriod;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 250
    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 251
    goto :goto_4

    .line 248
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 254
    .end local v3    # "j":I
    :cond_4
    :goto_4
    iget-object v3, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->mediaSources:[Landroidx/media3/exoplayer/source/MediaSource;

    aget-object v3, v3, v1

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/source/MergingMediaPeriod;->getChildPeriod(I)Landroidx/media3/exoplayer/source/MediaPeriod;

    move-result-object v4

    invoke-interface {v3, v4}, Landroidx/media3/exoplayer/source/MediaSource;->releasePeriod(Landroidx/media3/exoplayer/source/MediaPeriod;)V

    .line 246
    .end local v2    # "mediaPeriodsForSource":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/source/MergingMediaSource$MediaPeriodAndId;>;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 256
    .end local v1    # "i":I
    :cond_5
    return-void
.end method

.method protected releaseSourceInternal()V
    .locals 2

    .line 260
    invoke-super {p0}, Landroidx/media3/exoplayer/source/CompositeMediaSource;->releaseSourceInternal()V

    .line 261
    iget-object v0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->timelines:[Landroidx/media3/common/Timeline;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 262
    const/4 v0, -0x1

    iput v0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->periodCount:I

    .line 263
    iput-object v1, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->mergeError:Landroidx/media3/exoplayer/source/MergingMediaSource$IllegalMergeException;

    .line 264
    iget-object v0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->pendingTimelineSources:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 265
    iget-object v0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->pendingTimelineSources:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->mediaSources:[Landroidx/media3/exoplayer/source/MediaSource;

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 266
    return-void
.end method

.method public updateMediaItem(Landroidx/media3/common/MediaItem;)V
    .locals 2
    .param p1, "mediaItem"    # Landroidx/media3/common/MediaItem;

    .line 188
    iget-object v0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->mediaSources:[Landroidx/media3/exoplayer/source/MediaSource;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/source/MediaSource;->updateMediaItem(Landroidx/media3/common/MediaItem;)V

    .line 189
    return-void
.end method
