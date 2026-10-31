.class Landroidx/media3/session/legacy/MediaSessionManager$MediaSessionManagerImplApi21;
.super Landroidx/media3/session/legacy/MediaSessionManager$MediaSessionManagerImplBase;
.source "MediaSessionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/session/legacy/MediaSessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MediaSessionManagerImplApi21"
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 379
    invoke-direct {p0, p1}, Landroidx/media3/session/legacy/MediaSessionManager$MediaSessionManagerImplBase;-><init>(Landroid/content/Context;)V

    .line 380
    iput-object p1, p0, Landroidx/media3/session/legacy/MediaSessionManager$MediaSessionManagerImplApi21;->mContext:Landroid/content/Context;

    .line 381
    return-void
.end method

.method private hasMediaControlPermission(Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfoImpl;)Z
    .locals 4
    .param p1, "userInfo"    # Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfoImpl;

    .line 391
    invoke-virtual {p0}, Landroidx/media3/session/legacy/MediaSessionManager$MediaSessionManagerImplApi21;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 394
    invoke-interface {p1}, Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfoImpl;->getPid()I

    move-result v1

    .line 395
    invoke-interface {p1}, Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfoImpl;->getUid()I

    move-result v2

    .line 392
    const-string v3, "android.permission.MEDIA_CONTENT_CONTROL"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 391
    :goto_0
    return v0
.end method


# virtual methods
.method public isTrustedForMediaControl(Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfoImpl;)Z
    .locals 1
    .param p1, "userInfo"    # Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfoImpl;

    .line 386
    invoke-direct {p0, p1}, Landroidx/media3/session/legacy/MediaSessionManager$MediaSessionManagerImplApi21;->hasMediaControlPermission(Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfoImpl;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroidx/media3/session/legacy/MediaSessionManager$MediaSessionManagerImplBase;->isTrustedForMediaControl(Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfoImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
