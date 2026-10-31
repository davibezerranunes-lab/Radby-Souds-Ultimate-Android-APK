.class public abstract Landroidx/media3/session/legacy/MediaSessionCompat$Callback;
.super Ljava/lang/Object;
.source "MediaSessionCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/session/legacy/MediaSessionCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Callback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/session/legacy/MediaSessionCompat$Callback$CallbackHandler;,
        Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;
    }
.end annotation


# instance fields
.field final mCallbackFwk:Landroid/media/session/MediaSession$Callback;

.field mCallbackHandler:Landroidx/media3/session/legacy/MediaSessionCompat$Callback$CallbackHandler;

.field final mLock:Ljava/lang/Object;

.field private mMediaPlayPausePendingOnHandler:Z

.field mSessionImpl:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1015
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1003
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;->mLock:Ljava/lang/Object;

    .line 1016
    nop

    .line 1017
    new-instance v0, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;

    invoke-direct {v0, p0}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallbackApi21;-><init>(Landroidx/media3/session/legacy/MediaSessionCompat$Callback;)V

    iput-object v0, p0, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;->mCallbackFwk:Landroid/media/session/MediaSession$Callback;

    .line 1021
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;->mSessionImpl:Ljava/lang/ref/WeakReference;

    .line 1022
    return-void
.end method


# virtual methods
.method handleMediaPlayPauseIfPendingOnHandler(Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;Landroid/os/Handler;)V
    .locals 11
    .param p1, "impl"    # Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;
    .param p2, "callbackHandler"    # Landroid/os/Handler;

    .line 1116
    iget-boolean v0, p0, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;->mMediaPlayPausePendingOnHandler:Z

    if-nez v0, :cond_0

    .line 1117
    return-void

    .line 1119
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;->mMediaPlayPausePendingOnHandler:Z

    .line 1120
    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1121
    invoke-interface {p1}, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;->getPlaybackState()Landroidx/media3/session/legacy/PlaybackStateCompat;

    move-result-object v2

    .line 1122
    .local v2, "state":Landroidx/media3/session/legacy/PlaybackStateCompat;
    const-wide/16 v3, 0x0

    if-nez v2, :cond_1

    move-wide v5, v3

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Landroidx/media3/session/legacy/PlaybackStateCompat;->getActions()J

    move-result-wide v5

    .line 1123
    .local v5, "validActions":J
    :goto_0
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroidx/media3/session/legacy/PlaybackStateCompat;->getState()I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_2

    move v7, v1

    goto :goto_1

    :cond_2
    move v7, v0

    .line 1124
    .local v7, "isPlaying":Z
    :goto_1
    const-wide/16 v8, 0x204

    and-long/2addr v8, v5

    cmp-long v8, v8, v3

    if-eqz v8, :cond_3

    move v8, v1

    goto :goto_2

    :cond_3
    move v8, v0

    .line 1127
    .local v8, "canPlay":Z
    :goto_2
    const-wide/16 v9, 0x202

    and-long/2addr v9, v5

    cmp-long v3, v9, v3

    if-eqz v3, :cond_4

    move v0, v1

    .line 1131
    .local v0, "canPause":Z
    :cond_4
    if-eqz v7, :cond_5

    if-eqz v0, :cond_5

    .line 1132
    invoke-virtual {p0}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;->onPause()V

    goto :goto_3

    .line 1133
    :cond_5
    if-nez v7, :cond_6

    if-eqz v8, :cond_6

    .line 1134
    invoke-virtual {p0}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;->onPlay()V

    .line 1136
    :cond_6
    :goto_3
    return-void
.end method

.method public onAddQueueItem(Landroidx/media3/session/legacy/MediaDescriptionCompat;)V
    .locals 0
    .param p1, "description"    # Landroidx/media3/session/legacy/MediaDescriptionCompat;

    .line 1292
    return-void
.end method

.method public onAddQueueItem(Landroidx/media3/session/legacy/MediaDescriptionCompat;I)V
    .locals 0
    .param p1, "description"    # Landroidx/media3/session/legacy/MediaDescriptionCompat;
    .param p2, "index"    # I

    .line 1302
    return-void
.end method

.method public onCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 0
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;
    .param p3, "cb"    # Landroid/os/ResultReceiver;

    .line 1043
    return-void
.end method

.method public onCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 1283
    return-void
.end method

.method public onFastForward()V
    .locals 0

    .line 1193
    return-void
.end method

.method public onMediaButtonEvent(Landroid/content/Intent;)Z
    .locals 14
    .param p1, "mediaButtonEvent"    # Landroid/content/Intent;

    .line 1058
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    .line 1063
    return v2

    .line 1067
    :cond_0
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1068
    :try_start_0
    iget-object v1, p0, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;->mSessionImpl:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;

    .line 1069
    .local v1, "impl":Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;
    iget-object v3, p0, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;->mCallbackHandler:Landroidx/media3/session/legacy/MediaSessionCompat$Callback$CallbackHandler;

    .line 1070
    .local v3, "callbackHandler":Landroid/os/Handler;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1071
    if-eqz v1, :cond_8

    if-nez v3, :cond_1

    goto :goto_3

    .line 1074
    :cond_1
    const-string v0, "android.intent.extra.KEY_EVENT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/view/KeyEvent;

    .line 1075
    .local v0, "keyEvent":Landroid/view/KeyEvent;
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_2

    .line 1078
    :cond_2
    invoke-interface {v1}, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;->getCurrentControllerInfo()Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;

    move-result-object v4

    .line 1079
    .local v4, "remoteUserInfo":Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    .line 1080
    .local v5, "keyCode":I
    sparse-switch v5, :sswitch_data_0

    .line 1109
    invoke-virtual {p0, v1, v3}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;->handleMediaPlayPauseIfPendingOnHandler(Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;Landroid/os/Handler;)V

    .line 1112
    return v2

    .line 1083
    :sswitch_0
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    const/4 v7, 0x1

    if-nez v6, :cond_6

    .line 1084
    iget-boolean v6, p0, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;->mMediaPlayPausePendingOnHandler:Z

    if-eqz v6, :cond_5

    .line 1085
    invoke-virtual {v3, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 1087
    iput-boolean v2, p0, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;->mMediaPlayPausePendingOnHandler:Z

    .line 1088
    invoke-interface {v1}, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;->getPlaybackState()Landroidx/media3/session/legacy/PlaybackStateCompat;

    move-result-object v2

    .line 1089
    .local v2, "state":Landroidx/media3/session/legacy/PlaybackStateCompat;
    const-wide/16 v8, 0x0

    if-nez v2, :cond_3

    move-wide v10, v8

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Landroidx/media3/session/legacy/PlaybackStateCompat;->getActions()J

    move-result-wide v10

    .line 1091
    .local v10, "validActions":J
    :goto_0
    const-wide/16 v12, 0x20

    and-long/2addr v12, v10

    cmp-long v6, v12, v8

    if-eqz v6, :cond_4

    .line 1092
    invoke-virtual {p0}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;->onSkipToNext()V

    .line 1094
    .end local v2    # "state":Landroidx/media3/session/legacy/PlaybackStateCompat;
    .end local v10    # "validActions":J
    :cond_4
    goto :goto_1

    .line 1095
    :cond_5
    iput-boolean v7, p0, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;->mMediaPlayPausePendingOnHandler:Z

    .line 1096
    nop

    .line 1097
    invoke-virtual {v3, v7, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 1099
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v6

    int-to-long v8, v6

    .line 1096
    invoke-virtual {v3, v2, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    .line 1103
    :cond_6
    invoke-virtual {p0, v1, v3}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;->handleMediaPlayPauseIfPendingOnHandler(Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;Landroid/os/Handler;)V

    .line 1105
    :goto_1
    return v7

    .line 1076
    .end local v4    # "remoteUserInfo":Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;
    .end local v5    # "keyCode":I
    :cond_7
    :goto_2
    return v2

    .line 1072
    .end local v0    # "keyEvent":Landroid/view/KeyEvent;
    :cond_8
    :goto_3
    return v2

    .line 1070
    .end local v1    # "impl":Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;
    .end local v3    # "callbackHandler":Landroid/os/Handler;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x4f -> :sswitch_0
        0x55 -> :sswitch_0
    .end sparse-switch
.end method

.method public onPause()V
    .locals 0

    .line 1184
    return-void
.end method

.method public onPlay()V
    .locals 0

    .line 1165
    return-void
.end method

.method public onPlayFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "mediaId"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 1168
    return-void
.end method

.method public onPlayFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 1175
    return-void
.end method

.method public onPlayFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 1178
    return-void
.end method

.method public onPrepare()V
    .locals 0

    .line 1142
    return-void
.end method

.method public onPrepareFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "mediaId"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 1148
    return-void
.end method

.method public onPrepareFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 1156
    return-void
.end method

.method public onPrepareFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 1162
    return-void
.end method

.method public onRemoveQueueItem(Landroidx/media3/session/legacy/MediaDescriptionCompat;)V
    .locals 0
    .param p1, "description"    # Landroidx/media3/session/legacy/MediaDescriptionCompat;

    .line 1312
    return-void
.end method

.method public onRemoveQueueItemAt(I)V
    .locals 0
    .param p1, "index"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1322
    return-void
.end method

.method public onRewind()V
    .locals 0

    .line 1196
    return-void
.end method

.method public onSeekTo(J)V
    .locals 0
    .param p1, "pos"    # J

    .line 1206
    return-void
.end method

.method public onSetCaptioningEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 1242
    return-void
.end method

.method public onSetPlaybackSpeed(F)V
    .locals 0
    .param p1, "speed"    # F

    .line 1235
    return-void
.end method

.method public onSetRating(Landroidx/media3/session/legacy/RatingCompat;)V
    .locals 0
    .param p1, "rating"    # Landroidx/media3/session/legacy/RatingCompat;

    .line 1213
    return-void
.end method

.method public onSetRating(Landroidx/media3/session/legacy/RatingCompat;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "rating"    # Landroidx/media3/session/legacy/RatingCompat;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 1221
    return-void
.end method

.method public onSetRepeatMode(I)V
    .locals 0
    .param p1, "repeatMode"    # I

    .line 1256
    return-void
.end method

.method public onSetShuffleMode(I)V
    .locals 0
    .param p1, "shuffleMode"    # I

    .line 1269
    return-void
.end method

.method public onSkipToNext()V
    .locals 0

    .line 1187
    return-void
.end method

.method public onSkipToPrevious()V
    .locals 0

    .line 1190
    return-void
.end method

.method public onSkipToQueueItem(J)V
    .locals 0
    .param p1, "id"    # J

    .line 1181
    return-void
.end method

.method public onStop()V
    .locals 0

    .line 1199
    return-void
.end method

.method setSessionImpl(Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;Landroid/os/Handler;)V
    .locals 3
    .param p1, "impl"    # Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 1025
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1026
    :try_start_0
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;->mSessionImpl:Ljava/lang/ref/WeakReference;

    .line 1027
    iget-object v1, p0, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;->mCallbackHandler:Landroidx/media3/session/legacy/MediaSessionCompat$Callback$CallbackHandler;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1028
    iget-object v1, p0, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;->mCallbackHandler:Landroidx/media3/session/legacy/MediaSessionCompat$Callback$CallbackHandler;

    invoke-virtual {v1, v2}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$CallbackHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1030
    :cond_0
    nop

    .line 1031
    if-eqz p1, :cond_2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    new-instance v2, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$CallbackHandler;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v2, p0, v1}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$CallbackHandler;-><init>(Landroidx/media3/session/legacy/MediaSessionCompat$Callback;Landroid/os/Looper;)V

    :cond_2
    :goto_0
    iput-object v2, p0, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;->mCallbackHandler:Landroidx/media3/session/legacy/MediaSessionCompat$Callback$CallbackHandler;

    .line 1032
    monitor-exit v0

    .line 1033
    return-void

    .line 1032
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
