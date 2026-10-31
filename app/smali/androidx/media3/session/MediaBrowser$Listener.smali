.class public interface abstract Landroidx/media3/session/MediaBrowser$Listener;
.super Ljava/lang/Object;
.source "MediaBrowser.java"

# interfaces
.implements Landroidx/media3/session/MediaController$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/session/MediaBrowser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public onChildrenChanged(Landroidx/media3/session/MediaBrowser;Ljava/lang/String;ILandroidx/media3/session/MediaLibraryService$LibraryParams;)V
    .locals 0
    .param p1, "browser"    # Landroidx/media3/session/MediaBrowser;
    .param p2, "parentId"    # Ljava/lang/String;
    .param p3, "itemCount"    # I
    .param p4, "params"    # Landroidx/media3/session/MediaLibraryService$LibraryParams;

    .line 235
    return-void
.end method

.method public onSearchResultChanged(Landroidx/media3/session/MediaBrowser;Ljava/lang/String;ILandroidx/media3/session/MediaLibraryService$LibraryParams;)V
    .locals 0
    .param p1, "browser"    # Landroidx/media3/session/MediaBrowser;
    .param p2, "query"    # Ljava/lang/String;
    .param p3, "itemCount"    # I
    .param p4, "params"    # Landroidx/media3/session/MediaLibraryService$LibraryParams;

    .line 252
    return-void
.end method
