.class Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi18;
.super Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase;
.source "MediaSessionCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/session/legacy/MediaSessionCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MediaSessionImplApi18"
.end annotation


# static fields
.field private static sIsMbrPendingIntentSupported:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 3680
    const/4 v0, 0x1

    sput-boolean v0, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi18;->sIsMbrPendingIntentSupported:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;Landroid/app/PendingIntent;Landroidx/versionedparcelable/VersionedParcelable;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "mbrComponent"    # Landroid/content/ComponentName;
    .param p4, "mbrIntent"    # Landroid/app/PendingIntent;
    .param p5, "session2Token"    # Landroidx/versionedparcelable/VersionedParcelable;
    .param p6, "sessionInfo"    # Landroid/os/Bundle;

    .line 3689
    invoke-direct/range {p0 .. p6}, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;Landroid/app/PendingIntent;Landroidx/versionedparcelable/VersionedParcelable;Landroid/os/Bundle;)V

    .line 3690
    return-void
.end method


# virtual methods
.method getRccTransportControlFlagsFromActions(J)I
    .locals 5
    .param p1, "actions"    # J

    .line 3731
    invoke-super {p0, p1, p2}, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase;->getRccTransportControlFlagsFromActions(J)I

    move-result v0

    .line 3732
    .local v0, "transportControlFlags":I
    const-wide/16 v1, 0x100

    and-long/2addr v1, p1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 3733
    or-int/lit16 v0, v0, 0x100

    .line 3735
    :cond_0
    return v0
.end method

.method registerMediaButtonEventReceiver(Landroid/app/PendingIntent;Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "mbrIntent"    # Landroid/app/PendingIntent;
    .param p2, "mbrComponent"    # Landroid/content/ComponentName;

    .line 3743
    sget-boolean v0, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi18;->sIsMbrPendingIntentSupported:Z

    if-eqz v0, :cond_0

    .line 3745
    :try_start_0
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi18;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->registerMediaButtonEventReceiver(Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3752
    goto :goto_0

    .line 3746
    :catch_0
    move-exception v0

    .line 3747
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v1, "MediaSessionCompat"

    const-string v2, "Unable to register media button event receiver with PendingIntent, falling back to ComponentName."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3751
    const/4 v1, 0x0

    sput-boolean v1, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi18;->sIsMbrPendingIntentSupported:Z

    .line 3755
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :cond_0
    :goto_0
    sget-boolean v0, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi18;->sIsMbrPendingIntentSupported:Z

    if-nez v0, :cond_1

    .line 3756
    invoke-super {p0, p1, p2}, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase;->registerMediaButtonEventReceiver(Landroid/app/PendingIntent;Landroid/content/ComponentName;)V

    .line 3758
    :cond_1
    return-void
.end method

.method public setCallback(Landroidx/media3/session/legacy/MediaSessionCompat$Callback;Landroid/os/Handler;)V
    .locals 2
    .param p1, "callback"    # Landroidx/media3/session/legacy/MediaSessionCompat$Callback;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 3695
    invoke-super {p0, p1, p2}, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase;->setCallback(Landroidx/media3/session/legacy/MediaSessionCompat$Callback;Landroid/os/Handler;)V

    .line 3696
    if-nez p1, :cond_0

    .line 3697
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi18;->mRcc:Landroid/media/RemoteControlClient;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/RemoteControlClient;->setPlaybackPositionUpdateListener(Landroid/media/RemoteControlClient$OnPlaybackPositionUpdateListener;)V

    goto :goto_0

    .line 3699
    :cond_0
    new-instance v0, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi18$1;

    invoke-direct {v0, p0}, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi18$1;-><init>(Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi18;)V

    .line 3706
    .local v0, "listener":Landroid/media/RemoteControlClient$OnPlaybackPositionUpdateListener;
    iget-object v1, p0, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi18;->mRcc:Landroid/media/RemoteControlClient;

    invoke-virtual {v1, v0}, Landroid/media/RemoteControlClient;->setPlaybackPositionUpdateListener(Landroid/media/RemoteControlClient$OnPlaybackPositionUpdateListener;)V

    .line 3708
    .end local v0    # "listener":Landroid/media/RemoteControlClient$OnPlaybackPositionUpdateListener;
    :goto_0
    return-void
.end method

.method setRccState(Landroidx/media3/session/legacy/PlaybackStateCompat;)V
    .locals 11
    .param p1, "state"    # Landroidx/media3/session/legacy/PlaybackStateCompat;

    .line 3712
    invoke-virtual {p1}, Landroidx/media3/session/legacy/PlaybackStateCompat;->getPosition()J

    move-result-wide v0

    .line 3713
    .local v0, "position":J
    invoke-virtual {p1}, Landroidx/media3/session/legacy/PlaybackStateCompat;->getPlaybackSpeed()F

    move-result v2

    .line 3714
    .local v2, "speed":F
    invoke-virtual {p1}, Landroidx/media3/session/legacy/PlaybackStateCompat;->getLastPositionUpdateTime()J

    move-result-wide v3

    .line 3715
    .local v3, "updateTime":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 3716
    .local v5, "currTime":J
    invoke-virtual {p1}, Landroidx/media3/session/legacy/PlaybackStateCompat;->getState()I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_1

    const-wide/16 v7, 0x0

    cmp-long v9, v0, v7

    if-lez v9, :cond_1

    .line 3717
    const-wide/16 v9, 0x0

    .line 3718
    .local v9, "diff":J
    cmp-long v7, v3, v7

    if-lez v7, :cond_0

    .line 3719
    sub-long v9, v5, v3

    .line 3720
    const/4 v7, 0x0

    cmpl-float v7, v2, v7

    if-lez v7, :cond_0

    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v7, v2, v7

    if-eqz v7, :cond_0

    .line 3721
    long-to-float v7, v9

    mul-float/2addr v7, v2

    float-to-long v9, v7

    .line 3724
    :cond_0
    add-long/2addr v0, v9

    .line 3726
    .end local v9    # "diff":J
    :cond_1
    iget-object v7, p0, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi18;->mRcc:Landroid/media/RemoteControlClient;

    invoke-virtual {p1}, Landroidx/media3/session/legacy/PlaybackStateCompat;->getState()I

    move-result v8

    invoke-virtual {p0, v8}, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi18;->getRccStateFromState(I)I

    move-result v8

    invoke-virtual {v7, v8, v0, v1, v2}, Landroid/media/RemoteControlClient;->setPlaybackState(IJF)V

    .line 3727
    return-void
.end method

.method unregisterMediaButtonEventReceiver(Landroid/app/PendingIntent;Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "mbrIntent"    # Landroid/app/PendingIntent;
    .param p2, "mbrComponent"    # Landroid/content/ComponentName;

    .line 3762
    sget-boolean v0, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi18;->sIsMbrPendingIntentSupported:Z

    if-eqz v0, :cond_0

    .line 3763
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi18;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->unregisterMediaButtonEventReceiver(Landroid/app/PendingIntent;)V

    goto :goto_0

    .line 3765
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase;->unregisterMediaButtonEventReceiver(Landroid/app/PendingIntent;Landroid/content/ComponentName;)V

    .line 3767
    :goto_0
    return-void
.end method
