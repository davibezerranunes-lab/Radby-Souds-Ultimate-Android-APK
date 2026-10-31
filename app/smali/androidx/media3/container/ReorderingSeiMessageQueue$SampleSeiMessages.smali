.class final Landroidx/media3/container/ReorderingSeiMessageQueue$SampleSeiMessages;
.super Ljava/lang/Object;
.source "ReorderingSeiMessageQueue.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/container/ReorderingSeiMessageQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SampleSeiMessages"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Landroidx/media3/container/ReorderingSeiMessageQueue$SampleSeiMessages;",
        ">;"
    }
.end annotation


# instance fields
.field public final nalBuffers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media3/common/util/ParsableByteArray;",
            ">;"
        }
    .end annotation
.end field

.field public presentationTimeUs:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/container/ReorderingSeiMessageQueue$SampleSeiMessages;->presentationTimeUs:J

    .line 195
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/media3/container/ReorderingSeiMessageQueue$SampleSeiMessages;->nalBuffers:Ljava/util/List;

    .line 196
    return-void
.end method


# virtual methods
.method public compareTo(Landroidx/media3/container/ReorderingSeiMessageQueue$SampleSeiMessages;)I
    .locals 4
    .param p1, "other"    # Landroidx/media3/container/ReorderingSeiMessageQueue$SampleSeiMessages;

    .line 207
    iget-wide v0, p0, Landroidx/media3/container/ReorderingSeiMessageQueue$SampleSeiMessages;->presentationTimeUs:J

    iget-wide v2, p1, Landroidx/media3/container/ReorderingSeiMessageQueue$SampleSeiMessages;->presentationTimeUs:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 188
    check-cast p1, Landroidx/media3/container/ReorderingSeiMessageQueue$SampleSeiMessages;

    invoke-virtual {p0, p1}, Landroidx/media3/container/ReorderingSeiMessageQueue$SampleSeiMessages;->compareTo(Landroidx/media3/container/ReorderingSeiMessageQueue$SampleSeiMessages;)I

    move-result p1

    return p1
.end method

.method public init(JLandroidx/media3/common/util/ParsableByteArray;)V
    .locals 2
    .param p1, "presentationTimeUs"    # J
    .param p3, "nalBuffer"    # Landroidx/media3/common/util/ParsableByteArray;

    .line 199
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    .line 200
    iget-object v0, p0, Landroidx/media3/container/ReorderingSeiMessageQueue$SampleSeiMessages;->nalBuffers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 201
    iput-wide p1, p0, Landroidx/media3/container/ReorderingSeiMessageQueue$SampleSeiMessages;->presentationTimeUs:J

    .line 202
    iget-object v0, p0, Landroidx/media3/container/ReorderingSeiMessageQueue$SampleSeiMessages;->nalBuffers:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    return-void
.end method
