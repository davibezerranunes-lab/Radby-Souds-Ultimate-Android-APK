.class final Landroidx/media3/session/MediaSessionStub$Controller2Cb;
.super Ljava/lang/Object;
.source "MediaSessionStub.java"

# interfaces
.implements Landroidx/media3/session/MediaSession$ControllerCb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/session/MediaSessionStub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Controller2Cb"
.end annotation


# instance fields
.field private final controllerInterfaceVersion:I

.field private final iController:Landroidx/media3/session/IMediaController;


# direct methods
.method public constructor <init>(Landroidx/media3/session/IMediaController;I)V
    .locals 0
    .param p1, "callback"    # Landroidx/media3/session/IMediaController;
    .param p2, "controllerInterfaceVersion"    # I

    .line 2014
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2015
    iput-object p1, p0, Landroidx/media3/session/MediaSessionStub$Controller2Cb;->iController:Landroidx/media3/session/IMediaController;

    .line 2016
    iput p2, p0, Landroidx/media3/session/MediaSessionStub$Controller2Cb;->controllerInterfaceVersion:I

    .line 2017
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 2183
    if-ne p0, p1, :cond_0

    .line 2184
    const/4 v0, 0x1

    return v0

    .line 2186
    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroidx/media3/session/MediaSessionStub$Controller2Cb;

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 2189
    :cond_1
    move-object v0, p1

    check-cast v0, Landroidx/media3/session/MediaSessionStub$Controller2Cb;

    .line 2190
    .local v0, "other":Landroidx/media3/session/MediaSessionStub$Controller2Cb;
    invoke-virtual {p0}, Landroidx/media3/session/MediaSessionStub$Controller2Cb;->getCallbackBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0}, Landroidx/media3/session/MediaSessionStub$Controller2Cb;->getCallbackBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v1, v2}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 2187
    .end local v0    # "other":Landroidx/media3/session/MediaSessionStub$Controller2Cb;
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public getCallbackBinder()Landroid/os/IBinder;
    .locals 1

    .line 2020
    iget-object v0, p0, Landroidx/media3/session/MediaSessionStub$Controller2Cb;->iController:Landroidx/media3/session/IMediaController;

    invoke-interface {v0}, Landroidx/media3/session/IMediaController;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 2178
    invoke-virtual {p0}, Landroidx/media3/session/MediaSessionStub$Controller2Cb;->getCallbackBinder()Landroid/os/IBinder;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/util/ObjectsCompat;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public onAvailableCommandsChangedFromPlayer(ILandroidx/media3/common/Player$Commands;)V
    .locals 2
    .param p1, "sequenceNumber"    # I
    .param p2, "availableCommands"    # Landroidx/media3/common/Player$Commands;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2112
    iget-object v0, p0, Landroidx/media3/session/MediaSessionStub$Controller2Cb;->iController:Landroidx/media3/session/IMediaController;

    .line 2113
    invoke-virtual {p2}, Landroidx/media3/common/Player$Commands;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    .line 2112
    invoke-interface {v0, p1, v1}, Landroidx/media3/session/IMediaController;->onAvailableCommandsChangedFromPlayer(ILandroid/os/Bundle;)V

    .line 2114
    return-void
.end method

.method public onAvailableCommandsChangedFromSession(ILandroidx/media3/session/SessionCommands;Landroidx/media3/common/Player$Commands;)V
    .locals 3
    .param p1, "sequenceNumber"    # I
    .param p2, "sessionCommands"    # Landroidx/media3/session/SessionCommands;
    .param p3, "playerCommands"    # Landroidx/media3/common/Player$Commands;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2105
    iget-object v0, p0, Landroidx/media3/session/MediaSessionStub$Controller2Cb;->iController:Landroidx/media3/session/IMediaController;

    .line 2106
    invoke-virtual {p2}, Landroidx/media3/session/SessionCommands;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p3}, Landroidx/media3/common/Player$Commands;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    .line 2105
    invoke-interface {v0, p1, v1, v2}, Landroidx/media3/session/IMediaController;->onAvailableCommandsChangedFromSession(ILandroid/os/Bundle;Landroid/os/Bundle;)V

    .line 2107
    return-void
.end method

.method public onChildrenChanged(ILjava/lang/String;ILandroidx/media3/session/MediaLibraryService$LibraryParams;)V
    .locals 2
    .param p1, "sequenceNumber"    # I
    .param p2, "parentId"    # Ljava/lang/String;
    .param p3, "itemCount"    # I
    .param p4, "params"    # Landroidx/media3/session/MediaLibraryService$LibraryParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2127
    iget-object v0, p0, Landroidx/media3/session/MediaSessionStub$Controller2Cb;->iController:Landroidx/media3/session/IMediaController;

    .line 2128
    if-nez p4, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p4}, Landroidx/media3/session/MediaLibraryService$LibraryParams;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    .line 2127
    :goto_0
    invoke-interface {v0, p1, p2, p3, v1}, Landroidx/media3/session/IMediaController;->onChildrenChanged(ILjava/lang/String;ILandroid/os/Bundle;)V

    .line 2129
    return-void
.end method

.method public onDisconnected(I)V
    .locals 1
    .param p1, "sequenceNumber"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2142
    iget-object v0, p0, Landroidx/media3/session/MediaSessionStub$Controller2Cb;->iController:Landroidx/media3/session/IMediaController;

    invoke-interface {v0, p1}, Landroidx/media3/session/IMediaController;->onDisconnected(I)V

    .line 2143
    return-void
.end method

.method public onError(ILandroidx/media3/session/SessionError;)V
    .locals 2
    .param p1, "sequenceNumber"    # I
    .param p2, "sessionError"    # Landroidx/media3/session/SessionError;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2173
    iget-object v0, p0, Landroidx/media3/session/MediaSessionStub$Controller2Cb;->iController:Landroidx/media3/session/IMediaController;

    invoke-virtual {p2}, Landroidx/media3/session/SessionError;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroidx/media3/session/IMediaController;->onError(ILandroid/os/Bundle;)V

    .line 2174
    return-void
.end method

.method public onLibraryResult(ILandroidx/media3/session/LibraryResult;)V
    .locals 2
    .param p1, "sequenceNumber"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/media3/session/LibraryResult<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2031
    .local p2, "result":Landroidx/media3/session/LibraryResult;, "Landroidx/media3/session/LibraryResult<*>;"
    iget-object v0, p0, Landroidx/media3/session/MediaSessionStub$Controller2Cb;->iController:Landroidx/media3/session/IMediaController;

    invoke-virtual {p2}, Landroidx/media3/session/LibraryResult;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroidx/media3/session/IMediaController;->onLibraryResult(ILandroid/os/Bundle;)V

    .line 2032
    return-void
.end method

.method public onPeriodicSessionPositionInfoChanged(ILandroidx/media3/session/SessionPositionInfo;ZZI)V
    .locals 2
    .param p1, "sequenceNumber"    # I
    .param p2, "sessionPositionInfo"    # Landroidx/media3/session/SessionPositionInfo;
    .param p3, "canAccessCurrentMediaItem"    # Z
    .param p4, "canAccessTimeline"    # Z
    .param p5, "controllerInterfaceVersion"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2153
    iget-object v0, p0, Landroidx/media3/session/MediaSessionStub$Controller2Cb;->iController:Landroidx/media3/session/IMediaController;

    .line 2156
    invoke-virtual {p2, p3, p4}, Landroidx/media3/session/SessionPositionInfo;->filterByAvailableCommands(ZZ)Landroidx/media3/session/SessionPositionInfo;

    move-result-object v1

    .line 2157
    invoke-virtual {v1, p5}, Landroidx/media3/session/SessionPositionInfo;->toBundle(I)Landroid/os/Bundle;

    move-result-object v1

    .line 2153
    invoke-interface {v0, p1, v1}, Landroidx/media3/session/IMediaController;->onPeriodicSessionPositionInfoChanged(ILandroid/os/Bundle;)V

    .line 2158
    return-void
.end method

.method public onPlayerInfoChanged(ILandroidx/media3/session/PlayerInfo;Landroidx/media3/common/Player$Commands;ZZ)V
    .locals 6
    .param p1, "sequenceNumber"    # I
    .param p2, "playerInfo"    # Landroidx/media3/session/PlayerInfo;
    .param p3, "availableCommands"    # Landroidx/media3/common/Player$Commands;
    .param p4, "excludeTimeline"    # Z
    .param p5, "excludeTracks"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2042
    iget v0, p0, Landroidx/media3/session/MediaSessionStub$Controller2Cb;->controllerInterfaceVersion:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 2044
    if-nez p4, :cond_2

    .line 2045
    const/16 v0, 0x11

    invoke-virtual {p3, v0}, Landroidx/media3/common/Player$Commands;->contains(I)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_2

    :cond_2
    :goto_1
    move v0, v2

    .line 2046
    .local v0, "bundlingExclusionsTimeline":Z
    :goto_2
    if-nez p5, :cond_3

    .line 2047
    const/16 v3, 0x1e

    invoke-virtual {p3, v3}, Landroidx/media3/common/Player$Commands;->contains(I)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_3
    move v1, v2

    .line 2048
    .local v1, "bundlingExclusionsTracks":Z
    :cond_4
    iget v3, p0, Landroidx/media3/session/MediaSessionStub$Controller2Cb;->controllerInterfaceVersion:I

    const/4 v4, 0x2

    if-lt v3, v4, :cond_6

    .line 2049
    nop

    .line 2050
    invoke-virtual {p2, p3, p4, p5}, Landroidx/media3/session/PlayerInfo;->filterByAvailableCommands(Landroidx/media3/common/Player$Commands;ZZ)Landroidx/media3/session/PlayerInfo;

    move-result-object v2

    .line 2052
    .local v2, "filteredPlayerInfo":Landroidx/media3/session/PlayerInfo;
    iget-object v3, p0, Landroidx/media3/session/MediaSessionStub$Controller2Cb;->iController:Landroidx/media3/session/IMediaController;

    instance-of v3, v3, Landroidx/media3/session/MediaControllerStub;

    if-eqz v3, :cond_5

    .line 2053
    invoke-virtual {v2}, Landroidx/media3/session/PlayerInfo;->toBundleInProcess()Landroid/os/Bundle;

    move-result-object v3

    goto :goto_3

    .line 2054
    :cond_5
    iget v3, p0, Landroidx/media3/session/MediaSessionStub$Controller2Cb;->controllerInterfaceVersion:I

    invoke-virtual {v2, v3}, Landroidx/media3/session/PlayerInfo;->toBundleForRemoteProcess(I)Landroid/os/Bundle;

    move-result-object v3

    :goto_3
    nop

    .line 2055
    .local v3, "playerInfoBundle":Landroid/os/Bundle;
    iget-object v4, p0, Landroidx/media3/session/MediaSessionStub$Controller2Cb;->iController:Landroidx/media3/session/IMediaController;

    new-instance v5, Landroidx/media3/session/PlayerInfo$BundlingExclusions;

    invoke-direct {v5, v0, v1}, Landroidx/media3/session/PlayerInfo$BundlingExclusions;-><init>(ZZ)V

    .line 2059
    invoke-virtual {v5}, Landroidx/media3/session/PlayerInfo$BundlingExclusions;->toBundle()Landroid/os/Bundle;

    move-result-object v5

    .line 2055
    invoke-interface {v4, p1, v3, v5}, Landroidx/media3/session/IMediaController;->onPlayerInfoChangedWithExclusions(ILandroid/os/Bundle;Landroid/os/Bundle;)V

    .line 2060
    .end local v2    # "filteredPlayerInfo":Landroidx/media3/session/PlayerInfo;
    .end local v3    # "playerInfoBundle":Landroid/os/Bundle;
    goto :goto_4

    .line 2061
    :cond_6
    nop

    .line 2062
    invoke-virtual {p2, p3, p4, v2}, Landroidx/media3/session/PlayerInfo;->filterByAvailableCommands(Landroidx/media3/common/Player$Commands;ZZ)Landroidx/media3/session/PlayerInfo;

    move-result-object v2

    .line 2065
    .restart local v2    # "filteredPlayerInfo":Landroidx/media3/session/PlayerInfo;
    iget-object v3, p0, Landroidx/media3/session/MediaSessionStub$Controller2Cb;->iController:Landroidx/media3/session/IMediaController;

    iget v4, p0, Landroidx/media3/session/MediaSessionStub$Controller2Cb;->controllerInterfaceVersion:I

    .line 2067
    invoke-virtual {v2, v4}, Landroidx/media3/session/PlayerInfo;->toBundleForRemoteProcess(I)Landroid/os/Bundle;

    move-result-object v4

    .line 2065
    invoke-interface {v3, p1, v4, v0}, Landroidx/media3/session/IMediaController;->onPlayerInfoChanged(ILandroid/os/Bundle;Z)V

    .line 2070
    .end local v2    # "filteredPlayerInfo":Landroidx/media3/session/PlayerInfo;
    :goto_4
    return-void
.end method

.method public onRenderedFirstFrame(I)V
    .locals 1
    .param p1, "sequenceNumber"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2162
    iget-object v0, p0, Landroidx/media3/session/MediaSessionStub$Controller2Cb;->iController:Landroidx/media3/session/IMediaController;

    invoke-interface {v0, p1}, Landroidx/media3/session/IMediaController;->onRenderedFirstFrame(I)V

    .line 2163
    return-void
.end method

.method public onSearchResultChanged(ILjava/lang/String;ILandroidx/media3/session/MediaLibraryService$LibraryParams;)V
    .locals 2
    .param p1, "sequenceNumber"    # I
    .param p2, "query"    # Ljava/lang/String;
    .param p3, "itemCount"    # I
    .param p4, "params"    # Landroidx/media3/session/MediaLibraryService$LibraryParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2136
    iget-object v0, p0, Landroidx/media3/session/MediaSessionStub$Controller2Cb;->iController:Landroidx/media3/session/IMediaController;

    .line 2137
    if-nez p4, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p4}, Landroidx/media3/session/MediaLibraryService$LibraryParams;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    .line 2136
    :goto_0
    invoke-interface {v0, p1, p2, p3, v1}, Landroidx/media3/session/IMediaController;->onSearchResultChanged(ILjava/lang/String;ILandroid/os/Bundle;)V

    .line 2138
    return-void
.end method

.method public onSessionActivityChanged(ILandroid/app/PendingIntent;)V
    .locals 1
    .param p1, "sequenceNumber"    # I
    .param p2, "sessionActivity"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2098
    iget-object v0, p0, Landroidx/media3/session/MediaSessionStub$Controller2Cb;->iController:Landroidx/media3/session/IMediaController;

    invoke-interface {v0, p1, p2}, Landroidx/media3/session/IMediaController;->onSessionActivityChanged(ILandroid/app/PendingIntent;)V

    .line 2099
    return-void
.end method

.method public onSessionExtrasChanged(ILandroid/os/Bundle;)V
    .locals 1
    .param p1, "sequenceNumber"    # I
    .param p2, "sessionExtras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2168
    iget-object v0, p0, Landroidx/media3/session/MediaSessionStub$Controller2Cb;->iController:Landroidx/media3/session/IMediaController;

    invoke-interface {v0, p1, p2}, Landroidx/media3/session/IMediaController;->onExtrasChanged(ILandroid/os/Bundle;)V

    .line 2169
    return-void
.end method

.method public onSessionResult(ILandroidx/media3/session/SessionResult;)V
    .locals 2
    .param p1, "sequenceNumber"    # I
    .param p2, "result"    # Landroidx/media3/session/SessionResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2025
    iget-object v0, p0, Landroidx/media3/session/MediaSessionStub$Controller2Cb;->iController:Landroidx/media3/session/IMediaController;

    invoke-virtual {p2}, Landroidx/media3/session/SessionResult;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroidx/media3/session/IMediaController;->onSessionResult(ILandroid/os/Bundle;)V

    .line 2026
    return-void
.end method

.method public sendCustomCommand(ILandroidx/media3/session/SessionCommand;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "sequenceNumber"    # I
    .param p2, "command"    # Landroidx/media3/session/SessionCommand;
    .param p3, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2119
    iget-object v0, p0, Landroidx/media3/session/MediaSessionStub$Controller2Cb;->iController:Landroidx/media3/session/IMediaController;

    invoke-virtual {p2}, Landroidx/media3/session/SessionCommand;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-interface {v0, p1, v1, p3}, Landroidx/media3/session/IMediaController;->onCustomCommand(ILandroid/os/Bundle;Landroid/os/Bundle;)V

    .line 2120
    return-void
.end method

.method public setCustomLayout(ILjava/util/List;)V
    .locals 2
    .param p1, "sequenceNumber"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroidx/media3/session/CommandButton;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2075
    .local p2, "layout":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/session/CommandButton;>;"
    iget-object v0, p0, Landroidx/media3/session/MediaSessionStub$Controller2Cb;->iController:Landroidx/media3/session/IMediaController;

    new-instance v1, Landroidx/media3/session/ConnectionState$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Landroidx/media3/session/ConnectionState$$ExternalSyntheticLambda3;-><init>()V

    .line 2076
    invoke-static {p2, v1}, Landroidx/media3/common/util/BundleCollectionUtil;->toBundleList(Ljava/util/List;Lcom/google/common/base/Function;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    .line 2075
    invoke-interface {v0, p1, v1}, Landroidx/media3/session/IMediaController;->onSetCustomLayout(ILjava/util/List;)V

    .line 2077
    return-void
.end method

.method public setMediaButtonPreferences(ILjava/util/List;)V
    .locals 2
    .param p1, "sequenceNumber"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroidx/media3/session/CommandButton;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2082
    .local p2, "mediaButtonPreferences":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/session/CommandButton;>;"
    iget v0, p0, Landroidx/media3/session/MediaSessionStub$Controller2Cb;->controllerInterfaceVersion:I

    const/4 v1, 0x7

    if-lt v0, v1, :cond_0

    .line 2083
    iget-object v0, p0, Landroidx/media3/session/MediaSessionStub$Controller2Cb;->iController:Landroidx/media3/session/IMediaController;

    new-instance v1, Landroidx/media3/session/ConnectionState$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Landroidx/media3/session/ConnectionState$$ExternalSyntheticLambda3;-><init>()V

    .line 2085
    invoke-static {p2, v1}, Landroidx/media3/common/util/BundleCollectionUtil;->toBundleList(Ljava/util/List;Lcom/google/common/base/Function;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    .line 2083
    invoke-interface {v0, p1, v1}, Landroidx/media3/session/IMediaController;->onSetMediaButtonPreferences(ILjava/util/List;)V

    goto :goto_0

    .line 2089
    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaSessionStub$Controller2Cb;->iController:Landroidx/media3/session/IMediaController;

    new-instance v1, Landroidx/media3/session/ConnectionState$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Landroidx/media3/session/ConnectionState$$ExternalSyntheticLambda3;-><init>()V

    .line 2091
    invoke-static {p2, v1}, Landroidx/media3/common/util/BundleCollectionUtil;->toBundleList(Ljava/util/List;Lcom/google/common/base/Function;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    .line 2089
    invoke-interface {v0, p1, v1}, Landroidx/media3/session/IMediaController;->onSetCustomLayout(ILjava/util/List;)V

    .line 2093
    :goto_0
    return-void
.end method
