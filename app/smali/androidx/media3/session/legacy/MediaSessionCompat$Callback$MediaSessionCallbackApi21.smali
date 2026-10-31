.class Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;
.super Landroid/media/session/MediaSession$Callback;
.source "MediaSessionCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/session/legacy/MediaSessionCompat$Callback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaSessionCallbackApi21"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media3/session/legacy/MediaSessionCompat$Callback;


# direct methods
.method constructor <init>(Landroidx/media3/session/legacy/MediaSessionCompat$Callback;)V
    .locals 0

    .line 1357
    iput-object p1, p0, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->this$0:Landroidx/media3/session/legacy/MediaSessionCompat$Callback;

    invoke-direct {p0}, Landroid/media/session/MediaSession$Callback;-><init>()V

    return-void
.end method

.method private clearCurrentControllerInfo(Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;)V
    .locals 1
    .param p1, "sessionImpl"    # Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;

    .line 1743
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;->setCurrentControllerInfo(Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;)V

    .line 1744
    return-void
.end method

.method private getSessionImplIfCallbackIsSet()Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi21;
    .locals 3

    .line 1752
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->this$0:Landroidx/media3/session/legacy/MediaSessionCompat$Callback;

    iget-object v0, v0, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1753
    :try_start_0
    iget-object v1, p0, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->this$0:Landroidx/media3/session/legacy/MediaSessionCompat$Callback;

    iget-object v1, v1, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;->mSessionImpl:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi21;

    .line 1754
    .local v1, "sessionImpl":Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi21;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1755
    if-eqz v1, :cond_0

    iget-object v0, p0, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->this$0:Landroidx/media3/session/legacy/MediaSessionCompat$Callback;

    invoke-virtual {v1}, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi21;->getCallback()Landroidx/media3/session/legacy/MediaSessionCompat$Callback;

    move-result-object v2

    if-ne v0, v2, :cond_0

    .line 1756
    move-object v0, v1

    goto :goto_0

    .line 1757
    :cond_0
    const/4 v0, 0x0

    .line 1755
    :goto_0
    return-object v0

    .line 1754
    .end local v1    # "sessionImpl":Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi21;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private setCurrentControllerInfo(Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;)V
    .locals 3
    .param p1, "sessionImpl"    # Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;

    .line 1728
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 1732
    return-void

    .line 1734
    :cond_0
    invoke-interface {p1}, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    .line 1735
    .local v0, "packageName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1736
    const-string v0, "android.media.session.MediaController"

    .line 1738
    :cond_1
    new-instance v1, Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;

    const/4 v2, -0x1

    invoke-direct {v1, v0, v2, v2}, Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;-><init>(Ljava/lang/String;II)V

    invoke-interface {p1, v1}, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;->setCurrentControllerInfo(Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;)V

    .line 1740
    return-void
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 6
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;
    .param p3, "cb"    # Landroid/os/ResultReceiver;

    .line 1362
    invoke-direct {p0}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->getSessionImplIfCallbackIsSet()Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi21;

    move-result-object v0

    .line 1363
    .local v0, "sessionImpl":Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi21;
    if-nez v0, :cond_0

    .line 1364
    return-void

    .line 1366
    :cond_0
    invoke-static {p2}, Landroidx/media3/session/legacy/MediaSessionCompat;->ensureClassLoader(Landroid/os/Bundle;)V

    .line 1367
    invoke-direct {p0, v0}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->setCurrentControllerInfo(Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;)V

    .line 1369
    :try_start_0
    const-string v1, "android.support.v4.media.session.command.GET_EXTRA_BINDER"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 1370
    if-eqz p3, :cond_9

    .line 1371
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1372
    .local v1, "result":Landroid/os/Bundle;
    invoke-virtual {v0}, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi21;->getSessionToken()Landroidx/media3/session/legacy/MediaSessionCompat$Token;

    move-result-object v3

    .line 1373
    .local v3, "token":Landroidx/media3/session/legacy/MediaSessionCompat$Token;
    invoke-virtual {v3}, Landroidx/media3/session/legacy/MediaSessionCompat$Token;->getExtraBinder()Landroidx/media3/session/legacy/IMediaSession;

    move-result-object v4

    .line 1374
    .local v4, "extraBinder":Landroidx/media3/session/legacy/IMediaSession;
    const-string v5, "android.support.v4.media.session.EXTRA_BINDER"

    .line 1375
    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v4}, Landroidx/media3/session/legacy/IMediaSession;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 1374
    :goto_0
    invoke-virtual {v1, v5, v2}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1376
    const-string v2, "android.support.v4.media.session.SESSION_TOKEN2"

    .line 1377
    invoke-virtual {v3}, Landroidx/media3/session/legacy/MediaSessionCompat$Token;->getSession2Token()Landroidx/versionedparcelable/VersionedParcelable;

    move-result-object v5

    .line 1376
    invoke-static {v1, v2, v5}, Landroidx/versionedparcelable/ParcelUtils;->putVersionedParcelable(Landroid/os/Bundle;Ljava/lang/String;Landroidx/versionedparcelable/VersionedParcelable;)V

    .line 1378
    const/4 v2, 0x0

    invoke-virtual {p3, v2, v1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 1379
    .end local v1    # "result":Landroid/os/Bundle;
    .end local v3    # "token":Landroidx/media3/session/legacy/MediaSessionCompat$Token;
    .end local v4    # "extraBinder":Landroidx/media3/session/legacy/IMediaSession;
    goto/16 :goto_1

    .line 1380
    :cond_2
    const-string v1, "android.support.v4.media.session.command.ADD_QUEUE_ITEM"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/BadParcelableException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "android.support.v4.media.session.command.ARGUMENT_MEDIA_DESCRIPTION"

    if-eqz v1, :cond_3

    .line 1381
    if-eqz p2, :cond_9

    .line 1382
    :try_start_1
    iget-object v1, p0, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->this$0:Landroidx/media3/session/legacy/MediaSessionCompat$Callback;

    .line 1384
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    sget-object v3, Landroidx/media3/session/legacy/MediaDescriptionCompat;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1383
    invoke-static {v2, v3}, Landroidx/media3/session/legacy/LegacyParcelableUtil;->convert(Landroid/os/Parcelable;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroidx/media3/session/legacy/MediaDescriptionCompat;

    .line 1382
    invoke-virtual {v1, v2}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;->onAddQueueItem(Landroidx/media3/session/legacy/MediaDescriptionCompat;)V

    goto/16 :goto_1

    .line 1388
    :cond_3
    const-string v1, "android.support.v4.media.session.command.ADD_QUEUE_ITEM_AT"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_1
    .catch Landroid/os/BadParcelableException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v4, "android.support.v4.media.session.command.ARGUMENT_INDEX"

    if-eqz v1, :cond_4

    .line 1389
    if-eqz p2, :cond_9

    .line 1390
    :try_start_2
    iget-object v1, p0, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->this$0:Landroidx/media3/session/legacy/MediaSessionCompat$Callback;

    .line 1392
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    sget-object v3, Landroidx/media3/session/legacy/MediaDescriptionCompat;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1391
    invoke-static {v2, v3}, Landroidx/media3/session/legacy/LegacyParcelableUtil;->convert(Landroid/os/Parcelable;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroidx/media3/session/legacy/MediaDescriptionCompat;

    .line 1395
    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 1390
    invoke-virtual {v1, v2, v3}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;->onAddQueueItem(Landroidx/media3/session/legacy/MediaDescriptionCompat;I)V

    goto :goto_1

    .line 1397
    :cond_4
    const-string v1, "android.support.v4.media.session.command.REMOVE_QUEUE_ITEM"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1398
    if-eqz p2, :cond_9

    .line 1399
    iget-object v1, p0, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->this$0:Landroidx/media3/session/legacy/MediaSessionCompat$Callback;

    .line 1401
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    sget-object v3, Landroidx/media3/session/legacy/MediaDescriptionCompat;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1400
    invoke-static {v2, v3}, Landroidx/media3/session/legacy/LegacyParcelableUtil;->convert(Landroid/os/Parcelable;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroidx/media3/session/legacy/MediaDescriptionCompat;

    .line 1399
    invoke-virtual {v1, v2}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;->onRemoveQueueItem(Landroidx/media3/session/legacy/MediaDescriptionCompat;)V

    goto :goto_1

    .line 1405
    :cond_5
    const-string v1, "android.support.v4.media.session.command.REMOVE_QUEUE_ITEM_AT"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1406
    iget-object v1, v0, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi21;->mQueue:Ljava/util/List;

    .line 1407
    .local v1, "queue":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/session/legacy/MediaSessionCompat$QueueItem;>;"
    if-eqz v1, :cond_7

    if-eqz p2, :cond_7

    .line 1408
    const/4 v3, -0x1

    invoke-virtual {p2, v4, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 1409
    .local v3, "index":I
    if-ltz v3, :cond_6

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_6

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/session/legacy/MediaSessionCompat$QueueItem;

    .line 1410
    .local v2, "item":Landroidx/media3/session/legacy/MediaSessionCompat$QueueItem;
    :cond_6
    if-eqz v2, :cond_7

    .line 1411
    iget-object v4, p0, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->this$0:Landroidx/media3/session/legacy/MediaSessionCompat$Callback;

    invoke-virtual {v2}, Landroidx/media3/session/legacy/MediaSessionCompat$QueueItem;->getDescription()Landroidx/media3/session/legacy/MediaDescriptionCompat;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;->onRemoveQueueItem(Landroidx/media3/session/legacy/MediaDescriptionCompat;)V

    .line 1414
    .end local v1    # "queue":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/session/legacy/MediaSessionCompat$QueueItem;>;"
    .end local v2    # "item":Landroidx/media3/session/legacy/MediaSessionCompat$QueueItem;
    .end local v3    # "index":I
    :cond_7
    goto :goto_1

    .line 1415
    :cond_8
    iget-object v1, p0, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->this$0:Landroidx/media3/session/legacy/MediaSessionCompat$Callback;

    invoke-virtual {v1, p1, p2, p3}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;->onCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    :try_end_2
    .catch Landroid/os/BadParcelableException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1421
    :cond_9
    :goto_1
    goto :goto_2

    .line 1417
    :catch_0
    move-exception v1

    .line 1420
    .local v1, "e":Landroid/os/BadParcelableException;
    const-string v2, "MediaSessionCompat"

    const-string v3, "Could not unparcel the extra data."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1422
    .end local v1    # "e":Landroid/os/BadParcelableException;
    :goto_2
    invoke-direct {p0, v0}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->clearCurrentControllerInfo(Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;)V

    .line 1423
    return-void
.end method

.method public onCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 1587
    invoke-direct {p0}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->getSessionImplIfCallbackIsSet()Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi21;

    move-result-object v0

    .line 1588
    .local v0, "sessionImpl":Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi21;
    if-nez v0, :cond_0

    .line 1589
    return-void

    .line 1591
    :cond_0
    invoke-static {p2}, Landroidx/media3/session/legacy/MediaSessionCompat;->ensureClassLoader(Landroid/os/Bundle;)V

    .line 1592
    invoke-direct {p0, v0}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->setCurrentControllerInfo(Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;)V

    .line 1595
    :try_start_0
    const-string v1, "android.support.v4.media.session.action.PLAY_FROM_URI"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/BadParcelableException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "android.support.v4.media.session.action.ARGUMENT_URI"

    const-string v3, "android.support.v4.media.session.action.ARGUMENT_EXTRAS"

    if-eqz v1, :cond_1

    .line 1596
    if-eqz p2, :cond_b

    .line 1597
    :try_start_1
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 1598
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 1599
    .local v2, "bundle":Landroid/os/Bundle;
    invoke-static {v2}, Landroidx/media3/session/legacy/MediaSessionCompat;->ensureClassLoader(Landroid/os/Bundle;)V

    .line 1600
    iget-object v3, p0, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->this$0:Landroidx/media3/session/legacy/MediaSessionCompat$Callback;

    invoke-virtual {v3, v1, v2}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;->onPlayFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 1601
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v2    # "bundle":Landroid/os/Bundle;
    goto/16 :goto_0

    .line 1602
    :cond_1
    const-string v1, "android.support.v4.media.session.action.PREPARE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1603
    iget-object v1, p0, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->this$0:Landroidx/media3/session/legacy/MediaSessionCompat$Callback;

    invoke-virtual {v1}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;->onPrepare()V

    goto/16 :goto_0

    .line 1604
    :cond_2
    const-string v1, "android.support.v4.media.session.action.PREPARE_FROM_MEDIA_ID"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1605
    if-eqz p2, :cond_b

    .line 1606
    const-string v1, "android.support.v4.media.session.action.ARGUMENT_MEDIA_ID"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1607
    .local v1, "mediaId":Ljava/lang/String;
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 1608
    .restart local v2    # "bundle":Landroid/os/Bundle;
    invoke-static {v2}, Landroidx/media3/session/legacy/MediaSessionCompat;->ensureClassLoader(Landroid/os/Bundle;)V

    .line 1609
    iget-object v3, p0, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->this$0:Landroidx/media3/session/legacy/MediaSessionCompat$Callback;

    invoke-virtual {v3, v1, v2}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;->onPrepareFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1610
    .end local v1    # "mediaId":Ljava/lang/String;
    .end local v2    # "bundle":Landroid/os/Bundle;
    goto/16 :goto_0

    .line 1611
    :cond_3
    const-string v1, "android.support.v4.media.session.action.PREPARE_FROM_SEARCH"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1612
    if-eqz p2, :cond_b

    .line 1613
    const-string v1, "android.support.v4.media.session.action.ARGUMENT_QUERY"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1614
    .local v1, "query":Ljava/lang/String;
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 1615
    .restart local v2    # "bundle":Landroid/os/Bundle;
    invoke-static {v2}, Landroidx/media3/session/legacy/MediaSessionCompat;->ensureClassLoader(Landroid/os/Bundle;)V

    .line 1616
    iget-object v3, p0, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->this$0:Landroidx/media3/session/legacy/MediaSessionCompat$Callback;

    invoke-virtual {v3, v1, v2}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;->onPrepareFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1617
    .end local v1    # "query":Ljava/lang/String;
    .end local v2    # "bundle":Landroid/os/Bundle;
    goto/16 :goto_0

    .line 1618
    :cond_4
    const-string v1, "android.support.v4.media.session.action.PREPARE_FROM_URI"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1619
    if-eqz p2, :cond_b

    .line 1620
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 1621
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 1622
    .restart local v2    # "bundle":Landroid/os/Bundle;
    invoke-static {v2}, Landroidx/media3/session/legacy/MediaSessionCompat;->ensureClassLoader(Landroid/os/Bundle;)V

    .line 1623
    iget-object v3, p0, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->this$0:Landroidx/media3/session/legacy/MediaSessionCompat$Callback;

    invoke-virtual {v3, v1, v2}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;->onPrepareFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 1624
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v2    # "bundle":Landroid/os/Bundle;
    goto/16 :goto_0

    .line 1625
    :cond_5
    const-string v1, "android.support.v4.media.session.action.SET_CAPTIONING_ENABLED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1626
    if-eqz p2, :cond_b

    .line 1627
    const-string v1, "android.support.v4.media.session.action.ARGUMENT_CAPTIONING_ENABLED"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 1628
    .local v1, "enabled":Z
    iget-object v2, p0, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->this$0:Landroidx/media3/session/legacy/MediaSessionCompat$Callback;

    invoke-virtual {v2, v1}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;->onSetCaptioningEnabled(Z)V

    .line 1629
    .end local v1    # "enabled":Z
    goto/16 :goto_0

    .line 1630
    :cond_6
    const-string v1, "android.support.v4.media.session.action.SET_REPEAT_MODE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1631
    if-eqz p2, :cond_b

    .line 1632
    const-string v1, "android.support.v4.media.session.action.ARGUMENT_REPEAT_MODE"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 1633
    .local v1, "repeatMode":I
    iget-object v2, p0, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->this$0:Landroidx/media3/session/legacy/MediaSessionCompat$Callback;

    invoke-virtual {v2, v1}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;->onSetRepeatMode(I)V

    .line 1634
    .end local v1    # "repeatMode":I
    goto :goto_0

    .line 1635
    :cond_7
    const-string v1, "android.support.v4.media.session.action.SET_SHUFFLE_MODE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1636
    if-eqz p2, :cond_b

    .line 1637
    const-string v1, "android.support.v4.media.session.action.ARGUMENT_SHUFFLE_MODE"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 1638
    .local v1, "shuffleMode":I
    iget-object v2, p0, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->this$0:Landroidx/media3/session/legacy/MediaSessionCompat$Callback;

    invoke-virtual {v2, v1}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;->onSetShuffleMode(I)V

    .line 1639
    .end local v1    # "shuffleMode":I
    goto :goto_0

    .line 1640
    :cond_8
    const-string v1, "android.support.v4.media.session.action.SET_RATING"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1641
    if-eqz p2, :cond_b

    .line 1642
    const-string v1, "android.support.v4.media.session.action.ARGUMENT_RATING"

    .line 1644
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    sget-object v2, Landroidx/media3/session/legacy/RatingCompat;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1643
    invoke-static {v1, v2}, Landroidx/media3/session/legacy/LegacyParcelableUtil;->convert(Landroid/os/Parcelable;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroidx/media3/session/legacy/RatingCompat;

    .line 1645
    .local v1, "rating":Landroidx/media3/session/legacy/RatingCompat;
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 1646
    .restart local v2    # "bundle":Landroid/os/Bundle;
    invoke-static {v2}, Landroidx/media3/session/legacy/MediaSessionCompat;->ensureClassLoader(Landroid/os/Bundle;)V

    .line 1647
    iget-object v3, p0, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->this$0:Landroidx/media3/session/legacy/MediaSessionCompat$Callback;

    invoke-virtual {v3, v1, v2}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;->onSetRating(Landroidx/media3/session/legacy/RatingCompat;Landroid/os/Bundle;)V

    .line 1648
    .end local v1    # "rating":Landroidx/media3/session/legacy/RatingCompat;
    .end local v2    # "bundle":Landroid/os/Bundle;
    goto :goto_0

    .line 1649
    :cond_9
    const-string v1, "android.support.v4.media.session.action.SET_PLAYBACK_SPEED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1650
    if-eqz p2, :cond_b

    .line 1651
    const-string v1, "android.support.v4.media.session.action.ARGUMENT_PLAYBACK_SPEED"

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v1

    .line 1652
    .local v1, "speed":F
    iget-object v2, p0, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->this$0:Landroidx/media3/session/legacy/MediaSessionCompat$Callback;

    invoke-virtual {v2, v1}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;->onSetPlaybackSpeed(F)V

    .line 1653
    .end local v1    # "speed":F
    goto :goto_0

    .line 1655
    :cond_a
    iget-object v1, p0, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->this$0:Landroidx/media3/session/legacy/MediaSessionCompat$Callback;

    invoke-virtual {v1, p1, p2}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;->onCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/BadParcelableException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1660
    :cond_b
    :goto_0
    goto :goto_1

    .line 1657
    :catch_0
    move-exception v1

    .line 1659
    .local v1, "e":Landroid/os/BadParcelableException;
    const-string v2, "MediaSessionCompat"

    const-string v3, "Could not unparcel the data."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1661
    .end local v1    # "e":Landroid/os/BadParcelableException;
    :goto_1
    invoke-direct {p0, v0}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->clearCurrentControllerInfo(Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;)V

    .line 1662
    return-void
.end method

.method public onFastForward()V
    .locals 2

    .line 1531
    invoke-direct {p0}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->getSessionImplIfCallbackIsSet()Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi21;

    move-result-object v0

    .line 1532
    .local v0, "sessionImpl":Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi21;
    if-nez v0, :cond_0

    .line 1533
    return-void

    .line 1535
    :cond_0
    invoke-direct {p0, v0}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->setCurrentControllerInfo(Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;)V

    .line 1536
    iget-object v1, p0, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->this$0:Landroidx/media3/session/legacy/MediaSessionCompat$Callback;

    invoke-virtual {v1}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;->onFastForward()V

    .line 1537
    invoke-direct {p0, v0}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->clearCurrentControllerInfo(Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;)V

    .line 1538
    return-void
.end method

.method public onMediaButtonEvent(Landroid/content/Intent;)Z
    .locals 4
    .param p1, "mediaButtonIntent"    # Landroid/content/Intent;

    .line 1427
    invoke-direct {p0}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->getSessionImplIfCallbackIsSet()Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi21;

    move-result-object v0

    .line 1428
    .local v0, "sessionImpl":Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi21;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1429
    return v1

    .line 1431
    :cond_0
    invoke-direct {p0, v0}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->setCurrentControllerInfo(Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;)V

    .line 1432
    iget-object v2, p0, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->this$0:Landroidx/media3/session/legacy/MediaSessionCompat$Callback;

    invoke-virtual {v2, p1}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;->onMediaButtonEvent(Landroid/content/Intent;)Z

    move-result v2

    .line 1433
    .local v2, "result":Z
    invoke-direct {p0, v0}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->clearCurrentControllerInfo(Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;)V

    .line 1434
    if-nez v2, :cond_1

    invoke-super {p0, p1}, Landroid/media/session/MediaSession$Callback;->onMediaButtonEvent(Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public onPause()V
    .locals 2

    .line 1498
    invoke-direct {p0}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->getSessionImplIfCallbackIsSet()Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi21;

    move-result-object v0

    .line 1499
    .local v0, "sessionImpl":Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi21;
    if-nez v0, :cond_0

    .line 1500
    return-void

    .line 1502
    :cond_0
    invoke-direct {p0, v0}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->setCurrentControllerInfo(Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;)V

    .line 1503
    iget-object v1, p0, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->this$0:Landroidx/media3/session/legacy/MediaSessionCompat$Callback;

    invoke-virtual {v1}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;->onPause()V

    .line 1504
    invoke-direct {p0, v0}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->clearCurrentControllerInfo(Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;)V

    .line 1505
    return-void
.end method

.method public onPlay()V
    .locals 2

    .line 1439
    invoke-direct {p0}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->getSessionImplIfCallbackIsSet()Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi21;

    move-result-object v0

    .line 1440
    .local v0, "sessionImpl":Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi21;
    if-nez v0, :cond_0

    .line 1441
    return-void

    .line 1443
    :cond_0
    invoke-direct {p0, v0}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->setCurrentControllerInfo(Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;)V

    .line 1444
    iget-object v1, p0, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->this$0:Landroidx/media3/session/legacy/MediaSessionCompat$Callback;

    invoke-virtual {v1}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;->onPlay()V

    .line 1445
    invoke-direct {p0, v0}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->clearCurrentControllerInfo(Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;)V

    .line 1446
    return-void
.end method

.method public onPlayFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "mediaId"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 1450
    invoke-direct {p0}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->getSessionImplIfCallbackIsSet()Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi21;

    move-result-object v0

    .line 1451
    .local v0, "sessionImpl":Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi21;
    if-nez v0, :cond_0

    .line 1452
    return-void

    .line 1454
    :cond_0
    invoke-static {p2}, Landroidx/media3/session/legacy/MediaSessionCompat;->ensureClassLoader(Landroid/os/Bundle;)V

    .line 1455
    invoke-direct {p0, v0}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->setCurrentControllerInfo(Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;)V

    .line 1456
    iget-object v1, p0, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->this$0:Landroidx/media3/session/legacy/MediaSessionCompat$Callback;

    invoke-virtual {v1, p1, p2}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;->onPlayFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1457
    invoke-direct {p0, v0}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->clearCurrentControllerInfo(Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;)V

    .line 1458
    return-void
.end method

.method public onPlayFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "search"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 1462
    invoke-direct {p0}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->getSessionImplIfCallbackIsSet()Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi21;

    move-result-object v0

    .line 1463
    .local v0, "sessionImpl":Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi21;
    if-nez v0, :cond_0

    .line 1464
    return-void

    .line 1466
    :cond_0
    invoke-static {p2}, Landroidx/media3/session/legacy/MediaSessionCompat;->ensureClassLoader(Landroid/os/Bundle;)V

    .line 1467
    invoke-direct {p0, v0}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->setCurrentControllerInfo(Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;)V

    .line 1468
    iget-object v1, p0, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->this$0:Landroidx/media3/session/legacy/MediaSessionCompat$Callback;

    invoke-virtual {v1, p1, p2}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;->onPlayFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1469
    invoke-direct {p0, v0}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->clearCurrentControllerInfo(Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;)V

    .line 1470
    return-void
.end method

.method public onPlayFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 1475
    invoke-direct {p0}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->getSessionImplIfCallbackIsSet()Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi21;

    move-result-object v0

    .line 1476
    .local v0, "sessionImpl":Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi21;
    if-nez v0, :cond_0

    .line 1477
    return-void

    .line 1479
    :cond_0
    invoke-static {p2}, Landroidx/media3/session/legacy/MediaSessionCompat;->ensureClassLoader(Landroid/os/Bundle;)V

    .line 1480
    invoke-direct {p0, v0}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->setCurrentControllerInfo(Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;)V

    .line 1481
    iget-object v1, p0, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->this$0:Landroidx/media3/session/legacy/MediaSessionCompat$Callback;

    invoke-virtual {v1, p1, p2}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;->onPlayFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 1482
    invoke-direct {p0, v0}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->clearCurrentControllerInfo(Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;)V

    .line 1483
    return-void
.end method

.method public onPrepare()V
    .locals 2

    .line 1667
    invoke-direct {p0}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->getSessionImplIfCallbackIsSet()Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi21;

    move-result-object v0

    .line 1668
    .local v0, "sessionImpl":Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi21;
    if-nez v0, :cond_0

    .line 1669
    return-void

    .line 1671
    :cond_0
    invoke-direct {p0, v0}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->setCurrentControllerInfo(Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;)V

    .line 1672
    iget-object v1, p0, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->this$0:Landroidx/media3/session/legacy/MediaSessionCompat$Callback;

    invoke-virtual {v1}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;->onPrepare()V

    .line 1673
    invoke-direct {p0, v0}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->clearCurrentControllerInfo(Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;)V

    .line 1674
    return-void
.end method

.method public onPrepareFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "mediaId"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 1679
    invoke-direct {p0}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->getSessionImplIfCallbackIsSet()Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi21;

    move-result-object v0

    .line 1680
    .local v0, "sessionImpl":Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi21;
    if-nez v0, :cond_0

    .line 1681
    return-void

    .line 1683
    :cond_0
    invoke-static {p2}, Landroidx/media3/session/legacy/MediaSessionCompat;->ensureClassLoader(Landroid/os/Bundle;)V

    .line 1684
    invoke-direct {p0, v0}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->setCurrentControllerInfo(Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;)V

    .line 1685
    iget-object v1, p0, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->this$0:Landroidx/media3/session/legacy/MediaSessionCompat$Callback;

    invoke-virtual {v1, p1, p2}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;->onPrepareFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1686
    invoke-direct {p0, v0}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->clearCurrentControllerInfo(Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;)V

    .line 1687
    return-void
.end method

.method public onPrepareFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 1692
    invoke-direct {p0}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->getSessionImplIfCallbackIsSet()Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi21;

    move-result-object v0

    .line 1693
    .local v0, "sessionImpl":Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi21;
    if-nez v0, :cond_0

    .line 1694
    return-void

    .line 1696
    :cond_0
    invoke-static {p2}, Landroidx/media3/session/legacy/MediaSessionCompat;->ensureClassLoader(Landroid/os/Bundle;)V

    .line 1697
    invoke-direct {p0, v0}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->setCurrentControllerInfo(Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;)V

    .line 1698
    iget-object v1, p0, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->this$0:Landroidx/media3/session/legacy/MediaSessionCompat$Callback;

    invoke-virtual {v1, p1, p2}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;->onPrepareFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1699
    invoke-direct {p0, v0}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->clearCurrentControllerInfo(Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;)V

    .line 1700
    return-void
.end method

.method public onPrepareFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 1705
    invoke-direct {p0}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->getSessionImplIfCallbackIsSet()Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi21;

    move-result-object v0

    .line 1706
    .local v0, "sessionImpl":Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi21;
    if-nez v0, :cond_0

    .line 1707
    return-void

    .line 1709
    :cond_0
    invoke-static {p2}, Landroidx/media3/session/legacy/MediaSessionCompat;->ensureClassLoader(Landroid/os/Bundle;)V

    .line 1710
    invoke-direct {p0, v0}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->setCurrentControllerInfo(Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;)V

    .line 1711
    iget-object v1, p0, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->this$0:Landroidx/media3/session/legacy/MediaSessionCompat$Callback;

    invoke-virtual {v1, p1, p2}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;->onPrepareFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 1712
    invoke-direct {p0, v0}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->clearCurrentControllerInfo(Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;)V

    .line 1713
    return-void
.end method

.method public onRewind()V
    .locals 2

    .line 1542
    invoke-direct {p0}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->getSessionImplIfCallbackIsSet()Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi21;

    move-result-object v0

    .line 1543
    .local v0, "sessionImpl":Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi21;
    if-nez v0, :cond_0

    .line 1544
    return-void

    .line 1546
    :cond_0
    invoke-direct {p0, v0}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->setCurrentControllerInfo(Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;)V

    .line 1547
    iget-object v1, p0, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->this$0:Landroidx/media3/session/legacy/MediaSessionCompat$Callback;

    invoke-virtual {v1}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;->onRewind()V

    .line 1548
    invoke-direct {p0, v0}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->clearCurrentControllerInfo(Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;)V

    .line 1549
    return-void
.end method

.method public onSeekTo(J)V
    .locals 2
    .param p1, "pos"    # J

    .line 1564
    invoke-direct {p0}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->getSessionImplIfCallbackIsSet()Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi21;

    move-result-object v0

    .line 1565
    .local v0, "sessionImpl":Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi21;
    if-nez v0, :cond_0

    .line 1566
    return-void

    .line 1568
    :cond_0
    invoke-direct {p0, v0}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->setCurrentControllerInfo(Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;)V

    .line 1569
    iget-object v1, p0, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->this$0:Landroidx/media3/session/legacy/MediaSessionCompat$Callback;

    invoke-virtual {v1, p1, p2}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;->onSeekTo(J)V

    .line 1570
    invoke-direct {p0, v0}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->clearCurrentControllerInfo(Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;)V

    .line 1571
    return-void
.end method

.method public onSetPlaybackSpeed(F)V
    .locals 2
    .param p1, "speed"    # F

    .line 1718
    invoke-direct {p0}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->getSessionImplIfCallbackIsSet()Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi21;

    move-result-object v0

    .line 1719
    .local v0, "sessionImpl":Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi21;
    if-nez v0, :cond_0

    .line 1720
    return-void

    .line 1722
    :cond_0
    invoke-direct {p0, v0}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->setCurrentControllerInfo(Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;)V

    .line 1723
    iget-object v1, p0, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->this$0:Landroidx/media3/session/legacy/MediaSessionCompat$Callback;

    invoke-virtual {v1, p1}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;->onSetPlaybackSpeed(F)V

    .line 1724
    invoke-direct {p0, v0}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->clearCurrentControllerInfo(Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;)V

    .line 1725
    return-void
.end method

.method public onSetRating(Landroid/media/Rating;)V
    .locals 3
    .param p1, "ratingFwk"    # Landroid/media/Rating;

    .line 1575
    invoke-direct {p0}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->getSessionImplIfCallbackIsSet()Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi21;

    move-result-object v0

    .line 1576
    .local v0, "sessionImpl":Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi21;
    if-nez v0, :cond_0

    .line 1577
    return-void

    .line 1579
    :cond_0
    invoke-direct {p0, v0}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->setCurrentControllerInfo(Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;)V

    .line 1580
    iget-object v1, p0, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->this$0:Landroidx/media3/session/legacy/MediaSessionCompat$Callback;

    invoke-static {p1}, Landroidx/media3/session/legacy/RatingCompat;->fromRating(Ljava/lang/Object;)Landroidx/media3/session/legacy/RatingCompat;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;->onSetRating(Landroidx/media3/session/legacy/RatingCompat;)V

    .line 1581
    invoke-direct {p0, v0}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->clearCurrentControllerInfo(Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;)V

    .line 1582
    return-void
.end method

.method public onSkipToNext()V
    .locals 2

    .line 1509
    invoke-direct {p0}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->getSessionImplIfCallbackIsSet()Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi21;

    move-result-object v0

    .line 1510
    .local v0, "sessionImpl":Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi21;
    if-nez v0, :cond_0

    .line 1511
    return-void

    .line 1513
    :cond_0
    invoke-direct {p0, v0}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->setCurrentControllerInfo(Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;)V

    .line 1514
    iget-object v1, p0, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->this$0:Landroidx/media3/session/legacy/MediaSessionCompat$Callback;

    invoke-virtual {v1}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;->onSkipToNext()V

    .line 1515
    invoke-direct {p0, v0}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->clearCurrentControllerInfo(Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;)V

    .line 1516
    return-void
.end method

.method public onSkipToPrevious()V
    .locals 2

    .line 1520
    invoke-direct {p0}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->getSessionImplIfCallbackIsSet()Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi21;

    move-result-object v0

    .line 1521
    .local v0, "sessionImpl":Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi21;
    if-nez v0, :cond_0

    .line 1522
    return-void

    .line 1524
    :cond_0
    invoke-direct {p0, v0}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->setCurrentControllerInfo(Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;)V

    .line 1525
    iget-object v1, p0, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->this$0:Landroidx/media3/session/legacy/MediaSessionCompat$Callback;

    invoke-virtual {v1}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;->onSkipToPrevious()V

    .line 1526
    invoke-direct {p0, v0}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->clearCurrentControllerInfo(Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;)V

    .line 1527
    return-void
.end method

.method public onSkipToQueueItem(J)V
    .locals 2
    .param p1, "id"    # J

    .line 1487
    invoke-direct {p0}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->getSessionImplIfCallbackIsSet()Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi21;

    move-result-object v0

    .line 1488
    .local v0, "sessionImpl":Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi21;
    if-nez v0, :cond_0

    .line 1489
    return-void

    .line 1491
    :cond_0
    invoke-direct {p0, v0}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->setCurrentControllerInfo(Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;)V

    .line 1492
    iget-object v1, p0, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->this$0:Landroidx/media3/session/legacy/MediaSessionCompat$Callback;

    invoke-virtual {v1, p1, p2}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;->onSkipToQueueItem(J)V

    .line 1493
    invoke-direct {p0, v0}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->clearCurrentControllerInfo(Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;)V

    .line 1494
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 1553
    invoke-direct {p0}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->getSessionImplIfCallbackIsSet()Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi21;

    move-result-object v0

    .line 1554
    .local v0, "sessionImpl":Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi21;
    if-nez v0, :cond_0

    .line 1555
    return-void

    .line 1557
    :cond_0
    invoke-direct {p0, v0}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->setCurrentControllerInfo(Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;)V

    .line 1558
    iget-object v1, p0, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->this$0:Landroidx/media3/session/legacy/MediaSessionCompat$Callback;

    invoke-virtual {v1}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;->onStop()V

    .line 1559
    invoke-direct {p0, v0}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;->clearCurrentControllerInfo(Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;)V

    .line 1560
    return-void
.end method
