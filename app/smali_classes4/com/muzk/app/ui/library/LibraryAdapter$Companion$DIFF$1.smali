.class public final Lcom/muzk/app/ui/library/LibraryAdapter$Companion$DIFF$1;
.super Landroidx/recyclerview/widget/DiffUtil$ItemCallback;
.source "LibraryAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/muzk/app/ui/library/LibraryAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/DiffUtil$ItemCallback<",
        "Lcom/muzk/app/ui/library/LibraryRow;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0002H\u0016J\u0018\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0002H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/muzk/app/ui/library/LibraryAdapter$Companion$DIFF$1",
        "Landroidx/recyclerview/widget/DiffUtil$ItemCallback;",
        "Lcom/muzk/app/ui/library/LibraryRow;",
        "areItemsTheSame",
        "",
        "a",
        "b",
        "areContentsTheSame",
        "app_debug"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 108
    invoke-direct {p0}, Landroidx/recyclerview/widget/DiffUtil$ItemCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public areContentsTheSame(Lcom/muzk/app/ui/library/LibraryRow;Lcom/muzk/app/ui/library/LibraryRow;)Z
    .locals 1
    .param p1, "a"    # Lcom/muzk/app/ui/library/LibraryRow;
    .param p2, "b"    # Lcom/muzk/app/ui/library/LibraryRow;

    const-string v0, "a"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "b"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "p0"    # Ljava/lang/Object;
    .param p2, "p1"    # Ljava/lang/Object;

    .line 108
    move-object v0, p1

    check-cast v0, Lcom/muzk/app/ui/library/LibraryRow;

    move-object v1, p2

    check-cast v1, Lcom/muzk/app/ui/library/LibraryRow;

    invoke-virtual {p0, v0, v1}, Lcom/muzk/app/ui/library/LibraryAdapter$Companion$DIFF$1;->areContentsTheSame(Lcom/muzk/app/ui/library/LibraryRow;Lcom/muzk/app/ui/library/LibraryRow;)Z

    move-result v0

    return v0
.end method

.method public areItemsTheSame(Lcom/muzk/app/ui/library/LibraryRow;Lcom/muzk/app/ui/library/LibraryRow;)Z
    .locals 7
    .param p1, "a"    # Lcom/muzk/app/ui/library/LibraryRow;
    .param p2, "b"    # Lcom/muzk/app/ui/library/LibraryRow;

    const-string v0, "a"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "b"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    nop

    .line 110
    instance-of v0, p1, Lcom/muzk/app/ui/library/LibraryRow$Header;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    instance-of v0, p2, Lcom/muzk/app/ui/library/LibraryRow$Header;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 111
    :cond_0
    instance-of v0, p1, Lcom/muzk/app/ui/library/LibraryRow$Track;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    instance-of v0, p2, Lcom/muzk/app/ui/library/LibraryRow$Track;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/muzk/app/ui/library/LibraryRow$Track;

    invoke-virtual {v0}, Lcom/muzk/app/ui/library/LibraryRow$Track;->getTrack()Lcom/muzk/app/data/LocalTrack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/muzk/app/data/LocalTrack;->getId()J

    move-result-wide v3

    move-object v0, p2

    check-cast v0, Lcom/muzk/app/ui/library/LibraryRow$Track;

    invoke-virtual {v0}, Lcom/muzk/app/ui/library/LibraryRow$Track;->getTrack()Lcom/muzk/app/data/LocalTrack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/muzk/app/data/LocalTrack;->getId()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_0

    .line 112
    :cond_2
    instance-of v0, p1, Lcom/muzk/app/ui/library/LibraryRow$Folder;

    if-eqz v0, :cond_3

    instance-of v0, p2, Lcom/muzk/app/ui/library/LibraryRow$Folder;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Lcom/muzk/app/ui/library/LibraryRow$Folder;

    invoke-virtual {v0}, Lcom/muzk/app/ui/library/LibraryRow$Folder;->getPath()Ljava/lang/String;

    move-result-object v0

    move-object v1, p2

    check-cast v1, Lcom/muzk/app/ui/library/LibraryRow$Folder;

    invoke-virtual {v1}, Lcom/muzk/app/ui/library/LibraryRow$Folder;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 113
    :cond_3
    instance-of v0, p1, Lcom/muzk/app/ui/library/LibraryRow$PlaylistItem;

    if-eqz v0, :cond_4

    instance-of v0, p2, Lcom/muzk/app/ui/library/LibraryRow$PlaylistItem;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/muzk/app/ui/library/LibraryRow$PlaylistItem;

    invoke-virtual {v0}, Lcom/muzk/app/ui/library/LibraryRow$PlaylistItem;->getPlaylist()Lcom/muzk/app/data/Playlist;

    move-result-object v0

    invoke-virtual {v0}, Lcom/muzk/app/data/Playlist;->getId()Ljava/lang/String;

    move-result-object v0

    move-object v1, p2

    check-cast v1, Lcom/muzk/app/ui/library/LibraryRow$PlaylistItem;

    invoke-virtual {v1}, Lcom/muzk/app/ui/library/LibraryRow$PlaylistItem;->getPlaylist()Lcom/muzk/app/data/Playlist;

    move-result-object v1

    invoke-virtual {v1}, Lcom/muzk/app/data/Playlist;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 114
    :cond_4
    move v1, v2

    .line 115
    :goto_0
    return v1
.end method

.method public bridge synthetic areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "p0"    # Ljava/lang/Object;
    .param p2, "p1"    # Ljava/lang/Object;

    .line 108
    move-object v0, p1

    check-cast v0, Lcom/muzk/app/ui/library/LibraryRow;

    move-object v1, p2

    check-cast v1, Lcom/muzk/app/ui/library/LibraryRow;

    invoke-virtual {p0, v0, v1}, Lcom/muzk/app/ui/library/LibraryAdapter$Companion$DIFF$1;->areItemsTheSame(Lcom/muzk/app/ui/library/LibraryRow;Lcom/muzk/app/ui/library/LibraryRow;)Z

    move-result v0

    return v0
.end method
