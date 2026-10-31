.class public final Landroidx/media3/datasource/PriorityDataSource;
.super Ljava/lang/Object;
.source "PriorityDataSource.java"

# interfaces
.implements Landroidx/media3/datasource/DataSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/datasource/PriorityDataSource$Factory;
    }
.end annotation


# instance fields
.field private final priority:I

.field private final priorityTaskManager:Landroidx/media3/common/PriorityTaskManager;

.field private final upstream:Landroidx/media3/datasource/DataSource;


# direct methods
.method public constructor <init>(Landroidx/media3/datasource/DataSource;Landroidx/media3/common/PriorityTaskManager;I)V
    .locals 1
    .param p1, "upstream"    # Landroidx/media3/datasource/DataSource;
    .param p2, "priorityTaskManager"    # Landroidx/media3/common/PriorityTaskManager;
    .param p3, "priority"    # I

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/datasource/DataSource;

    iput-object v0, p0, Landroidx/media3/datasource/PriorityDataSource;->upstream:Landroidx/media3/datasource/DataSource;

    .line 89
    invoke-static {p2}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/PriorityTaskManager;

    iput-object v0, p0, Landroidx/media3/datasource/PriorityDataSource;->priorityTaskManager:Landroidx/media3/common/PriorityTaskManager;

    .line 90
    iput p3, p0, Landroidx/media3/datasource/PriorityDataSource;->priority:I

    .line 91
    return-void
.end method


# virtual methods
.method public addTransferListener(Landroidx/media3/datasource/TransferListener;)V
    .locals 1
    .param p1, "transferListener"    # Landroidx/media3/datasource/TransferListener;

    .line 95
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    iget-object v0, p0, Landroidx/media3/datasource/PriorityDataSource;->upstream:Landroidx/media3/datasource/DataSource;

    invoke-interface {v0, p1}, Landroidx/media3/datasource/DataSource;->addTransferListener(Landroidx/media3/datasource/TransferListener;)V

    .line 97
    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 124
    iget-object v0, p0, Landroidx/media3/datasource/PriorityDataSource;->upstream:Landroidx/media3/datasource/DataSource;

    invoke-interface {v0}, Landroidx/media3/datasource/DataSource;->close()V

    .line 125
    return-void
.end method

.method public getResponseHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 119
    iget-object v0, p0, Landroidx/media3/datasource/PriorityDataSource;->upstream:Landroidx/media3/datasource/DataSource;

    invoke-interface {v0}, Landroidx/media3/datasource/DataSource;->getResponseHeaders()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .line 114
    iget-object v0, p0, Landroidx/media3/datasource/PriorityDataSource;->upstream:Landroidx/media3/datasource/DataSource;

    invoke-interface {v0}, Landroidx/media3/datasource/DataSource;->getUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public open(Landroidx/media3/datasource/DataSpec;)J
    .locals 2
    .param p1, "dataSpec"    # Landroidx/media3/datasource/DataSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 101
    iget-object v0, p0, Landroidx/media3/datasource/PriorityDataSource;->priorityTaskManager:Landroidx/media3/common/PriorityTaskManager;

    iget v1, p0, Landroidx/media3/datasource/PriorityDataSource;->priority:I

    invoke-virtual {v0, v1}, Landroidx/media3/common/PriorityTaskManager;->proceedOrThrow(I)V

    .line 102
    iget-object v0, p0, Landroidx/media3/datasource/PriorityDataSource;->upstream:Landroidx/media3/datasource/DataSource;

    invoke-interface {v0, p1}, Landroidx/media3/datasource/DataSource;->open(Landroidx/media3/datasource/DataSpec;)J

    move-result-wide v0

    return-wide v0
.end method

.method public read([BII)I
    .locals 2
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 107
    iget-object v0, p0, Landroidx/media3/datasource/PriorityDataSource;->priorityTaskManager:Landroidx/media3/common/PriorityTaskManager;

    iget v1, p0, Landroidx/media3/datasource/PriorityDataSource;->priority:I

    invoke-virtual {v0, v1}, Landroidx/media3/common/PriorityTaskManager;->proceedOrThrow(I)V

    .line 108
    iget-object v0, p0, Landroidx/media3/datasource/PriorityDataSource;->upstream:Landroidx/media3/datasource/DataSource;

    invoke-interface {v0, p1, p2, p3}, Landroidx/media3/datasource/DataSource;->read([BII)I

    move-result v0

    return v0
.end method
