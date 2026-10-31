.class public final Landroidx/media3/extractor/ts/NalUnitTargetBuffer;
.super Ljava/lang/Object;
.source "NalUnitTargetBuffer.java"


# instance fields
.field private isCompleted:Z

.field private isFilling:Z

.field public nalData:[B

.field public nalLength:I

.field private final targetType:I


# direct methods
.method public constructor <init>(II)V
    .locals 3
    .param p1, "targetType"    # I
    .param p2, "initialCapacity"    # I

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput p1, p0, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->targetType:I

    .line 47
    add-int/lit8 v0, p2, 0x3

    new-array v0, v0, [B

    iput-object v0, p0, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    .line 48
    iget-object v0, p0, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    const/4 v1, 0x2

    const/4 v2, 0x1

    aput-byte v2, v0, v1

    .line 49
    return-void
.end method


# virtual methods
.method public appendToNalUnit([BII)V
    .locals 3
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "limit"    # I

    .line 85
    iget-boolean v0, p0, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->isFilling:Z

    if-nez v0, :cond_0

    .line 86
    return-void

    .line 88
    :cond_0
    sub-int v0, p3, p2

    .line 89
    .local v0, "readLength":I
    iget-object v1, p0, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    array-length v1, v1

    iget v2, p0, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    add-int/2addr v2, v0

    if-ge v1, v2, :cond_1

    .line 90
    iget-object v1, p0, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    iget v2, p0, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iput-object v1, p0, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    .line 92
    :cond_1
    iget-object v1, p0, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    iget v2, p0, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 93
    iget v1, p0, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    add-int/2addr v1, v0

    iput v1, p0, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    .line 94
    return-void
.end method

.method public endNalUnit(I)Z
    .locals 2
    .param p1, "discardPadding"    # I

    .line 104
    iget-boolean v0, p0, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->isFilling:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 105
    return v1

    .line 107
    :cond_0
    iget v0, p0, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    sub-int/2addr v0, p1

    iput v0, p0, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    .line 108
    iput-boolean v1, p0, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->isFilling:Z

    .line 109
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->isCompleted:Z

    .line 110
    return v0
.end method

.method public isCompleted()Z
    .locals 1

    .line 59
    iget-boolean v0, p0, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->isCompleted:Z

    return v0
.end method

.method public reset()V
    .locals 1

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->isFilling:Z

    .line 54
    iput-boolean v0, p0, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->isCompleted:Z

    .line 55
    return-void
.end method

.method public startNalUnit(I)V
    .locals 3
    .param p1, "type"    # I

    .line 68
    iget-boolean v0, p0, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->isFilling:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 69
    iget v0, p0, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->targetType:I

    const/4 v2, 0x0

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->isFilling:Z

    .line 70
    iget-boolean v0, p0, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->isFilling:Z

    if-eqz v0, :cond_1

    .line 72
    const/4 v0, 0x3

    iput v0, p0, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    .line 73
    iput-boolean v2, p0, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->isCompleted:Z

    .line 75
    :cond_1
    return-void
.end method
