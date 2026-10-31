.class public final Lcom/muzk/app/ui/CoverColors;
.super Ljava/lang/Object;
.source "CoverColors.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0007\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0017\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\u0008J\u0016\u0010\t\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/muzk/app/ui/CoverColors;",
        "",
        "<init>",
        "()V",
        "extract",
        "",
        "drawable",
        "Landroid/graphics/drawable/Drawable;",
        "(Landroid/graphics/drawable/Drawable;)Ljava/lang/Integer;",
        "withAlpha",
        "color",
        "alpha",
        "",
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
.field public static final INSTANCE:Lcom/muzk/app/ui/CoverColors;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/muzk/app/ui/CoverColors;

    invoke-direct {v0}, Lcom/muzk/app/ui/CoverColors;-><init>()V

    sput-object v0, Lcom/muzk/app/ui/CoverColors;->INSTANCE:Lcom/muzk/app/ui/CoverColors;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final extract(Landroid/graphics/drawable/Drawable;)Ljava/lang/Integer;
    .locals 8
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 13
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 14
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    invoke-static {v0}, Landroidx/palette/graphics/Palette;->from(Landroid/graphics/Bitmap;)Landroidx/palette/graphics/Palette$Builder;

    move-result-object v2

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroidx/palette/graphics/Palette$Builder;->maximumColorCount(I)Landroidx/palette/graphics/Palette$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/palette/graphics/Palette$Builder;->generate()Landroidx/palette/graphics/Palette;

    move-result-object v2

    const-string v3, "generate(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .local v2, "palette":Landroidx/palette/graphics/Palette;
    invoke-virtual {v2}, Landroidx/palette/graphics/Palette;->getVibrantSwatch()Landroidx/palette/graphics/Palette$Swatch;

    move-result-object v3

    if-nez v3, :cond_2

    invoke-virtual {v2}, Landroidx/palette/graphics/Palette;->getDominantSwatch()Landroidx/palette/graphics/Palette$Swatch;

    move-result-object v3

    if-nez v3, :cond_2

    invoke-virtual {v2}, Landroidx/palette/graphics/Palette;->getMutedSwatch()Landroidx/palette/graphics/Palette$Swatch;

    move-result-object v3

    if-nez v3, :cond_2

    return-object v1

    :cond_2
    move-object v1, v3

    .line 16
    .local v1, "swatch":Landroidx/palette/graphics/Palette$Swatch;
    const/4 v3, 0x3

    new-array v3, v3, [F

    .line 17
    .local v3, "hsl":[F
    invoke-virtual {v1}, Landroidx/palette/graphics/Palette$Swatch;->getRgb()I

    move-result v4

    invoke-static {v4, v3}, Landroidx/core/graphics/ColorUtils;->colorToHSL(I[F)V

    .line 18
    const/4 v4, 0x2

    aget v5, v3, v4

    const v6, 0x3e3851ec    # 0.18f

    const v7, 0x3ea3d70a    # 0.32f

    invoke-static {v5, v6, v7}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result v5

    aput v5, v3, v4

    .line 19
    invoke-static {v3}, Landroidx/core/graphics/ColorUtils;->HSLToColor([F)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    return-object v4

    .line 13
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "swatch":Landroidx/palette/graphics/Palette$Swatch;
    .end local v2    # "palette":Landroidx/palette/graphics/Palette;
    .end local v3    # "hsl":[F
    :cond_3
    :goto_1
    return-object v1
.end method

.method public final withAlpha(IF)I
    .locals 4
    .param p1, "color"    # I
    .param p2, "alpha"    # F

    .line 23
    const/16 v0, 0xff

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0
.end method
