.class public final synthetic Lcom/muzk/app/playback/PlayerViewModel$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:J


# direct methods
.method public synthetic constructor <init>(J)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/muzk/app/playback/PlayerViewModel$$ExternalSyntheticLambda7;->f$0:J

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/muzk/app/playback/PlayerViewModel$$ExternalSyntheticLambda7;->f$0:J

    check-cast p1, Landroidx/media3/session/MediaController;

    invoke-static {v0, v1, p1}, Lcom/muzk/app/playback/PlayerViewModel;->$r8$lambda$EpTpKaW1N5M8Frrp0oNvYeXfmPc(JLandroidx/media3/session/MediaController;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
