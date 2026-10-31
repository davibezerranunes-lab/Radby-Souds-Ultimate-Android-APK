.class final Lcom/muzk/app/ui/search/SearchFragment$onViewCreated$4$1$1$1;
.super Ljava/lang/Object;
.source "SearchFragment.kt"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muzk/app/ui/search/SearchFragment$onViewCreated$4$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    value = "SMAP\nSearchFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SearchFragment.kt\ncom/muzk/app/ui/search/SearchFragment$onViewCreated$4$1$1$1\n+ 2 View.kt\nandroidx/core/view/ViewKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,173:1\n278#2,2:174\n257#2,2:176\n257#2,2:178\n257#2,2:180\n1#3:182\n*S KotlinDebug\n*F\n+ 1 SearchFragment.kt\ncom/muzk/app/ui/search/SearchFragment$onViewCreated$4$1$1$1\n*L\n72#1:174,2\n76#1:176,2\n77#1:178,2\n78#1:180,2\n*E\n"
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
.field final synthetic $adapter:Lcom/muzk/app/ui/search/SearchAdapter;

.field final synthetic this$0:Lcom/muzk/app/ui/search/SearchFragment;


# direct methods
.method constructor <init>(Lcom/muzk/app/ui/search/SearchFragment;Lcom/muzk/app/ui/search/SearchAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/muzk/app/ui/search/SearchFragment$onViewCreated$4$1$1$1;->this$0:Lcom/muzk/app/ui/search/SearchFragment;

    iput-object p2, p0, Lcom/muzk/app/ui/search/SearchFragment$onViewCreated$4$1$1$1;->$adapter:Lcom/muzk/app/ui/search/SearchAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Lcom/muzk/app/ui/search/SearchUiState;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .param p1, "s"    # Lcom/muzk/app/ui/search/SearchUiState;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/muzk/app/ui/search/SearchUiState;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/muzk/app/ui/search/SearchFragment$onViewCreated$4$1$1$1;->this$0:Lcom/muzk/app/ui/search/SearchFragment;

    invoke-static {v0}, Lcom/muzk/app/ui/search/SearchFragment;->access$getBinding(Lcom/muzk/app/ui/search/SearchFragment;)Lcom/muzk/app/databinding/FragmentSearchBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/muzk/app/databinding/FragmentSearchBinding;->searchInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/muzk/app/ui/search/SearchUiState;->getQuery()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_2

    move v0, v1

    goto :goto_2

    :cond_2
    move v0, v2

    :goto_2
    if-eqz v0, :cond_3

    .line 70
    iget-object v0, p0, Lcom/muzk/app/ui/search/SearchFragment$onViewCreated$4$1$1$1;->this$0:Lcom/muzk/app/ui/search/SearchFragment;

    invoke-static {v0}, Lcom/muzk/app/ui/search/SearchFragment;->access$getBinding(Lcom/muzk/app/ui/search/SearchFragment;)Lcom/muzk/app/databinding/FragmentSearchBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/muzk/app/databinding/FragmentSearchBinding;->searchInput:Landroid/widget/EditText;

    invoke-virtual {p1}, Lcom/muzk/app/ui/search/SearchUiState;->getQuery()Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 72
    :cond_3
    iget-object v0, p0, Lcom/muzk/app/ui/search/SearchFragment$onViewCreated$4$1$1$1;->this$0:Lcom/muzk/app/ui/search/SearchFragment;

    invoke-static {v0}, Lcom/muzk/app/ui/search/SearchFragment;->access$getBinding(Lcom/muzk/app/ui/search/SearchFragment;)Lcom/muzk/app/databinding/FragmentSearchBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/muzk/app/databinding/FragmentSearchBinding;->searchProgress:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    const-string v3, "searchProgress"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1}, Lcom/muzk/app/ui/search/SearchUiState;->getLoading()Z

    move-result v3

    xor-int/2addr v3, v1

    .local v0, "$this$isInvisible$iv":Landroid/view/View;
    .local v3, "value$iv":Z
    const/4 v4, 0x0

    .line 174
    .local v4, "$i$f$setInvisible":I
    if-eqz v3, :cond_4

    const/4 v5, 0x4

    goto :goto_3

    :cond_4
    move v5, v2

    :goto_3
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 175
    nop

    .line 73
    .end local v0    # "$this$isInvisible$iv":Landroid/view/View;
    .end local v3    # "value$iv":Z
    .end local v4    # "$i$f$setInvisible":I
    iget-object v0, p0, Lcom/muzk/app/ui/search/SearchFragment$onViewCreated$4$1$1$1;->$adapter:Lcom/muzk/app/ui/search/SearchAdapter;

    invoke-virtual {p1}, Lcom/muzk/app/ui/search/SearchUiState;->getResults()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/muzk/app/ui/search/SearchAdapter;->submitList(Ljava/util/List;)V

    .line 74
    iget-object v0, p0, Lcom/muzk/app/ui/search/SearchFragment$onViewCreated$4$1$1$1;->$adapter:Lcom/muzk/app/ui/search/SearchAdapter;

    invoke-virtual {p1}, Lcom/muzk/app/ui/search/SearchUiState;->getResolvingId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/muzk/app/ui/search/SearchUiState;->getDownloadedIds()Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/muzk/app/ui/search/SearchAdapter;->setStatus(Ljava/lang/String;Ljava/util/Set;)V

    .line 75
    invoke-virtual {p1}, Lcom/muzk/app/ui/search/SearchUiState;->getQuery()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    goto :goto_4

    :cond_5
    move v0, v2

    :goto_4
    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/muzk/app/ui/search/SearchUiState;->getLoading()Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v1

    goto :goto_5

    :cond_6
    move v0, v2

    .line 76
    .local v0, "idle":Z
    :goto_5
    iget-object v3, p0, Lcom/muzk/app/ui/search/SearchFragment$onViewCreated$4$1$1$1;->this$0:Lcom/muzk/app/ui/search/SearchFragment;

    invoke-static {v3}, Lcom/muzk/app/ui/search/SearchFragment;->access$getBinding(Lcom/muzk/app/ui/search/SearchFragment;)Lcom/muzk/app/databinding/FragmentSearchBinding;

    move-result-object v3

    iget-object v3, v3, Lcom/muzk/app/databinding/FragmentSearchBinding;->discover:Landroidx/core/widget/NestedScrollView;

    const-string v4, "discover"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/view/View;

    .local v3, "$this$isVisible$iv":Landroid/view/View;
    const/4 v4, 0x0

    .line 176
    .local v4, "$i$f$setVisible":I
    const/16 v5, 0x8

    if-eqz v0, :cond_7

    move v6, v2

    goto :goto_6

    :cond_7
    move v6, v5

    :goto_6
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 177
    nop

    .line 77
    .end local v3    # "$this$isVisible$iv":Landroid/view/View;
    .end local v4    # "$i$f$setVisible":I
    iget-object v3, p0, Lcom/muzk/app/ui/search/SearchFragment$onViewCreated$4$1$1$1;->this$0:Lcom/muzk/app/ui/search/SearchFragment;

    invoke-static {v3}, Lcom/muzk/app/ui/search/SearchFragment;->access$getBinding(Lcom/muzk/app/ui/search/SearchFragment;)Lcom/muzk/app/databinding/FragmentSearchBinding;

    move-result-object v3

    iget-object v3, v3, Lcom/muzk/app/databinding/FragmentSearchBinding;->results:Landroidx/recyclerview/widget/RecyclerView;

    const-string v4, "results"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/view/View;

    if-nez v0, :cond_8

    move v4, v1

    goto :goto_7

    :cond_8
    move v4, v2

    .restart local v3    # "$this$isVisible$iv":Landroid/view/View;
    .local v4, "value$iv":Z
    :goto_7
    const/4 v6, 0x0

    .line 178
    .local v6, "$i$f$setVisible":I
    if-eqz v4, :cond_9

    move v7, v2

    goto :goto_8

    :cond_9
    move v7, v5

    :goto_8
    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 179
    nop

    .line 78
    .end local v3    # "$this$isVisible$iv":Landroid/view/View;
    .end local v4    # "value$iv":Z
    .end local v6    # "$i$f$setVisible":I
    iget-object v3, p0, Lcom/muzk/app/ui/search/SearchFragment$onViewCreated$4$1$1$1;->this$0:Lcom/muzk/app/ui/search/SearchFragment;

    invoke-static {v3}, Lcom/muzk/app/ui/search/SearchFragment;->access$getBinding(Lcom/muzk/app/ui/search/SearchFragment;)Lcom/muzk/app/databinding/FragmentSearchBinding;

    move-result-object v3

    iget-object v3, v3, Lcom/muzk/app/databinding/FragmentSearchBinding;->searchEmpty:Landroid/widget/TextView;

    const-string v4, "searchEmpty"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/view/View;

    if-nez v0, :cond_a

    invoke-virtual {p1}, Lcom/muzk/app/ui/search/SearchUiState;->getLoading()Z

    move-result v4

    if-nez v4, :cond_a

    invoke-virtual {p1}, Lcom/muzk/app/ui/search/SearchUiState;->getResults()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_a

    goto :goto_9

    :cond_a
    move v1, v2

    .local v1, "value$iv":Z
    .restart local v3    # "$this$isVisible$iv":Landroid/view/View;
    :goto_9
    const/4 v4, 0x0

    .line 180
    .local v4, "$i$f$setVisible":I
    if-eqz v1, :cond_b

    goto :goto_a

    :cond_b
    move v2, v5

    :goto_a
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 181
    nop

    .line 79
    .end local v1    # "value$iv":Z
    .end local v3    # "$this$isVisible$iv":Landroid/view/View;
    .end local v4    # "$i$f$setVisible":I
    iget-object v1, p0, Lcom/muzk/app/ui/search/SearchFragment$onViewCreated$4$1$1$1;->this$0:Lcom/muzk/app/ui/search/SearchFragment;

    invoke-static {v1}, Lcom/muzk/app/ui/search/SearchFragment;->access$getBinding(Lcom/muzk/app/ui/search/SearchFragment;)Lcom/muzk/app/databinding/FragmentSearchBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/muzk/app/databinding/FragmentSearchBinding;->searchEmpty:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/muzk/app/ui/search/SearchUiState;->getError()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_c

    iget-object v3, p0, Lcom/muzk/app/ui/search/SearchFragment$onViewCreated$4$1$1$1;->this$0:Lcom/muzk/app/ui/search/SearchFragment;

    .line 182
    nop

    .local v2, "it":Ljava/lang/String;
    const/4 v4, 0x0

    .line 79
    .local v4, "$i$a$-let-SearchFragment$onViewCreated$4$1$1$1$1":I
    sget v5, Lcom/muzk/app/R$string;->search_error:I

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/muzk/app/ui/search/SearchFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .end local v2    # "it":Ljava/lang/String;
    .end local v4    # "$i$a$-let-SearchFragment$onViewCreated$4$1$1$1$1":I
    if-eqz v2, :cond_c

    check-cast v2, Ljava/lang/CharSequence;

    goto :goto_b

    .line 80
    :cond_c
    iget-object v2, p0, Lcom/muzk/app/ui/search/SearchFragment$onViewCreated$4$1$1$1;->this$0:Lcom/muzk/app/ui/search/SearchFragment;

    sget v3, Lcom/muzk/app/R$string;->search_no_results:I

    invoke-virtual {v2, v3}, Lcom/muzk/app/ui/search/SearchFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getString(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/CharSequence;

    .line 79
    :goto_b
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 68
    move-object v0, p1

    check-cast v0, Lcom/muzk/app/ui/search/SearchUiState;

    invoke-virtual {p0, v0, p2}, Lcom/muzk/app/ui/search/SearchFragment$onViewCreated$4$1$1$1;->emit(Lcom/muzk/app/ui/search/SearchUiState;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
