.class public final Landroidx/media3/common/Timeline$Period;
.super Ljava/lang/Object;
.source "Timeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/common/Timeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Period"
.end annotation


# static fields
.field private static final FIELD_AD_PLAYBACK_STATE:Ljava/lang/String;

.field private static final FIELD_DURATION_US:Ljava/lang/String;

.field private static final FIELD_PLACEHOLDER:Ljava/lang/String;

.field private static final FIELD_POSITION_IN_WINDOW_US:Ljava/lang/String;

.field private static final FIELD_WINDOW_INDEX:Ljava/lang/String;


# instance fields
.field public adPlaybackState:Landroidx/media3/common/AdPlaybackState;

.field public durationUs:J

.field public id:Ljava/lang/Object;

.field public isPlaceholder:Z

.field public positionInWindowUs:J

.field public uid:Ljava/lang/Object;

.field public windowIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 896
    const/4 v0, 0x0

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Timeline$Period;->FIELD_WINDOW_INDEX:Ljava/lang/String;

    .line 897
    const/4 v0, 0x1

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Timeline$Period;->FIELD_DURATION_US:Ljava/lang/String;

    .line 898
    const/4 v0, 0x2

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Timeline$Period;->FIELD_POSITION_IN_WINDOW_US:Ljava/lang/String;

    .line 899
    const/4 v0, 0x3

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Timeline$Period;->FIELD_PLACEHOLDER:Ljava/lang/String;

    .line 900
    const/4 v0, 0x4

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Timeline$Period;->FIELD_AD_PLAYBACK_STATE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 582
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 583
    sget-object v0, Landroidx/media3/common/AdPlaybackState;->NONE:Landroidx/media3/common/AdPlaybackState;

    iput-object v0, p0, Landroidx/media3/common/Timeline$Period;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    .line 584
    return-void
.end method

.method public static fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/Timeline$Period;
    .locals 19
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 932
    move-object/from16 v0, p0

    sget-object v1, Landroidx/media3/common/Timeline$Period;->FIELD_WINDOW_INDEX:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 933
    .local v1, "windowIndex":I
    sget-object v3, Landroidx/media3/common/Timeline$Period;->FIELD_DURATION_US:Ljava/lang/String;

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v13

    .line 934
    .local v13, "durationUs":J
    sget-object v3, Landroidx/media3/common/Timeline$Period;->FIELD_POSITION_IN_WINDOW_US:Ljava/lang/String;

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v15

    .line 935
    .local v15, "positionInWindowUs":J
    sget-object v3, Landroidx/media3/common/Timeline$Period;->FIELD_PLACEHOLDER:Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 936
    .local v2, "isPlaceholder":Z
    sget-object v3, Landroidx/media3/common/Timeline$Period;->FIELD_AD_PLAYBACK_STATE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v17

    .line 938
    .local v17, "adPlaybackStateBundle":Landroid/os/Bundle;
    if-eqz v17, :cond_0

    .line 939
    invoke-static/range {v17 .. v17}, Landroidx/media3/common/AdPlaybackState;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/AdPlaybackState;

    move-result-object v3

    move-object v11, v3

    goto :goto_0

    .line 940
    :cond_0
    sget-object v3, Landroidx/media3/common/AdPlaybackState;->NONE:Landroidx/media3/common/AdPlaybackState;

    move-object v11, v3

    :goto_0
    nop

    .line 942
    .local v11, "adPlaybackState":Landroidx/media3/common/AdPlaybackState;
    new-instance v3, Landroidx/media3/common/Timeline$Period;

    invoke-direct {v3}, Landroidx/media3/common/Timeline$Period;-><init>()V

    move-object/from16 v18, v3

    .line 943
    .local v18, "period":Landroidx/media3/common/Timeline$Period;
    const/4 v4, 0x0

    const/4 v5, 0x0

    move v6, v1

    move-wide v7, v13

    move-wide v9, v15

    move v12, v2

    invoke-virtual/range {v3 .. v12}, Landroidx/media3/common/Timeline$Period;->set(Ljava/lang/Object;Ljava/lang/Object;IJJLandroidx/media3/common/AdPlaybackState;Z)Landroidx/media3/common/Timeline$Period;

    .line 951
    return-object v18
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 867
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 868
    return v0

    .line 870
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 873
    :cond_1
    move-object v2, p1

    check-cast v2, Landroidx/media3/common/Timeline$Period;

    .line 874
    .local v2, "that":Landroidx/media3/common/Timeline$Period;
    iget-object v3, p0, Landroidx/media3/common/Timeline$Period;->id:Ljava/lang/Object;

    iget-object v4, v2, Landroidx/media3/common/Timeline$Period;->id:Ljava/lang/Object;

    invoke-static {v3, v4}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroidx/media3/common/Timeline$Period;->uid:Ljava/lang/Object;

    iget-object v4, v2, Landroidx/media3/common/Timeline$Period;->uid:Ljava/lang/Object;

    .line 875
    invoke-static {v3, v4}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    iget v4, v2, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    if-ne v3, v4, :cond_2

    iget-wide v3, p0, Landroidx/media3/common/Timeline$Period;->durationUs:J

    iget-wide v5, v2, Landroidx/media3/common/Timeline$Period;->durationUs:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget-wide v3, p0, Landroidx/media3/common/Timeline$Period;->positionInWindowUs:J

    iget-wide v5, v2, Landroidx/media3/common/Timeline$Period;->positionInWindowUs:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget-boolean v3, p0, Landroidx/media3/common/Timeline$Period;->isPlaceholder:Z

    iget-boolean v4, v2, Landroidx/media3/common/Timeline$Period;->isPlaceholder:Z

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroidx/media3/common/Timeline$Period;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    iget-object v4, v2, Landroidx/media3/common/Timeline$Period;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    .line 880
    invoke-static {v3, v4}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 874
    :goto_0
    return v0

    .line 871
    .end local v2    # "that":Landroidx/media3/common/Timeline$Period;
    :cond_3
    :goto_1
    return v1
.end method

.method public getAdCountInAdGroup(I)I
    .locals 1
    .param p1, "adGroupIndex"    # I

    .line 788
    iget-object v0, p0, Landroidx/media3/common/Timeline$Period;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    invoke-virtual {v0, p1}, Landroidx/media3/common/AdPlaybackState;->getAdGroup(I)Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object v0

    iget v0, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->count:I

    return v0
.end method

.method public getAdDurationUs(II)J
    .locals 4
    .param p1, "adGroupIndex"    # I
    .param p2, "adIndexInAdGroup"    # I

    .line 800
    iget-object v0, p0, Landroidx/media3/common/Timeline$Period;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    invoke-virtual {v0, p1}, Landroidx/media3/common/AdPlaybackState;->getAdGroup(I)Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object v0

    .line 801
    .local v0, "adGroup":Landroidx/media3/common/AdPlaybackState$AdGroup;
    iget v1, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->count:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget-object v1, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->durationsUs:[J

    aget-wide v2, v1, p2

    goto :goto_0

    :cond_0
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    :goto_0
    return-wide v2
.end method

.method public getAdGroupCount()I
    .locals 1

    .line 694
    iget-object v0, p0, Landroidx/media3/common/Timeline$Period;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    iget v0, v0, Landroidx/media3/common/AdPlaybackState;->adGroupCount:I

    return v0
.end method

.method public getAdGroupIndexAfterPositionUs(J)I
    .locals 3
    .param p1, "positionUs"    # J

    .line 777
    iget-object v0, p0, Landroidx/media3/common/Timeline$Period;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    iget-wide v1, p0, Landroidx/media3/common/Timeline$Period;->durationUs:J

    invoke-virtual {v0, p1, p2, v1, v2}, Landroidx/media3/common/AdPlaybackState;->getAdGroupIndexAfterPositionUs(JJ)I

    move-result v0

    return v0
.end method

.method public getAdGroupIndexForPositionUs(J)I
    .locals 3
    .param p1, "positionUs"    # J

    .line 766
    iget-object v0, p0, Landroidx/media3/common/Timeline$Period;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    iget-wide v1, p0, Landroidx/media3/common/Timeline$Period;->durationUs:J

    invoke-virtual {v0, p1, p2, v1, v2}, Landroidx/media3/common/AdPlaybackState;->getAdGroupIndexForPositionUs(JJ)I

    move-result v0

    return v0
.end method

.method public getAdGroupTimeUs(I)J
    .locals 2
    .param p1, "adGroupIndex"    # I

    .line 714
    iget-object v0, p0, Landroidx/media3/common/Timeline$Period;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    invoke-virtual {v0, p1}, Landroidx/media3/common/AdPlaybackState;->getAdGroup(I)Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object v0

    iget-wide v0, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->timeUs:J

    return-wide v0
.end method

.method public getAdResumePositionUs()J
    .locals 2

    .line 838
    iget-object v0, p0, Landroidx/media3/common/Timeline$Period;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    iget-wide v0, v0, Landroidx/media3/common/AdPlaybackState;->adResumePositionUs:J

    return-wide v0
.end method

.method public getAdState(II)I
    .locals 3
    .param p1, "adGroupIndex"    # I
    .param p2, "adIndexInAdGroup"    # I

    .line 815
    iget-object v0, p0, Landroidx/media3/common/Timeline$Period;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    invoke-virtual {v0, p1}, Landroidx/media3/common/AdPlaybackState;->getAdGroup(I)Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object v0

    .line 816
    .local v0, "adGroup":Landroidx/media3/common/AdPlaybackState$AdGroup;
    iget v1, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->count:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 817
    iget-object v1, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->states:[I

    aget v1, v1, p2

    goto :goto_0

    .line 818
    :cond_0
    const/4 v1, 0x0

    .line 816
    :goto_0
    return v1
.end method

.method public getAdsId()Ljava/lang/Object;
    .locals 1

    .line 689
    iget-object v0, p0, Landroidx/media3/common/Timeline$Period;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    iget-object v0, v0, Landroidx/media3/common/AdPlaybackState;->adsId:Ljava/lang/Object;

    return-object v0
.end method

.method public getContentResumeOffsetUs(I)J
    .locals 2
    .param p1, "adGroupIndex"    # I

    .line 862
    iget-object v0, p0, Landroidx/media3/common/Timeline$Period;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    invoke-virtual {v0, p1}, Landroidx/media3/common/AdPlaybackState;->getAdGroup(I)Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object v0

    iget-wide v0, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->contentResumeOffsetUs:J

    return-wide v0
.end method

.method public getDurationMs()J
    .locals 2

    .line 660
    iget-wide v0, p0, Landroidx/media3/common/Timeline$Period;->durationUs:J

    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDurationUs()J
    .locals 2

    .line 665
    iget-wide v0, p0, Landroidx/media3/common/Timeline$Period;->durationUs:J

    return-wide v0
.end method

.method public getFirstAdIndexToPlay(I)I
    .locals 1
    .param p1, "adGroupIndex"    # I

    .line 726
    iget-object v0, p0, Landroidx/media3/common/Timeline$Period;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    invoke-virtual {v0, p1}, Landroidx/media3/common/AdPlaybackState;->getAdGroup(I)Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/AdPlaybackState$AdGroup;->getFirstAdIndexToPlay()I

    move-result v0

    return v0
.end method

.method public getNextAdIndexToPlay(II)I
    .locals 1
    .param p1, "adGroupIndex"    # I
    .param p2, "lastPlayedAdIndex"    # I

    .line 740
    iget-object v0, p0, Landroidx/media3/common/Timeline$Period;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    invoke-virtual {v0, p1}, Landroidx/media3/common/AdPlaybackState;->getAdGroup(I)Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroidx/media3/common/AdPlaybackState$AdGroup;->getNextAdIndexToPlay(I)I

    move-result v0

    return v0
.end method

.method public getPositionInWindowMs()J
    .locals 2

    .line 674
    iget-wide v0, p0, Landroidx/media3/common/Timeline$Period;->positionInWindowUs:J

    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPositionInWindowUs()J
    .locals 2

    .line 683
    iget-wide v0, p0, Landroidx/media3/common/Timeline$Period;->positionInWindowUs:J

    return-wide v0
.end method

.method public getRemovedAdGroupCount()I
    .locals 1

    .line 702
    iget-object v0, p0, Landroidx/media3/common/Timeline$Period;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    iget v0, v0, Landroidx/media3/common/AdPlaybackState;->removedAdGroupCount:I

    return v0
.end method

.method public hasPlayedAdGroup(I)Z
    .locals 1
    .param p1, "adGroupIndex"    # I

    .line 752
    iget-object v0, p0, Landroidx/media3/common/Timeline$Period;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    invoke-virtual {v0, p1}, Landroidx/media3/common/AdPlaybackState;->getAdGroup(I)Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/AdPlaybackState$AdGroup;->hasUnplayedAds()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hashCode()I
    .locals 7

    .line 885
    const/4 v0, 0x7

    .line 886
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroidx/media3/common/Timeline$Period;->id:Ljava/lang/Object;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    iget-object v2, p0, Landroidx/media3/common/Timeline$Period;->id:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v1, v2

    .line 887
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroidx/media3/common/Timeline$Period;->uid:Ljava/lang/Object;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Landroidx/media3/common/Timeline$Period;->uid:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    .line 888
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    add-int/2addr v1, v2

    .line 889
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-wide v2, p0, Landroidx/media3/common/Timeline$Period;->durationUs:J

    iget-wide v4, p0, Landroidx/media3/common/Timeline$Period;->durationUs:J

    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    .line 890
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Landroidx/media3/common/Timeline$Period;->positionInWindowUs:J

    iget-wide v4, p0, Landroidx/media3/common/Timeline$Period;->positionInWindowUs:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v1, v2

    .line 891
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Landroidx/media3/common/Timeline$Period;->isPlaceholder:Z

    add-int/2addr v0, v2

    .line 892
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroidx/media3/common/Timeline$Period;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    invoke-virtual {v2}, Landroidx/media3/common/AdPlaybackState;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 893
    .end local v0    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public isLivePostrollPlaceholder(I)Z
    .locals 2
    .param p1, "adGroupIndex"    # I

    .line 829
    invoke-virtual {p0}, Landroidx/media3/common/Timeline$Period;->getAdGroupCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Landroidx/media3/common/Timeline$Period;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    .line 830
    invoke-virtual {v0, p1}, Landroidx/media3/common/AdPlaybackState;->isLivePostrollPlaceholder(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 829
    :goto_0
    return v1
.end method

.method public isServerSideInsertedAdGroup(I)Z
    .locals 1
    .param p1, "adGroupIndex"    # I

    .line 850
    iget-object v0, p0, Landroidx/media3/common/Timeline$Period;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    invoke-virtual {v0, p1}, Landroidx/media3/common/AdPlaybackState;->getAdGroup(I)Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object v0

    iget-boolean v0, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->isServerSideInserted:Z

    return v0
.end method

.method public set(Ljava/lang/Object;Ljava/lang/Object;IJJ)Landroidx/media3/common/Timeline$Period;
    .locals 10
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "uid"    # Ljava/lang/Object;
    .param p3, "windowIndex"    # I
    .param p4, "durationUs"    # J
    .param p6, "positionInWindowUs"    # J

    .line 609
    sget-object v8, Landroidx/media3/common/AdPlaybackState;->NONE:Landroidx/media3/common/AdPlaybackState;

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    move-wide/from16 v6, p6

    invoke-virtual/range {v0 .. v9}, Landroidx/media3/common/Timeline$Period;->set(Ljava/lang/Object;Ljava/lang/Object;IJJLandroidx/media3/common/AdPlaybackState;Z)Landroidx/media3/common/Timeline$Period;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/Object;Ljava/lang/Object;IJJLandroidx/media3/common/AdPlaybackState;Z)Landroidx/media3/common/Timeline$Period;
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "uid"    # Ljava/lang/Object;
    .param p3, "windowIndex"    # I
    .param p4, "durationUs"    # J
    .param p6, "positionInWindowUs"    # J
    .param p8, "adPlaybackState"    # Landroidx/media3/common/AdPlaybackState;
    .param p9, "isPlaceholder"    # Z

    .line 648
    iput-object p1, p0, Landroidx/media3/common/Timeline$Period;->id:Ljava/lang/Object;

    .line 649
    iput-object p2, p0, Landroidx/media3/common/Timeline$Period;->uid:Ljava/lang/Object;

    .line 650
    iput p3, p0, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    .line 651
    iput-wide p4, p0, Landroidx/media3/common/Timeline$Period;->durationUs:J

    .line 652
    iput-wide p6, p0, Landroidx/media3/common/Timeline$Period;->positionInWindowUs:J

    .line 653
    iput-object p8, p0, Landroidx/media3/common/Timeline$Period;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    .line 654
    iput-boolean p9, p0, Landroidx/media3/common/Timeline$Period;->isPlaceholder:Z

    .line 655
    return-object p0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 5

    .line 910
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 911
    .local v0, "bundle":Landroid/os/Bundle;
    iget v1, p0, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    if-eqz v1, :cond_0

    .line 912
    sget-object v1, Landroidx/media3/common/Timeline$Period;->FIELD_WINDOW_INDEX:Ljava/lang/String;

    iget v2, p0, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 914
    :cond_0
    iget-wide v1, p0, Landroidx/media3/common/Timeline$Period;->durationUs:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    .line 915
    sget-object v1, Landroidx/media3/common/Timeline$Period;->FIELD_DURATION_US:Ljava/lang/String;

    iget-wide v2, p0, Landroidx/media3/common/Timeline$Period;->durationUs:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 917
    :cond_1
    iget-wide v1, p0, Landroidx/media3/common/Timeline$Period;->positionInWindowUs:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2

    .line 918
    sget-object v1, Landroidx/media3/common/Timeline$Period;->FIELD_POSITION_IN_WINDOW_US:Ljava/lang/String;

    iget-wide v2, p0, Landroidx/media3/common/Timeline$Period;->positionInWindowUs:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 920
    :cond_2
    iget-boolean v1, p0, Landroidx/media3/common/Timeline$Period;->isPlaceholder:Z

    if-eqz v1, :cond_3

    .line 921
    sget-object v1, Landroidx/media3/common/Timeline$Period;->FIELD_PLACEHOLDER:Ljava/lang/String;

    iget-boolean v2, p0, Landroidx/media3/common/Timeline$Period;->isPlaceholder:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 923
    :cond_3
    iget-object v1, p0, Landroidx/media3/common/Timeline$Period;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    sget-object v2, Landroidx/media3/common/AdPlaybackState;->NONE:Landroidx/media3/common/AdPlaybackState;

    invoke-virtual {v1, v2}, Landroidx/media3/common/AdPlaybackState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 924
    sget-object v1, Landroidx/media3/common/Timeline$Period;->FIELD_AD_PLAYBACK_STATE:Ljava/lang/String;

    iget-object v2, p0, Landroidx/media3/common/Timeline$Period;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    invoke-virtual {v2}, Landroidx/media3/common/AdPlaybackState;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 926
    :cond_4
    return-object v0
.end method
