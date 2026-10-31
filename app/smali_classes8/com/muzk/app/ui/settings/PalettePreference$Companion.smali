.class public final Lcom/muzk/app/ui/settings/PalettePreference$Companion;
.super Ljava/lang/Object;
.source "PalettePreference.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/muzk/app/ui/settings/PalettePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0002R\u0014\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/muzk/app/ui/settings/PalettePreference$Companion;",
        "",
        "<init>",
        "()V",
        "c",
        "",
        "hex",
        "",
        "SWATCHES",
        "",
        "Lcom/muzk/app/ui/settings/PalettePreference$Swatch;",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/muzk/app/ui/settings/PalettePreference$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$c(Lcom/muzk/app/ui/settings/PalettePreference$Companion;J)I
    .locals 1
    .param p0, "$this"    # Lcom/muzk/app/ui/settings/PalettePreference$Companion;
    .param p1, "hex"    # J

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/muzk/app/ui/settings/PalettePreference$Companion;->c(J)I

    move-result v0

    return v0
.end method

.method private final c(J)I
    .locals 1
    .param p1, "hex"    # J

    .line 56
    long-to-int v0, p1

    return v0
.end method
