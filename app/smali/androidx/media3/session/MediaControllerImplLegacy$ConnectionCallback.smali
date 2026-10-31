.class Landroidx/media3/session/MediaControllerImplLegacy$ConnectionCallback;
.super Landroidx/media3/session/legacy/MediaBrowserCompat$ConnectionCallback;
.source "MediaControllerImplLegacy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/session/MediaControllerImplLegacy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectionCallback"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media3/session/MediaControllerImplLegacy;


# direct methods
.method private constructor <init>(Landroidx/media3/session/MediaControllerImplLegacy;)V
    .locals 0

    .line 1808
    iput-object p1, p0, Landroidx/media3/session/MediaControllerImplLegacy$ConnectionCallback;->this$0:Landroidx/media3/session/MediaControllerImplLegacy;

    invoke-direct {p0}, Landroidx/media3/session/legacy/MediaBrowserCompat$ConnectionCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/session/MediaControllerImplLegacy;Landroidx/media3/session/MediaControllerImplLegacy$1;)V
    .locals 0
    .param p1, "x0"    # Landroidx/media3/session/MediaControllerImplLegacy;
    .param p2, "x1"    # Landroidx/media3/session/MediaControllerImplLegacy$1;

    .line 1808
    invoke-direct {p0, p1}, Landroidx/media3/session/MediaControllerImplLegacy$ConnectionCallback;-><init>(Landroidx/media3/session/MediaControllerImplLegacy;)V

    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 3

    .line 1812
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy$ConnectionCallback;->this$0:Landroidx/media3/session/MediaControllerImplLegacy;

    invoke-virtual {v0}, Landroidx/media3/session/MediaControllerImplLegacy;->getBrowserCompat()Landroidx/media3/session/legacy/MediaBrowserCompat;

    move-result-object v0

    .line 1813
    .local v0, "browser":Landroidx/media3/session/legacy/MediaBrowserCompat;
    if-eqz v0, :cond_0

    .line 1814
    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplLegacy$ConnectionCallback;->this$0:Landroidx/media3/session/MediaControllerImplLegacy;

    invoke-virtual {v0}, Landroidx/media3/session/legacy/MediaBrowserCompat;->getSessionToken()Landroidx/media3/session/legacy/MediaSessionCompat$Token;

    move-result-object v2

    invoke-static {v1, v2}, Landroidx/media3/session/MediaControllerImplLegacy;->access$000(Landroidx/media3/session/MediaControllerImplLegacy;Landroidx/media3/session/legacy/MediaSessionCompat$Token;)V

    .line 1816
    :cond_0
    return-void
.end method

.method public onConnectionFailed()V
    .locals 1

    .line 1825
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy$ConnectionCallback;->this$0:Landroidx/media3/session/MediaControllerImplLegacy;

    invoke-virtual {v0}, Landroidx/media3/session/MediaControllerImplLegacy;->getInstance()Landroidx/media3/session/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/session/MediaController;->release()V

    .line 1826
    return-void
.end method

.method public onConnectionSuspended()V
    .locals 1

    .line 1820
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy$ConnectionCallback;->this$0:Landroidx/media3/session/MediaControllerImplLegacy;

    invoke-virtual {v0}, Landroidx/media3/session/MediaControllerImplLegacy;->getInstance()Landroidx/media3/session/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/session/MediaController;->release()V

    .line 1821
    return-void
.end method
