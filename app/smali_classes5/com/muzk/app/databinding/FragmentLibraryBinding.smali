.class public final Lcom/muzk/app/databinding/FragmentLibraryBinding;
.super Ljava/lang/Object;
.source "FragmentLibraryBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final chipFolders:Lcom/google/android/material/chip/Chip;

.field public final chipPlaylists:Lcom/google/android/material/chip/Chip;

.field public final chipTracks:Lcom/google/android/material/chip/Chip;

.field public final chips:Lcom/google/android/material/chip/ChipGroup;

.field public final empty:Landroid/widget/LinearLayout;

.field public final emptyAction:Lcom/google/android/material/button/MaterialButton;

.field public final emptyText:Landroid/widget/TextView;

.field public final fab:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

.field public final list:Landroidx/recyclerview/widget/RecyclerView;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final selectionBar:Lcom/google/android/material/appbar/MaterialToolbar;

.field public final tabs:Landroid/widget/HorizontalScrollView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Lcom/google/android/material/chip/Chip;Lcom/google/android/material/chip/Chip;Lcom/google/android/material/chip/Chip;Lcom/google/android/material/chip/ChipGroup;Landroid/widget/LinearLayout;Lcom/google/android/material/button/MaterialButton;Landroid/widget/TextView;Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Landroidx/recyclerview/widget/RecyclerView;Lcom/google/android/material/appbar/MaterialToolbar;Landroid/widget/HorizontalScrollView;)V
    .locals 0
    .param p1, "rootView"    # Landroid/widget/LinearLayout;
    .param p2, "chipFolders"    # Lcom/google/android/material/chip/Chip;
    .param p3, "chipPlaylists"    # Lcom/google/android/material/chip/Chip;
    .param p4, "chipTracks"    # Lcom/google/android/material/chip/Chip;
    .param p5, "chips"    # Lcom/google/android/material/chip/ChipGroup;
    .param p6, "empty"    # Landroid/widget/LinearLayout;
    .param p7, "emptyAction"    # Lcom/google/android/material/button/MaterialButton;
    .param p8, "emptyText"    # Landroid/widget/TextView;
    .param p9, "fab"    # Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;
    .param p10, "list"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p11, "selectionBar"    # Lcom/google/android/material/appbar/MaterialToolbar;
    .param p12, "tabs"    # Landroid/widget/HorizontalScrollView;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/muzk/app/databinding/FragmentLibraryBinding;->rootView:Landroid/widget/LinearLayout;

    .line 68
    iput-object p2, p0, Lcom/muzk/app/databinding/FragmentLibraryBinding;->chipFolders:Lcom/google/android/material/chip/Chip;

    .line 69
    iput-object p3, p0, Lcom/muzk/app/databinding/FragmentLibraryBinding;->chipPlaylists:Lcom/google/android/material/chip/Chip;

    .line 70
    iput-object p4, p0, Lcom/muzk/app/databinding/FragmentLibraryBinding;->chipTracks:Lcom/google/android/material/chip/Chip;

    .line 71
    iput-object p5, p0, Lcom/muzk/app/databinding/FragmentLibraryBinding;->chips:Lcom/google/android/material/chip/ChipGroup;

    .line 72
    iput-object p6, p0, Lcom/muzk/app/databinding/FragmentLibraryBinding;->empty:Landroid/widget/LinearLayout;

    .line 73
    iput-object p7, p0, Lcom/muzk/app/databinding/FragmentLibraryBinding;->emptyAction:Lcom/google/android/material/button/MaterialButton;

    .line 74
    iput-object p8, p0, Lcom/muzk/app/databinding/FragmentLibraryBinding;->emptyText:Landroid/widget/TextView;

    .line 75
    iput-object p9, p0, Lcom/muzk/app/databinding/FragmentLibraryBinding;->fab:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 76
    iput-object p10, p0, Lcom/muzk/app/databinding/FragmentLibraryBinding;->list:Landroidx/recyclerview/widget/RecyclerView;

    .line 77
    iput-object p11, p0, Lcom/muzk/app/databinding/FragmentLibraryBinding;->selectionBar:Lcom/google/android/material/appbar/MaterialToolbar;

    .line 78
    iput-object p12, p0, Lcom/muzk/app/databinding/FragmentLibraryBinding;->tabs:Landroid/widget/HorizontalScrollView;

    .line 79
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/muzk/app/databinding/FragmentLibraryBinding;
    .locals 27
    .param p0, "rootView"    # Landroid/view/View;

    .line 108
    move-object/from16 v0, p0

    sget v1, Lcom/muzk/app/R$id;->chip_folders:I

    .line 109
    .local v1, "id":I
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/chip/Chip;

    .line 110
    .local v2, "chipFolders":Lcom/google/android/material/chip/Chip;
    if-eqz v2, :cond_a

    .line 114
    sget v1, Lcom/muzk/app/R$id;->chip_playlists:I

    .line 115
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v16, v3

    check-cast v16, Lcom/google/android/material/chip/Chip;

    .line 116
    .local v16, "chipPlaylists":Lcom/google/android/material/chip/Chip;
    if-eqz v16, :cond_9

    .line 120
    sget v1, Lcom/muzk/app/R$id;->chip_tracks:I

    .line 121
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v17, v3

    check-cast v17, Lcom/google/android/material/chip/Chip;

    .line 122
    .local v17, "chipTracks":Lcom/google/android/material/chip/Chip;
    if-eqz v17, :cond_8

    .line 126
    sget v1, Lcom/muzk/app/R$id;->chips:I

    .line 127
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v18, v3

    check-cast v18, Lcom/google/android/material/chip/ChipGroup;

    .line 128
    .local v18, "chips":Lcom/google/android/material/chip/ChipGroup;
    if-eqz v18, :cond_7

    .line 132
    sget v1, Lcom/muzk/app/R$id;->empty:I

    .line 133
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v19, v3

    check-cast v19, Landroid/widget/LinearLayout;

    .line 134
    .local v19, "empty":Landroid/widget/LinearLayout;
    if-eqz v19, :cond_6

    .line 138
    sget v1, Lcom/muzk/app/R$id;->empty_action:I

    .line 139
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v20, v3

    check-cast v20, Lcom/google/android/material/button/MaterialButton;

    .line 140
    .local v20, "emptyAction":Lcom/google/android/material/button/MaterialButton;
    if-eqz v20, :cond_5

    .line 144
    sget v1, Lcom/muzk/app/R$id;->empty_text:I

    .line 145
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v21, v3

    check-cast v21, Landroid/widget/TextView;

    .line 146
    .local v21, "emptyText":Landroid/widget/TextView;
    if-eqz v21, :cond_4

    .line 150
    sget v1, Lcom/muzk/app/R$id;->fab:I

    .line 151
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v22, v3

    check-cast v22, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 152
    .local v22, "fab":Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;
    if-eqz v22, :cond_3

    .line 156
    sget v1, Lcom/muzk/app/R$id;->list:I

    .line 157
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v23, v3

    check-cast v23, Landroidx/recyclerview/widget/RecyclerView;

    .line 158
    .local v23, "list":Landroidx/recyclerview/widget/RecyclerView;
    if-eqz v23, :cond_2

    .line 162
    sget v1, Lcom/muzk/app/R$id;->selection_bar:I

    .line 163
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v24, v3

    check-cast v24, Lcom/google/android/material/appbar/MaterialToolbar;

    .line 164
    .local v24, "selectionBar":Lcom/google/android/material/appbar/MaterialToolbar;
    if-eqz v24, :cond_1

    .line 168
    sget v1, Lcom/muzk/app/R$id;->tabs:I

    .line 169
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v25, v3

    check-cast v25, Landroid/widget/HorizontalScrollView;

    .line 170
    .local v25, "tabs":Landroid/widget/HorizontalScrollView;
    if-eqz v25, :cond_0

    .line 174
    new-instance v26, Lcom/muzk/app/databinding/FragmentLibraryBinding;

    move-object v4, v0

    check-cast v4, Landroid/widget/LinearLayout;

    move-object/from16 v3, v26

    move-object v5, v2

    move-object/from16 v6, v16

    move-object/from16 v7, v17

    move-object/from16 v8, v18

    move-object/from16 v9, v19

    move-object/from16 v10, v20

    move-object/from16 v11, v21

    move-object/from16 v12, v22

    move-object/from16 v13, v23

    move-object/from16 v14, v24

    move-object/from16 v15, v25

    invoke-direct/range {v3 .. v15}, Lcom/muzk/app/databinding/FragmentLibraryBinding;-><init>(Landroid/widget/LinearLayout;Lcom/google/android/material/chip/Chip;Lcom/google/android/material/chip/Chip;Lcom/google/android/material/chip/Chip;Lcom/google/android/material/chip/ChipGroup;Landroid/widget/LinearLayout;Lcom/google/android/material/button/MaterialButton;Landroid/widget/TextView;Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Landroidx/recyclerview/widget/RecyclerView;Lcom/google/android/material/appbar/MaterialToolbar;Landroid/widget/HorizontalScrollView;)V

    return-object v26

    .line 171
    :cond_0
    goto :goto_0

    .line 165
    .end local v25    # "tabs":Landroid/widget/HorizontalScrollView;
    :cond_1
    goto :goto_0

    .line 159
    .end local v24    # "selectionBar":Lcom/google/android/material/appbar/MaterialToolbar;
    :cond_2
    goto :goto_0

    .line 153
    .end local v23    # "list":Landroidx/recyclerview/widget/RecyclerView;
    :cond_3
    goto :goto_0

    .line 147
    .end local v22    # "fab":Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;
    :cond_4
    goto :goto_0

    .line 141
    .end local v21    # "emptyText":Landroid/widget/TextView;
    :cond_5
    goto :goto_0

    .line 135
    .end local v20    # "emptyAction":Lcom/google/android/material/button/MaterialButton;
    :cond_6
    goto :goto_0

    .line 129
    .end local v19    # "empty":Landroid/widget/LinearLayout;
    :cond_7
    goto :goto_0

    .line 123
    .end local v18    # "chips":Lcom/google/android/material/chip/ChipGroup;
    :cond_8
    goto :goto_0

    .line 117
    .end local v17    # "chipTracks":Lcom/google/android/material/chip/Chip;
    :cond_9
    goto :goto_0

    .line 111
    .end local v16    # "chipPlaylists":Lcom/google/android/material/chip/Chip;
    :cond_a
    nop

    .line 177
    .end local v2    # "chipFolders":Lcom/google/android/material/chip/Chip;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    .line 178
    .local v2, "missingId":Ljava/lang/String;
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "Missing required view with ID: "

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/muzk/app/databinding/FragmentLibraryBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 89
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/muzk/app/databinding/FragmentLibraryBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/muzk/app/databinding/FragmentLibraryBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/muzk/app/databinding/FragmentLibraryBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 95
    sget v0, Lcom/muzk/app/R$layout;->fragment_library:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 96
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 97
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 99
    :cond_0
    invoke-static {v0}, Lcom/muzk/app/databinding/FragmentLibraryBinding;->bind(Landroid/view/View;)Lcom/muzk/app/databinding/FragmentLibraryBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lcom/muzk/app/databinding/FragmentLibraryBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/muzk/app/databinding/FragmentLibraryBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
