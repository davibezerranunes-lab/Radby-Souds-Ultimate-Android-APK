.class public final Landroidx/media3/session/SequencedFutureManager$SequencedFuture;
.super Lcom/google/common/util/concurrent/AbstractFuture;
.source "SequencedFutureManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/session/SequencedFutureManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SequencedFuture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/util/concurrent/AbstractFuture<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final resultWhenClosed:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final sequenceNumber:I


# direct methods
.method private constructor <init>(ILjava/lang/Object;)V
    .locals 0
    .param p1, "seq"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .line 157
    .local p0, "this":Landroidx/media3/session/SequencedFutureManager$SequencedFuture;, "Landroidx/media3/session/SequencedFutureManager$SequencedFuture<TT;>;"
    .local p2, "resultWhenClosed":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractFuture;-><init>()V

    .line 158
    iput p1, p0, Landroidx/media3/session/SequencedFutureManager$SequencedFuture;->sequenceNumber:I

    .line 159
    iput-object p2, p0, Landroidx/media3/session/SequencedFutureManager$SequencedFuture;->resultWhenClosed:Ljava/lang/Object;

    .line 160
    return-void
.end method

.method public static create(ILjava/lang/Object;)Landroidx/media3/session/SequencedFutureManager$SequencedFuture;
    .locals 1
    .param p0, "seq"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(ITT;)",
            "Landroidx/media3/session/SequencedFutureManager$SequencedFuture<",
            "TT;>;"
        }
    .end annotation

    .line 182
    .local p1, "resultWhenClosed":Ljava/lang/Object;, "TT;"
    new-instance v0, Landroidx/media3/session/SequencedFutureManager$SequencedFuture;

    invoke-direct {v0, p0, p1}, Landroidx/media3/session/SequencedFutureManager$SequencedFuture;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public getResultWhenClosed()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 176
    .local p0, "this":Landroidx/media3/session/SequencedFutureManager$SequencedFuture;, "Landroidx/media3/session/SequencedFutureManager$SequencedFuture<TT;>;"
    iget-object v0, p0, Landroidx/media3/session/SequencedFutureManager$SequencedFuture;->resultWhenClosed:Ljava/lang/Object;

    return-object v0
.end method

.method public getSequenceNumber()I
    .locals 1

    .line 172
    .local p0, "this":Landroidx/media3/session/SequencedFutureManager$SequencedFuture;, "Landroidx/media3/session/SequencedFutureManager$SequencedFuture<TT;>;"
    iget v0, p0, Landroidx/media3/session/SequencedFutureManager$SequencedFuture;->sequenceNumber:I

    return v0
.end method

.method public set(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 164
    .local p0, "this":Landroidx/media3/session/SequencedFutureManager$SequencedFuture;, "Landroidx/media3/session/SequencedFutureManager$SequencedFuture<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    invoke-super {p0, p1}, Lcom/google/common/util/concurrent/AbstractFuture;->set(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setWithTheValueOfResultWhenClosed()V
    .locals 1

    .line 168
    .local p0, "this":Landroidx/media3/session/SequencedFutureManager$SequencedFuture;, "Landroidx/media3/session/SequencedFutureManager$SequencedFuture<TT;>;"
    iget-object v0, p0, Landroidx/media3/session/SequencedFutureManager$SequencedFuture;->resultWhenClosed:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Landroidx/media3/session/SequencedFutureManager$SequencedFuture;->set(Ljava/lang/Object;)Z

    .line 169
    return-void
.end method
