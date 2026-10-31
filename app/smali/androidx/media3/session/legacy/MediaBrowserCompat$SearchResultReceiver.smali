.class Landroidx/media3/session/legacy/MediaBrowserCompat$SearchResultReceiver;
.super Landroid/support/v4/os/ResultReceiver;
.source "MediaBrowserCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/session/legacy/MediaBrowserCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SearchResultReceiver"
.end annotation


# instance fields
.field private final mCallback:Landroidx/media3/session/legacy/MediaBrowserCompat$SearchCallback;

.field private final mExtras:Landroid/os/Bundle;

.field private final mQuery:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/os/Bundle;Landroidx/media3/session/legacy/MediaBrowserCompat$SearchCallback;Landroid/os/Handler;)V
    .locals 0
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;
    .param p3, "callback"    # Landroidx/media3/session/legacy/MediaBrowserCompat$SearchCallback;
    .param p4, "handler"    # Landroid/os/Handler;

    .line 2389
    invoke-direct {p0, p4}, Landroid/support/v4/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    .line 2390
    iput-object p1, p0, Landroidx/media3/session/legacy/MediaBrowserCompat$SearchResultReceiver;->mQuery:Ljava/lang/String;

    .line 2391
    iput-object p2, p0, Landroidx/media3/session/legacy/MediaBrowserCompat$SearchResultReceiver;->mExtras:Landroid/os/Bundle;

    .line 2392
    iput-object p3, p0, Landroidx/media3/session/legacy/MediaBrowserCompat$SearchResultReceiver;->mCallback:Landroidx/media3/session/legacy/MediaBrowserCompat$SearchCallback;

    .line 2393
    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 6
    .param p1, "resultCode"    # I
    .param p2, "resultData"    # Landroid/os/Bundle;

    .line 2398
    if-eqz p2, :cond_0

    .line 2399
    invoke-static {p2}, Landroidx/media3/session/legacy/MediaSessionCompat;->unparcelWithClassLoader(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p2

    .line 2401
    :cond_0
    if-nez p1, :cond_4

    if-eqz p2, :cond_4

    .line 2403
    const-string/jumbo v0, "search_results"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_2

    .line 2407
    :cond_1
    nop

    .line 2408
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    .line 2409
    .local v0, "items":[Landroid/os/Parcelable;
    if-eqz v0, :cond_3

    .line 2410
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 2411
    .local v1, "results":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/session/legacy/MediaBrowserCompat$MediaItem;>;"
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 2412
    .local v4, "item":Landroid/os/Parcelable;
    sget-object v5, Landroidx/media3/session/legacy/MediaBrowserCompat$MediaItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v4, v5}, Landroidx/media3/session/legacy/LegacyParcelableUtil;->convert(Landroid/os/Parcelable;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroidx/media3/session/legacy/MediaBrowserCompat$MediaItem;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2411
    .end local v4    # "item":Landroid/os/Parcelable;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2414
    :cond_2
    iget-object v2, p0, Landroidx/media3/session/legacy/MediaBrowserCompat$SearchResultReceiver;->mCallback:Landroidx/media3/session/legacy/MediaBrowserCompat$SearchCallback;

    iget-object v3, p0, Landroidx/media3/session/legacy/MediaBrowserCompat$SearchResultReceiver;->mQuery:Ljava/lang/String;

    iget-object v4, p0, Landroidx/media3/session/legacy/MediaBrowserCompat$SearchResultReceiver;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v2, v3, v4, v1}, Landroidx/media3/session/legacy/MediaBrowserCompat$SearchCallback;->onSearchResult(Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;)V

    .line 2415
    .end local v1    # "results":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/session/legacy/MediaBrowserCompat$MediaItem;>;"
    goto :goto_1

    .line 2416
    :cond_3
    iget-object v1, p0, Landroidx/media3/session/legacy/MediaBrowserCompat$SearchResultReceiver;->mCallback:Landroidx/media3/session/legacy/MediaBrowserCompat$SearchCallback;

    iget-object v2, p0, Landroidx/media3/session/legacy/MediaBrowserCompat$SearchResultReceiver;->mQuery:Ljava/lang/String;

    iget-object v3, p0, Landroidx/media3/session/legacy/MediaBrowserCompat$SearchResultReceiver;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v1, v2, v3}, Landroidx/media3/session/legacy/MediaBrowserCompat$SearchCallback;->onError(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2418
    :goto_1
    return-void

    .line 2404
    .end local v0    # "items":[Landroid/os/Parcelable;
    :cond_4
    :goto_2
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaBrowserCompat$SearchResultReceiver;->mCallback:Landroidx/media3/session/legacy/MediaBrowserCompat$SearchCallback;

    iget-object v1, p0, Landroidx/media3/session/legacy/MediaBrowserCompat$SearchResultReceiver;->mQuery:Ljava/lang/String;

    iget-object v2, p0, Landroidx/media3/session/legacy/MediaBrowserCompat$SearchResultReceiver;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroidx/media3/session/legacy/MediaBrowserCompat$SearchCallback;->onError(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2405
    return-void
.end method
