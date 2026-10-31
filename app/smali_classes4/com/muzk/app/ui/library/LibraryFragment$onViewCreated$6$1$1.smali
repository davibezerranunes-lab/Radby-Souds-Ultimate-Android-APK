.class final Lcom/muzk/app/ui/library/LibraryFragment$onViewCreated$6$1$1;
.super Ljava/lang/Object;
.source "LibraryFragment.kt"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muzk/app/ui/library/LibraryFragment$onViewCreated$6$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    value = "SMAP\nLibraryFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LibraryFragment.kt\ncom/muzk/app/ui/library/LibraryFragment$onViewCreated$6$1$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,346:1\n1#2:347\n*E\n"
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
.field final synthetic $adapter:Lcom/muzk/app/ui/library/LibraryAdapter;

.field final synthetic this$0:Lcom/muzk/app/ui/library/LibraryFragment;


# direct methods
.method constructor <init>(Lcom/muzk/app/ui/library/LibraryAdapter;Lcom/muzk/app/ui/library/LibraryFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/muzk/app/ui/library/LibraryFragment$onViewCreated$6$1$1;->$adapter:Lcom/muzk/app/ui/library/LibraryAdapter;

    iput-object p2, p0, Lcom/muzk/app/ui/library/LibraryFragment$onViewCreated$6$1$1;->this$0:Lcom/muzk/app/ui/library/LibraryFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Lcom/muzk/app/ui/library/LibraryUiState;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .param p1, "s"    # Lcom/muzk/app/ui/library/LibraryUiState;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/muzk/app/ui/library/LibraryUiState;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 132
    invoke-static {}, Lcom/muzk/app/ui/library/LibraryFragment;->access$getCHIPS$cp()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lcom/muzk/app/ui/library/LibraryUiState;->getTab()Lcom/muzk/app/ui/library/LibraryTab;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/muzk/app/ui/library/LibraryFragment$onViewCreated$6$1$1;->this$0:Lcom/muzk/app/ui/library/LibraryFragment;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 347
    .local v0, "id":I
    const/4 v2, 0x0

    .line 132
    .local v2, "$i$a$-let-LibraryFragment$onViewCreated$6$1$1$1":I
    invoke-static {v1}, Lcom/muzk/app/ui/library/LibraryFragment;->access$getBinding(Lcom/muzk/app/ui/library/LibraryFragment;)Lcom/muzk/app/databinding/FragmentLibraryBinding;

    move-result-object v3

    iget-object v3, v3, Lcom/muzk/app/databinding/FragmentLibraryBinding;->chips:Lcom/google/android/material/chip/ChipGroup;

    invoke-virtual {v3}, Lcom/google/android/material/chip/ChipGroup;->getCheckedChipId()I

    move-result v3

    if-eq v3, v0, :cond_0

    invoke-static {v1}, Lcom/muzk/app/ui/library/LibraryFragment;->access$getBinding(Lcom/muzk/app/ui/library/LibraryFragment;)Lcom/muzk/app/databinding/FragmentLibraryBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/muzk/app/databinding/FragmentLibraryBinding;->chips:Lcom/google/android/material/chip/ChipGroup;

    invoke-virtual {v1, v0}, Lcom/google/android/material/chip/ChipGroup;->check(I)V

    .line 133
    .end local v0    # "id":I
    .end local v2    # "$i$a$-let-LibraryFragment$onViewCreated$6$1$1$1":I
    :cond_0
    iget-object v0, p0, Lcom/muzk/app/ui/library/LibraryFragment$onViewCreated$6$1$1;->$adapter:Lcom/muzk/app/ui/library/LibraryAdapter;

    invoke-virtual {p1}, Lcom/muzk/app/ui/library/LibraryUiState;->getRows()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/muzk/app/ui/library/LibraryAdapter;->submitList(Ljava/util/List;)V

    .line 134
    iget-object v0, p0, Lcom/muzk/app/ui/library/LibraryFragment$onViewCreated$6$1$1;->this$0:Lcom/muzk/app/ui/library/LibraryFragment;

    invoke-static {v0}, Lcom/muzk/app/ui/library/LibraryFragment;->access$getBackCallback$p(Lcom/muzk/app/ui/library/LibraryFragment;)Lcom/muzk/app/ui/library/LibraryFragment$backCallback$1;

    move-result-object v0

    invoke-virtual {p1}, Lcom/muzk/app/ui/library/LibraryUiState;->isInside()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lcom/muzk/app/ui/library/LibraryUiState;->isSelecting()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v0, v1}, Lcom/muzk/app/ui/library/LibraryFragment$backCallback$1;->setEnabled(Z)V

    .line 135
    iget-object v0, p0, Lcom/muzk/app/ui/library/LibraryFragment$onViewCreated$6$1$1;->this$0:Lcom/muzk/app/ui/library/LibraryFragment;

    invoke-static {v0, p1}, Lcom/muzk/app/ui/library/LibraryFragment;->access$renderEmpty(Lcom/muzk/app/ui/library/LibraryFragment;Lcom/muzk/app/ui/library/LibraryUiState;)V

    .line 136
    iget-object v0, p0, Lcom/muzk/app/ui/library/LibraryFragment$onViewCreated$6$1$1;->this$0:Lcom/muzk/app/ui/library/LibraryFragment;

    invoke-static {v0, p1}, Lcom/muzk/app/ui/library/LibraryFragment;->access$renderFab(Lcom/muzk/app/ui/library/LibraryFragment;Lcom/muzk/app/ui/library/LibraryUiState;)V

    .line 137
    iget-object v0, p0, Lcom/muzk/app/ui/library/LibraryFragment$onViewCreated$6$1$1;->this$0:Lcom/muzk/app/ui/library/LibraryFragment;

    invoke-static {v0, p1}, Lcom/muzk/app/ui/library/LibraryFragment;->access$renderSelection(Lcom/muzk/app/ui/library/LibraryFragment;Lcom/muzk/app/ui/library/LibraryUiState;)V

    .line 138
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 131
    move-object v0, p1

    check-cast v0, Lcom/muzk/app/ui/library/LibraryUiState;

    invoke-virtual {p0, v0, p2}, Lcom/muzk/app/ui/library/LibraryFragment$onViewCreated$6$1$1;->emit(Lcom/muzk/app/ui/library/LibraryUiState;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
