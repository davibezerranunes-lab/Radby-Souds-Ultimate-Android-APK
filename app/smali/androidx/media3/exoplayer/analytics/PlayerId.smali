.class public final Landroidx/media3/exoplayer/analytics/PlayerId;
.super Ljava/lang/Object;
.source "PlayerId.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/analytics/PlayerId$LogSessionIdApi31;
    }
.end annotation


# static fields
.field public static final UNSET:Landroidx/media3/exoplayer/analytics/PlayerId;


# instance fields
.field private final equalityToken:Ljava/lang/Object;

.field private final logSessionIdApi31:Landroidx/media3/exoplayer/analytics/PlayerId$LogSessionIdApi31;

.field public final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 37
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x1f

    const-string v2, ""

    if-ge v0, v1, :cond_0

    .line 38
    new-instance v0, Landroidx/media3/exoplayer/analytics/PlayerId;

    invoke-direct {v0, v2}, Landroidx/media3/exoplayer/analytics/PlayerId;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 39
    :cond_0
    new-instance v0, Landroidx/media3/exoplayer/analytics/PlayerId;

    sget-object v1, Landroidx/media3/exoplayer/analytics/PlayerId$LogSessionIdApi31;->UNSET:Landroidx/media3/exoplayer/analytics/PlayerId$LogSessionIdApi31;

    invoke-direct {v0, v1, v2}, Landroidx/media3/exoplayer/analytics/PlayerId;-><init>(Landroidx/media3/exoplayer/analytics/PlayerId$LogSessionIdApi31;Ljava/lang/String;)V

    :goto_0
    sput-object v0, Landroidx/media3/exoplayer/analytics/PlayerId;->UNSET:Landroidx/media3/exoplayer/analytics/PlayerId;

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/media/metrics/LogSessionId;Ljava/lang/String;)V
    .locals 1
    .param p1, "logSessionId"    # Landroid/media/metrics/LogSessionId;
    .param p2, "playerName"    # Ljava/lang/String;

    .line 74
    new-instance v0, Landroidx/media3/exoplayer/analytics/PlayerId$LogSessionIdApi31;

    invoke-direct {v0, p1}, Landroidx/media3/exoplayer/analytics/PlayerId$LogSessionIdApi31;-><init>(Landroid/media/metrics/LogSessionId;)V

    invoke-direct {p0, v0, p2}, Landroidx/media3/exoplayer/analytics/PlayerId;-><init>(Landroidx/media3/exoplayer/analytics/PlayerId$LogSessionIdApi31;Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method private constructor <init>(Landroidx/media3/exoplayer/analytics/PlayerId$LogSessionIdApi31;Ljava/lang/String;)V
    .locals 1
    .param p1, "logSessionIdApi31"    # Landroidx/media3/exoplayer/analytics/PlayerId$LogSessionIdApi31;
    .param p2, "playerName"    # Ljava/lang/String;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Landroidx/media3/exoplayer/analytics/PlayerId;->logSessionIdApi31:Landroidx/media3/exoplayer/analytics/PlayerId$LogSessionIdApi31;

    .line 79
    iput-object p2, p0, Landroidx/media3/exoplayer/analytics/PlayerId;->name:Ljava/lang/String;

    .line 80
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/analytics/PlayerId;->equalityToken:Ljava/lang/Object;

    .line 81
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "playerName"    # Ljava/lang/String;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x1f

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 61
    iput-object p1, p0, Landroidx/media3/exoplayer/analytics/PlayerId;->name:Ljava/lang/String;

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/exoplayer/analytics/PlayerId;->logSessionIdApi31:Landroidx/media3/exoplayer/analytics/PlayerId$LogSessionIdApi31;

    .line 63
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/analytics/PlayerId;->equalityToken:Ljava/lang/Object;

    .line 64
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 85
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 86
    return v0

    .line 88
    :cond_0
    instance-of v1, p1, Landroidx/media3/exoplayer/analytics/PlayerId;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 89
    return v2

    .line 91
    :cond_1
    move-object v1, p1

    check-cast v1, Landroidx/media3/exoplayer/analytics/PlayerId;

    .line 92
    .local v1, "playerId":Landroidx/media3/exoplayer/analytics/PlayerId;
    iget-object v3, p0, Landroidx/media3/exoplayer/analytics/PlayerId;->name:Ljava/lang/String;

    iget-object v4, v1, Landroidx/media3/exoplayer/analytics/PlayerId;->name:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroidx/media3/exoplayer/analytics/PlayerId;->logSessionIdApi31:Landroidx/media3/exoplayer/analytics/PlayerId$LogSessionIdApi31;

    iget-object v4, v1, Landroidx/media3/exoplayer/analytics/PlayerId;->logSessionIdApi31:Landroidx/media3/exoplayer/analytics/PlayerId$LogSessionIdApi31;

    .line 93
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroidx/media3/exoplayer/analytics/PlayerId;->equalityToken:Ljava/lang/Object;

    iget-object v4, v1, Landroidx/media3/exoplayer/analytics/PlayerId;->equalityToken:Ljava/lang/Object;

    .line 94
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 92
    :goto_0
    return v0
.end method

.method public getLogSessionId()Landroid/media/metrics/LogSessionId;
    .locals 1

    .line 105
    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/PlayerId;->logSessionIdApi31:Landroidx/media3/exoplayer/analytics/PlayerId$LogSessionIdApi31;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/analytics/PlayerId$LogSessionIdApi31;

    iget-object v0, v0, Landroidx/media3/exoplayer/analytics/PlayerId$LogSessionIdApi31;->logSessionId:Landroid/media/metrics/LogSessionId;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 99
    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/PlayerId;->name:Ljava/lang/String;

    iget-object v1, p0, Landroidx/media3/exoplayer/analytics/PlayerId;->logSessionIdApi31:Landroidx/media3/exoplayer/analytics/PlayerId$LogSessionIdApi31;

    iget-object v2, p0, Landroidx/media3/exoplayer/analytics/PlayerId;->equalityToken:Ljava/lang/Object;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
