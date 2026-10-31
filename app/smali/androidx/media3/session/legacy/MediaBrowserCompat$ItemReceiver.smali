.class Landroidx/media3/session/legacy/MediaBrowserCompat$ItemReceiver;
.super Landroid/support/v4/os/ResultReceiver;
.source "MediaBrowserCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/session/legacy/MediaBrowserCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ItemReceiver"
.end annotation


# instance fields
.field private final mCallback:Landroidx/media3/session/legacy/MediaBrowserCompat$ItemCallback;

.field private final mMediaId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroidx/media3/session/legacy/MediaBrowserCompat$ItemCallback;Landroid/os/Handler;)V
    .locals 0
    .param p1, "mediaId"    # Ljava/lang/String;
    .param p2, "callback"    # Landroidx/media3/session/legacy/MediaBrowserCompat$ItemCallback;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 2356
    invoke-direct {p0, p3}, Landroid/support/v4/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    .line 2357
    iput-object p1, p0, Landroidx/media3/session/legacy/MediaBrowserCompat$ItemReceiver;->mMediaId:Ljava/lang/String;

    .line 2358
    iput-object p2, p0, Landroidx/media3/session/legacy/MediaBrowserCompat$ItemReceiver;->mCallback:Landroidx/media3/session/legacy/MediaBrowserCompat$ItemCallback;

    .line 2359
    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 2
    .param p1, "resultCode"    # I
    .param p2, "resultData"    # Landroid/os/Bundle;

    .line 2364
    if-eqz p2, :cond_0

    .line 2365
    invoke-static {p2}, Landroidx/media3/session/legacy/MediaSessionCompat;->unparcelWithClassLoader(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p2

    .line 2367
    :cond_0
    if-nez p1, :cond_2

    if-eqz p2, :cond_2

    .line 2369
    const-string v0, "media_item"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 2373
    :cond_1
    nop

    .line 2375
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    sget-object v1, Landroidx/media3/session/legacy/MediaBrowserCompat$MediaItem;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2374
    invoke-static {v0, v1}, Landroidx/media3/session/legacy/LegacyParcelableUtil;->convert(Landroid/os/Parcelable;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroidx/media3/session/legacy/MediaBrowserCompat$MediaItem;

    .line 2377
    .local v0, "item":Landroidx/media3/session/legacy/MediaBrowserCompat$MediaItem;
    iget-object v1, p0, Landroidx/media3/session/legacy/MediaBrowserCompat$ItemReceiver;->mCallback:Landroidx/media3/session/legacy/MediaBrowserCompat$ItemCallback;

    invoke-virtual {v1, v0}, Landroidx/media3/session/legacy/MediaBrowserCompat$ItemCallback;->onItemLoaded(Landroidx/media3/session/legacy/MediaBrowserCompat$MediaItem;)V

    .line 2378
    return-void

    .line 2370
    .end local v0    # "item":Landroidx/media3/session/legacy/MediaBrowserCompat$MediaItem;
    :cond_2
    :goto_0
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaBrowserCompat$ItemReceiver;->mCallback:Landroidx/media3/session/legacy/MediaBrowserCompat$ItemCallback;

    iget-object v1, p0, Landroidx/media3/session/legacy/MediaBrowserCompat$ItemReceiver;->mMediaId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/media3/session/legacy/MediaBrowserCompat$ItemCallback;->onError(Ljava/lang/String;)V

    .line 2371
    return-void
.end method
