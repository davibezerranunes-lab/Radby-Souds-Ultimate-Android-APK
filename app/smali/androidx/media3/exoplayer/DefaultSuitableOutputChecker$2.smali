.class Landroidx/media3/exoplayer/DefaultSuitableOutputChecker$2;
.super Ljava/lang/Object;
.source "DefaultSuitableOutputChecker.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media3/exoplayer/DefaultSuitableOutputChecker;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media3/exoplayer/DefaultSuitableOutputChecker;

.field final synthetic val$eventHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroidx/media3/exoplayer/DefaultSuitableOutputChecker;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/media3/exoplayer/DefaultSuitableOutputChecker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 55
    iput-object p1, p0, Landroidx/media3/exoplayer/DefaultSuitableOutputChecker$2;->this$0:Landroidx/media3/exoplayer/DefaultSuitableOutputChecker;

    iput-object p2, p0, Landroidx/media3/exoplayer/DefaultSuitableOutputChecker$2;->val$eventHandler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "command"    # Ljava/lang/Runnable;

    .line 58
    iget-object v0, p0, Landroidx/media3/exoplayer/DefaultSuitableOutputChecker$2;->val$eventHandler:Landroid/os/Handler;

    invoke-static {v0, p1}, Landroidx/media3/common/util/Util;->postOrRun(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    .line 59
    return-void
.end method
