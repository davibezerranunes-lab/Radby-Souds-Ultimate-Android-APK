.class final Landroidx/media3/exoplayer/DefaultSuitableOutputChecker;
.super Ljava/lang/Object;
.source "DefaultSuitableOutputChecker.java"

# interfaces
.implements Landroidx/media3/exoplayer/SuitableOutputChecker;


# static fields
.field private static final EMPTY_DISCOVERY_PREFERENCE:Landroid/media/RouteDiscoveryPreference;


# instance fields
.field private controllerCallback:Landroid/media/MediaRouter2$ControllerCallback;

.field private final executor:Ljava/util/concurrent/Executor;

.field private isPreviousSelectedOutputSuitableForPlayback:Z

.field private final routeCallback:Landroid/media/MediaRouter2$RouteCallback;

.field private final router:Landroid/media/MediaRouter2;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 39
    new-instance v0, Landroid/media/RouteDiscoveryPreference$Builder;

    .line 41
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/media/RouteDiscoveryPreference$Builder;-><init>(Ljava/util/List;Z)V

    .line 42
    invoke-virtual {v0}, Landroid/media/RouteDiscoveryPreference$Builder;->build()Landroid/media/RouteDiscoveryPreference;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/DefaultSuitableOutputChecker;->EMPTY_DISCOVERY_PREFERENCE:Landroid/media/RouteDiscoveryPreference;

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "eventHandler"    # Landroid/os/Handler;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-static {p1}, Landroid/media/MediaRouter2;->getInstance(Landroid/content/Context;)Landroid/media/MediaRouter2;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/DefaultSuitableOutputChecker;->router:Landroid/media/MediaRouter2;

    .line 53
    new-instance v0, Landroidx/media3/exoplayer/DefaultSuitableOutputChecker$1;

    invoke-direct {v0, p0}, Landroidx/media3/exoplayer/DefaultSuitableOutputChecker$1;-><init>(Landroidx/media3/exoplayer/DefaultSuitableOutputChecker;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/DefaultSuitableOutputChecker;->routeCallback:Landroid/media/MediaRouter2$RouteCallback;

    .line 54
    new-instance v0, Landroidx/media3/exoplayer/DefaultSuitableOutputChecker$2;

    invoke-direct {v0, p0, p2}, Landroidx/media3/exoplayer/DefaultSuitableOutputChecker$2;-><init>(Landroidx/media3/exoplayer/DefaultSuitableOutputChecker;Landroid/os/Handler;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/DefaultSuitableOutputChecker;->executor:Ljava/util/concurrent/Executor;

    .line 61
    return-void
.end method

.method static synthetic access$000(Landroidx/media3/exoplayer/DefaultSuitableOutputChecker;)Z
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/DefaultSuitableOutputChecker;

    .line 37
    iget-boolean v0, p0, Landroidx/media3/exoplayer/DefaultSuitableOutputChecker;->isPreviousSelectedOutputSuitableForPlayback:Z

    return v0
.end method

.method static synthetic access$002(Landroidx/media3/exoplayer/DefaultSuitableOutputChecker;Z)Z
    .locals 0
    .param p0, "x0"    # Landroidx/media3/exoplayer/DefaultSuitableOutputChecker;
    .param p1, "x1"    # Z

    .line 37
    iput-boolean p1, p0, Landroidx/media3/exoplayer/DefaultSuitableOutputChecker;->isPreviousSelectedOutputSuitableForPlayback:Z

    return p1
.end method

.method private static isRouteSuitableForMediaPlayback(Landroid/media/MediaRoute2Info;IZ)Z
    .locals 4
    .param p0, "routeInfo"    # Landroid/media/MediaRoute2Info;
    .param p1, "transferReason"    # I
    .param p2, "wasTransferInitiatedBySelf"    # Z

    .line 108
    invoke-virtual {p0}, Landroid/media/MediaRoute2Info;->getSuitabilityStatus()I

    move-result v0

    .line 110
    .local v0, "suitabilityStatus":I
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 111
    if-eq p1, v2, :cond_0

    const/4 v3, 0x2

    if-ne p1, v3, :cond_1

    :cond_0
    if-eqz p2, :cond_1

    move v1, v2

    :cond_1
    return v1

    .line 116
    :cond_2
    if-nez v0, :cond_3

    move v1, v2

    :cond_3
    return v1
.end method


# virtual methods
.method public disable()V
    .locals 2

    .line 87
    iget-object v0, p0, Landroidx/media3/exoplayer/DefaultSuitableOutputChecker;->controllerCallback:Landroid/media/MediaRouter2$ControllerCallback;

    const-string v1, "SuitableOutputChecker is not enabled"

    invoke-static {v0, v1}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    iget-object v0, p0, Landroidx/media3/exoplayer/DefaultSuitableOutputChecker;->router:Landroid/media/MediaRouter2;

    iget-object v1, p0, Landroidx/media3/exoplayer/DefaultSuitableOutputChecker;->controllerCallback:Landroid/media/MediaRouter2$ControllerCallback;

    invoke-virtual {v0, v1}, Landroid/media/MediaRouter2;->unregisterControllerCallback(Landroid/media/MediaRouter2$ControllerCallback;)V

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/exoplayer/DefaultSuitableOutputChecker;->controllerCallback:Landroid/media/MediaRouter2$ControllerCallback;

    .line 90
    iget-object v0, p0, Landroidx/media3/exoplayer/DefaultSuitableOutputChecker;->router:Landroid/media/MediaRouter2;

    iget-object v1, p0, Landroidx/media3/exoplayer/DefaultSuitableOutputChecker;->routeCallback:Landroid/media/MediaRouter2$RouteCallback;

    invoke-virtual {v0, v1}, Landroid/media/MediaRouter2;->unregisterRouteCallback(Landroid/media/MediaRouter2$RouteCallback;)V

    .line 91
    return-void
.end method

.method public enable(Landroidx/media3/exoplayer/SuitableOutputChecker$Callback;)V
    .locals 4
    .param p1, "callback"    # Landroidx/media3/exoplayer/SuitableOutputChecker$Callback;

    .line 65
    iget-object v0, p0, Landroidx/media3/exoplayer/DefaultSuitableOutputChecker;->router:Landroid/media/MediaRouter2;

    iget-object v1, p0, Landroidx/media3/exoplayer/DefaultSuitableOutputChecker;->executor:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Landroidx/media3/exoplayer/DefaultSuitableOutputChecker;->routeCallback:Landroid/media/MediaRouter2$RouteCallback;

    sget-object v3, Landroidx/media3/exoplayer/DefaultSuitableOutputChecker;->EMPTY_DISCOVERY_PREFERENCE:Landroid/media/RouteDiscoveryPreference;

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MediaRouter2;->registerRouteCallback(Ljava/util/concurrent/Executor;Landroid/media/MediaRouter2$RouteCallback;Landroid/media/RouteDiscoveryPreference;)V

    .line 66
    new-instance v0, Landroidx/media3/exoplayer/DefaultSuitableOutputChecker$3;

    invoke-direct {v0, p0, p1}, Landroidx/media3/exoplayer/DefaultSuitableOutputChecker$3;-><init>(Landroidx/media3/exoplayer/DefaultSuitableOutputChecker;Landroidx/media3/exoplayer/SuitableOutputChecker$Callback;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/DefaultSuitableOutputChecker;->controllerCallback:Landroid/media/MediaRouter2$ControllerCallback;

    .line 81
    iget-object v0, p0, Landroidx/media3/exoplayer/DefaultSuitableOutputChecker;->router:Landroid/media/MediaRouter2;

    iget-object v1, p0, Landroidx/media3/exoplayer/DefaultSuitableOutputChecker;->executor:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Landroidx/media3/exoplayer/DefaultSuitableOutputChecker;->controllerCallback:Landroid/media/MediaRouter2$ControllerCallback;

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaRouter2;->registerControllerCallback(Ljava/util/concurrent/Executor;Landroid/media/MediaRouter2$ControllerCallback;)V

    .line 82
    invoke-virtual {p0}, Landroidx/media3/exoplayer/DefaultSuitableOutputChecker;->isSelectedOutputSuitableForPlayback()Z

    move-result v0

    iput-boolean v0, p0, Landroidx/media3/exoplayer/DefaultSuitableOutputChecker;->isPreviousSelectedOutputSuitableForPlayback:Z

    .line 83
    return-void
.end method

.method public isSelectedOutputSuitableForPlayback()Z
    .locals 5

    .line 95
    iget-object v0, p0, Landroidx/media3/exoplayer/DefaultSuitableOutputChecker;->controllerCallback:Landroid/media/MediaRouter2$ControllerCallback;

    const-string v1, "SuitableOutputChecker is not enabled"

    invoke-static {v0, v1}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    iget-object v0, p0, Landroidx/media3/exoplayer/DefaultSuitableOutputChecker;->router:Landroid/media/MediaRouter2;

    invoke-virtual {v0}, Landroid/media/MediaRouter2;->getSystemController()Landroid/media/MediaRouter2$RoutingController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaRouter2$RoutingController;->getRoutingSessionInfo()Landroid/media/RoutingSessionInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/RoutingSessionInfo;->getTransferReason()I

    move-result v0

    .line 97
    .local v0, "transferReason":I
    iget-object v1, p0, Landroidx/media3/exoplayer/DefaultSuitableOutputChecker;->router:Landroid/media/MediaRouter2;

    invoke-virtual {v1}, Landroid/media/MediaRouter2;->getSystemController()Landroid/media/MediaRouter2$RoutingController;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaRouter2$RoutingController;->wasTransferInitiatedBySelf()Z

    move-result v1

    .line 98
    .local v1, "wasTransferInitiatedBySelf":Z
    iget-object v2, p0, Landroidx/media3/exoplayer/DefaultSuitableOutputChecker;->router:Landroid/media/MediaRouter2;

    invoke-virtual {v2}, Landroid/media/MediaRouter2;->getSystemController()Landroid/media/MediaRouter2$RoutingController;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaRouter2$RoutingController;->getSelectedRoutes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/MediaRoute2Info;

    .line 99
    .local v3, "routeInfo":Landroid/media/MediaRoute2Info;
    invoke-static {v3, v0, v1}, Landroidx/media3/exoplayer/DefaultSuitableOutputChecker;->isRouteSuitableForMediaPlayback(Landroid/media/MediaRoute2Info;IZ)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 100
    const/4 v2, 0x1

    return v2

    .line 102
    .end local v3    # "routeInfo":Landroid/media/MediaRoute2Info;
    :cond_0
    goto :goto_0

    .line 103
    :cond_1
    const/4 v2, 0x0

    return v2
.end method
