.class public final Lcom/muzk/app/ui/settings/PalettePreference;
.super Landroidx/preference/Preference;
.source "PalettePreference.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/muzk/app/ui/settings/PalettePreference$Companion;,
        Lcom/muzk/app/ui/settings/PalettePreference$Swatch;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPalettePreference.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PalettePreference.kt\ncom/muzk/app/ui/settings/PalettePreference\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,68:1\n1863#2,2:69\n*S KotlinDebug\n*F\n+ 1 PalettePreference.kt\ncom/muzk/app/ui/settings/PalettePreference\n*L\n31#1:69,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 \r2\u00020\u0001:\u0002\u000c\rB\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0010\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/muzk/app/ui/settings/PalettePreference;",
        "Landroidx/preference/Preference;",
        "context",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "onBindViewHolder",
        "",
        "holder",
        "Landroidx/preference/PreferenceViewHolder;",
        "Swatch",
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
.field public static final Companion:Lcom/muzk/app/ui/settings/PalettePreference$Companion;

.field private static final SWATCHES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/muzk/app/ui/settings/PalettePreference$Swatch;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$oJTg6Qvcje8sS-GD-Bg52FBIlZI(ZLcom/muzk/app/ui/settings/PalettePreference;Lcom/muzk/app/ui/settings/PalettePreference$Swatch;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/muzk/app/ui/settings/PalettePreference;->onBindViewHolder$lambda$3$lambda$2(ZLcom/muzk/app/ui/settings/PalettePreference;Lcom/muzk/app/ui/settings/PalettePreference$Swatch;Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/muzk/app/ui/settings/PalettePreference$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/muzk/app/ui/settings/PalettePreference$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/muzk/app/ui/settings/PalettePreference;->Companion:Lcom/muzk/app/ui/settings/PalettePreference$Companion;

    .line 57
    nop

    .line 58
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/muzk/app/ui/settings/PalettePreference$Swatch;

    new-instance v1, Lcom/muzk/app/ui/settings/PalettePreference$Swatch;

    sget-object v2, Lcom/muzk/app/ui/settings/PalettePreference;->Companion:Lcom/muzk/app/ui/settings/PalettePreference$Companion;

    const-wide v3, 0xff4fb3ffL

    invoke-static {v2, v3, v4}, Lcom/muzk/app/ui/settings/PalettePreference$Companion;->access$c(Lcom/muzk/app/ui/settings/PalettePreference$Companion;J)I

    move-result v2

    sget-object v5, Lcom/muzk/app/ui/settings/PalettePreference;->Companion:Lcom/muzk/app/ui/settings/PalettePreference$Companion;

    const-wide v6, 0xff1d4ed8L

    invoke-static {v5, v6, v7}, Lcom/muzk/app/ui/settings/PalettePreference$Companion;->access$c(Lcom/muzk/app/ui/settings/PalettePreference$Companion;J)I

    move-result v5

    filled-new-array {v2, v5}, [I

    move-result-object v2

    const-string v5, "muzk"

    const-string v6, "Radby Sonds"

    invoke-direct {v1, v5, v6, v2}, Lcom/muzk/app/ui/settings/PalettePreference$Swatch;-><init>(Ljava/lang/String;Ljava/lang/String;[I)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 59
    new-instance v1, Lcom/muzk/app/ui/settings/PalettePreference$Swatch;

    sget-object v2, Lcom/muzk/app/ui/settings/PalettePreference;->Companion:Lcom/muzk/app/ui/settings/PalettePreference$Companion;

    const-wide v5, 0xff9d6bffL

    invoke-static {v2, v5, v6}, Lcom/muzk/app/ui/settings/PalettePreference$Companion;->access$c(Lcom/muzk/app/ui/settings/PalettePreference$Companion;J)I

    move-result v2

    sget-object v7, Lcom/muzk/app/ui/settings/PalettePreference;->Companion:Lcom/muzk/app/ui/settings/PalettePreference$Companion;

    const-wide v8, 0xff5b2bd9L

    invoke-static {v7, v8, v9}, Lcom/muzk/app/ui/settings/PalettePreference$Companion;->access$c(Lcom/muzk/app/ui/settings/PalettePreference$Companion;J)I

    move-result v7

    filled-new-array {v2, v7}, [I

    move-result-object v2

    const-string v7, "purple"

    const-string v8, "Roxo"

    invoke-direct {v1, v7, v8, v2}, Lcom/muzk/app/ui/settings/PalettePreference$Swatch;-><init>(Ljava/lang/String;Ljava/lang/String;[I)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 58
    nop

    .line 60
    new-instance v1, Lcom/muzk/app/ui/settings/PalettePreference$Swatch;

    sget-object v2, Lcom/muzk/app/ui/settings/PalettePreference;->Companion:Lcom/muzk/app/ui/settings/PalettePreference$Companion;

    const-wide v7, 0xff1ed760L

    invoke-static {v2, v7, v8}, Lcom/muzk/app/ui/settings/PalettePreference$Companion;->access$c(Lcom/muzk/app/ui/settings/PalettePreference$Companion;J)I

    move-result v2

    sget-object v7, Lcom/muzk/app/ui/settings/PalettePreference;->Companion:Lcom/muzk/app/ui/settings/PalettePreference$Companion;

    const-wide v8, 0xff0f7a36L

    invoke-static {v7, v8, v9}, Lcom/muzk/app/ui/settings/PalettePreference$Companion;->access$c(Lcom/muzk/app/ui/settings/PalettePreference$Companion;J)I

    move-result v7

    filled-new-array {v2, v7}, [I

    move-result-object v2

    const-string v7, "green"

    const-string v8, "Verde"

    invoke-direct {v1, v7, v8, v2}, Lcom/muzk/app/ui/settings/PalettePreference$Swatch;-><init>(Ljava/lang/String;Ljava/lang/String;[I)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 58
    nop

    .line 61
    new-instance v1, Lcom/muzk/app/ui/settings/PalettePreference$Swatch;

    sget-object v2, Lcom/muzk/app/ui/settings/PalettePreference;->Companion:Lcom/muzk/app/ui/settings/PalettePreference$Companion;

    const-wide v7, 0xffff4f8bL

    invoke-static {v2, v7, v8}, Lcom/muzk/app/ui/settings/PalettePreference$Companion;->access$c(Lcom/muzk/app/ui/settings/PalettePreference$Companion;J)I

    move-result v2

    sget-object v7, Lcom/muzk/app/ui/settings/PalettePreference;->Companion:Lcom/muzk/app/ui/settings/PalettePreference$Companion;

    const-wide v8, 0xffb0174cL

    invoke-static {v7, v8, v9}, Lcom/muzk/app/ui/settings/PalettePreference$Companion;->access$c(Lcom/muzk/app/ui/settings/PalettePreference$Companion;J)I

    move-result v7

    filled-new-array {v2, v7}, [I

    move-result-object v2

    const-string v7, "pink"

    const-string v8, "Rosa"

    invoke-direct {v1, v7, v8, v2}, Lcom/muzk/app/ui/settings/PalettePreference$Swatch;-><init>(Ljava/lang/String;Ljava/lang/String;[I)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 58
    nop

    .line 62
    new-instance v1, Lcom/muzk/app/ui/settings/PalettePreference$Swatch;

    sget-object v2, Lcom/muzk/app/ui/settings/PalettePreference;->Companion:Lcom/muzk/app/ui/settings/PalettePreference$Companion;

    const-wide v7, 0xffff7a3dL

    invoke-static {v2, v7, v8}, Lcom/muzk/app/ui/settings/PalettePreference$Companion;->access$c(Lcom/muzk/app/ui/settings/PalettePreference$Companion;J)I

    move-result v2

    sget-object v7, Lcom/muzk/app/ui/settings/PalettePreference;->Companion:Lcom/muzk/app/ui/settings/PalettePreference$Companion;

    const-wide v8, 0xffb3430fL

    invoke-static {v7, v8, v9}, Lcom/muzk/app/ui/settings/PalettePreference$Companion;->access$c(Lcom/muzk/app/ui/settings/PalettePreference$Companion;J)I

    move-result v7

    filled-new-array {v2, v7}, [I

    move-result-object v2

    const-string v7, "orange"

    const-string v8, "Laranja"

    invoke-direct {v1, v7, v8, v2}, Lcom/muzk/app/ui/settings/PalettePreference$Swatch;-><init>(Ljava/lang/String;Ljava/lang/String;[I)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 58
    nop

    .line 63
    new-instance v1, Lcom/muzk/app/ui/settings/PalettePreference$Swatch;

    sget-object v2, Lcom/muzk/app/ui/settings/PalettePreference;->Companion:Lcom/muzk/app/ui/settings/PalettePreference$Companion;

    const-wide v7, 0xff4d8dffL

    invoke-static {v2, v7, v8}, Lcom/muzk/app/ui/settings/PalettePreference$Companion;->access$c(Lcom/muzk/app/ui/settings/PalettePreference$Companion;J)I

    move-result v2

    sget-object v7, Lcom/muzk/app/ui/settings/PalettePreference;->Companion:Lcom/muzk/app/ui/settings/PalettePreference$Companion;

    const-wide v8, 0xff1f4fc7L

    invoke-static {v7, v8, v9}, Lcom/muzk/app/ui/settings/PalettePreference$Companion;->access$c(Lcom/muzk/app/ui/settings/PalettePreference$Companion;J)I

    move-result v7

    filled-new-array {v2, v7}, [I

    move-result-object v2

    const-string v7, "blue"

    const-string v8, "Azul"

    invoke-direct {v1, v7, v8, v2}, Lcom/muzk/app/ui/settings/PalettePreference$Swatch;-><init>(Ljava/lang/String;Ljava/lang/String;[I)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 58
    nop

    .line 64
    new-instance v1, Lcom/muzk/app/ui/settings/PalettePreference$Swatch;

    sget-object v2, Lcom/muzk/app/ui/settings/PalettePreference;->Companion:Lcom/muzk/app/ui/settings/PalettePreference$Companion;

    const-wide v7, 0xffffb86bL

    invoke-static {v2, v7, v8}, Lcom/muzk/app/ui/settings/PalettePreference$Companion;->access$c(Lcom/muzk/app/ui/settings/PalettePreference$Companion;J)I

    move-result v2

    sget-object v7, Lcom/muzk/app/ui/settings/PalettePreference;->Companion:Lcom/muzk/app/ui/settings/PalettePreference$Companion;

    invoke-static {v7, v5, v6}, Lcom/muzk/app/ui/settings/PalettePreference$Companion;->access$c(Lcom/muzk/app/ui/settings/PalettePreference$Companion;J)I

    move-result v5

    sget-object v6, Lcom/muzk/app/ui/settings/PalettePreference;->Companion:Lcom/muzk/app/ui/settings/PalettePreference$Companion;

    invoke-static {v6, v3, v4}, Lcom/muzk/app/ui/settings/PalettePreference$Companion;->access$c(Lcom/muzk/app/ui/settings/PalettePreference$Companion;J)I

    move-result v3

    filled-new-array {v2, v5, v3}, [I

    move-result-object v2

    const-string v3, "wallpaper"

    const-string v4, "Papel de\nparede"

    invoke-direct {v1, v3, v4, v2}, Lcom/muzk/app/ui/settings/PalettePreference$Swatch;-><init>(Ljava/lang/String;Ljava/lang/String;[I)V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 58
    nop

    .line 57
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/muzk/app/ui/settings/PalettePreference;->SWATCHES:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    nop

    .line 19
    sget v0, Lcom/muzk/app/R$layout;->pref_palette:I

    invoke-virtual {p0, v0}, Lcom/muzk/app/ui/settings/PalettePreference;->setLayoutResource(I)V

    .line 20
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/muzk/app/ui/settings/PalettePreference;->setSelectable(Z)V

    .line 21
    nop

    .line 16
    return-void
.end method

.method private static final onBindViewHolder$lambda$3$lambda$2(ZLcom/muzk/app/ui/settings/PalettePreference;Lcom/muzk/app/ui/settings/PalettePreference$Swatch;Landroid/view/View;)V
    .locals 1
    .param p0, "$on"    # Z
    .param p1, "this$0"    # Lcom/muzk/app/ui/settings/PalettePreference;
    .param p2, "$sw"    # Lcom/muzk/app/ui/settings/PalettePreference$Swatch;
    .param p3, "it"    # Landroid/view/View;

    .line 44
    if-nez p0, :cond_0

    invoke-virtual {p2}, Lcom/muzk/app/ui/settings/PalettePreference$Swatch;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/muzk/app/ui/settings/PalettePreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {p2}, Lcom/muzk/app/ui/settings/PalettePreference$Swatch;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/muzk/app/ui/settings/PalettePreference;->persistString(Ljava/lang/String;)Z

    .line 46
    invoke-virtual {p1}, Lcom/muzk/app/ui/settings/PalettePreference;->notifyChanged()V

    .line 48
    :cond_0
    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 20
    .param p1, "holder"    # Landroidx/preference/PreferenceViewHolder;

    move-object/from16 v0, p1

    const-string v1, "holder"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-super/range {p0 .. p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 25
    sget v1, Lcom/muzk/app/R$id;->swatches:I

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type android.widget.LinearLayout"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/widget/LinearLayout;

    .line 26
    .local v1, "row":Landroid/widget/LinearLayout;
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 27
    sget-object v2, Lcom/muzk/app/ui/AppPalette;->INSTANCE:Lcom/muzk/app/ui/AppPalette;

    invoke-virtual/range {p0 .. p0}, Lcom/muzk/app/ui/settings/PalettePreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "getContext(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/muzk/app/ui/AppPalette;->current(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 28
    .local v2, "current":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/muzk/app/ui/settings/PalettePreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 29
    .local v3, "inflater":Landroid/view/LayoutInflater;
    move-object v4, v1

    check-cast v4, Landroid/view/View;

    sget v5, Lcom/google/android/material/R$attr;->colorOnSurface:I

    invoke-static {v4, v5}, Lcom/google/android/material/color/MaterialColors;->getColor(Landroid/view/View;I)I

    move-result v4

    .line 30
    .local v4, "onSurface":I
    move-object v5, v1

    check-cast v5, Landroid/view/View;

    sget v6, Lcom/google/android/material/R$attr;->colorOnSurfaceVariant:I

    invoke-static {v5, v6}, Lcom/google/android/material/color/MaterialColors;->getColor(Landroid/view/View;I)I

    move-result v5

    .line 31
    .local v5, "muted":I
    sget-object v6, Lcom/muzk/app/ui/settings/PalettePreference;->SWATCHES:Ljava/util/List;

    check-cast v6, Ljava/lang/Iterable;

    .local v6, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v7, 0x0

    .line 69
    .local v7, "$i$f$forEach":I
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .local v9, "element$iv":Ljava/lang/Object;
    move-object v10, v9

    check-cast v10, Lcom/muzk/app/ui/settings/PalettePreference$Swatch;

    .local v10, "sw":Lcom/muzk/app/ui/settings/PalettePreference$Swatch;
    const/4 v11, 0x0

    .line 32
    .local v11, "$i$a$-forEach-PalettePreference$onBindViewHolder$1":I
    move-object v12, v1

    check-cast v12, Landroid/view/ViewGroup;

    const/4 v13, 0x0

    invoke-static {v3, v12, v13}, Lcom/muzk/app/databinding/ItemSwatchBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/muzk/app/databinding/ItemSwatchBinding;

    move-result-object v12

    const-string v13, "inflate(...)"

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    .local v12, "b":Lcom/muzk/app/databinding/ItemSwatchBinding;
    invoke-virtual {v10}, Lcom/muzk/app/ui/settings/PalettePreference$Swatch;->getId()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    .line 34
    .local v13, "on":Z
    iget-object v14, v12, Lcom/muzk/app/databinding/ItemSwatchBinding;->dot:Landroid/view/View;

    new-instance v15, Landroid/graphics/drawable/GradientDrawable;

    sget-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->TL_BR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    move-object/from16 v16, v2

    .end local v2    # "current":Ljava/lang/String;
    .local v16, "current":Ljava/lang/String;
    invoke-virtual {v10}, Lcom/muzk/app/ui/settings/PalettePreference$Swatch;->getColors()[I

    move-result-object v2

    invoke-direct {v15, v0, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    move-object v0, v15

    .local v0, "$this$onBindViewHolder_u24lambda_u243_u24lambda_u240":Landroid/graphics/drawable/GradientDrawable;
    const/4 v2, 0x0

    .line 35
    .local v2, "$i$a$-apply-PalettePreference$onBindViewHolder$1$1":I
    move/from16 v17, v2

    .end local v2    # "$i$a$-apply-PalettePreference$onBindViewHolder$1$1":I
    .local v17, "$i$a$-apply-PalettePreference$onBindViewHolder$1$1":I
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 36
    nop

    .line 34
    .end local v0    # "$this$onBindViewHolder_u24lambda_u243_u24lambda_u240":Landroid/graphics/drawable/GradientDrawable;
    .end local v17    # "$i$a$-apply-PalettePreference$onBindViewHolder$1$1":I
    check-cast v15, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v14, v15}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 37
    iget-object v0, v12, Lcom/muzk/app/databinding/ItemSwatchBinding;->ring:Landroid/widget/FrameLayout;

    if-eqz v13, :cond_0

    new-instance v14, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v14}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    move-object v15, v14

    .local v15, "$this$onBindViewHolder_u24lambda_u243_u24lambda_u241":Landroid/graphics/drawable/GradientDrawable;
    const/16 v17, 0x0

    .line 38
    .local v17, "$i$a$-apply-PalettePreference$onBindViewHolder$1$2":I
    invoke-virtual {v15, v2}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 39
    const/4 v2, 0x3

    int-to-float v2, v2

    invoke-virtual/range {p0 .. p0}, Lcom/muzk/app/ui/settings/PalettePreference;->getContext()Landroid/content/Context;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    move-object/from16 v19, v3

    .end local v3    # "inflater":Landroid/view/LayoutInflater;
    .local v19, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual/range {v18 .. v18}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v15, v2, v4}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 40
    nop

    .line 37
    .end local v15    # "$this$onBindViewHolder_u24lambda_u243_u24lambda_u241":Landroid/graphics/drawable/GradientDrawable;
    .end local v17    # "$i$a$-apply-PalettePreference$onBindViewHolder$1$2":I
    check-cast v14, Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 40
    .end local v19    # "inflater":Landroid/view/LayoutInflater;
    .restart local v3    # "inflater":Landroid/view/LayoutInflater;
    :cond_0
    move-object/from16 v19, v3

    .end local v3    # "inflater":Landroid/view/LayoutInflater;
    .restart local v19    # "inflater":Landroid/view/LayoutInflater;
    const/4 v14, 0x0

    .line 37
    :goto_1
    invoke-virtual {v0, v14}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 41
    iget-object v0, v12, Lcom/muzk/app/databinding/ItemSwatchBinding;->label:Landroid/widget/TextView;

    invoke-virtual {v10}, Lcom/muzk/app/ui/settings/PalettePreference$Swatch;->getName()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    iget-object v0, v12, Lcom/muzk/app/databinding/ItemSwatchBinding;->label:Landroid/widget/TextView;

    if-eqz v13, :cond_1

    move v2, v4

    goto :goto_2

    :cond_1
    move v2, v5

    :goto_2
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 43
    invoke-virtual {v12}, Lcom/muzk/app/databinding/ItemSwatchBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    new-instance v2, Lcom/muzk/app/ui/settings/PalettePreference$$ExternalSyntheticLambda0;

    move-object/from16 v3, p0

    invoke-direct {v2, v13, v3, v10}, Lcom/muzk/app/ui/settings/PalettePreference$$ExternalSyntheticLambda0;-><init>(ZLcom/muzk/app/ui/settings/PalettePreference;Lcom/muzk/app/ui/settings/PalettePreference$Swatch;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    invoke-virtual {v12}, Lcom/muzk/app/databinding/ItemSwatchBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 50
    nop

    .line 69
    .end local v10    # "sw":Lcom/muzk/app/ui/settings/PalettePreference$Swatch;
    .end local v11    # "$i$a$-forEach-PalettePreference$onBindViewHolder$1":I
    .end local v12    # "b":Lcom/muzk/app/databinding/ItemSwatchBinding;
    .end local v13    # "on":Z
    move-object/from16 v0, p1

    move-object/from16 v2, v16

    move-object/from16 v3, v19

    .end local v9    # "element$iv":Ljava/lang/Object;
    goto/16 :goto_0

    .line 70
    .end local v16    # "current":Ljava/lang/String;
    .end local v19    # "inflater":Landroid/view/LayoutInflater;
    .local v2, "current":Ljava/lang/String;
    .restart local v3    # "inflater":Landroid/view/LayoutInflater;
    :cond_2
    nop

    .line 51
    .end local v6    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v7    # "$i$f$forEach":I
    return-void
.end method
