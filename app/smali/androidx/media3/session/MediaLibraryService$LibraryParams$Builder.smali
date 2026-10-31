.class public final Landroidx/media3/session/MediaLibraryService$LibraryParams$Builder;
.super Ljava/lang/Object;
.source "MediaLibraryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/session/MediaLibraryService$LibraryParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private extras:Landroid/os/Bundle;

.field private offline:Z

.field private recent:Z

.field private suggested:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 943
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 944
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    iput-object v0, p0, Landroidx/media3/session/MediaLibraryService$LibraryParams$Builder;->extras:Landroid/os/Bundle;

    .line 945
    return-void
.end method


# virtual methods
.method public build()Landroidx/media3/session/MediaLibraryService$LibraryParams;
    .locals 7

    .line 978
    new-instance v6, Landroidx/media3/session/MediaLibraryService$LibraryParams;

    iget-object v1, p0, Landroidx/media3/session/MediaLibraryService$LibraryParams$Builder;->extras:Landroid/os/Bundle;

    iget-boolean v2, p0, Landroidx/media3/session/MediaLibraryService$LibraryParams$Builder;->recent:Z

    iget-boolean v3, p0, Landroidx/media3/session/MediaLibraryService$LibraryParams$Builder;->offline:Z

    iget-boolean v4, p0, Landroidx/media3/session/MediaLibraryService$LibraryParams$Builder;->suggested:Z

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroidx/media3/session/MediaLibraryService$LibraryParams;-><init>(Landroid/os/Bundle;ZZZLandroidx/media3/session/MediaLibraryService$1;)V

    return-object v6
.end method

.method public setExtras(Landroid/os/Bundle;)Landroidx/media3/session/MediaLibraryService$LibraryParams$Builder;
    .locals 1
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 972
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    iput-object v0, p0, Landroidx/media3/session/MediaLibraryService$LibraryParams$Builder;->extras:Landroid/os/Bundle;

    .line 973
    return-object p0
.end method

.method public setOffline(Z)Landroidx/media3/session/MediaLibraryService$LibraryParams$Builder;
    .locals 0
    .param p1, "offline"    # Z

    .line 957
    iput-boolean p1, p0, Landroidx/media3/session/MediaLibraryService$LibraryParams$Builder;->offline:Z

    .line 958
    return-object p0
.end method

.method public setRecent(Z)Landroidx/media3/session/MediaLibraryService$LibraryParams$Builder;
    .locals 0
    .param p1, "recent"    # Z

    .line 950
    iput-boolean p1, p0, Landroidx/media3/session/MediaLibraryService$LibraryParams$Builder;->recent:Z

    .line 951
    return-object p0
.end method

.method public setSuggested(Z)Landroidx/media3/session/MediaLibraryService$LibraryParams$Builder;
    .locals 0
    .param p1, "suggested"    # Z

    .line 964
    iput-boolean p1, p0, Landroidx/media3/session/MediaLibraryService$LibraryParams$Builder;->suggested:Z

    .line 965
    return-object p0
.end method
