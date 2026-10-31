.class Landroidx/media3/session/MediaControllerImplBase$FlushCommandQueueHandler;
.super Ljava/lang/Object;
.source "MediaControllerImplBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/session/MediaControllerImplBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlushCommandQueueHandler"
.end annotation


# static fields
.field private static final MSG_FLUSH_COMMAND_QUEUE:I = 0x1


# instance fields
.field private final handler:Landroid/os/Handler;

.field final synthetic this$0:Landroidx/media3/session/MediaControllerImplBase;


# direct methods
.method public static synthetic $r8$lambda$TVKiXTCmsW2hn-6HNXqbaigkfJc(Landroidx/media3/session/MediaControllerImplBase$FlushCommandQueueHandler;Landroid/os/Message;)Z
    .locals 0

    invoke-direct {p0, p1}, Landroidx/media3/session/MediaControllerImplBase$FlushCommandQueueHandler;->handleMessage(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroidx/media3/session/MediaControllerImplBase;Landroid/os/Looper;)V
    .locals 1
    .param p2, "looper"    # Landroid/os/Looper;

    .line 3493
    iput-object p1, p0, Landroidx/media3/session/MediaControllerImplBase$FlushCommandQueueHandler;->this$0:Landroidx/media3/session/MediaControllerImplBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3494
    new-instance p1, Landroid/os/Handler;

    new-instance v0, Landroidx/media3/session/MediaControllerImplBase$FlushCommandQueueHandler$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroidx/media3/session/MediaControllerImplBase$FlushCommandQueueHandler$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/session/MediaControllerImplBase$FlushCommandQueueHandler;)V

    invoke-direct {p1, p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Landroidx/media3/session/MediaControllerImplBase$FlushCommandQueueHandler;->handler:Landroid/os/Handler;

    .line 3495
    return-void
.end method

.method private flushCommandQueue()V
    .locals 3

    .line 3521
    :try_start_0
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase$FlushCommandQueueHandler;->this$0:Landroidx/media3/session/MediaControllerImplBase;

    invoke-static {v0}, Landroidx/media3/session/MediaControllerImplBase;->access$1000(Landroidx/media3/session/MediaControllerImplBase;)Landroidx/media3/session/IMediaSession;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplBase$FlushCommandQueueHandler;->this$0:Landroidx/media3/session/MediaControllerImplBase;

    iget-object v1, v1, Landroidx/media3/session/MediaControllerImplBase;->controllerStub:Landroidx/media3/session/MediaControllerStub;

    invoke-interface {v0, v1}, Landroidx/media3/session/IMediaSession;->flushCommandQueue(Landroidx/media3/session/IMediaController;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3524
    goto :goto_0

    .line 3522
    :catch_0
    move-exception v0

    .line 3523
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MCImplBase"

    const-string v2, "Error in sending flushCommandQueue"

    invoke-static {v1, v2}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3525
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private handleMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 3513
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3514
    invoke-direct {p0}, Landroidx/media3/session/MediaControllerImplBase$FlushCommandQueueHandler;->flushCommandQueue()V

    .line 3516
    :cond_0
    return v1
.end method


# virtual methods
.method public release()V
    .locals 2

    .line 3506
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase$FlushCommandQueueHandler;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3507
    invoke-direct {p0}, Landroidx/media3/session/MediaControllerImplBase$FlushCommandQueueHandler;->flushCommandQueue()V

    .line 3509
    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase$FlushCommandQueueHandler;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 3510
    return-void
.end method

.method public sendFlushCommandQueueMessage()V
    .locals 2

    .line 3498
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase$FlushCommandQueueHandler;->this$0:Landroidx/media3/session/MediaControllerImplBase;

    invoke-static {v0}, Landroidx/media3/session/MediaControllerImplBase;->access$1000(Landroidx/media3/session/MediaControllerImplBase;)Landroidx/media3/session/IMediaSession;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase$FlushCommandQueueHandler;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3501
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase$FlushCommandQueueHandler;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3503
    :cond_0
    return-void
.end method
