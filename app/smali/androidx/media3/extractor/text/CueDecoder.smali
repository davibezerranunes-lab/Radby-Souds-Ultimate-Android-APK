.class public final Landroidx/media3/extractor/text/CueDecoder;
.super Ljava/lang/Object;
.source "CueDecoder.java"


# static fields
.field static final BUNDLE_FIELD_CUES:Ljava/lang/String; = "c"

.field static final BUNDLE_FIELD_DURATION_US:Ljava/lang/String; = "d"


# direct methods
.method public static synthetic $r8$lambda$9omcAdsQJSGN7WgLEJCWnlPmsYI(Landroid/os/Bundle;)Landroidx/media3/common/text/Cue;
    .locals 0

    invoke-static {p0}, Landroidx/media3/common/text/Cue;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/text/Cue;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public decode(J[BII)Landroidx/media3/extractor/text/CuesWithTiming;
    .locals 10
    .param p1, "startTimeUs"    # J
    .param p3, "bytes"    # [B
    .param p4, "offset"    # I
    .param p5, "length"    # I

    .line 48
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 49
    .local v0, "parcel":Landroid/os/Parcel;
    invoke-virtual {v0, p3, p4, p5}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 50
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 51
    const-class v1, Landroid/os/Bundle;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v1

    .line 52
    .local v1, "bundle":Landroid/os/Bundle;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 53
    nop

    .line 54
    const-string v2, "c"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v2}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 55
    .local v2, "bundledCues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    new-instance v9, Landroidx/media3/extractor/text/CuesWithTiming;

    new-instance v3, Landroidx/media3/extractor/text/CueDecoder$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Landroidx/media3/extractor/text/CueDecoder$$ExternalSyntheticLambda0;-><init>()V

    .line 56
    invoke-static {v3, v2}, Landroidx/media3/common/util/BundleCollectionUtil;->fromBundleList(Lcom/google/common/base/Function;Ljava/util/List;)Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    .line 58
    const-string v3, "d"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    move-object v3, v9

    move-wide v5, p1

    invoke-direct/range {v3 .. v8}, Landroidx/media3/extractor/text/CuesWithTiming;-><init>(Ljava/util/List;JJ)V

    .line 55
    return-object v9
.end method
