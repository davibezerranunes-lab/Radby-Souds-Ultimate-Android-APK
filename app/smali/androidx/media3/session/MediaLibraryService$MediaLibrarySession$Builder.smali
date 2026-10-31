.class public final Landroidx/media3/session/MediaLibraryService$MediaLibrarySession$Builder;
.super Landroidx/media3/session/MediaSession$BuilderBase;
.source "MediaLibraryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/session/MediaLibraryService$MediaLibrarySession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/media3/session/MediaSession$BuilderBase<",
        "Landroidx/media3/session/MediaLibraryService$MediaLibrarySession;",
        "Landroidx/media3/session/MediaLibraryService$MediaLibrarySession$Builder;",
        "Landroidx/media3/session/MediaLibraryService$MediaLibrarySession$Callback;",
        ">;"
    }
.end annotation


# instance fields
.field private libraryErrorReplicationMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/media3/common/Player;Landroidx/media3/session/MediaLibraryService$MediaLibrarySession$Callback;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "player"    # Landroidx/media3/common/Player;
    .param p3, "callback"    # Landroidx/media3/session/MediaLibraryService$MediaLibrarySession$Callback;

    .line 461
    invoke-direct {p0, p1, p2, p3}, Landroidx/media3/session/MediaSession$BuilderBase;-><init>(Landroid/content/Context;Landroidx/media3/common/Player;Landroidx/media3/session/MediaSession$Callback;)V

    .line 462
    const/4 v0, 0x1

    iput v0, p0, Landroidx/media3/session/MediaLibraryService$MediaLibrarySession$Builder;->libraryErrorReplicationMode:I

    .line 463
    return-void
.end method

.method public constructor <init>(Landroidx/media3/session/MediaLibraryService;Landroidx/media3/common/Player;Landroidx/media3/session/MediaLibraryService$MediaLibrarySession$Callback;)V
    .locals 0
    .param p1, "service"    # Landroidx/media3/session/MediaLibraryService;
    .param p2, "player"    # Landroidx/media3/common/Player;
    .param p3, "callback"    # Landroidx/media3/session/MediaLibraryService$MediaLibrarySession$Callback;

    .line 448
    invoke-direct {p0, p1, p2, p3}, Landroidx/media3/session/MediaLibraryService$MediaLibrarySession$Builder;-><init>(Landroid/content/Context;Landroidx/media3/common/Player;Landroidx/media3/session/MediaLibraryService$MediaLibrarySession$Callback;)V

    .line 449
    return-void
.end method


# virtual methods
.method public build()Landroidx/media3/session/MediaLibraryService$MediaLibrarySession;
    .locals 19

    .line 689
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/media3/session/MediaLibraryService$MediaLibrarySession$Builder;->bitmapLoader:Landroidx/media3/common/util/BitmapLoader;

    if-nez v1, :cond_0

    .line 690
    new-instance v1, Landroidx/media3/session/CacheBitmapLoader;

    new-instance v2, Landroidx/media3/datasource/DataSourceBitmapLoader;

    iget-object v3, v0, Landroidx/media3/session/MediaLibraryService$MediaLibrarySession$Builder;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroidx/media3/datasource/DataSourceBitmapLoader;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v2}, Landroidx/media3/session/CacheBitmapLoader;-><init>(Landroidx/media3/common/util/BitmapLoader;)V

    iput-object v1, v0, Landroidx/media3/session/MediaLibraryService$MediaLibrarySession$Builder;->bitmapLoader:Landroidx/media3/common/util/BitmapLoader;

    .line 692
    :cond_0
    new-instance v1, Landroidx/media3/session/MediaLibraryService$MediaLibrarySession;

    iget-object v5, v0, Landroidx/media3/session/MediaLibraryService$MediaLibrarySession$Builder;->context:Landroid/content/Context;

    iget-object v6, v0, Landroidx/media3/session/MediaLibraryService$MediaLibrarySession$Builder;->id:Ljava/lang/String;

    iget-object v7, v0, Landroidx/media3/session/MediaLibraryService$MediaLibrarySession$Builder;->player:Landroidx/media3/common/Player;

    iget-object v8, v0, Landroidx/media3/session/MediaLibraryService$MediaLibrarySession$Builder;->sessionActivity:Landroid/app/PendingIntent;

    iget-object v9, v0, Landroidx/media3/session/MediaLibraryService$MediaLibrarySession$Builder;->customLayout:Lcom/google/common/collect/ImmutableList;

    iget-object v10, v0, Landroidx/media3/session/MediaLibraryService$MediaLibrarySession$Builder;->mediaButtonPreferences:Lcom/google/common/collect/ImmutableList;

    iget-object v11, v0, Landroidx/media3/session/MediaLibraryService$MediaLibrarySession$Builder;->commandButtonsForMediaItems:Lcom/google/common/collect/ImmutableList;

    iget-object v12, v0, Landroidx/media3/session/MediaLibraryService$MediaLibrarySession$Builder;->callback:Landroidx/media3/session/MediaSession$Callback;

    iget-object v13, v0, Landroidx/media3/session/MediaLibraryService$MediaLibrarySession$Builder;->tokenExtras:Landroid/os/Bundle;

    iget-object v14, v0, Landroidx/media3/session/MediaLibraryService$MediaLibrarySession$Builder;->sessionExtras:Landroid/os/Bundle;

    iget-object v2, v0, Landroidx/media3/session/MediaLibraryService$MediaLibrarySession$Builder;->bitmapLoader:Landroidx/media3/common/util/BitmapLoader;

    .line 703
    invoke-static {v2}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroidx/media3/common/util/BitmapLoader;

    iget-boolean v2, v0, Landroidx/media3/session/MediaLibraryService$MediaLibrarySession$Builder;->playIfSuppressed:Z

    iget-boolean v3, v0, Landroidx/media3/session/MediaLibraryService$MediaLibrarySession$Builder;->isPeriodicPositionUpdateEnabled:Z

    iget v4, v0, Landroidx/media3/session/MediaLibraryService$MediaLibrarySession$Builder;->libraryErrorReplicationMode:I

    move/from16 v18, v4

    move-object v4, v1

    move/from16 v16, v2

    move/from16 v17, v3

    invoke-direct/range {v4 .. v18}, Landroidx/media3/session/MediaLibraryService$MediaLibrarySession;-><init>(Landroid/content/Context;Ljava/lang/String;Landroidx/media3/common/Player;Landroid/app/PendingIntent;Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;Landroidx/media3/session/MediaSession$Callback;Landroid/os/Bundle;Landroid/os/Bundle;Landroidx/media3/common/util/BitmapLoader;ZZI)V

    .line 692
    return-object v1
.end method

.method public bridge synthetic build()Landroidx/media3/session/MediaSession;
    .locals 1

    .line 430
    invoke-virtual {p0}, Landroidx/media3/session/MediaLibraryService$MediaLibrarySession$Builder;->build()Landroidx/media3/session/MediaLibraryService$MediaLibrarySession;

    move-result-object v0

    return-object v0
.end method

.method public setBitmapLoader(Landroidx/media3/common/util/BitmapLoader;)Landroidx/media3/session/MediaLibraryService$MediaLibrarySession$Builder;
    .locals 1
    .param p1, "bitmapLoader"    # Landroidx/media3/common/util/BitmapLoader;

    .line 540
    invoke-super {p0, p1}, Landroidx/media3/session/MediaSession$BuilderBase;->setBitmapLoader(Landroidx/media3/common/util/BitmapLoader;)Landroidx/media3/session/MediaSession$BuilderBase;

    move-result-object v0

    check-cast v0, Landroidx/media3/session/MediaLibraryService$MediaLibrarySession$Builder;

    return-object v0
.end method

.method public bridge synthetic setBitmapLoader(Landroidx/media3/common/util/BitmapLoader;)Landroidx/media3/session/MediaSession$BuilderBase;
    .locals 0

    .line 430
    invoke-virtual {p0, p1}, Landroidx/media3/session/MediaLibraryService$MediaLibrarySession$Builder;->setBitmapLoader(Landroidx/media3/common/util/BitmapLoader;)Landroidx/media3/session/MediaLibraryService$MediaLibrarySession$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setCommandButtonsForMediaItems(Ljava/util/List;)Landroidx/media3/session/MediaLibraryService$MediaLibrarySession$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/session/CommandButton;",
            ">;)",
            "Landroidx/media3/session/MediaLibraryService$MediaLibrarySession$Builder;"
        }
    .end annotation

    .line 677
    .local p1, "commandButtons":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/session/CommandButton;>;"
    invoke-super {p0, p1}, Landroidx/media3/session/MediaSession$BuilderBase;->setCommandButtonsForMediaItems(Ljava/util/List;)Landroidx/media3/session/MediaSession$BuilderBase;

    move-result-object v0

    check-cast v0, Landroidx/media3/session/MediaLibraryService$MediaLibrarySession$Builder;

    return-object v0
.end method

.method public bridge synthetic setCommandButtonsForMediaItems(Ljava/util/List;)Landroidx/media3/session/MediaSession$BuilderBase;
    .locals 0

    .line 430
    invoke-virtual {p0, p1}, Landroidx/media3/session/MediaLibraryService$MediaLibrarySession$Builder;->setCommandButtonsForMediaItems(Ljava/util/List;)Landroidx/media3/session/MediaLibraryService$MediaLibrarySession$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setCustomLayout(Ljava/util/List;)Landroidx/media3/session/MediaLibraryService$MediaLibrarySession$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/session/CommandButton;",
            ">;)",
            "Landroidx/media3/session/MediaLibraryService$MediaLibrarySession$Builder;"
        }
    .end annotation

    .line 574
    .local p1, "customLayout":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/session/CommandButton;>;"
    invoke-super {p0, p1}, Landroidx/media3/session/MediaSession$BuilderBase;->setCustomLayout(Ljava/util/List;)Landroidx/media3/session/MediaSession$BuilderBase;

    move-result-object v0

    check-cast v0, Landroidx/media3/session/MediaLibraryService$MediaLibrarySession$Builder;

    return-object v0
.end method

.method public bridge synthetic setCustomLayout(Ljava/util/List;)Landroidx/media3/session/MediaSession$BuilderBase;
    .locals 0

    .line 430
    invoke-virtual {p0, p1}, Landroidx/media3/session/MediaLibraryService$MediaLibrarySession$Builder;->setCustomLayout(Ljava/util/List;)Landroidx/media3/session/MediaLibraryService$MediaLibrarySession$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setExtras(Landroid/os/Bundle;)Landroidx/media3/session/MediaLibraryService$MediaLibrarySession$Builder;
    .locals 1
    .param p1, "tokenExtras"    # Landroid/os/Bundle;

    .line 503
    invoke-super {p0, p1}, Landroidx/media3/session/MediaSession$BuilderBase;->setExtras(Landroid/os/Bundle;)Landroidx/media3/session/MediaSession$BuilderBase;

    move-result-object v0

    check-cast v0, Landroidx/media3/session/MediaLibraryService$MediaLibrarySession$Builder;

    return-object v0
.end method

.method public bridge synthetic setExtras(Landroid/os/Bundle;)Landroidx/media3/session/MediaSession$BuilderBase;
    .locals 0

    .line 430
    invoke-virtual {p0, p1}, Landroidx/media3/session/MediaLibraryService$MediaLibrarySession$Builder;->setExtras(Landroid/os/Bundle;)Landroidx/media3/session/MediaLibraryService$MediaLibrarySession$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setId(Ljava/lang/String;)Landroidx/media3/session/MediaLibraryService$MediaLibrarySession$Builder;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .line 488
    invoke-super {p0, p1}, Landroidx/media3/session/MediaSession$BuilderBase;->setId(Ljava/lang/String;)Landroidx/media3/session/MediaSession$BuilderBase;

    move-result-object v0

    check-cast v0, Landroidx/media3/session/MediaLibraryService$MediaLibrarySession$Builder;

    return-object v0
.end method

.method public bridge synthetic setId(Ljava/lang/String;)Landroidx/media3/session/MediaSession$BuilderBase;
    .locals 0

    .line 430
    invoke-virtual {p0, p1}, Landroidx/media3/session/MediaLibraryService$MediaLibrarySession$Builder;->setId(Ljava/lang/String;)Landroidx/media3/session/MediaLibraryService$MediaLibrarySession$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setLibraryErrorReplicationMode(I)Landroidx/media3/session/MediaLibraryService$MediaLibrarySession$Builder;
    .locals 0
    .param p1, "libraryErrorReplicationMode"    # I

    .line 664
    iput p1, p0, Landroidx/media3/session/MediaLibraryService$MediaLibrarySession$Builder;->libraryErrorReplicationMode:I

    .line 665
    return-object p0
.end method

.method public setMediaButtonPreferences(Ljava/util/List;)Landroidx/media3/session/MediaLibraryService$MediaLibrarySession$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/session/CommandButton;",
            ">;)",
            "Landroidx/media3/session/MediaLibraryService$MediaLibrarySession$Builder;"
        }
    .end annotation

    .line 604
    .local p1, "mediaButtonPreferences":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/session/CommandButton;>;"
    invoke-super {p0, p1}, Landroidx/media3/session/MediaSession$BuilderBase;->setMediaButtonPreferences(Ljava/util/List;)Landroidx/media3/session/MediaSession$BuilderBase;

    move-result-object v0

    check-cast v0, Landroidx/media3/session/MediaLibraryService$MediaLibrarySession$Builder;

    return-object v0
.end method

.method public bridge synthetic setMediaButtonPreferences(Ljava/util/List;)Landroidx/media3/session/MediaSession$BuilderBase;
    .locals 0

    .line 430
    invoke-virtual {p0, p1}, Landroidx/media3/session/MediaLibraryService$MediaLibrarySession$Builder;->setMediaButtonPreferences(Ljava/util/List;)Landroidx/media3/session/MediaLibraryService$MediaLibrarySession$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setPeriodicPositionUpdateEnabled(Z)Landroidx/media3/session/MediaLibraryService$MediaLibrarySession$Builder;
    .locals 1
    .param p1, "isEnabled"    # Z

    .line 634
    invoke-super {p0, p1}, Landroidx/media3/session/MediaSession$BuilderBase;->setPeriodicPositionUpdateEnabled(Z)Landroidx/media3/session/MediaSession$BuilderBase;

    move-result-object v0

    check-cast v0, Landroidx/media3/session/MediaLibraryService$MediaLibrarySession$Builder;

    return-object v0
.end method

.method public bridge synthetic setPeriodicPositionUpdateEnabled(Z)Landroidx/media3/session/MediaSession$BuilderBase;
    .locals 0

    .line 430
    invoke-virtual {p0, p1}, Landroidx/media3/session/MediaLibraryService$MediaLibrarySession$Builder;->setPeriodicPositionUpdateEnabled(Z)Landroidx/media3/session/MediaLibraryService$MediaLibrarySession$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setSessionActivity(Landroid/app/PendingIntent;)Landroidx/media3/session/MediaLibraryService$MediaLibrarySession$Builder;
    .locals 1
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;

    .line 474
    invoke-super {p0, p1}, Landroidx/media3/session/MediaSession$BuilderBase;->setSessionActivity(Landroid/app/PendingIntent;)Landroidx/media3/session/MediaSession$BuilderBase;

    move-result-object v0

    check-cast v0, Landroidx/media3/session/MediaLibraryService$MediaLibrarySession$Builder;

    return-object v0
.end method

.method public bridge synthetic setSessionActivity(Landroid/app/PendingIntent;)Landroidx/media3/session/MediaSession$BuilderBase;
    .locals 0

    .line 430
    invoke-virtual {p0, p1}, Landroidx/media3/session/MediaLibraryService$MediaLibrarySession$Builder;->setSessionActivity(Landroid/app/PendingIntent;)Landroidx/media3/session/MediaLibraryService$MediaLibrarySession$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setSessionExtras(Landroid/os/Bundle;)Landroidx/media3/session/MediaLibraryService$MediaLibrarySession$Builder;
    .locals 1
    .param p1, "sessionExtras"    # Landroid/os/Bundle;

    .line 519
    invoke-super {p0, p1}, Landroidx/media3/session/MediaSession$BuilderBase;->setSessionExtras(Landroid/os/Bundle;)Landroidx/media3/session/MediaSession$BuilderBase;

    move-result-object v0

    check-cast v0, Landroidx/media3/session/MediaLibraryService$MediaLibrarySession$Builder;

    return-object v0
.end method

.method public bridge synthetic setSessionExtras(Landroid/os/Bundle;)Landroidx/media3/session/MediaSession$BuilderBase;
    .locals 0

    .line 430
    invoke-virtual {p0, p1}, Landroidx/media3/session/MediaLibraryService$MediaLibrarySession$Builder;->setSessionExtras(Landroid/os/Bundle;)Landroidx/media3/session/MediaLibraryService$MediaLibrarySession$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setShowPlayButtonIfPlaybackIsSuppressed(Z)Landroidx/media3/session/MediaLibraryService$MediaLibrarySession$Builder;
    .locals 1
    .param p1, "showPlayButtonIfPlaybackIsSuppressed"    # Z

    .line 620
    invoke-super {p0, p1}, Landroidx/media3/session/MediaSession$BuilderBase;->setShowPlayButtonIfPlaybackIsSuppressed(Z)Landroidx/media3/session/MediaSession$BuilderBase;

    move-result-object v0

    check-cast v0, Landroidx/media3/session/MediaLibraryService$MediaLibrarySession$Builder;

    return-object v0
.end method

.method public bridge synthetic setShowPlayButtonIfPlaybackIsSuppressed(Z)Landroidx/media3/session/MediaSession$BuilderBase;
    .locals 0

    .line 430
    invoke-virtual {p0, p1}, Landroidx/media3/session/MediaLibraryService$MediaLibrarySession$Builder;->setShowPlayButtonIfPlaybackIsSuppressed(Z)Landroidx/media3/session/MediaLibraryService$MediaLibrarySession$Builder;

    move-result-object p1

    return-object p1
.end method
