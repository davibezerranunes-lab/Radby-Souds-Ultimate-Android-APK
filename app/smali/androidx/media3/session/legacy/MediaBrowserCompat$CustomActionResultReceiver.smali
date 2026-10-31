.class Landroidx/media3/session/legacy/MediaBrowserCompat$CustomActionResultReceiver;
.super Landroid/support/v4/os/ResultReceiver;
.source "MediaBrowserCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/session/legacy/MediaBrowserCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CustomActionResultReceiver"
.end annotation


# instance fields
.field private final mAction:Ljava/lang/String;

.field private final mCallback:Landroidx/media3/session/legacy/MediaBrowserCompat$CustomActionCallback;

.field private final mExtras:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/os/Bundle;Landroidx/media3/session/legacy/MediaBrowserCompat$CustomActionCallback;Landroid/os/Handler;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;
    .param p3, "callback"    # Landroidx/media3/session/legacy/MediaBrowserCompat$CustomActionCallback;
    .param p4, "handler"    # Landroid/os/Handler;

    .line 2432
    invoke-direct {p0, p4}, Landroid/support/v4/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    .line 2433
    iput-object p1, p0, Landroidx/media3/session/legacy/MediaBrowserCompat$CustomActionResultReceiver;->mAction:Ljava/lang/String;

    .line 2434
    iput-object p2, p0, Landroidx/media3/session/legacy/MediaBrowserCompat$CustomActionResultReceiver;->mExtras:Landroid/os/Bundle;

    .line 2435
    iput-object p3, p0, Landroidx/media3/session/legacy/MediaBrowserCompat$CustomActionResultReceiver;->mCallback:Landroidx/media3/session/legacy/MediaBrowserCompat$CustomActionCallback;

    .line 2436
    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 3
    .param p1, "resultCode"    # I
    .param p2, "resultData"    # Landroid/os/Bundle;

    .line 2440
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaBrowserCompat$CustomActionResultReceiver;->mCallback:Landroidx/media3/session/legacy/MediaBrowserCompat$CustomActionCallback;

    if-nez v0, :cond_0

    .line 2441
    return-void

    .line 2443
    :cond_0
    invoke-static {p2}, Landroidx/media3/session/legacy/MediaSessionCompat;->ensureClassLoader(Landroid/os/Bundle;)V

    .line 2444
    packed-switch p1, :pswitch_data_0

    .line 2455
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown result code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (extras="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/session/legacy/MediaBrowserCompat$CustomActionResultReceiver;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", resultData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaBrowserCompat"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2446
    :pswitch_0
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaBrowserCompat$CustomActionResultReceiver;->mCallback:Landroidx/media3/session/legacy/MediaBrowserCompat$CustomActionCallback;

    iget-object v1, p0, Landroidx/media3/session/legacy/MediaBrowserCompat$CustomActionResultReceiver;->mAction:Ljava/lang/String;

    iget-object v2, p0, Landroidx/media3/session/legacy/MediaBrowserCompat$CustomActionResultReceiver;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2, p2}, Landroidx/media3/session/legacy/MediaBrowserCompat$CustomActionCallback;->onProgressUpdate(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 2447
    goto :goto_0

    .line 2449
    :pswitch_1
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaBrowserCompat$CustomActionResultReceiver;->mCallback:Landroidx/media3/session/legacy/MediaBrowserCompat$CustomActionCallback;

    iget-object v1, p0, Landroidx/media3/session/legacy/MediaBrowserCompat$CustomActionResultReceiver;->mAction:Ljava/lang/String;

    iget-object v2, p0, Landroidx/media3/session/legacy/MediaBrowserCompat$CustomActionResultReceiver;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2, p2}, Landroidx/media3/session/legacy/MediaBrowserCompat$CustomActionCallback;->onResult(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 2450
    goto :goto_0

    .line 2452
    :pswitch_2
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaBrowserCompat$CustomActionResultReceiver;->mCallback:Landroidx/media3/session/legacy/MediaBrowserCompat$CustomActionCallback;

    iget-object v1, p0, Landroidx/media3/session/legacy/MediaBrowserCompat$CustomActionResultReceiver;->mAction:Ljava/lang/String;

    iget-object v2, p0, Landroidx/media3/session/legacy/MediaBrowserCompat$CustomActionResultReceiver;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2, p2}, Landroidx/media3/session/legacy/MediaBrowserCompat$CustomActionCallback;->onError(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 2453
    nop

    .line 2466
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
