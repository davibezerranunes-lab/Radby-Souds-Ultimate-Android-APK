.class Landroidx/media3/exoplayer/ExoPlayerImplInternal$1;
.super Ljava/lang/Object;
.source "ExoPlayerImplInternal.java"

# interfaces
.implements Landroidx/media3/exoplayer/Renderer$WakeupListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media3/exoplayer/ExoPlayerImplInternal;->enableRenderer(IZJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media3/exoplayer/ExoPlayerImplInternal;


# direct methods
.method constructor <init>(Landroidx/media3/exoplayer/ExoPlayerImplInternal;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    .line 2847
    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$1;->this$0:Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSleep()V
    .locals 2

    .line 2850
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$1;->this$0:Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->access$602(Landroidx/media3/exoplayer/ExoPlayerImplInternal;Z)Z

    .line 2851
    return-void
.end method

.method public onWakeup()V
    .locals 2

    .line 2855
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$1;->this$0:Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    invoke-static {v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->access$700(Landroidx/media3/exoplayer/ExoPlayerImplInternal;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$1;->this$0:Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    invoke-static {v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->access$800(Landroidx/media3/exoplayer/ExoPlayerImplInternal;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2856
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$1;->this$0:Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    invoke-static {v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->access$900(Landroidx/media3/exoplayer/ExoPlayerImplInternal;)Landroidx/media3/common/util/HandlerWrapper;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroidx/media3/common/util/HandlerWrapper;->sendEmptyMessage(I)Z

    .line 2858
    :cond_1
    return-void
.end method
