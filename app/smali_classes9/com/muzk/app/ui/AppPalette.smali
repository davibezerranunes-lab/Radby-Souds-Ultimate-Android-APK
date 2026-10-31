.class public final Lcom/muzk/app/ui/AppPalette;
.super Ljava/lang/Object;
.source "Palette.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0007\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\tJ\u0015\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\u000cR\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/muzk/app/ui/AppPalette;",
        "",
        "<init>",
        "()V",
        "PREF",
        "",
        "WALLPAPER",
        "current",
        "context",
        "Landroid/content/Context;",
        "overlay",
        "",
        "(Landroid/content/Context;)Ljava/lang/Integer;",
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
.field public static final INSTANCE:Lcom/muzk/app/ui/AppPalette;

.field public static final PREF:Ljava/lang/String; = "palette"

.field public static final WALLPAPER:Ljava/lang/String; = "wallpaper"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/muzk/app/ui/AppPalette;

    invoke-direct {v0}, Lcom/muzk/app/ui/AppPalette;-><init>()V

    sput-object v0, Lcom/muzk/app/ui/AppPalette;->INSTANCE:Lcom/muzk/app/ui/AppPalette;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final current(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-static {p1}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "palette"

    const-string v2, "muzk"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v0

    :goto_0
    return-object v2
.end method

.method public final overlay(Landroid/content/Context;)Ljava/lang/Integer;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-virtual {p0, p1}, Lcom/muzk/app/ui/AppPalette;->current(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    goto :goto_1

    :sswitch_0
    const-string v1, "wallpaper"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 23
    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    .line 17
    :sswitch_1
    const-string v1, "green"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 19
    :cond_2
    sget v0, Lcom/muzk/app/R$style;->ThemeOverlay_Muzk_Green:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_2

    .line 17
    :sswitch_2
    const-string v1, "pink"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    .line 20
    :cond_3
    sget v0, Lcom/muzk/app/R$style;->ThemeOverlay_Muzk_Pink:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_2

    .line 17
    :sswitch_3
    const-string v1, "blue"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    .line 22
    :cond_4
    sget v0, Lcom/muzk/app/R$style;->ThemeOverlay_Muzk_Blue:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_2

    .line 17
    :sswitch_4
    const-string v1, "purple"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18
    sget v0, Lcom/muzk/app/R$style;->ThemeOverlay_Muzk_Purple:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_2

    .line 17
    :sswitch_5
    const-string v1, "orange"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    .line 21
    :cond_5
    sget v0, Lcom/muzk/app/R$style;->ThemeOverlay_Muzk_Orange:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_2

    .line 24
    :goto_1
    sget v0, Lcom/muzk/app/R$style;->ThemeOverlay_Muzk_Brand:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 25
    :goto_2
    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x3c21d9d2 -> :sswitch_5
        -0x3a3af844 -> :sswitch_4
        0x2e305a -> :sswitch_3
        0x348176 -> :sswitch_2
        0x5e0cf03 -> :sswitch_1
        0x57e60e02 -> :sswitch_0
    .end sparse-switch
.end method
