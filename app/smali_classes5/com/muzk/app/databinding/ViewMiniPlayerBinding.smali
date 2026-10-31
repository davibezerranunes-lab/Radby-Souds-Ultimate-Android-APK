.class public final Lcom/muzk/app/databinding/ViewMiniPlayerBinding;
.super Ljava/lang/Object;
.source "ViewMiniPlayerBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final miniArtist:Landroid/widget/TextView;

.field public final miniCard:Lcom/google/android/material/card/MaterialCardView;

.field public final miniCover:Lcom/google/android/material/imageview/ShapeableImageView;

.field public final miniNext:Lcom/google/android/material/button/MaterialButton;

.field public final miniPlay:Lcom/google/android/material/button/MaterialButton;

.field public final miniProgress:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

.field public final miniTitle:Landroid/widget/TextView;

.field private final rootView:Lcom/google/android/material/card/MaterialCardView;


# direct methods
.method private constructor <init>(Lcom/google/android/material/card/MaterialCardView;Landroid/widget/TextView;Lcom/google/android/material/card/MaterialCardView;Lcom/google/android/material/imageview/ShapeableImageView;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/progressindicator/LinearProgressIndicator;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "rootView"    # Lcom/google/android/material/card/MaterialCardView;
    .param p2, "miniArtist"    # Landroid/widget/TextView;
    .param p3, "miniCard"    # Lcom/google/android/material/card/MaterialCardView;
    .param p4, "miniCover"    # Lcom/google/android/material/imageview/ShapeableImageView;
    .param p5, "miniNext"    # Lcom/google/android/material/button/MaterialButton;
    .param p6, "miniPlay"    # Lcom/google/android/material/button/MaterialButton;
    .param p7, "miniProgress"    # Lcom/google/android/material/progressindicator/LinearProgressIndicator;
    .param p8, "miniTitle"    # Landroid/widget/TextView;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/muzk/app/databinding/ViewMiniPlayerBinding;->rootView:Lcom/google/android/material/card/MaterialCardView;

    .line 51
    iput-object p2, p0, Lcom/muzk/app/databinding/ViewMiniPlayerBinding;->miniArtist:Landroid/widget/TextView;

    .line 52
    iput-object p3, p0, Lcom/muzk/app/databinding/ViewMiniPlayerBinding;->miniCard:Lcom/google/android/material/card/MaterialCardView;

    .line 53
    iput-object p4, p0, Lcom/muzk/app/databinding/ViewMiniPlayerBinding;->miniCover:Lcom/google/android/material/imageview/ShapeableImageView;

    .line 54
    iput-object p5, p0, Lcom/muzk/app/databinding/ViewMiniPlayerBinding;->miniNext:Lcom/google/android/material/button/MaterialButton;

    .line 55
    iput-object p6, p0, Lcom/muzk/app/databinding/ViewMiniPlayerBinding;->miniPlay:Lcom/google/android/material/button/MaterialButton;

    .line 56
    iput-object p7, p0, Lcom/muzk/app/databinding/ViewMiniPlayerBinding;->miniProgress:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 57
    iput-object p8, p0, Lcom/muzk/app/databinding/ViewMiniPlayerBinding;->miniTitle:Landroid/widget/TextView;

    .line 58
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/muzk/app/databinding/ViewMiniPlayerBinding;
    .locals 19
    .param p0, "rootView"    # Landroid/view/View;

    .line 87
    move-object/from16 v0, p0

    sget v1, Lcom/muzk/app/R$id;->mini_artist:I

    .line 88
    .local v1, "id":I
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 89
    .local v2, "miniArtist":Landroid/widget/TextView;
    if-eqz v2, :cond_5

    .line 93
    move-object v12, v0

    check-cast v12, Lcom/google/android/material/card/MaterialCardView;

    .line 95
    .local v12, "miniCard":Lcom/google/android/material/card/MaterialCardView;
    sget v1, Lcom/muzk/app/R$id;->mini_cover:I

    .line 96
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Lcom/google/android/material/imageview/ShapeableImageView;

    .line 97
    .local v13, "miniCover":Lcom/google/android/material/imageview/ShapeableImageView;
    if-eqz v13, :cond_4

    .line 101
    sget v1, Lcom/muzk/app/R$id;->mini_next:I

    .line 102
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Lcom/google/android/material/button/MaterialButton;

    .line 103
    .local v14, "miniNext":Lcom/google/android/material/button/MaterialButton;
    if-eqz v14, :cond_3

    .line 107
    sget v1, Lcom/muzk/app/R$id;->mini_play:I

    .line 108
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Lcom/google/android/material/button/MaterialButton;

    .line 109
    .local v15, "miniPlay":Lcom/google/android/material/button/MaterialButton;
    if-eqz v15, :cond_2

    .line 113
    sget v1, Lcom/muzk/app/R$id;->mini_progress:I

    .line 114
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v16, v3

    check-cast v16, Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 115
    .local v16, "miniProgress":Lcom/google/android/material/progressindicator/LinearProgressIndicator;
    if-eqz v16, :cond_1

    .line 119
    sget v1, Lcom/muzk/app/R$id;->mini_title:I

    .line 120
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v17, v3

    check-cast v17, Landroid/widget/TextView;

    .line 121
    .local v17, "miniTitle":Landroid/widget/TextView;
    if-eqz v17, :cond_0

    .line 125
    new-instance v18, Lcom/muzk/app/databinding/ViewMiniPlayerBinding;

    move-object v4, v0

    check-cast v4, Lcom/google/android/material/card/MaterialCardView;

    move-object/from16 v3, v18

    move-object v5, v2

    move-object v6, v12

    move-object v7, v13

    move-object v8, v14

    move-object v9, v15

    move-object/from16 v10, v16

    move-object/from16 v11, v17

    invoke-direct/range {v3 .. v11}, Lcom/muzk/app/databinding/ViewMiniPlayerBinding;-><init>(Lcom/google/android/material/card/MaterialCardView;Landroid/widget/TextView;Lcom/google/android/material/card/MaterialCardView;Lcom/google/android/material/imageview/ShapeableImageView;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/progressindicator/LinearProgressIndicator;Landroid/widget/TextView;)V

    return-object v18

    .line 122
    :cond_0
    goto :goto_0

    .line 116
    .end local v17    # "miniTitle":Landroid/widget/TextView;
    :cond_1
    goto :goto_0

    .line 110
    .end local v16    # "miniProgress":Lcom/google/android/material/progressindicator/LinearProgressIndicator;
    :cond_2
    goto :goto_0

    .line 104
    .end local v15    # "miniPlay":Lcom/google/android/material/button/MaterialButton;
    :cond_3
    goto :goto_0

    .line 98
    .end local v14    # "miniNext":Lcom/google/android/material/button/MaterialButton;
    :cond_4
    goto :goto_0

    .line 90
    .end local v12    # "miniCard":Lcom/google/android/material/card/MaterialCardView;
    .end local v13    # "miniCover":Lcom/google/android/material/imageview/ShapeableImageView;
    :cond_5
    nop

    .line 128
    .end local v2    # "miniArtist":Landroid/widget/TextView;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    .line 129
    .local v2, "missingId":Ljava/lang/String;
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "Missing required view with ID: "

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/muzk/app/databinding/ViewMiniPlayerBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 68
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/muzk/app/databinding/ViewMiniPlayerBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/muzk/app/databinding/ViewMiniPlayerBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/muzk/app/databinding/ViewMiniPlayerBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 74
    sget v0, Lcom/muzk/app/R$layout;->view_mini_player:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 75
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 76
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 78
    :cond_0
    invoke-static {v0}, Lcom/muzk/app/databinding/ViewMiniPlayerBinding;->bind(Landroid/view/View;)Lcom/muzk/app/databinding/ViewMiniPlayerBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lcom/muzk/app/databinding/ViewMiniPlayerBinding;->getRoot()Lcom/google/android/material/card/MaterialCardView;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Lcom/google/android/material/card/MaterialCardView;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/muzk/app/databinding/ViewMiniPlayerBinding;->rootView:Lcom/google/android/material/card/MaterialCardView;

    return-object v0
.end method
