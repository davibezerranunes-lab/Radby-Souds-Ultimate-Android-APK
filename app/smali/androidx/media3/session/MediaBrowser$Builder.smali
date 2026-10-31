.class public final Landroidx/media3/session/MediaBrowser$Builder;
.super Ljava/lang/Object;
.source "MediaBrowser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/session/MediaBrowser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private applicationLooper:Landroid/os/Looper;

.field private bitmapLoader:Landroidx/media3/common/util/BitmapLoader;

.field private connectionHints:Landroid/os/Bundle;

.field private final context:Landroid/content/Context;

.field private listener:Landroidx/media3/session/MediaBrowser$Listener;

.field private maxCommandsForMediaItems:I

.field private final token:Landroidx/media3/session/SessionToken;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/media3/session/SessionToken;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "token"    # Landroidx/media3/session/SessionToken;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Landroidx/media3/session/MediaBrowser$Builder;->context:Landroid/content/Context;

    .line 77
    invoke-static {p2}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/session/SessionToken;

    iput-object v0, p0, Landroidx/media3/session/MediaBrowser$Builder;->token:Landroidx/media3/session/SessionToken;

    .line 78
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    iput-object v0, p0, Landroidx/media3/session/MediaBrowser$Builder;->connectionHints:Landroid/os/Bundle;

    .line 79
    new-instance v0, Landroidx/media3/session/MediaBrowser$Builder$1;

    invoke-direct {v0, p0}, Landroidx/media3/session/MediaBrowser$Builder$1;-><init>(Landroidx/media3/session/MediaBrowser$Builder;)V

    iput-object v0, p0, Landroidx/media3/session/MediaBrowser$Builder;->listener:Landroidx/media3/session/MediaBrowser$Listener;

    .line 80
    invoke-static {}, Landroidx/media3/common/util/Util;->getCurrentOrMainLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/session/MediaBrowser$Builder;->applicationLooper:Landroid/os/Looper;

    .line 81
    return-void
.end method

.method static synthetic lambda$buildAsync$0(Landroidx/media3/session/MediaControllerHolder;Landroidx/media3/session/MediaBrowser;)V
    .locals 0
    .param p0, "holder"    # Landroidx/media3/session/MediaControllerHolder;
    .param p1, "browser"    # Landroidx/media3/session/MediaBrowser;

    .line 201
    invoke-virtual {p0, p1}, Landroidx/media3/session/MediaControllerHolder;->setController(Landroidx/media3/session/MediaController;)V

    return-void
.end method


# virtual methods
.method public buildAsync()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media3/session/MediaBrowser;",
            ">;"
        }
    .end annotation

    .line 187
    new-instance v0, Landroidx/media3/session/MediaControllerHolder;

    iget-object v1, p0, Landroidx/media3/session/MediaBrowser$Builder;->applicationLooper:Landroid/os/Looper;

    invoke-direct {v0, v1}, Landroidx/media3/session/MediaControllerHolder;-><init>(Landroid/os/Looper;)V

    .line 188
    .local v0, "holder":Landroidx/media3/session/MediaControllerHolder;, "Landroidx/media3/session/MediaControllerHolder<Landroidx/media3/session/MediaBrowser;>;"
    iget-object v1, p0, Landroidx/media3/session/MediaBrowser$Builder;->token:Landroidx/media3/session/SessionToken;

    invoke-virtual {v1}, Landroidx/media3/session/SessionToken;->isLegacySession()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/media3/session/MediaBrowser$Builder;->bitmapLoader:Landroidx/media3/common/util/BitmapLoader;

    if-nez v1, :cond_0

    .line 189
    new-instance v1, Landroidx/media3/session/CacheBitmapLoader;

    new-instance v2, Landroidx/media3/datasource/DataSourceBitmapLoader;

    iget-object v3, p0, Landroidx/media3/session/MediaBrowser$Builder;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroidx/media3/datasource/DataSourceBitmapLoader;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v2}, Landroidx/media3/session/CacheBitmapLoader;-><init>(Landroidx/media3/common/util/BitmapLoader;)V

    iput-object v1, p0, Landroidx/media3/session/MediaBrowser$Builder;->bitmapLoader:Landroidx/media3/common/util/BitmapLoader;

    .line 191
    :cond_0
    new-instance v1, Landroidx/media3/session/MediaBrowser;

    iget-object v3, p0, Landroidx/media3/session/MediaBrowser$Builder;->context:Landroid/content/Context;

    iget-object v4, p0, Landroidx/media3/session/MediaBrowser$Builder;->token:Landroidx/media3/session/SessionToken;

    iget-object v5, p0, Landroidx/media3/session/MediaBrowser$Builder;->connectionHints:Landroid/os/Bundle;

    iget-object v6, p0, Landroidx/media3/session/MediaBrowser$Builder;->listener:Landroidx/media3/session/MediaBrowser$Listener;

    iget-object v7, p0, Landroidx/media3/session/MediaBrowser$Builder;->applicationLooper:Landroid/os/Looper;

    iget-object v9, p0, Landroidx/media3/session/MediaBrowser$Builder;->bitmapLoader:Landroidx/media3/common/util/BitmapLoader;

    iget v10, p0, Landroidx/media3/session/MediaBrowser$Builder;->maxCommandsForMediaItems:I

    move-object v2, v1

    move-object v8, v0

    invoke-direct/range {v2 .. v10}, Landroidx/media3/session/MediaBrowser;-><init>(Landroid/content/Context;Landroidx/media3/session/SessionToken;Landroid/os/Bundle;Landroidx/media3/session/MediaBrowser$Listener;Landroid/os/Looper;Landroidx/media3/session/MediaController$ConnectionCallback;Landroidx/media3/common/util/BitmapLoader;I)V

    .line 201
    .local v1, "browser":Landroidx/media3/session/MediaBrowser;
    new-instance v2, Landroid/os/Handler;

    iget-object v3, p0, Landroidx/media3/session/MediaBrowser$Builder;->applicationLooper:Landroid/os/Looper;

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Landroidx/media3/session/MediaBrowser$Builder$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0, v1}, Landroidx/media3/session/MediaBrowser$Builder$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/session/MediaControllerHolder;Landroidx/media3/session/MediaBrowser;)V

    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->postOrRun(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    .line 202
    return-object v0
.end method

.method public setApplicationLooper(Landroid/os/Looper;)Landroidx/media3/session/MediaBrowser$Builder;
    .locals 1
    .param p1, "looper"    # Landroid/os/Looper;

    .line 124
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Looper;

    iput-object v0, p0, Landroidx/media3/session/MediaBrowser$Builder;->applicationLooper:Landroid/os/Looper;

    .line 125
    return-object p0
.end method

.method public setBitmapLoader(Landroidx/media3/common/util/BitmapLoader;)Landroidx/media3/session/MediaBrowser$Builder;
    .locals 1
    .param p1, "bitmapLoader"    # Landroidx/media3/common/util/BitmapLoader;

    .line 139
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/util/BitmapLoader;

    iput-object v0, p0, Landroidx/media3/session/MediaBrowser$Builder;->bitmapLoader:Landroidx/media3/common/util/BitmapLoader;

    .line 140
    return-object p0
.end method

.method public setConnectionHints(Landroid/os/Bundle;)Landroidx/media3/session/MediaBrowser$Builder;
    .locals 2
    .param p1, "connectionHints"    # Landroid/os/Bundle;

    .line 97
    new-instance v0, Landroid/os/Bundle;

    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Landroidx/media3/session/MediaBrowser$Builder;->connectionHints:Landroid/os/Bundle;

    .line 98
    return-object p0
.end method

.method public setListener(Landroidx/media3/session/MediaBrowser$Listener;)Landroidx/media3/session/MediaBrowser$Builder;
    .locals 1
    .param p1, "listener"    # Landroidx/media3/session/MediaBrowser$Listener;

    .line 109
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/session/MediaBrowser$Listener;

    iput-object v0, p0, Landroidx/media3/session/MediaBrowser$Builder;->listener:Landroidx/media3/session/MediaBrowser$Listener;

    .line 110
    return-object p0
.end method

.method public setMaxCommandsForMediaItems(I)Landroidx/media3/session/MediaBrowser$Builder;
    .locals 1
    .param p1, "maxCommandsForMediaItems"    # I

    .line 154
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    .line 155
    iput p1, p0, Landroidx/media3/session/MediaBrowser$Builder;->maxCommandsForMediaItems:I

    .line 156
    return-object p0
.end method
