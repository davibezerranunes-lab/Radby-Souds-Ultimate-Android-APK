.class public final Lcom/muzk/app/databinding/FragmentHomeBinding;
.super Ljava/lang/Object;
.source "FragmentHomeBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final empty:Landroid/widget/LinearLayout;

.field public final emptyAction:Lcom/google/android/material/button/MaterialButton;

.field public final emptyText:Landroid/widget/TextView;

.field public final goSearch:Lcom/google/android/material/button/MaterialButton;

.field public final greeting:Landroid/widget/TextView;

.field private final rootView:Landroidx/core/widget/NestedScrollView;

.field public final tiles:Landroidx/recyclerview/widget/RecyclerView;

.field public final topList:Landroidx/recyclerview/widget/RecyclerView;

.field public final topTitle:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroidx/core/widget/NestedScrollView;Landroid/widget/LinearLayout;Lcom/google/android/material/button/MaterialButton;Landroid/widget/TextView;Lcom/google/android/material/button/MaterialButton;Landroid/widget/TextView;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "rootView"    # Landroidx/core/widget/NestedScrollView;
    .param p2, "empty"    # Landroid/widget/LinearLayout;
    .param p3, "emptyAction"    # Lcom/google/android/material/button/MaterialButton;
    .param p4, "emptyText"    # Landroid/widget/TextView;
    .param p5, "goSearch"    # Lcom/google/android/material/button/MaterialButton;
    .param p6, "greeting"    # Landroid/widget/TextView;
    .param p7, "tiles"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p8, "topList"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p9, "topTitle"    # Landroid/widget/TextView;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/muzk/app/databinding/FragmentHomeBinding;->rootView:Landroidx/core/widget/NestedScrollView;

    .line 54
    iput-object p2, p0, Lcom/muzk/app/databinding/FragmentHomeBinding;->empty:Landroid/widget/LinearLayout;

    .line 55
    iput-object p3, p0, Lcom/muzk/app/databinding/FragmentHomeBinding;->emptyAction:Lcom/google/android/material/button/MaterialButton;

    .line 56
    iput-object p4, p0, Lcom/muzk/app/databinding/FragmentHomeBinding;->emptyText:Landroid/widget/TextView;

    .line 57
    iput-object p5, p0, Lcom/muzk/app/databinding/FragmentHomeBinding;->goSearch:Lcom/google/android/material/button/MaterialButton;

    .line 58
    iput-object p6, p0, Lcom/muzk/app/databinding/FragmentHomeBinding;->greeting:Landroid/widget/TextView;

    .line 59
    iput-object p7, p0, Lcom/muzk/app/databinding/FragmentHomeBinding;->tiles:Landroidx/recyclerview/widget/RecyclerView;

    .line 60
    iput-object p8, p0, Lcom/muzk/app/databinding/FragmentHomeBinding;->topList:Landroidx/recyclerview/widget/RecyclerView;

    .line 61
    iput-object p9, p0, Lcom/muzk/app/databinding/FragmentHomeBinding;->topTitle:Landroid/widget/TextView;

    .line 62
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/muzk/app/databinding/FragmentHomeBinding;
    .locals 21
    .param p0, "rootView"    # Landroid/view/View;

    .line 91
    move-object/from16 v0, p0

    sget v1, Lcom/muzk/app/R$id;->empty:I

    .line 92
    .local v1, "id":I
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 93
    .local v2, "empty":Landroid/widget/LinearLayout;
    if-eqz v2, :cond_7

    .line 97
    sget v1, Lcom/muzk/app/R$id;->empty_action:I

    .line 98
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Lcom/google/android/material/button/MaterialButton;

    .line 99
    .local v13, "emptyAction":Lcom/google/android/material/button/MaterialButton;
    if-eqz v13, :cond_6

    .line 103
    sget v1, Lcom/muzk/app/R$id;->empty_text:I

    .line 104
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Landroid/widget/TextView;

    .line 105
    .local v14, "emptyText":Landroid/widget/TextView;
    if-eqz v14, :cond_5

    .line 109
    sget v1, Lcom/muzk/app/R$id;->go_search:I

    .line 110
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Lcom/google/android/material/button/MaterialButton;

    .line 111
    .local v15, "goSearch":Lcom/google/android/material/button/MaterialButton;
    if-eqz v15, :cond_4

    .line 115
    sget v1, Lcom/muzk/app/R$id;->greeting:I

    .line 116
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v16, v3

    check-cast v16, Landroid/widget/TextView;

    .line 117
    .local v16, "greeting":Landroid/widget/TextView;
    if-eqz v16, :cond_3

    .line 121
    sget v1, Lcom/muzk/app/R$id;->tiles:I

    .line 122
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v17, v3

    check-cast v17, Landroidx/recyclerview/widget/RecyclerView;

    .line 123
    .local v17, "tiles":Landroidx/recyclerview/widget/RecyclerView;
    if-eqz v17, :cond_2

    .line 127
    sget v1, Lcom/muzk/app/R$id;->top_list:I

    .line 128
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v18, v3

    check-cast v18, Landroidx/recyclerview/widget/RecyclerView;

    .line 129
    .local v18, "topList":Landroidx/recyclerview/widget/RecyclerView;
    if-eqz v18, :cond_1

    .line 133
    sget v1, Lcom/muzk/app/R$id;->top_title:I

    .line 134
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v19, v3

    check-cast v19, Landroid/widget/TextView;

    .line 135
    .local v19, "topTitle":Landroid/widget/TextView;
    if-eqz v19, :cond_0

    .line 139
    new-instance v20, Lcom/muzk/app/databinding/FragmentHomeBinding;

    move-object v4, v0

    check-cast v4, Landroidx/core/widget/NestedScrollView;

    move-object/from16 v3, v20

    move-object v5, v2

    move-object v6, v13

    move-object v7, v14

    move-object v8, v15

    move-object/from16 v9, v16

    move-object/from16 v10, v17

    move-object/from16 v11, v18

    move-object/from16 v12, v19

    invoke-direct/range {v3 .. v12}, Lcom/muzk/app/databinding/FragmentHomeBinding;-><init>(Landroidx/core/widget/NestedScrollView;Landroid/widget/LinearLayout;Lcom/google/android/material/button/MaterialButton;Landroid/widget/TextView;Lcom/google/android/material/button/MaterialButton;Landroid/widget/TextView;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/TextView;)V

    return-object v20

    .line 136
    :cond_0
    goto :goto_0

    .line 130
    .end local v19    # "topTitle":Landroid/widget/TextView;
    :cond_1
    goto :goto_0

    .line 124
    .end local v18    # "topList":Landroidx/recyclerview/widget/RecyclerView;
    :cond_2
    goto :goto_0

    .line 118
    .end local v17    # "tiles":Landroidx/recyclerview/widget/RecyclerView;
    :cond_3
    goto :goto_0

    .line 112
    .end local v16    # "greeting":Landroid/widget/TextView;
    :cond_4
    goto :goto_0

    .line 106
    .end local v15    # "goSearch":Lcom/google/android/material/button/MaterialButton;
    :cond_5
    goto :goto_0

    .line 100
    .end local v14    # "emptyText":Landroid/widget/TextView;
    :cond_6
    goto :goto_0

    .line 94
    .end local v13    # "emptyAction":Lcom/google/android/material/button/MaterialButton;
    :cond_7
    nop

    .line 142
    .end local v2    # "empty":Landroid/widget/LinearLayout;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    .line 143
    .local v2, "missingId":Ljava/lang/String;
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "Missing required view with ID: "

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/muzk/app/databinding/FragmentHomeBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 72
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/muzk/app/databinding/FragmentHomeBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/muzk/app/databinding/FragmentHomeBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/muzk/app/databinding/FragmentHomeBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 78
    sget v0, Lcom/muzk/app/R$layout;->fragment_home:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 79
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 80
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 82
    :cond_0
    invoke-static {v0}, Lcom/muzk/app/databinding/FragmentHomeBinding;->bind(Landroid/view/View;)Lcom/muzk/app/databinding/FragmentHomeBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lcom/muzk/app/databinding/FragmentHomeBinding;->getRoot()Landroidx/core/widget/NestedScrollView;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/core/widget/NestedScrollView;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/muzk/app/databinding/FragmentHomeBinding;->rootView:Landroidx/core/widget/NestedScrollView;

    return-object v0
.end method
