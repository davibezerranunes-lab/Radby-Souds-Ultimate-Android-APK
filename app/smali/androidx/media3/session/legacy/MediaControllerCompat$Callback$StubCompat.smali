.class Landroidx/media3/session/legacy/MediaControllerCompat$Callback$StubCompat;
.super Landroidx/media3/session/legacy/IMediaControllerCallback$Stub;
.source "MediaControllerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/session/legacy/MediaControllerCompat$Callback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StubCompat"
.end annotation


# instance fields
.field private final mCallback:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/media3/session/legacy/MediaControllerCompat$Callback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/media3/session/legacy/MediaControllerCompat$Callback;)V
    .locals 1
    .param p1, "callback"    # Landroidx/media3/session/legacy/MediaControllerCompat$Callback;

    .line 884
    invoke-direct {p0}, Landroidx/media3/session/legacy/IMediaControllerCallback$Stub;-><init>()V

    .line 885
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/media3/session/legacy/MediaControllerCompat$Callback$StubCompat;->mCallback:Ljava/lang/ref/WeakReference;

    .line 886
    return-void
.end method


# virtual methods
.method public onCaptioningEnabledChanged(Z)V
    .locals 4
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 939
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaControllerCompat$Callback$StubCompat;->mCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/session/legacy/MediaControllerCompat$Callback;

    .line 940
    .local v0, "callback":Landroidx/media3/session/legacy/MediaControllerCompat$Callback;
    if-eqz v0, :cond_0

    .line 941
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0xb

    invoke-virtual {v0, v3, v1, v2}, Landroidx/media3/session/legacy/MediaControllerCompat$Callback;->postToHandler(ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 943
    :cond_0
    return-void
.end method

.method public onEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 890
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaControllerCompat$Callback$StubCompat;->mCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/session/legacy/MediaControllerCompat$Callback;

    .line 891
    .local v0, "callback":Landroidx/media3/session/legacy/MediaControllerCompat$Callback;
    if-eqz v0, :cond_0

    .line 892
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p2}, Landroidx/media3/session/legacy/MediaControllerCompat$Callback;->postToHandler(ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 894
    :cond_0
    return-void
.end method

.method public onExtrasChanged(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 968
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaControllerCompat$Callback$StubCompat;->mCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/session/legacy/MediaControllerCompat$Callback;

    .line 969
    .local v0, "callback":Landroidx/media3/session/legacy/MediaControllerCompat$Callback;
    if-eqz v0, :cond_0

    .line 970
    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroidx/media3/session/legacy/MediaControllerCompat$Callback;->postToHandler(ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 972
    :cond_0
    return-void
.end method

.method public onMetadataChanged(Landroidx/media3/session/legacy/MediaMetadataCompat;)V
    .locals 3
    .param p1, "metadata"    # Landroidx/media3/session/legacy/MediaMetadataCompat;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 915
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaControllerCompat$Callback$StubCompat;->mCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/session/legacy/MediaControllerCompat$Callback;

    .line 916
    .local v0, "callback":Landroidx/media3/session/legacy/MediaControllerCompat$Callback;
    if-eqz v0, :cond_0

    .line 917
    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroidx/media3/session/legacy/MediaControllerCompat$Callback;->postToHandler(ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 919
    :cond_0
    return-void
.end method

.method public onPlaybackStateChanged(Landroidx/media3/session/legacy/PlaybackStateCompat;)V
    .locals 3
    .param p1, "state"    # Landroidx/media3/session/legacy/PlaybackStateCompat;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 907
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaControllerCompat$Callback$StubCompat;->mCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/session/legacy/MediaControllerCompat$Callback;

    .line 908
    .local v0, "callback":Landroidx/media3/session/legacy/MediaControllerCompat$Callback;
    if-eqz v0, :cond_0

    .line 909
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroidx/media3/session/legacy/MediaControllerCompat$Callback;->postToHandler(ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 911
    :cond_0
    return-void
.end method

.method public onQueueChanged(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/session/legacy/MediaSessionCompat$QueueItem;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 923
    .local p1, "queue":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/session/legacy/MediaSessionCompat$QueueItem;>;"
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaControllerCompat$Callback$StubCompat;->mCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/session/legacy/MediaControllerCompat$Callback;

    .line 924
    .local v0, "callback":Landroidx/media3/session/legacy/MediaControllerCompat$Callback;
    if-eqz v0, :cond_0

    .line 925
    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroidx/media3/session/legacy/MediaControllerCompat$Callback;->postToHandler(ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 927
    :cond_0
    return-void
.end method

.method public onQueueTitleChanged(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "title"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 931
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaControllerCompat$Callback$StubCompat;->mCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/session/legacy/MediaControllerCompat$Callback;

    .line 932
    .local v0, "callback":Landroidx/media3/session/legacy/MediaControllerCompat$Callback;
    if-eqz v0, :cond_0

    .line 933
    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroidx/media3/session/legacy/MediaControllerCompat$Callback;->postToHandler(ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 935
    :cond_0
    return-void
.end method

.method public onRepeatModeChanged(I)V
    .locals 4
    .param p1, "repeatMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 947
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaControllerCompat$Callback$StubCompat;->mCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/session/legacy/MediaControllerCompat$Callback;

    .line 948
    .local v0, "callback":Landroidx/media3/session/legacy/MediaControllerCompat$Callback;
    if-eqz v0, :cond_0

    .line 949
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x9

    invoke-virtual {v0, v3, v1, v2}, Landroidx/media3/session/legacy/MediaControllerCompat$Callback;->postToHandler(ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 951
    :cond_0
    return-void
.end method

.method public onSessionDestroyed()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 898
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaControllerCompat$Callback$StubCompat;->mCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/session/legacy/MediaControllerCompat$Callback;

    .line 899
    .local v0, "callback":Landroidx/media3/session/legacy/MediaControllerCompat$Callback;
    if-eqz v0, :cond_0

    .line 900
    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroidx/media3/session/legacy/MediaControllerCompat$Callback;->postToHandler(ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 902
    :cond_0
    return-void
.end method

.method public onSessionReady()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 994
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaControllerCompat$Callback$StubCompat;->mCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/session/legacy/MediaControllerCompat$Callback;

    .line 995
    .local v0, "callback":Landroidx/media3/session/legacy/MediaControllerCompat$Callback;
    if-eqz v0, :cond_0

    .line 996
    const/16 v1, 0xd

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroidx/media3/session/legacy/MediaControllerCompat$Callback;->postToHandler(ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 998
    :cond_0
    return-void
.end method

.method public onShuffleModeChanged(I)V
    .locals 4
    .param p1, "shuffleMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 960
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaControllerCompat$Callback$StubCompat;->mCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/session/legacy/MediaControllerCompat$Callback;

    .line 961
    .local v0, "callback":Landroidx/media3/session/legacy/MediaControllerCompat$Callback;
    if-eqz v0, :cond_0

    .line 962
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0xc

    invoke-virtual {v0, v3, v1, v2}, Landroidx/media3/session/legacy/MediaControllerCompat$Callback;->postToHandler(ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 964
    :cond_0
    return-void
.end method

.method public onShuffleModeChangedRemoved(Z)V
    .locals 0
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 956
    return-void
.end method

.method public onVolumeInfoChanged(Landroidx/media3/session/legacy/ParcelableVolumeInfo;)V
    .locals 9
    .param p1, "info"    # Landroidx/media3/session/legacy/ParcelableVolumeInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 976
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaControllerCompat$Callback$StubCompat;->mCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/session/legacy/MediaControllerCompat$Callback;

    .line 977
    .local v0, "callback":Landroidx/media3/session/legacy/MediaControllerCompat$Callback;
    if-eqz v0, :cond_1

    .line 978
    const/4 v1, 0x0

    .line 979
    .local v1, "pi":Landroidx/media3/session/legacy/MediaControllerCompat$PlaybackInfo;
    if-eqz p1, :cond_0

    .line 980
    new-instance v8, Landroidx/media3/session/legacy/MediaControllerCompat$PlaybackInfo;

    iget v3, p1, Landroidx/media3/session/legacy/ParcelableVolumeInfo;->volumeType:I

    iget v4, p1, Landroidx/media3/session/legacy/ParcelableVolumeInfo;->audioStream:I

    iget v5, p1, Landroidx/media3/session/legacy/ParcelableVolumeInfo;->controlType:I

    iget v6, p1, Landroidx/media3/session/legacy/ParcelableVolumeInfo;->maxVolume:I

    iget v7, p1, Landroidx/media3/session/legacy/ParcelableVolumeInfo;->currentVolume:I

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Landroidx/media3/session/legacy/MediaControllerCompat$PlaybackInfo;-><init>(IIIII)V

    move-object v1, v8

    .line 988
    :cond_0
    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroidx/media3/session/legacy/MediaControllerCompat$Callback;->postToHandler(ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 990
    .end local v1    # "pi":Landroidx/media3/session/legacy/MediaControllerCompat$PlaybackInfo;
    :cond_1
    return-void
.end method
