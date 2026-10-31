.class Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi21$ExtraSession;
.super Landroidx/media3/session/legacy/IMediaSession$Stub;
.source "MediaSessionCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi21;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExtraSession"
.end annotation


# instance fields
.field private final mMediaSessionImplRef:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi21;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi21;)V
    .locals 1
    .param p1, "mediaSessionImpl"    # Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi21;

    .line 4207
    invoke-direct {p0}, Landroidx/media3/session/legacy/IMediaSession$Stub;-><init>()V

    .line 4208
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi21$ExtraSession;->mMediaSessionImplRef:Ljava/util/concurrent/atomic/AtomicReference;

    .line 4209
    return-void
.end method


# virtual methods
.method public addQueueItem(Landroidx/media3/session/legacy/MediaDescriptionCompat;)V
    .locals 1
    .param p1, "descriptionCompat"    # Landroidx/media3/session/legacy/MediaDescriptionCompat;

    .line 4491
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public addQueueItemAt(Landroidx/media3/session/legacy/MediaDescriptionCompat;I)V
    .locals 1
    .param p1, "descriptionCompat"    # Landroidx/media3/session/legacy/MediaDescriptionCompat;
    .param p2, "index"    # I

    .line 4497
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public adjustVolume(IILjava/lang/String;)V
    .locals 1
    .param p1, "direction"    # I
    .param p2, "flags"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 4310
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public fastForward()V
    .locals 1

    .line 4400
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .line 4521
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public getFlags()J
    .locals 1

    .line 4298
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public getLaunchPendingIntent()Landroid/app/PendingIntent;
    .locals 1

    .line 4291
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public getMetadata()Landroidx/media3/session/legacy/MediaMetadataCompat;
    .locals 1

    .line 4466
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 4270
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public getPlaybackState()Landroidx/media3/session/legacy/PlaybackStateCompat;
    .locals 3

    .line 4472
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi21$ExtraSession;->mMediaSessionImplRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi21;

    .line 4473
    .local v0, "mediaSessionImpl":Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi21;
    if-eqz v0, :cond_0

    .line 4474
    iget-object v1, v0, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi21;->mPlaybackState:Landroidx/media3/session/legacy/PlaybackStateCompat;

    iget-object v2, v0, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi21;->mMetadata:Landroidx/media3/session/legacy/MediaMetadataCompat;

    invoke-static {v1, v2}, Landroidx/media3/session/legacy/MediaSessionCompat;->getStateWithUpdatedPosition(Landroidx/media3/session/legacy/PlaybackStateCompat;Landroidx/media3/session/legacy/MediaMetadataCompat;)Landroidx/media3/session/legacy/PlaybackStateCompat;

    move-result-object v1

    return-object v1

    .line 4477
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getQueue()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/media3/session/legacy/MediaSessionCompat$QueueItem;",
            ">;"
        }
    .end annotation

    .line 4485
    const/4 v0, 0x0

    return-object v0
.end method

.method public getQueueTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 4515
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public getRatingType()I
    .locals 2

    .line 4527
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi21$ExtraSession;->mMediaSessionImplRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi21;

    .line 4528
    .local v0, "mediaSessionImpl":Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi21;
    if-eqz v0, :cond_0

    iget v1, v0, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi21;->mRatingType:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getRepeatMode()I
    .locals 2

    .line 4540
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi21$ExtraSession;->mMediaSessionImplRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi21;

    .line 4541
    .local v0, "mediaSessionImpl":Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi21;
    if-eqz v0, :cond_0

    .line 4542
    iget v1, v0, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi21;->mRepeatMode:I

    goto :goto_0

    .line 4543
    :cond_0
    const/4 v1, -0x1

    .line 4541
    :goto_0
    return v1
.end method

.method public getSessionInfo()Landroid/os/Bundle;
    .locals 3

    .line 4276
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi21$ExtraSession;->mMediaSessionImplRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi21;

    .line 4277
    .local v0, "mediaSessionImpl":Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi21;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi21;->mSessionInfo:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 4278
    new-instance v1, Landroid/os/Bundle;

    iget-object v2, v0, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi21;->mSessionInfo:Landroid/os/Bundle;

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_0

    .line 4279
    :cond_0
    const/4 v1, 0x0

    .line 4277
    :goto_0
    return-object v1
.end method

.method public getShuffleMode()I
    .locals 2

    .line 4554
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi21$ExtraSession;->mMediaSessionImplRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi21;

    .line 4555
    .local v0, "mediaSessionImpl":Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi21;
    if-eqz v0, :cond_0

    .line 4556
    iget v1, v0, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi21;->mShuffleMode:I

    goto :goto_0

    .line 4557
    :cond_0
    const/4 v1, -0x1

    .line 4555
    :goto_0
    return v1
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .line 4285
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public getVolumeAttributes()Landroidx/media3/session/legacy/ParcelableVolumeInfo;
    .locals 1

    .line 4304
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public isCaptioningEnabled()Z
    .locals 2

    .line 4533
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi21$ExtraSession;->mMediaSessionImplRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi21;

    .line 4534
    .local v0, "mediaSessionImpl":Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi21;
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi21;->mCaptioningEnabled:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isShuffleModeEnabledRemoved()Z
    .locals 1

    .line 4548
    const/4 v0, 0x0

    return v0
.end method

.method public isTransportControlEnabled()Z
    .locals 1

    .line 4563
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public next()V
    .locals 1

    .line 4388
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public pause()V
    .locals 1

    .line 4376
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public play()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4346
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public playFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "mediaId"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 4352
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public playFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 4358
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public playFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 4364
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public prepare()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4322
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public prepareFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "mediaId"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 4328
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public prepareFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 4334
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public prepareFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 4340
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public previous()V
    .locals 1

    .line 4394
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public rate(Landroidx/media3/session/legacy/RatingCompat;)V
    .locals 1
    .param p1, "rating"    # Landroidx/media3/session/legacy/RatingCompat;

    .line 4418
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public rateWithExtras(Landroidx/media3/session/legacy/RatingCompat;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "rating"    # Landroidx/media3/session/legacy/RatingCompat;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 4424
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public registerCallbackListener(Landroidx/media3/session/legacy/IMediaControllerCallback;)V
    .locals 6
    .param p1, "cb"    # Landroidx/media3/session/legacy/IMediaControllerCallback;

    .line 4232
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi21$ExtraSession;->mMediaSessionImplRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi21;

    .line 4233
    .local v0, "mediaSessionImpl":Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi21;
    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 4236
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 4237
    .local v1, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 4238
    .local v2, "callingUid":I
    new-instance v3, Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;

    const-string v4, "android.media.session.MediaController"

    invoke-direct {v3, v4, v1, v2}, Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;-><init>(Ljava/lang/String;II)V

    .line 4240
    .local v3, "info":Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;
    iget-object v4, v0, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi21;->mExtraControllerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, p1, v3}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    .line 4241
    iget-object v4, v0, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi21;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 4242
    :try_start_0
    iget-object v5, v0, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi21;->mRegistrationCallbackHandler:Landroidx/media3/session/legacy/MediaSessionCompat$RegistrationCallbackHandler;

    if-eqz v5, :cond_1

    .line 4243
    iget-object v5, v0, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi21;->mRegistrationCallbackHandler:Landroidx/media3/session/legacy/MediaSessionCompat$RegistrationCallbackHandler;

    invoke-virtual {v5, v1, v2}, Landroidx/media3/session/legacy/MediaSessionCompat$RegistrationCallbackHandler;->postCallbackRegistered(II)V

    .line 4246
    :cond_1
    monitor-exit v4

    .line 4247
    return-void

    .line 4246
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 4234
    .end local v1    # "callingPid":I
    .end local v2    # "callingUid":I
    .end local v3    # "info":Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;
    :cond_2
    :goto_0
    return-void
.end method

.method public release()V
    .locals 2

    .line 4214
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi21$ExtraSession;->mMediaSessionImplRef:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 4215
    return-void
.end method

.method public removeQueueItem(Landroidx/media3/session/legacy/MediaDescriptionCompat;)V
    .locals 1
    .param p1, "description"    # Landroidx/media3/session/legacy/MediaDescriptionCompat;

    .line 4503
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public removeQueueItemAt(I)V
    .locals 1
    .param p1, "index"    # I

    .line 4509
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public rewind()V
    .locals 1

    .line 4406
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public seekTo(J)V
    .locals 1
    .param p1, "pos"    # J

    .line 4412
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public sendCommand(Ljava/lang/String;Landroid/os/Bundle;Landroidx/media3/session/legacy/MediaSessionCompat$ResultReceiverWrapper;)V
    .locals 1
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "cb"    # Landroidx/media3/session/legacy/MediaSessionCompat$ResultReceiverWrapper;

    .line 4221
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public sendCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4460
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public sendMediaButton(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "mediaButton"    # Landroid/view/KeyEvent;

    .line 4227
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public setCaptioningEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 4436
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public setPlaybackSpeed(F)V
    .locals 1
    .param p1, "speed"    # F

    .line 4430
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public setRepeatMode(I)V
    .locals 1
    .param p1, "repeatMode"    # I

    .line 4442
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public setShuffleMode(I)V
    .locals 1
    .param p1, "shuffleMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4453
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public setShuffleModeEnabledRemoved(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 4448
    return-void
.end method

.method public setVolumeTo(IILjava/lang/String;)V
    .locals 1
    .param p1, "value"    # I
    .param p2, "flags"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 4316
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public skipToQueueItem(J)V
    .locals 1
    .param p1, "id"    # J

    .line 4370
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public stop()V
    .locals 1

    .line 4382
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public unregisterCallbackListener(Landroidx/media3/session/legacy/IMediaControllerCallback;)V
    .locals 5
    .param p1, "cb"    # Landroidx/media3/session/legacy/IMediaControllerCallback;

    .line 4251
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi21$ExtraSession;->mMediaSessionImplRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi21;

    .line 4252
    .local v0, "mediaSessionImpl":Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi21;
    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 4255
    :cond_0
    iget-object v1, v0, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi21;->mExtraControllerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 4257
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 4258
    .local v1, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 4259
    .local v2, "callingUid":I
    iget-object v3, v0, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi21;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 4260
    :try_start_0
    iget-object v4, v0, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi21;->mRegistrationCallbackHandler:Landroidx/media3/session/legacy/MediaSessionCompat$RegistrationCallbackHandler;

    if-eqz v4, :cond_1

    .line 4261
    iget-object v4, v0, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi21;->mRegistrationCallbackHandler:Landroidx/media3/session/legacy/MediaSessionCompat$RegistrationCallbackHandler;

    invoke-virtual {v4, v1, v2}, Landroidx/media3/session/legacy/MediaSessionCompat$RegistrationCallbackHandler;->postCallbackUnregistered(II)V

    .line 4264
    :cond_1
    monitor-exit v3

    .line 4265
    return-void

    .line 4264
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 4253
    .end local v1    # "callingPid":I
    .end local v2    # "callingUid":I
    :cond_2
    :goto_0
    return-void
.end method
