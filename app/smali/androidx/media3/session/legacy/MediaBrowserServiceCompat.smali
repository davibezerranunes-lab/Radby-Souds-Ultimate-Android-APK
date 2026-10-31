.class public abstract Landroidx/media3/session/legacy/MediaBrowserServiceCompat;
.super Landroid/app/Service;
.source "MediaBrowserServiceCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/session/legacy/MediaBrowserServiceCompat$ServiceBinderImpl;,
        Landroidx/media3/session/legacy/MediaBrowserServiceCompat$ConnectionRecord;,
        Landroidx/media3/session/legacy/MediaBrowserServiceCompat$ServiceCallbacks;,
        Landroidx/media3/session/legacy/MediaBrowserServiceCompat$ServiceHandler;,
        Landroidx/media3/session/legacy/MediaBrowserServiceCompat$MediaBrowserServiceImplApi28;,
        Landroidx/media3/session/legacy/MediaBrowserServiceCompat$MediaBrowserServiceImpl;,
        Landroidx/media3/session/legacy/MediaBrowserServiceCompat$MediaBrowserServiceImplApi26;,
        Landroidx/media3/session/legacy/MediaBrowserServiceCompat$MediaBrowserServiceImplApi23;,
        Landroidx/media3/session/legacy/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;,
        Landroidx/media3/session/legacy/MediaBrowserServiceCompat$MediaBrowserServiceImplBase;,
        Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;,
        Landroidx/media3/session/legacy/MediaBrowserServiceCompat$ServiceCallbacksCompat;,
        Landroidx/media3/session/legacy/MediaBrowserServiceCompat$BrowserRoot;,
        Landroidx/media3/session/legacy/MediaBrowserServiceCompat$ResultWrapper;
    }
.end annotation


# static fields
.field static final DEBUG:Z

.field private static final EPSILON:F = 1.0E-5f

.field public static final KEY_MEDIA_ITEM:Ljava/lang/String; = "media_item"

.field public static final KEY_SEARCH_RESULTS:Ljava/lang/String; = "search_results"

.field public static final RESULT_ERROR:I = -0x1

.field static final RESULT_FLAG_ON_LOAD_ITEM_NOT_IMPLEMENTED:I = 0x2

.field static final RESULT_FLAG_ON_SEARCH_NOT_IMPLEMENTED:I = 0x4

.field static final RESULT_FLAG_OPTION_NOT_HANDLED:I = 0x1

.field public static final RESULT_OK:I = 0x0

.field public static final RESULT_PROGRESS_UPDATE:I = 0x1

.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.media.browse.MediaBrowserService"

.field static final TAG:Ljava/lang/String; = "MBServiceCompat"


# instance fields
.field final mConnectionFromFwk:Landroidx/media3/session/legacy/MediaBrowserServiceCompat$ConnectionRecord;

.field final mConnections:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap<",
            "Landroid/os/IBinder;",
            "Landroidx/media3/session/legacy/MediaBrowserServiceCompat$ConnectionRecord;",
            ">;"
        }
    .end annotation
.end field

.field mCurConnection:Landroidx/media3/session/legacy/MediaBrowserServiceCompat$ConnectionRecord;

.field final mHandler:Landroidx/media3/session/legacy/MediaBrowserServiceCompat$ServiceHandler;

.field private mImpl:Landroidx/media3/session/legacy/MediaBrowserServiceCompat$MediaBrowserServiceImpl;

.field final mPendingConnections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/media3/session/legacy/MediaBrowserServiceCompat$ConnectionRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mServiceBinderImpl:Landroidx/media3/session/legacy/MediaBrowserServiceCompat$ServiceBinderImpl;

.field mSession:Landroidx/media3/session/legacy/MediaSessionCompat$Token;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 131
    const-string v0, "MBServiceCompat"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroidx/media3/session/legacy/MediaBrowserServiceCompat;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .line 129
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 169
    new-instance v0, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$ServiceBinderImpl;

    invoke-direct {v0, p0}, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$ServiceBinderImpl;-><init>(Landroidx/media3/session/legacy/MediaBrowserServiceCompat;)V

    iput-object v0, p0, Landroidx/media3/session/legacy/MediaBrowserServiceCompat;->mServiceBinderImpl:Landroidx/media3/session/legacy/MediaBrowserServiceCompat$ServiceBinderImpl;

    .line 170
    new-instance v0, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$ConnectionRecord;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v3, "android.media.session.MediaController"

    const/4 v4, -0x1

    const/4 v5, -0x1

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$ConnectionRecord;-><init>(Landroidx/media3/session/legacy/MediaBrowserServiceCompat;Ljava/lang/String;IILandroid/os/Bundle;Landroidx/media3/session/legacy/MediaBrowserServiceCompat$ServiceCallbacks;)V

    iput-object v0, p0, Landroidx/media3/session/legacy/MediaBrowserServiceCompat;->mConnectionFromFwk:Landroidx/media3/session/legacy/MediaBrowserServiceCompat$ConnectionRecord;

    .line 172
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/media3/session/legacy/MediaBrowserServiceCompat;->mPendingConnections:Ljava/util/ArrayList;

    .line 173
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v0, p0, Landroidx/media3/session/legacy/MediaBrowserServiceCompat;->mConnections:Landroidx/collection/ArrayMap;

    .line 176
    new-instance v0, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$ServiceHandler;

    invoke-direct {v0, p0}, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$ServiceHandler;-><init>(Landroidx/media3/session/legacy/MediaBrowserServiceCompat;)V

    iput-object v0, p0, Landroidx/media3/session/legacy/MediaBrowserServiceCompat;->mHandler:Landroidx/media3/session/legacy/MediaBrowserServiceCompat$ServiceHandler;

    return-void
.end method


# virtual methods
.method addSubscription(Ljava/lang/String;Landroidx/media3/session/legacy/MediaBrowserServiceCompat$ConnectionRecord;Landroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "connection"    # Landroidx/media3/session/legacy/MediaBrowserServiceCompat$ConnectionRecord;
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "options"    # Landroid/os/Bundle;

    .line 1749
    iget-object v0, p2, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$ConnectionRecord;->subscriptions:Ljava/util/HashMap;

    .line 1750
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1751
    .local v0, "callbackList":Ljava/util/List;, "Ljava/util/List<Landroidx/core/util/Pair<Landroid/os/IBinder;Landroid/os/Bundle;>;>;"
    if-nez v0, :cond_0

    .line 1752
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    .line 1754
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/core/util/Pair;

    .line 1755
    .local v2, "callback":Landroidx/core/util/Pair;, "Landroidx/core/util/Pair<Landroid/os/IBinder;Landroid/os/Bundle;>;"
    iget-object v3, v2, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    if-ne p3, v3, :cond_1

    iget-object v3, v2, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    .line 1756
    invoke-static {p4, v3}, Landroidx/media3/session/legacy/MediaBrowserCompatUtils;->areSameOptions(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1757
    return-void

    .line 1759
    .end local v2    # "callback":Landroidx/core/util/Pair;, "Landroidx/core/util/Pair<Landroid/os/IBinder;Landroid/os/Bundle;>;"
    :cond_1
    goto :goto_0

    .line 1760
    :cond_2
    new-instance v1, Landroidx/core/util/Pair;

    invoke-direct {v1, p3, p4}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1761
    iget-object v1, p2, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$ConnectionRecord;->subscriptions:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1763
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, p4, v1}, Landroidx/media3/session/legacy/MediaBrowserServiceCompat;->performLoadChildren(Ljava/lang/String;Landroidx/media3/session/legacy/MediaBrowserServiceCompat$ConnectionRecord;Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 1765
    iput-object p2, p0, Landroidx/media3/session/legacy/MediaBrowserServiceCompat;->mCurConnection:Landroidx/media3/session/legacy/MediaBrowserServiceCompat$ConnectionRecord;

    .line 1766
    invoke-virtual {p0, p1, p4}, Landroidx/media3/session/legacy/MediaBrowserServiceCompat;->onSubscribe(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1767
    iput-object v1, p0, Landroidx/media3/session/legacy/MediaBrowserServiceCompat;->mCurConnection:Landroidx/media3/session/legacy/MediaBrowserServiceCompat$ConnectionRecord;

    .line 1768
    return-void
.end method

.method applyOptions(Ljava/util/List;Landroid/os/Bundle;)Ljava/util/List;
    .locals 5
    .param p2, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/session/legacy/MediaBrowserCompat$MediaItem;",
            ">;",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/List<",
            "Landroidx/media3/session/legacy/MediaBrowserCompat$MediaItem;",
            ">;"
        }
    .end annotation

    .line 1867
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/session/legacy/MediaBrowserCompat$MediaItem;>;"
    if-nez p1, :cond_0

    .line 1868
    const/4 v0, 0x0

    return-object v0

    .line 1870
    :cond_0
    if-nez p2, :cond_1

    .line 1871
    return-object p1

    .line 1873
    :cond_1
    const-string v0, "android.media.browse.extra.PAGE"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1874
    .local v0, "page":I
    const-string v2, "android.media.browse.extra.PAGE_SIZE"

    invoke-virtual {p2, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 1875
    .local v2, "pageSize":I
    if-ne v0, v1, :cond_2

    if-ne v2, v1, :cond_2

    .line 1876
    return-object p1

    .line 1878
    :cond_2
    mul-int v1, v2, v0

    .line 1879
    .local v1, "fromIndex":I
    add-int v3, v1, v2

    .line 1880
    .local v3, "toIndex":I
    if-ltz v0, :cond_5

    const/4 v4, 0x1

    if-lt v2, v4, :cond_5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-lt v1, v4, :cond_3

    goto :goto_0

    .line 1883
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-le v3, v4, :cond_4

    .line 1884
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 1886
    :cond_4
    invoke-interface {p1, v1, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    return-object v4

    .line 1881
    :cond_5
    :goto_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    return-object v4
.end method

.method public attachToBaseContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "base"    # Landroid/content/Context;

    .line 1322
    invoke-virtual {p0, p1}, Landroidx/media3/session/legacy/MediaBrowserServiceCompat;->attachBaseContext(Landroid/content/Context;)V

    .line 1323
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 1356
    return-void
.end method

.method public final getBrowserRootHints()Landroid/os/Bundle;
    .locals 1

    .line 1555
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaBrowserServiceCompat;->mImpl:Landroidx/media3/session/legacy/MediaBrowserServiceCompat$MediaBrowserServiceImpl;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$MediaBrowserServiceImpl;

    invoke-interface {v0}, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$MediaBrowserServiceImpl;->getBrowserRootHints()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public final getCurrentBrowserInfo()Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;
    .locals 1

    .line 1566
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaBrowserServiceCompat;->mImpl:Landroidx/media3/session/legacy/MediaBrowserServiceCompat$MediaBrowserServiceImpl;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$MediaBrowserServiceImpl;

    invoke-interface {v0}, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$MediaBrowserServiceImpl;->getCurrentBrowserInfo()Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;

    move-result-object v0

    return-object v0
.end method

.method public getSessionToken()Landroidx/media3/session/legacy/MediaSessionCompat$Token;
    .locals 1

    .line 1535
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaBrowserServiceCompat;->mSession:Landroidx/media3/session/legacy/MediaSessionCompat$Token;

    return-object v0
.end method

.method handleMessageInternal(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .line 1628
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 1629
    .local v0, "data":Landroid/os/Bundle;
    iget v1, p1, Landroid/os/Message;->what:I

    const-string v2, "data_callback_token"

    const-string v3, "data_calling_uid"

    const-string v4, "data_calling_pid"

    const-string v5, "data_package_name"

    const-string v6, "data_root_hints"

    const-string v7, "data_result_receiver"

    const-string v8, "data_media_item_id"

    packed-switch v1, :pswitch_data_0

    .line 1711
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n  Service version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n  Client version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MBServiceCompat"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1700
    :pswitch_0
    const-string v1, "data_custom_action_extras"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 1701
    .local v1, "customActionExtras":Landroid/os/Bundle;
    invoke-static {v1}, Landroidx/media3/session/legacy/MediaSessionCompat;->ensureClassLoader(Landroid/os/Bundle;)V

    .line 1703
    iget-object v2, p0, Landroidx/media3/session/legacy/MediaBrowserServiceCompat;->mServiceBinderImpl:Landroidx/media3/session/legacy/MediaBrowserServiceCompat$ServiceBinderImpl;

    .line 1704
    const-string v3, "data_custom_action"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1706
    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/support/v4/os/ResultReceiver;

    new-instance v5, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$ServiceCallbacksCompat;

    iget-object v6, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-direct {v5, v6}, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$ServiceCallbacksCompat;-><init>(Landroid/os/Messenger;)V

    .line 1703
    invoke-virtual {v2, v3, v1, v4, v5}, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$ServiceBinderImpl;->sendCustomAction(Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v4/os/ResultReceiver;Landroidx/media3/session/legacy/MediaBrowserServiceCompat$ServiceCallbacks;)V

    .line 1708
    goto/16 :goto_0

    .line 1688
    .end local v1    # "customActionExtras":Landroid/os/Bundle;
    :pswitch_1
    const-string v1, "data_search_extras"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 1689
    .local v1, "searchExtras":Landroid/os/Bundle;
    invoke-static {v1}, Landroidx/media3/session/legacy/MediaSessionCompat;->ensureClassLoader(Landroid/os/Bundle;)V

    .line 1691
    iget-object v2, p0, Landroidx/media3/session/legacy/MediaBrowserServiceCompat;->mServiceBinderImpl:Landroidx/media3/session/legacy/MediaBrowserServiceCompat$ServiceBinderImpl;

    .line 1692
    const-string v3, "data_search_query"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1694
    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/support/v4/os/ResultReceiver;

    new-instance v5, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$ServiceCallbacksCompat;

    iget-object v6, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-direct {v5, v6}, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$ServiceCallbacksCompat;-><init>(Landroid/os/Messenger;)V

    .line 1691
    invoke-virtual {v2, v3, v1, v4, v5}, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$ServiceBinderImpl;->search(Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v4/os/ResultReceiver;Landroidx/media3/session/legacy/MediaBrowserServiceCompat$ServiceCallbacks;)V

    .line 1696
    goto/16 :goto_0

    .line 1684
    .end local v1    # "searchExtras":Landroid/os/Bundle;
    :pswitch_2
    iget-object v1, p0, Landroidx/media3/session/legacy/MediaBrowserServiceCompat;->mServiceBinderImpl:Landroidx/media3/session/legacy/MediaBrowserServiceCompat$ServiceBinderImpl;

    new-instance v2, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$ServiceCallbacksCompat;

    iget-object v3, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-direct {v2, v3}, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$ServiceCallbacksCompat;-><init>(Landroid/os/Messenger;)V

    invoke-virtual {v1, v2}, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$ServiceBinderImpl;->unregisterCallbacks(Landroidx/media3/session/legacy/MediaBrowserServiceCompat$ServiceCallbacks;)V

    .line 1685
    goto/16 :goto_0

    .line 1672
    :pswitch_3
    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 1673
    .local v1, "rootHints":Landroid/os/Bundle;
    invoke-static {v1}, Landroidx/media3/session/legacy/MediaSessionCompat;->ensureClassLoader(Landroid/os/Bundle;)V

    .line 1675
    iget-object v2, p0, Landroidx/media3/session/legacy/MediaBrowserServiceCompat;->mServiceBinderImpl:Landroidx/media3/session/legacy/MediaBrowserServiceCompat$ServiceBinderImpl;

    new-instance v6, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$ServiceCallbacksCompat;

    iget-object v7, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-direct {v6, v7}, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$ServiceCallbacksCompat;-><init>(Landroid/os/Messenger;)V

    .line 1677
    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1678
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 1679
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 1675
    move-object v4, v2

    move-object v5, v6

    move-object v6, v7

    move v7, v8

    move v8, v3

    move-object v9, v1

    invoke-virtual/range {v4 .. v9}, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$ServiceBinderImpl;->registerCallbacks(Landroidx/media3/session/legacy/MediaBrowserServiceCompat$ServiceCallbacks;Ljava/lang/String;IILandroid/os/Bundle;)V

    .line 1681
    goto/16 :goto_0

    .line 1665
    .end local v1    # "rootHints":Landroid/os/Bundle;
    :pswitch_4
    iget-object v1, p0, Landroidx/media3/session/legacy/MediaBrowserServiceCompat;->mServiceBinderImpl:Landroidx/media3/session/legacy/MediaBrowserServiceCompat$ServiceBinderImpl;

    .line 1666
    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1667
    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/support/v4/os/ResultReceiver;

    new-instance v4, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$ServiceCallbacksCompat;

    iget-object v5, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-direct {v4, v5}, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$ServiceCallbacksCompat;-><init>(Landroid/os/Messenger;)V

    .line 1665
    invoke-virtual {v1, v2, v3, v4}, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$ServiceBinderImpl;->getMediaItem(Ljava/lang/String;Landroid/support/v4/os/ResultReceiver;Landroidx/media3/session/legacy/MediaBrowserServiceCompat$ServiceCallbacks;)V

    .line 1669
    goto :goto_0

    .line 1659
    :pswitch_5
    iget-object v1, p0, Landroidx/media3/session/legacy/MediaBrowserServiceCompat;->mServiceBinderImpl:Landroidx/media3/session/legacy/MediaBrowserServiceCompat$ServiceBinderImpl;

    .line 1660
    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1661
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    new-instance v4, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$ServiceCallbacksCompat;

    iget-object v5, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-direct {v4, v5}, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$ServiceCallbacksCompat;-><init>(Landroid/os/Messenger;)V

    .line 1659
    invoke-virtual {v1, v3, v2, v4}, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$ServiceBinderImpl;->removeSubscription(Ljava/lang/String;Landroid/os/IBinder;Landroidx/media3/session/legacy/MediaBrowserServiceCompat$ServiceCallbacks;)V

    .line 1663
    goto :goto_0

    .line 1648
    :pswitch_6
    const-string v1, "data_options"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 1649
    .local v1, "options":Landroid/os/Bundle;
    invoke-static {v1}, Landroidx/media3/session/legacy/MediaSessionCompat;->ensureClassLoader(Landroid/os/Bundle;)V

    .line 1651
    iget-object v3, p0, Landroidx/media3/session/legacy/MediaBrowserServiceCompat;->mServiceBinderImpl:Landroidx/media3/session/legacy/MediaBrowserServiceCompat$ServiceBinderImpl;

    .line 1652
    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1653
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    new-instance v5, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$ServiceCallbacksCompat;

    iget-object v6, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-direct {v5, v6}, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$ServiceCallbacksCompat;-><init>(Landroid/os/Messenger;)V

    .line 1651
    invoke-virtual {v3, v4, v2, v1, v5}, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$ServiceBinderImpl;->addSubscription(Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;Landroidx/media3/session/legacy/MediaBrowserServiceCompat$ServiceCallbacks;)V

    .line 1656
    goto :goto_0

    .line 1644
    .end local v1    # "options":Landroid/os/Bundle;
    :pswitch_7
    iget-object v1, p0, Landroidx/media3/session/legacy/MediaBrowserServiceCompat;->mServiceBinderImpl:Landroidx/media3/session/legacy/MediaBrowserServiceCompat$ServiceBinderImpl;

    new-instance v2, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$ServiceCallbacksCompat;

    iget-object v3, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-direct {v2, v3}, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$ServiceCallbacksCompat;-><init>(Landroid/os/Messenger;)V

    invoke-virtual {v1, v2}, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$ServiceBinderImpl;->disconnect(Landroidx/media3/session/legacy/MediaBrowserServiceCompat$ServiceCallbacks;)V

    .line 1645
    goto :goto_0

    .line 1632
    :pswitch_8
    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 1633
    .local v1, "rootHints":Landroid/os/Bundle;
    invoke-static {v1}, Landroidx/media3/session/legacy/MediaSessionCompat;->ensureClassLoader(Landroid/os/Bundle;)V

    .line 1635
    iget-object v2, p0, Landroidx/media3/session/legacy/MediaBrowserServiceCompat;->mServiceBinderImpl:Landroidx/media3/session/legacy/MediaBrowserServiceCompat$ServiceBinderImpl;

    .line 1636
    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1637
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 1638
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    new-instance v9, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$ServiceCallbacksCompat;

    iget-object v3, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-direct {v9, v3}, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$ServiceCallbacksCompat;-><init>(Landroid/os/Messenger;)V

    .line 1635
    move-object v4, v2

    move-object v8, v1

    invoke-virtual/range {v4 .. v9}, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$ServiceBinderImpl;->connect(Ljava/lang/String;IILandroid/os/Bundle;Landroidx/media3/session/legacy/MediaBrowserServiceCompat$ServiceCallbacks;)V

    .line 1641
    nop

    .line 1720
    .end local v1    # "rootHints":Landroid/os/Bundle;
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method isValidPackage(Ljava/lang/String;I)Z
    .locals 6
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNullIf;
        expression = {
            "#1"
        }
        result = true
    .end annotation

    .line 1725
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1726
    return v0

    .line 1728
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/session/legacy/MediaBrowserServiceCompat;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1729
    .local v1, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v1, p2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    .line 1730
    .local v2, "packages":[Ljava/lang/String;
    if-nez v2, :cond_1

    .line 1731
    return v0

    .line 1733
    :cond_1
    array-length v3, v2

    .line 1734
    .local v3, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_3

    .line 1735
    aget-object v5, v2, v4

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1736
    const/4 v0, 0x1

    return v0

    .line 1734
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1739
    .end local v4    # "i":I
    :cond_3
    return v0
.end method

.method public notifyChildrenChanged(Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "remoteUserInfo"    # Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;
    .param p2, "parentId"    # Ljava/lang/String;
    .param p3, "options"    # Landroid/os/Bundle;

    .line 1611
    if-eqz p1, :cond_2

    .line 1615
    if-eqz p2, :cond_1

    .line 1618
    if-eqz p3, :cond_0

    .line 1621
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaBrowserServiceCompat;->mImpl:Landroidx/media3/session/legacy/MediaBrowserServiceCompat$MediaBrowserServiceImpl;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$MediaBrowserServiceImpl;

    invoke-interface {v0, p1, p2, p3}, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$MediaBrowserServiceImpl;->notifyChildrenChanged(Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1622
    return-void

    .line 1619
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "options cannot be null in notifyChildrenChanged"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1616
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "parentId cannot be null in notifyChildrenChanged"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1612
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "remoteUserInfo cannot be null in notifyChildrenChanged"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public notifyChildrenChanged(Ljava/lang/String;)V
    .locals 2
    .param p1, "parentId"    # Ljava/lang/String;

    .line 1576
    if-eqz p1, :cond_0

    .line 1579
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaBrowserServiceCompat;->mImpl:Landroidx/media3/session/legacy/MediaBrowserServiceCompat$MediaBrowserServiceImpl;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$MediaBrowserServiceImpl;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$MediaBrowserServiceImpl;->notifyChildrenChanged(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1580
    return-void

    .line 1577
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "parentId cannot be null in notifyChildrenChanged"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public notifyChildrenChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "parentId"    # Ljava/lang/String;
    .param p2, "options"    # Landroid/os/Bundle;

    .line 1591
    if-eqz p1, :cond_1

    .line 1594
    if-eqz p2, :cond_0

    .line 1597
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaBrowserServiceCompat;->mImpl:Landroidx/media3/session/legacy/MediaBrowserServiceCompat$MediaBrowserServiceImpl;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$MediaBrowserServiceImpl;

    invoke-interface {v0, p1, p2}, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$MediaBrowserServiceImpl;->notifyChildrenChanged(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1598
    return-void

    .line 1595
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "options cannot be null in notifyChildrenChanged"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1592
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "parentId cannot be null in notifyChildrenChanged"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 1352
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaBrowserServiceCompat;->mImpl:Landroidx/media3/session/legacy/MediaBrowserServiceCompat$MediaBrowserServiceImpl;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$MediaBrowserServiceImpl;

    invoke-interface {v0, p1}, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$MediaBrowserServiceImpl;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .line 1327
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 1328
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 1329
    new-instance v0, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$MediaBrowserServiceImplApi28;

    invoke-direct {v0, p0}, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$MediaBrowserServiceImplApi28;-><init>(Landroidx/media3/session/legacy/MediaBrowserServiceCompat;)V

    iput-object v0, p0, Landroidx/media3/session/legacy/MediaBrowserServiceCompat;->mImpl:Landroidx/media3/session/legacy/MediaBrowserServiceCompat$MediaBrowserServiceImpl;

    goto :goto_0

    .line 1330
    :cond_0
    nop

    .line 1331
    new-instance v0, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$MediaBrowserServiceImplApi26;

    invoke-direct {v0, p0}, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$MediaBrowserServiceImplApi26;-><init>(Landroidx/media3/session/legacy/MediaBrowserServiceCompat;)V

    iput-object v0, p0, Landroidx/media3/session/legacy/MediaBrowserServiceCompat;->mImpl:Landroidx/media3/session/legacy/MediaBrowserServiceCompat$MediaBrowserServiceImpl;

    .line 1339
    :goto_0
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaBrowserServiceCompat;->mImpl:Landroidx/media3/session/legacy/MediaBrowserServiceCompat$MediaBrowserServiceImpl;

    invoke-interface {v0}, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$MediaBrowserServiceImpl;->onCreate()V

    .line 1340
    return-void
.end method

.method public onCustomAction(Ljava/lang/String;Landroid/os/Bundle;Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .line 1510
    .local p3, "result":Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;, "Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result<Landroid/os/Bundle;>;"
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;->sendError(Landroid/os/Bundle;)V

    .line 1511
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1346
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaBrowserServiceCompat;->mHandler:Landroidx/media3/session/legacy/MediaBrowserServiceCompat$ServiceHandler;

    invoke-virtual {v0}, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$ServiceHandler;->release()V

    .line 1347
    return-void
.end method

.method public abstract onGetRoot(Ljava/lang/String;ILandroid/os/Bundle;)Landroidx/media3/session/legacy/MediaBrowserServiceCompat$BrowserRoot;
.end method

.method public abstract onLoadChildren(Ljava/lang/String;Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result<",
            "Ljava/util/List<",
            "Landroidx/media3/session/legacy/MediaBrowserCompat$MediaItem;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public onLoadChildren(Ljava/lang/String;Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "parentId"    # Ljava/lang/String;
    .param p3, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result<",
            "Ljava/util/List<",
            "Landroidx/media3/session/legacy/MediaBrowserCompat$MediaItem;",
            ">;>;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 1425
    .local p2, "result":Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;, "Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result<Ljava/util/List<Landroidx/media3/session/legacy/MediaBrowserCompat$MediaItem;>;>;"
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;->setFlags(I)V

    .line 1426
    invoke-virtual {p0, p1, p2}, Landroidx/media3/session/legacy/MediaBrowserServiceCompat;->onLoadChildren(Ljava/lang/String;Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;)V

    .line 1427
    return-void
.end method

.method public onLoadItem(Ljava/lang/String;Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;)V
    .locals 1
    .param p1, "itemId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result<",
            "Landroidx/media3/session/legacy/MediaBrowserCompat$MediaItem;",
            ">;)V"
        }
    .end annotation

    .line 1461
    .local p2, "result":Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;, "Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result<Landroidx/media3/session/legacy/MediaBrowserCompat$MediaItem;>;"
    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;->setFlags(I)V

    .line 1462
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;->sendResult(Ljava/lang/Object;)V

    .line 1463
    return-void
.end method

.method public onSearch(Ljava/lang/String;Landroid/os/Bundle;Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;)V
    .locals 1
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result<",
            "Ljava/util/List<",
            "Landroidx/media3/session/legacy/MediaBrowserCompat$MediaItem;",
            ">;>;)V"
        }
    .end annotation

    .line 1487
    .local p3, "result":Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;, "Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result<Ljava/util/List<Landroidx/media3/session/legacy/MediaBrowserCompat$MediaItem;>;>;"
    const/4 v0, 0x4

    invoke-virtual {p3, v0}, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;->setFlags(I)V

    .line 1488
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;->sendResult(Ljava/lang/Object;)V

    .line 1489
    return-void
.end method

.method public onSubscribe(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "option"    # Landroid/os/Bundle;

    .line 1435
    return-void
.end method

.method public onUnsubscribe(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .line 1442
    return-void
.end method

.method performCustomAction(Ljava/lang/String;Landroid/os/Bundle;Landroidx/media3/session/legacy/MediaBrowserServiceCompat$ConnectionRecord;Landroid/support/v4/os/ResultReceiver;)V
    .locals 4
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;
    .param p3, "connection"    # Landroidx/media3/session/legacy/MediaBrowserServiceCompat$ConnectionRecord;
    .param p4, "receiver"    # Landroid/support/v4/os/ResultReceiver;

    .line 1957
    new-instance v0, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$4;

    invoke-direct {v0, p0, p1, p4}, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$4;-><init>(Landroidx/media3/session/legacy/MediaBrowserServiceCompat;Ljava/lang/Object;Landroid/support/v4/os/ResultReceiver;)V

    .line 1975
    .local v0, "result":Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;, "Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result<Landroid/os/Bundle;>;"
    iput-object p3, p0, Landroidx/media3/session/legacy/MediaBrowserServiceCompat;->mCurConnection:Landroidx/media3/session/legacy/MediaBrowserServiceCompat$ConnectionRecord;

    .line 1976
    if-nez p2, :cond_0

    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    goto :goto_0

    :cond_0
    move-object v1, p2

    :goto_0
    invoke-virtual {p0, p1, v1, v0}, Landroidx/media3/session/legacy/MediaBrowserServiceCompat;->onCustomAction(Ljava/lang/String;Landroid/os/Bundle;Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;)V

    .line 1977
    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/media3/session/legacy/MediaBrowserServiceCompat;->mCurConnection:Landroidx/media3/session/legacy/MediaBrowserServiceCompat$ConnectionRecord;

    .line 1979
    invoke-virtual {v0}, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;->isDone()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1987
    return-void

    .line 1980
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCustomAction must call detach() or sendResult() or sendError() before returning for action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " extras="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method performLoadChildren(Ljava/lang/String;Landroidx/media3/session/legacy/MediaBrowserServiceCompat$ConnectionRecord;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 8
    .param p1, "parentId"    # Ljava/lang/String;
    .param p2, "connection"    # Landroidx/media3/session/legacy/MediaBrowserServiceCompat$ConnectionRecord;
    .param p3, "subscribeOptions"    # Landroid/os/Bundle;
    .param p4, "notifyChildrenChangedOptions"    # Landroid/os/Bundle;

    .line 1810
    new-instance v7, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$1;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p1

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$1;-><init>(Landroidx/media3/session/legacy/MediaBrowserServiceCompat;Ljava/lang/Object;Landroidx/media3/session/legacy/MediaBrowserServiceCompat$ConnectionRecord;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 1846
    .local v0, "result":Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;, "Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result<Ljava/util/List<Landroidx/media3/session/legacy/MediaBrowserCompat$MediaItem;>;>;"
    iput-object p2, p0, Landroidx/media3/session/legacy/MediaBrowserServiceCompat;->mCurConnection:Landroidx/media3/session/legacy/MediaBrowserServiceCompat$ConnectionRecord;

    .line 1847
    if-nez p3, :cond_0

    .line 1848
    invoke-virtual {p0, p1, v0}, Landroidx/media3/session/legacy/MediaBrowserServiceCompat;->onLoadChildren(Ljava/lang/String;Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;)V

    goto :goto_0

    .line 1850
    :cond_0
    invoke-virtual {p0, p1, v0, p3}, Landroidx/media3/session/legacy/MediaBrowserServiceCompat;->onLoadChildren(Ljava/lang/String;Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;Landroid/os/Bundle;)V

    .line 1852
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/media3/session/legacy/MediaBrowserServiceCompat;->mCurConnection:Landroidx/media3/session/legacy/MediaBrowserServiceCompat$ConnectionRecord;

    .line 1854
    invoke-virtual {v0}, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;->isDone()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1862
    return-void

    .line 1855
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onLoadChildren must call detach() or sendResult() before returning for package="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$ConnectionRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method performLoadItem(Ljava/lang/String;Landroidx/media3/session/legacy/MediaBrowserServiceCompat$ConnectionRecord;Landroid/support/v4/os/ResultReceiver;)V
    .locals 4
    .param p1, "itemId"    # Ljava/lang/String;
    .param p2, "connection"    # Landroidx/media3/session/legacy/MediaBrowserServiceCompat$ConnectionRecord;
    .param p3, "receiver"    # Landroid/support/v4/os/ResultReceiver;

    .line 1890
    new-instance v0, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$2;

    invoke-direct {v0, p0, p1, p3}, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$2;-><init>(Landroidx/media3/session/legacy/MediaBrowserServiceCompat;Ljava/lang/Object;Landroid/support/v4/os/ResultReceiver;)V

    .line 1908
    .local v0, "result":Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;, "Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result<Landroidx/media3/session/legacy/MediaBrowserCompat$MediaItem;>;"
    iput-object p2, p0, Landroidx/media3/session/legacy/MediaBrowserServiceCompat;->mCurConnection:Landroidx/media3/session/legacy/MediaBrowserServiceCompat$ConnectionRecord;

    .line 1909
    invoke-virtual {p0, p1, v0}, Landroidx/media3/session/legacy/MediaBrowserServiceCompat;->onLoadItem(Ljava/lang/String;Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;)V

    .line 1910
    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/media3/session/legacy/MediaBrowserServiceCompat;->mCurConnection:Landroidx/media3/session/legacy/MediaBrowserServiceCompat$ConnectionRecord;

    .line 1912
    invoke-virtual {v0}, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;->isDone()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1916
    return-void

    .line 1913
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onLoadItem must call detach() or sendResult() before returning for id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method performSearch(Ljava/lang/String;Landroid/os/Bundle;Landroidx/media3/session/legacy/MediaBrowserServiceCompat$ConnectionRecord;Landroid/support/v4/os/ResultReceiver;)V
    .locals 4
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;
    .param p3, "connection"    # Landroidx/media3/session/legacy/MediaBrowserServiceCompat$ConnectionRecord;
    .param p4, "receiver"    # Landroid/support/v4/os/ResultReceiver;

    .line 1920
    new-instance v0, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$3;

    invoke-direct {v0, p0, p1, p4}, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$3;-><init>(Landroidx/media3/session/legacy/MediaBrowserServiceCompat;Ljava/lang/Object;Landroid/support/v4/os/ResultReceiver;)V

    .line 1941
    .local v0, "result":Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;, "Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result<Ljava/util/List<Landroidx/media3/session/legacy/MediaBrowserCompat$MediaItem;>;>;"
    iput-object p3, p0, Landroidx/media3/session/legacy/MediaBrowserServiceCompat;->mCurConnection:Landroidx/media3/session/legacy/MediaBrowserServiceCompat$ConnectionRecord;

    .line 1942
    invoke-virtual {p0, p1, p2, v0}, Landroidx/media3/session/legacy/MediaBrowserServiceCompat;->onSearch(Ljava/lang/String;Landroid/os/Bundle;Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;)V

    .line 1943
    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/media3/session/legacy/MediaBrowserServiceCompat;->mCurConnection:Landroidx/media3/session/legacy/MediaBrowserServiceCompat$ConnectionRecord;

    .line 1945
    invoke-virtual {v0}, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;->isDone()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1949
    return-void

    .line 1946
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onSearch must call detach() or sendResult() before returning for query="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method removeSubscription(Ljava/lang/String;Landroidx/media3/session/legacy/MediaBrowserServiceCompat$ConnectionRecord;Landroid/os/IBinder;)Z
    .locals 5
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "connection"    # Landroidx/media3/session/legacy/MediaBrowserServiceCompat$ConnectionRecord;
    .param p3, "token"    # Landroid/os/IBinder;

    .line 1774
    const/4 v0, 0x0

    if-nez p3, :cond_1

    .line 1775
    :try_start_0
    iget-object v1, p2, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$ConnectionRecord;->subscriptions:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1794
    :goto_0
    iput-object p2, p0, Landroidx/media3/session/legacy/MediaBrowserServiceCompat;->mCurConnection:Landroidx/media3/session/legacy/MediaBrowserServiceCompat$ConnectionRecord;

    .line 1795
    invoke-virtual {p0, p1}, Landroidx/media3/session/legacy/MediaBrowserServiceCompat;->onUnsubscribe(Ljava/lang/String;)V

    .line 1796
    iput-object v0, p0, Landroidx/media3/session/legacy/MediaBrowserServiceCompat;->mCurConnection:Landroidx/media3/session/legacy/MediaBrowserServiceCompat$ConnectionRecord;

    .line 1775
    return v1

    .line 1777
    :cond_1
    const/4 v1, 0x0

    .line 1778
    .local v1, "removed":Z
    :try_start_1
    iget-object v2, p2, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$ConnectionRecord;->subscriptions:Ljava/util/HashMap;

    .line 1779
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 1780
    .local v2, "callbackList":Ljava/util/List;, "Ljava/util/List<Landroidx/core/util/Pair<Landroid/os/IBinder;Landroid/os/Bundle;>;>;"
    if-eqz v2, :cond_4

    .line 1781
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1782
    .local v3, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroidx/core/util/Pair<Landroid/os/IBinder;Landroid/os/Bundle;>;>;"
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1783
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/core/util/Pair;

    iget-object v4, v4, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    if-ne p3, v4, :cond_2

    .line 1784
    const/4 v1, 0x1

    .line 1785
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 1788
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_4

    .line 1789
    iget-object v4, p2, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$ConnectionRecord;->subscriptions:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1792
    .end local v3    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroidx/core/util/Pair<Landroid/os/IBinder;Landroid/os/Bundle;>;>;"
    :cond_4
    nop

    .line 1794
    iput-object p2, p0, Landroidx/media3/session/legacy/MediaBrowserServiceCompat;->mCurConnection:Landroidx/media3/session/legacy/MediaBrowserServiceCompat$ConnectionRecord;

    .line 1795
    invoke-virtual {p0, p1}, Landroidx/media3/session/legacy/MediaBrowserServiceCompat;->onUnsubscribe(Ljava/lang/String;)V

    .line 1796
    iput-object v0, p0, Landroidx/media3/session/legacy/MediaBrowserServiceCompat;->mCurConnection:Landroidx/media3/session/legacy/MediaBrowserServiceCompat$ConnectionRecord;

    .line 1792
    return v1

    .line 1794
    .end local v1    # "removed":Z
    .end local v2    # "callbackList":Ljava/util/List;, "Ljava/util/List<Landroidx/core/util/Pair<Landroid/os/IBinder;Landroid/os/Bundle;>;>;"
    :catchall_0
    move-exception v1

    iput-object p2, p0, Landroidx/media3/session/legacy/MediaBrowserServiceCompat;->mCurConnection:Landroidx/media3/session/legacy/MediaBrowserServiceCompat$ConnectionRecord;

    .line 1795
    invoke-virtual {p0, p1}, Landroidx/media3/session/legacy/MediaBrowserServiceCompat;->onUnsubscribe(Ljava/lang/String;)V

    .line 1796
    iput-object v0, p0, Landroidx/media3/session/legacy/MediaBrowserServiceCompat;->mCurConnection:Landroidx/media3/session/legacy/MediaBrowserServiceCompat$ConnectionRecord;

    .line 1797
    throw v1
.end method

.method public setSessionToken(Landroidx/media3/session/legacy/MediaSessionCompat$Token;)V
    .locals 2
    .param p1, "token"    # Landroidx/media3/session/legacy/MediaSessionCompat$Token;

    .line 1522
    if-eqz p1, :cond_1

    .line 1525
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaBrowserServiceCompat;->mSession:Landroidx/media3/session/legacy/MediaSessionCompat$Token;

    if-nez v0, :cond_0

    .line 1528
    iput-object p1, p0, Landroidx/media3/session/legacy/MediaBrowserServiceCompat;->mSession:Landroidx/media3/session/legacy/MediaSessionCompat$Token;

    .line 1529
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaBrowserServiceCompat;->mImpl:Landroidx/media3/session/legacy/MediaBrowserServiceCompat$MediaBrowserServiceImpl;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$MediaBrowserServiceImpl;

    invoke-interface {v0, p1}, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$MediaBrowserServiceImpl;->setSessionToken(Landroidx/media3/session/legacy/MediaSessionCompat$Token;)V

    .line 1530
    return-void

    .line 1526
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The session token has already been set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1523
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Session token may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
