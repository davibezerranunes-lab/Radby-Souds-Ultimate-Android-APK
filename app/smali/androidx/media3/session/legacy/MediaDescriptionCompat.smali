.class public final Landroidx/media3/session/legacy/MediaDescriptionCompat;
.super Ljava/lang/Object;
.source "MediaDescriptionCompat.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/session/legacy/MediaDescriptionCompat$Api21Impl;,
        Landroidx/media3/session/legacy/MediaDescriptionCompat$Api23Impl;,
        Landroidx/media3/session/legacy/MediaDescriptionCompat$Builder;
    }
.end annotation


# static fields
.field public static final BT_FOLDER_TYPE_ALBUMS:J = 0x2L

.field public static final BT_FOLDER_TYPE_ARTISTS:J = 0x3L

.field public static final BT_FOLDER_TYPE_GENRES:J = 0x4L

.field public static final BT_FOLDER_TYPE_MIXED:J = 0x0L

.field public static final BT_FOLDER_TYPE_PLAYLISTS:J = 0x5L

.field public static final BT_FOLDER_TYPE_TITLES:J = 0x1L

.field public static final BT_FOLDER_TYPE_YEARS:J = 0x6L

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/media3/session/legacy/MediaDescriptionCompat;",
            ">;"
        }
    .end annotation
.end field

.field public static final DESCRIPTION_KEY_MEDIA_URI:Ljava/lang/String; = "android.support.v4.media.description.MEDIA_URI"

.field public static final DESCRIPTION_KEY_NULL_BUNDLE_FLAG:Ljava/lang/String; = "android.support.v4.media.description.NULL_BUNDLE_FLAG"

.field public static final EXTRA_BT_FOLDER_TYPE:Ljava/lang/String; = "android.media.extra.BT_FOLDER_TYPE"

.field public static final EXTRA_DOWNLOAD_STATUS:Ljava/lang/String; = "android.media.extra.DOWNLOAD_STATUS"

.field public static final STATUS_DOWNLOADED:J = 0x2L

.field public static final STATUS_DOWNLOADING:J = 0x1L

.field public static final STATUS_NOT_DOWNLOADED:J = 0x0L

.field private static final TAG:Ljava/lang/String; = "MediaDescriptionCompat"


# instance fields
.field private final mDescription:Ljava/lang/CharSequence;

.field private mDescriptionFwk:Landroid/media/MediaDescription;

.field private final mExtras:Landroid/os/Bundle;

.field private final mIcon:Landroid/graphics/Bitmap;

.field private final mIconUri:Landroid/net/Uri;

.field private final mMediaId:Ljava/lang/String;

.field private final mMediaUri:Landroid/net/Uri;

.field private final mSubtitle:Ljava/lang/CharSequence;

.field private final mTitle:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 417
    new-instance v0, Landroidx/media3/session/legacy/MediaDescriptionCompat$1;

    invoke-direct {v0}, Landroidx/media3/session/legacy/MediaDescriptionCompat$1;-><init>()V

    sput-object v0, Landroidx/media3/session/legacy/MediaDescriptionCompat;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/session/legacy/MediaDescriptionCompat;->mMediaId:Ljava/lang/String;

    .line 202
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroidx/media3/session/legacy/MediaDescriptionCompat;->mTitle:Ljava/lang/CharSequence;

    .line 203
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroidx/media3/session/legacy/MediaDescriptionCompat;->mSubtitle:Ljava/lang/CharSequence;

    .line 204
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroidx/media3/session/legacy/MediaDescriptionCompat;->mDescription:Ljava/lang/CharSequence;

    .line 206
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 207
    .local v0, "loader":Ljava/lang/ClassLoader;
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    iput-object v1, p0, Landroidx/media3/session/legacy/MediaDescriptionCompat;->mIcon:Landroid/graphics/Bitmap;

    .line 208
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Landroidx/media3/session/legacy/MediaDescriptionCompat;->mIconUri:Landroid/net/Uri;

    .line 209
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Landroidx/media3/session/legacy/MediaDescriptionCompat;->mExtras:Landroid/os/Bundle;

    .line 210
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Landroidx/media3/session/legacy/MediaDescriptionCompat;->mMediaUri:Landroid/net/Uri;

    .line 211
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/Bitmap;Landroid/net/Uri;Landroid/os/Bundle;Landroid/net/Uri;)V
    .locals 0
    .param p1, "mediaId"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "subtitle"    # Ljava/lang/CharSequence;
    .param p4, "description"    # Ljava/lang/CharSequence;
    .param p5, "icon"    # Landroid/graphics/Bitmap;
    .param p6, "iconUri"    # Landroid/net/Uri;
    .param p7, "extras"    # Landroid/os/Bundle;
    .param p8, "mediaUri"    # Landroid/net/Uri;

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    iput-object p1, p0, Landroidx/media3/session/legacy/MediaDescriptionCompat;->mMediaId:Ljava/lang/String;

    .line 190
    iput-object p2, p0, Landroidx/media3/session/legacy/MediaDescriptionCompat;->mTitle:Ljava/lang/CharSequence;

    .line 191
    iput-object p3, p0, Landroidx/media3/session/legacy/MediaDescriptionCompat;->mSubtitle:Ljava/lang/CharSequence;

    .line 192
    iput-object p4, p0, Landroidx/media3/session/legacy/MediaDescriptionCompat;->mDescription:Ljava/lang/CharSequence;

    .line 193
    iput-object p5, p0, Landroidx/media3/session/legacy/MediaDescriptionCompat;->mIcon:Landroid/graphics/Bitmap;

    .line 194
    iput-object p6, p0, Landroidx/media3/session/legacy/MediaDescriptionCompat;->mIconUri:Landroid/net/Uri;

    .line 195
    iput-object p7, p0, Landroidx/media3/session/legacy/MediaDescriptionCompat;->mExtras:Landroid/os/Bundle;

    .line 196
    iput-object p8, p0, Landroidx/media3/session/legacy/MediaDescriptionCompat;->mMediaUri:Landroid/net/Uri;

    .line 197
    return-void
.end method

.method public static fromMediaDescription(Ljava/lang/Object;)Landroidx/media3/session/legacy/MediaDescriptionCompat;
    .locals 8
    .param p0, "descriptionObj"    # Ljava/lang/Object;

    .line 370
    if-eqz p0, :cond_4

    .line 371
    new-instance v0, Landroidx/media3/session/legacy/MediaDescriptionCompat$Builder;

    invoke-direct {v0}, Landroidx/media3/session/legacy/MediaDescriptionCompat$Builder;-><init>()V

    .line 372
    .local v0, "bob":Landroidx/media3/session/legacy/MediaDescriptionCompat$Builder;
    move-object v1, p0

    check-cast v1, Landroid/media/MediaDescription;

    .line 373
    .local v1, "description":Landroid/media/MediaDescription;
    invoke-static {v1}, Landroidx/media3/session/legacy/MediaDescriptionCompat$Api21Impl;->getMediaId(Landroid/media/MediaDescription;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/media3/session/legacy/MediaDescriptionCompat$Builder;->setMediaId(Ljava/lang/String;)Landroidx/media3/session/legacy/MediaDescriptionCompat$Builder;

    .line 374
    invoke-static {v1}, Landroidx/media3/session/legacy/MediaDescriptionCompat$Api21Impl;->getTitle(Landroid/media/MediaDescription;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/media3/session/legacy/MediaDescriptionCompat$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/media3/session/legacy/MediaDescriptionCompat$Builder;

    .line 375
    invoke-static {v1}, Landroidx/media3/session/legacy/MediaDescriptionCompat$Api21Impl;->getSubtitle(Landroid/media/MediaDescription;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/media3/session/legacy/MediaDescriptionCompat$Builder;->setSubtitle(Ljava/lang/CharSequence;)Landroidx/media3/session/legacy/MediaDescriptionCompat$Builder;

    .line 376
    invoke-static {v1}, Landroidx/media3/session/legacy/MediaDescriptionCompat$Api21Impl;->getDescription(Landroid/media/MediaDescription;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/media3/session/legacy/MediaDescriptionCompat$Builder;->setDescription(Ljava/lang/CharSequence;)Landroidx/media3/session/legacy/MediaDescriptionCompat$Builder;

    .line 377
    invoke-static {v1}, Landroidx/media3/session/legacy/MediaDescriptionCompat$Api21Impl;->getIconBitmap(Landroid/media/MediaDescription;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/media3/session/legacy/MediaDescriptionCompat$Builder;->setIconBitmap(Landroid/graphics/Bitmap;)Landroidx/media3/session/legacy/MediaDescriptionCompat$Builder;

    .line 378
    invoke-static {v1}, Landroidx/media3/session/legacy/MediaDescriptionCompat$Api21Impl;->getIconUri(Landroid/media/MediaDescription;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/media3/session/legacy/MediaDescriptionCompat$Builder;->setIconUri(Landroid/net/Uri;)Landroidx/media3/session/legacy/MediaDescriptionCompat$Builder;

    .line 379
    invoke-static {v1}, Landroidx/media3/session/legacy/MediaDescriptionCompat$Api21Impl;->getExtras(Landroid/media/MediaDescription;)Landroid/os/Bundle;

    move-result-object v2

    .line 380
    .local v2, "extras":Landroid/os/Bundle;
    invoke-static {v2}, Landroidx/media3/session/legacy/MediaSessionCompat;->unparcelWithClassLoader(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    .line 381
    if-eqz v2, :cond_0

    .line 382
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object v2, v3

    .line 384
    :cond_0
    const/4 v3, 0x0

    .line 385
    .local v3, "mediaUri":Landroid/net/Uri;
    if-eqz v2, :cond_2

    .line 386
    const-string v4, "android.support.v4.media.description.MEDIA_URI"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    move-object v3, v5

    check-cast v3, Landroid/net/Uri;

    .line 387
    if-eqz v3, :cond_2

    .line 388
    const-string v5, "android.support.v4.media.description.NULL_BUNDLE_FLAG"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v2}, Landroid/os/Bundle;->size()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    .line 392
    const/4 v2, 0x0

    goto :goto_0

    .line 397
    :cond_1
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 398
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 402
    :cond_2
    :goto_0
    invoke-virtual {v0, v2}, Landroidx/media3/session/legacy/MediaDescriptionCompat$Builder;->setExtras(Landroid/os/Bundle;)Landroidx/media3/session/legacy/MediaDescriptionCompat$Builder;

    .line 403
    if-eqz v3, :cond_3

    .line 404
    invoke-virtual {v0, v3}, Landroidx/media3/session/legacy/MediaDescriptionCompat$Builder;->setMediaUri(Landroid/net/Uri;)Landroidx/media3/session/legacy/MediaDescriptionCompat$Builder;

    goto :goto_1

    .line 405
    :cond_3
    nop

    .line 406
    invoke-static {v1}, Landroidx/media3/session/legacy/MediaDescriptionCompat$Api23Impl;->getMediaUri(Landroid/media/MediaDescription;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroidx/media3/session/legacy/MediaDescriptionCompat$Builder;->setMediaUri(Landroid/net/Uri;)Landroidx/media3/session/legacy/MediaDescriptionCompat$Builder;

    .line 408
    :goto_1
    invoke-virtual {v0}, Landroidx/media3/session/legacy/MediaDescriptionCompat$Builder;->build()Landroidx/media3/session/legacy/MediaDescriptionCompat;

    move-result-object v4

    .line 409
    .local v4, "descriptionCompat":Landroidx/media3/session/legacy/MediaDescriptionCompat;
    iput-object v1, v4, Landroidx/media3/session/legacy/MediaDescriptionCompat;->mDescriptionFwk:Landroid/media/MediaDescription;

    .line 411
    return-object v4

    .line 413
    .end local v0    # "bob":Landroidx/media3/session/legacy/MediaDescriptionCompat$Builder;
    .end local v1    # "description":Landroid/media/MediaDescription;
    .end local v2    # "extras":Landroid/os/Bundle;
    .end local v3    # "mediaUri":Landroid/net/Uri;
    .end local v4    # "descriptionCompat":Landroidx/media3/session/legacy/MediaDescriptionCompat;
    :cond_4
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 291
    const/4 v0, 0x0

    return v0
.end method

.method public getDescription()Ljava/lang/CharSequence;
    .locals 1

    .line 246
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaDescriptionCompat;->mDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .line 276
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaDescriptionCompat;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getIconBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 256
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaDescriptionCompat;->mIcon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getIconUri()Landroid/net/Uri;
    .locals 1

    .line 266
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaDescriptionCompat;->mIconUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getMediaDescription()Ljava/lang/Object;
    .locals 2

    .line 324
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaDescriptionCompat;->mDescriptionFwk:Landroid/media/MediaDescription;

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaDescriptionCompat;->mDescriptionFwk:Landroid/media/MediaDescription;

    return-object v0

    .line 327
    :cond_0
    invoke-static {}, Landroidx/media3/session/legacy/MediaDescriptionCompat$Api21Impl;->createBuilder()Landroid/media/MediaDescription$Builder;

    move-result-object v0

    .line 328
    .local v0, "bob":Landroid/media/MediaDescription$Builder;
    iget-object v1, p0, Landroidx/media3/session/legacy/MediaDescriptionCompat;->mMediaId:Ljava/lang/String;

    invoke-static {v0, v1}, Landroidx/media3/session/legacy/MediaDescriptionCompat$Api21Impl;->setMediaId(Landroid/media/MediaDescription$Builder;Ljava/lang/String;)V

    .line 329
    iget-object v1, p0, Landroidx/media3/session/legacy/MediaDescriptionCompat;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Landroidx/media3/session/legacy/MediaDescriptionCompat$Api21Impl;->setTitle(Landroid/media/MediaDescription$Builder;Ljava/lang/CharSequence;)V

    .line 330
    iget-object v1, p0, Landroidx/media3/session/legacy/MediaDescriptionCompat;->mSubtitle:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Landroidx/media3/session/legacy/MediaDescriptionCompat$Api21Impl;->setSubtitle(Landroid/media/MediaDescription$Builder;Ljava/lang/CharSequence;)V

    .line 331
    iget-object v1, p0, Landroidx/media3/session/legacy/MediaDescriptionCompat;->mDescription:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Landroidx/media3/session/legacy/MediaDescriptionCompat$Api21Impl;->setDescription(Landroid/media/MediaDescription$Builder;Ljava/lang/CharSequence;)V

    .line 332
    iget-object v1, p0, Landroidx/media3/session/legacy/MediaDescriptionCompat;->mIcon:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Landroidx/media3/session/legacy/MediaDescriptionCompat$Api21Impl;->setIconBitmap(Landroid/media/MediaDescription$Builder;Landroid/graphics/Bitmap;)V

    .line 333
    iget-object v1, p0, Landroidx/media3/session/legacy/MediaDescriptionCompat;->mIconUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Landroidx/media3/session/legacy/MediaDescriptionCompat$Api21Impl;->setIconUri(Landroid/media/MediaDescription$Builder;Landroid/net/Uri;)V

    .line 338
    nop

    .line 349
    iget-object v1, p0, Landroidx/media3/session/legacy/MediaDescriptionCompat;->mExtras:Landroid/os/Bundle;

    invoke-static {v0, v1}, Landroidx/media3/session/legacy/MediaDescriptionCompat$Api21Impl;->setExtras(Landroid/media/MediaDescription$Builder;Landroid/os/Bundle;)V

    .line 351
    nop

    .line 352
    iget-object v1, p0, Landroidx/media3/session/legacy/MediaDescriptionCompat;->mMediaUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Landroidx/media3/session/legacy/MediaDescriptionCompat$Api23Impl;->setMediaUri(Landroid/media/MediaDescription$Builder;Landroid/net/Uri;)V

    .line 354
    invoke-static {v0}, Landroidx/media3/session/legacy/MediaDescriptionCompat$Api21Impl;->build(Landroid/media/MediaDescription$Builder;)Landroid/media/MediaDescription;

    move-result-object v1

    iput-object v1, p0, Landroidx/media3/session/legacy/MediaDescriptionCompat;->mDescriptionFwk:Landroid/media/MediaDescription;

    .line 356
    iget-object v1, p0, Landroidx/media3/session/legacy/MediaDescriptionCompat;->mDescriptionFwk:Landroid/media/MediaDescription;

    return-object v1
.end method

.method public getMediaId()Ljava/lang/String;
    .locals 1

    .line 216
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaDescriptionCompat;->mMediaId:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaUri()Landroid/net/Uri;
    .locals 1

    .line 286
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaDescriptionCompat;->mMediaUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .line 236
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaDescriptionCompat;->mSubtitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 226
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaDescriptionCompat;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroidx/media3/session/legacy/MediaDescriptionCompat;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroidx/media3/session/legacy/MediaDescriptionCompat;->mSubtitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/session/legacy/MediaDescriptionCompat;->mDescription:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 296
    nop

    .line 306
    invoke-virtual {p0}, Landroidx/media3/session/legacy/MediaDescriptionCompat;->getMediaDescription()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaDescription;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaDescription;->writeToParcel(Landroid/os/Parcel;I)V

    .line 308
    return-void
.end method
