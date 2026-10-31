.class final Lcom/muzk/app/ui/home/HomeFragment$onViewCreated$3$1$1;
.super Ljava/lang/Object;
.source "HomeFragment.kt"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muzk/app/ui/home/HomeFragment$onViewCreated$3$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/FlowCollector;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHomeFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HomeFragment.kt\ncom/muzk/app/ui/home/HomeFragment$onViewCreated$3$1$1\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,149:1\n257#2,2:150\n257#2,2:152\n257#2,2:154\n257#2,2:156\n257#2,2:158\n*S KotlinDebug\n*F\n+ 1 HomeFragment.kt\ncom/muzk/app/ui/home/HomeFragment$onViewCreated$3$1$1\n*L\n87#1:150,2\n88#1:152,2\n91#1:154,2\n93#1:156,2\n94#1:158,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $tiles:Lcom/muzk/app/ui/home/HomeTileAdapter;

.field final synthetic $top:Lcom/muzk/app/ui/home/HomeTrackAdapter;

.field final synthetic this$0:Lcom/muzk/app/ui/home/HomeFragment;


# direct methods
.method constructor <init>(Lcom/muzk/app/ui/home/HomeTileAdapter;Lcom/muzk/app/ui/home/HomeTrackAdapter;Lcom/muzk/app/ui/home/HomeFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/muzk/app/ui/home/HomeFragment$onViewCreated$3$1$1;->$tiles:Lcom/muzk/app/ui/home/HomeTileAdapter;

    iput-object p2, p0, Lcom/muzk/app/ui/home/HomeFragment$onViewCreated$3$1$1;->$top:Lcom/muzk/app/ui/home/HomeTrackAdapter;

    iput-object p3, p0, Lcom/muzk/app/ui/home/HomeFragment$onViewCreated$3$1$1;->this$0:Lcom/muzk/app/ui/home/HomeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Lcom/muzk/app/ui/home/HomeUiState;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .param p1, "s"    # Lcom/muzk/app/ui/home/HomeUiState;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/muzk/app/ui/home/HomeUiState;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/muzk/app/ui/home/HomeFragment$onViewCreated$3$1$1;->$tiles:Lcom/muzk/app/ui/home/HomeTileAdapter;

    invoke-virtual {p1}, Lcom/muzk/app/ui/home/HomeUiState;->getTiles()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/muzk/app/ui/home/HomeTileAdapter;->submitList(Ljava/util/List;)V

    .line 86
    iget-object v0, p0, Lcom/muzk/app/ui/home/HomeFragment$onViewCreated$3$1$1;->$top:Lcom/muzk/app/ui/home/HomeTrackAdapter;

    invoke-virtual {p1}, Lcom/muzk/app/ui/home/HomeUiState;->getMostPlayed()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/muzk/app/ui/home/HomeTrackAdapter;->submitList(Ljava/util/List;)V

    .line 87
    iget-object v0, p0, Lcom/muzk/app/ui/home/HomeFragment$onViewCreated$3$1$1;->this$0:Lcom/muzk/app/ui/home/HomeFragment;

    invoke-static {v0}, Lcom/muzk/app/ui/home/HomeFragment;->access$getBinding(Lcom/muzk/app/ui/home/HomeFragment;)Lcom/muzk/app/databinding/FragmentHomeBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/muzk/app/databinding/FragmentHomeBinding;->tiles:Landroidx/recyclerview/widget/RecyclerView;

    const-string v1, "tiles"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1}, Lcom/muzk/app/ui/home/HomeUiState;->getTiles()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    .local v0, "$this$isVisible$iv":Landroid/view/View;
    .local v1, "value$iv":Z
    const/4 v3, 0x0

    .line 150
    .local v3, "$i$f$setVisible":I
    const/16 v4, 0x8

    const/4 v5, 0x0

    if-eqz v1, :cond_0

    move v6, v5

    goto :goto_0

    :cond_0
    move v6, v4

    :goto_0
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 151
    nop

    .line 88
    .end local v0    # "$this$isVisible$iv":Landroid/view/View;
    .end local v1    # "value$iv":Z
    .end local v3    # "$i$f$setVisible":I
    iget-object v0, p0, Lcom/muzk/app/ui/home/HomeFragment$onViewCreated$3$1$1;->this$0:Lcom/muzk/app/ui/home/HomeFragment;

    invoke-static {v0}, Lcom/muzk/app/ui/home/HomeFragment;->access$getBinding(Lcom/muzk/app/ui/home/HomeFragment;)Lcom/muzk/app/databinding/FragmentHomeBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/muzk/app/databinding/FragmentHomeBinding;->topTitle:Landroid/widget/TextView;

    const-string v1, "topTitle"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1}, Lcom/muzk/app/ui/home/HomeUiState;->getMostPlayed()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/2addr v1, v2

    .restart local v0    # "$this$isVisible$iv":Landroid/view/View;
    .restart local v1    # "value$iv":Z
    const/4 v3, 0x0

    .line 152
    .restart local v3    # "$i$f$setVisible":I
    if-eqz v1, :cond_1

    move v6, v5

    goto :goto_1

    :cond_1
    move v6, v4

    :goto_1
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 153
    nop

    .line 90
    .end local v0    # "$this$isVisible$iv":Landroid/view/View;
    .end local v1    # "value$iv":Z
    .end local v3    # "$i$f$setVisible":I
    invoke-virtual {p1}, Lcom/muzk/app/ui/home/HomeUiState;->getHasPermission()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/muzk/app/ui/home/HomeUiState;->getLoaded()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/muzk/app/ui/home/HomeUiState;->getTiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/muzk/app/ui/home/HomeUiState;->getMostPlayed()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move v0, v5

    goto :goto_3

    :cond_3
    :goto_2
    move v0, v2

    .line 91
    .local v0, "empty":Z
    :goto_3
    iget-object v1, p0, Lcom/muzk/app/ui/home/HomeFragment$onViewCreated$3$1$1;->this$0:Lcom/muzk/app/ui/home/HomeFragment;

    invoke-static {v1}, Lcom/muzk/app/ui/home/HomeFragment;->access$getBinding(Lcom/muzk/app/ui/home/HomeFragment;)Lcom/muzk/app/databinding/FragmentHomeBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/muzk/app/databinding/FragmentHomeBinding;->empty:Landroid/widget/LinearLayout;

    const-string v3, "empty"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/View;

    .local v1, "$this$isVisible$iv":Landroid/view/View;
    const/4 v3, 0x0

    .line 154
    .restart local v3    # "$i$f$setVisible":I
    if-eqz v0, :cond_4

    move v6, v5

    goto :goto_4

    :cond_4
    move v6, v4

    :goto_4
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 155
    nop

    .line 92
    .end local v1    # "$this$isVisible$iv":Landroid/view/View;
    .end local v3    # "$i$f$setVisible":I
    iget-object v1, p0, Lcom/muzk/app/ui/home/HomeFragment$onViewCreated$3$1$1;->this$0:Lcom/muzk/app/ui/home/HomeFragment;

    invoke-static {v1}, Lcom/muzk/app/ui/home/HomeFragment;->access$getBinding(Lcom/muzk/app/ui/home/HomeFragment;)Lcom/muzk/app/databinding/FragmentHomeBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/muzk/app/databinding/FragmentHomeBinding;->emptyText:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/muzk/app/ui/home/HomeUiState;->getHasPermission()Z

    move-result v3

    if-nez v3, :cond_5

    sget v3, Lcom/muzk/app/R$string;->lib_no_permission:I

    goto :goto_5

    :cond_5
    sget v3, Lcom/muzk/app/R$string;->home_empty:I

    :goto_5
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 93
    iget-object v1, p0, Lcom/muzk/app/ui/home/HomeFragment$onViewCreated$3$1$1;->this$0:Lcom/muzk/app/ui/home/HomeFragment;

    invoke-static {v1}, Lcom/muzk/app/ui/home/HomeFragment;->access$getBinding(Lcom/muzk/app/ui/home/HomeFragment;)Lcom/muzk/app/databinding/FragmentHomeBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/muzk/app/databinding/FragmentHomeBinding;->emptyAction:Lcom/google/android/material/button/MaterialButton;

    const-string v3, "emptyAction"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/View;

    invoke-virtual {p1}, Lcom/muzk/app/ui/home/HomeUiState;->getHasPermission()Z

    move-result v3

    xor-int/2addr v2, v3

    .restart local v1    # "$this$isVisible$iv":Landroid/view/View;
    .local v2, "value$iv":Z
    const/4 v3, 0x0

    .line 156
    .restart local v3    # "$i$f$setVisible":I
    if-eqz v2, :cond_6

    move v6, v5

    goto :goto_6

    :cond_6
    move v6, v4

    :goto_6
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 157
    nop

    .line 94
    .end local v1    # "$this$isVisible$iv":Landroid/view/View;
    .end local v2    # "value$iv":Z
    .end local v3    # "$i$f$setVisible":I
    iget-object v1, p0, Lcom/muzk/app/ui/home/HomeFragment$onViewCreated$3$1$1;->this$0:Lcom/muzk/app/ui/home/HomeFragment;

    invoke-static {v1}, Lcom/muzk/app/ui/home/HomeFragment;->access$getBinding(Lcom/muzk/app/ui/home/HomeFragment;)Lcom/muzk/app/databinding/FragmentHomeBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/muzk/app/databinding/FragmentHomeBinding;->goSearch:Lcom/google/android/material/button/MaterialButton;

    const-string v2, "goSearch"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/View;

    .restart local v1    # "$this$isVisible$iv":Landroid/view/View;
    invoke-virtual {p1}, Lcom/muzk/app/ui/home/HomeUiState;->getHasPermission()Z

    move-result v2

    .restart local v2    # "value$iv":Z
    const/4 v3, 0x0

    .line 158
    .restart local v3    # "$i$f$setVisible":I
    if-eqz v2, :cond_7

    move v4, v5

    :cond_7
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 159
    nop

    .line 95
    .end local v1    # "$this$isVisible$iv":Landroid/view/View;
    .end local v2    # "value$iv":Z
    .end local v3    # "$i$f$setVisible":I
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 84
    move-object v0, p1

    check-cast v0, Lcom/muzk/app/ui/home/HomeUiState;

    invoke-virtual {p0, v0, p2}, Lcom/muzk/app/ui/home/HomeFragment$onViewCreated$3$1$1;->emit(Lcom/muzk/app/ui/home/HomeUiState;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
