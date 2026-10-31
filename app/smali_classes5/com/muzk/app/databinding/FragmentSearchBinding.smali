.class public final Lcom/muzk/app/databinding/FragmentSearchBinding;
.super Ljava/lang/Object;
.source "FragmentSearchBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final discover:Landroidx/core/widget/NestedScrollView;

.field public final genres:Landroid/widget/LinearLayout;

.field public final recentList:Landroid/widget/LinearLayout;

.field public final recentTitle:Landroid/widget/TextView;

.field public final results:Landroidx/recyclerview/widget/RecyclerView;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final searchClear:Landroid/widget/ImageButton;

.field public final searchEmpty:Landroid/widget/TextView;

.field public final searchInput:Landroid/widget/EditText;

.field public final searchLayout:Landroid/widget/LinearLayout;

.field public final searchProgress:Lcom/google/android/material/progressindicator/LinearProgressIndicator;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroidx/core/widget/NestedScrollView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/ImageButton;Landroid/widget/TextView;Landroid/widget/EditText;Landroid/widget/LinearLayout;Lcom/google/android/material/progressindicator/LinearProgressIndicator;)V
    .locals 0
    .param p1, "rootView"    # Landroid/widget/LinearLayout;
    .param p2, "discover"    # Landroidx/core/widget/NestedScrollView;
    .param p3, "genres"    # Landroid/widget/LinearLayout;
    .param p4, "recentList"    # Landroid/widget/LinearLayout;
    .param p5, "recentTitle"    # Landroid/widget/TextView;
    .param p6, "results"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p7, "searchClear"    # Landroid/widget/ImageButton;
    .param p8, "searchEmpty"    # Landroid/widget/TextView;
    .param p9, "searchInput"    # Landroid/widget/EditText;
    .param p10, "searchLayout"    # Landroid/widget/LinearLayout;
    .param p11, "searchProgress"    # Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/muzk/app/databinding/FragmentSearchBinding;->rootView:Landroid/widget/LinearLayout;

    .line 63
    iput-object p2, p0, Lcom/muzk/app/databinding/FragmentSearchBinding;->discover:Landroidx/core/widget/NestedScrollView;

    .line 64
    iput-object p3, p0, Lcom/muzk/app/databinding/FragmentSearchBinding;->genres:Landroid/widget/LinearLayout;

    .line 65
    iput-object p4, p0, Lcom/muzk/app/databinding/FragmentSearchBinding;->recentList:Landroid/widget/LinearLayout;

    .line 66
    iput-object p5, p0, Lcom/muzk/app/databinding/FragmentSearchBinding;->recentTitle:Landroid/widget/TextView;

    .line 67
    iput-object p6, p0, Lcom/muzk/app/databinding/FragmentSearchBinding;->results:Landroidx/recyclerview/widget/RecyclerView;

    .line 68
    iput-object p7, p0, Lcom/muzk/app/databinding/FragmentSearchBinding;->searchClear:Landroid/widget/ImageButton;

    .line 69
    iput-object p8, p0, Lcom/muzk/app/databinding/FragmentSearchBinding;->searchEmpty:Landroid/widget/TextView;

    .line 70
    iput-object p9, p0, Lcom/muzk/app/databinding/FragmentSearchBinding;->searchInput:Landroid/widget/EditText;

    .line 71
    iput-object p10, p0, Lcom/muzk/app/databinding/FragmentSearchBinding;->searchLayout:Landroid/widget/LinearLayout;

    .line 72
    iput-object p11, p0, Lcom/muzk/app/databinding/FragmentSearchBinding;->searchProgress:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 73
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/muzk/app/databinding/FragmentSearchBinding;
    .locals 25
    .param p0, "rootView"    # Landroid/view/View;

    .line 102
    move-object/from16 v0, p0

    sget v1, Lcom/muzk/app/R$id;->discover:I

    .line 103
    .local v1, "id":I
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/core/widget/NestedScrollView;

    .line 104
    .local v2, "discover":Landroidx/core/widget/NestedScrollView;
    if-eqz v2, :cond_9

    .line 108
    sget v1, Lcom/muzk/app/R$id;->genres:I

    .line 109
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Landroid/widget/LinearLayout;

    .line 110
    .local v15, "genres":Landroid/widget/LinearLayout;
    if-eqz v15, :cond_8

    .line 114
    sget v1, Lcom/muzk/app/R$id;->recent_list:I

    .line 115
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v16, v3

    check-cast v16, Landroid/widget/LinearLayout;

    .line 116
    .local v16, "recentList":Landroid/widget/LinearLayout;
    if-eqz v16, :cond_7

    .line 120
    sget v1, Lcom/muzk/app/R$id;->recent_title:I

    .line 121
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v17, v3

    check-cast v17, Landroid/widget/TextView;

    .line 122
    .local v17, "recentTitle":Landroid/widget/TextView;
    if-eqz v17, :cond_6

    .line 126
    sget v1, Lcom/muzk/app/R$id;->results:I

    .line 127
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v18, v3

    check-cast v18, Landroidx/recyclerview/widget/RecyclerView;

    .line 128
    .local v18, "results":Landroidx/recyclerview/widget/RecyclerView;
    if-eqz v18, :cond_5

    .line 132
    sget v1, Lcom/muzk/app/R$id;->search_clear:I

    .line 133
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v19, v3

    check-cast v19, Landroid/widget/ImageButton;

    .line 134
    .local v19, "searchClear":Landroid/widget/ImageButton;
    if-eqz v19, :cond_4

    .line 138
    sget v1, Lcom/muzk/app/R$id;->search_empty:I

    .line 139
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v20, v3

    check-cast v20, Landroid/widget/TextView;

    .line 140
    .local v20, "searchEmpty":Landroid/widget/TextView;
    if-eqz v20, :cond_3

    .line 144
    sget v1, Lcom/muzk/app/R$id;->search_input:I

    .line 145
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v21, v3

    check-cast v21, Landroid/widget/EditText;

    .line 146
    .local v21, "searchInput":Landroid/widget/EditText;
    if-eqz v21, :cond_2

    .line 150
    sget v1, Lcom/muzk/app/R$id;->search_layout:I

    .line 151
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v22, v3

    check-cast v22, Landroid/widget/LinearLayout;

    .line 152
    .local v22, "searchLayout":Landroid/widget/LinearLayout;
    if-eqz v22, :cond_1

    .line 156
    sget v1, Lcom/muzk/app/R$id;->search_progress:I

    .line 157
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v23, v3

    check-cast v23, Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 158
    .local v23, "searchProgress":Lcom/google/android/material/progressindicator/LinearProgressIndicator;
    if-eqz v23, :cond_0

    .line 162
    new-instance v24, Lcom/muzk/app/databinding/FragmentSearchBinding;

    move-object v4, v0

    check-cast v4, Landroid/widget/LinearLayout;

    move-object/from16 v3, v24

    move-object v5, v2

    move-object v6, v15

    move-object/from16 v7, v16

    move-object/from16 v8, v17

    move-object/from16 v9, v18

    move-object/from16 v10, v19

    move-object/from16 v11, v20

    move-object/from16 v12, v21

    move-object/from16 v13, v22

    move-object/from16 v14, v23

    invoke-direct/range {v3 .. v14}, Lcom/muzk/app/databinding/FragmentSearchBinding;-><init>(Landroid/widget/LinearLayout;Landroidx/core/widget/NestedScrollView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/ImageButton;Landroid/widget/TextView;Landroid/widget/EditText;Landroid/widget/LinearLayout;Lcom/google/android/material/progressindicator/LinearProgressIndicator;)V

    return-object v24

    .line 159
    :cond_0
    goto :goto_0

    .line 153
    .end local v23    # "searchProgress":Lcom/google/android/material/progressindicator/LinearProgressIndicator;
    :cond_1
    goto :goto_0

    .line 147
    .end local v22    # "searchLayout":Landroid/widget/LinearLayout;
    :cond_2
    goto :goto_0

    .line 141
    .end local v21    # "searchInput":Landroid/widget/EditText;
    :cond_3
    goto :goto_0

    .line 135
    .end local v20    # "searchEmpty":Landroid/widget/TextView;
    :cond_4
    goto :goto_0

    .line 129
    .end local v19    # "searchClear":Landroid/widget/ImageButton;
    :cond_5
    goto :goto_0

    .line 123
    .end local v18    # "results":Landroidx/recyclerview/widget/RecyclerView;
    :cond_6
    goto :goto_0

    .line 117
    .end local v17    # "recentTitle":Landroid/widget/TextView;
    :cond_7
    goto :goto_0

    .line 111
    .end local v16    # "recentList":Landroid/widget/LinearLayout;
    :cond_8
    goto :goto_0

    .line 105
    .end local v15    # "genres":Landroid/widget/LinearLayout;
    :cond_9
    nop

    .line 166
    .end local v2    # "discover":Landroidx/core/widget/NestedScrollView;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    .line 167
    .local v2, "missingId":Ljava/lang/String;
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "Missing required view with ID: "

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/muzk/app/databinding/FragmentSearchBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 83
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/muzk/app/databinding/FragmentSearchBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/muzk/app/databinding/FragmentSearchBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/muzk/app/databinding/FragmentSearchBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 89
    sget v0, Lcom/muzk/app/R$layout;->fragment_search:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 90
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 91
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 93
    :cond_0
    invoke-static {v0}, Lcom/muzk/app/databinding/FragmentSearchBinding;->bind(Landroid/view/View;)Lcom/muzk/app/databinding/FragmentSearchBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lcom/muzk/app/databinding/FragmentSearchBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/muzk/app/databinding/FragmentSearchBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
