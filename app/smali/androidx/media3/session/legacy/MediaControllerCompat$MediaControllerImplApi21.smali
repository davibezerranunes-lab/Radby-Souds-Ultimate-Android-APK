.class Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImplApi21;
.super Ljava/lang/Object;
.source "MediaControllerCompat.java"

# interfaces
.implements Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/session/legacy/MediaControllerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MediaControllerImplApi21"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImplApi21$ExtraCallback;,
        Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver;
    }
.end annotation


# instance fields
.field private mCallbackMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroidx/media3/session/legacy/MediaControllerCompat$Callback;",
            "Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImplApi21$ExtraCallback;",
            ">;"
        }
    .end annotation
.end field

.field protected final mControllerFwk:Landroid/media/session/MediaController;

.field final mLock:Ljava/lang/Object;

.field private final mPendingCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media3/session/legacy/MediaControllerCompat$Callback;",
            ">;"
        }
    .end annotation
.end field

.field protected mSessionInfo:Landroid/os/Bundle;

.field final mSessionToken:Landroidx/media3/session/legacy/MediaSessionCompat$Token;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroidx/media3/session/legacy/MediaSessionCompat$Token;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sessionToken"    # Landroidx/media3/session/legacy/MediaSessionCompat$Token;

    .line 1994
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1981
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImplApi21;->mLock:Ljava/lang/Object;

    .line 1983
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImplApi21;->mPendingCallbacks:Ljava/util/List;

    .line 1986
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImplApi21;->mCallbackMap:Ljava/util/HashMap;

    .line 1995
    iput-object p2, p0, Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImplApi21;->mSessionToken:Landroidx/media3/session/legacy/MediaSessionCompat$Token;

    .line 1996
    new-instance v0, Landroid/media/session/MediaController;

    iget-object v1, p0, Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImplApi21;->mSessionToken:Landroidx/media3/session/legacy/MediaSessionCompat$Token;

    .line 1997
    invoke-virtual {v1}, Landroidx/media3/session/legacy/MediaSessionCompat$Token;->getToken()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/session/MediaSession$Token;

    invoke-direct {v0, p1, v1}, Landroid/media/session/MediaController;-><init>(Landroid/content/Context;Landroid/media/session/MediaSession$Token;)V

    iput-object v0, p0, Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImplApi21;->mControllerFwk:Landroid/media/session/MediaController;

    .line 1998
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImplApi21;->mSessionToken:Landroidx/media3/session/legacy/MediaSessionCompat$Token;

    invoke-virtual {v0}, Landroidx/media3/session/legacy/MediaSessionCompat$Token;->getExtraBinder()Landroidx/media3/session/legacy/IMediaSession;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1999
    invoke-direct {p0}, Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImplApi21;->requestExtraBinder()V

    .line 2001
    :cond_0
    return-void
.end method

.method static getMediaController(Landroid/app/Activity;)Landroidx/media3/session/legacy/MediaControllerCompat;
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;

    .line 2319
    invoke-virtual {p0}, Landroid/app/Activity;->getMediaController()Landroid/media/session/MediaController;

    move-result-object v0

    .line 2320
    .local v0, "controllerFwk":Landroid/media/session/MediaController;
    if-nez v0, :cond_0

    .line 2321
    const/4 v1, 0x0

    return-object v1

    .line 2323
    :cond_0
    invoke-virtual {v0}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v1

    .line 2324
    .local v1, "sessionTokenFwk":Landroid/media/session/MediaSession$Token;
    new-instance v2, Landroidx/media3/session/legacy/MediaControllerCompat;

    .line 2325
    invoke-static {v1}, Landroidx/media3/session/legacy/MediaSessionCompat$Token;->fromToken(Ljava/lang/Object;)Landroidx/media3/session/legacy/MediaSessionCompat$Token;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Landroidx/media3/session/legacy/MediaControllerCompat;-><init>(Landroid/content/Context;Landroidx/media3/session/legacy/MediaSessionCompat$Token;)V

    .line 2324
    return-object v2
.end method

.method private requestExtraBinder()V
    .locals 3

    .line 2283
    new-instance v0, Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver;

    invoke-direct {v0, p0}, Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver;-><init>(Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImplApi21;)V

    const-string v1, "android.support.v4.media.session.command.GET_EXTRA_BINDER"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImplApi21;->sendCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    .line 2284
    return-void
.end method

.method static setMediaController(Landroid/app/Activity;Landroidx/media3/session/legacy/MediaControllerCompat;)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "mediaControllerCompat"    # Landroidx/media3/session/legacy/MediaControllerCompat;

    .line 2309
    const/4 v0, 0x0

    .line 2310
    .local v0, "controllerFwk":Landroid/media/session/MediaController;
    if-eqz p1, :cond_0

    .line 2311
    invoke-virtual {p1}, Landroidx/media3/session/legacy/MediaControllerCompat;->getSessionToken()Landroidx/media3/session/legacy/MediaSessionCompat$Token;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media3/session/legacy/MediaSessionCompat$Token;->getToken()Ljava/lang/Object;

    move-result-object v1

    .line 2312
    .local v1, "sessionTokenObj":Ljava/lang/Object;
    new-instance v2, Landroid/media/session/MediaController;

    move-object v3, v1

    check-cast v3, Landroid/media/session/MediaSession$Token;

    invoke-direct {v2, p0, v3}, Landroid/media/session/MediaController;-><init>(Landroid/content/Context;Landroid/media/session/MediaSession$Token;)V

    move-object v0, v2

    .line 2314
    .end local v1    # "sessionTokenObj":Ljava/lang/Object;
    :cond_0
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setMediaController(Landroid/media/session/MediaController;)V

    .line 2315
    return-void
.end method


# virtual methods
.method public addQueueItem(Landroidx/media3/session/legacy/MediaDescriptionCompat;)V
    .locals 6
    .param p1, "description"    # Landroidx/media3/session/legacy/MediaDescriptionCompat;

    .line 2096
    invoke-virtual {p0}, Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImplApi21;->getFlags()J

    move-result-wide v0

    .line 2097
    .local v0, "flags":J
    const-wide/16 v2, 0x4

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 2101
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 2102
    .local v2, "params":Landroid/os/Bundle;
    sget-object v3, Landroid/support/v4/media/MediaDescriptionCompat;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2104
    invoke-static {p1, v3}, Landroidx/media3/session/legacy/LegacyParcelableUtil;->convert(Landroid/os/Parcelable;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    .line 2102
    const-string v4, "android.support.v4.media.session.command.ARGUMENT_MEDIA_DESCRIPTION"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2106
    const-string v3, "android.support.v4.media.session.command.ADD_QUEUE_ITEM"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v2, v4}, Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImplApi21;->sendCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    .line 2107
    return-void

    .line 2098
    .end local v2    # "params":Landroid/os/Bundle;
    :cond_0
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v3, "This session doesn\'t support queue management operations"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public addQueueItem(Landroidx/media3/session/legacy/MediaDescriptionCompat;I)V
    .locals 6
    .param p1, "description"    # Landroidx/media3/session/legacy/MediaDescriptionCompat;
    .param p2, "index"    # I

    .line 2111
    invoke-virtual {p0}, Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImplApi21;->getFlags()J

    move-result-wide v0

    .line 2112
    .local v0, "flags":J
    const-wide/16 v2, 0x4

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 2116
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 2117
    .local v2, "params":Landroid/os/Bundle;
    sget-object v3, Landroid/support/v4/media/MediaDescriptionCompat;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2119
    invoke-static {p1, v3}, Landroidx/media3/session/legacy/LegacyParcelableUtil;->convert(Landroid/os/Parcelable;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    .line 2117
    const-string v4, "android.support.v4.media.session.command.ARGUMENT_MEDIA_DESCRIPTION"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2121
    const-string v3, "android.support.v4.media.session.command.ARGUMENT_INDEX"

    invoke-virtual {v2, v3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2122
    const-string v3, "android.support.v4.media.session.command.ADD_QUEUE_ITEM_AT"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v2, v4}, Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImplApi21;->sendCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    .line 2123
    return-void

    .line 2113
    .end local v2    # "params":Landroid/os/Bundle;
    :cond_0
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v3, "This session doesn\'t support queue management operations"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public adjustVolume(II)V
    .locals 1
    .param p1, "direction"    # I
    .param p2, "flags"    # I

    .line 2238
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImplApi21;->mControllerFwk:Landroid/media/session/MediaController;

    invoke-virtual {v0, p1, p2}, Landroid/media/session/MediaController;->adjustVolume(II)V

    .line 2239
    return-void
.end method

.method public dispatchMediaButtonEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 2048
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImplApi21;->mControllerFwk:Landroid/media/session/MediaController;

    invoke-virtual {v0, p1}, Landroid/media/session/MediaController;->dispatchMediaButtonEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .line 2149
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImplApi21;->mControllerFwk:Landroid/media/session/MediaController;

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getFlags()J
    .locals 2

    .line 2208
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImplApi21;->mControllerFwk:Landroid/media/session/MediaController;

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getFlags()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMediaController()Ljava/lang/Object;
    .locals 1

    .line 2279
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImplApi21;->mControllerFwk:Landroid/media/session/MediaController;

    return-object v0
.end method

.method public getMetadata()Landroidx/media3/session/legacy/MediaMetadataCompat;
    .locals 2

    .line 2083
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImplApi21;->mControllerFwk:Landroid/media/session/MediaController;

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object v0

    .line 2084
    .local v0, "metadataFwk":Landroid/media/MediaMetadata;
    if-eqz v0, :cond_0

    invoke-static {v0}, Landroidx/media3/session/legacy/MediaMetadataCompat;->fromMediaMetadata(Ljava/lang/Object;)Landroidx/media3/session/legacy/MediaMetadataCompat;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 2253
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImplApi21;->mControllerFwk:Landroid/media/session/MediaController;

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPlaybackInfo()Landroidx/media3/session/legacy/MediaControllerCompat$PlaybackInfo;
    .locals 8

    .line 2214
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImplApi21;->mControllerFwk:Landroid/media/session/MediaController;

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPlaybackInfo()Landroid/media/session/MediaController$PlaybackInfo;

    move-result-object v0

    .line 2215
    .local v0, "volumeInfoFwk":Landroid/media/session/MediaController$PlaybackInfo;
    if-eqz v0, :cond_0

    .line 2216
    new-instance v7, Landroidx/media3/session/legacy/MediaControllerCompat$PlaybackInfo;

    .line 2217
    invoke-virtual {v0}, Landroid/media/session/MediaController$PlaybackInfo;->getPlaybackType()I

    move-result v2

    .line 2218
    invoke-virtual {v0}, Landroid/media/session/MediaController$PlaybackInfo;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/session/legacy/AudioAttributesCompat;->wrap(Ljava/lang/Object;)Landroidx/media3/session/legacy/AudioAttributesCompat;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroidx/media3/session/legacy/AudioAttributesCompat;

    .line 2219
    invoke-virtual {v0}, Landroid/media/session/MediaController$PlaybackInfo;->getVolumeControl()I

    move-result v4

    .line 2220
    invoke-virtual {v0}, Landroid/media/session/MediaController$PlaybackInfo;->getMaxVolume()I

    move-result v5

    .line 2221
    invoke-virtual {v0}, Landroid/media/session/MediaController$PlaybackInfo;->getCurrentVolume()I

    move-result v6

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Landroidx/media3/session/legacy/MediaControllerCompat$PlaybackInfo;-><init>(ILandroidx/media3/session/legacy/AudioAttributesCompat;III)V

    goto :goto_0

    .line 2222
    :cond_0
    const/4 v7, 0x0

    .line 2215
    :goto_0
    return-object v7
.end method

.method public getPlaybackState()Landroidx/media3/session/legacy/PlaybackStateCompat;
    .locals 4

    .line 2068
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImplApi21;->mSessionToken:Landroidx/media3/session/legacy/MediaSessionCompat$Token;

    invoke-virtual {v0}, Landroidx/media3/session/legacy/MediaSessionCompat$Token;->getExtraBinder()Landroidx/media3/session/legacy/IMediaSession;

    move-result-object v0

    .line 2069
    .local v0, "extraBinder":Landroidx/media3/session/legacy/IMediaSession;
    if-eqz v0, :cond_0

    .line 2071
    :try_start_0
    invoke-interface {v0}, Landroidx/media3/session/legacy/IMediaSession;->getPlaybackState()Landroidx/media3/session/legacy/PlaybackStateCompat;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 2072
    :catch_0
    move-exception v1

    .line 2073
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "MediaControllerCompat"

    const-string v3, "Dead object in getPlaybackState."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2076
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    iget-object v1, p0, Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImplApi21;->mControllerFwk:Landroid/media/session/MediaController;

    invoke-virtual {v1}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v1

    .line 2077
    .local v1, "stateFwk":Landroid/media/session/PlaybackState;
    if-eqz v1, :cond_1

    invoke-static {v1}, Landroidx/media3/session/legacy/PlaybackStateCompat;->fromPlaybackState(Ljava/lang/Object;)Landroidx/media3/session/legacy/PlaybackStateCompat;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return-object v2
.end method

.method public getQueue()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/media3/session/legacy/MediaSessionCompat$QueueItem;",
            ">;"
        }
    .end annotation

    .line 2090
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImplApi21;->mControllerFwk:Landroid/media/session/MediaController;

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getQueue()Ljava/util/List;

    move-result-object v0

    .line 2091
    .local v0, "queueFwks":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaSession$QueueItem;>;"
    if-eqz v0, :cond_0

    invoke-static {v0}, Landroidx/media3/session/legacy/MediaSessionCompat$QueueItem;->fromQueueItemList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public getQueueTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 2143
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImplApi21;->mControllerFwk:Landroid/media/session/MediaController;

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getQueueTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getRatingType()I
    .locals 1

    .line 2154
    nop

    .line 2164
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImplApi21;->mControllerFwk:Landroid/media/session/MediaController;

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getRatingType()I

    move-result v0

    return v0
.end method

.method public getRepeatMode()I
    .locals 4

    .line 2182
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImplApi21;->mSessionToken:Landroidx/media3/session/legacy/MediaSessionCompat$Token;

    invoke-virtual {v0}, Landroidx/media3/session/legacy/MediaSessionCompat$Token;->getExtraBinder()Landroidx/media3/session/legacy/IMediaSession;

    move-result-object v0

    .line 2183
    .local v0, "extraBinder":Landroidx/media3/session/legacy/IMediaSession;
    if-eqz v0, :cond_0

    .line 2185
    :try_start_0
    invoke-interface {v0}, Landroidx/media3/session/legacy/IMediaSession;->getRepeatMode()I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 2186
    :catch_0
    move-exception v1

    .line 2187
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "MediaControllerCompat"

    const-string v3, "Dead object in getRepeatMode."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2190
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, -0x1

    return v1
.end method

.method public getSessionActivity()Landroid/app/PendingIntent;
    .locals 1

    .line 2228
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImplApi21;->mControllerFwk:Landroid/media/session/MediaController;

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getSessionActivity()Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public getSessionInfo()Landroid/os/Bundle;
    .locals 4

    .line 2258
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImplApi21;->mSessionInfo:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 2259
    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p0, Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImplApi21;->mSessionInfo:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    return-object v0

    .line 2262
    :cond_0
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImplApi21;->mSessionToken:Landroidx/media3/session/legacy/MediaSessionCompat$Token;

    invoke-virtual {v0}, Landroidx/media3/session/legacy/MediaSessionCompat$Token;->getExtraBinder()Landroidx/media3/session/legacy/IMediaSession;

    move-result-object v0

    .line 2263
    .local v0, "extraBinder":Landroidx/media3/session/legacy/IMediaSession;
    if-eqz v0, :cond_1

    .line 2265
    :try_start_0
    invoke-interface {v0}, Landroidx/media3/session/legacy/IMediaSession;->getSessionInfo()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImplApi21;->mSessionInfo:Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2269
    goto :goto_0

    .line 2266
    :catch_0
    move-exception v1

    .line 2267
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "MediaControllerCompat"

    const-string v3, "Dead object in getSessionInfo."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2268
    sget-object v2, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    iput-object v2, p0, Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImplApi21;->mSessionInfo:Landroid/os/Bundle;

    .line 2272
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    iget-object v1, p0, Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImplApi21;->mSessionInfo:Landroid/os/Bundle;

    invoke-static {v1}, Landroidx/media3/session/legacy/MediaSessionCompat;->unparcelWithClassLoader(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImplApi21;->mSessionInfo:Landroid/os/Bundle;

    .line 2273
    iget-object v1, p0, Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImplApi21;->mSessionInfo:Landroid/os/Bundle;

    if-nez v1, :cond_2

    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    goto :goto_1

    :cond_2
    new-instance v1, Landroid/os/Bundle;

    iget-object v2, p0, Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImplApi21;->mSessionInfo:Landroid/os/Bundle;

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    :goto_1
    return-object v1
.end method

.method public getShuffleMode()I
    .locals 4

    .line 2195
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImplApi21;->mSessionToken:Landroidx/media3/session/legacy/MediaSessionCompat$Token;

    invoke-virtual {v0}, Landroidx/media3/session/legacy/MediaSessionCompat$Token;->getExtraBinder()Landroidx/media3/session/legacy/IMediaSession;

    move-result-object v0

    .line 2196
    .local v0, "extraBinder":Landroidx/media3/session/legacy/IMediaSession;
    if-eqz v0, :cond_0

    .line 2198
    :try_start_0
    invoke-interface {v0}, Landroidx/media3/session/legacy/IMediaSession;->getShuffleMode()I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 2199
    :catch_0
    move-exception v1

    .line 2200
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "MediaControllerCompat"

    const-string v3, "Dead object in getShuffleMode."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2203
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, -0x1

    return v1
.end method

.method public getTransportControls()Landroidx/media3/session/legacy/MediaControllerCompat$TransportControls;
    .locals 3

    .line 2053
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImplApi21;->mControllerFwk:Landroid/media/session/MediaController;

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object v0

    .line 2054
    .local v0, "controlsFwk":Landroid/media/session/MediaController$TransportControls;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_0

    .line 2055
    new-instance v1, Landroidx/media3/session/legacy/MediaControllerCompat$TransportControlsApi29;

    invoke-direct {v1, v0}, Landroidx/media3/session/legacy/MediaControllerCompat$TransportControlsApi29;-><init>(Landroid/media/session/MediaController$TransportControls;)V

    return-object v1

    .line 2056
    :cond_0
    nop

    .line 2057
    new-instance v1, Landroidx/media3/session/legacy/MediaControllerCompat$TransportControlsApi24;

    invoke-direct {v1, v0}, Landroidx/media3/session/legacy/MediaControllerCompat$TransportControlsApi24;-><init>(Landroid/media/session/MediaController$TransportControls;)V

    return-object v1
.end method

.method public isCaptioningEnabled()Z
    .locals 4

    .line 2169
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImplApi21;->mSessionToken:Landroidx/media3/session/legacy/MediaSessionCompat$Token;

    invoke-virtual {v0}, Landroidx/media3/session/legacy/MediaSessionCompat$Token;->getExtraBinder()Landroidx/media3/session/legacy/IMediaSession;

    move-result-object v0

    .line 2170
    .local v0, "extraBinder":Landroidx/media3/session/legacy/IMediaSession;
    if-eqz v0, :cond_0

    .line 2172
    :try_start_0
    invoke-interface {v0}, Landroidx/media3/session/legacy/IMediaSession;->isCaptioningEnabled()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 2173
    :catch_0
    move-exception v1

    .line 2174
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "MediaControllerCompat"

    const-string v3, "Dead object in isCaptioningEnabled."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2177
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public isSessionReady()Z
    .locals 1

    .line 2248
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImplApi21;->mSessionToken:Landroidx/media3/session/legacy/MediaSessionCompat$Token;

    invoke-virtual {v0}, Landroidx/media3/session/legacy/MediaSessionCompat$Token;->getExtraBinder()Landroidx/media3/session/legacy/IMediaSession;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method processPendingCallbacksLocked()V
    .locals 6

    .line 2288
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImplApi21;->mSessionToken:Landroidx/media3/session/legacy/MediaSessionCompat$Token;

    invoke-virtual {v0}, Landroidx/media3/session/legacy/MediaSessionCompat$Token;->getExtraBinder()Landroidx/media3/session/legacy/IMediaSession;

    move-result-object v0

    .line 2289
    .local v0, "extraBinder":Landroidx/media3/session/legacy/IMediaSession;
    if-nez v0, :cond_0

    .line 2290
    return-void

    .line 2292
    :cond_0
    iget-object v1, p0, Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImplApi21;->mPendingCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/session/legacy/MediaControllerCompat$Callback;

    .line 2293
    .local v2, "callback":Landroidx/media3/session/legacy/MediaControllerCompat$Callback;
    new-instance v3, Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImplApi21$ExtraCallback;

    invoke-direct {v3, v2}, Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImplApi21$ExtraCallback;-><init>(Landroidx/media3/session/legacy/MediaControllerCompat$Callback;)V

    .line 2294
    .local v3, "extraCallback":Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImplApi21$ExtraCallback;
    iget-object v4, p0, Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImplApi21;->mCallbackMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2295
    iput-object v3, v2, Landroidx/media3/session/legacy/MediaControllerCompat$Callback;->mIControllerCallback:Landroidx/media3/session/legacy/IMediaControllerCallback;

    .line 2297
    :try_start_0
    invoke-interface {v0, v3}, Landroidx/media3/session/legacy/IMediaSession;->registerCallbackListener(Landroidx/media3/session/legacy/IMediaControllerCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2301
    nop

    .line 2302
    const/16 v4, 0xd

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5, v5}, Landroidx/media3/session/legacy/MediaControllerCompat$Callback;->postToHandler(ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 2303
    .end local v2    # "callback":Landroidx/media3/session/legacy/MediaControllerCompat$Callback;
    .end local v3    # "extraCallback":Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImplApi21$ExtraCallback;
    goto :goto_0

    .line 2298
    .restart local v2    # "callback":Landroidx/media3/session/legacy/MediaControllerCompat$Callback;
    .restart local v3    # "extraCallback":Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImplApi21$ExtraCallback;
    :catch_0
    move-exception v1

    .line 2299
    .local v1, "e":Landroid/os/RemoteException;
    const-string v4, "MediaControllerCompat"

    const-string v5, "Dead object in registerCallback."

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2300
    nop

    .line 2304
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "callback":Landroidx/media3/session/legacy/MediaControllerCompat$Callback;
    .end local v3    # "extraCallback":Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImplApi21$ExtraCallback;
    :cond_1
    iget-object v1, p0, Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImplApi21;->mPendingCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 2305
    return-void
.end method

.method public final registerCallback(Landroidx/media3/session/legacy/MediaControllerCompat$Callback;Landroid/os/Handler;)V
    .locals 6
    .param p1, "callback"    # Landroidx/media3/session/legacy/MediaControllerCompat$Callback;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 2005
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImplApi21;->mControllerFwk:Landroid/media/session/MediaController;

    iget-object v1, p1, Landroidx/media3/session/legacy/MediaControllerCompat$Callback;->mCallbackFwk:Landroid/media/session/MediaController$Callback;

    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/session/MediaController$Callback;

    invoke-virtual {v0, v1, p2}, Landroid/media/session/MediaController;->registerCallback(Landroid/media/session/MediaController$Callback;Landroid/os/Handler;)V

    .line 2006
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImplApi21;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2007
    :try_start_0
    iget-object v1, p0, Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImplApi21;->mSessionToken:Landroidx/media3/session/legacy/MediaSessionCompat$Token;

    invoke-virtual {v1}, Landroidx/media3/session/legacy/MediaSessionCompat$Token;->getExtraBinder()Landroidx/media3/session/legacy/IMediaSession;

    move-result-object v1

    .line 2008
    .local v1, "extraBinder":Landroidx/media3/session/legacy/IMediaSession;
    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 2009
    new-instance v3, Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImplApi21$ExtraCallback;

    invoke-direct {v3, p1}, Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImplApi21$ExtraCallback;-><init>(Landroidx/media3/session/legacy/MediaControllerCompat$Callback;)V

    .line 2010
    .local v3, "extraCallback":Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImplApi21$ExtraCallback;
    iget-object v4, p0, Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImplApi21;->mCallbackMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2011
    iput-object v3, p1, Landroidx/media3/session/legacy/MediaControllerCompat$Callback;->mIControllerCallback:Landroidx/media3/session/legacy/IMediaControllerCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2013
    :try_start_1
    invoke-interface {v1, v3}, Landroidx/media3/session/legacy/IMediaSession;->registerCallbackListener(Landroidx/media3/session/legacy/IMediaControllerCallback;)V

    .line 2014
    const/16 v4, 0xd

    invoke-virtual {p1, v4, v2, v2}, Landroidx/media3/session/legacy/MediaControllerCompat$Callback;->postToHandler(ILjava/lang/Object;Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2017
    goto :goto_0

    .line 2015
    :catch_0
    move-exception v2

    .line 2016
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v4, "MediaControllerCompat"

    const-string v5, "Dead object in registerCallback."

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2018
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v3    # "extraCallback":Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImplApi21$ExtraCallback;
    :goto_0
    goto :goto_1

    .line 2019
    :cond_0
    iput-object v2, p1, Landroidx/media3/session/legacy/MediaControllerCompat$Callback;->mIControllerCallback:Landroidx/media3/session/legacy/IMediaControllerCallback;

    .line 2020
    iget-object v2, p0, Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImplApi21;->mPendingCallbacks:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2022
    .end local v1    # "extraBinder":Landroidx/media3/session/legacy/IMediaSession;
    :goto_1
    monitor-exit v0

    .line 2023
    return-void

    .line 2022
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public removeQueueItem(Landroidx/media3/session/legacy/MediaDescriptionCompat;)V
    .locals 6
    .param p1, "description"    # Landroidx/media3/session/legacy/MediaDescriptionCompat;

    .line 2127
    invoke-virtual {p0}, Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImplApi21;->getFlags()J

    move-result-wide v0

    .line 2128
    .local v0, "flags":J
    const-wide/16 v2, 0x4

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 2132
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 2133
    .local v2, "params":Landroid/os/Bundle;
    sget-object v3, Landroid/support/v4/media/MediaDescriptionCompat;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2135
    invoke-static {p1, v3}, Landroidx/media3/session/legacy/LegacyParcelableUtil;->convert(Landroid/os/Parcelable;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    .line 2133
    const-string v4, "android.support.v4.media.session.command.ARGUMENT_MEDIA_DESCRIPTION"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2137
    const-string v3, "android.support.v4.media.session.command.REMOVE_QUEUE_ITEM"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v2, v4}, Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImplApi21;->sendCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    .line 2138
    return-void

    .line 2129
    .end local v2    # "params":Landroid/os/Bundle;
    :cond_0
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v3, "This session doesn\'t support queue management operations"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public sendCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 1
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "params"    # Landroid/os/Bundle;
    .param p3, "cb"    # Landroid/os/ResultReceiver;

    .line 2243
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImplApi21;->mControllerFwk:Landroid/media/session/MediaController;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/session/MediaController;->sendCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    .line 2244
    return-void
.end method

.method public setVolumeTo(II)V
    .locals 1
    .param p1, "value"    # I
    .param p2, "flags"    # I

    .line 2233
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImplApi21;->mControllerFwk:Landroid/media/session/MediaController;

    invoke-virtual {v0, p1, p2}, Landroid/media/session/MediaController;->setVolumeTo(II)V

    .line 2234
    return-void
.end method

.method public final unregisterCallback(Landroidx/media3/session/legacy/MediaControllerCompat$Callback;)V
    .locals 5
    .param p1, "callback"    # Landroidx/media3/session/legacy/MediaControllerCompat$Callback;

    .line 2027
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImplApi21;->mControllerFwk:Landroid/media/session/MediaController;

    iget-object v1, p1, Landroidx/media3/session/legacy/MediaControllerCompat$Callback;->mCallbackFwk:Landroid/media/session/MediaController$Callback;

    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/session/MediaController$Callback;

    invoke-virtual {v0, v1}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    .line 2028
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImplApi21;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2029
    :try_start_0
    iget-object v1, p0, Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImplApi21;->mSessionToken:Landroidx/media3/session/legacy/MediaSessionCompat$Token;

    invoke-virtual {v1}, Landroidx/media3/session/legacy/MediaSessionCompat$Token;->getExtraBinder()Landroidx/media3/session/legacy/IMediaSession;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2030
    .local v1, "extraBinder":Landroidx/media3/session/legacy/IMediaSession;
    if-eqz v1, :cond_1

    .line 2032
    :try_start_1
    iget-object v2, p0, Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImplApi21;->mCallbackMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImplApi21$ExtraCallback;

    .line 2033
    .local v2, "extraCallback":Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImplApi21$ExtraCallback;
    if-eqz v2, :cond_0

    .line 2034
    const/4 v3, 0x0

    iput-object v3, p1, Landroidx/media3/session/legacy/MediaControllerCompat$Callback;->mIControllerCallback:Landroidx/media3/session/legacy/IMediaControllerCallback;

    .line 2035
    invoke-interface {v1, v2}, Landroidx/media3/session/legacy/IMediaSession;->unregisterCallbackListener(Landroidx/media3/session/legacy/IMediaControllerCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2039
    .end local v2    # "extraCallback":Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImplApi21$ExtraCallback;
    :cond_0
    goto :goto_0

    .line 2037
    :catch_0
    move-exception v2

    .line 2038
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "MediaControllerCompat"

    const-string v4, "Dead object in unregisterCallback."

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2039
    nop

    .end local v2    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 2041
    :cond_1
    iget-object v2, p0, Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImplApi21;->mPendingCallbacks:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2043
    .end local v1    # "extraBinder":Landroidx/media3/session/legacy/IMediaSession;
    :goto_0
    monitor-exit v0

    .line 2044
    return-void

    .line 2043
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
