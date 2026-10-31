.class final Lcom/muzk/app/ui/search/SearchFragment$onViewCreated$4$1$2$1;
.super Ljava/lang/Object;
.source "SearchFragment.kt"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muzk/app/ui/search/SearchFragment$onViewCreated$4$1$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    value = "SMAP\nSearchFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SearchFragment.kt\ncom/muzk/app/ui/search/SearchFragment$onViewCreated$4$1$2$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,173:1\n1863#2,2:174\n257#3,2:176\n257#3,2:178\n*S KotlinDebug\n*F\n+ 1 SearchFragment.kt\ncom/muzk/app/ui/search/SearchFragment$onViewCreated$4$1$2$1\n*L\n86#1:174,2\n92#1:176,2\n93#1:178,2\n*E\n"
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
.field final synthetic this$0:Lcom/muzk/app/ui/search/SearchFragment;


# direct methods
.method public static synthetic $r8$lambda$9Vhr6a4FuVyuWDRp6o4Jl_OtPUY(Lcom/muzk/app/ui/search/SearchFragment;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/muzk/app/ui/search/SearchFragment$onViewCreated$4$1$2$1;->emit$lambda$2$lambda$0(Lcom/muzk/app/ui/search/SearchFragment;Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QKuahkFynv4Qt3MdC6qN61qM6Q8(Lcom/muzk/app/ui/search/SearchFragment;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/muzk/app/ui/search/SearchFragment$onViewCreated$4$1$2$1;->emit$lambda$2$lambda$1(Lcom/muzk/app/ui/search/SearchFragment;Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method constructor <init>(Lcom/muzk/app/ui/search/SearchFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/muzk/app/ui/search/SearchFragment$onViewCreated$4$1$2$1;->this$0:Lcom/muzk/app/ui/search/SearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final emit$lambda$2$lambda$0(Lcom/muzk/app/ui/search/SearchFragment;Ljava/lang/String;Landroid/view/View;)V
    .locals 0
    .param p0, "this$0"    # Lcom/muzk/app/ui/search/SearchFragment;
    .param p1, "$q"    # Ljava/lang/String;
    .param p2, "it"    # Landroid/view/View;

    .line 89
    invoke-static {p0, p1}, Lcom/muzk/app/ui/search/SearchFragment;->access$searchFor(Lcom/muzk/app/ui/search/SearchFragment;Ljava/lang/String;)V

    return-void
.end method

.method private static final emit$lambda$2$lambda$1(Lcom/muzk/app/ui/search/SearchFragment;Ljava/lang/String;Landroid/view/View;)V
    .locals 1
    .param p0, "this$0"    # Lcom/muzk/app/ui/search/SearchFragment;
    .param p1, "$q"    # Ljava/lang/String;
    .param p2, "it"    # Landroid/view/View;

    .line 90
    invoke-static {p0}, Lcom/muzk/app/ui/search/SearchFragment;->access$getVm(Lcom/muzk/app/ui/search/SearchFragment;)Lcom/muzk/app/ui/search/SearchViewModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/muzk/app/ui/search/SearchViewModel;->removeRecent(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 84
    move-object v0, p1

    check-cast v0, Ljava/util/List;

    invoke-virtual {p0, v0, p2}, Lcom/muzk/app/ui/search/SearchFragment$onViewCreated$4$1$2$1;->emit(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final emit(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10
    .param p1, "recent"    # Ljava/util/List;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/muzk/app/ui/search/SearchFragment$onViewCreated$4$1$2$1;->this$0:Lcom/muzk/app/ui/search/SearchFragment;

    invoke-static {v0}, Lcom/muzk/app/ui/search/SearchFragment;->access$getBinding(Lcom/muzk/app/ui/search/SearchFragment;)Lcom/muzk/app/databinding/FragmentSearchBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/muzk/app/databinding/FragmentSearchBinding;->recentList:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 86
    move-object v0, p1

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$forEach$iv":Ljava/lang/Iterable;
    iget-object v1, p0, Lcom/muzk/app/ui/search/SearchFragment$onViewCreated$4$1$2$1;->this$0:Lcom/muzk/app/ui/search/SearchFragment;

    const/4 v2, 0x0

    .line 174
    .local v2, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .local v4, "element$iv":Ljava/lang/Object;
    move-object v6, v4

    check-cast v6, Ljava/lang/String;

    .local v6, "q":Ljava/lang/String;
    const/4 v7, 0x0

    .line 87
    .local v7, "$i$a$-forEach-SearchFragment$onViewCreated$4$1$2$1$1":I
    invoke-virtual {v1}, Lcom/muzk/app/ui/search/SearchFragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v8

    invoke-static {v1}, Lcom/muzk/app/ui/search/SearchFragment;->access$getBinding(Lcom/muzk/app/ui/search/SearchFragment;)Lcom/muzk/app/databinding/FragmentSearchBinding;

    move-result-object v9

    iget-object v9, v9, Lcom/muzk/app/databinding/FragmentSearchBinding;->recentList:Landroid/widget/LinearLayout;

    check-cast v9, Landroid/view/ViewGroup;

    invoke-static {v8, v9, v5}, Lcom/muzk/app/databinding/ItemRecentSearchBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/muzk/app/databinding/ItemRecentSearchBinding;

    move-result-object v5

    const-string v8, "inflate(...)"

    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    .local v5, "row":Lcom/muzk/app/databinding/ItemRecentSearchBinding;
    iget-object v8, v5, Lcom/muzk/app/databinding/ItemRecentSearchBinding;->query:Landroid/widget/TextView;

    move-object v9, v6

    check-cast v9, Ljava/lang/CharSequence;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    invoke-virtual {v5}, Lcom/muzk/app/databinding/ItemRecentSearchBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v8

    new-instance v9, Lcom/muzk/app/ui/search/SearchFragment$onViewCreated$4$1$2$1$$ExternalSyntheticLambda0;

    invoke-direct {v9, v1, v6}, Lcom/muzk/app/ui/search/SearchFragment$onViewCreated$4$1$2$1$$ExternalSyntheticLambda0;-><init>(Lcom/muzk/app/ui/search/SearchFragment;Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    iget-object v8, v5, Lcom/muzk/app/databinding/ItemRecentSearchBinding;->remove:Landroid/widget/ImageButton;

    new-instance v9, Lcom/muzk/app/ui/search/SearchFragment$onViewCreated$4$1$2$1$$ExternalSyntheticLambda1;

    invoke-direct {v9, v1, v6}, Lcom/muzk/app/ui/search/SearchFragment$onViewCreated$4$1$2$1$$ExternalSyntheticLambda1;-><init>(Lcom/muzk/app/ui/search/SearchFragment;Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    nop

    .line 174
    .end local v4    # "element$iv":Ljava/lang/Object;
    .end local v5    # "row":Lcom/muzk/app/databinding/ItemRecentSearchBinding;
    .end local v6    # "q":Ljava/lang/String;
    .end local v7    # "$i$a$-forEach-SearchFragment$onViewCreated$4$1$2$1$1":I
    goto :goto_0

    .line 175
    :cond_0
    nop

    .line 92
    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$forEach":I
    iget-object v0, p0, Lcom/muzk/app/ui/search/SearchFragment$onViewCreated$4$1$2$1;->this$0:Lcom/muzk/app/ui/search/SearchFragment;

    invoke-static {v0}, Lcom/muzk/app/ui/search/SearchFragment;->access$getBinding(Lcom/muzk/app/ui/search/SearchFragment;)Lcom/muzk/app/databinding/FragmentSearchBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/muzk/app/databinding/FragmentSearchBinding;->recentTitle:Landroid/widget/TextView;

    const-string v1, "recentTitle"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/2addr v1, v5

    .local v0, "$this$isVisible$iv":Landroid/view/View;
    .local v1, "value$iv":Z
    const/4 v2, 0x0

    .line 176
    .local v2, "$i$f$setVisible":I
    const/4 v3, 0x0

    const/16 v4, 0x8

    if-eqz v1, :cond_1

    move v6, v3

    goto :goto_1

    :cond_1
    move v6, v4

    :goto_1
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 177
    nop

    .line 93
    .end local v0    # "$this$isVisible$iv":Landroid/view/View;
    .end local v1    # "value$iv":Z
    .end local v2    # "$i$f$setVisible":I
    iget-object v0, p0, Lcom/muzk/app/ui/search/SearchFragment$onViewCreated$4$1$2$1;->this$0:Lcom/muzk/app/ui/search/SearchFragment;

    invoke-static {v0}, Lcom/muzk/app/ui/search/SearchFragment;->access$getBinding(Lcom/muzk/app/ui/search/SearchFragment;)Lcom/muzk/app/databinding/FragmentSearchBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/muzk/app/databinding/FragmentSearchBinding;->recentList:Landroid/widget/LinearLayout;

    const-string v1, "recentList"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/2addr v1, v5

    .restart local v0    # "$this$isVisible$iv":Landroid/view/View;
    .restart local v1    # "value$iv":Z
    const/4 v2, 0x0

    .line 178
    .restart local v2    # "$i$f$setVisible":I
    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    move v3, v4

    :goto_2
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 179
    nop

    .line 94
    .end local v0    # "$this$isVisible$iv":Landroid/view/View;
    .end local v1    # "value$iv":Z
    .end local v2    # "$i$f$setVisible":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
