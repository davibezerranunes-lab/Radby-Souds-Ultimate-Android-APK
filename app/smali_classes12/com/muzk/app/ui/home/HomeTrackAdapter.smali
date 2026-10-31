.class public final Lcom/muzk/app/ui/home/HomeTrackAdapter;
.super Landroidx/recyclerview/widget/ListAdapter;
.source "HomeAdapters.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/muzk/app/ui/home/HomeTrackAdapter$Companion;,
        Lcom/muzk/app/ui/home/HomeTrackAdapter$VH;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/ListAdapter<",
        "Lcom/muzk/app/ui/home/HomeTrack;",
        "Lcom/muzk/app/ui/home/HomeTrackAdapter$VH;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHomeAdapters.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HomeAdapters.kt\ncom/muzk/app/ui/home/HomeTrackAdapter\n+ 2 Extensions.kt\ncoil/-SingletonExtensions\n*L\n1#1,102:1\n54#2,3:103\n24#2:106\n59#2,6:107\n*S KotlinDebug\n*F\n+ 1 HomeAdapters.kt\ncom/muzk/app/ui/home/HomeTrackAdapter\n*L\n86#1:103,3\n86#1:106\n86#1:107,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u0000 \u00122\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0002\u0011\u0012B\u001b\u0012\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0018\u0010\n\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u0006H\u0016J\u0018\u0010\u000e\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u0006H\u0016R\u001a\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/muzk/app/ui/home/HomeTrackAdapter;",
        "Landroidx/recyclerview/widget/ListAdapter;",
        "Lcom/muzk/app/ui/home/HomeTrack;",
        "Lcom/muzk/app/ui/home/HomeTrackAdapter$VH;",
        "onClick",
        "Lkotlin/Function1;",
        "",
        "",
        "<init>",
        "(Lkotlin/jvm/functions/Function1;)V",
        "onCreateViewHolder",
        "parent",
        "Landroid/view/ViewGroup;",
        "viewType",
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
.field public static final Companion:Lcom/muzk/app/ui/home/HomeTrackAdapter$Companion;

.field private static final DIFF:Lcom/muzk/app/ui/home/HomeTrackAdapter$Companion$DIFF$1;


# instance fields
.field private final onClick:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$bh-6ID5kFfg9FgPSw7qcs8yFPe0(Lcom/muzk/app/ui/home/HomeTrackAdapter;Lcom/muzk/app/ui/home/HomeTrackAdapter$VH;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/muzk/app/ui/home/HomeTrackAdapter;->onBindViewHolder$lambda$2$lambda$1(Lcom/muzk/app/ui/home/HomeTrackAdapter;Lcom/muzk/app/ui/home/HomeTrackAdapter$VH;Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/muzk/app/ui/home/HomeTrackAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/muzk/app/ui/home/HomeTrackAdapter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/muzk/app/ui/home/HomeTrackAdapter;->Companion:Lcom/muzk/app/ui/home/HomeTrackAdapter$Companion;

    .line 96
    new-instance v0, Lcom/muzk/app/ui/home/HomeTrackAdapter$Companion$DIFF$1;

    invoke-direct {v0}, Lcom/muzk/app/ui/home/HomeTrackAdapter$Companion$DIFF$1;-><init>()V

    sput-object v0, Lcom/muzk/app/ui/home/HomeTrackAdapter;->DIFF:Lcom/muzk/app/ui/home/HomeTrackAdapter$Companion$DIFF$1;

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
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "onClick"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    sget-object v0, Lcom/muzk/app/ui/home/HomeTrackAdapter;->DIFF:Lcom/muzk/app/ui/home/HomeTrackAdapter$Companion$DIFF$1;

    check-cast v0, Landroidx/recyclerview/widget/DiffUtil$ItemCallback;

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/ListAdapter;-><init>(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V

    .line 73
    iput-object p1, p0, Lcom/muzk/app/ui/home/HomeTrackAdapter;->onClick:Lkotlin/jvm/functions/Function1;

    .line 72
    return-void
.end method

.method private static final onBindViewHolder$lambda$2$lambda$1(Lcom/muzk/app/ui/home/HomeTrackAdapter;Lcom/muzk/app/ui/home/HomeTrackAdapter$VH;Landroid/view/View;)V
    .locals 2
    .param p0, "this$0"    # Lcom/muzk/app/ui/home/HomeTrackAdapter;
    .param p1, "$holder"    # Lcom/muzk/app/ui/home/HomeTrackAdapter$VH;
    .param p2, "it"    # Landroid/view/View;

    .line 90
    iget-object v0, p0, Lcom/muzk/app/ui/home/HomeTrackAdapter;->onClick:Lkotlin/jvm/functions/Function1;

    invoke-virtual {p1}, Lcom/muzk/app/ui/home/HomeTrackAdapter$VH;->getBindingAdapterPosition()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 1
    .param p1, "p0"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .param p2, "p1"    # I

    .line 72
    move-object v0, p1

    check-cast v0, Lcom/muzk/app/ui/home/HomeTrackAdapter$VH;

    invoke-virtual {p0, v0, p2}, Lcom/muzk/app/ui/home/HomeTrackAdapter;->onBindViewHolder(Lcom/muzk/app/ui/home/HomeTrackAdapter$VH;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/muzk/app/ui/home/HomeTrackAdapter$VH;I)V
    .locals 11
    .param p1, "holder"    # Lcom/muzk/app/ui/home/HomeTrackAdapter$VH;
    .param p2, "position"    # I

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    invoke-virtual {p1}, Lcom/muzk/app/ui/home/HomeTrackAdapter$VH;->getB()Lcom/muzk/app/databinding/ItemHomeTrackBinding;

    move-result-object v0

    .local v0, "$this$onBindViewHolder_u24lambda_u242":Lcom/muzk/app/databinding/ItemHomeTrackBinding;
    const/4 v1, 0x0

    .line 80
    .local v1, "$i$a$-with-HomeTrackAdapter$onBindViewHolder$1":I
    invoke-virtual {p0, p2}, Lcom/muzk/app/ui/home/HomeTrackAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/muzk/app/ui/home/HomeTrack;

    .line 81
    .local v2, "item":Lcom/muzk/app/ui/home/HomeTrack;
    iget-object v3, v0, Lcom/muzk/app/databinding/ItemHomeTrackBinding;->rank:Landroid/widget/TextView;

    add-int/lit8 v4, p2, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget-object v3, v0, Lcom/muzk/app/databinding/ItemHomeTrackBinding;->title:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/muzk/app/ui/home/HomeTrack;->getTrack()Lcom/muzk/app/data/LocalTrack;

    move-result-object v4

    invoke-virtual {v4}, Lcom/muzk/app/data/LocalTrack;->getTitle()Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v3, v0, Lcom/muzk/app/databinding/ItemHomeTrackBinding;->subtitle:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/muzk/app/ui/home/HomeTrack;->getPlays()I

    move-result v4

    if-lez v4, :cond_0

    .line 84
    invoke-virtual {v0}, Lcom/muzk/app/databinding/ItemHomeTrackBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/muzk/app/R$plurals;->plays:I

    invoke-virtual {v2}, Lcom/muzk/app/ui/home/HomeTrack;->getPlays()I

    move-result v6

    invoke-virtual {v2}, Lcom/muzk/app/ui/home/HomeTrack;->getTrack()Lcom/muzk/app/data/LocalTrack;

    move-result-object v7

    invoke-virtual {v7}, Lcom/muzk/app/data/LocalTrack;->getArtist()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Lcom/muzk/app/ui/home/HomeTrack;->getPlays()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v7, v8}, [Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    goto :goto_0

    .line 85
    :cond_0
    invoke-virtual {v2}, Lcom/muzk/app/ui/home/HomeTrack;->getTrack()Lcom/muzk/app/data/LocalTrack;

    move-result-object v4

    invoke-virtual {v4}, Lcom/muzk/app/data/LocalTrack;->getArtist()Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    .line 83
    :goto_0
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    iget-object v3, v0, Lcom/muzk/app/databinding/ItemHomeTrackBinding;->cover:Lcom/google/android/material/imageview/ShapeableImageView;

    const-string v4, "cover"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/widget/ImageView;

    .local v3, "$this$load_u24default$iv":Landroid/widget/ImageView;
    new-instance v4, Lcom/muzk/app/data/AudioCover;

    invoke-virtual {v2}, Lcom/muzk/app/ui/home/HomeTrack;->getTrack()Lcom/muzk/app/data/LocalTrack;

    move-result-object v5

    invoke-virtual {v5}, Lcom/muzk/app/data/LocalTrack;->getUri()Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/muzk/app/data/AudioCover;-><init>(Landroid/net/Uri;)V

    .line 103
    .local v4, "data$iv":Ljava/lang/Object;
    nop

    .line 105
    invoke-virtual {v3}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v5

    .local v5, "$this$imageLoader$iv$iv":Landroid/content/Context;
    const/4 v6, 0x0

    .line 106
    .local v6, "$i$f$getImageLoader":I
    invoke-static {v5}, Lcoil/Coil;->imageLoader(Landroid/content/Context;)Lcoil/ImageLoader;

    move-result-object v5

    .line 103
    .end local v6    # "$i$f$getImageLoader":I
    .local v5, "imageLoader$iv":Lcoil/ImageLoader;
    const/4 v6, 0x0

    .line 107
    .local v6, "$i$f$load":I
    new-instance v7, Lcoil/request/ImageRequest$Builder;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Lcoil/request/ImageRequest$Builder;-><init>(Landroid/content/Context;)V

    .line 108
    invoke-virtual {v7, v4}, Lcoil/request/ImageRequest$Builder;->data(Ljava/lang/Object;)Lcoil/request/ImageRequest$Builder;

    move-result-object v7

    .line 109
    invoke-virtual {v7, v3}, Lcoil/request/ImageRequest$Builder;->target(Landroid/widget/ImageView;)Lcoil/request/ImageRequest$Builder;

    move-result-object v7

    .line 110
    move-object v8, v7

    .local v8, "$this$onBindViewHolder_u24lambda_u242_u24lambda_u240":Lcoil/request/ImageRequest$Builder;
    const/4 v9, 0x0

    .line 87
    .local v9, "$i$a$-load$default-HomeTrackAdapter$onBindViewHolder$1$1":I
    sget v10, Lcom/muzk/app/R$drawable;->cover_placeholder:I

    invoke-virtual {v8, v10}, Lcoil/request/ImageRequest$Builder;->placeholder(I)Lcoil/request/ImageRequest$Builder;

    .line 88
    sget v10, Lcom/muzk/app/R$drawable;->cover_placeholder:I

    invoke-virtual {v8, v10}, Lcoil/request/ImageRequest$Builder;->error(I)Lcoil/request/ImageRequest$Builder;

    .line 89
    nop

    .line 110
    .end local v8    # "$this$onBindViewHolder_u24lambda_u242_u24lambda_u240":Lcoil/request/ImageRequest$Builder;
    .end local v9    # "$i$a$-load$default-HomeTrackAdapter$onBindViewHolder$1$1":I
    nop

    .line 111
    invoke-virtual {v7}, Lcoil/request/ImageRequest$Builder;->build()Lcoil/request/ImageRequest;

    move-result-object v7

    .line 107
    nop

    .line 112
    .local v7, "request$iv":Lcoil/request/ImageRequest;
    invoke-interface {v5, v7}, Lcoil/ImageLoader;->enqueue(Lcoil/request/ImageRequest;)Lcoil/request/Disposable;

    .line 90
    .end local v3    # "$this$load_u24default$iv":Landroid/widget/ImageView;
    .end local v4    # "data$iv":Ljava/lang/Object;
    .end local v5    # "imageLoader$iv":Lcoil/ImageLoader;
    .end local v6    # "$i$f$load":I
    .end local v7    # "request$iv":Lcoil/request/ImageRequest;
    invoke-virtual {v0}, Lcom/muzk/app/databinding/ItemHomeTrackBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v3

    new-instance v4, Lcom/muzk/app/ui/home/HomeTrackAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, p1}, Lcom/muzk/app/ui/home/HomeTrackAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/muzk/app/ui/home/HomeTrackAdapter;Lcom/muzk/app/ui/home/HomeTrackAdapter$VH;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    nop

    .line 79
    .end local v0    # "$this$onBindViewHolder_u24lambda_u242":Lcom/muzk/app/databinding/ItemHomeTrackBinding;
    .end local v1    # "$i$a$-with-HomeTrackAdapter$onBindViewHolder$1":I
    .end local v2    # "item":Lcom/muzk/app/ui/home/HomeTrack;
    nop

    .line 91
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1
    .param p1, "p0"    # Landroid/view/ViewGroup;
    .param p2, "p1"    # I

    .line 72
    invoke-virtual {p0, p1, p2}, Lcom/muzk/app/ui/home/HomeTrackAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/muzk/app/ui/home/HomeTrackAdapter$VH;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/muzk/app/ui/home/HomeTrackAdapter$VH;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    new-instance v0, Lcom/muzk/app/ui/home/HomeTrackAdapter$VH;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Lcom/muzk/app/databinding/ItemHomeTrackBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/muzk/app/databinding/ItemHomeTrackBinding;

    move-result-object v1

    const-string v2, "inflate(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/muzk/app/ui/home/HomeTrackAdapter$VH;-><init>(Lcom/muzk/app/databinding/ItemHomeTrackBinding;)V

    return-object v0
.end method
