.class Landroidx/media3/session/legacy/MediaBrowserCompat$MediaBrowserImplApi21;
.super Ljava/lang/Object;
.source "MediaBrowserCompat.java"

# interfaces
.implements Landroidx/media3/session/legacy/MediaBrowserCompat$MediaBrowserImpl;
.implements Landroidx/media3/session/legacy/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;
.implements Landroidx/media3/session/legacy/MediaBrowserCompat$ConnectionCallback$ConnectionCallbackInternal;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/session/legacy/MediaBrowserCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MediaBrowserImplApi21"
.end annotation


# instance fields
.field protected final mBrowserFwk:Landroid/media/browse/MediaBrowser;

.field protected mCallbacksMessenger:Landroid/os/Messenger;

.field final mContext:Landroid/content/Context;

.field protected final mHandler:Landroidx/media3/session/legacy/MediaBrowserCompat$CallbackHandler;

.field private mMediaSessionToken:Landroidx/media3/session/legacy/MediaSessionCompat$Token;

.field private mNotifyChildrenChangedOptions:Landroid/os/Bundle;

.field protected final mRootHints:Landroid/os/Bundle;

.field protected mServiceBinderWrapper:Landroidx/media3/session/legacy/MediaBrowserCompat$ServiceBinderWrapper;

.field protected mServiceVersion:I

.field private final mSubscriptions:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Landroidx/media3/session/legacy/MediaBrowserCompat$Subscription;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;Landroidx/media3/session/legacy/MediaBrowserCompat$ConnectionCallback;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serviceComponent"    # Landroid/content/ComponentName;
    .param p3, "callback"    # Landroidx/media3/session/legacy/MediaBrowserCompat$ConnectionCallback;
    .param p4, "rootHints"    # Landroid/os/Bundle;

    .line 1673
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1654
    new-instance v0, Landroidx/media3/session/legacy/MediaBrowserCompat$CallbackHandler;

    invoke-direct {v0, p0}, Landroidx/media3/session/legacy/MediaBrowserCompat$CallbackHandler;-><init>(Landroidx/media3/session/legacy/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;)V

    iput-object v0, p0, Landroidx/media3/session/legacy/MediaBrowserCompat$MediaBrowserImplApi21;->mHandler:Landroidx/media3/session/legacy/MediaBrowserCompat$CallbackHandler;

    .line 1660
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v0, p0, Landroidx/media3/session/legacy/MediaBrowserCompat$MediaBrowserImplApi21;->mSubscriptions:Landroidx/collection/ArrayMap;

    .line 1674
    iput-object p1, p0, Landroidx/media3/session/legacy/MediaBrowserCompat$MediaBrowserImplApi21;->mContext:Landroid/content/Context;

    .line 1675
    new-instance v0, Landroid/os/Bundle;

    if-eqz p4, :cond_0

    invoke-direct {v0, p4}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :goto_0
    iput-object v0, p0, Landroidx/media3/session/legacy/MediaBrowserCompat$MediaBrowserImplApi21;->mRootHints:Landroid/os/Bundle;

    .line 1676
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaBrowserCompat$MediaBrowserImplApi21;->mRootHints:Landroid/os/Bundle;

    const-string v1, "extra_client_version"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1677
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaBrowserCompat$MediaBrowserImplApi21;->mRootHints:Landroid/os/Bundle;

    const-string v1, "extra_calling_pid"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1678
    invoke-virtual {p3, p0}, Landroidx/media3/session/legacy/MediaBrowserCompat$ConnectionCallback;->setInternalConnectionCallback(Landroidx/media3/session/legacy/MediaBrowserCompat$ConnectionCallback$ConnectionCallbackInternal;)V

    .line 1679
    new-instance v0, Landroid/media/browse/MediaBrowser;

    iget-object v1, p3, Landroidx/media3/session/legacy/MediaBrowserCompat$ConnectionCallback;->mConnectionCallbackFwk:Landroid/media/browse/MediaBrowser$ConnectionCallback;

    .line 1681
    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/browse/MediaBrowser$ConnectionCallback;

    iget-object v2, p0, Landroidx/media3/session/legacy/MediaBrowserCompat$MediaBrowserImplApi21;->mRootHints:Landroid/os/Bundle;

    invoke-direct {v0, p1, p2, v1, v2}, Landroid/media/browse/MediaBrowser;-><init>(Landroid/content/Context;Landroid/content/ComponentName;Landroid/media/browse/MediaBrowser$ConnectionCallback;Landroid/os/Bundle;)V

    iput-object v0, p0, Landroidx/media3/session/legacy/MediaBrowserCompat$MediaBrowserImplApi21;->mBrowserFwk:Landroid/media/browse/MediaBrowser;

    .line 1682
    return-void
.end method


# virtual methods
.method public connect()V
    .locals 1

    .line 1686
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaBrowserCompat$MediaBrowserImplApi21;->mBrowserFwk:Landroid/media/browse/MediaBrowser;

    invoke-virtual {v0}, Landroid/media/browse/MediaBrowser;->connect()V

    .line 1687
    return-void
.end method

.method public disconnect()V
    .locals 3

    .line 1691
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaBrowserCompat$MediaBrowserImplApi21;->mServiceBinderWrapper:Landroidx/media3/session/legacy/MediaBrowserCompat$ServiceBinderWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/session/legacy/MediaBrowserCompat$MediaBrowserImplApi21;->mCallbacksMessenger:Landroid/os/Messenger;

    if-eqz v0, :cond_0

    .line 1693
    :try_start_0
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaBrowserCompat$MediaBrowserImplApi21;->mServiceBinderWrapper:Landroidx/media3/session/legacy/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v1, p0, Landroidx/media3/session/legacy/MediaBrowserCompat$MediaBrowserImplApi21;->mCallbacksMessenger:Landroid/os/Messenger;

    invoke-virtual {v0, v1}, Landroidx/media3/session/legacy/MediaBrowserCompat$ServiceBinderWrapper;->unregisterCallbackMessenger(Landroid/os/Messenger;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1696
    goto :goto_0

    .line 1694
    :catch_0
    move-exception v0

    .line 1695
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaBrowserCompat"

    const-string v2, "Remote error unregistering client messenger."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1698
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaBrowserCompat$MediaBrowserImplApi21;->mBrowserFwk:Landroid/media/browse/MediaBrowser;

    invoke-virtual {v0}, Landroid/media/browse/MediaBrowser;->disconnect()V

    .line 1699
    return-void
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .line 1719
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaBrowserCompat$MediaBrowserImplApi21;->mBrowserFwk:Landroid/media/browse/MediaBrowser;

    invoke-virtual {v0}, Landroid/media/browse/MediaBrowser;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getItem(Ljava/lang/String;Landroidx/media3/session/legacy/MediaBrowserCompat$ItemCallback;)V
    .locals 5
    .param p1, "mediaId"    # Ljava/lang/String;
    .param p2, "cb"    # Landroidx/media3/session/legacy/MediaBrowserCompat$ItemCallback;

    .line 1815
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1818
    if-eqz p2, :cond_2

    .line 1821
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaBrowserCompat$MediaBrowserImplApi21;->mBrowserFwk:Landroid/media/browse/MediaBrowser;

    invoke-virtual {v0}, Landroid/media/browse/MediaBrowser;->isConnected()Z

    move-result v0

    const-string v1, "MediaBrowserCompat"

    if-nez v0, :cond_0

    .line 1822
    const-string v0, "Not connected, unable to retrieve the MediaItem."

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1823
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaBrowserCompat$MediaBrowserImplApi21;->mHandler:Landroidx/media3/session/legacy/MediaBrowserCompat$CallbackHandler;

    new-instance v1, Landroidx/media3/session/legacy/MediaBrowserCompat$MediaBrowserImplApi21$1;

    invoke-direct {v1, p0, p2, p1}, Landroidx/media3/session/legacy/MediaBrowserCompat$MediaBrowserImplApi21$1;-><init>(Landroidx/media3/session/legacy/MediaBrowserCompat$MediaBrowserImplApi21;Landroidx/media3/session/legacy/MediaBrowserCompat$ItemCallback;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroidx/media3/session/legacy/MediaBrowserCompat$CallbackHandler;->post(Ljava/lang/Runnable;)Z

    .line 1830
    return-void

    .line 1832
    :cond_0
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaBrowserCompat$MediaBrowserImplApi21;->mServiceBinderWrapper:Landroidx/media3/session/legacy/MediaBrowserCompat$ServiceBinderWrapper;

    if-nez v0, :cond_1

    .line 1833
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaBrowserCompat$MediaBrowserImplApi21;->mHandler:Landroidx/media3/session/legacy/MediaBrowserCompat$CallbackHandler;

    new-instance v1, Landroidx/media3/session/legacy/MediaBrowserCompat$MediaBrowserImplApi21$2;

    invoke-direct {v1, p0, p2, p1}, Landroidx/media3/session/legacy/MediaBrowserCompat$MediaBrowserImplApi21$2;-><init>(Landroidx/media3/session/legacy/MediaBrowserCompat$MediaBrowserImplApi21;Landroidx/media3/session/legacy/MediaBrowserCompat$ItemCallback;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroidx/media3/session/legacy/MediaBrowserCompat$CallbackHandler;->post(Ljava/lang/Runnable;)Z

    .line 1841
    return-void

    .line 1843
    :cond_1
    new-instance v0, Landroidx/media3/session/legacy/MediaBrowserCompat$ItemReceiver;

    iget-object v2, p0, Landroidx/media3/session/legacy/MediaBrowserCompat$MediaBrowserImplApi21;->mHandler:Landroidx/media3/session/legacy/MediaBrowserCompat$CallbackHandler;

    invoke-direct {v0, p1, p2, v2}, Landroidx/media3/session/legacy/MediaBrowserCompat$ItemReceiver;-><init>(Ljava/lang/String;Landroidx/media3/session/legacy/MediaBrowserCompat$ItemCallback;Landroid/os/Handler;)V

    .line 1845
    .local v0, "receiver":Landroid/support/v4/os/ResultReceiver;
    :try_start_0
    iget-object v2, p0, Landroidx/media3/session/legacy/MediaBrowserCompat$MediaBrowserImplApi21;->mServiceBinderWrapper:Landroidx/media3/session/legacy/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v3, p0, Landroidx/media3/session/legacy/MediaBrowserCompat$MediaBrowserImplApi21;->mCallbacksMessenger:Landroid/os/Messenger;

    invoke-static {v3}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Messenger;

    invoke-virtual {v2, p1, v0, v3}, Landroidx/media3/session/legacy/MediaBrowserCompat$ServiceBinderWrapper;->getMediaItem(Ljava/lang/String;Landroid/support/v4/os/ResultReceiver;Landroid/os/Messenger;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1855
    goto :goto_0

    .line 1846
    :catch_0
    move-exception v2

    .line 1847
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remote error getting media item: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1848
    iget-object v1, p0, Landroidx/media3/session/legacy/MediaBrowserCompat$MediaBrowserImplApi21;->mHandler:Landroidx/media3/session/legacy/MediaBrowserCompat$CallbackHandler;

    new-instance v3, Landroidx/media3/session/legacy/MediaBrowserCompat$MediaBrowserImplApi21$3;

    invoke-direct {v3, p0, p2, p1}, Landroidx/media3/session/legacy/MediaBrowserCompat$MediaBrowserImplApi21$3;-><init>(Landroidx/media3/session/legacy/MediaBrowserCompat$MediaBrowserImplApi21;Landroidx/media3/session/legacy/MediaBrowserCompat$ItemCallback;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroidx/media3/session/legacy/MediaBrowserCompat$CallbackHandler;->post(Ljava/lang/Runnable;)Z

    .line 1856
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 1819
    .end local v0    # "receiver":Landroid/support/v4/os/ResultReceiver;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cb is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1816
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "mediaId is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getNotifyChildrenChangedOptions()Landroid/os/Bundle;
    .locals 1

    .line 2053
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaBrowserCompat$MediaBrowserImplApi21;->mNotifyChildrenChangedOptions:Landroid/os/Bundle;

    return-object v0
.end method

.method public getRoot()Ljava/lang/String;
    .locals 1

    .line 1713
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaBrowserCompat$MediaBrowserImplApi21;->mBrowserFwk:Landroid/media/browse/MediaBrowser;

    invoke-virtual {v0}, Landroid/media/browse/MediaBrowser;->getRoot()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServiceComponent()Landroid/content/ComponentName;
    .locals 1

    .line 1708
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaBrowserCompat$MediaBrowserImplApi21;->mBrowserFwk:Landroid/media/browse/MediaBrowser;

    invoke-virtual {v0}, Landroid/media/browse/MediaBrowser;->getServiceComponent()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public getSessionToken()Landroidx/media3/session/legacy/MediaSessionCompat$Token;
    .locals 1

    .line 1724
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaBrowserCompat$MediaBrowserImplApi21;->mMediaSessionToken:Landroidx/media3/session/legacy/MediaSessionCompat$Token;

    if-nez v0, :cond_0

    .line 1725
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaBrowserCompat$MediaBrowserImplApi21;->mBrowserFwk:Landroid/media/browse/MediaBrowser;

    invoke-virtual {v0}, Landroid/media/browse/MediaBrowser;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/session/legacy/MediaSessionCompat$Token;->fromToken(Ljava/lang/Object;)Landroidx/media3/session/legacy/MediaSessionCompat$Token;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/session/legacy/MediaBrowserCompat$MediaBrowserImplApi21;->mMediaSessionToken:Landroidx/media3/session/legacy/MediaSessionCompat$Token;

    .line 1727
    :cond_0
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaBrowserCompat$MediaBrowserImplApi21;->mMediaSessionToken:Landroidx/media3/session/legacy/MediaSessionCompat$Token;

    return-object v0
.end method

.method public isConnected()Z
    .locals 1

    .line 1703
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaBrowserCompat$MediaBrowserImplApi21;->mBrowserFwk:Landroid/media/browse/MediaBrowser;

    invoke-virtual {v0}, Landroid/media/browse/MediaBrowser;->isConnected()Z

    move-result v0

    return v0
.end method

.method public onConnected()V
    .locals 7

    .line 1946
    const-string v0, "MediaBrowserCompat"

    :try_start_0
    iget-object v1, p0, Landroidx/media3/session/legacy/MediaBrowserCompat$MediaBrowserImplApi21;->mBrowserFwk:Landroid/media/browse/MediaBrowser;

    invoke-virtual {v1}, Landroid/media/browse/MediaBrowser;->getExtras()Landroid/os/Bundle;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1951
    .local v1, "extras":Landroid/os/Bundle;
    nop

    .line 1952
    if-nez v1, :cond_0

    .line 1953
    return-void

    .line 1955
    :cond_0
    const-string v2, "extra_service_version"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Landroidx/media3/session/legacy/MediaBrowserCompat$MediaBrowserImplApi21;->mServiceVersion:I

    .line 1956
    const-string v2, "extra_messenger"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 1957
    .local v2, "serviceBinder":Landroid/os/IBinder;
    if-eqz v2, :cond_1

    .line 1958
    new-instance v3, Landroidx/media3/session/legacy/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v4, p0, Landroidx/media3/session/legacy/MediaBrowserCompat$MediaBrowserImplApi21;->mRootHints:Landroid/os/Bundle;

    invoke-direct {v3, v2, v4}, Landroidx/media3/session/legacy/MediaBrowserCompat$ServiceBinderWrapper;-><init>(Landroid/os/IBinder;Landroid/os/Bundle;)V

    .line 1960
    .local v3, "serviceBinderWrapper":Landroidx/media3/session/legacy/MediaBrowserCompat$ServiceBinderWrapper;
    iput-object v3, p0, Landroidx/media3/session/legacy/MediaBrowserCompat$MediaBrowserImplApi21;->mServiceBinderWrapper:Landroidx/media3/session/legacy/MediaBrowserCompat$ServiceBinderWrapper;

    .line 1961
    new-instance v4, Landroid/os/Messenger;

    iget-object v5, p0, Landroidx/media3/session/legacy/MediaBrowserCompat$MediaBrowserImplApi21;->mHandler:Landroidx/media3/session/legacy/MediaBrowserCompat$CallbackHandler;

    invoke-direct {v4, v5}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    .line 1963
    .local v4, "messenger":Landroid/os/Messenger;
    iput-object v4, p0, Landroidx/media3/session/legacy/MediaBrowserCompat$MediaBrowserImplApi21;->mCallbacksMessenger:Landroid/os/Messenger;

    .line 1964
    iget-object v5, p0, Landroidx/media3/session/legacy/MediaBrowserCompat$MediaBrowserImplApi21;->mHandler:Landroidx/media3/session/legacy/MediaBrowserCompat$CallbackHandler;

    invoke-virtual {v5, v4}, Landroidx/media3/session/legacy/MediaBrowserCompat$CallbackHandler;->setCallbacksMessenger(Landroid/os/Messenger;)V

    .line 1966
    :try_start_1
    iget-object v5, p0, Landroidx/media3/session/legacy/MediaBrowserCompat$MediaBrowserImplApi21;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v5, v4}, Landroidx/media3/session/legacy/MediaBrowserCompat$ServiceBinderWrapper;->registerCallbackMessenger(Landroid/content/Context;Landroid/os/Messenger;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1969
    goto :goto_0

    .line 1967
    :catch_0
    move-exception v5

    .line 1968
    .local v5, "e":Landroid/os/RemoteException;
    const-string v6, "Remote error registering client messenger."

    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1971
    .end local v3    # "serviceBinderWrapper":Landroidx/media3/session/legacy/MediaBrowserCompat$ServiceBinderWrapper;
    .end local v4    # "messenger":Landroid/os/Messenger;
    .end local v5    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    nop

    .line 1972
    const-string v0, "extra_session_binder"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/session/legacy/IMediaSession$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/legacy/IMediaSession;

    move-result-object v0

    .line 1973
    .local v0, "sessionToken":Landroidx/media3/session/legacy/IMediaSession;
    if-eqz v0, :cond_2

    .line 1974
    iget-object v3, p0, Landroidx/media3/session/legacy/MediaBrowserCompat$MediaBrowserImplApi21;->mBrowserFwk:Landroid/media/browse/MediaBrowser;

    .line 1975
    invoke-virtual {v3}, Landroid/media/browse/MediaBrowser;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v3

    invoke-static {v3, v0}, Landroidx/media3/session/legacy/MediaSessionCompat$Token;->fromToken(Ljava/lang/Object;Landroidx/media3/session/legacy/IMediaSession;)Landroidx/media3/session/legacy/MediaSessionCompat$Token;

    move-result-object v3

    iput-object v3, p0, Landroidx/media3/session/legacy/MediaBrowserCompat$MediaBrowserImplApi21;->mMediaSessionToken:Landroidx/media3/session/legacy/MediaSessionCompat$Token;

    .line 1977
    :cond_2
    return-void

    .line 1947
    .end local v0    # "sessionToken":Landroidx/media3/session/legacy/IMediaSession;
    .end local v1    # "extras":Landroid/os/Bundle;
    .end local v2    # "serviceBinder":Landroid/os/IBinder;
    :catch_1
    move-exception v1

    .line 1949
    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string v2, "Unexpected IllegalStateException"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1950
    return-void
.end method

.method public onConnectionFailed()V
    .locals 0

    .line 1990
    return-void
.end method

.method public onConnectionFailed(Landroid/os/Messenger;)V
    .locals 0
    .param p1, "callback"    # Landroid/os/Messenger;

    .line 2004
    return-void
.end method

.method public onConnectionSuspended()V
    .locals 2

    .line 1981
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/session/legacy/MediaBrowserCompat$MediaBrowserImplApi21;->mServiceBinderWrapper:Landroidx/media3/session/legacy/MediaBrowserCompat$ServiceBinderWrapper;

    .line 1982
    iput-object v0, p0, Landroidx/media3/session/legacy/MediaBrowserCompat$MediaBrowserImplApi21;->mCallbacksMessenger:Landroid/os/Messenger;

    .line 1983
    iput-object v0, p0, Landroidx/media3/session/legacy/MediaBrowserCompat$MediaBrowserImplApi21;->mMediaSessionToken:Landroidx/media3/session/legacy/MediaSessionCompat$Token;

    .line 1984
    iget-object v1, p0, Landroidx/media3/session/legacy/MediaBrowserCompat$MediaBrowserImplApi21;->mHandler:Landroidx/media3/session/legacy/MediaBrowserCompat$CallbackHandler;

    invoke-virtual {v1, v0}, Landroidx/media3/session/legacy/MediaBrowserCompat$CallbackHandler;->setCallbacksMessenger(Landroid/os/Messenger;)V

    .line 1985
    return-void
.end method

.method public onLoadChildren(Landroid/os/Messenger;Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "callback"    # Landroid/os/Messenger;
    .param p2, "parentId"    # Ljava/lang/String;
    .param p4, "options"    # Landroid/os/Bundle;
    .param p5, "notifyChildrenChangedOptions"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Messenger;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroidx/media3/session/legacy/MediaBrowserCompat$MediaItem;",
            ">;",
            "Landroid/os/Bundle;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 2014
    .local p3, "list":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/session/legacy/MediaBrowserCompat$MediaItem;>;"
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaBrowserCompat$MediaBrowserImplApi21;->mCallbacksMessenger:Landroid/os/Messenger;

    if-eq v0, p1, :cond_0

    .line 2015
    return-void

    .line 2019
    :cond_0
    const/4 v0, 0x0

    if-nez p2, :cond_1

    move-object v1, v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroidx/media3/session/legacy/MediaBrowserCompat$MediaBrowserImplApi21;->mSubscriptions:Landroidx/collection/ArrayMap;

    invoke-virtual {v1, p2}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/session/legacy/MediaBrowserCompat$Subscription;

    .line 2020
    .local v1, "subscription":Landroidx/media3/session/legacy/MediaBrowserCompat$Subscription;
    :goto_0
    if-nez v1, :cond_3

    .line 2021
    sget-boolean v0, Landroidx/media3/session/legacy/MediaBrowserCompat;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 2022
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onLoadChildren for id that isn\'t subscribed id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MediaBrowserCompat"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2024
    :cond_2
    return-void

    .line 2028
    :cond_3
    invoke-virtual {v1, p4}, Landroidx/media3/session/legacy/MediaBrowserCompat$Subscription;->getCallback(Landroid/os/Bundle;)Landroidx/media3/session/legacy/MediaBrowserCompat$SubscriptionCallback;

    move-result-object v2

    .line 2029
    .local v2, "subscriptionCallback":Landroidx/media3/session/legacy/MediaBrowserCompat$SubscriptionCallback;
    if-eqz v2, :cond_7

    .line 2030
    if-nez p4, :cond_5

    .line 2031
    if-nez p3, :cond_4

    .line 2032
    invoke-virtual {v2, p2}, Landroidx/media3/session/legacy/MediaBrowserCompat$SubscriptionCallback;->onError(Ljava/lang/String;)V

    goto :goto_1

    .line 2034
    :cond_4
    iput-object p5, p0, Landroidx/media3/session/legacy/MediaBrowserCompat$MediaBrowserImplApi21;->mNotifyChildrenChangedOptions:Landroid/os/Bundle;

    .line 2035
    invoke-virtual {v2, p2, p3}, Landroidx/media3/session/legacy/MediaBrowserCompat$SubscriptionCallback;->onChildrenLoaded(Ljava/lang/String;Ljava/util/List;)V

    .line 2036
    iput-object v0, p0, Landroidx/media3/session/legacy/MediaBrowserCompat$MediaBrowserImplApi21;->mNotifyChildrenChangedOptions:Landroid/os/Bundle;

    goto :goto_1

    .line 2039
    :cond_5
    if-nez p3, :cond_6

    .line 2040
    invoke-virtual {v2, p2, p4}, Landroidx/media3/session/legacy/MediaBrowserCompat$SubscriptionCallback;->onError(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1

    .line 2042
    :cond_6
    iput-object p5, p0, Landroidx/media3/session/legacy/MediaBrowserCompat$MediaBrowserImplApi21;->mNotifyChildrenChangedOptions:Landroid/os/Bundle;

    .line 2043
    invoke-virtual {v2, p2, p3, p4}, Landroidx/media3/session/legacy/MediaBrowserCompat$SubscriptionCallback;->onChildrenLoaded(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;)V

    .line 2044
    iput-object v0, p0, Landroidx/media3/session/legacy/MediaBrowserCompat$MediaBrowserImplApi21;->mNotifyChildrenChangedOptions:Landroid/os/Bundle;

    .line 2048
    :cond_7
    :goto_1
    return-void
.end method

.method public onServiceConnected(Landroid/os/Messenger;Ljava/lang/String;Landroidx/media3/session/legacy/MediaSessionCompat$Token;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "callback"    # Landroid/os/Messenger;
    .param p2, "root"    # Ljava/lang/String;
    .param p3, "session"    # Landroidx/media3/session/legacy/MediaSessionCompat$Token;
    .param p4, "extra"    # Landroid/os/Bundle;

    .line 1999
    return-void
.end method

.method public search(Ljava/lang/String;Landroid/os/Bundle;Landroidx/media3/session/legacy/MediaBrowserCompat$SearchCallback;)V
    .locals 5
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;
    .param p3, "callback"    # Landroidx/media3/session/legacy/MediaBrowserCompat$SearchCallback;

    .line 1860
    invoke-virtual {p0}, Landroidx/media3/session/legacy/MediaBrowserCompat$MediaBrowserImplApi21;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1863
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaBrowserCompat$MediaBrowserImplApi21;->mServiceBinderWrapper:Landroidx/media3/session/legacy/MediaBrowserCompat$ServiceBinderWrapper;

    const-string v1, "MediaBrowserCompat"

    if-nez v0, :cond_0

    .line 1864
    const-string v0, "The connected service doesn\'t support search."

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1865
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaBrowserCompat$MediaBrowserImplApi21;->mHandler:Landroidx/media3/session/legacy/MediaBrowserCompat$CallbackHandler;

    new-instance v1, Landroidx/media3/session/legacy/MediaBrowserCompat$MediaBrowserImplApi21$4;

    invoke-direct {v1, p0, p3, p1, p2}, Landroidx/media3/session/legacy/MediaBrowserCompat$MediaBrowserImplApi21$4;-><init>(Landroidx/media3/session/legacy/MediaBrowserCompat$MediaBrowserImplApi21;Landroidx/media3/session/legacy/MediaBrowserCompat$SearchCallback;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroidx/media3/session/legacy/MediaBrowserCompat$CallbackHandler;->post(Ljava/lang/Runnable;)Z

    .line 1873
    return-void

    .line 1876
    :cond_0
    new-instance v0, Landroidx/media3/session/legacy/MediaBrowserCompat$SearchResultReceiver;

    iget-object v2, p0, Landroidx/media3/session/legacy/MediaBrowserCompat$MediaBrowserImplApi21;->mHandler:Landroidx/media3/session/legacy/MediaBrowserCompat$CallbackHandler;

    invoke-direct {v0, p1, p2, p3, v2}, Landroidx/media3/session/legacy/MediaBrowserCompat$SearchResultReceiver;-><init>(Ljava/lang/String;Landroid/os/Bundle;Landroidx/media3/session/legacy/MediaBrowserCompat$SearchCallback;Landroid/os/Handler;)V

    .line 1878
    .local v0, "receiver":Landroid/support/v4/os/ResultReceiver;
    :try_start_0
    iget-object v2, p0, Landroidx/media3/session/legacy/MediaBrowserCompat$MediaBrowserImplApi21;->mServiceBinderWrapper:Landroidx/media3/session/legacy/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v3, p0, Landroidx/media3/session/legacy/MediaBrowserCompat$MediaBrowserImplApi21;->mCallbacksMessenger:Landroid/os/Messenger;

    invoke-static {v3}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Messenger;

    invoke-virtual {v2, p1, p2, v0, v3}, Landroidx/media3/session/legacy/MediaBrowserCompat$ServiceBinderWrapper;->search(Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v4/os/ResultReceiver;Landroid/os/Messenger;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1888
    goto :goto_0

    .line 1879
    :catch_0
    move-exception v2

    .line 1880
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remote error searching items with query: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1881
    iget-object v1, p0, Landroidx/media3/session/legacy/MediaBrowserCompat$MediaBrowserImplApi21;->mHandler:Landroidx/media3/session/legacy/MediaBrowserCompat$CallbackHandler;

    new-instance v3, Landroidx/media3/session/legacy/MediaBrowserCompat$MediaBrowserImplApi21$5;

    invoke-direct {v3, p0, p3, p1, p2}, Landroidx/media3/session/legacy/MediaBrowserCompat$MediaBrowserImplApi21$5;-><init>(Landroidx/media3/session/legacy/MediaBrowserCompat$MediaBrowserImplApi21;Landroidx/media3/session/legacy/MediaBrowserCompat$SearchCallback;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v1, v3}, Landroidx/media3/session/legacy/MediaBrowserCompat$CallbackHandler;->post(Ljava/lang/Runnable;)Z

    .line 1889
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 1861
    .end local v0    # "receiver":Landroid/support/v4/os/ResultReceiver;
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "search() called while not connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public sendCustomAction(Ljava/lang/String;Landroid/os/Bundle;Landroidx/media3/session/legacy/MediaBrowserCompat$CustomActionCallback;)V
    .locals 6
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;
    .param p3, "callback"    # Landroidx/media3/session/legacy/MediaBrowserCompat$CustomActionCallback;

    .line 1896
    invoke-virtual {p0}, Landroidx/media3/session/legacy/MediaBrowserCompat$MediaBrowserImplApi21;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1906
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaBrowserCompat$MediaBrowserImplApi21;->mServiceBinderWrapper:Landroidx/media3/session/legacy/MediaBrowserCompat$ServiceBinderWrapper;

    .line 1907
    .local v0, "serviceBinderWrapper":Landroidx/media3/session/legacy/MediaBrowserCompat$ServiceBinderWrapper;
    const-string v1, "MediaBrowserCompat"

    if-nez v0, :cond_1

    .line 1908
    const-string v2, "The connected service doesn\'t support sendCustomAction."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1909
    if-eqz p3, :cond_0

    .line 1910
    iget-object v1, p0, Landroidx/media3/session/legacy/MediaBrowserCompat$MediaBrowserImplApi21;->mHandler:Landroidx/media3/session/legacy/MediaBrowserCompat$CallbackHandler;

    new-instance v2, Landroidx/media3/session/legacy/MediaBrowserCompat$MediaBrowserImplApi21$6;

    invoke-direct {v2, p0, p3, p1, p2}, Landroidx/media3/session/legacy/MediaBrowserCompat$MediaBrowserImplApi21$6;-><init>(Landroidx/media3/session/legacy/MediaBrowserCompat$MediaBrowserImplApi21;Landroidx/media3/session/legacy/MediaBrowserCompat$CustomActionCallback;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v1, v2}, Landroidx/media3/session/legacy/MediaBrowserCompat$CallbackHandler;->post(Ljava/lang/Runnable;)Z

    .line 1918
    :cond_0
    return-void

    .line 1921
    :cond_1
    new-instance v2, Landroidx/media3/session/legacy/MediaBrowserCompat$CustomActionResultReceiver;

    iget-object v3, p0, Landroidx/media3/session/legacy/MediaBrowserCompat$MediaBrowserImplApi21;->mHandler:Landroidx/media3/session/legacy/MediaBrowserCompat$CallbackHandler;

    invoke-direct {v2, p1, p2, p3, v3}, Landroidx/media3/session/legacy/MediaBrowserCompat$CustomActionResultReceiver;-><init>(Ljava/lang/String;Landroid/os/Bundle;Landroidx/media3/session/legacy/MediaBrowserCompat$CustomActionCallback;Landroid/os/Handler;)V

    .line 1923
    .local v2, "receiver":Landroid/support/v4/os/ResultReceiver;
    :try_start_0
    iget-object v3, p0, Landroidx/media3/session/legacy/MediaBrowserCompat$MediaBrowserImplApi21;->mCallbacksMessenger:Landroid/os/Messenger;

    .line 1924
    invoke-static {v3}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Messenger;

    .line 1923
    invoke-virtual {v0, p1, p2, v2, v3}, Landroidx/media3/session/legacy/MediaBrowserCompat$ServiceBinderWrapper;->sendCustomAction(Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v4/os/ResultReceiver;Landroid/os/Messenger;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1939
    goto :goto_0

    .line 1925
    :catch_0
    move-exception v3

    .line 1926
    .local v3, "e":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Remote error sending a custom action: action="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", extras="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1930
    if-eqz p3, :cond_2

    .line 1931
    iget-object v1, p0, Landroidx/media3/session/legacy/MediaBrowserCompat$MediaBrowserImplApi21;->mHandler:Landroidx/media3/session/legacy/MediaBrowserCompat$CallbackHandler;

    new-instance v4, Landroidx/media3/session/legacy/MediaBrowserCompat$MediaBrowserImplApi21$7;

    invoke-direct {v4, p0, p3, p1, p2}, Landroidx/media3/session/legacy/MediaBrowserCompat$MediaBrowserImplApi21$7;-><init>(Landroidx/media3/session/legacy/MediaBrowserCompat$MediaBrowserImplApi21;Landroidx/media3/session/legacy/MediaBrowserCompat$CustomActionCallback;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v1, v4}, Landroidx/media3/session/legacy/MediaBrowserCompat$CallbackHandler;->post(Ljava/lang/Runnable;)Z

    .line 1940
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_2
    :goto_0
    return-void

    .line 1897
    .end local v0    # "serviceBinderWrapper":Landroidx/media3/session/legacy/MediaBrowserCompat$ServiceBinderWrapper;
    .end local v2    # "receiver":Landroid/support/v4/os/ResultReceiver;
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot send a custom action ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") with extras "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " because the browser is not connected to the service."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public subscribe(Ljava/lang/String;Landroid/os/Bundle;Landroidx/media3/session/legacy/MediaBrowserCompat$SubscriptionCallback;)V
    .locals 5
    .param p1, "parentId"    # Ljava/lang/String;
    .param p2, "options"    # Landroid/os/Bundle;
    .param p3, "callback"    # Landroidx/media3/session/legacy/MediaBrowserCompat$SubscriptionCallback;

    .line 1734
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaBrowserCompat$MediaBrowserImplApi21;->mSubscriptions:Landroidx/collection/ArrayMap;

    invoke-virtual {v0, p1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/session/legacy/MediaBrowserCompat$Subscription;

    .line 1735
    .local v0, "sub":Landroidx/media3/session/legacy/MediaBrowserCompat$Subscription;
    if-nez v0, :cond_0

    .line 1736
    new-instance v1, Landroidx/media3/session/legacy/MediaBrowserCompat$Subscription;

    invoke-direct {v1}, Landroidx/media3/session/legacy/MediaBrowserCompat$Subscription;-><init>()V

    move-object v0, v1

    .line 1737
    iget-object v1, p0, Landroidx/media3/session/legacy/MediaBrowserCompat$MediaBrowserImplApi21;->mSubscriptions:Landroidx/collection/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1739
    :cond_0
    invoke-virtual {p3, v0}, Landroidx/media3/session/legacy/MediaBrowserCompat$SubscriptionCallback;->setSubscription(Landroidx/media3/session/legacy/MediaBrowserCompat$Subscription;)V

    .line 1740
    if-nez p2, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1, p2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 1741
    .local v1, "copiedOptions":Landroid/os/Bundle;
    :goto_0
    invoke-virtual {v0, v1, p3}, Landroidx/media3/session/legacy/MediaBrowserCompat$Subscription;->putCallback(Landroid/os/Bundle;Landroidx/media3/session/legacy/MediaBrowserCompat$SubscriptionCallback;)V

    .line 1743
    iget-object v2, p0, Landroidx/media3/session/legacy/MediaBrowserCompat$MediaBrowserImplApi21;->mServiceBinderWrapper:Landroidx/media3/session/legacy/MediaBrowserCompat$ServiceBinderWrapper;

    if-nez v2, :cond_2

    .line 1746
    iget-object v2, p0, Landroidx/media3/session/legacy/MediaBrowserCompat$MediaBrowserImplApi21;->mBrowserFwk:Landroid/media/browse/MediaBrowser;

    iget-object v3, p3, Landroidx/media3/session/legacy/MediaBrowserCompat$SubscriptionCallback;->mSubscriptionCallbackFwk:Landroid/media/browse/MediaBrowser$SubscriptionCallback;

    invoke-static {v3}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/browse/MediaBrowser$SubscriptionCallback;

    invoke-virtual {v2, p1, v3}, Landroid/media/browse/MediaBrowser;->subscribe(Ljava/lang/String;Landroid/media/browse/MediaBrowser$SubscriptionCallback;)V

    goto :goto_1

    .line 1749
    :cond_2
    :try_start_0
    iget-object v2, p0, Landroidx/media3/session/legacy/MediaBrowserCompat$MediaBrowserImplApi21;->mServiceBinderWrapper:Landroidx/media3/session/legacy/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v3, p3, Landroidx/media3/session/legacy/MediaBrowserCompat$SubscriptionCallback;->mToken:Landroid/os/IBinder;

    iget-object v4, p0, Landroidx/media3/session/legacy/MediaBrowserCompat$MediaBrowserImplApi21;->mCallbacksMessenger:Landroid/os/Messenger;

    .line 1750
    invoke-static {v4}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Messenger;

    .line 1749
    invoke-virtual {v2, p1, v3, v1, v4}, Landroidx/media3/session/legacy/MediaBrowserCompat$ServiceBinderWrapper;->addSubscription(Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;Landroid/os/Messenger;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1755
    goto :goto_1

    .line 1751
    :catch_0
    move-exception v2

    .line 1754
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remote error subscribing media item: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MediaBrowserCompat"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1757
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method

.method public unsubscribe(Ljava/lang/String;Landroidx/media3/session/legacy/MediaBrowserCompat$SubscriptionCallback;)V
    .locals 7
    .param p1, "parentId"    # Ljava/lang/String;
    .param p2, "callback"    # Landroidx/media3/session/legacy/MediaBrowserCompat$SubscriptionCallback;

    .line 1761
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaBrowserCompat$MediaBrowserImplApi21;->mSubscriptions:Landroidx/collection/ArrayMap;

    invoke-virtual {v0, p1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/session/legacy/MediaBrowserCompat$Subscription;

    .line 1762
    .local v0, "sub":Landroidx/media3/session/legacy/MediaBrowserCompat$Subscription;
    if-nez v0, :cond_0

    .line 1763
    return-void

    .line 1766
    :cond_0
    iget-object v1, p0, Landroidx/media3/session/legacy/MediaBrowserCompat$MediaBrowserImplApi21;->mServiceBinderWrapper:Landroidx/media3/session/legacy/MediaBrowserCompat$ServiceBinderWrapper;

    .line 1767
    .local v1, "serviceBinderWrapper":Landroidx/media3/session/legacy/MediaBrowserCompat$ServiceBinderWrapper;
    if-nez v1, :cond_5

    .line 1768
    if-nez p2, :cond_1

    .line 1769
    iget-object v2, p0, Landroidx/media3/session/legacy/MediaBrowserCompat$MediaBrowserImplApi21;->mBrowserFwk:Landroid/media/browse/MediaBrowser;

    invoke-virtual {v2, p1}, Landroid/media/browse/MediaBrowser;->unsubscribe(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1771
    :cond_1
    invoke-virtual {v0}, Landroidx/media3/session/legacy/MediaBrowserCompat$Subscription;->getCallbacks()Ljava/util/List;

    move-result-object v2

    .line 1772
    .local v2, "callbacks":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/session/legacy/MediaBrowserCompat$SubscriptionCallback;>;"
    invoke-virtual {v0}, Landroidx/media3/session/legacy/MediaBrowserCompat$Subscription;->getOptionsList()Ljava/util/List;

    move-result-object v3

    .line 1773
    .local v3, "optionsList":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_3

    .line 1774
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, p2, :cond_2

    .line 1775
    invoke-interface {v2, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1776
    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1773
    :cond_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 1779
    .end local v4    # "i":I
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_4

    .line 1780
    iget-object v4, p0, Landroidx/media3/session/legacy/MediaBrowserCompat$MediaBrowserImplApi21;->mBrowserFwk:Landroid/media/browse/MediaBrowser;

    invoke-virtual {v4, p1}, Landroid/media/browse/MediaBrowser;->unsubscribe(Ljava/lang/String;)V

    .line 1782
    .end local v2    # "callbacks":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/session/legacy/MediaBrowserCompat$SubscriptionCallback;>;"
    .end local v3    # "optionsList":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    :cond_4
    goto :goto_3

    .line 1786
    :cond_5
    if-nez p2, :cond_6

    .line 1787
    :try_start_0
    iget-object v2, p0, Landroidx/media3/session/legacy/MediaBrowserCompat$MediaBrowserImplApi21;->mCallbacksMessenger:Landroid/os/Messenger;

    .line 1788
    invoke-static {v2}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Messenger;

    .line 1787
    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3, v2}, Landroidx/media3/session/legacy/MediaBrowserCompat$ServiceBinderWrapper;->removeSubscription(Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Messenger;)V

    goto :goto_2

    .line 1790
    :cond_6
    invoke-virtual {v0}, Landroidx/media3/session/legacy/MediaBrowserCompat$Subscription;->getCallbacks()Ljava/util/List;

    move-result-object v2

    .line 1791
    .restart local v2    # "callbacks":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/session/legacy/MediaBrowserCompat$SubscriptionCallback;>;"
    invoke-virtual {v0}, Landroidx/media3/session/legacy/MediaBrowserCompat$Subscription;->getOptionsList()Ljava/util/List;

    move-result-object v3

    .line 1792
    .restart local v3    # "optionsList":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .restart local v4    # "i":I
    :goto_1
    if-ltz v4, :cond_8

    .line 1793
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, p2, :cond_7

    .line 1794
    iget-object v5, p2, Landroidx/media3/session/legacy/MediaBrowserCompat$SubscriptionCallback;->mToken:Landroid/os/IBinder;

    iget-object v6, p0, Landroidx/media3/session/legacy/MediaBrowserCompat$MediaBrowserImplApi21;->mCallbacksMessenger:Landroid/os/Messenger;

    .line 1795
    invoke-static {v6}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Messenger;

    .line 1794
    invoke-virtual {v1, p1, v5, v6}, Landroidx/media3/session/legacy/MediaBrowserCompat$ServiceBinderWrapper;->removeSubscription(Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Messenger;)V

    .line 1796
    invoke-interface {v2, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1797
    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1792
    :cond_7
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 1805
    .end local v2    # "callbacks":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/session/legacy/MediaBrowserCompat$SubscriptionCallback;>;"
    .end local v3    # "optionsList":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    .end local v4    # "i":I
    :cond_8
    :goto_2
    goto :goto_3

    .line 1801
    :catch_0
    move-exception v2

    .line 1804
    .local v2, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeSubscription failed with RemoteException parentId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MediaBrowserCompat"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1808
    .end local v2    # "ex":Landroid/os/RemoteException;
    :goto_3
    invoke-virtual {v0}, Landroidx/media3/session/legacy/MediaBrowserCompat$Subscription;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    if-nez p2, :cond_a

    .line 1809
    :cond_9
    iget-object v2, p0, Landroidx/media3/session/legacy/MediaBrowserCompat$MediaBrowserImplApi21;->mSubscriptions:Landroidx/collection/ArrayMap;

    invoke-virtual {v2, p1}, Landroidx/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1811
    :cond_a
    return-void
.end method
