.class abstract Landroidx/media3/session/MediaSession$BuilderBase;
.super Ljava/lang/Object;
.source "MediaSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/session/MediaSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "BuilderBase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<SessionT:",
        "Landroidx/media3/session/MediaSession;",
        "BuilderT:",
        "Landroidx/media3/session/MediaSession$BuilderBase<",
        "TSessionT;TBuilderT;TCallbackT;>;CallbackT::",
        "Landroidx/media3/session/MediaSession$Callback;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field bitmapLoader:Landroidx/media3/common/util/BitmapLoader;

.field callback:Landroidx/media3/session/MediaSession$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TCallbackT;"
        }
    .end annotation
.end field

.field commandButtonsForMediaItems:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/session/CommandButton;",
            ">;"
        }
    .end annotation
.end field

.field final context:Landroid/content/Context;

.field customLayout:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/session/CommandButton;",
            ">;"
        }
    .end annotation
.end field

.field id:Ljava/lang/String;

.field isPeriodicPositionUpdateEnabled:Z

.field mediaButtonPreferences:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/session/CommandButton;",
            ">;"
        }
    .end annotation
.end field

.field playIfSuppressed:Z

.field final player:Landroidx/media3/common/Player;

.field sessionActivity:Landroid/app/PendingIntent;

.field sessionExtras:Landroid/os/Bundle;

.field tokenExtras:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/media3/common/Player;Landroidx/media3/session/MediaSession$Callback;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "player"    # Landroidx/media3/common/Player;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/media3/common/Player;",
            "TCallbackT;)V"
        }
    .end annotation

    .line 2279
    .local p0, "this":Landroidx/media3/session/MediaSession$BuilderBase;, "Landroidx/media3/session/MediaSession$BuilderBase<TSessionT;TBuilderT;TCallbackT;>;"
    .local p3, "callback":Landroidx/media3/session/MediaSession$Callback;, "TCallbackT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2280
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Landroidx/media3/session/MediaSession$BuilderBase;->context:Landroid/content/Context;

    .line 2281
    invoke-static {p2}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/Player;

    iput-object v0, p0, Landroidx/media3/session/MediaSession$BuilderBase;->player:Landroidx/media3/common/Player;

    .line 2282
    invoke-interface {p2}, Landroidx/media3/common/Player;->canAdvertiseSession()Z

    move-result v0

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    .line 2283
    const-string v0, ""

    iput-object v0, p0, Landroidx/media3/session/MediaSession$BuilderBase;->id:Ljava/lang/String;

    .line 2284
    iput-object p3, p0, Landroidx/media3/session/MediaSession$BuilderBase;->callback:Landroidx/media3/session/MediaSession$Callback;

    .line 2285
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroidx/media3/session/MediaSession$BuilderBase;->tokenExtras:Landroid/os/Bundle;

    .line 2286
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroidx/media3/session/MediaSession$BuilderBase;->sessionExtras:Landroid/os/Bundle;

    .line 2287
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/session/MediaSession$BuilderBase;->customLayout:Lcom/google/common/collect/ImmutableList;

    .line 2288
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/session/MediaSession$BuilderBase;->mediaButtonPreferences:Lcom/google/common/collect/ImmutableList;

    .line 2289
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/session/MediaSession$BuilderBase;->playIfSuppressed:Z

    .line 2290
    iput-boolean v0, p0, Landroidx/media3/session/MediaSession$BuilderBase;->isPeriodicPositionUpdateEnabled:Z

    .line 2291
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/session/MediaSession$BuilderBase;->commandButtonsForMediaItems:Lcom/google/common/collect/ImmutableList;

    .line 2292
    return-void
.end method


# virtual methods
.method public abstract build()Landroidx/media3/session/MediaSession;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TSessionT;"
        }
    .end annotation
.end method

.method public setBitmapLoader(Landroidx/media3/common/util/BitmapLoader;)Landroidx/media3/session/MediaSession$BuilderBase;
    .locals 1
    .param p1, "bitmapLoader"    # Landroidx/media3/common/util/BitmapLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/util/BitmapLoader;",
            ")TBuilderT;"
        }
    .end annotation

    .line 2335
    .local p0, "this":Landroidx/media3/session/MediaSession$BuilderBase;, "Landroidx/media3/session/MediaSession$BuilderBase<TSessionT;TBuilderT;TCallbackT;>;"
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/util/BitmapLoader;

    iput-object v0, p0, Landroidx/media3/session/MediaSession$BuilderBase;->bitmapLoader:Landroidx/media3/common/util/BitmapLoader;

    .line 2336
    return-object p0
.end method

.method setCallback(Landroidx/media3/session/MediaSession$Callback;)Landroidx/media3/session/MediaSession$BuilderBase;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCallbackT;)TBuilderT;"
        }
    .end annotation

    .line 2314
    .local p0, "this":Landroidx/media3/session/MediaSession$BuilderBase;, "Landroidx/media3/session/MediaSession$BuilderBase<TSessionT;TBuilderT;TCallbackT;>;"
    .local p1, "callback":Landroidx/media3/session/MediaSession$Callback;, "TCallbackT;"
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/session/MediaSession$Callback;

    iput-object v0, p0, Landroidx/media3/session/MediaSession$BuilderBase;->callback:Landroidx/media3/session/MediaSession$Callback;

    .line 2315
    return-object p0
.end method

.method public setCommandButtonsForMediaItems(Ljava/util/List;)Landroidx/media3/session/MediaSession$BuilderBase;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/session/CommandButton;",
            ">;)TBuilderT;"
        }
    .end annotation

    .line 2364
    .local p0, "this":Landroidx/media3/session/MediaSession$BuilderBase;, "Landroidx/media3/session/MediaSession$BuilderBase<TSessionT;TBuilderT;TCallbackT;>;"
    .local p1, "commandButtons":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/session/CommandButton;>;"
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/session/MediaSession$BuilderBase;->commandButtonsForMediaItems:Lcom/google/common/collect/ImmutableList;

    .line 2365
    return-object p0
.end method

.method public setCustomLayout(Ljava/util/List;)Landroidx/media3/session/MediaSession$BuilderBase;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/session/CommandButton;",
            ">;)TBuilderT;"
        }
    .end annotation

    .line 2342
    .local p0, "this":Landroidx/media3/session/MediaSession$BuilderBase;, "Landroidx/media3/session/MediaSession$BuilderBase<TSessionT;TBuilderT;TCallbackT;>;"
    .local p1, "customLayout":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/session/CommandButton;>;"
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/session/MediaSession$BuilderBase;->customLayout:Lcom/google/common/collect/ImmutableList;

    .line 2343
    return-object p0
.end method

.method public setExtras(Landroid/os/Bundle;)Landroidx/media3/session/MediaSession$BuilderBase;
    .locals 2
    .param p1, "tokenExtras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")TBuilderT;"
        }
    .end annotation

    .line 2321
    .local p0, "this":Landroidx/media3/session/MediaSession$BuilderBase;, "Landroidx/media3/session/MediaSession$BuilderBase<TSessionT;TBuilderT;TCallbackT;>;"
    new-instance v0, Landroid/os/Bundle;

    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Landroidx/media3/session/MediaSession$BuilderBase;->tokenExtras:Landroid/os/Bundle;

    .line 2322
    return-object p0
.end method

.method public setId(Ljava/lang/String;)Landroidx/media3/session/MediaSession$BuilderBase;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TBuilderT;"
        }
    .end annotation

    .line 2307
    .local p0, "this":Landroidx/media3/session/MediaSession$BuilderBase;, "Landroidx/media3/session/MediaSession$BuilderBase<TSessionT;TBuilderT;TCallbackT;>;"
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroidx/media3/session/MediaSession$BuilderBase;->id:Ljava/lang/String;

    .line 2308
    return-object p0
.end method

.method public setMediaButtonPreferences(Ljava/util/List;)Landroidx/media3/session/MediaSession$BuilderBase;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/session/CommandButton;",
            ">;)TBuilderT;"
        }
    .end annotation

    .line 2349
    .local p0, "this":Landroidx/media3/session/MediaSession$BuilderBase;, "Landroidx/media3/session/MediaSession$BuilderBase<TSessionT;TBuilderT;TCallbackT;>;"
    .local p1, "mediaButtonPreferences":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/session/CommandButton;>;"
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/session/MediaSession$BuilderBase;->mediaButtonPreferences:Lcom/google/common/collect/ImmutableList;

    .line 2350
    return-object p0
.end method

.method public setPeriodicPositionUpdateEnabled(Z)Landroidx/media3/session/MediaSession$BuilderBase;
    .locals 0
    .param p1, "isPeriodicPositionUpdateEnabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TBuilderT;"
        }
    .end annotation

    .line 2371
    .local p0, "this":Landroidx/media3/session/MediaSession$BuilderBase;, "Landroidx/media3/session/MediaSession$BuilderBase<TSessionT;TBuilderT;TCallbackT;>;"
    iput-boolean p1, p0, Landroidx/media3/session/MediaSession$BuilderBase;->isPeriodicPositionUpdateEnabled:Z

    .line 2372
    return-object p0
.end method

.method public setSessionActivity(Landroid/app/PendingIntent;)Landroidx/media3/session/MediaSession$BuilderBase;
    .locals 2
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/PendingIntent;",
            ")TBuilderT;"
        }
    .end annotation

    .line 2297
    .local p0, "this":Landroidx/media3/session/MediaSession$BuilderBase;, "Landroidx/media3/session/MediaSession$BuilderBase<TSessionT;TBuilderT;TCallbackT;>;"
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    .line 2298
    invoke-static {p1}, Landroidx/media3/session/MediaSession$Api31;->isActivity(Landroid/app/PendingIntent;)Z

    move-result v0

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    .line 2300
    :cond_0
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    iput-object v0, p0, Landroidx/media3/session/MediaSession$BuilderBase;->sessionActivity:Landroid/app/PendingIntent;

    .line 2301
    return-object p0
.end method

.method public setSessionExtras(Landroid/os/Bundle;)Landroidx/media3/session/MediaSession$BuilderBase;
    .locals 2
    .param p1, "sessionExtras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")TBuilderT;"
        }
    .end annotation

    .line 2328
    .local p0, "this":Landroidx/media3/session/MediaSession$BuilderBase;, "Landroidx/media3/session/MediaSession$BuilderBase<TSessionT;TBuilderT;TCallbackT;>;"
    new-instance v0, Landroid/os/Bundle;

    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Landroidx/media3/session/MediaSession$BuilderBase;->sessionExtras:Landroid/os/Bundle;

    .line 2329
    return-object p0
.end method

.method public setShowPlayButtonIfPlaybackIsSuppressed(Z)Landroidx/media3/session/MediaSession$BuilderBase;
    .locals 0
    .param p1, "showPlayButtonIfPlaybackIsSuppressed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TBuilderT;"
        }
    .end annotation

    .line 2357
    .local p0, "this":Landroidx/media3/session/MediaSession$BuilderBase;, "Landroidx/media3/session/MediaSession$BuilderBase<TSessionT;TBuilderT;TCallbackT;>;"
    iput-boolean p1, p0, Landroidx/media3/session/MediaSession$BuilderBase;->playIfSuppressed:Z

    .line 2358
    return-object p0
.end method
