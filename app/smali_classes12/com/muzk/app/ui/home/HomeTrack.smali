.class public final Lcom/muzk/app/ui/home/HomeTrack;
.super Ljava/lang/Object;
.source "HomeViewModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\n\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\t\u0010\u000c\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\r\u001a\u00020\u0005H\u00c6\u0003J\u001d\u0010\u000e\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0012\u001a\u00020\u0005H\u00d6\u0001J\t\u0010\u0013\u001a\u00020\u0014H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/muzk/app/ui/home/HomeTrack;",
        "",
        "track",
        "Lcom/muzk/app/data/LocalTrack;",
        "plays",
        "",
        "<init>",
        "(Lcom/muzk/app/data/LocalTrack;I)V",
        "getTrack",
        "()Lcom/muzk/app/data/LocalTrack;",
        "getPlays",
        "()I",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "toString",
        "",
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
.field private final plays:I

.field private final track:Lcom/muzk/app/data/LocalTrack;


# direct methods
.method public constructor <init>(Lcom/muzk/app/data/LocalTrack;I)V
    .locals 1
    .param p1, "track"    # Lcom/muzk/app/data/LocalTrack;
    .param p2, "plays"    # I

    const-string v0, "track"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/muzk/app/ui/home/HomeTrack;->track:Lcom/muzk/app/data/LocalTrack;

    iput p2, p0, Lcom/muzk/app/ui/home/HomeTrack;->plays:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/muzk/app/ui/home/HomeTrack;Lcom/muzk/app/data/LocalTrack;IILjava/lang/Object;)Lcom/muzk/app/ui/home/HomeTrack;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/muzk/app/ui/home/HomeTrack;->track:Lcom/muzk/app/data/LocalTrack;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget p2, p0, Lcom/muzk/app/ui/home/HomeTrack;->plays:I

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/muzk/app/ui/home/HomeTrack;->copy(Lcom/muzk/app/data/LocalTrack;I)Lcom/muzk/app/ui/home/HomeTrack;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/muzk/app/data/LocalTrack;
    .locals 1

    iget-object v0, p0, Lcom/muzk/app/ui/home/HomeTrack;->track:Lcom/muzk/app/data/LocalTrack;

    return-object v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/muzk/app/ui/home/HomeTrack;->plays:I

    return v0
.end method

.method public final copy(Lcom/muzk/app/data/LocalTrack;I)Lcom/muzk/app/ui/home/HomeTrack;
    .locals 1

    const-string v0, "track"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/muzk/app/ui/home/HomeTrack;

    invoke-direct {v0, p1, p2}, Lcom/muzk/app/ui/home/HomeTrack;-><init>(Lcom/muzk/app/data/LocalTrack;I)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/muzk/app/ui/home/HomeTrack;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/muzk/app/ui/home/HomeTrack;

    iget-object v3, p0, Lcom/muzk/app/ui/home/HomeTrack;->track:Lcom/muzk/app/data/LocalTrack;

    iget-object v4, v1, Lcom/muzk/app/ui/home/HomeTrack;->track:Lcom/muzk/app/data/LocalTrack;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return v2

    :cond_2
    iget v3, p0, Lcom/muzk/app/ui/home/HomeTrack;->plays:I

    iget v1, v1, Lcom/muzk/app/ui/home/HomeTrack;->plays:I

    if-eq v3, v1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getPlays()I
    .locals 1

    .line 29
    iget v0, p0, Lcom/muzk/app/ui/home/HomeTrack;->plays:I

    return v0
.end method

.method public final getTrack()Lcom/muzk/app/data/LocalTrack;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/muzk/app/ui/home/HomeTrack;->track:Lcom/muzk/app/data/LocalTrack;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/muzk/app/ui/home/HomeTrack;->track:Lcom/muzk/app/data/LocalTrack;

    invoke-virtual {v0}, Lcom/muzk/app/data/LocalTrack;->hashCode()I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/muzk/app/ui/home/HomeTrack;->plays:I

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/muzk/app/ui/home/HomeTrack;->track:Lcom/muzk/app/data/LocalTrack;

    iget v1, p0, Lcom/muzk/app/ui/home/HomeTrack;->plays:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HomeTrack(track="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", plays="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
