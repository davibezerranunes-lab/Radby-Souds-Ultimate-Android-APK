.class public Landroidx/media3/session/legacy/MediaBrowserCompat$MediaItem;
.super Ljava/lang/Object;
.source "MediaBrowserCompat.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/session/legacy/MediaBrowserCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MediaItem"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/media3/session/legacy/MediaBrowserCompat$MediaItem;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLAG_BROWSABLE:I = 0x1

.field public static final FLAG_PLAYABLE:I = 0x2


# instance fields
.field private final mDescription:Landroidx/media3/session/legacy/MediaDescriptionCompat;

.field private final mFlags:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 544
    new-instance v0, Landroidx/media3/session/legacy/MediaBrowserCompat$MediaItem$1;

    invoke-direct {v0}, Landroidx/media3/session/legacy/MediaBrowserCompat$MediaItem$1;-><init>()V

    sput-object v0, Landroidx/media3/session/legacy/MediaBrowserCompat$MediaItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 519
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 520
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/media3/session/legacy/MediaBrowserCompat$MediaItem;->mFlags:I

    .line 521
    sget-object v0, Landroidx/media3/session/legacy/MediaDescriptionCompat;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/session/legacy/MediaDescriptionCompat;

    iput-object v0, p0, Landroidx/media3/session/legacy/MediaBrowserCompat$MediaItem;->mDescription:Landroidx/media3/session/legacy/MediaDescriptionCompat;

    .line 522
    return-void
.end method

.method public constructor <init>(Landroidx/media3/session/legacy/MediaDescriptionCompat;I)V
    .locals 2
    .param p1, "description"    # Landroidx/media3/session/legacy/MediaDescriptionCompat;
    .param p2, "flags"    # I

    .line 507
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 508
    if-eqz p1, :cond_1

    .line 511
    invoke-virtual {p1}, Landroidx/media3/session/legacy/MediaDescriptionCompat;->getMediaId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 514
    iput p2, p0, Landroidx/media3/session/legacy/MediaBrowserCompat$MediaItem;->mFlags:I

    .line 515
    iput-object p1, p0, Landroidx/media3/session/legacy/MediaBrowserCompat$MediaItem;->mDescription:Landroidx/media3/session/legacy/MediaDescriptionCompat;

    .line 516
    return-void

    .line 512
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "description must have a non-empty media id"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 509
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "description cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static fromMediaItem(Ljava/lang/Object;)Landroidx/media3/session/legacy/MediaBrowserCompat$MediaItem;
    .locals 4
    .param p0, "itemObj"    # Ljava/lang/Object;

    .line 467
    if-eqz p0, :cond_0

    .line 470
    move-object v0, p0

    check-cast v0, Landroid/media/browse/MediaBrowser$MediaItem;

    .line 471
    .local v0, "itemFwk":Landroid/media/browse/MediaBrowser$MediaItem;
    invoke-static {v0}, Landroidx/media3/session/legacy/MediaBrowserCompat$Api21Impl;->getFlags(Landroid/media/browse/MediaBrowser$MediaItem;)I

    move-result v1

    .line 472
    .local v1, "flags":I
    nop

    .line 473
    invoke-static {v0}, Landroidx/media3/session/legacy/MediaBrowserCompat$Api21Impl;->getDescription(Landroid/media/browse/MediaBrowser$MediaItem;)Landroid/media/MediaDescription;

    move-result-object v2

    invoke-static {v2}, Landroidx/media3/session/legacy/MediaDescriptionCompat;->fromMediaDescription(Ljava/lang/Object;)Landroidx/media3/session/legacy/MediaDescriptionCompat;

    move-result-object v2

    .line 474
    .local v2, "descriptionCompat":Landroidx/media3/session/legacy/MediaDescriptionCompat;
    new-instance v3, Landroidx/media3/session/legacy/MediaBrowserCompat$MediaItem;

    invoke-direct {v3, v2, v1}, Landroidx/media3/session/legacy/MediaBrowserCompat$MediaItem;-><init>(Landroidx/media3/session/legacy/MediaDescriptionCompat;I)V

    return-object v3

    .line 468
    .end local v0    # "itemFwk":Landroid/media/browse/MediaBrowser$MediaItem;
    .end local v1    # "flags":I
    .end local v2    # "descriptionCompat":Landroidx/media3/session/legacy/MediaDescriptionCompat;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static fromMediaItemList(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)",
            "Ljava/util/List<",
            "Landroidx/media3/session/legacy/MediaBrowserCompat$MediaItem;",
            ">;"
        }
    .end annotation

    .line 488
    .local p0, "itemList":Ljava/util/List;, "Ljava/util/List<*>;"
    if-eqz p0, :cond_2

    .line 491
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 492
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/session/legacy/MediaBrowserCompat$MediaItem;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 493
    .local v2, "itemObj":Ljava/lang/Object;
    invoke-static {v2}, Landroidx/media3/session/legacy/MediaBrowserCompat$MediaItem;->fromMediaItem(Ljava/lang/Object;)Landroidx/media3/session/legacy/MediaBrowserCompat$MediaItem;

    move-result-object v3

    .line 494
    .local v3, "item":Landroidx/media3/session/legacy/MediaBrowserCompat$MediaItem;
    if-eqz v3, :cond_0

    .line 495
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 497
    .end local v2    # "itemObj":Ljava/lang/Object;
    .end local v3    # "item":Landroidx/media3/session/legacy/MediaBrowserCompat$MediaItem;
    :cond_0
    goto :goto_0

    .line 498
    :cond_1
    return-object v0

    .line 489
    .end local v0    # "items":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/session/legacy/MediaBrowserCompat$MediaItem;>;"
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 526
    const/4 v0, 0x0

    return v0
.end method

.method public getDescription()Landroidx/media3/session/legacy/MediaDescriptionCompat;
    .locals 1

    .line 583
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaBrowserCompat$MediaItem;->mDescription:Landroidx/media3/session/legacy/MediaDescriptionCompat;

    return-object v0
.end method

.method public getFlags()I
    .locals 1

    .line 560
    iget v0, p0, Landroidx/media3/session/legacy/MediaBrowserCompat$MediaItem;->mFlags:I

    return v0
.end method

.method public getMediaId()Ljava/lang/String;
    .locals 1

    .line 593
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaBrowserCompat$MediaItem;->mDescription:Landroidx/media3/session/legacy/MediaDescriptionCompat;

    invoke-virtual {v0}, Landroidx/media3/session/legacy/MediaDescriptionCompat;->getMediaId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isBrowsable()Z
    .locals 2

    .line 569
    iget v0, p0, Landroidx/media3/session/legacy/MediaBrowserCompat$MediaItem;->mFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isPlayable()Z
    .locals 1

    .line 578
    iget v0, p0, Landroidx/media3/session/legacy/MediaBrowserCompat$MediaItem;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 537
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MediaItem{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 538
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "mFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroidx/media3/session/legacy/MediaBrowserCompat$MediaItem;->mFlags:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 539
    const-string v1, ", mDescription="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroidx/media3/session/legacy/MediaBrowserCompat$MediaItem;->mDescription:Landroidx/media3/session/legacy/MediaDescriptionCompat;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 540
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 541
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 531
    iget v0, p0, Landroidx/media3/session/legacy/MediaBrowserCompat$MediaItem;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 532
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaBrowserCompat$MediaItem;->mDescription:Landroidx/media3/session/legacy/MediaDescriptionCompat;

    invoke-virtual {v0, p1, p2}, Landroidx/media3/session/legacy/MediaDescriptionCompat;->writeToParcel(Landroid/os/Parcel;I)V

    .line 533
    return-void
.end method
