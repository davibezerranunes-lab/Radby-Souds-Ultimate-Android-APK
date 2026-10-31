.class public final Lcom/muzk/app/databinding/ActivityMainBinding;
.super Ljava/lang/Object;
.source "ActivityMainBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final bottomNav:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

.field public final miniPlayer:Lcom/muzk/app/databinding/ViewMiniPlayerBinding;

.field public final navHost:Landroidx/fragment/app/FragmentContainerView;

.field public final root:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final toolbar:Lcom/google/android/material/appbar/MaterialToolbar;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/google/android/material/bottomnavigation/BottomNavigationView;Lcom/muzk/app/databinding/ViewMiniPlayerBinding;Landroidx/fragment/app/FragmentContainerView;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/google/android/material/appbar/MaterialToolbar;)V
    .locals 0
    .param p1, "rootView"    # Landroidx/constraintlayout/widget/ConstraintLayout;
    .param p2, "bottomNav"    # Lcom/google/android/material/bottomnavigation/BottomNavigationView;
    .param p3, "miniPlayer"    # Lcom/muzk/app/databinding/ViewMiniPlayerBinding;
    .param p4, "navHost"    # Landroidx/fragment/app/FragmentContainerView;
    .param p5, "root"    # Landroidx/constraintlayout/widget/ConstraintLayout;
    .param p6, "toolbar"    # Lcom/google/android/material/appbar/MaterialToolbar;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/muzk/app/databinding/ActivityMainBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 44
    iput-object p2, p0, Lcom/muzk/app/databinding/ActivityMainBinding;->bottomNav:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    .line 45
    iput-object p3, p0, Lcom/muzk/app/databinding/ActivityMainBinding;->miniPlayer:Lcom/muzk/app/databinding/ViewMiniPlayerBinding;

    .line 46
    iput-object p4, p0, Lcom/muzk/app/databinding/ActivityMainBinding;->navHost:Landroidx/fragment/app/FragmentContainerView;

    .line 47
    iput-object p5, p0, Lcom/muzk/app/databinding/ActivityMainBinding;->root:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 48
    iput-object p6, p0, Lcom/muzk/app/databinding/ActivityMainBinding;->toolbar:Lcom/google/android/material/appbar/MaterialToolbar;

    .line 49
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/muzk/app/databinding/ActivityMainBinding;
    .locals 15
    .param p0, "rootView"    # Landroid/view/View;

    .line 78
    sget v0, Lcom/muzk/app/R$id;->bottom_nav:I

    .line 79
    .local v0, "id":I
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    .line 80
    .local v1, "bottomNav":Lcom/google/android/material/bottomnavigation/BottomNavigationView;
    if-eqz v1, :cond_3

    .line 84
    sget v0, Lcom/muzk/app/R$id;->mini_player:I

    .line 85
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v9

    .line 86
    .local v9, "miniPlayer":Landroid/view/View;
    if-eqz v9, :cond_2

    .line 89
    invoke-static {v9}, Lcom/muzk/app/databinding/ViewMiniPlayerBinding;->bind(Landroid/view/View;)Lcom/muzk/app/databinding/ViewMiniPlayerBinding;

    move-result-object v10

    .line 91
    .local v10, "binding_miniPlayer":Lcom/muzk/app/databinding/ViewMiniPlayerBinding;
    sget v0, Lcom/muzk/app/R$id;->nav_host:I

    .line 92
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroidx/fragment/app/FragmentContainerView;

    .line 93
    .local v11, "navHost":Landroidx/fragment/app/FragmentContainerView;
    if-eqz v11, :cond_1

    .line 97
    move-object v12, p0

    check-cast v12, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 99
    .local v12, "root":Landroidx/constraintlayout/widget/ConstraintLayout;
    sget v0, Lcom/muzk/app/R$id;->toolbar:I

    .line 100
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Lcom/google/android/material/appbar/MaterialToolbar;

    .line 101
    .local v13, "toolbar":Lcom/google/android/material/appbar/MaterialToolbar;
    if-eqz v13, :cond_0

    .line 105
    new-instance v14, Lcom/muzk/app/databinding/ActivityMainBinding;

    move-object v3, p0

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v2, v14

    move-object v4, v1

    move-object v5, v10

    move-object v6, v11

    move-object v7, v12

    move-object v8, v13

    invoke-direct/range {v2 .. v8}, Lcom/muzk/app/databinding/ActivityMainBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/google/android/material/bottomnavigation/BottomNavigationView;Lcom/muzk/app/databinding/ViewMiniPlayerBinding;Landroidx/fragment/app/FragmentContainerView;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/google/android/material/appbar/MaterialToolbar;)V

    return-object v14

    .line 102
    :cond_0
    goto :goto_0

    .line 94
    .end local v12    # "root":Landroidx/constraintlayout/widget/ConstraintLayout;
    .end local v13    # "toolbar":Lcom/google/android/material/appbar/MaterialToolbar;
    :cond_1
    goto :goto_0

    .line 87
    .end local v10    # "binding_miniPlayer":Lcom/muzk/app/databinding/ViewMiniPlayerBinding;
    .end local v11    # "navHost":Landroidx/fragment/app/FragmentContainerView;
    :cond_2
    goto :goto_0

    .line 81
    .end local v9    # "miniPlayer":Landroid/view/View;
    :cond_3
    nop

    .line 108
    .end local v1    # "bottomNav":Lcom/google/android/material/bottomnavigation/BottomNavigationView;
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 109
    .local v1, "missingId":Ljava/lang/String;
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Missing required view with ID: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/muzk/app/databinding/ActivityMainBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 59
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/muzk/app/databinding/ActivityMainBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/muzk/app/databinding/ActivityMainBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/muzk/app/databinding/ActivityMainBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 65
    sget v0, Lcom/muzk/app/R$layout;->activity_main:I

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
    invoke-static {v0}, Lcom/muzk/app/databinding/ActivityMainBinding;->bind(Landroid/view/View;)Lcom/muzk/app/databinding/ActivityMainBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lcom/muzk/app/databinding/ActivityMainBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/muzk/app/databinding/ActivityMainBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method
