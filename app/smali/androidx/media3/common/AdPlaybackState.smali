.class public final Landroidx/media3/common/AdPlaybackState;
.super Ljava/lang/Object;
.source "AdPlaybackState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/common/AdPlaybackState$AdGroup;,
        Landroidx/media3/common/AdPlaybackState$AdState;
    }
.end annotation


# static fields
.field public static final AD_STATE_AVAILABLE:I = 0x1

.field public static final AD_STATE_ERROR:I = 0x4

.field public static final AD_STATE_PLAYED:I = 0x3

.field public static final AD_STATE_SKIPPED:I = 0x2

.field public static final AD_STATE_UNAVAILABLE:I

.field private static final FIELD_AD_GROUPS:Ljava/lang/String;

.field private static final FIELD_AD_RESUME_POSITION_US:Ljava/lang/String;

.field private static final FIELD_CONTENT_DURATION_US:Ljava/lang/String;

.field private static final FIELD_REMOVED_AD_GROUP_COUNT:Ljava/lang/String;

.field public static final NONE:Landroidx/media3/common/AdPlaybackState;

.field private static final REMOVED_AD_GROUP:Landroidx/media3/common/AdPlaybackState$AdGroup;


# instance fields
.field public final adGroupCount:I

.field private final adGroups:[Landroidx/media3/common/AdPlaybackState$AdGroup;

.field public final adResumePositionUs:J

.field public final adsId:Ljava/lang/Object;

.field public final contentDurationUs:J

.field public final removedAdGroupCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 616
    new-instance v8, Landroidx/media3/common/AdPlaybackState;

    const/4 v9, 0x0

    new-array v2, v9, [Landroidx/media3/common/AdPlaybackState$AdGroup;

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v7, 0x0

    const/4 v1, 0x0

    const-wide/16 v3, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Landroidx/media3/common/AdPlaybackState;-><init>(Ljava/lang/Object;[Landroidx/media3/common/AdPlaybackState$AdGroup;JJI)V

    sput-object v8, Landroidx/media3/common/AdPlaybackState;->NONE:Landroidx/media3/common/AdPlaybackState;

    .line 624
    new-instance v0, Landroidx/media3/common/AdPlaybackState$AdGroup;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/media3/common/AdPlaybackState$AdGroup;-><init>(J)V

    invoke-virtual {v0, v9}, Landroidx/media3/common/AdPlaybackState$AdGroup;->withAdCount(I)Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/AdPlaybackState;->REMOVED_AD_GROUP:Landroidx/media3/common/AdPlaybackState$AdGroup;

    .line 1235
    const/4 v0, 0x1

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/AdPlaybackState;->FIELD_AD_GROUPS:Ljava/lang/String;

    .line 1236
    const/4 v0, 0x2

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/AdPlaybackState;->FIELD_AD_RESUME_POSITION_US:Ljava/lang/String;

    .line 1237
    const/4 v0, 0x3

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/AdPlaybackState;->FIELD_CONTENT_DURATION_US:Ljava/lang/String;

    .line 1238
    const/4 v0, 0x4

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/AdPlaybackState;->FIELD_REMOVED_AD_GROUP_COUNT:Ljava/lang/String;

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/Object;[J)V
    .locals 8
    .param p1, "adsId"    # Ljava/lang/Object;
    .param p2, "adGroupTimesUs"    # [J

    .line 660
    nop

    .line 662
    invoke-static {p2}, Landroidx/media3/common/AdPlaybackState;->createEmptyAdGroups([J)[Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object v2

    .line 660
    const-wide/16 v3, 0x0

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Landroidx/media3/common/AdPlaybackState;-><init>(Ljava/lang/Object;[Landroidx/media3/common/AdPlaybackState$AdGroup;JJI)V

    .line 666
    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;[Landroidx/media3/common/AdPlaybackState$AdGroup;JJI)V
    .locals 1
    .param p1, "adsId"    # Ljava/lang/Object;
    .param p2, "adGroups"    # [Landroidx/media3/common/AdPlaybackState$AdGroup;
    .param p3, "adResumePositionUs"    # J
    .param p5, "contentDurationUs"    # J
    .param p7, "removedAdGroupCount"    # I

    .line 673
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 674
    iput-object p1, p0, Landroidx/media3/common/AdPlaybackState;->adsId:Ljava/lang/Object;

    .line 675
    iput-wide p3, p0, Landroidx/media3/common/AdPlaybackState;->adResumePositionUs:J

    .line 676
    iput-wide p5, p0, Landroidx/media3/common/AdPlaybackState;->contentDurationUs:J

    .line 677
    array-length v0, p2

    add-int/2addr v0, p7

    iput v0, p0, Landroidx/media3/common/AdPlaybackState;->adGroupCount:I

    .line 678
    iput-object p2, p0, Landroidx/media3/common/AdPlaybackState;->adGroups:[Landroidx/media3/common/AdPlaybackState$AdGroup;

    .line 679
    iput p7, p0, Landroidx/media3/common/AdPlaybackState;->removedAdGroupCount:I

    .line 680
    return-void
.end method

.method private static createEmptyAdGroups([J)[Landroidx/media3/common/AdPlaybackState$AdGroup;
    .locals 5
    .param p0, "adGroupTimesUs"    # [J

    .line 1291
    array-length v0, p0

    new-array v0, v0, [Landroidx/media3/common/AdPlaybackState$AdGroup;

    .line 1292
    .local v0, "adGroups":[Landroidx/media3/common/AdPlaybackState$AdGroup;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 1293
    new-instance v2, Landroidx/media3/common/AdPlaybackState$AdGroup;

    aget-wide v3, p0, v1

    invoke-direct {v2, v3, v4}, Landroidx/media3/common/AdPlaybackState$AdGroup;-><init>(J)V

    aput-object v2, v0, v1

    .line 1292
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1295
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public static fromAdPlaybackState(Ljava/lang/Object;Landroidx/media3/common/AdPlaybackState;)Landroidx/media3/common/AdPlaybackState;
    .locals 17
    .param p0, "adsId"    # Ljava/lang/Object;
    .param p1, "adPlaybackState"    # Landroidx/media3/common/AdPlaybackState;

    .line 1114
    move-object/from16 v0, p1

    iget v1, v0, Landroidx/media3/common/AdPlaybackState;->adGroupCount:I

    iget v2, v0, Landroidx/media3/common/AdPlaybackState;->removedAdGroupCount:I

    sub-int/2addr v1, v2

    new-array v1, v1, [Landroidx/media3/common/AdPlaybackState$AdGroup;

    .line 1116
    .local v1, "adGroups":[Landroidx/media3/common/AdPlaybackState$AdGroup;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 1117
    iget-object v3, v0, Landroidx/media3/common/AdPlaybackState;->adGroups:[Landroidx/media3/common/AdPlaybackState$AdGroup;

    aget-object v3, v3, v2

    .line 1118
    .local v3, "adGroup":Landroidx/media3/common/AdPlaybackState$AdGroup;
    new-instance v16, Landroidx/media3/common/AdPlaybackState$AdGroup;

    iget-wide v5, v3, Landroidx/media3/common/AdPlaybackState$AdGroup;->timeUs:J

    iget v7, v3, Landroidx/media3/common/AdPlaybackState$AdGroup;->count:I

    iget v8, v3, Landroidx/media3/common/AdPlaybackState$AdGroup;->originalCount:I

    iget-object v4, v3, Landroidx/media3/common/AdPlaybackState$AdGroup;->states:[I

    iget-object v9, v3, Landroidx/media3/common/AdPlaybackState$AdGroup;->states:[I

    array-length v9, v9

    .line 1123
    invoke-static {v4, v9}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v9

    iget-object v4, v3, Landroidx/media3/common/AdPlaybackState$AdGroup;->mediaItems:[Landroidx/media3/common/MediaItem;

    iget-object v10, v3, Landroidx/media3/common/AdPlaybackState$AdGroup;->mediaItems:[Landroidx/media3/common/MediaItem;

    array-length v10, v10

    .line 1124
    invoke-static {v4, v10}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    move-object v10, v4

    check-cast v10, [Landroidx/media3/common/MediaItem;

    iget-object v4, v3, Landroidx/media3/common/AdPlaybackState$AdGroup;->durationsUs:[J

    iget-object v11, v3, Landroidx/media3/common/AdPlaybackState$AdGroup;->durationsUs:[J

    array-length v11, v11

    .line 1125
    invoke-static {v4, v11}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v11

    iget-wide v12, v3, Landroidx/media3/common/AdPlaybackState$AdGroup;->contentResumeOffsetUs:J

    iget-boolean v14, v3, Landroidx/media3/common/AdPlaybackState$AdGroup;->isServerSideInserted:Z

    const/4 v15, 0x0

    move-object/from16 v4, v16

    invoke-direct/range {v4 .. v15}, Landroidx/media3/common/AdPlaybackState$AdGroup;-><init>(JII[I[Landroidx/media3/common/MediaItem;[JJZLandroidx/media3/common/AdPlaybackState$1;)V

    aput-object v16, v1, v2

    .line 1116
    .end local v3    # "adGroup":Landroidx/media3/common/AdPlaybackState$AdGroup;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1129
    .end local v2    # "i":I
    :cond_0
    new-instance v10, Landroidx/media3/common/AdPlaybackState;

    iget-wide v5, v0, Landroidx/media3/common/AdPlaybackState;->adResumePositionUs:J

    iget-wide v7, v0, Landroidx/media3/common/AdPlaybackState;->contentDurationUs:J

    iget v9, v0, Landroidx/media3/common/AdPlaybackState;->removedAdGroupCount:I

    move-object v2, v10

    move-object/from16 v3, p0

    move-object v4, v1

    invoke-direct/range {v2 .. v9}, Landroidx/media3/common/AdPlaybackState;-><init>(Ljava/lang/Object;[Landroidx/media3/common/AdPlaybackState$AdGroup;JJI)V

    return-object v10
.end method

.method public static fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/AdPlaybackState;
    .locals 17
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 1270
    move-object/from16 v0, p0

    sget-object v1, Landroidx/media3/common/AdPlaybackState;->FIELD_AD_GROUPS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1272
    .local v1, "adGroupBundleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    if-nez v1, :cond_0

    .line 1273
    const/4 v2, 0x0

    new-array v2, v2, [Landroidx/media3/common/AdPlaybackState$AdGroup;

    .local v2, "adGroups":[Landroidx/media3/common/AdPlaybackState$AdGroup;
    goto :goto_1

    .line 1275
    .end local v2    # "adGroups":[Landroidx/media3/common/AdPlaybackState$AdGroup;
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroidx/media3/common/AdPlaybackState$AdGroup;

    .line 1276
    .restart local v2    # "adGroups":[Landroidx/media3/common/AdPlaybackState$AdGroup;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 1277
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    invoke-static {v4}, Landroidx/media3/common/AdPlaybackState$AdGroup;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1276
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1280
    .end local v3    # "i":I
    :cond_1
    :goto_1
    sget-object v3, Landroidx/media3/common/AdPlaybackState;->FIELD_AD_RESUME_POSITION_US:Ljava/lang/String;

    sget-object v4, Landroidx/media3/common/AdPlaybackState;->NONE:Landroidx/media3/common/AdPlaybackState;

    iget-wide v4, v4, Landroidx/media3/common/AdPlaybackState;->adResumePositionUs:J

    .line 1281
    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v12

    .line 1282
    .local v12, "adResumePositionUs":J
    sget-object v3, Landroidx/media3/common/AdPlaybackState;->FIELD_CONTENT_DURATION_US:Ljava/lang/String;

    sget-object v4, Landroidx/media3/common/AdPlaybackState;->NONE:Landroidx/media3/common/AdPlaybackState;

    iget-wide v4, v4, Landroidx/media3/common/AdPlaybackState;->contentDurationUs:J

    .line 1283
    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v14

    .line 1284
    .local v14, "contentDurationUs":J
    sget-object v3, Landroidx/media3/common/AdPlaybackState;->FIELD_REMOVED_AD_GROUP_COUNT:Ljava/lang/String;

    sget-object v4, Landroidx/media3/common/AdPlaybackState;->NONE:Landroidx/media3/common/AdPlaybackState;

    iget v4, v4, Landroidx/media3/common/AdPlaybackState;->removedAdGroupCount:I

    .line 1285
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 1286
    .local v3, "removedAdGroupCount":I
    new-instance v16, Landroidx/media3/common/AdPlaybackState;

    const/4 v5, 0x0

    move-object/from16 v4, v16

    move-object v6, v2

    move-wide v7, v12

    move-wide v9, v14

    move v11, v3

    invoke-direct/range {v4 .. v11}, Landroidx/media3/common/AdPlaybackState;-><init>(Ljava/lang/Object;[Landroidx/media3/common/AdPlaybackState$AdGroup;JJI)V

    return-object v16
.end method

.method private isPositionBeforeAdGroup(JJI)Z
    .locals 8
    .param p1, "positionUs"    # J
    .param p3, "periodDurationUs"    # J
    .param p5, "adGroupIndex"    # I

    .line 1217
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 1219
    return v3

    .line 1221
    :cond_0
    invoke-virtual {p0, p5}, Landroidx/media3/common/AdPlaybackState;->getAdGroup(I)Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object v2

    .line 1222
    .local v2, "adGroup":Landroidx/media3/common/AdPlaybackState$AdGroup;
    iget-wide v4, v2, Landroidx/media3/common/AdPlaybackState$AdGroup;->timeUs:J

    .line 1223
    .local v4, "adGroupPositionUs":J
    cmp-long v0, v4, v0

    const/4 v1, 0x1

    if-nez v0, :cond_4

    .line 1228
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p3, v6

    if-eqz v0, :cond_2

    iget-boolean v0, v2, Landroidx/media3/common/AdPlaybackState$AdGroup;->isServerSideInserted:Z

    if-eqz v0, :cond_1

    iget v0, v2, Landroidx/media3/common/AdPlaybackState$AdGroup;->count:I

    const/4 v6, -0x1

    if-eq v0, v6, :cond_2

    :cond_1
    cmp-long v0, p1, p3

    if-gez v0, :cond_3

    :cond_2
    move v3, v1

    :cond_3
    return v3

    .line 1232
    :cond_4
    cmp-long v0, p1, v4

    if-gez v0, :cond_5

    move v3, v1

    :cond_5
    return v3
.end method


# virtual methods
.method public endsWithLivePostrollPlaceHolder()Z
    .locals 3

    .line 1092
    iget v0, p0, Landroidx/media3/common/AdPlaybackState;->adGroupCount:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 1093
    .local v0, "adGroupIndex":I
    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Landroidx/media3/common/AdPlaybackState;->isLivePostrollPlaceholder(I)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 1139
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 1140
    return v0

    .line 1142
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 1145
    :cond_1
    move-object v2, p1

    check-cast v2, Landroidx/media3/common/AdPlaybackState;

    .line 1146
    .local v2, "that":Landroidx/media3/common/AdPlaybackState;
    iget-object v3, p0, Landroidx/media3/common/AdPlaybackState;->adsId:Ljava/lang/Object;

    iget-object v4, v2, Landroidx/media3/common/AdPlaybackState;->adsId:Ljava/lang/Object;

    invoke-static {v3, v4}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Landroidx/media3/common/AdPlaybackState;->adGroupCount:I

    iget v4, v2, Landroidx/media3/common/AdPlaybackState;->adGroupCount:I

    if-ne v3, v4, :cond_2

    iget-wide v3, p0, Landroidx/media3/common/AdPlaybackState;->adResumePositionUs:J

    iget-wide v5, v2, Landroidx/media3/common/AdPlaybackState;->adResumePositionUs:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget-wide v3, p0, Landroidx/media3/common/AdPlaybackState;->contentDurationUs:J

    iget-wide v5, v2, Landroidx/media3/common/AdPlaybackState;->contentDurationUs:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget v3, p0, Landroidx/media3/common/AdPlaybackState;->removedAdGroupCount:I

    iget v4, v2, Landroidx/media3/common/AdPlaybackState;->removedAdGroupCount:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroidx/media3/common/AdPlaybackState;->adGroups:[Landroidx/media3/common/AdPlaybackState$AdGroup;

    iget-object v4, v2, Landroidx/media3/common/AdPlaybackState;->adGroups:[Landroidx/media3/common/AdPlaybackState$AdGroup;

    .line 1151
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 1146
    :goto_0
    return v0

    .line 1143
    .end local v2    # "that":Landroidx/media3/common/AdPlaybackState;
    :cond_3
    :goto_1
    return v1
.end method

.method public getAdGroup(I)Landroidx/media3/common/AdPlaybackState$AdGroup;
    .locals 2
    .param p1, "adGroupIndex"    # I

    .line 684
    iget v0, p0, Landroidx/media3/common/AdPlaybackState;->removedAdGroupCount:I

    if-ge p1, v0, :cond_0

    .line 685
    sget-object v0, Landroidx/media3/common/AdPlaybackState;->REMOVED_AD_GROUP:Landroidx/media3/common/AdPlaybackState$AdGroup;

    goto :goto_0

    .line 686
    :cond_0
    iget-object v0, p0, Landroidx/media3/common/AdPlaybackState;->adGroups:[Landroidx/media3/common/AdPlaybackState$AdGroup;

    iget v1, p0, Landroidx/media3/common/AdPlaybackState;->removedAdGroupCount:I

    sub-int v1, p1, v1

    aget-object v0, v0, v1

    .line 684
    :goto_0
    return-object v0
.end method

.method public getAdGroupIndexAfterPositionUs(JJ)I
    .locals 6
    .param p1, "positionUs"    # J
    .param p3, "periodDurationUs"    # J

    .line 724
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    const/4 v3, -0x1

    if-eqz v2, :cond_5

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p3, v4

    if-eqz v2, :cond_0

    cmp-long v2, p1, p3

    if-ltz v2, :cond_0

    goto :goto_1

    .line 730
    :cond_0
    iget v2, p0, Landroidx/media3/common/AdPlaybackState;->removedAdGroupCount:I

    .line 731
    .local v2, "index":I
    :goto_0
    iget v4, p0, Landroidx/media3/common/AdPlaybackState;->adGroupCount:I

    if-ge v2, v4, :cond_3

    .line 732
    invoke-virtual {p0, v2}, Landroidx/media3/common/AdPlaybackState;->getAdGroup(I)Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object v4

    iget-wide v4, v4, Landroidx/media3/common/AdPlaybackState$AdGroup;->timeUs:J

    cmp-long v4, v4, v0

    if-eqz v4, :cond_1

    .line 733
    invoke-virtual {p0, v2}, Landroidx/media3/common/AdPlaybackState;->getAdGroup(I)Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object v4

    iget-wide v4, v4, Landroidx/media3/common/AdPlaybackState$AdGroup;->timeUs:J

    cmp-long v4, v4, p1

    if-lez v4, :cond_2

    .line 734
    :cond_1
    invoke-virtual {p0, v2}, Landroidx/media3/common/AdPlaybackState;->getAdGroup(I)Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/media3/common/AdPlaybackState$AdGroup;->shouldPlayAdGroup()Z

    move-result v4

    if-nez v4, :cond_3

    .line 735
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 737
    :cond_3
    iget v0, p0, Landroidx/media3/common/AdPlaybackState;->adGroupCount:I

    if-ge v2, v0, :cond_4

    move v3, v2

    :cond_4
    return v3

    .line 726
    .end local v2    # "index":I
    :cond_5
    :goto_1
    return v3
.end method

.method public getAdGroupIndexForPositionUs(JJ)I
    .locals 7
    .param p1, "positionUs"    # J
    .param p3, "periodDurationUs"    # J

    .line 704
    iget v0, p0, Landroidx/media3/common/AdPlaybackState;->adGroupCount:I

    add-int/lit8 v0, v0, -0x1

    .line 705
    .local v0, "index":I
    invoke-virtual {p0, v0}, Landroidx/media3/common/AdPlaybackState;->isLivePostrollPlaceholder(I)Z

    move-result v1

    sub-int/2addr v0, v1

    .line 706
    :goto_0
    if-ltz v0, :cond_0

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move v6, v0

    invoke-direct/range {v1 .. v6}, Landroidx/media3/common/AdPlaybackState;->isPositionBeforeAdGroup(JJI)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 707
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 709
    :cond_0
    if-ltz v0, :cond_1

    invoke-virtual {p0, v0}, Landroidx/media3/common/AdPlaybackState;->getAdGroup(I)Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media3/common/AdPlaybackState$AdGroup;->hasUnplayedAds()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v0

    goto :goto_1

    :cond_1
    const/4 v1, -0x1

    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 4

    .line 1156
    iget v0, p0, Landroidx/media3/common/AdPlaybackState;->adGroupCount:I

    .line 1157
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroidx/media3/common/AdPlaybackState;->adsId:Ljava/lang/Object;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Landroidx/media3/common/AdPlaybackState;->adsId:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v1, v2

    .line 1158
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-wide v2, p0, Landroidx/media3/common/AdPlaybackState;->adResumePositionUs:J

    long-to-int v2, v2

    add-int/2addr v0, v2

    .line 1159
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Landroidx/media3/common/AdPlaybackState;->contentDurationUs:J

    long-to-int v2, v2

    add-int/2addr v1, v2

    .line 1160
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroidx/media3/common/AdPlaybackState;->removedAdGroupCount:I

    add-int/2addr v0, v2

    .line 1161
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroidx/media3/common/AdPlaybackState;->adGroups:[Landroidx/media3/common/AdPlaybackState$AdGroup;

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 1162
    .end local v0    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public isAdInErrorState(II)Z
    .locals 4
    .param p1, "adGroupIndex"    # I
    .param p2, "adIndexInAdGroup"    # I

    .line 743
    iget v0, p0, Landroidx/media3/common/AdPlaybackState;->adGroupCount:I

    const/4 v1, 0x0

    if-lt p1, v0, :cond_0

    .line 744
    return v1

    .line 746
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/media3/common/AdPlaybackState;->getAdGroup(I)Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object v0

    .line 747
    .local v0, "adGroup":Landroidx/media3/common/AdPlaybackState$AdGroup;
    iget v2, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->count:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    iget v2, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->count:I

    if-lt p2, v2, :cond_1

    goto :goto_0

    .line 750
    :cond_1
    iget-object v2, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->states:[I

    aget v2, v2, p2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1

    .line 748
    :cond_3
    :goto_0
    return v1
.end method

.method public isLivePostrollPlaceholder(I)Z
    .locals 2
    .param p1, "adGroupIndex"    # I

    .line 1103
    iget v0, p0, Landroidx/media3/common/AdPlaybackState;->adGroupCount:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ne p1, v0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/media3/common/AdPlaybackState;->getAdGroup(I)Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/AdPlaybackState$AdGroup;->access$000(Landroidx/media3/common/AdPlaybackState$AdGroup;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 7

    .line 1248
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1249
    .local v0, "bundle":Landroid/os/Bundle;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1250
    .local v1, "adGroupBundleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    iget-object v2, p0, Landroidx/media3/common/AdPlaybackState;->adGroups:[Landroidx/media3/common/AdPlaybackState$AdGroup;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    .line 1251
    .local v5, "adGroup":Landroidx/media3/common/AdPlaybackState$AdGroup;
    invoke-virtual {v5}, Landroidx/media3/common/AdPlaybackState$AdGroup;->toBundle()Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1250
    .end local v5    # "adGroup":Landroidx/media3/common/AdPlaybackState$AdGroup;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1253
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1254
    sget-object v2, Landroidx/media3/common/AdPlaybackState;->FIELD_AD_GROUPS:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1256
    :cond_1
    iget-wide v2, p0, Landroidx/media3/common/AdPlaybackState;->adResumePositionUs:J

    sget-object v4, Landroidx/media3/common/AdPlaybackState;->NONE:Landroidx/media3/common/AdPlaybackState;

    iget-wide v4, v4, Landroidx/media3/common/AdPlaybackState;->adResumePositionUs:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    .line 1257
    sget-object v2, Landroidx/media3/common/AdPlaybackState;->FIELD_AD_RESUME_POSITION_US:Ljava/lang/String;

    iget-wide v3, p0, Landroidx/media3/common/AdPlaybackState;->adResumePositionUs:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1259
    :cond_2
    iget-wide v2, p0, Landroidx/media3/common/AdPlaybackState;->contentDurationUs:J

    sget-object v4, Landroidx/media3/common/AdPlaybackState;->NONE:Landroidx/media3/common/AdPlaybackState;

    iget-wide v4, v4, Landroidx/media3/common/AdPlaybackState;->contentDurationUs:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    .line 1260
    sget-object v2, Landroidx/media3/common/AdPlaybackState;->FIELD_CONTENT_DURATION_US:Ljava/lang/String;

    iget-wide v3, p0, Landroidx/media3/common/AdPlaybackState;->contentDurationUs:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1262
    :cond_3
    iget v2, p0, Landroidx/media3/common/AdPlaybackState;->removedAdGroupCount:I

    sget-object v3, Landroidx/media3/common/AdPlaybackState;->NONE:Landroidx/media3/common/AdPlaybackState;

    iget v3, v3, Landroidx/media3/common/AdPlaybackState;->removedAdGroupCount:I

    if-eq v2, v3, :cond_4

    .line 1263
    sget-object v2, Landroidx/media3/common/AdPlaybackState;->FIELD_REMOVED_AD_GROUP_COUNT:Ljava/lang/String;

    iget v3, p0, Landroidx/media3/common/AdPlaybackState;->removedAdGroupCount:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1265
    :cond_4
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .line 1167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1168
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "AdPlaybackState(adsId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1169
    iget-object v1, p0, Landroidx/media3/common/AdPlaybackState;->adsId:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1170
    const-string v1, ", adResumePositionUs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1171
    iget-wide v1, p0, Landroidx/media3/common/AdPlaybackState;->adResumePositionUs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1172
    const-string v1, ", adGroups=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1173
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroidx/media3/common/AdPlaybackState;->adGroups:[Landroidx/media3/common/AdPlaybackState$AdGroup;

    array-length v2, v2

    const-string v3, "])"

    if-ge v1, v2, :cond_3

    .line 1174
    const-string v2, "adGroup(timeUs="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1175
    iget-object v2, p0, Landroidx/media3/common/AdPlaybackState;->adGroups:[Landroidx/media3/common/AdPlaybackState$AdGroup;

    aget-object v2, v2, v1

    iget-wide v4, v2, Landroidx/media3/common/AdPlaybackState$AdGroup;->timeUs:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1176
    const-string v2, ", ads=["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1177
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    iget-object v4, p0, Landroidx/media3/common/AdPlaybackState;->adGroups:[Landroidx/media3/common/AdPlaybackState$AdGroup;

    aget-object v4, v4, v1

    iget-object v4, v4, Landroidx/media3/common/AdPlaybackState$AdGroup;->states:[I

    array-length v4, v4

    const-string v5, ", "

    if-ge v2, v4, :cond_1

    .line 1178
    const-string v4, "ad(state="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1179
    iget-object v4, p0, Landroidx/media3/common/AdPlaybackState;->adGroups:[Landroidx/media3/common/AdPlaybackState$AdGroup;

    aget-object v4, v4, v1

    iget-object v4, v4, Landroidx/media3/common/AdPlaybackState$AdGroup;->states:[I

    aget v4, v4, v2

    packed-switch v4, :pswitch_data_0

    .line 1196
    const/16 v4, 0x3f

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1184
    :pswitch_0
    const/16 v4, 0x21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1185
    goto :goto_2

    .line 1190
    :pswitch_1
    const/16 v4, 0x50

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1191
    goto :goto_2

    .line 1193
    :pswitch_2
    const/16 v4, 0x53

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1194
    goto :goto_2

    .line 1187
    :pswitch_3
    const/16 v4, 0x52

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1188
    goto :goto_2

    .line 1181
    :pswitch_4
    const/16 v4, 0x5f

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1182
    nop

    .line 1199
    :goto_2
    const-string v4, ", durationUs="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1200
    iget-object v4, p0, Landroidx/media3/common/AdPlaybackState;->adGroups:[Landroidx/media3/common/AdPlaybackState$AdGroup;

    aget-object v4, v4, v1

    iget-object v4, v4, Landroidx/media3/common/AdPlaybackState$AdGroup;->durationsUs:[J

    aget-wide v6, v4, v2

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1201
    const/16 v4, 0x29

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1202
    iget-object v4, p0, Landroidx/media3/common/AdPlaybackState;->adGroups:[Landroidx/media3/common/AdPlaybackState$AdGroup;

    aget-object v4, v4, v1

    iget-object v4, v4, Landroidx/media3/common/AdPlaybackState$AdGroup;->states:[I

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    if-ge v2, v4, :cond_0

    .line 1203
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1177
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1206
    .end local v2    # "j":I
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1207
    iget-object v2, p0, Landroidx/media3/common/AdPlaybackState;->adGroups:[Landroidx/media3/common/AdPlaybackState$AdGroup;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_2

    .line 1208
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1173
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 1211
    .end local v1    # "i":I
    :cond_3
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1212
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public withAdCount(II)Landroidx/media3/common/AdPlaybackState;
    .locals 11
    .param p1, "adGroupIndex"    # I
    .param p2, "adCount"    # I

    .line 802
    if-lez p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    .line 803
    iget v0, p0, Landroidx/media3/common/AdPlaybackState;->removedAdGroupCount:I

    sub-int v0, p1, v0

    .line 804
    .local v0, "adjustedIndex":I
    iget-object v1, p0, Landroidx/media3/common/AdPlaybackState;->adGroups:[Landroidx/media3/common/AdPlaybackState$AdGroup;

    aget-object v1, v1, v0

    iget v1, v1, Landroidx/media3/common/AdPlaybackState$AdGroup;->count:I

    if-ne v1, p2, :cond_1

    .line 805
    return-object p0

    .line 807
    :cond_1
    iget-object v1, p0, Landroidx/media3/common/AdPlaybackState;->adGroups:[Landroidx/media3/common/AdPlaybackState$AdGroup;

    iget-object v2, p0, Landroidx/media3/common/AdPlaybackState;->adGroups:[Landroidx/media3/common/AdPlaybackState$AdGroup;

    array-length v2, v2

    invoke-static {v1, v2}, Landroidx/media3/common/util/Util;->nullSafeArrayCopy([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroidx/media3/common/AdPlaybackState$AdGroup;

    .line 808
    .local v1, "adGroups":[Landroidx/media3/common/AdPlaybackState$AdGroup;
    iget-object v2, p0, Landroidx/media3/common/AdPlaybackState;->adGroups:[Landroidx/media3/common/AdPlaybackState$AdGroup;

    aget-object v2, v2, v0

    invoke-virtual {v2, p2}, Landroidx/media3/common/AdPlaybackState$AdGroup;->withAdCount(I)Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object v2

    aput-object v2, v1, v0

    .line 809
    new-instance v10, Landroidx/media3/common/AdPlaybackState;

    iget-object v3, p0, Landroidx/media3/common/AdPlaybackState;->adsId:Ljava/lang/Object;

    iget-wide v5, p0, Landroidx/media3/common/AdPlaybackState;->adResumePositionUs:J

    iget-wide v7, p0, Landroidx/media3/common/AdPlaybackState;->contentDurationUs:J

    iget v9, p0, Landroidx/media3/common/AdPlaybackState;->removedAdGroupCount:I

    move-object v2, v10

    move-object v4, v1

    invoke-direct/range {v2 .. v9}, Landroidx/media3/common/AdPlaybackState;-><init>(Ljava/lang/Object;[Landroidx/media3/common/AdPlaybackState$AdGroup;JJI)V

    return-object v10
.end method

.method public varargs withAdDurationsUs(I[J)Landroidx/media3/common/AdPlaybackState;
    .locals 11
    .param p1, "adGroupIndex"    # I
    .param p2, "adDurationsUs"    # [J

    .line 946
    iget v0, p0, Landroidx/media3/common/AdPlaybackState;->removedAdGroupCount:I

    sub-int v0, p1, v0

    .line 947
    .local v0, "adjustedIndex":I
    iget-object v1, p0, Landroidx/media3/common/AdPlaybackState;->adGroups:[Landroidx/media3/common/AdPlaybackState$AdGroup;

    iget-object v2, p0, Landroidx/media3/common/AdPlaybackState;->adGroups:[Landroidx/media3/common/AdPlaybackState$AdGroup;

    array-length v2, v2

    invoke-static {v1, v2}, Landroidx/media3/common/util/Util;->nullSafeArrayCopy([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroidx/media3/common/AdPlaybackState$AdGroup;

    .line 948
    .local v1, "adGroups":[Landroidx/media3/common/AdPlaybackState$AdGroup;
    aget-object v2, v1, v0

    invoke-virtual {v2, p2}, Landroidx/media3/common/AdPlaybackState$AdGroup;->withAdDurationsUs([J)Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object v2

    aput-object v2, v1, v0

    .line 949
    new-instance v10, Landroidx/media3/common/AdPlaybackState;

    iget-object v3, p0, Landroidx/media3/common/AdPlaybackState;->adsId:Ljava/lang/Object;

    iget-wide v5, p0, Landroidx/media3/common/AdPlaybackState;->adResumePositionUs:J

    iget-wide v7, p0, Landroidx/media3/common/AdPlaybackState;->contentDurationUs:J

    iget v9, p0, Landroidx/media3/common/AdPlaybackState;->removedAdGroupCount:I

    move-object v2, v10

    move-object v4, v1

    invoke-direct/range {v2 .. v9}, Landroidx/media3/common/AdPlaybackState;-><init>(Ljava/lang/Object;[Landroidx/media3/common/AdPlaybackState$AdGroup;JJI)V

    return-object v10
.end method

.method public withAdDurationsUs([[J)Landroidx/media3/common/AdPlaybackState;
    .locals 10
    .param p1, "adDurationUs"    # [[J

    .line 930
    iget v0, p0, Landroidx/media3/common/AdPlaybackState;->removedAdGroupCount:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 931
    iget-object v0, p0, Landroidx/media3/common/AdPlaybackState;->adGroups:[Landroidx/media3/common/AdPlaybackState$AdGroup;

    iget-object v1, p0, Landroidx/media3/common/AdPlaybackState;->adGroups:[Landroidx/media3/common/AdPlaybackState$AdGroup;

    array-length v1, v1

    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->nullSafeArrayCopy([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/media3/common/AdPlaybackState$AdGroup;

    .line 932
    .local v0, "adGroups":[Landroidx/media3/common/AdPlaybackState$AdGroup;
    const/4 v1, 0x0

    .local v1, "adGroupIndex":I
    :goto_1
    iget v2, p0, Landroidx/media3/common/AdPlaybackState;->adGroupCount:I

    if-ge v1, v2, :cond_1

    .line 933
    aget-object v2, v0, v1

    aget-object v3, p1, v1

    invoke-virtual {v2, v3}, Landroidx/media3/common/AdPlaybackState$AdGroup;->withAdDurationsUs([J)Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object v2

    aput-object v2, v0, v1

    .line 932
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 935
    .end local v1    # "adGroupIndex":I
    :cond_1
    new-instance v9, Landroidx/media3/common/AdPlaybackState;

    iget-object v2, p0, Landroidx/media3/common/AdPlaybackState;->adsId:Ljava/lang/Object;

    iget-wide v4, p0, Landroidx/media3/common/AdPlaybackState;->adResumePositionUs:J

    iget-wide v6, p0, Landroidx/media3/common/AdPlaybackState;->contentDurationUs:J

    iget v8, p0, Landroidx/media3/common/AdPlaybackState;->removedAdGroupCount:I

    move-object v1, v9

    move-object v3, v0

    invoke-direct/range {v1 .. v8}, Landroidx/media3/common/AdPlaybackState;-><init>(Ljava/lang/Object;[Landroidx/media3/common/AdPlaybackState$AdGroup;JJI)V

    return-object v9
.end method

.method public withAdGroupTimeUs(IJ)Landroidx/media3/common/AdPlaybackState;
    .locals 11
    .param p1, "adGroupIndex"    # I
    .param p2, "adGroupTimeUs"    # J

    .line 764
    iget v0, p0, Landroidx/media3/common/AdPlaybackState;->removedAdGroupCount:I

    sub-int v0, p1, v0

    .line 765
    .local v0, "adjustedIndex":I
    iget-object v1, p0, Landroidx/media3/common/AdPlaybackState;->adGroups:[Landroidx/media3/common/AdPlaybackState$AdGroup;

    iget-object v2, p0, Landroidx/media3/common/AdPlaybackState;->adGroups:[Landroidx/media3/common/AdPlaybackState$AdGroup;

    array-length v2, v2

    invoke-static {v1, v2}, Landroidx/media3/common/util/Util;->nullSafeArrayCopy([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroidx/media3/common/AdPlaybackState$AdGroup;

    .line 766
    .local v1, "adGroups":[Landroidx/media3/common/AdPlaybackState$AdGroup;
    iget-object v2, p0, Landroidx/media3/common/AdPlaybackState;->adGroups:[Landroidx/media3/common/AdPlaybackState$AdGroup;

    aget-object v2, v2, v0

    invoke-virtual {v2, p2, p3}, Landroidx/media3/common/AdPlaybackState$AdGroup;->withTimeUs(J)Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object v2

    aput-object v2, v1, v0

    .line 767
    new-instance v10, Landroidx/media3/common/AdPlaybackState;

    iget-object v3, p0, Landroidx/media3/common/AdPlaybackState;->adsId:Ljava/lang/Object;

    iget-wide v5, p0, Landroidx/media3/common/AdPlaybackState;->adResumePositionUs:J

    iget-wide v7, p0, Landroidx/media3/common/AdPlaybackState;->contentDurationUs:J

    iget v9, p0, Landroidx/media3/common/AdPlaybackState;->removedAdGroupCount:I

    move-object v2, v10

    move-object v4, v1

    invoke-direct/range {v2 .. v9}, Landroidx/media3/common/AdPlaybackState;-><init>(Ljava/lang/Object;[Landroidx/media3/common/AdPlaybackState$AdGroup;JJI)V

    return-object v10
.end method

.method public withAdLoadError(II)Landroidx/media3/common/AdPlaybackState;
    .locals 11
    .param p1, "adGroupIndex"    # I
    .param p2, "adIndexInAdGroup"    # I

    .line 903
    iget v0, p0, Landroidx/media3/common/AdPlaybackState;->removedAdGroupCount:I

    sub-int v0, p1, v0

    .line 904
    .local v0, "adjustedIndex":I
    iget-object v1, p0, Landroidx/media3/common/AdPlaybackState;->adGroups:[Landroidx/media3/common/AdPlaybackState$AdGroup;

    iget-object v2, p0, Landroidx/media3/common/AdPlaybackState;->adGroups:[Landroidx/media3/common/AdPlaybackState$AdGroup;

    array-length v2, v2

    invoke-static {v1, v2}, Landroidx/media3/common/util/Util;->nullSafeArrayCopy([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroidx/media3/common/AdPlaybackState$AdGroup;

    .line 905
    .local v1, "adGroups":[Landroidx/media3/common/AdPlaybackState$AdGroup;
    aget-object v2, v1, v0

    const/4 v3, 0x4

    invoke-virtual {v2, v3, p2}, Landroidx/media3/common/AdPlaybackState$AdGroup;->withAdState(II)Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object v2

    aput-object v2, v1, v0

    .line 906
    new-instance v10, Landroidx/media3/common/AdPlaybackState;

    iget-object v3, p0, Landroidx/media3/common/AdPlaybackState;->adsId:Ljava/lang/Object;

    iget-wide v5, p0, Landroidx/media3/common/AdPlaybackState;->adResumePositionUs:J

    iget-wide v7, p0, Landroidx/media3/common/AdPlaybackState;->contentDurationUs:J

    iget v9, p0, Landroidx/media3/common/AdPlaybackState;->removedAdGroupCount:I

    move-object v2, v10

    move-object v4, v1

    invoke-direct/range {v2 .. v9}, Landroidx/media3/common/AdPlaybackState;-><init>(Ljava/lang/Object;[Landroidx/media3/common/AdPlaybackState$AdGroup;JJI)V

    return-object v10
.end method

.method public withAdResumePositionUs(J)Landroidx/media3/common/AdPlaybackState;
    .locals 9
    .param p1, "adResumePositionUs"    # J

    .line 959
    iget-wide v0, p0, Landroidx/media3/common/AdPlaybackState;->adResumePositionUs:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    .line 960
    return-object p0

    .line 962
    :cond_0
    new-instance v0, Landroidx/media3/common/AdPlaybackState;

    iget-object v2, p0, Landroidx/media3/common/AdPlaybackState;->adsId:Ljava/lang/Object;

    iget-object v3, p0, Landroidx/media3/common/AdPlaybackState;->adGroups:[Landroidx/media3/common/AdPlaybackState$AdGroup;

    iget-wide v6, p0, Landroidx/media3/common/AdPlaybackState;->contentDurationUs:J

    iget v8, p0, Landroidx/media3/common/AdPlaybackState;->removedAdGroupCount:I

    move-object v1, v0

    move-wide v4, p1

    invoke-direct/range {v1 .. v8}, Landroidx/media3/common/AdPlaybackState;-><init>(Ljava/lang/Object;[Landroidx/media3/common/AdPlaybackState$AdGroup;JJI)V

    return-object v0
.end method

.method public withAvailableAd(II)Landroidx/media3/common/AdPlaybackState;
    .locals 1
    .param p1, "adGroupIndex"    # I
    .param p2, "adIndexInAdGroup"    # I

    .line 859
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-static {v0}, Landroidx/media3/common/MediaItem;->fromUri(Landroid/net/Uri;)Landroidx/media3/common/MediaItem;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Landroidx/media3/common/AdPlaybackState;->withAvailableAdMediaItem(IILandroidx/media3/common/MediaItem;)Landroidx/media3/common/AdPlaybackState;

    move-result-object v0

    return-object v0
.end method

.method public withAvailableAdMediaItem(IILandroidx/media3/common/MediaItem;)Landroidx/media3/common/AdPlaybackState;
    .locals 11
    .param p1, "adGroupIndex"    # I
    .param p2, "adIndexInAdGroup"    # I
    .param p3, "mediaItem"    # Landroidx/media3/common/MediaItem;

    .line 836
    iget v0, p0, Landroidx/media3/common/AdPlaybackState;->removedAdGroupCount:I

    sub-int v0, p1, v0

    .line 837
    .local v0, "adjustedIndex":I
    iget-object v1, p0, Landroidx/media3/common/AdPlaybackState;->adGroups:[Landroidx/media3/common/AdPlaybackState$AdGroup;

    iget-object v2, p0, Landroidx/media3/common/AdPlaybackState;->adGroups:[Landroidx/media3/common/AdPlaybackState$AdGroup;

    array-length v2, v2

    invoke-static {v1, v2}, Landroidx/media3/common/util/Util;->nullSafeArrayCopy([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroidx/media3/common/AdPlaybackState$AdGroup;

    .line 838
    .local v1, "adGroups":[Landroidx/media3/common/AdPlaybackState$AdGroup;
    aget-object v2, v1, v0

    iget-boolean v2, v2, Landroidx/media3/common/AdPlaybackState$AdGroup;->isServerSideInserted:Z

    if-nez v2, :cond_1

    iget-object v2, p3, Landroidx/media3/common/MediaItem;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    if-eqz v2, :cond_0

    iget-object v2, p3, Landroidx/media3/common/MediaItem;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    iget-object v2, v2, Landroidx/media3/common/MediaItem$LocalConfiguration;->uri:Landroid/net/Uri;

    sget-object v3, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 841
    invoke-virtual {v2, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    .line 838
    :goto_1
    invoke-static {v2}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 842
    aget-object v2, v1, v0

    invoke-virtual {v2, p3, p2}, Landroidx/media3/common/AdPlaybackState$AdGroup;->withAdMediaItem(Landroidx/media3/common/MediaItem;I)Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object v2

    aput-object v2, v1, v0

    .line 843
    new-instance v10, Landroidx/media3/common/AdPlaybackState;

    iget-object v3, p0, Landroidx/media3/common/AdPlaybackState;->adsId:Ljava/lang/Object;

    iget-wide v5, p0, Landroidx/media3/common/AdPlaybackState;->adResumePositionUs:J

    iget-wide v7, p0, Landroidx/media3/common/AdPlaybackState;->contentDurationUs:J

    iget v9, p0, Landroidx/media3/common/AdPlaybackState;->removedAdGroupCount:I

    move-object v2, v10

    move-object v4, v1

    invoke-direct/range {v2 .. v9}, Landroidx/media3/common/AdPlaybackState;-><init>(Ljava/lang/Object;[Landroidx/media3/common/AdPlaybackState$AdGroup;JJI)V

    return-object v10
.end method

.method public withAvailableAdUri(IILandroid/net/Uri;)Landroidx/media3/common/AdPlaybackState;
    .locals 1
    .param p1, "adGroupIndex"    # I
    .param p2, "adIndexInAdGroup"    # I
    .param p3, "uri"    # Landroid/net/Uri;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 820
    invoke-static {p3}, Landroidx/media3/common/MediaItem;->fromUri(Landroid/net/Uri;)Landroidx/media3/common/MediaItem;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Landroidx/media3/common/AdPlaybackState;->withAvailableAdMediaItem(IILandroidx/media3/common/MediaItem;)Landroidx/media3/common/AdPlaybackState;

    move-result-object v0

    return-object v0
.end method

.method public withContentDurationUs(J)Landroidx/media3/common/AdPlaybackState;
    .locals 9
    .param p1, "contentDurationUs"    # J

    .line 970
    iget-wide v0, p0, Landroidx/media3/common/AdPlaybackState;->contentDurationUs:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    .line 971
    return-object p0

    .line 973
    :cond_0
    new-instance v0, Landroidx/media3/common/AdPlaybackState;

    iget-object v2, p0, Landroidx/media3/common/AdPlaybackState;->adsId:Ljava/lang/Object;

    iget-object v3, p0, Landroidx/media3/common/AdPlaybackState;->adGroups:[Landroidx/media3/common/AdPlaybackState$AdGroup;

    iget-wide v4, p0, Landroidx/media3/common/AdPlaybackState;->adResumePositionUs:J

    iget v8, p0, Landroidx/media3/common/AdPlaybackState;->removedAdGroupCount:I

    move-object v1, v0

    move-wide v6, p1

    invoke-direct/range {v1 .. v8}, Landroidx/media3/common/AdPlaybackState;-><init>(Ljava/lang/Object;[Landroidx/media3/common/AdPlaybackState$AdGroup;JJI)V

    return-object v0
.end method

.method public withContentResumeOffsetUs(IJ)Landroidx/media3/common/AdPlaybackState;
    .locals 11
    .param p1, "adGroupIndex"    # I
    .param p2, "contentResumeOffsetUs"    # J

    .line 1010
    iget v0, p0, Landroidx/media3/common/AdPlaybackState;->removedAdGroupCount:I

    sub-int v0, p1, v0

    .line 1011
    .local v0, "adjustedIndex":I
    iget-object v1, p0, Landroidx/media3/common/AdPlaybackState;->adGroups:[Landroidx/media3/common/AdPlaybackState$AdGroup;

    aget-object v1, v1, v0

    iget-wide v1, v1, Landroidx/media3/common/AdPlaybackState$AdGroup;->contentResumeOffsetUs:J

    cmp-long v1, v1, p2

    if-nez v1, :cond_0

    .line 1012
    return-object p0

    .line 1014
    :cond_0
    iget-object v1, p0, Landroidx/media3/common/AdPlaybackState;->adGroups:[Landroidx/media3/common/AdPlaybackState$AdGroup;

    iget-object v2, p0, Landroidx/media3/common/AdPlaybackState;->adGroups:[Landroidx/media3/common/AdPlaybackState$AdGroup;

    array-length v2, v2

    invoke-static {v1, v2}, Landroidx/media3/common/util/Util;->nullSafeArrayCopy([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroidx/media3/common/AdPlaybackState$AdGroup;

    .line 1015
    .local v1, "adGroups":[Landroidx/media3/common/AdPlaybackState$AdGroup;
    aget-object v2, v1, v0

    .line 1016
    invoke-virtual {v2, p2, p3}, Landroidx/media3/common/AdPlaybackState$AdGroup;->withContentResumeOffsetUs(J)Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object v2

    aput-object v2, v1, v0

    .line 1017
    new-instance v10, Landroidx/media3/common/AdPlaybackState;

    iget-object v3, p0, Landroidx/media3/common/AdPlaybackState;->adsId:Ljava/lang/Object;

    iget-wide v5, p0, Landroidx/media3/common/AdPlaybackState;->adResumePositionUs:J

    iget-wide v7, p0, Landroidx/media3/common/AdPlaybackState;->contentDurationUs:J

    iget v9, p0, Landroidx/media3/common/AdPlaybackState;->removedAdGroupCount:I

    move-object v2, v10

    move-object v4, v1

    invoke-direct/range {v2 .. v9}, Landroidx/media3/common/AdPlaybackState;-><init>(Ljava/lang/Object;[Landroidx/media3/common/AdPlaybackState$AdGroup;JJI)V

    return-object v10
.end method

.method public withIsServerSideInserted(IZ)Landroidx/media3/common/AdPlaybackState;
    .locals 11
    .param p1, "adGroupIndex"    # I
    .param p2, "isServerSideInserted"    # Z

    .line 1045
    iget v0, p0, Landroidx/media3/common/AdPlaybackState;->removedAdGroupCount:I

    sub-int v0, p1, v0

    .line 1046
    .local v0, "adjustedIndex":I
    iget-object v1, p0, Landroidx/media3/common/AdPlaybackState;->adGroups:[Landroidx/media3/common/AdPlaybackState$AdGroup;

    aget-object v1, v1, v0

    iget-boolean v1, v1, Landroidx/media3/common/AdPlaybackState$AdGroup;->isServerSideInserted:Z

    if-ne v1, p2, :cond_0

    .line 1047
    return-object p0

    .line 1049
    :cond_0
    iget-object v1, p0, Landroidx/media3/common/AdPlaybackState;->adGroups:[Landroidx/media3/common/AdPlaybackState$AdGroup;

    iget-object v2, p0, Landroidx/media3/common/AdPlaybackState;->adGroups:[Landroidx/media3/common/AdPlaybackState$AdGroup;

    array-length v2, v2

    invoke-static {v1, v2}, Landroidx/media3/common/util/Util;->nullSafeArrayCopy([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroidx/media3/common/AdPlaybackState$AdGroup;

    .line 1050
    .local v1, "adGroups":[Landroidx/media3/common/AdPlaybackState$AdGroup;
    aget-object v2, v1, v0

    .line 1051
    invoke-virtual {v2, p2}, Landroidx/media3/common/AdPlaybackState$AdGroup;->withIsServerSideInserted(Z)Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object v2

    aput-object v2, v1, v0

    .line 1052
    new-instance v10, Landroidx/media3/common/AdPlaybackState;

    iget-object v3, p0, Landroidx/media3/common/AdPlaybackState;->adsId:Ljava/lang/Object;

    iget-wide v5, p0, Landroidx/media3/common/AdPlaybackState;->adResumePositionUs:J

    iget-wide v7, p0, Landroidx/media3/common/AdPlaybackState;->contentDurationUs:J

    iget v9, p0, Landroidx/media3/common/AdPlaybackState;->removedAdGroupCount:I

    move-object v2, v10

    move-object v4, v1

    invoke-direct/range {v2 .. v9}, Landroidx/media3/common/AdPlaybackState;-><init>(Ljava/lang/Object;[Landroidx/media3/common/AdPlaybackState$AdGroup;JJI)V

    return-object v10
.end method

.method public withLastAdRemoved(I)Landroidx/media3/common/AdPlaybackState;
    .locals 11
    .param p1, "adGroupIndex"    # I

    .line 889
    iget v0, p0, Landroidx/media3/common/AdPlaybackState;->removedAdGroupCount:I

    sub-int v0, p1, v0

    .line 890
    .local v0, "adjustedIndex":I
    iget-object v1, p0, Landroidx/media3/common/AdPlaybackState;->adGroups:[Landroidx/media3/common/AdPlaybackState$AdGroup;

    iget-object v2, p0, Landroidx/media3/common/AdPlaybackState;->adGroups:[Landroidx/media3/common/AdPlaybackState$AdGroup;

    array-length v2, v2

    invoke-static {v1, v2}, Landroidx/media3/common/util/Util;->nullSafeArrayCopy([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroidx/media3/common/AdPlaybackState$AdGroup;

    .line 891
    .local v1, "adGroups":[Landroidx/media3/common/AdPlaybackState$AdGroup;
    aget-object v2, v1, v0

    invoke-virtual {v2}, Landroidx/media3/common/AdPlaybackState$AdGroup;->withLastAdRemoved()Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object v2

    aput-object v2, v1, v0

    .line 892
    new-instance v10, Landroidx/media3/common/AdPlaybackState;

    iget-object v3, p0, Landroidx/media3/common/AdPlaybackState;->adsId:Ljava/lang/Object;

    iget-wide v5, p0, Landroidx/media3/common/AdPlaybackState;->adResumePositionUs:J

    iget-wide v7, p0, Landroidx/media3/common/AdPlaybackState;->contentDurationUs:J

    iget v9, p0, Landroidx/media3/common/AdPlaybackState;->removedAdGroupCount:I

    move-object v2, v10

    move-object v4, v1

    invoke-direct/range {v2 .. v9}, Landroidx/media3/common/AdPlaybackState;-><init>(Ljava/lang/Object;[Landroidx/media3/common/AdPlaybackState$AdGroup;JJI)V

    return-object v10
.end method

.method public withLivePostrollPlaceholderAppended()Landroidx/media3/common/AdPlaybackState;
    .locals 3

    .line 1081
    iget v0, p0, Landroidx/media3/common/AdPlaybackState;->adGroupCount:I

    const-wide/high16 v1, -0x8000000000000000L

    invoke-virtual {p0, v0, v1, v2}, Landroidx/media3/common/AdPlaybackState;->withNewAdGroup(IJ)Landroidx/media3/common/AdPlaybackState;

    move-result-object v0

    iget v1, p0, Landroidx/media3/common/AdPlaybackState;->adGroupCount:I

    .line 1082
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroidx/media3/common/AdPlaybackState;->withIsServerSideInserted(IZ)Landroidx/media3/common/AdPlaybackState;

    move-result-object v0

    .line 1081
    return-object v0
.end method

.method public withNewAdGroup(IJ)Landroidx/media3/common/AdPlaybackState;
    .locals 12
    .param p1, "adGroupIndex"    # I
    .param p2, "adGroupTimeUs"    # J

    .line 781
    iget v0, p0, Landroidx/media3/common/AdPlaybackState;->removedAdGroupCount:I

    sub-int v0, p1, v0

    .line 782
    .local v0, "adjustedIndex":I
    new-instance v1, Landroidx/media3/common/AdPlaybackState$AdGroup;

    invoke-direct {v1, p2, p3}, Landroidx/media3/common/AdPlaybackState$AdGroup;-><init>(J)V

    .line 783
    .local v1, "newAdGroup":Landroidx/media3/common/AdPlaybackState$AdGroup;
    iget-object v2, p0, Landroidx/media3/common/AdPlaybackState;->adGroups:[Landroidx/media3/common/AdPlaybackState$AdGroup;

    invoke-static {v2, v1}, Landroidx/media3/common/util/Util;->nullSafeArrayAppend([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroidx/media3/common/AdPlaybackState$AdGroup;

    .line 784
    .local v2, "adGroups":[Landroidx/media3/common/AdPlaybackState$AdGroup;
    add-int/lit8 v3, v0, 0x1

    iget-object v4, p0, Landroidx/media3/common/AdPlaybackState;->adGroups:[Landroidx/media3/common/AdPlaybackState$AdGroup;

    array-length v4, v4

    sub-int/2addr v4, v0

    invoke-static {v2, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 790
    aput-object v1, v2, v0

    .line 791
    new-instance v11, Landroidx/media3/common/AdPlaybackState;

    iget-object v4, p0, Landroidx/media3/common/AdPlaybackState;->adsId:Ljava/lang/Object;

    iget-wide v6, p0, Landroidx/media3/common/AdPlaybackState;->adResumePositionUs:J

    iget-wide v8, p0, Landroidx/media3/common/AdPlaybackState;->contentDurationUs:J

    iget v10, p0, Landroidx/media3/common/AdPlaybackState;->removedAdGroupCount:I

    move-object v3, v11

    move-object v5, v2

    invoke-direct/range {v3 .. v10}, Landroidx/media3/common/AdPlaybackState;-><init>(Ljava/lang/Object;[Landroidx/media3/common/AdPlaybackState$AdGroup;JJI)V

    return-object v11
.end method

.method public withOriginalAdCount(II)Landroidx/media3/common/AdPlaybackState;
    .locals 11
    .param p1, "adGroupIndex"    # I
    .param p2, "originalAdCount"    # I

    .line 1028
    iget v0, p0, Landroidx/media3/common/AdPlaybackState;->removedAdGroupCount:I

    sub-int v0, p1, v0

    .line 1029
    .local v0, "adjustedIndex":I
    iget-object v1, p0, Landroidx/media3/common/AdPlaybackState;->adGroups:[Landroidx/media3/common/AdPlaybackState$AdGroup;

    aget-object v1, v1, v0

    iget v1, v1, Landroidx/media3/common/AdPlaybackState$AdGroup;->originalCount:I

    if-ne v1, p2, :cond_0

    .line 1030
    return-object p0

    .line 1032
    :cond_0
    iget-object v1, p0, Landroidx/media3/common/AdPlaybackState;->adGroups:[Landroidx/media3/common/AdPlaybackState$AdGroup;

    iget-object v2, p0, Landroidx/media3/common/AdPlaybackState;->adGroups:[Landroidx/media3/common/AdPlaybackState$AdGroup;

    array-length v2, v2

    invoke-static {v1, v2}, Landroidx/media3/common/util/Util;->nullSafeArrayCopy([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroidx/media3/common/AdPlaybackState$AdGroup;

    .line 1033
    .local v1, "adGroups":[Landroidx/media3/common/AdPlaybackState$AdGroup;
    aget-object v2, v1, v0

    invoke-virtual {v2, p2}, Landroidx/media3/common/AdPlaybackState$AdGroup;->withOriginalAdCount(I)Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object v2

    aput-object v2, v1, v0

    .line 1034
    new-instance v10, Landroidx/media3/common/AdPlaybackState;

    iget-object v3, p0, Landroidx/media3/common/AdPlaybackState;->adsId:Ljava/lang/Object;

    iget-wide v5, p0, Landroidx/media3/common/AdPlaybackState;->adResumePositionUs:J

    iget-wide v7, p0, Landroidx/media3/common/AdPlaybackState;->contentDurationUs:J

    iget v9, p0, Landroidx/media3/common/AdPlaybackState;->removedAdGroupCount:I

    move-object v2, v10

    move-object v4, v1

    invoke-direct/range {v2 .. v9}, Landroidx/media3/common/AdPlaybackState;-><init>(Ljava/lang/Object;[Landroidx/media3/common/AdPlaybackState$AdGroup;JJI)V

    return-object v10
.end method

.method public withPlayedAd(II)Landroidx/media3/common/AdPlaybackState;
    .locals 11
    .param p1, "adGroupIndex"    # I
    .param p2, "adIndexInAdGroup"    # I

    .line 866
    iget v0, p0, Landroidx/media3/common/AdPlaybackState;->removedAdGroupCount:I

    sub-int v0, p1, v0

    .line 867
    .local v0, "adjustedIndex":I
    iget-object v1, p0, Landroidx/media3/common/AdPlaybackState;->adGroups:[Landroidx/media3/common/AdPlaybackState$AdGroup;

    iget-object v2, p0, Landroidx/media3/common/AdPlaybackState;->adGroups:[Landroidx/media3/common/AdPlaybackState$AdGroup;

    array-length v2, v2

    invoke-static {v1, v2}, Landroidx/media3/common/util/Util;->nullSafeArrayCopy([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroidx/media3/common/AdPlaybackState$AdGroup;

    .line 868
    .local v1, "adGroups":[Landroidx/media3/common/AdPlaybackState$AdGroup;
    aget-object v2, v1, v0

    .line 869
    const/4 v3, 0x3

    invoke-virtual {v2, v3, p2}, Landroidx/media3/common/AdPlaybackState$AdGroup;->withAdState(II)Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object v2

    aput-object v2, v1, v0

    .line 870
    new-instance v10, Landroidx/media3/common/AdPlaybackState;

    iget-object v3, p0, Landroidx/media3/common/AdPlaybackState;->adsId:Ljava/lang/Object;

    iget-wide v5, p0, Landroidx/media3/common/AdPlaybackState;->adResumePositionUs:J

    iget-wide v7, p0, Landroidx/media3/common/AdPlaybackState;->contentDurationUs:J

    iget v9, p0, Landroidx/media3/common/AdPlaybackState;->removedAdGroupCount:I

    move-object v2, v10

    move-object v4, v1

    invoke-direct/range {v2 .. v9}, Landroidx/media3/common/AdPlaybackState;-><init>(Ljava/lang/Object;[Landroidx/media3/common/AdPlaybackState$AdGroup;JJI)V

    return-object v10
.end method

.method public withRemovedAdGroupCount(I)Landroidx/media3/common/AdPlaybackState;
    .locals 10
    .param p1, "removedAdGroupCount"    # I

    .line 987
    iget v0, p0, Landroidx/media3/common/AdPlaybackState;->removedAdGroupCount:I

    if-ne v0, p1, :cond_0

    .line 988
    return-object p0

    .line 990
    :cond_0
    iget v0, p0, Landroidx/media3/common/AdPlaybackState;->removedAdGroupCount:I

    const/4 v1, 0x0

    if-le p1, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    .line 991
    iget v0, p0, Landroidx/media3/common/AdPlaybackState;->adGroupCount:I

    sub-int/2addr v0, p1

    new-array v0, v0, [Landroidx/media3/common/AdPlaybackState$AdGroup;

    .line 992
    .local v0, "adGroups":[Landroidx/media3/common/AdPlaybackState$AdGroup;
    iget-object v2, p0, Landroidx/media3/common/AdPlaybackState;->adGroups:[Landroidx/media3/common/AdPlaybackState$AdGroup;

    iget v3, p0, Landroidx/media3/common/AdPlaybackState;->removedAdGroupCount:I

    sub-int v3, p1, v3

    array-length v4, v0

    invoke-static {v2, v3, v0, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 998
    new-instance v1, Landroidx/media3/common/AdPlaybackState;

    iget-object v3, p0, Landroidx/media3/common/AdPlaybackState;->adsId:Ljava/lang/Object;

    iget-wide v5, p0, Landroidx/media3/common/AdPlaybackState;->adResumePositionUs:J

    iget-wide v7, p0, Landroidx/media3/common/AdPlaybackState;->contentDurationUs:J

    move-object v2, v1

    move-object v4, v0

    move v9, p1

    invoke-direct/range {v2 .. v9}, Landroidx/media3/common/AdPlaybackState;-><init>(Ljava/lang/Object;[Landroidx/media3/common/AdPlaybackState$AdGroup;JJI)V

    return-object v1
.end method

.method public withResetAdGroup(I)Landroidx/media3/common/AdPlaybackState;
    .locals 11
    .param p1, "adGroupIndex"    # I

    .line 1062
    iget v0, p0, Landroidx/media3/common/AdPlaybackState;->removedAdGroupCount:I

    sub-int v0, p1, v0

    .line 1063
    .local v0, "adjustedIndex":I
    iget-object v1, p0, Landroidx/media3/common/AdPlaybackState;->adGroups:[Landroidx/media3/common/AdPlaybackState$AdGroup;

    iget-object v2, p0, Landroidx/media3/common/AdPlaybackState;->adGroups:[Landroidx/media3/common/AdPlaybackState$AdGroup;

    array-length v2, v2

    invoke-static {v1, v2}, Landroidx/media3/common/util/Util;->nullSafeArrayCopy([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroidx/media3/common/AdPlaybackState$AdGroup;

    .line 1064
    .local v1, "adGroups":[Landroidx/media3/common/AdPlaybackState$AdGroup;
    aget-object v2, v1, v0

    invoke-virtual {v2}, Landroidx/media3/common/AdPlaybackState$AdGroup;->withAllAdsReset()Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object v2

    aput-object v2, v1, v0

    .line 1065
    new-instance v10, Landroidx/media3/common/AdPlaybackState;

    iget-object v3, p0, Landroidx/media3/common/AdPlaybackState;->adsId:Ljava/lang/Object;

    iget-wide v5, p0, Landroidx/media3/common/AdPlaybackState;->adResumePositionUs:J

    iget-wide v7, p0, Landroidx/media3/common/AdPlaybackState;->contentDurationUs:J

    iget v9, p0, Landroidx/media3/common/AdPlaybackState;->removedAdGroupCount:I

    move-object v2, v10

    move-object v4, v1

    invoke-direct/range {v2 .. v9}, Landroidx/media3/common/AdPlaybackState;-><init>(Ljava/lang/Object;[Landroidx/media3/common/AdPlaybackState$AdGroup;JJI)V

    return-object v10
.end method

.method public withSkippedAd(II)Landroidx/media3/common/AdPlaybackState;
    .locals 11
    .param p1, "adGroupIndex"    # I
    .param p2, "adIndexInAdGroup"    # I

    .line 878
    iget v0, p0, Landroidx/media3/common/AdPlaybackState;->removedAdGroupCount:I

    sub-int v0, p1, v0

    .line 879
    .local v0, "adjustedIndex":I
    iget-object v1, p0, Landroidx/media3/common/AdPlaybackState;->adGroups:[Landroidx/media3/common/AdPlaybackState$AdGroup;

    iget-object v2, p0, Landroidx/media3/common/AdPlaybackState;->adGroups:[Landroidx/media3/common/AdPlaybackState$AdGroup;

    array-length v2, v2

    invoke-static {v1, v2}, Landroidx/media3/common/util/Util;->nullSafeArrayCopy([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroidx/media3/common/AdPlaybackState$AdGroup;

    .line 880
    .local v1, "adGroups":[Landroidx/media3/common/AdPlaybackState$AdGroup;
    aget-object v2, v1, v0

    .line 881
    const/4 v3, 0x2

    invoke-virtual {v2, v3, p2}, Landroidx/media3/common/AdPlaybackState$AdGroup;->withAdState(II)Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object v2

    aput-object v2, v1, v0

    .line 882
    new-instance v10, Landroidx/media3/common/AdPlaybackState;

    iget-object v3, p0, Landroidx/media3/common/AdPlaybackState;->adsId:Ljava/lang/Object;

    iget-wide v5, p0, Landroidx/media3/common/AdPlaybackState;->adResumePositionUs:J

    iget-wide v7, p0, Landroidx/media3/common/AdPlaybackState;->contentDurationUs:J

    iget v9, p0, Landroidx/media3/common/AdPlaybackState;->removedAdGroupCount:I

    move-object v2, v10

    move-object v4, v1

    invoke-direct/range {v2 .. v9}, Landroidx/media3/common/AdPlaybackState;-><init>(Ljava/lang/Object;[Landroidx/media3/common/AdPlaybackState$AdGroup;JJI)V

    return-object v10
.end method

.method public withSkippedAdGroup(I)Landroidx/media3/common/AdPlaybackState;
    .locals 11
    .param p1, "adGroupIndex"    # I

    .line 916
    iget v0, p0, Landroidx/media3/common/AdPlaybackState;->removedAdGroupCount:I

    sub-int v0, p1, v0

    .line 917
    .local v0, "adjustedIndex":I
    iget-object v1, p0, Landroidx/media3/common/AdPlaybackState;->adGroups:[Landroidx/media3/common/AdPlaybackState$AdGroup;

    iget-object v2, p0, Landroidx/media3/common/AdPlaybackState;->adGroups:[Landroidx/media3/common/AdPlaybackState$AdGroup;

    array-length v2, v2

    invoke-static {v1, v2}, Landroidx/media3/common/util/Util;->nullSafeArrayCopy([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroidx/media3/common/AdPlaybackState$AdGroup;

    .line 918
    .local v1, "adGroups":[Landroidx/media3/common/AdPlaybackState$AdGroup;
    aget-object v2, v1, v0

    invoke-virtual {v2}, Landroidx/media3/common/AdPlaybackState$AdGroup;->withAllAdsSkipped()Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object v2

    aput-object v2, v1, v0

    .line 919
    new-instance v10, Landroidx/media3/common/AdPlaybackState;

    iget-object v3, p0, Landroidx/media3/common/AdPlaybackState;->adsId:Ljava/lang/Object;

    iget-wide v5, p0, Landroidx/media3/common/AdPlaybackState;->adResumePositionUs:J

    iget-wide v7, p0, Landroidx/media3/common/AdPlaybackState;->contentDurationUs:J

    iget v9, p0, Landroidx/media3/common/AdPlaybackState;->removedAdGroupCount:I

    move-object v2, v10

    move-object v4, v1

    invoke-direct/range {v2 .. v9}, Landroidx/media3/common/AdPlaybackState;-><init>(Ljava/lang/Object;[Landroidx/media3/common/AdPlaybackState$AdGroup;JJI)V

    return-object v10
.end method
