.class final Landroidx/navigation/fragment/FragmentNavigator$attachClearViewModel$1;
.super Lkotlin/jvm/internal/Lambda;
.source "FragmentNavigator.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/navigation/fragment/FragmentNavigator;->attachClearViewModel$navigation_fragment_release(Landroidx/fragment/app/Fragment;Landroidx/navigation/NavBackStackEntry;Landroidx/navigation/NavigatorState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFragmentNavigator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FragmentNavigator.kt\nandroidx/navigation/fragment/FragmentNavigator$attachClearViewModel$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,712:1\n1855#2,2:713\n*S KotlinDebug\n*F\n+ 1 FragmentNavigator.kt\nandroidx/navigation/fragment/FragmentNavigator$attachClearViewModel$1\n*L\n273#1:713,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $entry:Landroidx/navigation/NavBackStackEntry;

.field final synthetic $fragment:Landroidx/fragment/app/Fragment;

.field final synthetic $state:Landroidx/navigation/NavigatorState;

.field final synthetic this$0:Landroidx/navigation/fragment/FragmentNavigator;


# direct methods
.method constructor <init>(Landroidx/navigation/NavBackStackEntry;Landroidx/navigation/NavigatorState;Landroidx/navigation/fragment/FragmentNavigator;Landroidx/fragment/app/Fragment;)V
    .locals 1

    iput-object p1, p0, Landroidx/navigation/fragment/FragmentNavigator$attachClearViewModel$1;->$entry:Landroidx/navigation/NavBackStackEntry;

    iput-object p2, p0, Landroidx/navigation/fragment/FragmentNavigator$attachClearViewModel$1;->$state:Landroidx/navigation/NavigatorState;

    iput-object p3, p0, Landroidx/navigation/fragment/FragmentNavigator$attachClearViewModel$1;->this$0:Landroidx/navigation/fragment/FragmentNavigator;

    iput-object p4, p0, Landroidx/navigation/fragment/FragmentNavigator$attachClearViewModel$1;->$fragment:Landroidx/fragment/app/Fragment;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 271
    invoke-virtual {p0}, Landroidx/navigation/fragment/FragmentNavigator$attachClearViewModel$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 13

    .line 272
    iget-object v0, p0, Landroidx/navigation/fragment/FragmentNavigator$attachClearViewModel$1;->$entry:Landroidx/navigation/NavBackStackEntry;

    .local v0, "it":Landroidx/navigation/NavBackStackEntry;
    iget-object v1, p0, Landroidx/navigation/fragment/FragmentNavigator$attachClearViewModel$1;->$state:Landroidx/navigation/NavigatorState;

    iget-object v2, p0, Landroidx/navigation/fragment/FragmentNavigator$attachClearViewModel$1;->this$0:Landroidx/navigation/fragment/FragmentNavigator;

    iget-object v3, p0, Landroidx/navigation/fragment/FragmentNavigator$attachClearViewModel$1;->$fragment:Landroidx/fragment/app/Fragment;

    const/4 v4, 0x0

    .line 273
    .local v4, "$i$a$-let-FragmentNavigator$attachClearViewModel$1$1":I
    invoke-virtual {v1}, Landroidx/navigation/NavigatorState;->getTransitionsInProgress()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v5

    invoke-interface {v5}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Iterable;

    .local v5, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v6, 0x0

    .line 713
    .local v6, "$i$f$forEach":I
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .local v8, "element$iv":Ljava/lang/Object;
    move-object v9, v8

    check-cast v9, Landroidx/navigation/NavBackStackEntry;

    .local v9, "entry":Landroidx/navigation/NavBackStackEntry;
    const/4 v10, 0x0

    .line 274
    .local v10, "$i$a$-forEach-FragmentNavigator$attachClearViewModel$1$1$1":I
    const/4 v11, 0x2

    invoke-static {v2, v11}, Landroidx/navigation/fragment/FragmentNavigator;->access$isLoggingEnabled(Landroidx/navigation/fragment/FragmentNavigator;I)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 276
    nop

    .line 277
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Marking transition complete for entry "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 278
    nop

    .line 277
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 278
    nop

    .line 277
    const-string v12, " due to fragment "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 278
    nop

    .line 277
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 278
    nop

    .line 277
    const-string v12, " viewmodel being cleared"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 275
    const-string v12, "FragmentNavigator"

    invoke-static {v12, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    :cond_0
    invoke-virtual {v1, v9}, Landroidx/navigation/NavigatorState;->markTransitionComplete(Landroidx/navigation/NavBackStackEntry;)V

    .line 282
    nop

    .line 713
    .end local v9    # "entry":Landroidx/navigation/NavBackStackEntry;
    .end local v10    # "$i$a$-forEach-FragmentNavigator$attachClearViewModel$1$1$1":I
    nop

    .end local v8    # "element$iv":Ljava/lang/Object;
    goto :goto_0

    .line 714
    :cond_1
    nop

    .line 283
    .end local v5    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v6    # "$i$f$forEach":I
    nop

    .line 272
    .end local v0    # "it":Landroidx/navigation/NavBackStackEntry;
    .end local v4    # "$i$a$-let-FragmentNavigator$attachClearViewModel$1$1":I
    nop

    .line 284
    return-void
.end method
