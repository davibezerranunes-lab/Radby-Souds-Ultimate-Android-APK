.class public final Lcom/muzk/app/databinding/ItemCollectionBinding;
.super Ljava/lang/Object;
.source "ItemCollectionBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final btnMore:Lcom/google/android/material/button/MaterialButton;

.field public final icon:Landroid/widget/ImageView;

.field public final iconBox:Landroid/widget/FrameLayout;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final subtitle:Landroid/widget/TextView;

.field public final title:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Lcom/google/android/material/button/MaterialButton;Landroid/widget/ImageView;Landroid/widget/FrameLayout;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "rootView"    # Landroid/widget/LinearLayout;
    .param p2, "btnMore"    # Lcom/google/android/material/button/MaterialButton;
    .param p3, "icon"    # Landroid/widget/ImageView;
    .param p4, "iconBox"    # Landroid/widget/FrameLayout;
    .param p5, "subtitle"    # Landroid/widget/TextView;
    .param p6, "title"    # Landroid/widget/TextView;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/muzk/app/databinding/ItemCollectionBinding;->rootView:Landroid/widget/LinearLayout;

    .line 44
    iput-object p2, p0, Lcom/muzk/app/databinding/ItemCollectionBinding;->btnMore:Lcom/google/android/material/button/MaterialButton;

    .line 45
    iput-object p3, p0, Lcom/muzk/app/databinding/ItemCollectionBinding;->icon:Landroid/widget/ImageView;

    .line 46
    iput-object p4, p0, Lcom/muzk/app/databinding/ItemCollectionBinding;->iconBox:Landroid/widget/FrameLayout;

    .line 47
    iput-object p5, p0, Lcom/muzk/app/databinding/ItemCollectionBinding;->subtitle:Landroid/widget/TextView;

    .line 48
    iput-object p6, p0, Lcom/muzk/app/databinding/ItemCollectionBinding;->title:Landroid/widget/TextView;

    .line 49
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/muzk/app/databinding/ItemCollectionBinding;
    .locals 14
    .param p0, "rootView"    # Landroid/view/View;

    .line 78
    sget v0, Lcom/muzk/app/R$id;->btn_more:I

    .line 79
    .local v0, "id":I
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/button/MaterialButton;

    .line 80
    .local v1, "btnMore":Lcom/google/android/material/button/MaterialButton;
    if-eqz v1, :cond_4

    .line 84
    sget v0, Lcom/muzk/app/R$id;->icon:I

    .line 85
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/ImageView;

    .line 86
    .local v9, "icon":Landroid/widget/ImageView;
    if-eqz v9, :cond_3

    .line 90
    sget v0, Lcom/muzk/app/R$id;->icon_box:I

    .line 91
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/FrameLayout;

    .line 92
    .local v10, "iconBox":Landroid/widget/FrameLayout;
    if-eqz v10, :cond_2

    .line 96
    sget v0, Lcom/muzk/app/R$id;->subtitle:I

    .line 97
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/TextView;

    .line 98
    .local v11, "subtitle":Landroid/widget/TextView;
    if-eqz v11, :cond_1

    .line 102
    sget v0, Lcom/muzk/app/R$id;->title:I

    .line 103
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/TextView;

    .line 104
    .local v12, "title":Landroid/widget/TextView;
    if-eqz v12, :cond_0

    .line 108
    new-instance v13, Lcom/muzk/app/databinding/ItemCollectionBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/LinearLayout;

    move-object v2, v13

    move-object v4, v1

    move-object v5, v9

    move-object v6, v10

    move-object v7, v11

    move-object v8, v12

    invoke-direct/range {v2 .. v8}, Lcom/muzk/app/databinding/ItemCollectionBinding;-><init>(Landroid/widget/LinearLayout;Lcom/google/android/material/button/MaterialButton;Landroid/widget/ImageView;Landroid/widget/FrameLayout;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v13

    .line 105
    :cond_0
    goto :goto_0

    .line 99
    .end local v12    # "title":Landroid/widget/TextView;
    :cond_1
    goto :goto_0

    .line 93
    .end local v11    # "subtitle":Landroid/widget/TextView;
    :cond_2
    goto :goto_0

    .line 87
    .end local v10    # "iconBox":Landroid/widget/FrameLayout;
    :cond_3
    goto :goto_0

    .line 81
    .end local v9    # "icon":Landroid/widget/ImageView;
    :cond_4
    nop

    .line 111
    .end local v1    # "btnMore":Lcom/google/android/material/button/MaterialButton;
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 112
    .local v1, "missingId":Ljava/lang/String;
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Missing required view with ID: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/muzk/app/databinding/ItemCollectionBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 59
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/muzk/app/databinding/ItemCollectionBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/muzk/app/databinding/ItemCollectionBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/muzk/app/databinding/ItemCollectionBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 65
    sget v0, Lcom/muzk/app/R$layout;->item_collection:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 66
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 67
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 69
    :cond_0
    invoke-static {v0}, Lcom/muzk/app/databinding/ItemCollectionBinding;->bind(Landroid/view/View;)Lcom/muzk/app/databinding/ItemCollectionBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lcom/muzk/app/databinding/ItemCollectionBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/muzk/app/databinding/ItemCollectionBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
