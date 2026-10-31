.class Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;
.super Landroidx/media3/session/legacy/IMediaSession$Stub;
.source "MediaSessionCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MediaSessionStub"
.end annotation


# instance fields
.field private final mMediaSessionImplRef:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageName:Ljava/lang/String;

.field private final mTag:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "mediaSessionImpl"    # Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "tag"    # Ljava/lang/String;

    .line 3015
    invoke-direct {p0}, Landroidx/media3/session/legacy/IMediaSession$Stub;-><init>()V

    .line 3016
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->mMediaSessionImplRef:Ljava/util/concurrent/atomic/AtomicReference;

    .line 3017
    iput-object p2, p0, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->mPackageName:Ljava/lang/String;

    .line 3018
    iput-object p3, p0, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->mTag:Ljava/lang/String;

    .line 3019
    return-void
.end method


# virtual methods
.method public addQueueItem(Landroidx/media3/session/legacy/MediaDescriptionCompat;)V
    .locals 1
    .param p1, "description"    # Landroidx/media3/session/legacy/MediaDescriptionCompat;

    .line 3337
    const/16 v0, 0x19

    invoke-virtual {p0, v0, p1}, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->postToHandler(ILjava/lang/Object;)V

    .line 3338
    return-void
.end method

.method public addQueueItemAt(Landroidx/media3/session/legacy/MediaDescriptionCompat;I)V
    .locals 2
    .param p1, "description"    # Landroidx/media3/session/legacy/MediaDescriptionCompat;
    .param p2, "index"    # I

    .line 3342
    const/16 v0, 0x1a

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, p2, v1}, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->postToHandler(ILjava/lang/Object;ILandroid/os/Bundle;)V

    .line 3343
    return-void
.end method

.method public adjustVolume(IILjava/lang/String;)V
    .locals 1
    .param p1, "direction"    # I
    .param p2, "flags"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 3165
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->mMediaSessionImplRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase;

    .line 3166
    .local v0, "mediaSessionImpl":Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase;
    if-eqz v0, :cond_0

    .line 3167
    invoke-virtual {v0, p1, p2}, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase;->adjustVolume(II)V

    .line 3169
    :cond_0
    return-void
.end method

.method public fastForward()V
    .locals 1

    .line 3246
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->postToHandler(I)V

    .line 3247
    return-void
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 3

    .line 3365
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->mMediaSessionImplRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase;

    .line 3366
    .local v0, "mediaSessionImpl":Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase;
    if-nez v0, :cond_0

    .line 3367
    const/4 v1, 0x0

    return-object v1

    .line 3369
    :cond_0
    iget-object v1, v0, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3370
    :try_start_0
    iget-object v2, v0, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase;->mExtras:Landroid/os/Bundle;

    monitor-exit v1

    return-object v2

    .line 3371
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getFlags()J
    .locals 4

    .line 3126
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->mMediaSessionImplRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase;

    .line 3127
    .local v0, "mediaSessionImpl":Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase;
    if-nez v0, :cond_0

    .line 3128
    const-wide/16 v1, 0x0

    return-wide v1

    .line 3130
    :cond_0
    iget-object v1, v0, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3131
    :try_start_0
    iget v2, v0, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase;->mFlags:I

    int-to-long v2, v2

    monitor-exit v1

    return-wide v2

    .line 3132
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getLaunchPendingIntent()Landroid/app/PendingIntent;
    .locals 3

    .line 3114
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->mMediaSessionImplRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase;

    .line 3115
    .local v0, "mediaSessionImpl":Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase;
    if-nez v0, :cond_0

    .line 3116
    const/4 v1, 0x0

    return-object v1

    .line 3118
    :cond_0
    iget-object v1, v0, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3119
    :try_start_0
    iget-object v2, v0, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase;->mSessionActivity:Landroid/app/PendingIntent;

    monitor-exit v1

    return-object v2

    .line 3120
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getMetadata()Landroidx/media3/session/legacy/MediaMetadataCompat;
    .locals 2

    .line 3303
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->mMediaSessionImplRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase;

    .line 3304
    .local v0, "mediaSessionImpl":Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase;->mMetadata:Landroidx/media3/session/legacy/MediaMetadataCompat;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 3092
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPlaybackState()Landroidx/media3/session/legacy/PlaybackStateCompat;
    .locals 4

    .line 3310
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->mMediaSessionImplRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase;

    .line 3311
    .local v0, "mediaSessionImpl":Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase;
    if-nez v0, :cond_0

    .line 3312
    const/4 v1, 0x0

    return-object v1

    .line 3316
    :cond_0
    iget-object v1, v0, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3317
    :try_start_0
    iget-object v2, v0, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase;->mState:Landroidx/media3/session/legacy/PlaybackStateCompat;

    .line 3318
    .local v2, "state":Landroidx/media3/session/legacy/PlaybackStateCompat;
    iget-object v3, v0, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase;->mMetadata:Landroidx/media3/session/legacy/MediaMetadataCompat;

    .line 3319
    .local v3, "metadata":Landroidx/media3/session/legacy/MediaMetadataCompat;
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3320
    invoke-static {v2, v3}, Landroidx/media3/session/legacy/MediaSessionCompat;->getStateWithUpdatedPosition(Landroidx/media3/session/legacy/PlaybackStateCompat;Landroidx/media3/session/legacy/MediaMetadataCompat;)Landroidx/media3/session/legacy/PlaybackStateCompat;

    move-result-object v1

    return-object v1

    .line 3319
    .end local v2    # "state":Landroidx/media3/session/legacy/PlaybackStateCompat;
    .end local v3    # "metadata":Landroidx/media3/session/legacy/MediaMetadataCompat;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public getQueue()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/media3/session/legacy/MediaSessionCompat$QueueItem;",
            ">;"
        }
    .end annotation

    .line 3326
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->mMediaSessionImplRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase;

    .line 3327
    .local v0, "mediaSessionImpl":Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase;
    if-nez v0, :cond_0

    .line 3328
    const/4 v1, 0x0

    return-object v1

    .line 3330
    :cond_0
    iget-object v1, v0, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3331
    :try_start_0
    iget-object v2, v0, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase;->mQueue:Ljava/util/List;

    monitor-exit v1

    return-object v2

    .line 3332
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getQueueTitle()Ljava/lang/CharSequence;
    .locals 2

    .line 3358
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->mMediaSessionImplRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase;

    .line 3359
    .local v0, "mediaSessionImpl":Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase;->mQueueTitle:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public getRatingType()I
    .locals 2

    .line 3377
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->mMediaSessionImplRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase;

    .line 3378
    .local v0, "mediaSessionImpl":Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase;
    if-eqz v0, :cond_0

    iget v1, v0, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase;->mRatingType:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getRepeatMode()I
    .locals 2

    .line 3390
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->mMediaSessionImplRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase;

    .line 3391
    .local v0, "mediaSessionImpl":Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase;
    if-eqz v0, :cond_0

    .line 3392
    iget v1, v0, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase;->mRepeatMode:I

    goto :goto_0

    .line 3393
    :cond_0
    const/4 v1, -0x1

    .line 3391
    :goto_0
    return v1
.end method

.method public getSessionInfo()Landroid/os/Bundle;
    .locals 3

    .line 3098
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->mMediaSessionImplRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase;

    .line 3100
    .local v0, "mediaSessionImpl":Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase;->mSessionInfo:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 3101
    new-instance v1, Landroid/os/Bundle;

    iget-object v2, v0, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase;->mSessionInfo:Landroid/os/Bundle;

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_0

    .line 3102
    :cond_0
    const/4 v1, 0x0

    .line 3100
    :goto_0
    return-object v1
.end method

.method public getShuffleMode()I
    .locals 2

    .line 3404
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->mMediaSessionImplRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase;

    .line 3405
    .local v0, "mediaSessionImpl":Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase;
    if-eqz v0, :cond_0

    .line 3406
    iget v1, v0, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase;->mShuffleMode:I

    goto :goto_0

    .line 3407
    :cond_0
    const/4 v1, -0x1

    .line 3405
    :goto_0
    return v1
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .line 3108
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public getVolumeAttributes()Landroidx/media3/session/legacy/ParcelableVolumeInfo;
    .locals 15

    .line 3138
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->mMediaSessionImplRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase;

    .line 3139
    .local v0, "mediaSessionImpl":Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase;
    if-nez v0, :cond_0

    .line 3140
    const/4 v1, 0x0

    return-object v1

    .line 3142
    :cond_0
    iget-object v1, v0, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3143
    :try_start_0
    iget v2, v0, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase;->mVolumeType:I

    .line 3144
    .local v2, "volumeType":I
    iget v3, v0, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase;->mLocalStream:I

    move v9, v3

    .line 3145
    .local v9, "stream":I
    iget-object v3, v0, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase;->mVolumeProvider:Landroidx/media3/session/legacy/VolumeProviderCompat;

    move-object v10, v3

    .line 3149
    .local v10, "vp":Landroidx/media3/session/legacy/VolumeProviderCompat;
    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 3150
    invoke-static {v10}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3151
    invoke-virtual {v10}, Landroidx/media3/session/legacy/VolumeProviderCompat;->getVolumeControl()I

    move-result v3

    .line 3152
    .local v3, "controlType":I
    invoke-virtual {v10}, Landroidx/media3/session/legacy/VolumeProviderCompat;->getMaxVolume()I

    move-result v4

    .line 3153
    .local v4, "max":I
    invoke-virtual {v10}, Landroidx/media3/session/legacy/VolumeProviderCompat;->getCurrentVolume()I

    move-result v5

    move v11, v3

    move v12, v4

    move v13, v5

    .local v5, "current":I
    goto :goto_0

    .line 3155
    .end local v3    # "controlType":I
    .end local v4    # "max":I
    .end local v5    # "current":I
    :cond_1
    const/4 v3, 0x2

    .line 3156
    .restart local v3    # "controlType":I
    iget-object v4, v0, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v9}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v4

    .line 3157
    .restart local v4    # "max":I
    iget-object v5, v0, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5, v9}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v5

    move v11, v3

    move v12, v4

    move v13, v5

    .line 3159
    .end local v3    # "controlType":I
    .end local v4    # "max":I
    .local v11, "controlType":I
    .local v12, "max":I
    .local v13, "current":I
    :goto_0
    new-instance v14, Landroidx/media3/session/legacy/ParcelableVolumeInfo;

    move-object v3, v14

    move v4, v2

    move v5, v9

    move v6, v11

    move v7, v12

    move v8, v13

    invoke-direct/range {v3 .. v8}, Landroidx/media3/session/legacy/ParcelableVolumeInfo;-><init>(IIIII)V

    monitor-exit v1

    return-object v14

    .line 3160
    .end local v2    # "volumeType":I
    .end local v9    # "stream":I
    .end local v10    # "vp":Landroidx/media3/session/legacy/VolumeProviderCompat;
    .end local v11    # "controlType":I
    .end local v12    # "max":I
    .end local v13    # "current":I
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public isCaptioningEnabled()Z
    .locals 2

    .line 3383
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->mMediaSessionImplRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase;

    .line 3384
    .local v0, "mediaSessionImpl":Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase;
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase;->mCaptioningEnabled:Z

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

    .line 3398
    const/4 v0, 0x0

    return v0
.end method

.method public isTransportControlEnabled()Z
    .locals 1

    .line 3413
    const/4 v0, 0x1

    return v0
.end method

.method public next()V
    .locals 1

    .line 3236
    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->postToHandler(I)V

    .line 3237
    return-void
.end method

.method public pause()V
    .locals 1

    .line 3226
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->postToHandler(I)V

    .line 3227
    return-void
.end method

.method public play()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3201
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->postToHandler(I)V

    .line 3202
    return-void
.end method

.method public playFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "mediaId"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 3206
    const/16 v0, 0x8

    invoke-virtual {p0, v0, p1, p2}, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->postToHandler(ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 3207
    return-void
.end method

.method public playFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 3211
    const/16 v0, 0x9

    invoke-virtual {p0, v0, p1, p2}, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->postToHandler(ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 3212
    return-void
.end method

.method public playFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 3216
    const/16 v0, 0xa

    invoke-virtual {p0, v0, p1, p2}, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->postToHandler(ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 3217
    return-void
.end method

.method postToHandler(I)V
    .locals 2
    .param p1, "what"    # I

    .line 3417
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v0}, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->postToHandler(ILjava/lang/Object;ILandroid/os/Bundle;)V

    .line 3418
    return-void
.end method

.method postToHandler(II)V
    .locals 1
    .param p1, "what"    # I
    .param p2, "arg1"    # I

    .line 3421
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, v0}, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->postToHandler(ILjava/lang/Object;ILandroid/os/Bundle;)V

    .line 3422
    return-void
.end method

.method postToHandler(ILjava/lang/Object;)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .line 3425
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->postToHandler(ILjava/lang/Object;ILandroid/os/Bundle;)V

    .line 3426
    return-void
.end method

.method postToHandler(ILjava/lang/Object;ILandroid/os/Bundle;)V
    .locals 7
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "arg1"    # I
    .param p4, "extras"    # Landroid/os/Bundle;

    .line 3433
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->mMediaSessionImplRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase;

    .line 3434
    .local v0, "mediaSessionImpl":Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase;
    if-eqz v0, :cond_0

    .line 3435
    const/4 v4, 0x0

    move-object v1, v0

    move v2, p1

    move v3, p3

    move-object v5, p2

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase;->postToHandler(IIILjava/lang/Object;Landroid/os/Bundle;)V

    .line 3437
    :cond_0
    return-void
.end method

.method postToHandler(ILjava/lang/Object;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 3429
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->postToHandler(ILjava/lang/Object;ILandroid/os/Bundle;)V

    .line 3430
    return-void
.end method

.method public prepare()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3181
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->postToHandler(I)V

    .line 3182
    return-void
.end method

.method public prepareFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "mediaId"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 3186
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1, p2}, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->postToHandler(ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 3187
    return-void
.end method

.method public prepareFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 3191
    const/4 v0, 0x5

    invoke-virtual {p0, v0, p1, p2}, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->postToHandler(ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 3192
    return-void
.end method

.method public prepareFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 3196
    const/4 v0, 0x6

    invoke-virtual {p0, v0, p1, p2}, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->postToHandler(ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 3197
    return-void
.end method

.method public previous()V
    .locals 1

    .line 3241
    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->postToHandler(I)V

    .line 3242
    return-void
.end method

.method public rate(Landroidx/media3/session/legacy/RatingCompat;)V
    .locals 1
    .param p1, "rating"    # Landroidx/media3/session/legacy/RatingCompat;

    .line 3261
    const/16 v0, 0x13

    invoke-virtual {p0, v0, p1}, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->postToHandler(ILjava/lang/Object;)V

    .line 3262
    return-void
.end method

.method public rateWithExtras(Landroidx/media3/session/legacy/RatingCompat;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "rating"    # Landroidx/media3/session/legacy/RatingCompat;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 3266
    const/16 v0, 0x1f

    invoke-virtual {p0, v0, p1, p2}, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->postToHandler(ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 3267
    return-void
.end method

.method public registerCallbackListener(Landroidx/media3/session/legacy/IMediaControllerCallback;)V
    .locals 6
    .param p1, "cb"    # Landroidx/media3/session/legacy/IMediaControllerCallback;

    .line 3040
    if-nez p1, :cond_0

    .line 3041
    return-void

    .line 3045
    :cond_0
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->mMediaSessionImplRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase;

    .line 3046
    .local v0, "mediaSessionImpl":Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase;
    if-nez v0, :cond_1

    .line 3048
    :try_start_0
    invoke-interface {p1}, Landroidx/media3/session/legacy/IMediaControllerCallback;->onSessionDestroyed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3051
    goto :goto_0

    .line 3049
    :catch_0
    move-exception v1

    .line 3052
    :goto_0
    return-void

    .line 3054
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 3055
    .local v1, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 3056
    .local v2, "callingUid":I
    new-instance v3, Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;

    .line 3058
    invoke-virtual {v0, v2}, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1, v2}, Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;-><init>(Ljava/lang/String;II)V

    .line 3059
    .local v3, "info":Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;
    iget-object v4, v0, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase;->mControllerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, p1, v3}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    .line 3061
    iget-object v4, v0, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 3062
    :try_start_1
    iget-object v5, v0, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase;->mRegistrationCallbackHandler:Landroidx/media3/session/legacy/MediaSessionCompat$RegistrationCallbackHandler;

    if-eqz v5, :cond_2

    .line 3063
    iget-object v5, v0, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase;->mRegistrationCallbackHandler:Landroidx/media3/session/legacy/MediaSessionCompat$RegistrationCallbackHandler;

    invoke-virtual {v5, v1, v2}, Landroidx/media3/session/legacy/MediaSessionCompat$RegistrationCallbackHandler;->postCallbackRegistered(II)V

    .line 3066
    :cond_2
    monitor-exit v4

    .line 3067
    return-void

    .line 3066
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5
.end method

.method public removeQueueItem(Landroidx/media3/session/legacy/MediaDescriptionCompat;)V
    .locals 1
    .param p1, "description"    # Landroidx/media3/session/legacy/MediaDescriptionCompat;

    .line 3347
    const/16 v0, 0x1b

    invoke-virtual {p0, v0, p1}, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->postToHandler(ILjava/lang/Object;)V

    .line 3348
    return-void
.end method

.method public removeQueueItemAt(I)V
    .locals 1
    .param p1, "index"    # I

    .line 3352
    const/16 v0, 0x1c

    invoke-virtual {p0, v0, p1}, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->postToHandler(II)V

    .line 3353
    return-void
.end method

.method public rewind()V
    .locals 1

    .line 3251
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->postToHandler(I)V

    .line 3252
    return-void
.end method

.method public seekTo(J)V
    .locals 2
    .param p1, "pos"    # J

    .line 3256
    const/16 v0, 0x12

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->postToHandler(ILjava/lang/Object;)V

    .line 3257
    return-void
.end method

.method public sendCommand(Ljava/lang/String;Landroid/os/Bundle;Landroidx/media3/session/legacy/MediaSessionCompat$ResultReceiverWrapper;)V
    .locals 2
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "cb"    # Landroidx/media3/session/legacy/MediaSessionCompat$ResultReceiverWrapper;

    .line 3024
    if-nez p1, :cond_0

    .line 3025
    return-void

    .line 3027
    :cond_0
    new-instance v0, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase$Command;

    .line 3029
    if-nez p3, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    iget-object v1, p3, Landroidx/media3/session/legacy/MediaSessionCompat$ResultReceiverWrapper;->mResultReceiver:Landroid/os/ResultReceiver;

    :goto_0
    invoke-direct {v0, p1, p2, v1}, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase$Command;-><init>(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    .line 3027
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->postToHandler(ILjava/lang/Object;)V

    .line 3030
    return-void
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

    .line 3297
    const/16 v0, 0x14

    invoke-virtual {p0, v0, p1, p2}, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->postToHandler(ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 3298
    return-void
.end method

.method public sendMediaButton(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "mediaButton"    # Landroid/view/KeyEvent;

    .line 3034
    const/16 v0, 0x15

    invoke-virtual {p0, v0, p1}, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->postToHandler(ILjava/lang/Object;)V

    .line 3035
    const/4 v0, 0x1

    return v0
.end method

.method public setCaptioningEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .line 3276
    const/16 v0, 0x1d

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->postToHandler(ILjava/lang/Object;)V

    .line 3277
    return-void
.end method

.method public setPlaybackSpeed(F)V
    .locals 2
    .param p1, "speed"    # F

    .line 3271
    const/16 v0, 0x20

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->postToHandler(ILjava/lang/Object;)V

    .line 3272
    return-void
.end method

.method public setRepeatMode(I)V
    .locals 1
    .param p1, "repeatMode"    # I

    .line 3281
    const/16 v0, 0x17

    invoke-virtual {p0, v0, p1}, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->postToHandler(II)V

    .line 3282
    return-void
.end method

.method public setShuffleMode(I)V
    .locals 1
    .param p1, "shuffleMode"    # I

    .line 3291
    const/16 v0, 0x1e

    invoke-virtual {p0, v0, p1}, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->postToHandler(II)V

    .line 3292
    return-void
.end method

.method public setShuffleModeEnabledRemoved(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 3287
    return-void
.end method

.method public setVolumeTo(IILjava/lang/String;)V
    .locals 1
    .param p1, "value"    # I
    .param p2, "flags"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 3173
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->mMediaSessionImplRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase;

    .line 3174
    .local v0, "mediaSessionImpl":Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase;
    if-eqz v0, :cond_0

    .line 3175
    invoke-virtual {v0, p1, p2}, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase;->setVolumeTo(II)V

    .line 3177
    :cond_0
    return-void
.end method

.method public skipToQueueItem(J)V
    .locals 2
    .param p1, "id"    # J

    .line 3221
    const/16 v0, 0xb

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->postToHandler(ILjava/lang/Object;)V

    .line 3222
    return-void
.end method

.method public stop()V
    .locals 1

    .line 3231
    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->postToHandler(I)V

    .line 3232
    return-void
.end method

.method public unregisterCallbackListener(Landroidx/media3/session/legacy/IMediaControllerCallback;)V
    .locals 5
    .param p1, "cb"    # Landroidx/media3/session/legacy/IMediaControllerCallback;

    .line 3071
    if-nez p1, :cond_0

    .line 3072
    return-void

    .line 3074
    :cond_0
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->mMediaSessionImplRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase;

    .line 3075
    .local v0, "mediaSessionImpl":Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase;
    if-nez v0, :cond_1

    .line 3076
    return-void

    .line 3078
    :cond_1
    iget-object v1, v0, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase;->mControllerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 3080
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 3081
    .local v1, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 3082
    .local v2, "callingUid":I
    iget-object v3, v0, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 3083
    :try_start_0
    iget-object v4, v0, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase;->mRegistrationCallbackHandler:Landroidx/media3/session/legacy/MediaSessionCompat$RegistrationCallbackHandler;

    if-eqz v4, :cond_2

    .line 3084
    iget-object v4, v0, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase;->mRegistrationCallbackHandler:Landroidx/media3/session/legacy/MediaSessionCompat$RegistrationCallbackHandler;

    invoke-virtual {v4, v1, v2}, Landroidx/media3/session/legacy/MediaSessionCompat$RegistrationCallbackHandler;->postCallbackUnregistered(II)V

    .line 3087
    :cond_2
    monitor-exit v3

    .line 3088
    return-void

    .line 3087
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method
