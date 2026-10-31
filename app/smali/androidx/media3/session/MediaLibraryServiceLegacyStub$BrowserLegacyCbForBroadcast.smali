.class final Landroidx/media3/session/MediaLibraryServiceLegacyStub$BrowserLegacyCbForBroadcast;
.super Ljava/lang/Object;
.source "MediaLibraryServiceLegacyStub.java"

# interfaces
.implements Landroidx/media3/session/MediaSession$ControllerCb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/session/MediaLibraryServiceLegacyStub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BrowserLegacyCbForBroadcast"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media3/session/MediaLibraryServiceLegacyStub;


# direct methods
.method private constructor <init>(Landroidx/media3/session/MediaLibraryServiceLegacyStub;)V
    .locals 0

    .line 702
    iput-object p1, p0, Landroidx/media3/session/MediaLibraryServiceLegacyStub$BrowserLegacyCbForBroadcast;->this$0:Landroidx/media3/session/MediaLibraryServiceLegacyStub;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/session/MediaLibraryServiceLegacyStub;Landroidx/media3/session/MediaLibraryServiceLegacyStub$1;)V
    .locals 0
    .param p1, "x0"    # Landroidx/media3/session/MediaLibraryServiceLegacyStub;
    .param p2, "x1"    # Landroidx/media3/session/MediaLibraryServiceLegacyStub$1;

    .line 702
    invoke-direct {p0, p1}, Landroidx/media3/session/MediaLibraryServiceLegacyStub$BrowserLegacyCbForBroadcast;-><init>(Landroidx/media3/session/MediaLibraryServiceLegacyStub;)V

    return-void
.end method


# virtual methods
.method public onChildrenChanged(ILjava/lang/String;ILandroidx/media3/session/MediaLibraryService$LibraryParams;)V
    .locals 2
    .param p1, "seq"    # I
    .param p2, "parentId"    # Ljava/lang/String;
    .param p3, "itemCount"    # I
    .param p4, "libraryParams"    # Landroidx/media3/session/MediaLibraryService$LibraryParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 709
    if-eqz p4, :cond_1

    iget-object v0, p4, Landroidx/media3/session/MediaLibraryService$LibraryParams;->extras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    goto :goto_0

    .line 712
    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaLibraryServiceLegacyStub$BrowserLegacyCbForBroadcast;->this$0:Landroidx/media3/session/MediaLibraryServiceLegacyStub;

    iget-object v1, p4, Landroidx/media3/session/MediaLibraryService$LibraryParams;->extras:Landroid/os/Bundle;

    invoke-static {v1}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    invoke-virtual {v0, p2, v1}, Landroidx/media3/session/MediaLibraryServiceLegacyStub;->notifyChildrenChanged(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1

    .line 710
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/media3/session/MediaLibraryServiceLegacyStub$BrowserLegacyCbForBroadcast;->this$0:Landroidx/media3/session/MediaLibraryServiceLegacyStub;

    invoke-virtual {v0, p2}, Landroidx/media3/session/MediaLibraryServiceLegacyStub;->notifyChildrenChanged(Ljava/lang/String;)V

    .line 714
    :goto_1
    return-void
.end method

.method public onSearchResultChanged(ILjava/lang/String;ILandroidx/media3/session/MediaLibraryService$LibraryParams;)V
    .locals 0
    .param p1, "seq"    # I
    .param p2, "query"    # Ljava/lang/String;
    .param p3, "itemCount"    # I
    .param p4, "params"    # Landroidx/media3/session/MediaLibraryService$LibraryParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 725
    return-void
.end method
