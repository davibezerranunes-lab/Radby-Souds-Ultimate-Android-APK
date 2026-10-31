.class public final Landroidx/media3/exoplayer/upstream/DefaultAllocator;
.super Ljava/lang/Object;
.source "DefaultAllocator.java"

# interfaces
.implements Landroidx/media3/exoplayer/upstream/Allocator;


# static fields
.field private static final AVAILABLE_EXTRA_CAPACITY:I = 0x64


# instance fields
.field private allocatedCount:I

.field private availableAllocations:[Landroidx/media3/exoplayer/upstream/Allocation;

.field private availableCount:I

.field private final individualAllocationSize:I

.field private final initialAllocationBlock:[B

.field private targetBufferSize:I

.field private final trimOnReset:Z


# direct methods
.method public constructor <init>(ZI)V
    .locals 1
    .param p1, "trimOnReset"    # Z
    .param p2, "individualAllocationSize"    # I

    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/media3/exoplayer/upstream/DefaultAllocator;-><init>(ZII)V

    .line 52
    return-void
.end method

.method public constructor <init>(ZII)V
    .locals 5
    .param p1, "trimOnReset"    # Z
    .param p2, "individualAllocationSize"    # I
    .param p3, "initialAllocationCount"    # I

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lez p2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    invoke-static {v2}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    .line 68
    if-ltz p3, :cond_1

    move v0, v1

    :cond_1
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    .line 69
    iput-boolean p1, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->trimOnReset:Z

    .line 70
    iput p2, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->individualAllocationSize:I

    .line 71
    iput p3, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->availableCount:I

    .line 72
    add-int/lit8 v0, p3, 0x64

    new-array v0, v0, [Landroidx/media3/exoplayer/upstream/Allocation;

    iput-object v0, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->availableAllocations:[Landroidx/media3/exoplayer/upstream/Allocation;

    .line 73
    if-lez p3, :cond_3

    .line 74
    mul-int v0, p3, p2

    new-array v0, v0, [B

    iput-object v0, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->initialAllocationBlock:[B

    .line 75
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p3, :cond_2

    .line 76
    mul-int v1, v0, p2

    .line 77
    .local v1, "allocationOffset":I
    iget-object v2, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->availableAllocations:[Landroidx/media3/exoplayer/upstream/Allocation;

    new-instance v3, Landroidx/media3/exoplayer/upstream/Allocation;

    iget-object v4, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->initialAllocationBlock:[B

    invoke-direct {v3, v4, v1}, Landroidx/media3/exoplayer/upstream/Allocation;-><init>([BI)V

    aput-object v3, v2, v0

    .line 75
    .end local v1    # "allocationOffset":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    :cond_2
    goto :goto_2

    .line 80
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->initialAllocationBlock:[B

    .line 82
    :goto_2
    return-void
.end method


# virtual methods
.method public declared-synchronized allocate()Landroidx/media3/exoplayer/upstream/Allocation;
    .locals 4

    monitor-enter p0

    .line 100
    :try_start_0
    iget v0, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->allocatedCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->allocatedCount:I

    .line 102
    iget v0, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->availableCount:I

    if-lez v0, :cond_0

    .line 103
    iget-object v0, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->availableAllocations:[Landroidx/media3/exoplayer/upstream/Allocation;

    iget v1, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->availableCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->availableCount:I

    aget-object v0, v0, v1

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/upstream/Allocation;

    .line 104
    .local v0, "allocation":Landroidx/media3/exoplayer/upstream/Allocation;
    iget-object v1, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->availableAllocations:[Landroidx/media3/exoplayer/upstream/Allocation;

    iget v2, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->availableCount:I

    const/4 v3, 0x0

    aput-object v3, v1, v2

    goto :goto_0

    .line 106
    .end local v0    # "allocation":Landroidx/media3/exoplayer/upstream/Allocation;
    .end local p0    # "this":Landroidx/media3/exoplayer/upstream/DefaultAllocator;
    :cond_0
    new-instance v0, Landroidx/media3/exoplayer/upstream/Allocation;

    iget v1, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->individualAllocationSize:I

    new-array v1, v1, [B

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/media3/exoplayer/upstream/Allocation;-><init>([BI)V

    .line 107
    .restart local v0    # "allocation":Landroidx/media3/exoplayer/upstream/Allocation;
    iget v1, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->allocatedCount:I

    iget-object v2, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->availableAllocations:[Landroidx/media3/exoplayer/upstream/Allocation;

    array-length v2, v2

    if-le v1, v2, :cond_1

    .line 111
    iget-object v1, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->availableAllocations:[Landroidx/media3/exoplayer/upstream/Allocation;

    iget-object v2, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->availableAllocations:[Landroidx/media3/exoplayer/upstream/Allocation;

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroidx/media3/exoplayer/upstream/Allocation;

    iput-object v1, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->availableAllocations:[Landroidx/media3/exoplayer/upstream/Allocation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    :cond_1
    :goto_0
    monitor-exit p0

    return-object v0

    .line 99
    .end local v0    # "allocation":Landroidx/media3/exoplayer/upstream/Allocation;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getIndividualAllocationLength()I
    .locals 1

    .line 185
    iget v0, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->individualAllocationSize:I

    return v0
.end method

.method public declared-synchronized getTotalBytesAllocated()I
    .locals 2

    monitor-enter p0

    .line 180
    :try_start_0
    iget v0, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->allocatedCount:I

    iget v1, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->individualAllocationSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    mul-int/2addr v0, v1

    monitor-exit p0

    return v0

    .line 180
    .end local p0    # "this":Landroidx/media3/exoplayer/upstream/DefaultAllocator;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized release(Landroidx/media3/exoplayer/upstream/Allocation;)V
    .locals 3
    .param p1, "allocation"    # Landroidx/media3/exoplayer/upstream/Allocation;

    monitor-enter p0

    .line 119
    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->availableAllocations:[Landroidx/media3/exoplayer/upstream/Allocation;

    iget v1, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->availableCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->availableCount:I

    aput-object p1, v0, v1

    .line 120
    iget v0, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->allocatedCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->allocatedCount:I

    .line 122
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    monitor-exit p0

    return-void

    .line 118
    .end local p0    # "this":Landroidx/media3/exoplayer/upstream/DefaultAllocator;
    .end local p1    # "allocation":Landroidx/media3/exoplayer/upstream/Allocation;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized release(Landroidx/media3/exoplayer/upstream/Allocator$AllocationNode;)V
    .locals 3
    .param p1, "allocationNode"    # Landroidx/media3/exoplayer/upstream/Allocator$AllocationNode;

    monitor-enter p0

    .line 127
    nop

    :goto_0
    if-eqz p1, :cond_0

    .line 128
    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->availableAllocations:[Landroidx/media3/exoplayer/upstream/Allocation;

    iget v1, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->availableCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->availableCount:I

    invoke-interface {p1}, Landroidx/media3/exoplayer/upstream/Allocator$AllocationNode;->getAllocation()Landroidx/media3/exoplayer/upstream/Allocation;

    move-result-object v2

    aput-object v2, v0, v1

    .line 129
    iget v0, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->allocatedCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->allocatedCount:I

    .line 130
    invoke-interface {p1}, Landroidx/media3/exoplayer/upstream/Allocator$AllocationNode;->next()Landroidx/media3/exoplayer/upstream/Allocator$AllocationNode;

    move-result-object v0

    move-object p1, v0

    goto :goto_0

    .line 133
    .end local p0    # "this":Landroidx/media3/exoplayer/upstream/DefaultAllocator;
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    monitor-exit p0

    return-void

    .line 126
    .end local p1    # "allocationNode":Landroidx/media3/exoplayer/upstream/Allocator$AllocationNode;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized reset()V
    .locals 1

    monitor-enter p0

    .line 85
    :try_start_0
    iget-boolean v0, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->trimOnReset:Z

    if-eqz v0, :cond_0

    .line 86
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->setTargetBufferSize(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    .end local p0    # "this":Landroidx/media3/exoplayer/upstream/DefaultAllocator;
    :cond_0
    monitor-exit p0

    return-void

    .line 84
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized setTargetBufferSize(I)V
    .locals 1
    .param p1, "targetBufferSize"    # I

    monitor-enter p0

    .line 91
    :try_start_0
    iget v0, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->targetBufferSize:I

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 92
    .local v0, "targetBufferSizeReduced":Z
    :goto_0
    iput p1, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->targetBufferSize:I

    .line 93
    if-eqz v0, :cond_1

    .line 94
    invoke-virtual {p0}, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->trim()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    .end local p0    # "this":Landroidx/media3/exoplayer/upstream/DefaultAllocator;
    :cond_1
    monitor-exit p0

    return-void

    .line 90
    .end local v0    # "targetBufferSizeReduced":Z
    .end local p1    # "targetBufferSize":I
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized trim()V
    .locals 8

    monitor-enter p0

    .line 138
    :try_start_0
    iget v0, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->targetBufferSize:I

    iget v1, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->individualAllocationSize:I

    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->ceilDivide(II)I

    move-result v0

    .line 139
    .local v0, "targetAllocationCount":I
    iget v1, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->allocatedCount:I

    sub-int v1, v0, v1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 140
    .local v1, "targetAvailableCount":I
    iget v2, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->availableCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v1, v2, :cond_0

    .line 142
    monitor-exit p0

    return-void

    .line 145
    :cond_0
    :try_start_1
    iget-object v2, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->initialAllocationBlock:[B

    if-eqz v2, :cond_4

    .line 149
    const/4 v2, 0x0

    .line 150
    .local v2, "lowIndex":I
    iget v3, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->availableCount:I

    add-int/lit8 v3, v3, -0x1

    .line 151
    .local v3, "highIndex":I
    :goto_0
    if-gt v2, v3, :cond_3

    .line 152
    iget-object v4, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->availableAllocations:[Landroidx/media3/exoplayer/upstream/Allocation;

    aget-object v4, v4, v2

    invoke-static {v4}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/exoplayer/upstream/Allocation;

    .line 153
    .local v4, "lowAllocation":Landroidx/media3/exoplayer/upstream/Allocation;
    iget-object v5, v4, Landroidx/media3/exoplayer/upstream/Allocation;->data:[B

    iget-object v6, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->initialAllocationBlock:[B

    if-ne v5, v6, :cond_1

    .line 154
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 156
    :cond_1
    iget-object v5, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->availableAllocations:[Landroidx/media3/exoplayer/upstream/Allocation;

    aget-object v5, v5, v3

    invoke-static {v5}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media3/exoplayer/upstream/Allocation;

    .line 157
    .local v5, "highAllocation":Landroidx/media3/exoplayer/upstream/Allocation;
    iget-object v6, v5, Landroidx/media3/exoplayer/upstream/Allocation;->data:[B

    iget-object v7, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->initialAllocationBlock:[B

    if-eq v6, v7, :cond_2

    .line 158
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 160
    :cond_2
    iget-object v6, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->availableAllocations:[Landroidx/media3/exoplayer/upstream/Allocation;

    add-int/lit8 v7, v2, 0x1

    .end local v2    # "lowIndex":I
    .local v7, "lowIndex":I
    aput-object v5, v6, v2

    .line 161
    iget-object v2, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->availableAllocations:[Landroidx/media3/exoplayer/upstream/Allocation;

    add-int/lit8 v6, v3, -0x1

    .end local v3    # "highIndex":I
    .local v6, "highIndex":I
    aput-object v4, v2, v3

    move v3, v6

    move v2, v7

    .line 164
    .end local v4    # "lowAllocation":Landroidx/media3/exoplayer/upstream/Allocation;
    .end local v5    # "highAllocation":Landroidx/media3/exoplayer/upstream/Allocation;
    .end local v6    # "highIndex":I
    .end local v7    # "lowIndex":I
    .restart local v2    # "lowIndex":I
    .restart local v3    # "highIndex":I
    :goto_1
    goto :goto_0

    .line 166
    .end local p0    # "this":Landroidx/media3/exoplayer/upstream/DefaultAllocator;
    :cond_3
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    move v1, v4

    .line 167
    iget v4, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->availableCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-lt v1, v4, :cond_4

    .line 169
    monitor-exit p0

    return-void

    .line 174
    .end local v2    # "lowIndex":I
    .end local v3    # "highIndex":I
    :cond_4
    :try_start_2
    iget-object v2, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->availableAllocations:[Landroidx/media3/exoplayer/upstream/Allocation;

    iget v3, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->availableCount:I

    const/4 v4, 0x0

    invoke-static {v2, v1, v3, v4}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 175
    iput v1, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->availableCount:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 176
    monitor-exit p0

    return-void

    .line 137
    .end local v0    # "targetAllocationCount":I
    .end local v1    # "targetAvailableCount":I
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method
