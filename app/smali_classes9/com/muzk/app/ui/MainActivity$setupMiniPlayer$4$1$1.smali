.class final Lcom/muzk/app/ui/MainActivity$setupMiniPlayer$4$1$1;
.super Ljava/lang/Object;
.source "MainActivity.kt"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muzk/app/ui/MainActivity$setupMiniPlayer$4$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    value = "SMAP\nMainActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MainActivity.kt\ncom/muzk/app/ui/MainActivity$setupMiniPlayer$4$1$1\n+ 2 Extensions.kt\ncoil/-SingletonExtensions\n+ 3 ImageRequest.kt\ncoil/request/ImageRequest$Builder\n*L\n1#1,216:1\n54#2,3:217\n24#2:220\n59#2,4:221\n63#2,2:236\n490#3,11:225\n*S KotlinDebug\n*F\n+ 1 MainActivity.kt\ncom/muzk/app/ui/MainActivity$setupMiniPlayer$4$1$1\n*L\n111#1:217,3\n111#1:220\n111#1:221,4\n111#1:236,2\n115#1:225,11\n*E\n"
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
.field final synthetic $lastCover:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $mini:Lcom/muzk/app/databinding/ViewMiniPlayerBinding;

.field final synthetic this$0:Lcom/muzk/app/ui/MainActivity;


# direct methods
.method constructor <init>(Lcom/muzk/app/ui/MainActivity;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/muzk/app/databinding/ViewMiniPlayerBinding;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/muzk/app/ui/MainActivity;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/muzk/app/databinding/ViewMiniPlayerBinding;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/muzk/app/ui/MainActivity$setupMiniPlayer$4$1$1;->this$0:Lcom/muzk/app/ui/MainActivity;

    iput-object p2, p0, Lcom/muzk/app/ui/MainActivity$setupMiniPlayer$4$1$1;->$lastCover:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p3, p0, Lcom/muzk/app/ui/MainActivity$setupMiniPlayer$4$1$1;->$mini:Lcom/muzk/app/databinding/ViewMiniPlayerBinding;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Lcom/muzk/app/playback/PlayerUiState;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 11
    .param p1, "s"    # Lcom/muzk/app/playback/PlayerUiState;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/muzk/app/playback/PlayerUiState;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lcom/muzk/app/ui/MainActivity$setupMiniPlayer$4$1$1;->this$0:Lcom/muzk/app/ui/MainActivity;

    invoke-static {v0, p1}, Lcom/muzk/app/ui/MainActivity;->access$renderMiniPlayer(Lcom/muzk/app/ui/MainActivity;Lcom/muzk/app/playback/PlayerUiState;)V

    .line 109
    invoke-virtual {p1}, Lcom/muzk/app/playback/PlayerUiState;->getCover()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/muzk/app/ui/MainActivity$setupMiniPlayer$4$1$1;->$lastCover:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/muzk/app/ui/MainActivity$setupMiniPlayer$4$1$1;->$lastCover:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-virtual {p1}, Lcom/muzk/app/playback/PlayerUiState;->getCover()Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 111
    iget-object v0, p0, Lcom/muzk/app/ui/MainActivity$setupMiniPlayer$4$1$1;->$mini:Lcom/muzk/app/databinding/ViewMiniPlayerBinding;

    iget-object v0, v0, Lcom/muzk/app/databinding/ViewMiniPlayerBinding;->miniCover:Lcom/google/android/material/imageview/ShapeableImageView;

    const-string v2, "miniCover"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageView;

    .local v0, "$this$load_u24default$iv":Landroid/widget/ImageView;
    invoke-virtual {p1}, Lcom/muzk/app/playback/PlayerUiState;->getCover()Ljava/lang/Object;

    move-result-object v2

    .local v2, "data$iv":Ljava/lang/Object;
    iget-object v3, p0, Lcom/muzk/app/ui/MainActivity$setupMiniPlayer$4$1$1;->this$0:Lcom/muzk/app/ui/MainActivity;

    .line 217
    nop

    .line 219
    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v4

    .local v4, "$this$imageLoader$iv$iv":Landroid/content/Context;
    const/4 v5, 0x0

    .line 220
    .local v5, "$i$f$getImageLoader":I
    invoke-static {v4}, Lcoil/Coil;->imageLoader(Landroid/content/Context;)Lcoil/ImageLoader;

    move-result-object v4

    .line 217
    .end local v5    # "$i$f$getImageLoader":I
    .local v4, "imageLoader$iv":Lcoil/ImageLoader;
    const/4 v5, 0x0

    .line 221
    .local v5, "$i$f$load":I
    new-instance v6, Lcoil/request/ImageRequest$Builder;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Lcoil/request/ImageRequest$Builder;-><init>(Landroid/content/Context;)V

    .line 222
    invoke-virtual {v6, v2}, Lcoil/request/ImageRequest$Builder;->data(Ljava/lang/Object;)Lcoil/request/ImageRequest$Builder;

    move-result-object v6

    .line 223
    invoke-virtual {v6, v0}, Lcoil/request/ImageRequest$Builder;->target(Landroid/widget/ImageView;)Lcoil/request/ImageRequest$Builder;

    move-result-object v6

    .line 224
    move-object v7, v6

    .local v7, "$this$emit_u24lambda_u242":Lcoil/request/ImageRequest$Builder;
    const/4 v8, 0x0

    .line 112
    .local v8, "$i$a$-load$default-MainActivity$setupMiniPlayer$4$1$1$1":I
    sget v9, Lcom/muzk/app/R$drawable;->cover_placeholder:I

    invoke-virtual {v7, v9}, Lcoil/request/ImageRequest$Builder;->placeholder(I)Lcoil/request/ImageRequest$Builder;

    .line 113
    sget v9, Lcom/muzk/app/R$drawable;->cover_placeholder:I

    invoke-virtual {v7, v9}, Lcoil/request/ImageRequest$Builder;->error(I)Lcoil/request/ImageRequest$Builder;

    .line 114
    invoke-virtual {v7, v1}, Lcoil/request/ImageRequest$Builder;->allowHardware(Z)Lcoil/request/ImageRequest$Builder;

    .line 115
    nop

    .line 225
    nop

    .line 226
    nop

    .line 225
    nop

    .line 227
    nop

    .line 225
    const/4 v9, 0x0

    .line 230
    .local v9, "$i$f$listener":I
    new-instance v10, Lcom/muzk/app/ui/MainActivity$setupMiniPlayer$4$1$1$emit$lambda$2$$inlined$listener$default$1;

    invoke-direct {v10, v3, v3}, Lcom/muzk/app/ui/MainActivity$setupMiniPlayer$4$1$1$emit$lambda$2$$inlined$listener$default$1;-><init>(Lcom/muzk/app/ui/MainActivity;Lcom/muzk/app/ui/MainActivity;)V

    check-cast v10, Lcoil/request/ImageRequest$Listener;

    invoke-virtual {v7, v10}, Lcoil/request/ImageRequest$Builder;->listener(Lcoil/request/ImageRequest$Listener;)Lcoil/request/ImageRequest$Builder;

    .line 235
    nop

    .line 119
    .end local v9    # "$i$f$listener":I
    nop

    .line 224
    .end local v7    # "$this$emit_u24lambda_u242":Lcoil/request/ImageRequest$Builder;
    .end local v8    # "$i$a$-load$default-MainActivity$setupMiniPlayer$4$1$1$1":I
    nop

    .line 236
    invoke-virtual {v6}, Lcoil/request/ImageRequest$Builder;->build()Lcoil/request/ImageRequest;

    move-result-object v3

    .line 221
    nop

    .line 237
    .local v3, "request$iv":Lcoil/request/ImageRequest;
    invoke-interface {v4, v3}, Lcoil/ImageLoader;->enqueue(Lcoil/request/ImageRequest;)Lcoil/request/Disposable;

    .line 121
    .end local v0    # "$this$load_u24default$iv":Landroid/widget/ImageView;
    .end local v2    # "data$iv":Ljava/lang/Object;
    .end local v3    # "request$iv":Lcoil/request/ImageRequest;
    .end local v4    # "imageLoader$iv":Lcoil/ImageLoader;
    .end local v5    # "$i$f$load":I
    :cond_0
    invoke-virtual {p1}, Lcom/muzk/app/playback/PlayerUiState;->getError()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/muzk/app/ui/MainActivity$setupMiniPlayer$4$1$1;->this$0:Lcom/muzk/app/ui/MainActivity;

    .local v0, "it":Ljava/lang/String;
    const/4 v3, 0x0

    .line 122
    .local v3, "$i$a$-let-MainActivity$setupMiniPlayer$4$1$1$2":I
    invoke-static {v2}, Lcom/muzk/app/ui/MainActivity;->access$getBinding$p(Lcom/muzk/app/ui/MainActivity;)Lcom/muzk/app/databinding/ActivityMainBinding;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "binding"

    if-nez v4, :cond_1

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v5

    :cond_1
    iget-object v4, v4, Lcom/muzk/app/databinding/ActivityMainBinding;->root:Landroidx/constraintlayout/widget/ConstraintLayout;

    check-cast v4, Landroid/view/View;

    move-object v7, v0

    check-cast v7, Ljava/lang/CharSequence;

    invoke-static {v4, v7, v1}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v1

    invoke-static {v2}, Lcom/muzk/app/ui/MainActivity;->access$getBinding$p(Lcom/muzk/app/ui/MainActivity;)Lcom/muzk/app/databinding/ActivityMainBinding;

    move-result-object v4

    if-nez v4, :cond_2

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v5, v4

    :goto_0
    iget-object v4, v5, Lcom/muzk/app/databinding/ActivityMainBinding;->bottomNav:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    check-cast v4, Landroid/view/View;

    invoke-virtual {v1, v4}, Lcom/google/android/material/snackbar/Snackbar;->setAnchorView(Landroid/view/View;)Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/snackbar/Snackbar;

    invoke-virtual {v1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    .line 123
    invoke-static {v2}, Lcom/muzk/app/ui/MainActivity;->access$getPlayer(Lcom/muzk/app/ui/MainActivity;)Lcom/muzk/app/playback/PlayerViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/muzk/app/playback/PlayerViewModel;->clearError()V

    .line 124
    nop

    .line 121
    .end local v0    # "it":Ljava/lang/String;
    .end local v3    # "$i$a$-let-MainActivity$setupMiniPlayer$4$1$1$2":I
    nop

    .line 125
    :cond_3
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 107
    move-object v0, p1

    check-cast v0, Lcom/muzk/app/playback/PlayerUiState;

    invoke-virtual {p0, v0, p2}, Lcom/muzk/app/ui/MainActivity$setupMiniPlayer$4$1$1;->emit(Lcom/muzk/app/playback/PlayerUiState;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
