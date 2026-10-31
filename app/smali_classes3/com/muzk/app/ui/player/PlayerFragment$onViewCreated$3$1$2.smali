.class final Lcom/muzk/app/ui/player/PlayerFragment$onViewCreated$3$1$2;
.super Ljava/lang/Object;
.source "PlayerFragment.kt"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muzk/app/ui/player/PlayerFragment$onViewCreated$3$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    value = "SMAP\nPlayerFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PlayerFragment.kt\ncom/muzk/app/ui/player/PlayerFragment$onViewCreated$3$1$2\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Extensions.kt\ncoil/-SingletonExtensions\n+ 4 ImageRequest.kt\ncoil/request/ImageRequest$Builder\n*L\n1#1,225:1\n1#2:226\n54#3,3:227\n24#3:230\n59#3,4:231\n63#3,2:246\n490#4,11:235\n*S KotlinDebug\n*F\n+ 1 PlayerFragment.kt\ncom/muzk/app/ui/player/PlayerFragment$onViewCreated$3$1$2\n*L\n99#1:227,3\n99#1:230\n99#1:231,4\n99#1:246,2\n103#1:235,11\n*E\n"
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

.field final synthetic this$0:Lcom/muzk/app/ui/player/PlayerFragment;


# direct methods
.method constructor <init>(Lcom/muzk/app/ui/player/PlayerFragment;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/muzk/app/ui/player/PlayerFragment;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/muzk/app/ui/player/PlayerFragment$onViewCreated$3$1$2;->this$0:Lcom/muzk/app/ui/player/PlayerFragment;

    iput-object p2, p0, Lcom/muzk/app/ui/player/PlayerFragment$onViewCreated$3$1$2;->$lastCover:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Lcom/muzk/app/playback/PlayerUiState;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 16
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

    .line 85
    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Lcom/muzk/app/playback/PlayerUiState;->getHasMedia()Z

    move-result v1

    if-nez v1, :cond_0

    .line 86
    iget-object v1, v0, Lcom/muzk/app/ui/player/PlayerFragment$onViewCreated$3$1$2;->this$0:Lcom/muzk/app/ui/player/PlayerFragment;

    check-cast v1, Landroidx/fragment/app/Fragment;

    invoke-static {v1}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/navigation/NavController;->popBackStack()Z

    .line 87
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    .line 89
    :cond_0
    iget-object v1, v0, Lcom/muzk/app/ui/player/PlayerFragment$onViewCreated$3$1$2;->this$0:Lcom/muzk/app/ui/player/PlayerFragment;

    invoke-static {v1}, Lcom/muzk/app/ui/player/PlayerFragment;->access$getBinding(Lcom/muzk/app/ui/player/PlayerFragment;)Lcom/muzk/app/databinding/FragmentPlayerBinding;

    move-result-object v1

    .local v1, "$this$emit_u24lambda_u244":Lcom/muzk/app/databinding/FragmentPlayerBinding;
    iget-object v2, v0, Lcom/muzk/app/ui/player/PlayerFragment$onViewCreated$3$1$2;->this$0:Lcom/muzk/app/ui/player/PlayerFragment;

    iget-object v3, v0, Lcom/muzk/app/ui/player/PlayerFragment$onViewCreated$3$1$2;->$lastCover:Lkotlin/jvm/internal/Ref$ObjectRef;

    const/4 v4, 0x0

    .line 90
    .local v4, "$i$a$-with-PlayerFragment$onViewCreated$3$1$2$1":I
    invoke-static {v2}, Lcom/muzk/app/ui/player/PlayerFragment;->access$renderLike(Lcom/muzk/app/ui/player/PlayerFragment;)V

    .line 91
    iget-object v5, v1, Lcom/muzk/app/databinding/FragmentPlayerBinding;->title:Landroid/widget/TextView;

    invoke-virtual/range {p1 .. p1}, Lcom/muzk/app/playback/PlayerUiState;->getTitle()Ljava/lang/String;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v5, v1, Lcom/muzk/app/databinding/FragmentPlayerBinding;->artist:Landroid/widget/TextView;

    invoke-virtual/range {p1 .. p1}, Lcom/muzk/app/playback/PlayerUiState;->getArtist()Ljava/lang/String;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v5, v1, Lcom/muzk/app/databinding/FragmentPlayerBinding;->contextLabel:Landroid/widget/TextView;

    invoke-virtual/range {p1 .. p1}, Lcom/muzk/app/playback/PlayerUiState;->isRemote()Z

    move-result v6

    if-eqz v6, :cond_1

    sget v6, Lcom/muzk/app/R$string;->playing_from_search:I

    goto :goto_0

    :cond_1
    sget v6, Lcom/muzk/app/R$string;->playing_from_library:I

    :goto_0
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 94
    iget-object v5, v1, Lcom/muzk/app/databinding/FragmentPlayerBinding;->contextName:Landroid/widget/TextView;

    invoke-virtual/range {p1 .. p1}, Lcom/muzk/app/playback/PlayerUiState;->getSource()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v6, :cond_2

    :goto_1
    check-cast v6, Ljava/lang/CharSequence;

    goto :goto_5

    .line 95
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/muzk/app/playback/PlayerUiState;->getAlbum()Ljava/lang/String;

    move-result-object v6

    .line 226
    move-object v10, v6

    .local v10, "it":Ljava/lang/String;
    const/4 v11, 0x0

    .line 95
    .local v11, "$i$a$-takeIf-PlayerFragment$onViewCreated$3$1$2$1$1":I
    move-object v12, v10

    check-cast v12, Ljava/lang/CharSequence;

    invoke-static {v12}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/muzk/app/playback/PlayerUiState;->isRemote()Z

    move-result v12

    if-nez v12, :cond_3

    move v10, v8

    goto :goto_2

    :cond_3
    move v10, v9

    .end local v10    # "it":Ljava/lang/String;
    .end local v11    # "$i$a$-takeIf-PlayerFragment$onViewCreated$3$1$2$1$1":I
    :goto_2
    invoke-static {v10}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_4

    goto :goto_3

    :cond_4
    move-object v6, v7

    .line 94
    :goto_3
    if-eqz v6, :cond_5

    goto :goto_1

    .line 96
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/muzk/app/playback/PlayerUiState;->isRemote()Z

    move-result v6

    if-eqz v6, :cond_6

    sget v6, Lcom/muzk/app/R$string;->tab_search:I

    goto :goto_4

    :cond_6
    sget v6, Lcom/muzk/app/R$string;->source_all_tracks:I

    :goto_4
    invoke-virtual {v2, v6}, Lcom/muzk/app/ui/player/PlayerFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v10, "getString(...)"

    invoke-static {v6, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Ljava/lang/CharSequence;

    .line 94
    :goto_5
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    invoke-virtual/range {p1 .. p1}, Lcom/muzk/app/playback/PlayerUiState;->getCover()Ljava/lang/Object;

    move-result-object v5

    iget-object v6, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 98
    invoke-virtual/range {p1 .. p1}, Lcom/muzk/app/playback/PlayerUiState;->getCover()Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 99
    iget-object v3, v1, Lcom/muzk/app/databinding/FragmentPlayerBinding;->cover:Lcom/google/android/material/imageview/ShapeableImageView;

    const-string v5, "cover"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/widget/ImageView;

    .local v3, "$this$load_u24default$iv":Landroid/widget/ImageView;
    invoke-virtual/range {p1 .. p1}, Lcom/muzk/app/playback/PlayerUiState;->getCover()Ljava/lang/Object;

    move-result-object v5

    .line 227
    .local v5, "data$iv":Ljava/lang/Object;
    nop

    .line 229
    invoke-virtual {v3}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v6

    .local v6, "$this$imageLoader$iv$iv":Landroid/content/Context;
    const/4 v10, 0x0

    .line 230
    .local v10, "$i$f$getImageLoader":I
    invoke-static {v6}, Lcoil/Coil;->imageLoader(Landroid/content/Context;)Lcoil/ImageLoader;

    move-result-object v6

    .line 227
    .end local v10    # "$i$f$getImageLoader":I
    .local v6, "imageLoader$iv":Lcoil/ImageLoader;
    const/4 v10, 0x0

    .line 231
    .local v10, "$i$f$load":I
    new-instance v11, Lcoil/request/ImageRequest$Builder;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-direct {v11, v12}, Lcoil/request/ImageRequest$Builder;-><init>(Landroid/content/Context;)V

    .line 232
    invoke-virtual {v11, v5}, Lcoil/request/ImageRequest$Builder;->data(Ljava/lang/Object;)Lcoil/request/ImageRequest$Builder;

    move-result-object v11

    .line 233
    invoke-virtual {v11, v3}, Lcoil/request/ImageRequest$Builder;->target(Landroid/widget/ImageView;)Lcoil/request/ImageRequest$Builder;

    move-result-object v11

    .line 234
    move-object v12, v11

    .local v12, "$this$emit_u24lambda_u244_u24lambda_u243":Lcoil/request/ImageRequest$Builder;
    const/4 v13, 0x0

    .line 100
    .local v13, "$i$a$-load$default-PlayerFragment$onViewCreated$3$1$2$1$2":I
    sget v14, Lcom/muzk/app/R$drawable;->cover_placeholder:I

    invoke-virtual {v12, v14}, Lcoil/request/ImageRequest$Builder;->placeholder(I)Lcoil/request/ImageRequest$Builder;

    .line 101
    sget v14, Lcom/muzk/app/R$drawable;->cover_placeholder:I

    invoke-virtual {v12, v14}, Lcoil/request/ImageRequest$Builder;->error(I)Lcoil/request/ImageRequest$Builder;

    .line 102
    invoke-virtual {v12, v9}, Lcoil/request/ImageRequest$Builder;->allowHardware(Z)Lcoil/request/ImageRequest$Builder;

    .line 103
    nop

    .line 235
    nop

    .line 236
    nop

    .line 235
    nop

    .line 237
    nop

    .line 235
    const/4 v14, 0x0

    .line 240
    .local v14, "$i$f$listener":I
    new-instance v15, Lcom/muzk/app/ui/player/PlayerFragment$onViewCreated$3$1$2$emit$lambda$4$lambda$3$$inlined$listener$default$1;

    invoke-direct {v15, v2, v2}, Lcom/muzk/app/ui/player/PlayerFragment$onViewCreated$3$1$2$emit$lambda$4$lambda$3$$inlined$listener$default$1;-><init>(Lcom/muzk/app/ui/player/PlayerFragment;Lcom/muzk/app/ui/player/PlayerFragment;)V

    check-cast v15, Lcoil/request/ImageRequest$Listener;

    invoke-virtual {v12, v15}, Lcoil/request/ImageRequest$Builder;->listener(Lcoil/request/ImageRequest$Listener;)Lcoil/request/ImageRequest$Builder;

    .line 245
    nop

    .line 107
    .end local v14    # "$i$f$listener":I
    nop

    .line 234
    .end local v12    # "$this$emit_u24lambda_u244_u24lambda_u243":Lcoil/request/ImageRequest$Builder;
    .end local v13    # "$i$a$-load$default-PlayerFragment$onViewCreated$3$1$2$1$2":I
    nop

    .line 246
    invoke-virtual {v11}, Lcoil/request/ImageRequest$Builder;->build()Lcoil/request/ImageRequest;

    move-result-object v11

    .line 231
    nop

    .line 247
    .local v11, "request$iv":Lcoil/request/ImageRequest;
    invoke-interface {v6, v11}, Lcoil/ImageLoader;->enqueue(Lcoil/request/ImageRequest;)Lcoil/request/Disposable;

    .line 109
    .end local v3    # "$this$load_u24default$iv":Landroid/widget/ImageView;
    .end local v5    # "data$iv":Ljava/lang/Object;
    .end local v6    # "imageLoader$iv":Lcoil/ImageLoader;
    .end local v10    # "$i$f$load":I
    .end local v11    # "request$iv":Lcoil/request/ImageRequest;
    :cond_7
    iget-object v3, v1, Lcom/muzk/app/databinding/FragmentPlayerBinding;->btnPlay:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual/range {p1 .. p1}, Lcom/muzk/app/playback/PlayerUiState;->isPlaying()Z

    move-result v5

    if-eqz v5, :cond_8

    sget v5, Lcom/muzk/app/R$drawable;->ic_pause:I

    goto :goto_6

    :cond_8
    sget v5, Lcom/muzk/app/R$drawable;->ic_play:I

    :goto_6
    invoke-virtual {v3, v5}, Lcom/google/android/material/button/MaterialButton;->setIconResource(I)V

    .line 110
    iget-object v3, v1, Lcom/muzk/app/databinding/FragmentPlayerBinding;->btnShuffle:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual/range {p1 .. p1}, Lcom/muzk/app/playback/PlayerUiState;->getShuffle()Z

    move-result v5

    const/4 v6, 0x2

    invoke-static {v2, v5, v9, v6, v7}, Lcom/muzk/app/ui/player/PlayerFragment;->toggleTint$default(Lcom/muzk/app/ui/player/PlayerFragment;ZIILjava/lang/Object;)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/google/android/material/button/MaterialButton;->setIconTint(Landroid/content/res/ColorStateList;)V

    .line 111
    iget-object v3, v1, Lcom/muzk/app/databinding/FragmentPlayerBinding;->btnRepeat:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual/range {p1 .. p1}, Lcom/muzk/app/playback/PlayerUiState;->getRepeatMode()I

    move-result v5

    if-eqz v5, :cond_9

    move v5, v8

    goto :goto_7

    :cond_9
    move v5, v9

    :goto_7
    invoke-static {v2, v5, v9, v6, v7}, Lcom/muzk/app/ui/player/PlayerFragment;->toggleTint$default(Lcom/muzk/app/ui/player/PlayerFragment;ZIILjava/lang/Object;)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/google/android/material/button/MaterialButton;->setIconTint(Landroid/content/res/ColorStateList;)V

    .line 112
    iget-object v3, v1, Lcom/muzk/app/databinding/FragmentPlayerBinding;->btnRepeat:Lcom/google/android/material/button/MaterialButton;

    .line 113
    invoke-virtual/range {p1 .. p1}, Lcom/muzk/app/playback/PlayerUiState;->getRepeatMode()I

    move-result v5

    if-ne v5, v8, :cond_a

    sget v5, Lcom/muzk/app/R$drawable;->ic_repeat_one:I

    goto :goto_8

    :cond_a
    sget v5, Lcom/muzk/app/R$drawable;->ic_repeat:I

    .line 112
    :goto_8
    invoke-virtual {v3, v5}, Lcom/google/android/material/button/MaterialButton;->setIconResource(I)V

    .line 116
    invoke-virtual/range {p1 .. p1}, Lcom/muzk/app/playback/PlayerUiState;->getDurationMs()J

    move-result-wide v5

    long-to-float v3, v5

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v3, v5}, Lkotlin/ranges/RangesKt;->coerceAtLeast(FF)F

    move-result v3

    .line 117
    .local v3, "duration":F
    invoke-static {v2}, Lcom/muzk/app/ui/player/PlayerFragment;->access$getDragging$p(Lcom/muzk/app/ui/player/PlayerFragment;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 118
    iget-object v2, v1, Lcom/muzk/app/databinding/FragmentPlayerBinding;->seek:Lcom/google/android/material/slider/Slider;

    invoke-virtual {v2}, Lcom/google/android/material/slider/Slider;->getValueTo()F

    move-result v2

    cmpg-float v2, v2, v3

    if-nez v2, :cond_b

    goto :goto_9

    :cond_b
    move v8, v9

    :goto_9
    const/4 v2, 0x0

    if-nez v8, :cond_c

    .line 119
    iget-object v5, v1, Lcom/muzk/app/databinding/FragmentPlayerBinding;->seek:Lcom/google/android/material/slider/Slider;

    invoke-virtual {v5, v2}, Lcom/google/android/material/slider/Slider;->setValue(F)V

    .line 120
    iget-object v5, v1, Lcom/muzk/app/databinding/FragmentPlayerBinding;->seek:Lcom/google/android/material/slider/Slider;

    invoke-virtual {v5, v3}, Lcom/google/android/material/slider/Slider;->setValueTo(F)V

    .line 122
    :cond_c
    iget-object v5, v1, Lcom/muzk/app/databinding/FragmentPlayerBinding;->seek:Lcom/google/android/material/slider/Slider;

    invoke-virtual/range {p1 .. p1}, Lcom/muzk/app/playback/PlayerUiState;->getPositionMs()J

    move-result-wide v6

    long-to-float v6, v6

    invoke-static {v6, v2, v3}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result v2

    invoke-virtual {v5, v2}, Lcom/google/android/material/slider/Slider;->setValue(F)V

    .line 123
    iget-object v2, v1, Lcom/muzk/app/databinding/FragmentPlayerBinding;->position:Landroid/widget/TextView;

    invoke-virtual/range {p1 .. p1}, Lcom/muzk/app/playback/PlayerUiState;->getPositionMs()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/muzk/app/data/ModelsKt;->formatDuration(J)Ljava/lang/String;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    :cond_d
    iget-object v2, v1, Lcom/muzk/app/databinding/FragmentPlayerBinding;->duration:Landroid/widget/TextView;

    invoke-virtual/range {p1 .. p1}, Lcom/muzk/app/playback/PlayerUiState;->getDurationMs()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/muzk/app/data/ModelsKt;->formatDuration(J)Ljava/lang/String;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    nop

    .line 89
    .end local v1    # "$this$emit_u24lambda_u244":Lcom/muzk/app/databinding/FragmentPlayerBinding;
    .end local v3    # "duration":F
    .end local v4    # "$i$a$-with-PlayerFragment$onViewCreated$3$1$2$1":I
    nop

    .line 127
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 84
    move-object v0, p1

    check-cast v0, Lcom/muzk/app/playback/PlayerUiState;

    invoke-virtual {p0, v0, p2}, Lcom/muzk/app/ui/player/PlayerFragment$onViewCreated$3$1$2;->emit(Lcom/muzk/app/playback/PlayerUiState;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
