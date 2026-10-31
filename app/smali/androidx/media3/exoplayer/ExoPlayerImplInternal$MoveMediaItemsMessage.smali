.class Landroidx/media3/exoplayer/ExoPlayerImplInternal$MoveMediaItemsMessage;
.super Ljava/lang/Object;
.source "ExoPlayerImplInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/ExoPlayerImplInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MoveMediaItemsMessage"
.end annotation


# instance fields
.field public final fromIndex:I

.field public final newFromIndex:I

.field public final shuffleOrder:Landroidx/media3/exoplayer/source/ShuffleOrder;

.field public final toIndex:I


# direct methods
.method public constructor <init>(IIILandroidx/media3/exoplayer/source/ShuffleOrder;)V
    .locals 0
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "newFromIndex"    # I
    .param p4, "shuffleOrder"    # Landroidx/media3/exoplayer/source/ShuffleOrder;

    .line 3550
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3551
    iput p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$MoveMediaItemsMessage;->fromIndex:I

    .line 3552
    iput p2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$MoveMediaItemsMessage;->toIndex:I

    .line 3553
    iput p3, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$MoveMediaItemsMessage;->newFromIndex:I

    .line 3554
    iput-object p4, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$MoveMediaItemsMessage;->shuffleOrder:Landroidx/media3/exoplayer/source/ShuffleOrder;

    .line 3555
    return-void
.end method
