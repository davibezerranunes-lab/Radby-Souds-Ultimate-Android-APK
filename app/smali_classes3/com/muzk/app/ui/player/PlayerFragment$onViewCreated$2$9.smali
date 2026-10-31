.class public final Lcom/muzk/app/ui/player/PlayerFragment$onViewCreated$2$9;
.super Ljava/lang/Object;
.source "PlayerFragment.kt"

# interfaces
.implements Lcom/google/android/material/slider/Slider$OnSliderTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muzk/app/ui/player/PlayerFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "com/muzk/app/ui/player/PlayerFragment$onViewCreated$2$9",
        "Lcom/google/android/material/slider/Slider$OnSliderTouchListener;",
        "onStartTrackingTouch",
        "",
        "slider",
        "Lcom/google/android/material/slider/Slider;",
        "onStopTrackingTouch",
        "app_debug"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/muzk/app/ui/player/PlayerFragment;


# direct methods
.method constructor <init>(Lcom/muzk/app/ui/player/PlayerFragment;)V
    .locals 0
    .param p1, "$receiver"    # Lcom/muzk/app/ui/player/PlayerFragment;

    iput-object p1, p0, Lcom/muzk/app/ui/player/PlayerFragment$onViewCreated$2$9;->this$0:Lcom/muzk/app/ui/player/PlayerFragment;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStartTrackingTouch(Lcom/google/android/material/slider/Slider;)V
    .locals 2
    .param p1, "slider"    # Lcom/google/android/material/slider/Slider;

    const-string v0, "slider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/muzk/app/ui/player/PlayerFragment$onViewCreated$2$9;->this$0:Lcom/muzk/app/ui/player/PlayerFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/muzk/app/ui/player/PlayerFragment;->access$setDragging$p(Lcom/muzk/app/ui/player/PlayerFragment;Z)V

    return-void
.end method

.method public bridge synthetic onStartTrackingTouch(Ljava/lang/Object;)V
    .locals 1
    .param p1, "p0"    # Ljava/lang/Object;

    .line 67
    move-object v0, p1

    check-cast v0, Lcom/google/android/material/slider/Slider;

    invoke-virtual {p0, v0}, Lcom/muzk/app/ui/player/PlayerFragment$onViewCreated$2$9;->onStartTrackingTouch(Lcom/google/android/material/slider/Slider;)V

    return-void
.end method

.method public onStopTrackingTouch(Lcom/google/android/material/slider/Slider;)V
    .locals 3
    .param p1, "slider"    # Lcom/google/android/material/slider/Slider;

    const-string v0, "slider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/muzk/app/ui/player/PlayerFragment$onViewCreated$2$9;->this$0:Lcom/muzk/app/ui/player/PlayerFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/muzk/app/ui/player/PlayerFragment;->access$setDragging$p(Lcom/muzk/app/ui/player/PlayerFragment;Z)V

    .line 71
    iget-object v0, p0, Lcom/muzk/app/ui/player/PlayerFragment$onViewCreated$2$9;->this$0:Lcom/muzk/app/ui/player/PlayerFragment;

    invoke-static {v0}, Lcom/muzk/app/ui/player/PlayerFragment;->access$getPlayer(Lcom/muzk/app/ui/player/PlayerFragment;)Lcom/muzk/app/playback/PlayerViewModel;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/material/slider/Slider;->getValue()F

    move-result v1

    float-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/muzk/app/playback/PlayerViewModel;->seekTo(J)V

    .line 72
    return-void
.end method

.method public bridge synthetic onStopTrackingTouch(Ljava/lang/Object;)V
    .locals 1
    .param p1, "p0"    # Ljava/lang/Object;

    .line 67
    move-object v0, p1

    check-cast v0, Lcom/google/android/material/slider/Slider;

    invoke-virtual {p0, v0}, Lcom/muzk/app/ui/player/PlayerFragment$onViewCreated$2$9;->onStopTrackingTouch(Lcom/google/android/material/slider/Slider;)V

    return-void
.end method
