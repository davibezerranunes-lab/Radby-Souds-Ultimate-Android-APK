.class public final Landroidx/media3/session/legacy/MediaSessionCompat$QueueItem;
.super Ljava/lang/Object;
.source "MediaSessionCompat.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/session/legacy/MediaSessionCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "QueueItem"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/session/legacy/MediaSessionCompat$QueueItem$Api21Impl;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/media3/session/legacy/MediaSessionCompat$QueueItem;",
            ">;"
        }
    .end annotation
.end field

.field public static final UNKNOWN_ID:I = -0x1


# instance fields
.field private final mDescription:Landroidx/media3/session/legacy/MediaDescriptionCompat;

.field private final mId:J

.field private mItemFwk:Landroid/media/session/MediaSession$QueueItem;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 2115
    new-instance v0, Landroidx/media3/session/legacy/MediaSessionCompat$QueueItem$1;

    invoke-direct {v0}, Landroidx/media3/session/legacy/MediaSessionCompat$QueueItem$1;-><init>()V

    sput-object v0, Landroidx/media3/session/legacy/MediaSessionCompat$QueueItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/media/session/MediaSession$QueueItem;Landroidx/media3/session/legacy/MediaDescriptionCompat;J)V
    .locals 2
    .param p1, "queueItem"    # Landroid/media/session/MediaSession$QueueItem;
    .param p2, "description"    # Landroidx/media3/session/legacy/MediaDescriptionCompat;
    .param p3, "id"    # J

    .line 2019
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2020
    if-eqz p2, :cond_1

    .line 2023
    const-wide/16 v0, -0x1

    cmp-long v0, p3, v0

    if-eqz v0, :cond_0

    .line 2026
    iput-object p2, p0, Landroidx/media3/session/legacy/MediaSessionCompat$QueueItem;->mDescription:Landroidx/media3/session/legacy/MediaDescriptionCompat;

    .line 2027
    iput-wide p3, p0, Landroidx/media3/session/legacy/MediaSessionCompat$QueueItem;->mId:J

    .line 2028
    iput-object p1, p0, Landroidx/media3/session/legacy/MediaSessionCompat$QueueItem;->mItemFwk:Landroid/media/session/MediaSession$QueueItem;

    .line 2029
    return-void

    .line 2024
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Id cannot be QueueItem.UNKNOWN_ID"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2021
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Description cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 2031
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2032
    sget-object v0, Landroidx/media3/session/legacy/MediaDescriptionCompat;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/session/legacy/MediaDescriptionCompat;

    iput-object v0, p0, Landroidx/media3/session/legacy/MediaSessionCompat$QueueItem;->mDescription:Landroidx/media3/session/legacy/MediaDescriptionCompat;

    .line 2033
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/session/legacy/MediaSessionCompat$QueueItem;->mId:J

    .line 2034
    return-void
.end method

.method public constructor <init>(Landroidx/media3/session/legacy/MediaDescriptionCompat;J)V
    .locals 1
    .param p1, "description"    # Landroidx/media3/session/legacy/MediaDescriptionCompat;
    .param p2, "id"    # J

    .line 2013
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Landroidx/media3/session/legacy/MediaSessionCompat$QueueItem;-><init>(Landroid/media/session/MediaSession$QueueItem;Landroidx/media3/session/legacy/MediaDescriptionCompat;J)V

    .line 2014
    return-void
.end method

.method public static fromQueueItem(Ljava/lang/Object;)Landroidx/media3/session/legacy/MediaSessionCompat$QueueItem;
    .locals 6
    .param p0, "queueItem"    # Ljava/lang/Object;

    .line 2085
    move-object v0, p0

    check-cast v0, Landroid/media/session/MediaSession$QueueItem;

    .line 2086
    .local v0, "queueItemObj":Landroid/media/session/MediaSession$QueueItem;
    invoke-static {v0}, Landroidx/media3/session/legacy/MediaSessionCompat$QueueItem$Api21Impl;->getDescription(Landroid/media/session/MediaSession$QueueItem;)Landroid/media/MediaDescription;

    move-result-object v1

    .line 2087
    .local v1, "descriptionObj":Ljava/lang/Object;
    nop

    .line 2088
    invoke-static {v1}, Landroidx/media3/session/legacy/MediaDescriptionCompat;->fromMediaDescription(Ljava/lang/Object;)Landroidx/media3/session/legacy/MediaDescriptionCompat;

    move-result-object v2

    .line 2089
    .local v2, "description":Landroidx/media3/session/legacy/MediaDescriptionCompat;
    invoke-static {v0}, Landroidx/media3/session/legacy/MediaSessionCompat$QueueItem$Api21Impl;->getQueueId(Landroid/media/session/MediaSession$QueueItem;)J

    move-result-wide v3

    .line 2090
    .local v3, "id":J
    new-instance v5, Landroidx/media3/session/legacy/MediaSessionCompat$QueueItem;

    invoke-direct {v5, v0, v2, v3, v4}, Landroidx/media3/session/legacy/MediaSessionCompat$QueueItem;-><init>(Landroid/media/session/MediaSession$QueueItem;Landroidx/media3/session/legacy/MediaDescriptionCompat;J)V

    return-object v5
.end method

.method public static fromQueueItemList(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/List<",
            "Landroidx/media3/session/legacy/MediaSessionCompat$QueueItem;",
            ">;"
        }
    .end annotation

    .line 2105
    .local p0, "itemList":Ljava/util/List;, "Ljava/util/List<+Ljava/lang/Object;>;"
    if-eqz p0, :cond_1

    .line 2108
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2109
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/session/legacy/MediaSessionCompat$QueueItem;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 2110
    .local v2, "itemObj":Ljava/lang/Object;
    invoke-static {v2}, Landroidx/media3/session/legacy/MediaSessionCompat$QueueItem;->fromQueueItem(Ljava/lang/Object;)Landroidx/media3/session/legacy/MediaSessionCompat$QueueItem;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2111
    .end local v2    # "itemObj":Ljava/lang/Object;
    goto :goto_0

    .line 2112
    :cond_0
    return-object v0

    .line 2106
    .end local v0    # "items":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/session/legacy/MediaSessionCompat$QueueItem;>;"
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 2054
    const/4 v0, 0x0

    return v0
.end method

.method public getDescription()Landroidx/media3/session/legacy/MediaDescriptionCompat;
    .locals 1

    .line 2038
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaSessionCompat$QueueItem;->mDescription:Landroidx/media3/session/legacy/MediaDescriptionCompat;

    return-object v0
.end method

.method public getQueueId()J
    .locals 2

    .line 2043
    iget-wide v0, p0, Landroidx/media3/session/legacy/MediaSessionCompat$QueueItem;->mId:J

    return-wide v0
.end method

.method public getQueueItem()Ljava/lang/Object;
    .locals 3

    .line 2066
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaSessionCompat$QueueItem;->mItemFwk:Landroid/media/session/MediaSession$QueueItem;

    if-nez v0, :cond_0

    .line 2069
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaSessionCompat$QueueItem;->mDescription:Landroidx/media3/session/legacy/MediaDescriptionCompat;

    .line 2070
    invoke-virtual {v0}, Landroidx/media3/session/legacy/MediaDescriptionCompat;->getMediaDescription()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaDescription;

    iget-wide v1, p0, Landroidx/media3/session/legacy/MediaSessionCompat$QueueItem;->mId:J

    invoke-static {v0, v1, v2}, Landroidx/media3/session/legacy/MediaSessionCompat$QueueItem$Api21Impl;->createQueueItem(Landroid/media/MediaDescription;J)Landroid/media/session/MediaSession$QueueItem;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/session/legacy/MediaSessionCompat$QueueItem;->mItemFwk:Landroid/media/session/MediaSession$QueueItem;

    .line 2071
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaSessionCompat$QueueItem;->mItemFwk:Landroid/media/session/MediaSession$QueueItem;

    return-object v0

    .line 2067
    :cond_0
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaSessionCompat$QueueItem;->mItemFwk:Landroid/media/session/MediaSession$QueueItem;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 2131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MediaSession.QueueItem {Description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/session/legacy/MediaSessionCompat$QueueItem;->mDescription:Landroidx/media3/session/legacy/MediaDescriptionCompat;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroidx/media3/session/legacy/MediaSessionCompat$QueueItem;->mId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 2048
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaSessionCompat$QueueItem;->mDescription:Landroidx/media3/session/legacy/MediaDescriptionCompat;

    invoke-virtual {v0, p1, p2}, Landroidx/media3/session/legacy/MediaDescriptionCompat;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2049
    iget-wide v0, p0, Landroidx/media3/session/legacy/MediaSessionCompat$QueueItem;->mId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 2050
    return-void
.end method
