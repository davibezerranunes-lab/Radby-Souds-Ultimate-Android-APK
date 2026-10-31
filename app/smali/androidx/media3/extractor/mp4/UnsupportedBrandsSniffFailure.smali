.class public final Landroidx/media3/extractor/mp4/UnsupportedBrandsSniffFailure;
.super Ljava/lang/Object;
.source "UnsupportedBrandsSniffFailure.java"

# interfaces
.implements Landroidx/media3/extractor/SniffFailure;


# instance fields
.field public final compatibleBrands:Lcom/google/common/primitives/ImmutableIntArray;

.field public final majorBrand:I


# direct methods
.method public constructor <init>(I[I)V
    .locals 1
    .param p1, "majorBrand"    # I
    .param p2, "compatibleBrands"    # [I

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput p1, p0, Landroidx/media3/extractor/mp4/UnsupportedBrandsSniffFailure;->majorBrand:I

    .line 38
    nop

    .line 39
    if-eqz p2, :cond_0

    .line 40
    invoke-static {p2}, Lcom/google/common/primitives/ImmutableIntArray;->copyOf([I)Lcom/google/common/primitives/ImmutableIntArray;

    move-result-object v0

    goto :goto_0

    .line 41
    :cond_0
    invoke-static {}, Lcom/google/common/primitives/ImmutableIntArray;->of()Lcom/google/common/primitives/ImmutableIntArray;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Landroidx/media3/extractor/mp4/UnsupportedBrandsSniffFailure;->compatibleBrands:Lcom/google/common/primitives/ImmutableIntArray;

    .line 42
    return-void
.end method
