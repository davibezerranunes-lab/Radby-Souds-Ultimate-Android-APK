.class Landroidx/media3/session/MediaControllerHolder;
.super Lcom/google/common/util/concurrent/AbstractFuture;
.source "MediaControllerHolder.java"

# interfaces
.implements Landroidx/media3/session/MediaController$ConnectionCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroidx/media3/session/MediaController;",
        ">",
        "Lcom/google/common/util/concurrent/AbstractFuture<",
        "TT;>;",
        "Landroidx/media3/session/MediaController$ConnectionCallback;"
    }
.end annotation


# instance fields
.field private accepted:Z

.field private controller:Landroidx/media3/session/MediaController;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 1
    .param p1, "looper"    # Landroid/os/Looper;

    .line 32
    .local p0, "this":Landroidx/media3/session/MediaControllerHolder;, "Landroidx/media3/session/MediaControllerHolder<TT;>;"
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractFuture;-><init>()V

    .line 33
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroidx/media3/session/MediaControllerHolder;->handler:Landroid/os/Handler;

    .line 34
    return-void
.end method

.method private maybeSetException()V
    .locals 2

    .line 67
    .local p0, "this":Landroidx/media3/session/MediaControllerHolder;, "Landroidx/media3/session/MediaControllerHolder<TT;>;"
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Session rejected the connection request."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroidx/media3/session/MediaControllerHolder;->setException(Ljava/lang/Throwable;)Z

    .line 68
    return-void
.end method

.method private maybeSetFutureResult()V
    .locals 1

    .line 61
    .local p0, "this":Landroidx/media3/session/MediaControllerHolder;, "Landroidx/media3/session/MediaControllerHolder<TT;>;"
    iget-object v0, p0, Landroidx/media3/session/MediaControllerHolder;->controller:Landroidx/media3/session/MediaController;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/media3/session/MediaControllerHolder;->accepted:Z

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Landroidx/media3/session/MediaControllerHolder;->controller:Landroidx/media3/session/MediaController;

    invoke-virtual {p0, v0}, Landroidx/media3/session/MediaControllerHolder;->set(Ljava/lang/Object;)Z

    .line 64
    :cond_0
    return-void
.end method


# virtual methods
.method synthetic lambda$setController$0$androidx-media3-session-MediaControllerHolder(Landroidx/media3/session/MediaController;)V
    .locals 1
    .param p1, "controller"    # Landroidx/media3/session/MediaController;

    .line 42
    .local p0, "this":Landroidx/media3/session/MediaControllerHolder;, "Landroidx/media3/session/MediaControllerHolder<TT;>;"
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerHolder;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {p1}, Landroidx/media3/session/MediaController;->release()V

    .line 45
    :cond_0
    return-void
.end method

.method synthetic lambda$setController$1$androidx-media3-session-MediaControllerHolder(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 46
    .local p0, "this":Landroidx/media3/session/MediaControllerHolder;, "Landroidx/media3/session/MediaControllerHolder<TT;>;"
    iget-object v0, p0, Landroidx/media3/session/MediaControllerHolder;->handler:Landroid/os/Handler;

    invoke-static {v0, p1}, Landroidx/media3/common/util/Util;->postOrRun(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAccepted()V
    .locals 1

    .line 51
    .local p0, "this":Landroidx/media3/session/MediaControllerHolder;, "Landroidx/media3/session/MediaControllerHolder<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/session/MediaControllerHolder;->accepted:Z

    .line 52
    invoke-direct {p0}, Landroidx/media3/session/MediaControllerHolder;->maybeSetFutureResult()V

    .line 53
    return-void
.end method

.method public onRejected()V
    .locals 0

    .line 57
    .local p0, "this":Landroidx/media3/session/MediaControllerHolder;, "Landroidx/media3/session/MediaControllerHolder<TT;>;"
    invoke-direct {p0}, Landroidx/media3/session/MediaControllerHolder;->maybeSetException()V

    .line 58
    return-void
.end method

.method public setController(Landroidx/media3/session/MediaController;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 37
    .local p0, "this":Landroidx/media3/session/MediaControllerHolder;, "Landroidx/media3/session/MediaControllerHolder<TT;>;"
    .local p1, "controller":Landroidx/media3/session/MediaController;, "TT;"
    iput-object p1, p0, Landroidx/media3/session/MediaControllerHolder;->controller:Landroidx/media3/session/MediaController;

    .line 38
    invoke-direct {p0}, Landroidx/media3/session/MediaControllerHolder;->maybeSetFutureResult()V

    .line 40
    new-instance v0, Landroidx/media3/session/MediaControllerHolder$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Landroidx/media3/session/MediaControllerHolder$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/session/MediaControllerHolder;Landroidx/media3/session/MediaController;)V

    new-instance v1, Landroidx/media3/session/MediaControllerHolder$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Landroidx/media3/session/MediaControllerHolder$$ExternalSyntheticLambda1;-><init>(Landroidx/media3/session/MediaControllerHolder;)V

    invoke-virtual {p0, v0, v1}, Landroidx/media3/session/MediaControllerHolder;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 47
    return-void
.end method
