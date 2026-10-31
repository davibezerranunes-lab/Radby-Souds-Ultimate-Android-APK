.class public final Lcom/muzk/app/playback/PlayerViewModel$listener$1;
.super Ljava/lang/Object;
.source "PlayerViewModel.kt"

# interfaces
.implements Landroidx/media3/common/Player$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muzk/app/playback/PlayerViewModel;-><init>(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/muzk/app/playback/PlayerViewModel$listener$1",
        "Landroidx/media3/common/Player$Listener;",
        "onEvents",
        "",
        "player",
        "Landroidx/media3/common/Player;",
        "events",
        "Landroidx/media3/common/Player$Events;",
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
.field final synthetic this$0:Lcom/muzk/app/playback/PlayerViewModel;


# direct methods
.method constructor <init>(Lcom/muzk/app/playback/PlayerViewModel;)V
    .locals 0
    .param p1, "$receiver"    # Lcom/muzk/app/playback/PlayerViewModel;

    iput-object p1, p0, Lcom/muzk/app/playback/PlayerViewModel$listener$1;->this$0:Lcom/muzk/app/playback/PlayerViewModel;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvents(Landroidx/media3/common/Player;Landroidx/media3/common/Player$Events;)V
    .locals 1
    .param p1, "player"    # Landroidx/media3/common/Player;
    .param p2, "events"    # Landroidx/media3/common/Player$Events;

    const-string v0, "player"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "events"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/muzk/app/playback/PlayerViewModel$listener$1;->this$0:Lcom/muzk/app/playback/PlayerViewModel;

    invoke-static {v0, p1}, Lcom/muzk/app/playback/PlayerViewModel;->access$sync(Lcom/muzk/app/playback/PlayerViewModel;Landroidx/media3/common/Player;)V

    return-void
.end method
