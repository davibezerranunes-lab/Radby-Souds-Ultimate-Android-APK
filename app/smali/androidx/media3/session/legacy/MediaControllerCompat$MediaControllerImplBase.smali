.class Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImplBase;
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
    name = "MediaControllerImplBase"
.end annotation


# instance fields
.field private mBinder:Landroidx/media3/session/legacy/IMediaSession;

.field private mSessionInfo:Landroid/os/Bundle;

.field private mTransportControls:Landroidx/media3/session/legacy/MediaControllerCompat$TransportControls;


# direct methods
.method constructor <init>(Landroidx/media3/session/legacy/MediaSessionCompat$Token;)V
    .locals 1
    .param p1, "token"    # Landroidx/media3/session/legacy/MediaSessionCompat$Token;

    .line 1456
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1457
    invoke-virtual {p1}, Landroidx/media3/session/legacy/MediaSessionCompat$Token;->getToken()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    invoke-static {v0}, Landroidx/media3/session/legacy/IMediaSession$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/legacy/IMediaSession;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroidx/media3/session/legacy/IMediaSession;

    .line 1458
    return-void
.end method


# virtual methods
.method public addQueueItem(Landroidx/media3/session/legacy/MediaDescriptionCompat;)V
    .locals 6
    .param p1, "description"    # Landroidx/media3/session/legacy/MediaDescriptionCompat;

    .line 1546
    :try_start_0
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroidx/media3/session/legacy/IMediaSession;

    invoke-interface {v0}, Landroidx/media3/session/legacy/IMediaSession;->getFlags()J

    move-result-wide v0

    .line 1547
    .local v0, "flags":J
    const-wide/16 v2, 0x4

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 1551
    iget-object v2, p0, Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroidx/media3/session/legacy/IMediaSession;

    invoke-interface {v2, p1}, Landroidx/media3/session/legacy/IMediaSession;->addQueueItem(Landroidx/media3/session/legacy/MediaDescriptionCompat;)V

    .line 1554
    .end local v0    # "flags":J
    goto :goto_0

    .line 1548
    .restart local v0    # "flags":J
    :cond_0
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v3, "This session doesn\'t support queue management operations"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .end local p1    # "description":Landroidx/media3/session/legacy/MediaDescriptionCompat;
    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1552
    .end local v0    # "flags":J
    .restart local p1    # "description":Landroidx/media3/session/legacy/MediaDescriptionCompat;
    :catch_0
    move-exception v0

    .line 1553
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaControllerCompat"

    const-string v2, "Dead object in addQueueItem."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1555
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public addQueueItem(Landroidx/media3/session/legacy/MediaDescriptionCompat;I)V
    .locals 6
    .param p1, "description"    # Landroidx/media3/session/legacy/MediaDescriptionCompat;
    .param p2, "index"    # I

    .line 1560
    :try_start_0
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroidx/media3/session/legacy/IMediaSession;

    invoke-interface {v0}, Landroidx/media3/session/legacy/IMediaSession;->getFlags()J

    move-result-wide v0

    .line 1561
    .local v0, "flags":J
    const-wide/16 v2, 0x4

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 1565
    iget-object v2, p0, Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroidx/media3/session/legacy/IMediaSession;

    invoke-interface {v2, p1, p2}, Landroidx/media3/session/legacy/IMediaSession;->addQueueItemAt(Landroidx/media3/session/legacy/MediaDescriptionCompat;I)V

    .line 1568
    .end local v0    # "flags":J
    goto :goto_0

    .line 1562
    .restart local v0    # "flags":J
    :cond_0
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v3, "This session doesn\'t support queue management operations"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .end local p1    # "description":Landroidx/media3/session/legacy/MediaDescriptionCompat;
    .end local p2    # "index":I
    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1566
    .end local v0    # "flags":J
    .restart local p1    # "description":Landroidx/media3/session/legacy/MediaDescriptionCompat;
    .restart local p2    # "index":I
    :catch_0
    move-exception v0

    .line 1567
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaControllerCompat"

    const-string v2, "Dead object in addQueueItemAt."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1569
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public adjustVolume(II)V
    .locals 3
    .param p1, "direction"    # I
    .param p2, "flags"    # I

    .line 1702
    :try_start_0
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroidx/media3/session/legacy/IMediaSession;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Landroidx/media3/session/legacy/IMediaSession;->adjustVolume(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1705
    goto :goto_0

    .line 1703
    :catch_0
    move-exception v0

    .line 1704
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaControllerCompat"

    const-string v2, "Dead object in adjustVolume."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1706
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public dispatchMediaButtonEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 1490
    if-eqz p1, :cond_0

    .line 1494
    :try_start_0
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroidx/media3/session/legacy/IMediaSession;

    invoke-interface {v0, p1}, Landroidx/media3/session/legacy/IMediaSession;->sendMediaButton(Landroid/view/KeyEvent;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1497
    goto :goto_0

    .line 1495
    :catch_0
    move-exception v0

    .line 1496
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaControllerCompat"

    const-string v2, "Dead object in dispatchMediaButtonEvent."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1498
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 1491
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "event may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 3

    .line 1600
    :try_start_0
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroidx/media3/session/legacy/IMediaSession;

    invoke-interface {v0}, Landroidx/media3/session/legacy/IMediaSession;->getExtras()Landroid/os/Bundle;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1601
    :catch_0
    move-exception v0

    .line 1602
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaControllerCompat"

    const-string v2, "Dead object in getExtras."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1604
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFlags()J
    .locals 3

    .line 1650
    :try_start_0
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroidx/media3/session/legacy/IMediaSession;

    invoke-interface {v0}, Landroidx/media3/session/legacy/IMediaSession;->getFlags()J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 1651
    :catch_0
    move-exception v0

    .line 1652
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaControllerCompat"

    const-string v2, "Dead object in getFlags."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1654
    .end local v0    # "e":Landroid/os/RemoteException;
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getMediaController()Ljava/lang/Object;
    .locals 1

    .line 1749
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMetadata()Landroidx/media3/session/legacy/MediaMetadataCompat;
    .locals 3

    .line 1525
    :try_start_0
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroidx/media3/session/legacy/IMediaSession;

    invoke-interface {v0}, Landroidx/media3/session/legacy/IMediaSession;->getMetadata()Landroidx/media3/session/legacy/MediaMetadataCompat;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1526
    :catch_0
    move-exception v0

    .line 1527
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaControllerCompat"

    const-string v2, "Dead object in getMetadata."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1529
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 3

    .line 1727
    :try_start_0
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroidx/media3/session/legacy/IMediaSession;

    invoke-interface {v0}, Landroidx/media3/session/legacy/IMediaSession;->getPackageName()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1728
    :catch_0
    move-exception v0

    .line 1729
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaControllerCompat"

    const-string v2, "Dead object in getPackageName."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1731
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPlaybackInfo()Landroidx/media3/session/legacy/MediaControllerCompat$PlaybackInfo;
    .locals 9

    .line 1661
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroidx/media3/session/legacy/IMediaSession;

    invoke-interface {v1}, Landroidx/media3/session/legacy/IMediaSession;->getVolumeAttributes()Landroidx/media3/session/legacy/ParcelableVolumeInfo;

    move-result-object v1

    .line 1662
    .local v1, "info":Landroidx/media3/session/legacy/ParcelableVolumeInfo;
    if-nez v1, :cond_0

    .line 1663
    return-object v0

    .line 1665
    :cond_0
    new-instance v8, Landroidx/media3/session/legacy/MediaControllerCompat$PlaybackInfo;

    iget v3, v1, Landroidx/media3/session/legacy/ParcelableVolumeInfo;->volumeType:I

    iget v4, v1, Landroidx/media3/session/legacy/ParcelableVolumeInfo;->audioStream:I

    iget v5, v1, Landroidx/media3/session/legacy/ParcelableVolumeInfo;->controlType:I

    iget v6, v1, Landroidx/media3/session/legacy/ParcelableVolumeInfo;->maxVolume:I

    iget v7, v1, Landroidx/media3/session/legacy/ParcelableVolumeInfo;->currentVolume:I

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Landroidx/media3/session/legacy/MediaControllerCompat$PlaybackInfo;-><init>(IIIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v8

    .line 1672
    .local v0, "pi":Landroidx/media3/session/legacy/MediaControllerCompat$PlaybackInfo;
    return-object v0

    .line 1673
    .end local v0    # "pi":Landroidx/media3/session/legacy/MediaControllerCompat$PlaybackInfo;
    .end local v1    # "info":Landroidx/media3/session/legacy/ParcelableVolumeInfo;
    :catch_0
    move-exception v1

    .line 1674
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "MediaControllerCompat"

    const-string v3, "Dead object in getPlaybackInfo."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1676
    .end local v1    # "e":Landroid/os/RemoteException;
    return-object v0
.end method

.method public getPlaybackState()Landroidx/media3/session/legacy/PlaybackStateCompat;
    .locals 3

    .line 1514
    :try_start_0
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroidx/media3/session/legacy/IMediaSession;

    invoke-interface {v0}, Landroidx/media3/session/legacy/IMediaSession;->getPlaybackState()Landroidx/media3/session/legacy/PlaybackStateCompat;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1515
    :catch_0
    move-exception v0

    .line 1516
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaControllerCompat"

    const-string v2, "Dead object in getPlaybackState."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1518
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return-object v0
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

    .line 1536
    :try_start_0
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroidx/media3/session/legacy/IMediaSession;

    invoke-interface {v0}, Landroidx/media3/session/legacy/IMediaSession;->getQueue()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1537
    :catch_0
    move-exception v0

    .line 1538
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaControllerCompat"

    const-string v2, "Dead object in getQueue."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1540
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public getQueueTitle()Ljava/lang/CharSequence;
    .locals 3

    .line 1589
    :try_start_0
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroidx/media3/session/legacy/IMediaSession;

    invoke-interface {v0}, Landroidx/media3/session/legacy/IMediaSession;->getQueueTitle()Ljava/lang/CharSequence;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1590
    :catch_0
    move-exception v0

    .line 1591
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaControllerCompat"

    const-string v2, "Dead object in getQueueTitle."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1593
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRatingType()I
    .locals 3

    .line 1610
    :try_start_0
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroidx/media3/session/legacy/IMediaSession;

    invoke-interface {v0}, Landroidx/media3/session/legacy/IMediaSession;->getRatingType()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1611
    :catch_0
    move-exception v0

    .line 1612
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaControllerCompat"

    const-string v2, "Dead object in getRatingType."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1614
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public getRepeatMode()I
    .locals 3

    .line 1630
    :try_start_0
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroidx/media3/session/legacy/IMediaSession;

    invoke-interface {v0}, Landroidx/media3/session/legacy/IMediaSession;->getRepeatMode()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1631
    :catch_0
    move-exception v0

    .line 1632
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaControllerCompat"

    const-string v2, "Dead object in getRepeatMode."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1634
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, -0x1

    return v0
.end method

.method public getSessionActivity()Landroid/app/PendingIntent;
    .locals 3

    .line 1683
    :try_start_0
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroidx/media3/session/legacy/IMediaSession;

    invoke-interface {v0}, Landroidx/media3/session/legacy/IMediaSession;->getLaunchPendingIntent()Landroid/app/PendingIntent;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1684
    :catch_0
    move-exception v0

    .line 1685
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaControllerCompat"

    const-string v2, "Dead object in getSessionActivity."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1687
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSessionInfo()Landroid/os/Bundle;
    .locals 3

    .line 1737
    :try_start_0
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroidx/media3/session/legacy/IMediaSession;

    invoke-interface {v0}, Landroidx/media3/session/legacy/IMediaSession;->getSessionInfo()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImplBase;->mSessionInfo:Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1740
    goto :goto_0

    .line 1738
    :catch_0
    move-exception v0

    .line 1739
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaControllerCompat"

    const-string v2, "Dead object in getSessionInfo."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1742
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImplBase;->mSessionInfo:Landroid/os/Bundle;

    invoke-static {v0}, Landroidx/media3/session/legacy/MediaSessionCompat;->unparcelWithClassLoader(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImplBase;->mSessionInfo:Landroid/os/Bundle;

    .line 1743
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImplBase;->mSessionInfo:Landroid/os/Bundle;

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    goto :goto_1

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p0, Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImplBase;->mSessionInfo:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    :goto_1
    return-object v0
.end method

.method public getShuffleMode()I
    .locals 3

    .line 1640
    :try_start_0
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroidx/media3/session/legacy/IMediaSession;

    invoke-interface {v0}, Landroidx/media3/session/legacy/IMediaSession;->getShuffleMode()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1641
    :catch_0
    move-exception v0

    .line 1642
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaControllerCompat"

    const-string v2, "Dead object in getShuffleMode."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1644
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, -0x1

    return v0
.end method

.method public getTransportControls()Landroidx/media3/session/legacy/MediaControllerCompat$TransportControls;
    .locals 2

    .line 1503
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImplBase;->mTransportControls:Landroidx/media3/session/legacy/MediaControllerCompat$TransportControls;

    if-nez v0, :cond_0

    .line 1504
    new-instance v0, Landroidx/media3/session/legacy/MediaControllerCompat$TransportControlsBase;

    iget-object v1, p0, Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroidx/media3/session/legacy/IMediaSession;

    invoke-direct {v0, v1}, Landroidx/media3/session/legacy/MediaControllerCompat$TransportControlsBase;-><init>(Landroidx/media3/session/legacy/IMediaSession;)V

    iput-object v0, p0, Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImplBase;->mTransportControls:Landroidx/media3/session/legacy/MediaControllerCompat$TransportControls;

    .line 1507
    :cond_0
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImplBase;->mTransportControls:Landroidx/media3/session/legacy/MediaControllerCompat$TransportControls;

    return-object v0
.end method

.method public isCaptioningEnabled()Z
    .locals 3

    .line 1620
    :try_start_0
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroidx/media3/session/legacy/IMediaSession;

    invoke-interface {v0}, Landroidx/media3/session/legacy/IMediaSession;->isCaptioningEnabled()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1621
    :catch_0
    move-exception v0

    .line 1622
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaControllerCompat"

    const-string v2, "Dead object in isCaptioningEnabled."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1624
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public isSessionReady()Z
    .locals 1

    .line 1720
    const/4 v0, 0x1

    return v0
.end method

.method public registerCallback(Landroidx/media3/session/legacy/MediaControllerCompat$Callback;Landroid/os/Handler;)V
    .locals 4
    .param p1, "callback"    # Landroidx/media3/session/legacy/MediaControllerCompat$Callback;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 1462
    if-eqz p1, :cond_0

    .line 1466
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroidx/media3/session/legacy/IMediaSession;

    invoke-interface {v1}, Landroidx/media3/session/legacy/IMediaSession;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 1467
    iget-object v1, p0, Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroidx/media3/session/legacy/IMediaSession;

    iget-object v2, p1, Landroidx/media3/session/legacy/MediaControllerCompat$Callback;->mIControllerCallback:Landroidx/media3/session/legacy/IMediaControllerCallback;

    invoke-static {v2}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/session/legacy/IMediaControllerCallback;

    invoke-interface {v1, v2}, Landroidx/media3/session/legacy/IMediaSession;->registerCallbackListener(Landroidx/media3/session/legacy/IMediaControllerCallback;)V

    .line 1468
    const/16 v1, 0xd

    invoke-virtual {p1, v1, v0, v0}, Landroidx/media3/session/legacy/MediaControllerCompat$Callback;->postToHandler(ILjava/lang/Object;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1472
    goto :goto_0

    .line 1469
    :catch_0
    move-exception v1

    .line 1470
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "MediaControllerCompat"

    const-string v3, "Dead object in registerCallback."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1471
    const/16 v2, 0x8

    invoke-virtual {p1, v2, v0, v0}, Landroidx/media3/session/legacy/MediaControllerCompat$Callback;->postToHandler(ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 1473
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 1463
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeQueueItem(Landroidx/media3/session/legacy/MediaDescriptionCompat;)V
    .locals 6
    .param p1, "description"    # Landroidx/media3/session/legacy/MediaDescriptionCompat;

    .line 1574
    :try_start_0
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroidx/media3/session/legacy/IMediaSession;

    invoke-interface {v0}, Landroidx/media3/session/legacy/IMediaSession;->getFlags()J

    move-result-wide v0

    .line 1575
    .local v0, "flags":J
    const-wide/16 v2, 0x4

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 1579
    iget-object v2, p0, Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroidx/media3/session/legacy/IMediaSession;

    invoke-interface {v2, p1}, Landroidx/media3/session/legacy/IMediaSession;->removeQueueItem(Landroidx/media3/session/legacy/MediaDescriptionCompat;)V

    .line 1582
    .end local v0    # "flags":J
    goto :goto_0

    .line 1576
    .restart local v0    # "flags":J
    :cond_0
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v3, "This session doesn\'t support queue management operations"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .end local p1    # "description":Landroidx/media3/session/legacy/MediaDescriptionCompat;
    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1580
    .end local v0    # "flags":J
    .restart local p1    # "description":Landroidx/media3/session/legacy/MediaDescriptionCompat;
    :catch_0
    move-exception v0

    .line 1581
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaControllerCompat"

    const-string v2, "Dead object in removeQueueItem."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1583
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public sendCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 3
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "params"    # Landroid/os/Bundle;
    .param p3, "cb"    # Landroid/os/ResultReceiver;

    .line 1711
    :try_start_0
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroidx/media3/session/legacy/IMediaSession;

    .line 1712
    if-nez p3, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Landroidx/media3/session/legacy/MediaSessionCompat$ResultReceiverWrapper;

    invoke-direct {v1, p3}, Landroidx/media3/session/legacy/MediaSessionCompat$ResultReceiverWrapper;-><init>(Landroid/os/ResultReceiver;)V

    .line 1711
    :goto_0
    invoke-interface {v0, p1, p2, v1}, Landroidx/media3/session/legacy/IMediaSession;->sendCommand(Ljava/lang/String;Landroid/os/Bundle;Landroidx/media3/session/legacy/MediaSessionCompat$ResultReceiverWrapper;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1715
    goto :goto_1

    .line 1713
    :catch_0
    move-exception v0

    .line 1714
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaControllerCompat"

    const-string v2, "Dead object in sendCommand."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1716
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method

.method public setVolumeTo(II)V
    .locals 3
    .param p1, "value"    # I
    .param p2, "flags"    # I

    .line 1693
    :try_start_0
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroidx/media3/session/legacy/IMediaSession;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Landroidx/media3/session/legacy/IMediaSession;->setVolumeTo(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1696
    goto :goto_0

    .line 1694
    :catch_0
    move-exception v0

    .line 1695
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaControllerCompat"

    const-string v2, "Dead object in setVolumeTo."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1697
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public unregisterCallback(Landroidx/media3/session/legacy/MediaControllerCompat$Callback;)V
    .locals 3
    .param p1, "callback"    # Landroidx/media3/session/legacy/MediaControllerCompat$Callback;

    .line 1477
    if-eqz p1, :cond_0

    .line 1481
    :try_start_0
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroidx/media3/session/legacy/IMediaSession;

    iget-object v1, p1, Landroidx/media3/session/legacy/MediaControllerCompat$Callback;->mIControllerCallback:Landroidx/media3/session/legacy/IMediaControllerCallback;

    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/session/legacy/IMediaControllerCallback;

    invoke-interface {v0, v1}, Landroidx/media3/session/legacy/IMediaSession;->unregisterCallbackListener(Landroidx/media3/session/legacy/IMediaControllerCallback;)V

    .line 1482
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroidx/media3/session/legacy/IMediaSession;

    invoke-interface {v0}, Landroidx/media3/session/legacy/IMediaSession;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1485
    goto :goto_0

    .line 1483
    :catch_0
    move-exception v0

    .line 1484
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaControllerCompat"

    const-string v2, "Dead object in unregisterCallback."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1486
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 1478
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
