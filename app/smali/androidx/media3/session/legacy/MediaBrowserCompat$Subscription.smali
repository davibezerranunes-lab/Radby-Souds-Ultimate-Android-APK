.class Landroidx/media3/session/legacy/MediaBrowserCompat$Subscription;
.super Ljava/lang/Object;
.source "MediaBrowserCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/session/legacy/MediaBrowserCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Subscription"
.end annotation


# instance fields
.field private final mCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media3/session/legacy/MediaBrowserCompat$SubscriptionCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mOptionsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/media3/session/legacy/MediaBrowserCompat$Subscription;->mCallbacks:Ljava/util/List;

    .line 2125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/media3/session/legacy/MediaBrowserCompat$Subscription;->mOptionsList:Ljava/util/List;

    .line 2126
    return-void
.end method


# virtual methods
.method public getCallback(Landroid/os/Bundle;)Landroidx/media3/session/legacy/MediaBrowserCompat$SubscriptionCallback;
    .locals 2
    .param p1, "options"    # Landroid/os/Bundle;

    .line 2142
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroidx/media3/session/legacy/MediaBrowserCompat$Subscription;->mOptionsList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2143
    iget-object v1, p0, Landroidx/media3/session/legacy/MediaBrowserCompat$Subscription;->mOptionsList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    invoke-static {v1, p1}, Landroidx/media3/session/legacy/MediaBrowserCompatUtils;->areSameOptions(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2144
    iget-object v1, p0, Landroidx/media3/session/legacy/MediaBrowserCompat$Subscription;->mCallbacks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/session/legacy/MediaBrowserCompat$SubscriptionCallback;

    return-object v1

    .line 2142
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2147
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCallbacks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/media3/session/legacy/MediaBrowserCompat$SubscriptionCallback;",
            ">;"
        }
    .end annotation

    .line 2137
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaBrowserCompat$Subscription;->mCallbacks:Ljava/util/List;

    return-object v0
.end method

.method public getOptionsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 2133
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaBrowserCompat$Subscription;->mOptionsList:Ljava/util/List;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 2129
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaBrowserCompat$Subscription;->mCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public putCallback(Landroid/os/Bundle;Landroidx/media3/session/legacy/MediaBrowserCompat$SubscriptionCallback;)V
    .locals 2
    .param p1, "options"    # Landroid/os/Bundle;
    .param p2, "callback"    # Landroidx/media3/session/legacy/MediaBrowserCompat$SubscriptionCallback;

    .line 2151
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroidx/media3/session/legacy/MediaBrowserCompat$Subscription;->mOptionsList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2152
    iget-object v1, p0, Landroidx/media3/session/legacy/MediaBrowserCompat$Subscription;->mOptionsList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    invoke-static {v1, p1}, Landroidx/media3/session/legacy/MediaBrowserCompatUtils;->areSameOptions(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2153
    iget-object v1, p0, Landroidx/media3/session/legacy/MediaBrowserCompat$Subscription;->mCallbacks:Ljava/util/List;

    invoke-interface {v1, v0, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2154
    return-void

    .line 2151
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2157
    .end local v0    # "i":I
    :cond_1
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaBrowserCompat$Subscription;->mCallbacks:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2158
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaBrowserCompat$Subscription;->mOptionsList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2159
    return-void
.end method
