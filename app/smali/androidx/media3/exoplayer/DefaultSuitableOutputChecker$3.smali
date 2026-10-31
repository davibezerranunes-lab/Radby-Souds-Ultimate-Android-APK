.class Landroidx/media3/exoplayer/DefaultSuitableOutputChecker$3;
.super Landroid/media/MediaRouter2$ControllerCallback;
.source "DefaultSuitableOutputChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media3/exoplayer/DefaultSuitableOutputChecker;->enable(Landroidx/media3/exoplayer/SuitableOutputChecker$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media3/exoplayer/DefaultSuitableOutputChecker;

.field final synthetic val$callback:Landroidx/media3/exoplayer/SuitableOutputChecker$Callback;


# direct methods
.method constructor <init>(Landroidx/media3/exoplayer/DefaultSuitableOutputChecker;Landroidx/media3/exoplayer/SuitableOutputChecker$Callback;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/media3/exoplayer/DefaultSuitableOutputChecker;

    .line 67
    iput-object p1, p0, Landroidx/media3/exoplayer/DefaultSuitableOutputChecker$3;->this$0:Landroidx/media3/exoplayer/DefaultSuitableOutputChecker;

    iput-object p2, p0, Landroidx/media3/exoplayer/DefaultSuitableOutputChecker$3;->val$callback:Landroidx/media3/exoplayer/SuitableOutputChecker$Callback;

    invoke-direct {p0}, Landroid/media/MediaRouter2$ControllerCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onControllerUpdated(Landroid/media/MediaRouter2$RoutingController;)V
    .locals 2
    .param p1, "controller"    # Landroid/media/MediaRouter2$RoutingController;

    .line 70
    iget-object v0, p0, Landroidx/media3/exoplayer/DefaultSuitableOutputChecker$3;->this$0:Landroidx/media3/exoplayer/DefaultSuitableOutputChecker;

    .line 71
    invoke-virtual {v0}, Landroidx/media3/exoplayer/DefaultSuitableOutputChecker;->isSelectedOutputSuitableForPlayback()Z

    move-result v0

    .line 72
    .local v0, "isCurrentSelectedOutputSuitableForPlayback":Z
    iget-object v1, p0, Landroidx/media3/exoplayer/DefaultSuitableOutputChecker$3;->this$0:Landroidx/media3/exoplayer/DefaultSuitableOutputChecker;

    invoke-static {v1}, Landroidx/media3/exoplayer/DefaultSuitableOutputChecker;->access$000(Landroidx/media3/exoplayer/DefaultSuitableOutputChecker;)Z

    move-result v1

    if-eq v1, v0, :cond_0

    .line 74
    iget-object v1, p0, Landroidx/media3/exoplayer/DefaultSuitableOutputChecker$3;->this$0:Landroidx/media3/exoplayer/DefaultSuitableOutputChecker;

    invoke-static {v1, v0}, Landroidx/media3/exoplayer/DefaultSuitableOutputChecker;->access$002(Landroidx/media3/exoplayer/DefaultSuitableOutputChecker;Z)Z

    .line 76
    iget-object v1, p0, Landroidx/media3/exoplayer/DefaultSuitableOutputChecker$3;->val$callback:Landroidx/media3/exoplayer/SuitableOutputChecker$Callback;

    invoke-interface {v1, v0}, Landroidx/media3/exoplayer/SuitableOutputChecker$Callback;->onSelectedOutputSuitabilityChanged(Z)V

    .line 79
    :cond_0
    return-void
.end method
