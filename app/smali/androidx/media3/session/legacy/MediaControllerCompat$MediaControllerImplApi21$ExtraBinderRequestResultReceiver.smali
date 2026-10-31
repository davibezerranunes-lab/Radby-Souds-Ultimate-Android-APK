.class Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver;
.super Landroid/os/ResultReceiver;
.source "MediaControllerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImplApi21;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExtraBinderRequestResultReceiver"
.end annotation


# instance fields
.field private mMediaControllerImpl:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImplApi21;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImplApi21;)V
    .locals 1
    .param p1, "mediaControllerImpl"    # Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImplApi21;

    .line 2332
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    .line 2333
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver;->mMediaControllerImpl:Ljava/lang/ref/WeakReference;

    .line 2334
    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 4
    .param p1, "resultCode"    # I
    .param p2, "resultData"    # Landroid/os/Bundle;

    .line 2338
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver;->mMediaControllerImpl:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImplApi21;

    .line 2339
    .local v0, "mediaControllerImpl":Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImplApi21;
    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 2342
    :cond_0
    iget-object v1, v0, Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImplApi21;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2343
    :try_start_0
    iget-object v2, v0, Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImplApi21;->mSessionToken:Landroidx/media3/session/legacy/MediaSessionCompat$Token;

    const-string v3, "android.support.v4.media.session.EXTRA_BINDER"

    .line 2345
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 2344
    invoke-static {v3}, Landroidx/media3/session/legacy/IMediaSession$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/legacy/IMediaSession;

    move-result-object v3

    .line 2343
    invoke-virtual {v2, v3}, Landroidx/media3/session/legacy/MediaSessionCompat$Token;->setExtraBinder(Landroidx/media3/session/legacy/IMediaSession;)V

    .line 2346
    iget-object v2, v0, Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImplApi21;->mSessionToken:Landroidx/media3/session/legacy/MediaSessionCompat$Token;

    const-string v3, "android.support.v4.media.session.SESSION_TOKEN2"

    .line 2347
    invoke-static {p2, v3}, Landroidx/versionedparcelable/ParcelUtils;->getVersionedParcelable(Landroid/os/Bundle;Ljava/lang/String;)Landroidx/versionedparcelable/VersionedParcelable;

    move-result-object v3

    .line 2346
    invoke-virtual {v2, v3}, Landroidx/media3/session/legacy/MediaSessionCompat$Token;->setSession2Token(Landroidx/versionedparcelable/VersionedParcelable;)V

    .line 2349
    invoke-virtual {v0}, Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImplApi21;->processPendingCallbacksLocked()V

    .line 2350
    monitor-exit v1

    .line 2351
    return-void

    .line 2350
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 2340
    :cond_1
    :goto_0
    return-void
.end method
