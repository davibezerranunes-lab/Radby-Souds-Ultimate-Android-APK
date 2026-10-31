.class public final Lcom/muzk/app/ui/library/LibraryFragment$mediaObserver$1;
.super Landroid/database/ContentObserver;
.source "LibraryFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muzk/app/ui/library/LibraryFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/muzk/app/ui/library/LibraryFragment$mediaObserver$1",
        "Landroid/database/ContentObserver;",
        "onChange",
        "",
        "selfChange",
        "",
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
.field final synthetic this$0:Lcom/muzk/app/ui/library/LibraryFragment;


# direct methods
.method constructor <init>(Lcom/muzk/app/ui/library/LibraryFragment;Landroid/os/Handler;)V
    .locals 0
    .param p1, "$receiver"    # Lcom/muzk/app/ui/library/LibraryFragment;
    .param p2, "$super_call_param$1"    # Landroid/os/Handler;

    iput-object p1, p0, Lcom/muzk/app/ui/library/LibraryFragment$mediaObserver$1;->this$0:Lcom/muzk/app/ui/library/LibraryFragment;

    .line 66
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .line 68
    iget-object v0, p0, Lcom/muzk/app/ui/library/LibraryFragment$mediaObserver$1;->this$0:Lcom/muzk/app/ui/library/LibraryFragment;

    invoke-static {v0}, Lcom/muzk/app/ui/library/LibraryFragment;->access$getVm(Lcom/muzk/app/ui/library/LibraryFragment;)Lcom/muzk/app/ui/library/LibraryViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/muzk/app/ui/library/LibraryViewModel;->getState()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/muzk/app/ui/library/LibraryUiState;

    invoke-virtual {v0}, Lcom/muzk/app/ui/library/LibraryUiState;->getHasPermission()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/muzk/app/ui/library/LibraryFragment$mediaObserver$1;->this$0:Lcom/muzk/app/ui/library/LibraryFragment;

    invoke-static {v0}, Lcom/muzk/app/ui/library/LibraryFragment;->access$getVm(Lcom/muzk/app/ui/library/LibraryFragment;)Lcom/muzk/app/ui/library/LibraryViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/muzk/app/ui/library/LibraryViewModel;->reload()Lkotlinx/coroutines/Job;

    .line 69
    :cond_0
    return-void
.end method
