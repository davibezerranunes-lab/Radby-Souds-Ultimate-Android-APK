.class final Landroidx/media3/session/MediaSessionLegacyStub$MediaButtonReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MediaSessionLegacyStub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/session/MediaSessionLegacyStub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MediaButtonReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media3/session/MediaSessionLegacyStub;


# direct methods
.method private constructor <init>(Landroidx/media3/session/MediaSessionLegacyStub;)V
    .locals 0

    .line 1480
    iput-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub$MediaButtonReceiver;->this$0:Landroidx/media3/session/MediaSessionLegacyStub;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/session/MediaSessionLegacyStub;Landroidx/media3/session/MediaSessionLegacyStub$1;)V
    .locals 0
    .param p1, "x0"    # Landroidx/media3/session/MediaSessionLegacyStub;
    .param p2, "x1"    # Landroidx/media3/session/MediaSessionLegacyStub$1;

    .line 1480
    invoke-direct {p0, p1}, Landroidx/media3/session/MediaSessionLegacyStub$MediaButtonReceiver;-><init>(Landroidx/media3/session/MediaSessionLegacyStub;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 1484
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.MEDIA_BUTTON"

    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1485
    return-void

    .line 1487
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 1488
    .local v0, "sessionUri":Landroid/net/Uri;
    invoke-static {v0, v0}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1489
    return-void

    .line 1491
    :cond_1
    const-string v1, "android.intent.extra.KEY_EVENT"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/view/KeyEvent;

    .line 1492
    .local v1, "keyEvent":Landroid/view/KeyEvent;
    if-nez v1, :cond_2

    .line 1493
    return-void

    .line 1495
    :cond_2
    iget-object v2, p0, Landroidx/media3/session/MediaSessionLegacyStub$MediaButtonReceiver;->this$0:Landroidx/media3/session/MediaSessionLegacyStub;

    invoke-static {v2}, Landroidx/media3/session/MediaSessionLegacyStub;->access$300(Landroidx/media3/session/MediaSessionLegacyStub;)Landroidx/media3/session/legacy/MediaSessionCompat;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/media3/session/legacy/MediaSessionCompat;->getController()Landroidx/media3/session/legacy/MediaControllerCompat;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/media3/session/legacy/MediaControllerCompat;->dispatchMediaButtonEvent(Landroid/view/KeyEvent;)Z

    .line 1496
    return-void
.end method
