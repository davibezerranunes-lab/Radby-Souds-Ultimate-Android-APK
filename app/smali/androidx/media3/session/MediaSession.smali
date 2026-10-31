.class public Landroidx/media3/session/MediaSession;
.super Ljava/lang/Object;
.source "MediaSession.java"


# annotations
.annotation runtime Lcom/google/errorprone/annotations/DoNotMock;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/session/MediaSession$Callback;,
        Landroidx/media3/session/MediaSession$Api31;,
        Landroidx/media3/session/MediaSession$ControllerInfo;,
        Landroidx/media3/session/MediaSession$Listener;,
        Landroidx/media3/session/MediaSession$BuilderBase;,
        Landroidx/media3/session/MediaSession$ControllerCb;,
        Landroidx/media3/session/MediaSession$ConnectionResult;,
        Landroidx/media3/session/MediaSession$MediaItemsWithStartPosition;,
        Landroidx/media3/session/MediaSession$Builder;
    }
.end annotation


# static fields
.field private static final SESSION_ID_TO_SESSION_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/media3/session/MediaSession;",
            ">;"
        }
    .end annotation
.end field

.field private static final STATIC_LOCK:Ljava/lang/Object;


# instance fields
.field private final impl:Landroidx/media3/session/MediaSessionImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 235
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/media3/session/MediaSession;->STATIC_LOCK:Ljava/lang/Object;

    .line 240
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroidx/media3/session/MediaSession;->SESSION_ID_TO_SESSION_MAP:Ljava/util/HashMap;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroidx/media3/common/Player;Landroid/app/PendingIntent;Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;Landroidx/media3/session/MediaSession$Callback;Landroid/os/Bundle;Landroid/os/Bundle;Landroidx/media3/common/util/BitmapLoader;ZZI)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "player"    # Landroidx/media3/common/Player;
    .param p4, "sessionActivity"    # Landroid/app/PendingIntent;
    .param p8, "callback"    # Landroidx/media3/session/MediaSession$Callback;
    .param p9, "tokenExtras"    # Landroid/os/Bundle;
    .param p10, "sessionExtras"    # Landroid/os/Bundle;
    .param p11, "bitmapLoader"    # Landroidx/media3/common/util/BitmapLoader;
    .param p12, "playIfSuppressed"    # Z
    .param p13, "isPeriodicPositionUpdateEnabled"    # Z
    .param p14, "libraryErrorReplicationMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Landroidx/media3/common/Player;",
            "Landroid/app/PendingIntent;",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/session/CommandButton;",
            ">;",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/session/CommandButton;",
            ">;",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/session/CommandButton;",
            ">;",
            "Landroidx/media3/session/MediaSession$Callback;",
            "Landroid/os/Bundle;",
            "Landroid/os/Bundle;",
            "Landroidx/media3/common/util/BitmapLoader;",
            "ZZI)V"
        }
    .end annotation

    .line 729
    .local p5, "customLayout":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Landroidx/media3/session/CommandButton;>;"
    .local p6, "mediaButtonPreferences":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Landroidx/media3/session/CommandButton;>;"
    .local p7, "commandButtonsForMediaItems":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Landroidx/media3/session/CommandButton;>;"
    move-object v1, p0

    move-object v2, p2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 730
    sget-object v3, Landroidx/media3/session/MediaSession;->STATIC_LOCK:Ljava/lang/Object;

    monitor-enter v3

    .line 731
    :try_start_0
    sget-object v0, Landroidx/media3/session/MediaSession;->SESSION_ID_TO_SESSION_MAP:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 734
    sget-object v0, Landroidx/media3/session/MediaSession;->SESSION_ID_TO_SESSION_MAP:Ljava/util/HashMap;

    invoke-virtual {v0, p2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 735
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 736
    nop

    .line 737
    invoke-virtual/range {p0 .. p14}, Landroidx/media3/session/MediaSession;->createImpl(Landroid/content/Context;Ljava/lang/String;Landroidx/media3/common/Player;Landroid/app/PendingIntent;Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;Landroidx/media3/session/MediaSession$Callback;Landroid/os/Bundle;Landroid/os/Bundle;Landroidx/media3/common/util/BitmapLoader;ZZI)Landroidx/media3/session/MediaSessionImpl;

    move-result-object v0

    iput-object v0, v1, Landroidx/media3/session/MediaSession;->impl:Landroidx/media3/session/MediaSessionImpl;

    .line 752
    return-void

    .line 732
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Session ID must be unique. ID="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "id":Ljava/lang/String;
    .end local p3    # "player":Landroidx/media3/common/Player;
    .end local p4    # "sessionActivity":Landroid/app/PendingIntent;
    .end local p5    # "customLayout":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Landroidx/media3/session/CommandButton;>;"
    .end local p6    # "mediaButtonPreferences":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Landroidx/media3/session/CommandButton;>;"
    .end local p7    # "commandButtonsForMediaItems":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Landroidx/media3/session/CommandButton;>;"
    .end local p8    # "callback":Landroidx/media3/session/MediaSession$Callback;
    .end local p9    # "tokenExtras":Landroid/os/Bundle;
    .end local p10    # "sessionExtras":Landroid/os/Bundle;
    .end local p11    # "bitmapLoader":Landroidx/media3/common/util/BitmapLoader;
    .end local p12    # "playIfSuppressed":Z
    .end local p13    # "isPeriodicPositionUpdateEnabled":Z
    .end local p14    # "libraryErrorReplicationMode":I
    throw v0

    .line 735
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "id":Ljava/lang/String;
    .restart local p3    # "player":Landroidx/media3/common/Player;
    .restart local p4    # "sessionActivity":Landroid/app/PendingIntent;
    .restart local p5    # "customLayout":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Landroidx/media3/session/CommandButton;>;"
    .restart local p6    # "mediaButtonPreferences":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Landroidx/media3/session/CommandButton;>;"
    .restart local p7    # "commandButtonsForMediaItems":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Landroidx/media3/session/CommandButton;>;"
    .restart local p8    # "callback":Landroidx/media3/session/MediaSession$Callback;
    .restart local p9    # "tokenExtras":Landroid/os/Bundle;
    .restart local p10    # "sessionExtras":Landroid/os/Bundle;
    .restart local p11    # "bitmapLoader":Landroidx/media3/common/util/BitmapLoader;
    .restart local p12    # "playIfSuppressed":Z
    .restart local p13    # "isPeriodicPositionUpdateEnabled":Z
    .restart local p14    # "libraryErrorReplicationMode":I
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static getSession(Landroid/net/Uri;)Landroidx/media3/session/MediaSession;
    .locals 4
    .param p0, "sessionUri"    # Landroid/net/Uri;

    .line 792
    sget-object v0, Landroidx/media3/session/MediaSession;->STATIC_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 793
    :try_start_0
    sget-object v1, Landroidx/media3/session/MediaSession;->SESSION_ID_TO_SESSION_MAP:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/session/MediaSession;

    .line 794
    .local v2, "session":Landroidx/media3/session/MediaSession;
    invoke-virtual {v2}, Landroidx/media3/session/MediaSession;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3, p0}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 795
    monitor-exit v0

    return-object v2

    .line 797
    .end local v2    # "session":Landroidx/media3/session/MediaSession;
    :cond_0
    goto :goto_0

    .line 798
    :cond_1
    monitor-exit v0

    .line 799
    const/4 v0, 0x0

    return-object v0

    .line 798
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public final broadcastCustomCommand(Landroidx/media3/session/SessionCommand;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "command"    # Landroidx/media3/session/SessionCommand;
    .param p2, "args"    # Landroid/os/Bundle;

    .line 1208
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1209
    invoke-static {p2}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1210
    iget v0, p1, Landroidx/media3/session/SessionCommand;->commandCode:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "command must be a custom command"

    invoke-static {v0, v1}, Landroidx/media3/common/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 1213
    iget-object v0, p0, Landroidx/media3/session/MediaSession;->impl:Landroidx/media3/session/MediaSessionImpl;

    invoke-virtual {v0, p1, p2}, Landroidx/media3/session/MediaSessionImpl;->broadcastCustomCommand(Landroidx/media3/session/SessionCommand;Landroid/os/Bundle;)V

    .line 1214
    return-void
.end method

.method final clearListener()V
    .locals 1

    .line 1416
    iget-object v0, p0, Landroidx/media3/session/MediaSession;->impl:Landroidx/media3/session/MediaSessionImpl;

    invoke-virtual {v0}, Landroidx/media3/session/MediaSessionImpl;->clearMediaSessionListener()V

    .line 1417
    return-void
.end method

.method createImpl(Landroid/content/Context;Ljava/lang/String;Landroidx/media3/common/Player;Landroid/app/PendingIntent;Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;Landroidx/media3/session/MediaSession$Callback;Landroid/os/Bundle;Landroid/os/Bundle;Landroidx/media3/common/util/BitmapLoader;ZZI)Landroidx/media3/session/MediaSessionImpl;
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "player"    # Landroidx/media3/common/Player;
    .param p4, "sessionActivity"    # Landroid/app/PendingIntent;
    .param p8, "callback"    # Landroidx/media3/session/MediaSession$Callback;
    .param p9, "tokenExtras"    # Landroid/os/Bundle;
    .param p10, "sessionExtras"    # Landroid/os/Bundle;
    .param p11, "bitmapLoader"    # Landroidx/media3/common/util/BitmapLoader;
    .param p12, "playIfSuppressed"    # Z
    .param p13, "isPeriodicPositionUpdateEnabled"    # Z
    .param p14, "libraryErrorReplicationMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Landroidx/media3/common/Player;",
            "Landroid/app/PendingIntent;",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/session/CommandButton;",
            ">;",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/session/CommandButton;",
            ">;",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/session/CommandButton;",
            ">;",
            "Landroidx/media3/session/MediaSession$Callback;",
            "Landroid/os/Bundle;",
            "Landroid/os/Bundle;",
            "Landroidx/media3/common/util/BitmapLoader;",
            "ZZI)",
            "Landroidx/media3/session/MediaSessionImpl;"
        }
    .end annotation

    .line 769
    .local p5, "customLayout":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Landroidx/media3/session/CommandButton;>;"
    .local p6, "mediaButtonPreferences":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Landroidx/media3/session/CommandButton;>;"
    .local p7, "commandButtonsForMediaItems":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Landroidx/media3/session/CommandButton;>;"
    new-instance v15, Landroidx/media3/session/MediaSessionImpl;

    move-object v0, v15

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    invoke-direct/range {v0 .. v14}, Landroidx/media3/session/MediaSessionImpl;-><init>(Landroidx/media3/session/MediaSession;Landroid/content/Context;Ljava/lang/String;Landroidx/media3/common/Player;Landroid/app/PendingIntent;Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;Landroidx/media3/session/MediaSession$Callback;Landroid/os/Bundle;Landroid/os/Bundle;Landroidx/media3/common/util/BitmapLoader;ZZ)V

    return-object v15
.end method

.method public final getBitmapLoader()Landroidx/media3/common/util/BitmapLoader;
    .locals 1

    .line 1267
    iget-object v0, p0, Landroidx/media3/session/MediaSession;->impl:Landroidx/media3/session/MediaSessionImpl;

    invoke-virtual {v0}, Landroidx/media3/session/MediaSessionImpl;->getBitmapLoader()Landroidx/media3/common/util/BitmapLoader;

    move-result-object v0

    return-object v0
.end method

.method public final getConnectedControllers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/media3/session/MediaSession$ControllerInfo;",
            ">;"
        }
    .end annotation

    .line 912
    iget-object v0, p0, Landroidx/media3/session/MediaSession;->impl:Landroidx/media3/session/MediaSessionImpl;

    invoke-virtual {v0}, Landroidx/media3/session/MediaSessionImpl;->getConnectedControllers()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getControllerForCurrentRequest()Landroidx/media3/session/MediaSession$ControllerInfo;
    .locals 1

    .line 934
    iget-object v0, p0, Landroidx/media3/session/MediaSession;->impl:Landroidx/media3/session/MediaSessionImpl;

    invoke-virtual {v0}, Landroidx/media3/session/MediaSessionImpl;->getControllerForCurrentRequest()Landroidx/media3/session/MediaSession$ControllerInfo;

    move-result-object v0

    return-object v0
.end method

.method public getCustomLayout()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/session/CommandButton;",
            ">;"
        }
    .end annotation

    .line 1181
    iget-object v0, p0, Landroidx/media3/session/MediaSession;->impl:Landroidx/media3/session/MediaSessionImpl;

    invoke-virtual {v0}, Landroidx/media3/session/MediaSessionImpl;->getCustomLayout()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .line 902
    iget-object v0, p0, Landroidx/media3/session/MediaSession;->impl:Landroidx/media3/session/MediaSessionImpl;

    invoke-virtual {v0}, Landroidx/media3/session/MediaSessionImpl;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getImpl()Landroidx/media3/session/MediaSessionImpl;
    .locals 1

    .line 787
    iget-object v0, p0, Landroidx/media3/session/MediaSession;->impl:Landroidx/media3/session/MediaSessionImpl;

    return-object v0
.end method

.method final getLegacyBrowserServiceBinder()Landroid/os/IBinder;
    .locals 1

    .line 1386
    iget-object v0, p0, Landroidx/media3/session/MediaSession;->impl:Landroidx/media3/session/MediaSessionImpl;

    invoke-virtual {v0}, Landroidx/media3/session/MediaSessionImpl;->getLegacyBrowserServiceBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public getMediaButtonPreferences()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/session/CommandButton;",
            ">;"
        }
    .end annotation

    .line 1193
    iget-object v0, p0, Landroidx/media3/session/MediaSession;->impl:Landroidx/media3/session/MediaSessionImpl;

    invoke-virtual {v0}, Landroidx/media3/session/MediaSessionImpl;->getMediaButtonPreferences()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public getMediaNotificationControllerInfo()Landroidx/media3/session/MediaSession$ControllerInfo;
    .locals 1

    .line 981
    iget-object v0, p0, Landroidx/media3/session/MediaSession;->impl:Landroidx/media3/session/MediaSessionImpl;

    invoke-virtual {v0}, Landroidx/media3/session/MediaSessionImpl;->getMediaNotificationControllerInfo()Landroidx/media3/session/MediaSession$ControllerInfo;

    move-result-object v0

    return-object v0
.end method

.method public final getPlatformToken()Landroid/media/session/MediaSession$Token;
    .locals 1

    .line 1365
    iget-object v0, p0, Landroidx/media3/session/MediaSession;->impl:Landroidx/media3/session/MediaSessionImpl;

    .line 1366
    invoke-virtual {v0}, Landroidx/media3/session/MediaSessionImpl;->getSessionCompat()Landroidx/media3/session/legacy/MediaSessionCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/session/legacy/MediaSessionCompat;->getSessionToken()Landroidx/media3/session/legacy/MediaSessionCompat$Token;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/session/legacy/MediaSessionCompat$Token;->getToken()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession$Token;

    .line 1365
    return-object v0
.end method

.method public final getPlayer()Landroidx/media3/common/Player;
    .locals 1

    .line 897
    iget-object v0, p0, Landroidx/media3/session/MediaSession;->impl:Landroidx/media3/session/MediaSessionImpl;

    invoke-virtual {v0}, Landroidx/media3/session/MediaSessionImpl;->getPlayerWrapper()Landroidx/media3/session/PlayerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/session/PlayerWrapper;->getWrappedPlayer()Landroidx/media3/common/Player;

    move-result-object v0

    return-object v0
.end method

.method public final getSessionActivity()Landroid/app/PendingIntent;
    .locals 1

    .line 810
    iget-object v0, p0, Landroidx/media3/session/MediaSession;->impl:Landroidx/media3/session/MediaSessionImpl;

    invoke-virtual {v0}, Landroidx/media3/session/MediaSessionImpl;->getSessionActivity()Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method final getSessionCompat()Landroidx/media3/session/legacy/MediaSessionCompat;
    .locals 1

    .line 1341
    iget-object v0, p0, Landroidx/media3/session/MediaSession;->impl:Landroidx/media3/session/MediaSessionImpl;

    invoke-virtual {v0}, Landroidx/media3/session/MediaSessionImpl;->getSessionCompat()Landroidx/media3/session/legacy/MediaSessionCompat;

    move-result-object v0

    return-object v0
.end method

.method public final getSessionCompatToken()Landroid/support/v4/media/session/MediaSessionCompat$Token;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1353
    iget-object v0, p0, Landroidx/media3/session/MediaSession;->impl:Landroidx/media3/session/MediaSessionImpl;

    .line 1354
    invoke-virtual {v0}, Landroidx/media3/session/MediaSessionImpl;->getSessionCompat()Landroidx/media3/session/legacy/MediaSessionCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/session/legacy/MediaSessionCompat;->getSessionToken()Landroidx/media3/session/legacy/MediaSessionCompat$Token;

    move-result-object v0

    sget-object v1, Landroid/support/v4/media/session/MediaSessionCompat$Token;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1353
    invoke-static {v0, v1}, Landroidx/media3/session/legacy/LegacyParcelableUtil;->convert(Landroid/os/Parcelable;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/MediaSessionCompat$Token;

    return-object v0
.end method

.method public getSessionExtras()Landroid/os/Bundle;
    .locals 1

    .line 1225
    iget-object v0, p0, Landroidx/media3/session/MediaSession;->impl:Landroidx/media3/session/MediaSessionImpl;

    invoke-virtual {v0}, Landroidx/media3/session/MediaSessionImpl;->getSessionExtras()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public final getShowPlayButtonIfPlaybackIsSuppressed()Z
    .locals 1

    .line 1276
    iget-object v0, p0, Landroidx/media3/session/MediaSession;->impl:Landroidx/media3/session/MediaSessionImpl;

    invoke-virtual {v0}, Landroidx/media3/session/MediaSessionImpl;->shouldPlayIfSuppressed()Z

    move-result v0

    return v0
.end method

.method public final getToken()Landroidx/media3/session/SessionToken;
    .locals 1

    .line 907
    iget-object v0, p0, Landroidx/media3/session/MediaSession;->impl:Landroidx/media3/session/MediaSessionImpl;

    invoke-virtual {v0}, Landroidx/media3/session/MediaSessionImpl;->getToken()Landroidx/media3/session/SessionToken;

    move-result-object v0

    return-object v0
.end method

.method final getUri()Landroid/net/Uri;
    .locals 1

    .line 1421
    iget-object v0, p0, Landroidx/media3/session/MediaSession;->impl:Landroidx/media3/session/MediaSessionImpl;

    invoke-virtual {v0}, Landroidx/media3/session/MediaSessionImpl;->getUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method final handleControllerConnectionFromService(Landroidx/media3/session/IMediaController;Landroidx/media3/session/MediaSession$ControllerInfo;)V
    .locals 1
    .param p1, "controller"    # Landroidx/media3/session/IMediaController;
    .param p2, "controllerInfo"    # Landroidx/media3/session/MediaSession$ControllerInfo;

    .line 1381
    iget-object v0, p0, Landroidx/media3/session/MediaSession;->impl:Landroidx/media3/session/MediaSessionImpl;

    invoke-virtual {v0, p1, p2}, Landroidx/media3/session/MediaSessionImpl;->connectFromService(Landroidx/media3/session/IMediaController;Landroidx/media3/session/MediaSession$ControllerInfo;)V

    .line 1382
    return-void
.end method

.method public final isAutoCompanionController(Landroidx/media3/session/MediaSession$ControllerInfo;)Z
    .locals 1
    .param p1, "controllerInfo"    # Landroidx/media3/session/MediaSession$ControllerInfo;

    .line 1008
    iget-object v0, p0, Landroidx/media3/session/MediaSession;->impl:Landroidx/media3/session/MediaSessionImpl;

    invoke-virtual {v0, p1}, Landroidx/media3/session/MediaSessionImpl;->isAutoCompanionController(Landroidx/media3/session/MediaSession$ControllerInfo;)Z

    move-result v0

    return v0
.end method

.method public final isAutomotiveController(Landroidx/media3/session/MediaSession$ControllerInfo;)Z
    .locals 1
    .param p1, "controllerInfo"    # Landroidx/media3/session/MediaSession$ControllerInfo;

    .line 994
    iget-object v0, p0, Landroidx/media3/session/MediaSession;->impl:Landroidx/media3/session/MediaSessionImpl;

    invoke-virtual {v0, p1}, Landroidx/media3/session/MediaSessionImpl;->isAutomotiveController(Landroidx/media3/session/MediaSession$ControllerInfo;)Z

    move-result v0

    return v0
.end method

.method public isMediaNotificationController(Landroidx/media3/session/MediaSession$ControllerInfo;)Z
    .locals 1
    .param p1, "controllerInfo"    # Landroidx/media3/session/MediaSession$ControllerInfo;

    .line 947
    iget-object v0, p0, Landroidx/media3/session/MediaSession;->impl:Landroidx/media3/session/MediaSessionImpl;

    invoke-virtual {v0, p1}, Landroidx/media3/session/MediaSessionImpl;->isMediaNotificationController(Landroidx/media3/session/MediaSession$ControllerInfo;)Z

    move-result v0

    return v0
.end method

.method final isReleased()Z
    .locals 1

    .line 892
    iget-object v0, p0, Landroidx/media3/session/MediaSession;->impl:Landroidx/media3/session/MediaSessionImpl;

    invoke-virtual {v0}, Landroidx/media3/session/MediaSessionImpl;->isReleased()Z

    move-result v0

    return v0
.end method

.method public final release()V
    .locals 3

    .line 882
    :try_start_0
    sget-object v0, Landroidx/media3/session/MediaSession;->STATIC_LOCK:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 883
    :try_start_1
    sget-object v1, Landroidx/media3/session/MediaSession;->SESSION_ID_TO_SESSION_MAP:Ljava/util/HashMap;

    iget-object v2, p0, Landroidx/media3/session/MediaSession;->impl:Landroidx/media3/session/MediaSessionImpl;

    invoke-virtual {v2}, Landroidx/media3/session/MediaSessionImpl;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 884
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 885
    :try_start_2
    iget-object v0, p0, Landroidx/media3/session/MediaSession;->impl:Landroidx/media3/session/MediaSessionImpl;

    invoke-virtual {v0}, Landroidx/media3/session/MediaSessionImpl;->release()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 888
    goto :goto_0

    .line 884
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 886
    :catch_0
    move-exception v0

    .line 889
    :goto_0
    return-void
.end method

.method public final sendCustomCommand(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/SessionCommand;Landroid/os/Bundle;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .param p1, "controller"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p2, "command"    # Landroidx/media3/session/SessionCommand;
    .param p3, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/session/MediaSession$ControllerInfo;",
            "Landroidx/media3/session/SessionCommand;",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media3/session/SessionResult;",
            ">;"
        }
    .end annotation

    .line 1298
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1299
    invoke-static {p2}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1300
    invoke-static {p3}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1301
    iget v0, p2, Landroidx/media3/session/SessionCommand;->commandCode:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "command must be a custom command"

    invoke-static {v0, v1}, Landroidx/media3/common/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 1304
    iget-object v0, p0, Landroidx/media3/session/MediaSession;->impl:Landroidx/media3/session/MediaSessionImpl;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/media3/session/MediaSessionImpl;->sendCustomCommand(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/SessionCommand;Landroid/os/Bundle;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public final sendError(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/SessionError;)V
    .locals 1
    .param p1, "controllerInfo"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p2, "sessionError"    # Landroidx/media3/session/SessionError;

    .line 1324
    iget-object v0, p0, Landroidx/media3/session/MediaSession;->impl:Landroidx/media3/session/MediaSessionImpl;

    invoke-virtual {v0, p1, p2}, Landroidx/media3/session/MediaSessionImpl;->sendError(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/SessionError;)V

    .line 1325
    return-void
.end method

.method public final sendError(Landroidx/media3/session/SessionError;)V
    .locals 1
    .param p1, "sessionError"    # Landroidx/media3/session/SessionError;

    .line 1337
    iget-object v0, p0, Landroidx/media3/session/MediaSession;->impl:Landroidx/media3/session/MediaSessionImpl;

    invoke-virtual {v0, p1}, Landroidx/media3/session/MediaSessionImpl;->sendError(Landroidx/media3/session/SessionError;)V

    .line 1338
    return-void
.end method

.method public final setAvailableCommands(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/SessionCommands;Landroidx/media3/common/Player$Commands;)V
    .locals 1
    .param p1, "controller"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p2, "sessionCommands"    # Landroidx/media3/session/SessionCommands;
    .param p3, "playerCommands"    # Landroidx/media3/common/Player$Commands;

    .line 1162
    const-string v0, "controller must not be null"

    invoke-static {p1, v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1163
    const-string/jumbo v0, "sessionCommands must not be null"

    invoke-static {p2, v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1164
    const-string/jumbo v0, "playerCommands must not be null"

    invoke-static {p3, v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1165
    iget-object v0, p0, Landroidx/media3/session/MediaSession;->impl:Landroidx/media3/session/MediaSessionImpl;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/media3/session/MediaSessionImpl;->setAvailableCommands(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/SessionCommands;Landroidx/media3/common/Player$Commands;)V

    .line 1166
    return-void
.end method

.method public final setCustomLayout(Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/util/List;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .param p1, "controller"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/session/MediaSession$ControllerInfo;",
            "Ljava/util/List<",
            "Landroidx/media3/session/CommandButton;",
            ">;)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media3/session/SessionResult;",
            ">;"
        }
    .end annotation

    .line 1044
    .local p2, "layout":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/session/CommandButton;>;"
    const-string v0, "controller must not be null"

    invoke-static {p1, v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1045
    const-string v0, "layout must not be null"

    invoke-static {p2, v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1046
    iget-object v0, p0, Landroidx/media3/session/MediaSession;->impl:Landroidx/media3/session/MediaSessionImpl;

    invoke-static {p2}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroidx/media3/session/MediaSessionImpl;->setCustomLayout(Landroidx/media3/session/MediaSession$ControllerInfo;Lcom/google/common/collect/ImmutableList;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public final setCustomLayout(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/session/CommandButton;",
            ">;)V"
        }
    .end annotation

    .line 1075
    .local p1, "layout":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/session/CommandButton;>;"
    const-string v0, "layout must not be null"

    invoke-static {p1, v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1076
    iget-object v0, p0, Landroidx/media3/session/MediaSession;->impl:Landroidx/media3/session/MediaSessionImpl;

    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/media3/session/MediaSessionImpl;->setCustomLayout(Lcom/google/common/collect/ImmutableList;)V

    .line 1077
    return-void
.end method

.method final setLegacyControllerConnectionTimeoutMs(J)V
    .locals 1
    .param p1, "timeoutMs"    # J

    .line 1375
    iget-object v0, p0, Landroidx/media3/session/MediaSession;->impl:Landroidx/media3/session/MediaSessionImpl;

    invoke-virtual {v0, p1, p2}, Landroidx/media3/session/MediaSessionImpl;->setLegacyControllerConnectionTimeoutMs(J)V

    .line 1376
    return-void
.end method

.method final setListener(Landroidx/media3/session/MediaSession$Listener;)V
    .locals 1
    .param p1, "listener"    # Landroidx/media3/session/MediaSession$Listener;

    .line 1407
    iget-object v0, p0, Landroidx/media3/session/MediaSession;->impl:Landroidx/media3/session/MediaSessionImpl;

    invoke-virtual {v0, p1}, Landroidx/media3/session/MediaSessionImpl;->setMediaSessionListener(Landroidx/media3/session/MediaSession$Listener;)V

    .line 1408
    return-void
.end method

.method public final setMediaButtonPreferences(Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/util/List;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .param p1, "controller"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/session/MediaSession$ControllerInfo;",
            "Ljava/util/List<",
            "Landroidx/media3/session/CommandButton;",
            ">;)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media3/session/SessionResult;",
            ">;"
        }
    .end annotation

    .line 1110
    .local p2, "mediaButtonPreferences":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/session/CommandButton;>;"
    const-string v0, "controller must not be null"

    invoke-static {p1, v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1111
    const-string v0, "media button preferences must not be null"

    invoke-static {p2, v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1112
    iget-object v0, p0, Landroidx/media3/session/MediaSession;->impl:Landroidx/media3/session/MediaSessionImpl;

    invoke-static {p2}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroidx/media3/session/MediaSessionImpl;->setMediaButtonPreferences(Landroidx/media3/session/MediaSession$ControllerInfo;Lcom/google/common/collect/ImmutableList;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public final setMediaButtonPreferences(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/session/CommandButton;",
            ">;)V"
        }
    .end annotation

    .line 1140
    .local p1, "mediaButtonPreferences":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/session/CommandButton;>;"
    const-string v0, "media button preferences must not be null"

    invoke-static {p1, v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1141
    iget-object v0, p0, Landroidx/media3/session/MediaSession;->impl:Landroidx/media3/session/MediaSessionImpl;

    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/media3/session/MediaSessionImpl;->setMediaButtonPreferences(Lcom/google/common/collect/ImmutableList;)V

    .line 1142
    return-void
.end method

.method public final setPlayer(Landroidx/media3/common/Player;)V
    .locals 4
    .param p1, "player"    # Landroidx/media3/common/Player;

    .line 863
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 864
    invoke-interface {p1}, Landroidx/media3/common/Player;->canAdvertiseSession()Z

    move-result v0

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    .line 865
    invoke-interface {p1}, Landroidx/media3/common/Player;->getApplicationLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/media3/session/MediaSession;->getPlayer()Landroidx/media3/common/Player;

    move-result-object v1

    invoke-interface {v1}, Landroidx/media3/common/Player;->getApplicationLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    .line 866
    invoke-interface {p1}, Landroidx/media3/common/Player;->getApplicationLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-static {v2}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 867
    iget-object v0, p0, Landroidx/media3/session/MediaSession;->impl:Landroidx/media3/session/MediaSessionImpl;

    invoke-virtual {v0, p1}, Landroidx/media3/session/MediaSessionImpl;->setPlayer(Landroidx/media3/common/Player;)V

    .line 868
    return-void
.end method

.method public final setSessionActivity(Landroid/app/PendingIntent;)V
    .locals 2
    .param p1, "activityPendingIntent"    # Landroid/app/PendingIntent;

    .line 823
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    .line 824
    invoke-static {p1}, Landroidx/media3/session/MediaSession$Api31;->isActivity(Landroid/app/PendingIntent;)Z

    move-result v0

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    .line 826
    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaSession;->impl:Landroidx/media3/session/MediaSessionImpl;

    invoke-virtual {v0, p1}, Landroidx/media3/session/MediaSessionImpl;->setSessionActivity(Landroid/app/PendingIntent;)V

    .line 827
    return-void
.end method

.method public final setSessionActivity(Landroidx/media3/session/MediaSession$ControllerInfo;Landroid/app/PendingIntent;)V
    .locals 2
    .param p1, "controller"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p2, "activityPendingIntent"    # Landroid/app/PendingIntent;

    .line 847
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    .line 848
    invoke-static {p2}, Landroidx/media3/session/MediaSession$Api31;->isActivity(Landroid/app/PendingIntent;)Z

    move-result v0

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    .line 850
    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaSession;->impl:Landroidx/media3/session/MediaSessionImpl;

    invoke-virtual {v0, p1, p2}, Landroidx/media3/session/MediaSessionImpl;->setSessionActivity(Landroidx/media3/session/MediaSession$ControllerInfo;Landroid/app/PendingIntent;)V

    .line 851
    return-void
.end method

.method public final setSessionExtras(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "sessionExtras"    # Landroid/os/Bundle;

    .line 1240
    iget-object v0, p0, Landroidx/media3/session/MediaSession;->impl:Landroidx/media3/session/MediaSessionImpl;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroidx/media3/session/MediaSessionImpl;->setSessionExtras(Landroid/os/Bundle;)V

    .line 1241
    return-void
.end method

.method public final setSessionExtras(Landroidx/media3/session/MediaSession$ControllerInfo;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "controller"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p2, "sessionExtras"    # Landroid/os/Bundle;

    .line 1260
    const-string v0, "controller must not be null"

    invoke-static {p1, v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1261
    iget-object v0, p0, Landroidx/media3/session/MediaSession;->impl:Landroidx/media3/session/MediaSessionImpl;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1, p2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v0, p1, v1}, Landroidx/media3/session/MediaSessionImpl;->setSessionExtras(Landroidx/media3/session/MediaSession$ControllerInfo;Landroid/os/Bundle;)V

    .line 1262
    return-void
.end method

.method final setSessionPositionUpdateDelayMs(J)V
    .locals 1
    .param p1, "updateDelayMs"    # J

    .line 1398
    iget-object v0, p0, Landroidx/media3/session/MediaSession;->impl:Landroidx/media3/session/MediaSessionImpl;

    invoke-virtual {v0, p1, p2}, Landroidx/media3/session/MediaSessionImpl;->setSessionPositionUpdateDelayMsOnHandler(J)V

    .line 1399
    return-void
.end method
