.class public final Lcom/muzk/app/ui/search/SearchEvent$Play;
.super Ljava/lang/Object;
.source "SearchViewModel.kt"

# interfaces
.implements Lcom/muzk/app/ui/search/SearchEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/muzk/app/ui/search/SearchEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Play"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\n\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\t\u0010\u000c\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\r\u001a\u00020\u0005H\u00c6\u0003J\u001d\u0010\u000e\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u00d6\u0003J\t\u0010\u0013\u001a\u00020\u0014H\u00d6\u0001J\t\u0010\u0015\u001a\u00020\u0005H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/muzk/app/ui/search/SearchEvent$Play;",
        "Lcom/muzk/app/ui/search/SearchEvent;",
        "track",
        "Lcom/muzk/app/data/RemoteTrack;",
        "streamUrl",
        "",
        "<init>",
        "(Lcom/muzk/app/data/RemoteTrack;Ljava/lang/String;)V",
        "getTrack",
        "()Lcom/muzk/app/data/RemoteTrack;",
        "getStreamUrl",
        "()Ljava/lang/String;",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "toString",
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


# instance fields
.field private final streamUrl:Ljava/lang/String;

.field private final track:Lcom/muzk/app/data/RemoteTrack;


# direct methods
.method public constructor <init>(Lcom/muzk/app/data/RemoteTrack;Ljava/lang/String;)V
    .locals 1
    .param p1, "track"    # Lcom/muzk/app/data/RemoteTrack;
    .param p2, "streamUrl"    # Ljava/lang/String;

    const-string v0, "track"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "streamUrl"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/muzk/app/ui/search/SearchEvent$Play;->track:Lcom/muzk/app/data/RemoteTrack;

    iput-object p2, p0, Lcom/muzk/app/ui/search/SearchEvent$Play;->streamUrl:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/muzk/app/ui/search/SearchEvent$Play;Lcom/muzk/app/data/RemoteTrack;Ljava/lang/String;ILjava/lang/Object;)Lcom/muzk/app/ui/search/SearchEvent$Play;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/muzk/app/ui/search/SearchEvent$Play;->track:Lcom/muzk/app/data/RemoteTrack;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/muzk/app/ui/search/SearchEvent$Play;->streamUrl:Ljava/lang/String;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/muzk/app/ui/search/SearchEvent$Play;->copy(Lcom/muzk/app/data/RemoteTrack;Ljava/lang/String;)Lcom/muzk/app/ui/search/SearchEvent$Play;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/muzk/app/data/RemoteTrack;
    .locals 1

    iget-object v0, p0, Lcom/muzk/app/ui/search/SearchEvent$Play;->track:Lcom/muzk/app/data/RemoteTrack;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/muzk/app/ui/search/SearchEvent$Play;->streamUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Lcom/muzk/app/data/RemoteTrack;Ljava/lang/String;)Lcom/muzk/app/ui/search/SearchEvent$Play;
    .locals 1

    const-string v0, "track"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "streamUrl"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/muzk/app/ui/search/SearchEvent$Play;

    invoke-direct {v0, p1, p2}, Lcom/muzk/app/ui/search/SearchEvent$Play;-><init>(Lcom/muzk/app/data/RemoteTrack;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/muzk/app/ui/search/SearchEvent$Play;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/muzk/app/ui/search/SearchEvent$Play;

    iget-object v3, p0, Lcom/muzk/app/ui/search/SearchEvent$Play;->track:Lcom/muzk/app/data/RemoteTrack;

    iget-object v4, v1, Lcom/muzk/app/ui/search/SearchEvent$Play;->track:Lcom/muzk/app/data/RemoteTrack;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return v2

    :cond_2
    iget-object v3, p0, Lcom/muzk/app/ui/search/SearchEvent$Play;->streamUrl:Ljava/lang/String;

    iget-object v1, v1, Lcom/muzk/app/ui/search/SearchEvent$Play;->streamUrl:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getStreamUrl()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/muzk/app/ui/search/SearchEvent$Play;->streamUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getTrack()Lcom/muzk/app/data/RemoteTrack;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/muzk/app/ui/search/SearchEvent$Play;->track:Lcom/muzk/app/data/RemoteTrack;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/muzk/app/ui/search/SearchEvent$Play;->track:Lcom/muzk/app/data/RemoteTrack;

    invoke-virtual {v0}, Lcom/muzk/app/data/RemoteTrack;->hashCode()I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/muzk/app/ui/search/SearchEvent$Play;->streamUrl:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/muzk/app/ui/search/SearchEvent$Play;->track:Lcom/muzk/app/data/RemoteTrack;

    iget-object v1, p0, Lcom/muzk/app/ui/search/SearchEvent$Play;->streamUrl:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Play(track="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", streamUrl="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
