.class public final synthetic Lcom/muzk/app/playback/PlayerViewModel$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Landroidx/media3/common/MediaItem;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/common/MediaItem;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/muzk/app/playback/PlayerViewModel$$ExternalSyntheticLambda1;->f$0:Landroidx/media3/common/MediaItem;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/muzk/app/playback/PlayerViewModel$$ExternalSyntheticLambda1;->f$0:Landroidx/media3/common/MediaItem;

    check-cast p1, Landroidx/media3/session/MediaController;

    invoke-static {v0, p1}, Lcom/muzk/app/playback/PlayerViewModel;->$r8$lambda$C-HZc3KhB4q-0mDKDwLfiV6-c6M(Landroidx/media3/common/MediaItem;Landroidx/media3/session/MediaController;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
