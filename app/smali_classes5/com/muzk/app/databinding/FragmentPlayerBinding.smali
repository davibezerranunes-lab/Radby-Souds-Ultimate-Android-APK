.class public final Lcom/muzk/app/databinding/FragmentPlayerBinding;
.super Ljava/lang/Object;
.source "FragmentPlayerBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final artist:Landroid/widget/TextView;

.field public final btnCollapse:Lcom/google/android/material/button/MaterialButton;

.field public final btnLike:Lcom/google/android/material/button/MaterialButton;

.field public final btnMenu:Lcom/google/android/material/button/MaterialButton;

.field public final btnNext:Lcom/google/android/material/button/MaterialButton;

.field public final btnPlay:Lcom/google/android/material/button/MaterialButton;

.field public final btnPrev:Lcom/google/android/material/button/MaterialButton;

.field public final btnRepeat:Lcom/google/android/material/button/MaterialButton;

.field public final btnShuffle:Lcom/google/android/material/button/MaterialButton;

.field public final contextLabel:Landroid/widget/TextView;

.field public final contextName:Landroid/widget/TextView;

.field public final cover:Lcom/google/android/material/imageview/ShapeableImageView;

.field public final duration:Landroid/widget/TextView;

.field public final playerRoot:Landroid/widget/LinearLayout;

.field public final position:Landroid/widget/TextView;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final seek:Lcom/google/android/material/slider/Slider;

.field public final title:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/TextView;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/button/MaterialButton;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/google/android/material/imageview/ShapeableImageView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Lcom/google/android/material/slider/Slider;Landroid/widget/TextView;)V
    .locals 16
    .param p1, "rootView"    # Landroid/widget/LinearLayout;
    .param p2, "artist"    # Landroid/widget/TextView;
    .param p3, "btnCollapse"    # Lcom/google/android/material/button/MaterialButton;
    .param p4, "btnLike"    # Lcom/google/android/material/button/MaterialButton;
    .param p5, "btnMenu"    # Lcom/google/android/material/button/MaterialButton;
    .param p6, "btnNext"    # Lcom/google/android/material/button/MaterialButton;
    .param p7, "btnPlay"    # Lcom/google/android/material/button/MaterialButton;
    .param p8, "btnPrev"    # Lcom/google/android/material/button/MaterialButton;
    .param p9, "btnRepeat"    # Lcom/google/android/material/button/MaterialButton;
    .param p10, "btnShuffle"    # Lcom/google/android/material/button/MaterialButton;
    .param p11, "contextLabel"    # Landroid/widget/TextView;
    .param p12, "contextName"    # Landroid/widget/TextView;
    .param p13, "cover"    # Lcom/google/android/material/imageview/ShapeableImageView;
    .param p14, "duration"    # Landroid/widget/TextView;
    .param p15, "playerRoot"    # Landroid/widget/LinearLayout;
    .param p16, "position"    # Landroid/widget/TextView;
    .param p17, "seek"    # Lcom/google/android/material/slider/Slider;
    .param p18, "title"    # Landroid/widget/TextView;

    .line 84
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 85
    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/muzk/app/databinding/FragmentPlayerBinding;->rootView:Landroid/widget/LinearLayout;

    .line 86
    move-object/from16 v2, p2

    iput-object v2, v0, Lcom/muzk/app/databinding/FragmentPlayerBinding;->artist:Landroid/widget/TextView;

    .line 87
    move-object/from16 v3, p3

    iput-object v3, v0, Lcom/muzk/app/databinding/FragmentPlayerBinding;->btnCollapse:Lcom/google/android/material/button/MaterialButton;

    .line 88
    move-object/from16 v4, p4

    iput-object v4, v0, Lcom/muzk/app/databinding/FragmentPlayerBinding;->btnLike:Lcom/google/android/material/button/MaterialButton;

    .line 89
    move-object/from16 v5, p5

    iput-object v5, v0, Lcom/muzk/app/databinding/FragmentPlayerBinding;->btnMenu:Lcom/google/android/material/button/MaterialButton;

    .line 90
    move-object/from16 v6, p6

    iput-object v6, v0, Lcom/muzk/app/databinding/FragmentPlayerBinding;->btnNext:Lcom/google/android/material/button/MaterialButton;

    .line 91
    move-object/from16 v7, p7

    iput-object v7, v0, Lcom/muzk/app/databinding/FragmentPlayerBinding;->btnPlay:Lcom/google/android/material/button/MaterialButton;

    .line 92
    move-object/from16 v8, p8

    iput-object v8, v0, Lcom/muzk/app/databinding/FragmentPlayerBinding;->btnPrev:Lcom/google/android/material/button/MaterialButton;

    .line 93
    move-object/from16 v9, p9

    iput-object v9, v0, Lcom/muzk/app/databinding/FragmentPlayerBinding;->btnRepeat:Lcom/google/android/material/button/MaterialButton;

    .line 94
    move-object/from16 v10, p10

    iput-object v10, v0, Lcom/muzk/app/databinding/FragmentPlayerBinding;->btnShuffle:Lcom/google/android/material/button/MaterialButton;

    .line 95
    move-object/from16 v11, p11

    iput-object v11, v0, Lcom/muzk/app/databinding/FragmentPlayerBinding;->contextLabel:Landroid/widget/TextView;

    .line 96
    move-object/from16 v12, p12

    iput-object v12, v0, Lcom/muzk/app/databinding/FragmentPlayerBinding;->contextName:Landroid/widget/TextView;

    .line 97
    move-object/from16 v13, p13

    iput-object v13, v0, Lcom/muzk/app/databinding/FragmentPlayerBinding;->cover:Lcom/google/android/material/imageview/ShapeableImageView;

    .line 98
    move-object/from16 v14, p14

    iput-object v14, v0, Lcom/muzk/app/databinding/FragmentPlayerBinding;->duration:Landroid/widget/TextView;

    .line 99
    move-object/from16 v15, p15

    iput-object v15, v0, Lcom/muzk/app/databinding/FragmentPlayerBinding;->playerRoot:Landroid/widget/LinearLayout;

    .line 100
    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/muzk/app/databinding/FragmentPlayerBinding;->position:Landroid/widget/TextView;

    .line 101
    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/muzk/app/databinding/FragmentPlayerBinding;->seek:Lcom/google/android/material/slider/Slider;

    .line 102
    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/muzk/app/databinding/FragmentPlayerBinding;->title:Landroid/widget/TextView;

    .line 103
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/muzk/app/databinding/FragmentPlayerBinding;
    .locals 39
    .param p0, "rootView"    # Landroid/view/View;

    .line 132
    move-object/from16 v0, p0

    sget v1, Lcom/muzk/app/R$id;->artist:I

    .line 133
    .local v1, "id":I
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 134
    .local v2, "artist":Landroid/widget/TextView;
    if-eqz v2, :cond_f

    .line 138
    sget v1, Lcom/muzk/app/R$id;->btn_collapse:I

    .line 139
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v22, v3

    check-cast v22, Lcom/google/android/material/button/MaterialButton;

    .line 140
    .local v22, "btnCollapse":Lcom/google/android/material/button/MaterialButton;
    if-eqz v22, :cond_e

    .line 144
    sget v1, Lcom/muzk/app/R$id;->btn_like:I

    .line 145
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v23, v3

    check-cast v23, Lcom/google/android/material/button/MaterialButton;

    .line 146
    .local v23, "btnLike":Lcom/google/android/material/button/MaterialButton;
    if-eqz v23, :cond_d

    .line 150
    sget v1, Lcom/muzk/app/R$id;->btn_menu:I

    .line 151
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v24, v3

    check-cast v24, Lcom/google/android/material/button/MaterialButton;

    .line 152
    .local v24, "btnMenu":Lcom/google/android/material/button/MaterialButton;
    if-eqz v24, :cond_c

    .line 156
    sget v1, Lcom/muzk/app/R$id;->btn_next:I

    .line 157
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v25, v3

    check-cast v25, Lcom/google/android/material/button/MaterialButton;

    .line 158
    .local v25, "btnNext":Lcom/google/android/material/button/MaterialButton;
    if-eqz v25, :cond_b

    .line 162
    sget v1, Lcom/muzk/app/R$id;->btn_play:I

    .line 163
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v26, v3

    check-cast v26, Lcom/google/android/material/button/MaterialButton;

    .line 164
    .local v26, "btnPlay":Lcom/google/android/material/button/MaterialButton;
    if-eqz v26, :cond_a

    .line 168
    sget v1, Lcom/muzk/app/R$id;->btn_prev:I

    .line 169
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v27, v3

    check-cast v27, Lcom/google/android/material/button/MaterialButton;

    .line 170
    .local v27, "btnPrev":Lcom/google/android/material/button/MaterialButton;
    if-eqz v27, :cond_9

    .line 174
    sget v1, Lcom/muzk/app/R$id;->btn_repeat:I

    .line 175
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v28, v3

    check-cast v28, Lcom/google/android/material/button/MaterialButton;

    .line 176
    .local v28, "btnRepeat":Lcom/google/android/material/button/MaterialButton;
    if-eqz v28, :cond_8

    .line 180
    sget v1, Lcom/muzk/app/R$id;->btn_shuffle:I

    .line 181
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v29, v3

    check-cast v29, Lcom/google/android/material/button/MaterialButton;

    .line 182
    .local v29, "btnShuffle":Lcom/google/android/material/button/MaterialButton;
    if-eqz v29, :cond_7

    .line 186
    sget v1, Lcom/muzk/app/R$id;->context_label:I

    .line 187
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v30, v3

    check-cast v30, Landroid/widget/TextView;

    .line 188
    .local v30, "contextLabel":Landroid/widget/TextView;
    if-eqz v30, :cond_6

    .line 192
    sget v1, Lcom/muzk/app/R$id;->context_name:I

    .line 193
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v31, v3

    check-cast v31, Landroid/widget/TextView;

    .line 194
    .local v31, "contextName":Landroid/widget/TextView;
    if-eqz v31, :cond_5

    .line 198
    sget v1, Lcom/muzk/app/R$id;->cover:I

    .line 199
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v32, v3

    check-cast v32, Lcom/google/android/material/imageview/ShapeableImageView;

    .line 200
    .local v32, "cover":Lcom/google/android/material/imageview/ShapeableImageView;
    if-eqz v32, :cond_4

    .line 204
    sget v1, Lcom/muzk/app/R$id;->duration:I

    .line 205
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v33, v3

    check-cast v33, Landroid/widget/TextView;

    .line 206
    .local v33, "duration":Landroid/widget/TextView;
    if-eqz v33, :cond_3

    .line 210
    move-object/from16 v34, v0

    check-cast v34, Landroid/widget/LinearLayout;

    .line 212
    .local v34, "playerRoot":Landroid/widget/LinearLayout;
    sget v1, Lcom/muzk/app/R$id;->position:I

    .line 213
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v35, v3

    check-cast v35, Landroid/widget/TextView;

    .line 214
    .local v35, "position":Landroid/widget/TextView;
    if-eqz v35, :cond_2

    .line 218
    sget v1, Lcom/muzk/app/R$id;->seek:I

    .line 219
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v36, v3

    check-cast v36, Lcom/google/android/material/slider/Slider;

    .line 220
    .local v36, "seek":Lcom/google/android/material/slider/Slider;
    if-eqz v36, :cond_1

    .line 224
    sget v1, Lcom/muzk/app/R$id;->title:I

    .line 225
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v37, v3

    check-cast v37, Landroid/widget/TextView;

    .line 226
    .local v37, "title":Landroid/widget/TextView;
    if-eqz v37, :cond_0

    .line 230
    new-instance v38, Lcom/muzk/app/databinding/FragmentPlayerBinding;

    move-object/from16 v3, v38

    move-object v4, v0

    check-cast v4, Landroid/widget/LinearLayout;

    move-object v5, v2

    move-object/from16 v6, v22

    move-object/from16 v7, v23

    move-object/from16 v8, v24

    move-object/from16 v9, v25

    move-object/from16 v10, v26

    move-object/from16 v11, v27

    move-object/from16 v12, v28

    move-object/from16 v13, v29

    move-object/from16 v14, v30

    move-object/from16 v15, v31

    move-object/from16 v16, v32

    move-object/from16 v17, v33

    move-object/from16 v18, v34

    move-object/from16 v19, v35

    move-object/from16 v20, v36

    move-object/from16 v21, v37

    invoke-direct/range {v3 .. v21}, Lcom/muzk/app/databinding/FragmentPlayerBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/TextView;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/button/MaterialButton;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/google/android/material/imageview/ShapeableImageView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Lcom/google/android/material/slider/Slider;Landroid/widget/TextView;)V

    return-object v38

    .line 227
    :cond_0
    goto :goto_0

    .line 221
    .end local v37    # "title":Landroid/widget/TextView;
    :cond_1
    goto :goto_0

    .line 215
    .end local v36    # "seek":Lcom/google/android/material/slider/Slider;
    :cond_2
    goto :goto_0

    .line 207
    .end local v34    # "playerRoot":Landroid/widget/LinearLayout;
    .end local v35    # "position":Landroid/widget/TextView;
    :cond_3
    goto :goto_0

    .line 201
    .end local v33    # "duration":Landroid/widget/TextView;
    :cond_4
    goto :goto_0

    .line 195
    .end local v32    # "cover":Lcom/google/android/material/imageview/ShapeableImageView;
    :cond_5
    goto :goto_0

    .line 189
    .end local v31    # "contextName":Landroid/widget/TextView;
    :cond_6
    goto :goto_0

    .line 183
    .end local v30    # "contextLabel":Landroid/widget/TextView;
    :cond_7
    goto :goto_0

    .line 177
    .end local v29    # "btnShuffle":Lcom/google/android/material/button/MaterialButton;
    :cond_8
    goto :goto_0

    .line 171
    .end local v28    # "btnRepeat":Lcom/google/android/material/button/MaterialButton;
    :cond_9
    goto :goto_0

    .line 165
    .end local v27    # "btnPrev":Lcom/google/android/material/button/MaterialButton;
    :cond_a
    goto :goto_0

    .line 159
    .end local v26    # "btnPlay":Lcom/google/android/material/button/MaterialButton;
    :cond_b
    goto :goto_0

    .line 153
    .end local v25    # "btnNext":Lcom/google/android/material/button/MaterialButton;
    :cond_c
    goto :goto_0

    .line 147
    .end local v24    # "btnMenu":Lcom/google/android/material/button/MaterialButton;
    :cond_d
    goto :goto_0

    .line 141
    .end local v23    # "btnLike":Lcom/google/android/material/button/MaterialButton;
    :cond_e
    goto :goto_0

    .line 135
    .end local v22    # "btnCollapse":Lcom/google/android/material/button/MaterialButton;
    :cond_f
    nop

    .line 234
    .end local v2    # "artist":Landroid/widget/TextView;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    .line 235
    .local v2, "missingId":Ljava/lang/String;
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "Missing required view with ID: "

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/muzk/app/databinding/FragmentPlayerBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 113
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/muzk/app/databinding/FragmentPlayerBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/muzk/app/databinding/FragmentPlayerBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/muzk/app/databinding/FragmentPlayerBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 119
    sget v0, Lcom/muzk/app/R$layout;->fragment_player:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 120
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 121
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 123
    :cond_0
    invoke-static {v0}, Lcom/muzk/app/databinding/FragmentPlayerBinding;->bind(Landroid/view/View;)Lcom/muzk/app/databinding/FragmentPlayerBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lcom/muzk/app/databinding/FragmentPlayerBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/muzk/app/databinding/FragmentPlayerBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
