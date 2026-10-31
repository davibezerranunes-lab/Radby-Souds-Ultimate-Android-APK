.class public Landroidx/media3/common/MediaItem$ClippingConfiguration;
.super Ljava/lang/Object;
.source "MediaItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/common/MediaItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ClippingConfiguration"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;
    }
.end annotation


# static fields
.field private static final FIELD_END_POSITION_MS:Ljava/lang/String;

.field static final FIELD_END_POSITION_US:Ljava/lang/String;

.field private static final FIELD_RELATIVE_TO_DEFAULT_POSITION:Ljava/lang/String;

.field private static final FIELD_RELATIVE_TO_LIVE_WINDOW:Ljava/lang/String;

.field private static final FIELD_STARTS_AT_KEY_FRAME:Ljava/lang/String;

.field private static final FIELD_START_POSITION_MS:Ljava/lang/String;

.field static final FIELD_START_POSITION_US:Ljava/lang/String;

.field public static final UNSET:Landroidx/media3/common/MediaItem$ClippingConfiguration;


# instance fields
.field public final endPositionMs:J

.field public final endPositionUs:J

.field public final relativeToDefaultPosition:Z

.field public final relativeToLiveWindow:Z

.field public final startPositionMs:J

.field public final startPositionUs:J

.field public final startsAtKeyFrame:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1846
    new-instance v0, Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;

    invoke-direct {v0}, Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;-><init>()V

    invoke-virtual {v0}, Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;->build()Landroidx/media3/common/MediaItem$ClippingConfiguration;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/MediaItem$ClippingConfiguration;->UNSET:Landroidx/media3/common/MediaItem$ClippingConfiguration;

    .line 2042
    const/4 v0, 0x0

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/MediaItem$ClippingConfiguration;->FIELD_START_POSITION_MS:Ljava/lang/String;

    .line 2043
    const/4 v0, 0x1

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/MediaItem$ClippingConfiguration;->FIELD_END_POSITION_MS:Ljava/lang/String;

    .line 2044
    const/4 v0, 0x2

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/MediaItem$ClippingConfiguration;->FIELD_RELATIVE_TO_LIVE_WINDOW:Ljava/lang/String;

    .line 2045
    const/4 v0, 0x3

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/MediaItem$ClippingConfiguration;->FIELD_RELATIVE_TO_DEFAULT_POSITION:Ljava/lang/String;

    .line 2046
    const/4 v0, 0x4

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/MediaItem$ClippingConfiguration;->FIELD_STARTS_AT_KEY_FRAME:Ljava/lang/String;

    .line 2047
    const/4 v0, 0x5

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/MediaItem$ClippingConfiguration;->FIELD_START_POSITION_US:Ljava/lang/String;

    .line 2048
    const/4 v0, 0x6

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/MediaItem$ClippingConfiguration;->FIELD_END_POSITION_US:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;)V
    .locals 2
    .param p1, "builder"    # Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;

    .line 1999
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2000
    invoke-static {p1}, Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;->access$3900(Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/common/MediaItem$ClippingConfiguration;->startPositionMs:J

    .line 2001
    invoke-static {p1}, Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;->access$4000(Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/common/MediaItem$ClippingConfiguration;->endPositionMs:J

    .line 2002
    invoke-static {p1}, Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;->access$3900(Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/common/MediaItem$ClippingConfiguration;->startPositionUs:J

    .line 2003
    invoke-static {p1}, Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;->access$4000(Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/common/MediaItem$ClippingConfiguration;->endPositionUs:J

    .line 2004
    invoke-static {p1}, Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;->access$4100(Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/media3/common/MediaItem$ClippingConfiguration;->relativeToLiveWindow:Z

    .line 2005
    invoke-static {p1}, Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;->access$4200(Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/media3/common/MediaItem$ClippingConfiguration;->relativeToDefaultPosition:Z

    .line 2006
    invoke-static {p1}, Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;->access$4300(Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/media3/common/MediaItem$ClippingConfiguration;->startsAtKeyFrame:Z

    .line 2007
    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;Landroidx/media3/common/MediaItem$1;)V
    .locals 0
    .param p1, "x0"    # Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;
    .param p2, "x1"    # Landroidx/media3/common/MediaItem$1;

    .line 1843
    invoke-direct {p0, p1}, Landroidx/media3/common/MediaItem$ClippingConfiguration;-><init>(Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;)V

    return-void
.end method

.method public static fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/MediaItem$ClippingProperties;
    .locals 7
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 2081
    new-instance v0, Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;

    invoke-direct {v0}, Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;-><init>()V

    sget-object v1, Landroidx/media3/common/MediaItem$ClippingConfiguration;->FIELD_START_POSITION_MS:Ljava/lang/String;

    sget-object v2, Landroidx/media3/common/MediaItem$ClippingConfiguration;->UNSET:Landroidx/media3/common/MediaItem$ClippingConfiguration;

    iget-wide v2, v2, Landroidx/media3/common/MediaItem$ClippingConfiguration;->startPositionMs:J

    .line 2084
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 2083
    invoke-virtual {v0, v1, v2}, Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;->setStartPositionMs(J)Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;

    move-result-object v0

    sget-object v1, Landroidx/media3/common/MediaItem$ClippingConfiguration;->FIELD_END_POSITION_MS:Ljava/lang/String;

    sget-object v2, Landroidx/media3/common/MediaItem$ClippingConfiguration;->UNSET:Landroidx/media3/common/MediaItem$ClippingConfiguration;

    iget-wide v2, v2, Landroidx/media3/common/MediaItem$ClippingConfiguration;->endPositionMs:J

    .line 2087
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 2086
    invoke-virtual {v0, v1, v2}, Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;->setEndPositionMs(J)Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;

    move-result-object v0

    sget-object v1, Landroidx/media3/common/MediaItem$ClippingConfiguration;->FIELD_RELATIVE_TO_LIVE_WINDOW:Ljava/lang/String;

    sget-object v2, Landroidx/media3/common/MediaItem$ClippingConfiguration;->UNSET:Landroidx/media3/common/MediaItem$ClippingConfiguration;

    iget-boolean v2, v2, Landroidx/media3/common/MediaItem$ClippingConfiguration;->relativeToLiveWindow:Z

    .line 2089
    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 2088
    invoke-virtual {v0, v1}, Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;->setRelativeToLiveWindow(Z)Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;

    move-result-object v0

    sget-object v1, Landroidx/media3/common/MediaItem$ClippingConfiguration;->FIELD_RELATIVE_TO_DEFAULT_POSITION:Ljava/lang/String;

    sget-object v2, Landroidx/media3/common/MediaItem$ClippingConfiguration;->UNSET:Landroidx/media3/common/MediaItem$ClippingConfiguration;

    iget-boolean v2, v2, Landroidx/media3/common/MediaItem$ClippingConfiguration;->relativeToDefaultPosition:Z

    .line 2093
    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 2092
    invoke-virtual {v0, v1}, Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;->setRelativeToDefaultPosition(Z)Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;

    move-result-object v0

    sget-object v1, Landroidx/media3/common/MediaItem$ClippingConfiguration;->FIELD_STARTS_AT_KEY_FRAME:Ljava/lang/String;

    sget-object v2, Landroidx/media3/common/MediaItem$ClippingConfiguration;->UNSET:Landroidx/media3/common/MediaItem$ClippingConfiguration;

    iget-boolean v2, v2, Landroidx/media3/common/MediaItem$ClippingConfiguration;->startsAtKeyFrame:Z

    .line 2097
    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 2096
    invoke-virtual {v0, v1}, Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;->setStartsAtKeyFrame(Z)Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;

    move-result-object v0

    .line 2099
    .local v0, "clippingConfiguration":Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;
    sget-object v1, Landroidx/media3/common/MediaItem$ClippingConfiguration;->FIELD_START_POSITION_US:Ljava/lang/String;

    sget-object v2, Landroidx/media3/common/MediaItem$ClippingConfiguration;->UNSET:Landroidx/media3/common/MediaItem$ClippingConfiguration;

    iget-wide v2, v2, Landroidx/media3/common/MediaItem$ClippingConfiguration;->startPositionUs:J

    .line 2100
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 2101
    .local v1, "startPositionUs":J
    sget-object v3, Landroidx/media3/common/MediaItem$ClippingConfiguration;->UNSET:Landroidx/media3/common/MediaItem$ClippingConfiguration;

    iget-wide v3, v3, Landroidx/media3/common/MediaItem$ClippingConfiguration;->startPositionUs:J

    cmp-long v3, v1, v3

    if-eqz v3, :cond_0

    .line 2102
    invoke-virtual {v0, v1, v2}, Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;->setStartPositionUs(J)Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;

    .line 2104
    :cond_0
    sget-object v3, Landroidx/media3/common/MediaItem$ClippingConfiguration;->FIELD_END_POSITION_US:Ljava/lang/String;

    sget-object v4, Landroidx/media3/common/MediaItem$ClippingConfiguration;->UNSET:Landroidx/media3/common/MediaItem$ClippingConfiguration;

    iget-wide v4, v4, Landroidx/media3/common/MediaItem$ClippingConfiguration;->endPositionUs:J

    .line 2105
    invoke-virtual {p0, v3, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 2106
    .local v3, "endPositionUs":J
    sget-object v5, Landroidx/media3/common/MediaItem$ClippingConfiguration;->UNSET:Landroidx/media3/common/MediaItem$ClippingConfiguration;

    iget-wide v5, v5, Landroidx/media3/common/MediaItem$ClippingConfiguration;->endPositionUs:J

    cmp-long v5, v3, v5

    if-eqz v5, :cond_1

    .line 2107
    invoke-virtual {v0, v3, v4}, Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;->setEndPositionUs(J)Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;

    .line 2109
    :cond_1
    invoke-virtual {v0}, Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;->buildClippingProperties()Landroidx/media3/common/MediaItem$ClippingProperties;

    move-result-object v5

    return-object v5
.end method


# virtual methods
.method public buildUpon()Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;
    .locals 2

    .line 2011
    new-instance v0, Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;-><init>(Landroidx/media3/common/MediaItem$ClippingConfiguration;Landroidx/media3/common/MediaItem$1;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 2016
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 2017
    return v0

    .line 2019
    :cond_0
    instance-of v1, p1, Landroidx/media3/common/MediaItem$ClippingConfiguration;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 2020
    return v2

    .line 2023
    :cond_1
    move-object v1, p1

    check-cast v1, Landroidx/media3/common/MediaItem$ClippingConfiguration;

    .line 2025
    .local v1, "other":Landroidx/media3/common/MediaItem$ClippingConfiguration;
    iget-wide v3, p0, Landroidx/media3/common/MediaItem$ClippingConfiguration;->startPositionUs:J

    iget-wide v5, v1, Landroidx/media3/common/MediaItem$ClippingConfiguration;->startPositionUs:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget-wide v3, p0, Landroidx/media3/common/MediaItem$ClippingConfiguration;->endPositionUs:J

    iget-wide v5, v1, Landroidx/media3/common/MediaItem$ClippingConfiguration;->endPositionUs:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget-boolean v3, p0, Landroidx/media3/common/MediaItem$ClippingConfiguration;->relativeToLiveWindow:Z

    iget-boolean v4, v1, Landroidx/media3/common/MediaItem$ClippingConfiguration;->relativeToLiveWindow:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Landroidx/media3/common/MediaItem$ClippingConfiguration;->relativeToDefaultPosition:Z

    iget-boolean v4, v1, Landroidx/media3/common/MediaItem$ClippingConfiguration;->relativeToDefaultPosition:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Landroidx/media3/common/MediaItem$ClippingConfiguration;->startsAtKeyFrame:Z

    iget-boolean v4, v1, Landroidx/media3/common/MediaItem$ClippingConfiguration;->startsAtKeyFrame:Z

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 7

    .line 2034
    iget-wide v0, p0, Landroidx/media3/common/MediaItem$ClippingConfiguration;->startPositionUs:J

    iget-wide v2, p0, Landroidx/media3/common/MediaItem$ClippingConfiguration;->startPositionUs:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    .line 2035
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Landroidx/media3/common/MediaItem$ClippingConfiguration;->endPositionUs:J

    iget-wide v5, p0, Landroidx/media3/common/MediaItem$ClippingConfiguration;->endPositionUs:J

    ushr-long v4, v5, v4

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v1, v2

    .line 2036
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Landroidx/media3/common/MediaItem$ClippingConfiguration;->relativeToLiveWindow:Z

    add-int/2addr v0, v2

    .line 2037
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Landroidx/media3/common/MediaItem$ClippingConfiguration;->relativeToDefaultPosition:Z

    add-int/2addr v1, v2

    .line 2038
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Landroidx/media3/common/MediaItem$ClippingConfiguration;->startsAtKeyFrame:Z

    add-int/2addr v0, v2

    .line 2039
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 5

    .line 2052
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2053
    .local v0, "bundle":Landroid/os/Bundle;
    iget-wide v1, p0, Landroidx/media3/common/MediaItem$ClippingConfiguration;->startPositionMs:J

    sget-object v3, Landroidx/media3/common/MediaItem$ClippingConfiguration;->UNSET:Landroidx/media3/common/MediaItem$ClippingConfiguration;

    iget-wide v3, v3, Landroidx/media3/common/MediaItem$ClippingConfiguration;->startPositionMs:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 2054
    sget-object v1, Landroidx/media3/common/MediaItem$ClippingConfiguration;->FIELD_START_POSITION_MS:Ljava/lang/String;

    iget-wide v2, p0, Landroidx/media3/common/MediaItem$ClippingConfiguration;->startPositionMs:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2056
    :cond_0
    iget-wide v1, p0, Landroidx/media3/common/MediaItem$ClippingConfiguration;->endPositionMs:J

    sget-object v3, Landroidx/media3/common/MediaItem$ClippingConfiguration;->UNSET:Landroidx/media3/common/MediaItem$ClippingConfiguration;

    iget-wide v3, v3, Landroidx/media3/common/MediaItem$ClippingConfiguration;->endPositionMs:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    .line 2057
    sget-object v1, Landroidx/media3/common/MediaItem$ClippingConfiguration;->FIELD_END_POSITION_MS:Ljava/lang/String;

    iget-wide v2, p0, Landroidx/media3/common/MediaItem$ClippingConfiguration;->endPositionMs:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2059
    :cond_1
    iget-wide v1, p0, Landroidx/media3/common/MediaItem$ClippingConfiguration;->startPositionUs:J

    sget-object v3, Landroidx/media3/common/MediaItem$ClippingConfiguration;->UNSET:Landroidx/media3/common/MediaItem$ClippingConfiguration;

    iget-wide v3, v3, Landroidx/media3/common/MediaItem$ClippingConfiguration;->startPositionUs:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2

    .line 2060
    sget-object v1, Landroidx/media3/common/MediaItem$ClippingConfiguration;->FIELD_START_POSITION_US:Ljava/lang/String;

    iget-wide v2, p0, Landroidx/media3/common/MediaItem$ClippingConfiguration;->startPositionUs:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2062
    :cond_2
    iget-wide v1, p0, Landroidx/media3/common/MediaItem$ClippingConfiguration;->endPositionUs:J

    sget-object v3, Landroidx/media3/common/MediaItem$ClippingConfiguration;->UNSET:Landroidx/media3/common/MediaItem$ClippingConfiguration;

    iget-wide v3, v3, Landroidx/media3/common/MediaItem$ClippingConfiguration;->endPositionUs:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_3

    .line 2063
    sget-object v1, Landroidx/media3/common/MediaItem$ClippingConfiguration;->FIELD_END_POSITION_US:Ljava/lang/String;

    iget-wide v2, p0, Landroidx/media3/common/MediaItem$ClippingConfiguration;->endPositionUs:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2065
    :cond_3
    iget-boolean v1, p0, Landroidx/media3/common/MediaItem$ClippingConfiguration;->relativeToLiveWindow:Z

    sget-object v2, Landroidx/media3/common/MediaItem$ClippingConfiguration;->UNSET:Landroidx/media3/common/MediaItem$ClippingConfiguration;

    iget-boolean v2, v2, Landroidx/media3/common/MediaItem$ClippingConfiguration;->relativeToLiveWindow:Z

    if-eq v1, v2, :cond_4

    .line 2066
    sget-object v1, Landroidx/media3/common/MediaItem$ClippingConfiguration;->FIELD_RELATIVE_TO_LIVE_WINDOW:Ljava/lang/String;

    iget-boolean v2, p0, Landroidx/media3/common/MediaItem$ClippingConfiguration;->relativeToLiveWindow:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2068
    :cond_4
    iget-boolean v1, p0, Landroidx/media3/common/MediaItem$ClippingConfiguration;->relativeToDefaultPosition:Z

    sget-object v2, Landroidx/media3/common/MediaItem$ClippingConfiguration;->UNSET:Landroidx/media3/common/MediaItem$ClippingConfiguration;

    iget-boolean v2, v2, Landroidx/media3/common/MediaItem$ClippingConfiguration;->relativeToDefaultPosition:Z

    if-eq v1, v2, :cond_5

    .line 2069
    sget-object v1, Landroidx/media3/common/MediaItem$ClippingConfiguration;->FIELD_RELATIVE_TO_DEFAULT_POSITION:Ljava/lang/String;

    iget-boolean v2, p0, Landroidx/media3/common/MediaItem$ClippingConfiguration;->relativeToDefaultPosition:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2071
    :cond_5
    iget-boolean v1, p0, Landroidx/media3/common/MediaItem$ClippingConfiguration;->startsAtKeyFrame:Z

    sget-object v2, Landroidx/media3/common/MediaItem$ClippingConfiguration;->UNSET:Landroidx/media3/common/MediaItem$ClippingConfiguration;

    iget-boolean v2, v2, Landroidx/media3/common/MediaItem$ClippingConfiguration;->startsAtKeyFrame:Z

    if-eq v1, v2, :cond_6

    .line 2072
    sget-object v1, Landroidx/media3/common/MediaItem$ClippingConfiguration;->FIELD_STARTS_AT_KEY_FRAME:Ljava/lang/String;

    iget-boolean v2, p0, Landroidx/media3/common/MediaItem$ClippingConfiguration;->startsAtKeyFrame:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2074
    :cond_6
    return-object v0
.end method
