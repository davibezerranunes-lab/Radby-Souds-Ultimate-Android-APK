.class public final Lcom/muzk/app/databinding/ItemHomeTileBinding;
.super Ljava/lang/Object;
.source "ItemHomeTileBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final cover:Landroid/widget/ImageView;

.field public final icon:Landroid/widget/ImageView;

.field public final iconBox:Landroid/widget/FrameLayout;

.field private final rootView:Lcom/google/android/material/card/MaterialCardView;

.field public final title:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lcom/google/android/material/card/MaterialCardView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/FrameLayout;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "rootView"    # Lcom/google/android/material/card/MaterialCardView;
    .param p2, "cover"    # Landroid/widget/ImageView;
    .param p3, "icon"    # Landroid/widget/ImageView;
    .param p4, "iconBox"    # Landroid/widget/FrameLayout;
    .param p5, "title"    # Landroid/widget/TextView;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/muzk/app/databinding/ItemHomeTileBinding;->rootView:Lcom/google/android/material/card/MaterialCardView;

    .line 39
    iput-object p2, p0, Lcom/muzk/app/databinding/ItemHomeTileBinding;->cover:Landroid/widget/ImageView;

    .line 40
    iput-object p3, p0, Lcom/muzk/app/databinding/ItemHomeTileBinding;->icon:Landroid/widget/ImageView;

    .line 41
    iput-object p4, p0, Lcom/muzk/app/databinding/ItemHomeTileBinding;->iconBox:Landroid/widget/FrameLayout;

    .line 42
    iput-object p5, p0, Lcom/muzk/app/databinding/ItemHomeTileBinding;->title:Landroid/widget/TextView;

    .line 43
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/muzk/app/databinding/ItemHomeTileBinding;
    .locals 12
    .param p0, "rootView"    # Landroid/view/View;

    .line 72
    sget v0, Lcom/muzk/app/R$id;->cover:I

    .line 73
    .local v0, "id":I
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 74
    .local v1, "cover":Landroid/widget/ImageView;
    if-eqz v1, :cond_3

    .line 78
    sget v0, Lcom/muzk/app/R$id;->icon:I

    .line 79
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/ImageView;

    .line 80
    .local v8, "icon":Landroid/widget/ImageView;
    if-eqz v8, :cond_2

    .line 84
    sget v0, Lcom/muzk/app/R$id;->icon_box:I

    .line 85
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/FrameLayout;

    .line 86
    .local v9, "iconBox":Landroid/widget/FrameLayout;
    if-eqz v9, :cond_1

    .line 90
    sget v0, Lcom/muzk/app/R$id;->title:I

    .line 91
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/TextView;

    .line 92
    .local v10, "title":Landroid/widget/TextView;
    if-eqz v10, :cond_0

    .line 96
    new-instance v11, Lcom/muzk/app/databinding/ItemHomeTileBinding;

    move-object v3, p0

    check-cast v3, Lcom/google/android/material/card/MaterialCardView;

    move-object v2, v11

    move-object v4, v1

    move-object v5, v8

    move-object v6, v9

    move-object v7, v10

    invoke-direct/range {v2 .. v7}, Lcom/muzk/app/databinding/ItemHomeTileBinding;-><init>(Lcom/google/android/material/card/MaterialCardView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/FrameLayout;Landroid/widget/TextView;)V

    return-object v11

    .line 93
    :cond_0
    goto :goto_0

    .line 87
    .end local v10    # "title":Landroid/widget/TextView;
    :cond_1
    goto :goto_0

    .line 81
    .end local v9    # "iconBox":Landroid/widget/FrameLayout;
    :cond_2
    goto :goto_0

    .line 75
    .end local v8    # "icon":Landroid/widget/ImageView;
    :cond_3
    nop

    .line 98
    .end local v1    # "cover":Landroid/widget/ImageView;
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 99
    .local v1, "missingId":Ljava/lang/String;
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Missing required view with ID: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/muzk/app/databinding/ItemHomeTileBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 53
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/muzk/app/databinding/ItemHomeTileBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/muzk/app/databinding/ItemHomeTileBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/muzk/app/databinding/ItemHomeTileBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 59
    sget v0, Lcom/muzk/app/R$layout;->item_home_tile:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 60
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 61
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 63
    :cond_0
    invoke-static {v0}, Lcom/muzk/app/databinding/ItemHomeTileBinding;->bind(Landroid/view/View;)Lcom/muzk/app/databinding/ItemHomeTileBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lcom/muzk/app/databinding/ItemHomeTileBinding;->getRoot()Lcom/google/android/material/card/MaterialCardView;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Lcom/google/android/material/card/MaterialCardView;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/muzk/app/databinding/ItemHomeTileBinding;->rootView:Lcom/google/android/material/card/MaterialCardView;

    return-object v0
.end method
