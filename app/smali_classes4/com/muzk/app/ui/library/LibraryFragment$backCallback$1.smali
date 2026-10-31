.class public final Lcom/muzk/app/ui/library/LibraryFragment$backCallback$1;
.super Landroidx/activity/OnBackPressedCallback;
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
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "com/muzk/app/ui/library/LibraryFragment$backCallback$1",
        "Landroidx/activity/OnBackPressedCallback;",
        "handleOnBackPressed",
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
.method constructor <init>(Lcom/muzk/app/ui/library/LibraryFragment;)V
    .locals 1
    .param p1, "$receiver"    # Lcom/muzk/app/ui/library/LibraryFragment;

    iput-object p1, p0, Lcom/muzk/app/ui/library/LibraryFragment$backCallback$1;->this$0:Lcom/muzk/app/ui/library/LibraryFragment;

    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/activity/OnBackPressedCallback;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public handleOnBackPressed()V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/muzk/app/ui/library/LibraryFragment$backCallback$1;->this$0:Lcom/muzk/app/ui/library/LibraryFragment;

    invoke-static {v0}, Lcom/muzk/app/ui/library/LibraryFragment;->access$getVm(Lcom/muzk/app/ui/library/LibraryFragment;)Lcom/muzk/app/ui/library/LibraryViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/muzk/app/ui/library/LibraryViewModel;->back()Z

    .line 75
    return-void
.end method
