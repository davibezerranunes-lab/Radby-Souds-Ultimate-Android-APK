.class public final Lcom/muzk/app/ui/settings/EqualizerDialog;
.super Ljava/lang/Object;
.source "EqualizerDialog.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEqualizerDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EqualizerDialog.kt\ncom/muzk/app/ui/settings/EqualizerDialog\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,84:1\n1#2:85\n1872#3,3:86\n*S KotlinDebug\n*F\n+ 1 EqualizerDialog.kt\ncom/muzk/app/ui/settings/EqualizerDialog\n*L\n75#1:86,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/muzk/app/ui/settings/EqualizerDialog;",
        "",
        "<init>",
        "()V",
        "show",
        "",
        "context",
        "Landroid/content/Context;",
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
.field public static final INSTANCE:Lcom/muzk/app/ui/settings/EqualizerDialog;


# direct methods
.method public static synthetic $r8$lambda$7h6CJ8hXnfSMp1DeNTDVh2yFhBE(Landroid/media/audiofx/Equalizer;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/muzk/app/ui/settings/EqualizerDialog;->show$lambda$3$lambda$2(Landroid/media/audiofx/Equalizer;Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$BDQ3ip-WHAcsVUr9kUGTd7t8o5M(Landroid/media/audiofx/Equalizer;SLcom/google/android/material/slider/Slider;FZ)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/muzk/app/ui/settings/EqualizerDialog;->show$lambda$8$lambda$7(Landroid/media/audiofx/Equalizer;SLcom/google/android/material/slider/Slider;FZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$It0nShsyrJsnlG76QCXG9cQxXMc(F)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/muzk/app/ui/settings/EqualizerDialog;->show$lambda$8$lambda$6(F)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$YJX2xSDa7Hw5lX2yvm9KkEvQjYw(Ljava/util/List;FFLandroid/media/audiofx/Equalizer;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/muzk/app/ui/settings/EqualizerDialog;->show$lambda$12$lambda$11(Ljava/util/List;FFLandroid/media/audiofx/Equalizer;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tFIDY2Zw1k9yYe6RHg4UHTeOKf8(Landroid/content/Context;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/muzk/app/ui/settings/EqualizerDialog;->show$lambda$9(Landroid/content/Context;Landroid/content/DialogInterface;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/muzk/app/ui/settings/EqualizerDialog;

    invoke-direct {v0}, Lcom/muzk/app/ui/settings/EqualizerDialog;-><init>()V

    sput-object v0, Lcom/muzk/app/ui/settings/EqualizerDialog;->INSTANCE:Lcom/muzk/app/ui/settings/EqualizerDialog;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final show$lambda$12$lambda$11(Ljava/util/List;FFLandroid/media/audiofx/Equalizer;Landroid/view/View;)V
    .locals 11
    .param p0, "$sliders"    # Ljava/util/List;
    .param p1, "$minLevel"    # F
    .param p2, "$maxLevel"    # F
    .param p3, "$eq"    # Landroid/media/audiofx/Equalizer;
    .param p4, "it"    # Landroid/view/View;

    .line 75
    move-object v0, p0

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$forEachIndexed$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 86
    .local v1, "$i$f$forEachIndexed":I
    const/4 v2, 0x0

    .line 87
    .local v2, "index$iv":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .local v4, "item$iv":Ljava/lang/Object;
    add-int/lit8 v5, v2, 0x1

    .end local v2    # "index$iv":I
    .local v5, "index$iv":I
    if-gez v2, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_0
    move-object v6, v4

    check-cast v6, Lcom/google/android/material/slider/Slider;

    .local v2, "i":I
    .local v6, "s":Lcom/google/android/material/slider/Slider;
    const/4 v7, 0x0

    .line 76
    .local v7, "$i$a$-forEachIndexed-EqualizerDialog$show$4$1$1":I
    const/4 v8, 0x0

    invoke-static {v8, p1, p2}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result v8

    .line 77
    .local v8, "zero":F
    invoke-virtual {v6, v8}, Lcom/google/android/material/slider/Slider;->setValue(F)V

    .line 78
    int-to-short v9, v2

    float-to-int v10, v8

    int-to-short v10, v10

    invoke-virtual {p3, v9, v10}, Landroid/media/audiofx/Equalizer;->setBandLevel(SS)V

    .line 79
    nop

    .line 87
    .end local v2    # "i":I
    .end local v6    # "s":Lcom/google/android/material/slider/Slider;
    .end local v7    # "$i$a$-forEachIndexed-EqualizerDialog$show$4$1$1":I
    .end local v8    # "zero":F
    move v2, v5

    .end local v4    # "item$iv":Ljava/lang/Object;
    goto :goto_0

    .line 88
    .end local v5    # "index$iv":I
    .local v2, "index$iv":I
    :cond_1
    nop

    .line 80
    .end local v0    # "$this$forEachIndexed$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$forEachIndexed":I
    .end local v2    # "index$iv":I
    return-void
.end method

.method private static final show$lambda$3$lambda$2(Landroid/media/audiofx/Equalizer;Landroid/widget/CompoundButton;Z)V
    .locals 0
    .param p0, "$eq"    # Landroid/media/audiofx/Equalizer;
    .param p2, "checked"    # Z

    .line 35
    invoke-virtual {p0, p2}, Landroid/media/audiofx/Equalizer;->setEnabled(Z)I

    return-void
.end method

.method private static final show$lambda$8$lambda$6(F)Ljava/lang/String;
    .locals 2
    .param p0, "v"    # F

    .line 57
    const/high16 v0, 0x42c80000    # 100.0f

    div-float v0, p0, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%+.1f dB"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "format(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private static final show$lambda$8$lambda$7(Landroid/media/audiofx/Equalizer;SLcom/google/android/material/slider/Slider;FZ)V
    .locals 1
    .param p0, "$eq"    # Landroid/media/audiofx/Equalizer;
    .param p1, "$b"    # S
    .param p3, "v"    # F
    .param p4, "fromUser"    # Z

    const-string v0, "<unused var>"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    if-eqz p4, :cond_0

    float-to-int p2, p3

    int-to-short p2, p2

    invoke-virtual {p0, p1, p2}, Landroid/media/audiofx/Equalizer;->setBandLevel(SS)V

    :cond_0
    return-void
.end method

.method private static final show$lambda$9(Landroid/content/Context;Landroid/content/DialogInterface;)V
    .locals 1
    .param p0, "$context"    # Landroid/content/Context;
    .param p1, "it"    # Landroid/content/DialogInterface;

    .line 70
    sget-object v0, Lcom/muzk/app/playback/PlaybackService;->Companion:Lcom/muzk/app/playback/PlaybackService$Companion;

    invoke-virtual {v0, p0}, Lcom/muzk/app/playback/PlaybackService$Companion;->saveEqualizer(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final show(Landroid/content/Context;)V
    .locals 21
    .param p1, "context"    # Landroid/content/Context;

    move-object/from16 v0, p1

    const-string v1, "context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    sget-object v1, Lcom/muzk/app/playback/PlaybackService;->Companion:Lcom/muzk/app/playback/PlaybackService$Companion;

    invoke-virtual {v1, v0}, Lcom/muzk/app/playback/PlaybackService$Companion;->obtainEqualizer(Landroid/content/Context;)Landroid/media/audiofx/Equalizer;

    move-result-object v1

    .line 20
    .local v1, "eq":Landroid/media/audiofx/Equalizer;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 21
    sget v3, Lcom/muzk/app/R$string;->eq_unavailable:I

    invoke-static {v0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 22
    return-void

    .line 24
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    .line 25
    .local v3, "dp":F
    invoke-virtual {v1}, Landroid/media/audiofx/Equalizer;->getBandLevelRange()[S

    move-result-object v4

    .line 85
    .local v4, "it":[S
    const/4 v5, 0x0

    .line 25
    .local v5, "$i$a$-let-EqualizerDialog$show$1":I
    aget-short v6, v4, v2

    int-to-float v6, v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    const/4 v7, 0x1

    aget-short v8, v4, v7

    int-to-float v8, v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-static {v6, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    .end local v4    # "it":[S
    .end local v5    # "$i$a$-let-EqualizerDialog$show$1":I
    invoke-virtual {v4}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    move-result v5

    .local v5, "minLevel":F
    invoke-virtual {v4}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    .line 27
    .local v4, "maxLevel":F
    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object v8, v6

    .local v8, "$this$show_u24lambda_u241":Landroid/widget/LinearLayout;
    const/4 v9, 0x0

    .line 28
    .local v9, "$i$a$-apply-EqualizerDialog$show$content$1":I
    invoke-virtual {v8, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 29
    const/16 v10, 0x18

    int-to-float v10, v10

    mul-float v11, v10, v3

    float-to-int v11, v11

    const/16 v12, 0x8

    int-to-float v12, v12

    mul-float/2addr v12, v3

    float-to-int v12, v12

    mul-float/2addr v10, v3

    float-to-int v10, v10

    invoke-virtual {v8, v11, v12, v10, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 30
    nop

    .line 27
    .end local v8    # "$this$show_u24lambda_u241":Landroid/widget/LinearLayout;
    .end local v9    # "$i$a$-apply-EqualizerDialog$show$content$1":I
    nop

    .line 32
    .local v6, "content":Landroid/widget/LinearLayout;
    new-instance v8, Lcom/google/android/material/materialswitch/MaterialSwitch;

    invoke-direct {v8, v0}, Lcom/google/android/material/materialswitch/MaterialSwitch;-><init>(Landroid/content/Context;)V

    move-object v9, v8

    .local v9, "$this$show_u24lambda_u243":Lcom/google/android/material/materialswitch/MaterialSwitch;
    const/4 v10, 0x0

    .line 33
    .local v10, "$i$a$-apply-EqualizerDialog$show$enabledSwitch$1":I
    sget v11, Lcom/muzk/app/R$string;->eq_enabled:I

    invoke-virtual {v0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    check-cast v11, Ljava/lang/CharSequence;

    invoke-virtual {v9, v11}, Lcom/google/android/material/materialswitch/MaterialSwitch;->setText(Ljava/lang/CharSequence;)V

    .line 34
    invoke-virtual {v1}, Landroid/media/audiofx/Equalizer;->getEnabled()Z

    move-result v11

    invoke-virtual {v9, v11}, Lcom/google/android/material/materialswitch/MaterialSwitch;->setChecked(Z)V

    .line 35
    new-instance v11, Lcom/muzk/app/ui/settings/EqualizerDialog$$ExternalSyntheticLambda0;

    invoke-direct {v11, v1}, Lcom/muzk/app/ui/settings/EqualizerDialog$$ExternalSyntheticLambda0;-><init>(Landroid/media/audiofx/Equalizer;)V

    invoke-virtual {v9, v11}, Lcom/google/android/material/materialswitch/MaterialSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 36
    nop

    .line 32
    .end local v9    # "$this$show_u24lambda_u243":Lcom/google/android/material/materialswitch/MaterialSwitch;
    .end local v10    # "$i$a$-apply-EqualizerDialog$show$enabledSwitch$1":I
    nop

    .line 37
    .local v8, "enabledSwitch":Lcom/google/android/material/materialswitch/MaterialSwitch;
    move-object v9, v8

    check-cast v9, Landroid/view/View;

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 39
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    check-cast v9, Ljava/util/List;

    .line 40
    .local v9, "sliders":Ljava/util/List;
    const/4 v10, 0x0

    .local v10, "band":I
    invoke-virtual {v1}, Landroid/media/audiofx/Equalizer;->getNumberOfBands()S

    move-result v11

    :goto_0
    if-ge v10, v11, :cond_2

    .line 41
    int-to-short v12, v10

    .line 42
    .local v12, "b":S
    invoke-virtual {v1, v12}, Landroid/media/audiofx/Equalizer;->getCenterFreq(S)I

    move-result v13

    const/16 v14, 0x3e8

    div-int/2addr v13, v14

    .line 43
    .local v13, "hz":I
    if-lt v13, v14, :cond_1

    int-to-float v14, v13

    const/high16 v15, 0x447a0000    # 1000.0f

    div-float/2addr v14, v15

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    filled-new-array {v14}, [Ljava/lang/Object;

    move-result-object v14

    invoke-static {v14, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v14

    const-string v15, "%.1f kHz"

    invoke-static {v15, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "format(...)"

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " Hz"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 45
    .local v14, "label":Ljava/lang/String;
    :goto_1
    new-instance v15, Landroid/widget/LinearLayout;

    invoke-direct {v15, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v16, v15

    .local v16, "$this$show_u24lambda_u244":Landroid/widget/LinearLayout;
    const/16 v17, 0x0

    .line 46
    .local v17, "$i$a$-apply-EqualizerDialog$show$row$1":I
    move-object/from16 v7, v16

    .end local v16    # "$this$show_u24lambda_u244":Landroid/widget/LinearLayout;
    .local v7, "$this$show_u24lambda_u244":Landroid/widget/LinearLayout;
    invoke-virtual {v7, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 47
    const/16 v2, 0x10

    invoke-virtual {v7, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 48
    nop

    .line 45
    .end local v7    # "$this$show_u24lambda_u244":Landroid/widget/LinearLayout;
    .end local v17    # "$i$a$-apply-EqualizerDialog$show$row$1":I
    move-object v2, v15

    .line 49
    .local v2, "row":Landroid/widget/LinearLayout;
    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object v15, v7

    .local v15, "$this$show_u24lambda_u245":Landroid/widget/TextView;
    const/16 v17, 0x0

    .line 50
    .local v17, "$i$a$-apply-EqualizerDialog$show$2":I
    move-object/from16 v18, v8

    .end local v8    # "enabledSwitch":Lcom/google/android/material/materialswitch/MaterialSwitch;
    .local v18, "enabledSwitch":Lcom/google/android/material/materialswitch/MaterialSwitch;
    move-object v8, v14

    check-cast v8, Ljava/lang/CharSequence;

    invoke-virtual {v15, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    const/16 v8, 0x40

    int-to-float v8, v8

    mul-float/2addr v8, v3

    float-to-int v8, v8

    invoke-virtual {v15, v8}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 52
    nop

    .line 49
    .end local v15    # "$this$show_u24lambda_u245":Landroid/widget/TextView;
    .end local v17    # "$i$a$-apply-EqualizerDialog$show$2":I
    check-cast v7, Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 53
    new-instance v7, Lcom/google/android/material/slider/Slider;

    invoke-direct {v7, v0}, Lcom/google/android/material/slider/Slider;-><init>(Landroid/content/Context;)V

    move-object v8, v7

    .local v8, "$this$show_u24lambda_u248":Lcom/google/android/material/slider/Slider;
    const/4 v15, 0x0

    .line 54
    .local v15, "$i$a$-apply-EqualizerDialog$show$slider$1":I
    invoke-virtual {v8, v5}, Lcom/google/android/material/slider/Slider;->setValueFrom(F)V

    .line 55
    invoke-virtual {v8, v4}, Lcom/google/android/material/slider/Slider;->setValueTo(F)V

    .line 56
    move/from16 v17, v3

    .end local v3    # "dp":F
    .local v17, "dp":F
    invoke-virtual {v1, v12}, Landroid/media/audiofx/Equalizer;->getBandLevel(S)S

    move-result v3

    int-to-float v3, v3

    invoke-static {v3, v5, v4}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result v3

    invoke-virtual {v8, v3}, Lcom/google/android/material/slider/Slider;->setValue(F)V

    .line 57
    new-instance v3, Lcom/muzk/app/ui/settings/EqualizerDialog$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Lcom/muzk/app/ui/settings/EqualizerDialog$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v8, v3}, Lcom/google/android/material/slider/Slider;->setLabelFormatter(Lcom/google/android/material/slider/LabelFormatter;)V

    .line 58
    new-instance v3, Lcom/muzk/app/ui/settings/EqualizerDialog$$ExternalSyntheticLambda2;

    invoke-direct {v3, v1, v12}, Lcom/muzk/app/ui/settings/EqualizerDialog$$ExternalSyntheticLambda2;-><init>(Landroid/media/audiofx/Equalizer;S)V

    check-cast v3, Lcom/google/android/material/slider/BaseOnChangeListener;

    invoke-virtual {v8, v3}, Lcom/google/android/material/slider/Slider;->addOnChangeListener(Lcom/google/android/material/slider/BaseOnChangeListener;)V

    .line 59
    nop

    .line 53
    .end local v8    # "$this$show_u24lambda_u248":Lcom/google/android/material/slider/Slider;
    .end local v15    # "$i$a$-apply-EqualizerDialog$show$slider$1":I
    move-object v3, v7

    .line 60
    .local v3, "slider":Lcom/google/android/material/slider/Slider;
    move-object v7, v3

    check-cast v7, Landroid/view/View;

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v15, -0x2

    move/from16 v19, v11

    const/high16 v11, 0x3f800000    # 1.0f

    move/from16 v20, v12

    const/4 v12, 0x0

    .end local v12    # "b":S
    .local v20, "b":S
    invoke-direct {v8, v12, v15, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    check-cast v8, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v2, v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 61
    move-object v7, v2

    check-cast v7, Landroid/view/View;

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 62
    move-object v7, v9

    check-cast v7, Ljava/util/Collection;

    invoke-interface {v7, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 40
    .end local v2    # "row":Landroid/widget/LinearLayout;
    .end local v3    # "slider":Lcom/google/android/material/slider/Slider;
    .end local v13    # "hz":I
    .end local v14    # "label":Ljava/lang/String;
    .end local v20    # "b":S
    add-int/lit8 v10, v10, 0x1

    move v2, v12

    move/from16 v3, v17

    move-object/from16 v8, v18

    move/from16 v11, v19

    const/4 v7, 0x1

    goto/16 :goto_0

    .end local v17    # "dp":F
    .end local v18    # "enabledSwitch":Lcom/google/android/material/materialswitch/MaterialSwitch;
    .local v3, "dp":F
    .local v8, "enabledSwitch":Lcom/google/android/material/materialswitch/MaterialSwitch;
    :cond_2
    move/from16 v17, v3

    move-object/from16 v18, v8

    .line 65
    .end local v3    # "dp":F
    .end local v8    # "enabledSwitch":Lcom/google/android/material/materialswitch/MaterialSwitch;
    .end local v10    # "band":I
    .restart local v17    # "dp":F
    .restart local v18    # "enabledSwitch":Lcom/google/android/material/materialswitch/MaterialSwitch;
    new-instance v2, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-direct {v2, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    .line 66
    sget v3, Lcom/muzk/app/R$string;->pref_eq_app:I

    invoke-virtual {v2, v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(I)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v2

    .line 67
    move-object v3, v6

    check-cast v3, Landroid/view/View;

    invoke-virtual {v2, v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setView(Landroid/view/View;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v2

    .line 68
    sget v3, Lcom/muzk/app/R$string;->eq_reset:I

    const/4 v7, 0x0

    invoke-virtual {v2, v3, v7}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v2

    .line 69
    sget v3, Lcom/muzk/app/R$string;->ok:I

    invoke-virtual {v2, v3, v7}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v2

    .line 70
    new-instance v3, Lcom/muzk/app/ui/settings/EqualizerDialog$$ExternalSyntheticLambda3;

    invoke-direct {v3, v0}, Lcom/muzk/app/ui/settings/EqualizerDialog$$ExternalSyntheticLambda3;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v2

    .line 71
    invoke-virtual {v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->show()Landroidx/appcompat/app/AlertDialog;

    move-result-object v2

    .line 72
    nop

    .local v2, "dialog":Landroidx/appcompat/app/AlertDialog;
    const/4 v3, 0x0

    .line 74
    .local v3, "$i$a$-also-EqualizerDialog$show$4":I
    const/4 v7, -0x3

    invoke-virtual {v2, v7}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v7

    new-instance v8, Lcom/muzk/app/ui/settings/EqualizerDialog$$ExternalSyntheticLambda4;

    invoke-direct {v8, v9, v5, v4, v1}, Lcom/muzk/app/ui/settings/EqualizerDialog$$ExternalSyntheticLambda4;-><init>(Ljava/util/List;FFLandroid/media/audiofx/Equalizer;)V

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    nop

    .line 72
    .end local v2    # "dialog":Landroidx/appcompat/app/AlertDialog;
    .end local v3    # "$i$a$-also-EqualizerDialog$show$4":I
    nop

    .line 82
    return-void
.end method
