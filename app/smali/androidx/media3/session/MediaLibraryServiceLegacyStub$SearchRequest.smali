.class Landroidx/media3/session/MediaLibraryServiceLegacyStub$SearchRequest;
.super Ljava/lang/Object;
.source "MediaLibraryServiceLegacyStub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/session/MediaLibraryServiceLegacyStub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SearchRequest"
.end annotation


# instance fields
.field public final controller:Landroidx/media3/session/MediaSession$ControllerInfo;

.field public final extras:Landroid/os/Bundle;

.field public final query:Ljava/lang/String;

.field public final remoteUserInfo:Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;

.field public final result:Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result<",
            "Ljava/util/List<",
            "Landroidx/media3/session/legacy/MediaBrowserCompat$MediaItem;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;Ljava/lang/String;Landroid/os/Bundle;Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;)V
    .locals 0
    .param p1, "controller"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p2, "remoteUserInfo"    # Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;
    .param p3, "query"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/session/MediaSession$ControllerInfo;",
            "Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result<",
            "Ljava/util/List<",
            "Landroidx/media3/session/legacy/MediaBrowserCompat$MediaItem;",
            ">;>;)V"
        }
    .end annotation

    .line 582
    .local p5, "result":Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;, "Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result<Ljava/util/List<Landroidx/media3/session/legacy/MediaBrowserCompat$MediaItem;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 583
    iput-object p1, p0, Landroidx/media3/session/MediaLibraryServiceLegacyStub$SearchRequest;->controller:Landroidx/media3/session/MediaSession$ControllerInfo;

    .line 584
    iput-object p2, p0, Landroidx/media3/session/MediaLibraryServiceLegacyStub$SearchRequest;->remoteUserInfo:Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;

    .line 585
    iput-object p3, p0, Landroidx/media3/session/MediaLibraryServiceLegacyStub$SearchRequest;->query:Ljava/lang/String;

    .line 586
    iput-object p4, p0, Landroidx/media3/session/MediaLibraryServiceLegacyStub$SearchRequest;->extras:Landroid/os/Bundle;

    .line 587
    iput-object p5, p0, Landroidx/media3/session/MediaLibraryServiceLegacyStub$SearchRequest;->result:Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;

    .line 588
    return-void
.end method
