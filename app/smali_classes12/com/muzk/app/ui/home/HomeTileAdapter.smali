.class public final Lcom/muzk/app/ui/home/HomeTileAdapter;
.super Landroidx/recyclerview/widget/ListAdapter;
.source "HomeAdapters.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/muzk/app/ui/home/HomeTileAdapter$Companion;,
        Lcom/muzk/app/ui/home/HomeTileAdapter$VH;,
        Lcom/muzk/app/ui/home/HomeTileAdapter$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/ListAdapter<",
        "Lcom/muzk/app/ui/home/HomeTile;",
        "Lcom/muzk/app/ui/home/HomeTileAdapter$VH;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHomeAdapters.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HomeAdapters.kt\ncom/muzk/app/ui/home/HomeTileAdapter\n+ 2 View.kt\nandroidx/core/view/ViewKt\n+ 3 Extensions.kt\ncoil/-SingletonExtensions\n+ 4 ImageRequest.kt\ncoil/request/ImageRequest$Builder\n*L\n1#1,102:1\n257#2,2:103\n71#3,2:105\n54#3,3:107\n24#3:110\n59#3,4:111\n63#3,2:126\n490#4,11:115\n*S KotlinDebug\n*F\n+ 1 HomeAdapters.kt\ncom/muzk/app/ui/home/HomeTileAdapter\n*L\n51#1:103,2\n52#1:105,2\n55#1:107,3\n55#1:110\n55#1:111,4\n55#1:126,2\n56#1:115,11\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 \u00142\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0002\u0013\u0014B\u001b\u0012\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0018\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0016J\u0018\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u00032\u0006\u0010\u0012\u001a\u00020\rH\u0016R\u001a\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/muzk/app/ui/home/HomeTileAdapter;",
        "Landroidx/recyclerview/widget/ListAdapter;",
        "Lcom/muzk/app/ui/home/HomeTile;",
        "Lcom/muzk/app/ui/home/HomeTileAdapter$VH;",
        "onClick",
        "Lkotlin/Function1;",
        "",
        "<init>",
        "(Lkotlin/jvm/functions/Function1;)V",
        "onCreateViewHolder",
        "parent",
        "Landroid/view/ViewGroup;",
        "viewType",
        "",
        "defaultIconTint",
        "Landroid/content/res/ColorStateList;",
        "onBindViewHolder",
        "holder",
        "position",
        "VH",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/muzk/app/ui/home/HomeTileAdapter$Companion;

.field private static final DIFF:Lcom/muzk/app/ui/home/HomeTileAdapter$Companion$DIFF$1;


# instance fields
.field private defaultIconTint:Landroid/content/res/ColorStateList;

.field private final onClick:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/muzk/app/ui/home/HomeTile;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$v8izxKp5YGy9DQ3r_6hXAhR1Zjc(Lcom/muzk/app/ui/home/HomeTileAdapter;Lcom/muzk/app/ui/home/HomeTile;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/muzk/app/ui/home/HomeTileAdapter;->onBindViewHolder$lambda$4$lambda$3(Lcom/muzk/app/ui/home/HomeTileAdapter;Lcom/muzk/app/ui/home/HomeTile;Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/muzk/app/ui/home/HomeTileAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/muzk/app/ui/home/HomeTileAdapter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/muzk/app/ui/home/HomeTileAdapter;->Companion:Lcom/muzk/app/ui/home/HomeTileAdapter$Companion;

    .line 65
    new-instance v0, Lcom/muzk/app/ui/home/HomeTileAdapter$Companion$DIFF$1;

    invoke-direct {v0}, Lcom/muzk/app/ui/home/HomeTileAdapter$Companion$DIFF$1;-><init>()V

    sput-object v0, Lcom/muzk/app/ui/home/HomeTileAdapter;->DIFF:Lcom/muzk/app/ui/home/HomeTileAdapter$Companion$DIFF$1;

    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1, "onClick"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/muzk/app/ui/home/HomeTile;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "onClick"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    sget-object v0, Lcom/muzk/app/ui/home/HomeTileAdapter;->DIFF:Lcom/muzk/app/ui/home/HomeTileAdapter$Companion$DIFF$1;

    check-cast v0, Landroidx/recyclerview/widget/DiffUtil$ItemCallback;

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/ListAdapter;-><init>(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V

    .line 21
    iput-object p1, p0, Lcom/muzk/app/ui/home/HomeTileAdapter;->onClick:Lkotlin/jvm/functions/Function1;

    .line 20
    return-void
.end method

.method private static final onBindViewHolder$lambda$4$lambda$3(Lcom/muzk/app/ui/home/HomeTileAdapter;Lcom/muzk/app/ui/home/HomeTile;Landroid/view/View;)V
    .locals 1
    .param p0, "this$0"    # Lcom/muzk/app/ui/home/HomeTileAdapter;
    .param p1, "$tile"    # Lcom/muzk/app/ui/home/HomeTile;
    .param p2, "it"    # Landroid/view/View;

    .line 59
    iget-object v0, p0, Lcom/muzk/app/ui/home/HomeTileAdapter;->onClick:Lkotlin/jvm/functions/Function1;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 1
    .param p1, "p0"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .param p2, "p1"    # I

    .line 20
    move-object v0, p1

    check-cast v0, Lcom/muzk/app/ui/home/HomeTileAdapter$VH;

    invoke-virtual {p0, v0, p2}, Lcom/muzk/app/ui/home/HomeTileAdapter;->onBindViewHolder(Lcom/muzk/app/ui/home/HomeTileAdapter$VH;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/muzk/app/ui/home/HomeTileAdapter$VH;I)V
    .locals 19
    .param p1, "holder"    # Lcom/muzk/app/ui/home/HomeTileAdapter$VH;
    .param p2, "position"    # I

    move-object/from16 v0, p0

    const-string v1, "holder"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-virtual/range {p1 .. p1}, Lcom/muzk/app/ui/home/HomeTileAdapter$VH;->getB()Lcom/muzk/app/databinding/ItemHomeTileBinding;

    move-result-object v1

    .local v1, "$this$onBindViewHolder_u24lambda_u244":Lcom/muzk/app/databinding/ItemHomeTileBinding;
    const/4 v3, 0x0

    .line 30
    .local v3, "$i$a$-with-HomeTileAdapter$onBindViewHolder$1":I
    move/from16 v4, p2

    invoke-virtual {v0, v4}, Lcom/muzk/app/ui/home/HomeTileAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/muzk/app/ui/home/HomeTile;

    .line 31
    .local v5, "tile":Lcom/muzk/app/ui/home/HomeTile;
    iget-object v6, v0, Lcom/muzk/app/ui/home/HomeTileAdapter;->defaultIconTint:Landroid/content/res/ColorStateList;

    if-nez v6, :cond_0

    iget-object v6, v1, Lcom/muzk/app/databinding/ItemHomeTileBinding;->icon:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getImageTintList()Landroid/content/res/ColorStateList;

    move-result-object v6

    iput-object v6, v0, Lcom/muzk/app/ui/home/HomeTileAdapter;->defaultIconTint:Landroid/content/res/ColorStateList;

    .line 32
    :cond_0
    iget-object v6, v1, Lcom/muzk/app/databinding/ItemHomeTileBinding;->title:Landroid/widget/TextView;

    invoke-virtual {v5}, Lcom/muzk/app/ui/home/HomeTile;->getTitle()Ljava/lang/String;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    invoke-virtual {v5}, Lcom/muzk/app/ui/home/HomeTile;->getKind()Lcom/muzk/app/ui/home/HomeTile$Kind;

    move-result-object v6

    sget-object v7, Lcom/muzk/app/ui/home/HomeTileAdapter$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v6}, Lcom/muzk/app/ui/home/HomeTile$Kind;->ordinal()I

    move-result v6

    aget v6, v7, v6

    packed-switch v6, :pswitch_data_0

    new-instance v2, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v2}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v2

    .line 36
    :pswitch_0
    sget v6, Lcom/muzk/app/R$drawable;->ic_folder:I

    goto :goto_0

    .line 35
    :pswitch_1
    sget v6, Lcom/muzk/app/R$drawable;->ic_library:I

    goto :goto_0

    .line 34
    :pswitch_2
    sget v6, Lcom/muzk/app/R$drawable;->ic_playlist:I

    .line 33
    :goto_0
    nop

    .line 38
    .local v6, "fallback":I
    invoke-virtual {v5}, Lcom/muzk/app/ui/home/HomeTile;->getKind()Lcom/muzk/app/ui/home/HomeTile$Kind;

    move-result-object v7

    sget-object v8, Lcom/muzk/app/ui/home/HomeTile$Kind;->PLAYLIST:Lcom/muzk/app/ui/home/HomeTile$Kind;

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-ne v7, v8, :cond_1

    invoke-virtual {v5}, Lcom/muzk/app/ui/home/HomeTile;->getKey()Ljava/lang/String;

    move-result-object v7

    const-string v8, "liked"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    move v7, v9

    goto :goto_1

    :cond_1
    move v7, v10

    .line 39
    .local v7, "liked":Z
    :goto_1
    invoke-virtual {v5}, Lcom/muzk/app/ui/home/HomeTile;->getKind()Lcom/muzk/app/ui/home/HomeTile$Kind;

    move-result-object v8

    sget-object v11, Lcom/muzk/app/ui/home/HomeTile$Kind;->RECENT:Lcom/muzk/app/ui/home/HomeTile$Kind;

    if-ne v8, v11, :cond_2

    goto :goto_2

    :cond_2
    move v9, v10

    :goto_2
    move v8, v9

    .line 40
    .local v8, "all":Z
    nop

    .line 41
    if-eqz v7, :cond_3

    iget-object v9, v1, Lcom/muzk/app/databinding/ItemHomeTileBinding;->iconBox:Landroid/widget/FrameLayout;

    sget v11, Lcom/muzk/app/R$drawable;->bg_liked:I

    invoke-virtual {v9, v11}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_3

    .line 42
    :cond_3
    if-eqz v8, :cond_4

    iget-object v9, v1, Lcom/muzk/app/databinding/ItemHomeTileBinding;->iconBox:Landroid/widget/FrameLayout;

    sget v11, Lcom/muzk/app/R$drawable;->bg_all_art:I

    invoke-virtual {v9, v11}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_3

    .line 43
    :cond_4
    iget-object v9, v1, Lcom/muzk/app/databinding/ItemHomeTileBinding;->iconBox:Landroid/widget/FrameLayout;

    iget-object v11, v1, Lcom/muzk/app/databinding/ItemHomeTileBinding;->iconBox:Landroid/widget/FrameLayout;

    check-cast v11, Landroid/view/View;

    sget v12, Lcom/google/android/material/R$attr;->colorSecondaryContainer:I

    invoke-static {v11, v12}, Lcom/google/android/material/color/MaterialColors;->getColor(Landroid/view/View;I)I

    move-result v11

    invoke-virtual {v9, v11}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 45
    :goto_3
    iget-object v9, v1, Lcom/muzk/app/databinding/ItemHomeTileBinding;->icon:Landroid/widget/ImageView;

    if-eqz v7, :cond_5

    sget v11, Lcom/muzk/app/R$drawable;->ic_favorite:I

    goto :goto_4

    :cond_5
    move v11, v6

    :goto_4
    invoke-virtual {v9, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 46
    iget-object v9, v1, Lcom/muzk/app/databinding/ItemHomeTileBinding;->icon:Landroid/widget/ImageView;

    .line 47
    if-eqz v7, :cond_6

    const/4 v11, -0x1

    invoke-static {v11}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v11

    goto :goto_5

    .line 48
    :cond_6
    if-eqz v8, :cond_7

    iget-object v11, v1, Lcom/muzk/app/databinding/ItemHomeTileBinding;->icon:Landroid/widget/ImageView;

    check-cast v11, Landroid/view/View;

    sget v12, Landroidx/appcompat/R$attr;->colorPrimary:I

    invoke-static {v11, v12}, Lcom/google/android/material/color/MaterialColors;->getColor(Landroid/view/View;I)I

    move-result v11

    invoke-static {v11}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v11

    goto :goto_5

    .line 49
    :cond_7
    iget-object v11, v0, Lcom/muzk/app/ui/home/HomeTileAdapter;->defaultIconTint:Landroid/content/res/ColorStateList;

    .line 46
    :goto_5
    invoke-virtual {v9, v11}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 51
    iget-object v9, v1, Lcom/muzk/app/databinding/ItemHomeTileBinding;->icon:Landroid/widget/ImageView;

    const-string v11, "icon"

    invoke-static {v9, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v9, Landroid/view/View;

    .local v9, "$this$isVisible$iv":Landroid/view/View;
    const/4 v11, 0x1

    .local v11, "value$iv":Z
    const/4 v12, 0x0

    .line 103
    .local v12, "$i$f$setVisible":I
    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 104
    nop

    .line 52
    .end local v9    # "$this$isVisible$iv":Landroid/view/View;
    .end local v11    # "value$iv":Z
    .end local v12    # "$i$f$setVisible":I
    iget-object v9, v1, Lcom/muzk/app/databinding/ItemHomeTileBinding;->cover:Landroid/widget/ImageView;

    const-string v10, "cover"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .local v9, "$this$dispose$iv":Landroid/widget/ImageView;
    const/4 v11, 0x0

    .line 105
    .local v11, "$i$f$dispose":I
    move-object v12, v9

    check-cast v12, Landroid/view/View;

    invoke-static {v12}, Lcoil/util/CoilUtils;->dispose(Landroid/view/View;)V

    .line 106
    nop

    .line 53
    .end local v9    # "$this$dispose$iv":Landroid/widget/ImageView;
    .end local v11    # "$i$f$dispose":I
    iget-object v9, v1, Lcom/muzk/app/databinding/ItemHomeTileBinding;->cover:Landroid/widget/ImageView;

    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 54
    if-nez v7, :cond_8

    invoke-virtual {v5}, Lcom/muzk/app/ui/home/HomeTile;->getCover()Landroid/net/Uri;

    move-result-object v9

    if-eqz v9, :cond_8

    .local v9, "uri":Landroid/net/Uri;
    const/4 v11, 0x0

    .line 55
    .local v11, "$i$a$-let-HomeTileAdapter$onBindViewHolder$1$1":I
    iget-object v12, v1, Lcom/muzk/app/databinding/ItemHomeTileBinding;->cover:Landroid/widget/ImageView;

    invoke-static {v12, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v10, Lcom/muzk/app/data/AudioCover;

    invoke-direct {v10, v9}, Lcom/muzk/app/data/AudioCover;-><init>(Landroid/net/Uri;)V

    .line 107
    .local v10, "data$iv":Ljava/lang/Object;
    .local v12, "$this$load_u24default$iv":Landroid/widget/ImageView;
    nop

    .line 109
    invoke-virtual {v12}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v13

    .local v13, "$this$imageLoader$iv$iv":Landroid/content/Context;
    const/4 v14, 0x0

    .line 110
    .local v14, "$i$f$getImageLoader":I
    invoke-static {v13}, Lcoil/Coil;->imageLoader(Landroid/content/Context;)Lcoil/ImageLoader;

    move-result-object v13

    .line 107
    .end local v14    # "$i$f$getImageLoader":I
    .local v13, "imageLoader$iv":Lcoil/ImageLoader;
    const/4 v14, 0x0

    .line 111
    .local v14, "$i$f$load":I
    new-instance v15, Lcoil/request/ImageRequest$Builder;

    invoke-virtual {v12}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v15, v2}, Lcoil/request/ImageRequest$Builder;-><init>(Landroid/content/Context;)V

    .line 112
    invoke-virtual {v15, v10}, Lcoil/request/ImageRequest$Builder;->data(Ljava/lang/Object;)Lcoil/request/ImageRequest$Builder;

    move-result-object v2

    .line 113
    invoke-virtual {v2, v12}, Lcoil/request/ImageRequest$Builder;->target(Landroid/widget/ImageView;)Lcoil/request/ImageRequest$Builder;

    move-result-object v2

    .line 114
    move-object v15, v2

    .local v15, "$this$onBindViewHolder_u24lambda_u244_u24lambda_u242_u24lambda_u241":Lcoil/request/ImageRequest$Builder;
    const/16 v16, 0x0

    .line 56
    .local v16, "$i$a$-load$default-HomeTileAdapter$onBindViewHolder$1$1$1":I
    nop

    .line 115
    nop

    .line 116
    nop

    .line 115
    nop

    .line 117
    nop

    .line 115
    nop

    .line 118
    nop

    .line 115
    const/16 v17, 0x0

    .line 120
    .local v17, "$i$f$listener":I
    move/from16 v18, v3

    .end local v3    # "$i$a$-with-HomeTileAdapter$onBindViewHolder$1":I
    .local v18, "$i$a$-with-HomeTileAdapter$onBindViewHolder$1":I
    new-instance v3, Lcom/muzk/app/ui/home/HomeTileAdapter$onBindViewHolder$lambda$4$lambda$2$lambda$1$$inlined$listener$default$1;

    invoke-direct {v3, v1}, Lcom/muzk/app/ui/home/HomeTileAdapter$onBindViewHolder$lambda$4$lambda$2$lambda$1$$inlined$listener$default$1;-><init>(Lcom/muzk/app/databinding/ItemHomeTileBinding;)V

    check-cast v3, Lcoil/request/ImageRequest$Listener;

    invoke-virtual {v15, v3}, Lcoil/request/ImageRequest$Builder;->listener(Lcoil/request/ImageRequest$Listener;)Lcoil/request/ImageRequest$Builder;

    .line 125
    nop

    .line 57
    .end local v17    # "$i$f$listener":I
    nop

    .line 114
    .end local v15    # "$this$onBindViewHolder_u24lambda_u244_u24lambda_u242_u24lambda_u241":Lcoil/request/ImageRequest$Builder;
    .end local v16    # "$i$a$-load$default-HomeTileAdapter$onBindViewHolder$1$1$1":I
    nop

    .line 126
    invoke-virtual {v2}, Lcoil/request/ImageRequest$Builder;->build()Lcoil/request/ImageRequest;

    move-result-object v2

    .line 111
    nop

    .line 127
    .local v2, "request$iv":Lcoil/request/ImageRequest;
    invoke-interface {v13, v2}, Lcoil/ImageLoader;->enqueue(Lcoil/request/ImageRequest;)Lcoil/request/Disposable;

    .line 57
    .end local v2    # "request$iv":Lcoil/request/ImageRequest;
    .end local v10    # "data$iv":Ljava/lang/Object;
    .end local v12    # "$this$load_u24default$iv":Landroid/widget/ImageView;
    .end local v13    # "imageLoader$iv":Lcoil/ImageLoader;
    .end local v14    # "$i$f$load":I
    nop

    .end local v9    # "uri":Landroid/net/Uri;
    .end local v11    # "$i$a$-let-HomeTileAdapter$onBindViewHolder$1$1":I
    goto :goto_6

    .line 54
    .end local v18    # "$i$a$-with-HomeTileAdapter$onBindViewHolder$1":I
    .restart local v3    # "$i$a$-with-HomeTileAdapter$onBindViewHolder$1":I
    :cond_8
    move/from16 v18, v3

    .end local v3    # "$i$a$-with-HomeTileAdapter$onBindViewHolder$1":I
    .restart local v18    # "$i$a$-with-HomeTileAdapter$onBindViewHolder$1":I
    :goto_6
    nop

    .line 59
    invoke-virtual {v1}, Lcom/muzk/app/databinding/ItemHomeTileBinding;->getRoot()Lcom/google/android/material/card/MaterialCardView;

    move-result-object v2

    new-instance v3, Lcom/muzk/app/ui/home/HomeTileAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0, v5}, Lcom/muzk/app/ui/home/HomeTileAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/muzk/app/ui/home/HomeTileAdapter;Lcom/muzk/app/ui/home/HomeTile;)V

    invoke-virtual {v2, v3}, Lcom/google/android/material/card/MaterialCardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    nop

    .line 29
    .end local v1    # "$this$onBindViewHolder_u24lambda_u244":Lcom/muzk/app/databinding/ItemHomeTileBinding;
    .end local v5    # "tile":Lcom/muzk/app/ui/home/HomeTile;
    .end local v6    # "fallback":I
    .end local v7    # "liked":Z
    .end local v8    # "all":Z
    .end local v18    # "$i$a$-with-HomeTileAdapter$onBindViewHolder$1":I
    nop

    .line 60
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1
    .param p1, "p0"    # Landroid/view/ViewGroup;
    .param p2, "p1"    # I

    .line 20
    invoke-virtual {p0, p1, p2}, Lcom/muzk/app/ui/home/HomeTileAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/muzk/app/ui/home/HomeTileAdapter$VH;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/muzk/app/ui/home/HomeTileAdapter$VH;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    new-instance v0, Lcom/muzk/app/ui/home/HomeTileAdapter$VH;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Lcom/muzk/app/databinding/ItemHomeTileBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/muzk/app/databinding/ItemHomeTileBinding;

    move-result-object v1

    const-string v2, "inflate(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/muzk/app/ui/home/HomeTileAdapter$VH;-><init>(Lcom/muzk/app/databinding/ItemHomeTileBinding;)V

    return-object v0
.end method
