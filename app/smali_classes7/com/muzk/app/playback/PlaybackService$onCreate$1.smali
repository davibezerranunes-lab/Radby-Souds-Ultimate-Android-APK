.class public final Lcom/muzk/app/playback/PlaybackService$onCreate$1;
.super Ljava/lang/Object;
.source "PlaybackService.kt"

# interfaces
.implements Landroidx/media3/common/Player$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muzk/app/playback/PlaybackService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPlaybackService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PlaybackService.kt\ncom/muzk/app/playback/PlaybackService$onCreate$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,136:1\n1#2:137\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001a\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/muzk/app/playback/PlaybackService$onCreate$1",
        "Landroidx/media3/common/Player$Listener;",
        "onMediaItemTransition",
        "",
        "mediaItem",
        "Landroidx/media3/common/MediaItem;",
        "reason",
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
.field final synthetic $stats:Lcom/muzk/app/data/PlayStats;


# direct methods
.method constructor <init>(Lcom/muzk/app/data/PlayStats;)V
    .locals 0
    .param p1, "$stats"    # Lcom/muzk/app/data/PlayStats;

    iput-object p1, p0, Lcom/muzk/app/playback/PlaybackService$onCreate$1;->$stats:Lcom/muzk/app/data/PlayStats;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMediaItemTransition(Landroidx/media3/common/MediaItem;I)V
    .locals 4
    .param p1, "mediaItem"    # Landroidx/media3/common/MediaItem;
    .param p2, "reason"    # I

    .line 44
    if-eqz p1, :cond_0

    iget-object v0, p1, Landroidx/media3/common/MediaItem;->mediaId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/muzk/app/playback/PlaybackService$onCreate$1;->$stats:Lcom/muzk/app/data/PlayStats;

    .line 137
    .local v0, "p0":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "$i$f$onMediaItemTransition$stub_for_inlining":I
    const/4 v3, 0x0

    .line 44
    .local v3, "$i$a$-let-PlaybackService$onCreate$1$onMediaItemTransition$1":I
    invoke-virtual {v1, v0}, Lcom/muzk/app/data/PlayStats;->record(Ljava/lang/String;)V

    .line 45
    .end local v0    # "p0":Ljava/lang/String;
    .end local v2    # "$i$f$onMediaItemTransition$stub_for_inlining":I
    .end local v3    # "$i$a$-let-PlaybackService$onCreate$1$onMediaItemTransition$1":I
    :cond_0
    return-void
.end method
