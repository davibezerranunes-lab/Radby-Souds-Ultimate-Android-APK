.class final Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCb;
.super Ljava/lang/Object;
.source "MediaSessionLegacyStub.java"

# interfaces
.implements Landroidx/media3/session/MediaSession$ControllerCb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/session/MediaSessionLegacyStub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ControllerLegacyCb"
.end annotation


# instance fields
.field private final remoteUserInfo:Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;


# direct methods
.method public constructor <init>(Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;)V
    .locals 0
    .param p1, "remoteUserInfo"    # Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;

    .line 1014
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1015
    iput-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCb;->remoteUserInfo:Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;

    .line 1016
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 1025
    if-ne p0, p1, :cond_0

    .line 1026
    const/4 v0, 0x1

    return v0

    .line 1028
    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCb;

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 1031
    :cond_1
    move-object v0, p1

    check-cast v0, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCb;

    .line 1032
    .local v0, "other":Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCb;
    iget-object v1, p0, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCb;->remoteUserInfo:Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;

    iget-object v2, v0, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCb;->remoteUserInfo:Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;

    invoke-static {v1, v2}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 1029
    .end local v0    # "other":Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCb;
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 1020
    iget-object v0, p0, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCb;->remoteUserInfo:Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/util/ObjectsCompat;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
