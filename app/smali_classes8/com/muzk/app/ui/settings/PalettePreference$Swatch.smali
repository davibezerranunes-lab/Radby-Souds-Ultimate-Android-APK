.class final Lcom/muzk/app/ui/settings/PalettePreference$Swatch;
.super Ljava/lang/Object;
.source "PalettePreference.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/muzk/app/ui/settings/PalettePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Swatch"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0015\n\u0002\u0008\u0008\u0008\u0002\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\nR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/muzk/app/ui/settings/PalettePreference$Swatch;",
        "",
        "id",
        "",
        "name",
        "colors",
        "",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;[I)V",
        "getId",
        "()Ljava/lang/String;",
        "getName",
        "getColors",
        "()[I",
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


# instance fields
.field private final colors:[I

.field private final id:Ljava/lang/String;

.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[I)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "colors"    # [I

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "colors"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/muzk/app/ui/settings/PalettePreference$Swatch;->id:Ljava/lang/String;

    iput-object p2, p0, Lcom/muzk/app/ui/settings/PalettePreference$Swatch;->name:Ljava/lang/String;

    iput-object p3, p0, Lcom/muzk/app/ui/settings/PalettePreference$Swatch;->colors:[I

    return-void
.end method


# virtual methods
.method public final getColors()[I
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/muzk/app/ui/settings/PalettePreference$Swatch;->colors:[I

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/muzk/app/ui/settings/PalettePreference$Swatch;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/muzk/app/ui/settings/PalettePreference$Swatch;->name:Ljava/lang/String;

    return-object v0
.end method
