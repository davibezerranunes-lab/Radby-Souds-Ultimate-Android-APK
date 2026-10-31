.class public final synthetic Lcom/muzk/app/playback/PlayerViewModel$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lcom/muzk/app/playback/PlayerViewModel;

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:I

.field public final synthetic f$3:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/muzk/app/playback/PlayerViewModel;Ljava/util/List;ILjava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/muzk/app/playback/PlayerViewModel$$ExternalSyntheticLambda0;->f$0:Lcom/muzk/app/playback/PlayerViewModel;

    iput-object p2, p0, Lcom/muzk/app/playback/PlayerViewModel$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    iput p3, p0, Lcom/muzk/app/playback/PlayerViewModel$$ExternalSyntheticLambda0;->f$2:I

    iput-object p4, p0, Lcom/muzk/app/playback/PlayerViewModel$$ExternalSyntheticLambda0;->f$3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/muzk/app/playback/PlayerViewModel$$ExternalSyntheticLambda0;->f$0:Lcom/muzk/app/playback/PlayerViewModel;

    iget-object v1, p0, Lcom/muzk/app/playback/PlayerViewModel$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    iget v2, p0, Lcom/muzk/app/playback/PlayerViewModel$$ExternalSyntheticLambda0;->f$2:I

    iget-object v3, p0, Lcom/muzk/app/playback/PlayerViewModel$$ExternalSyntheticLambda0;->f$3:Ljava/lang/String;

    check-cast p1, Landroidx/media3/session/MediaController;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/muzk/app/playback/PlayerViewModel;->$r8$lambda$JFhCDR08_JVn7JWiEitSsL2IW9g(Lcom/muzk/app/playback/PlayerViewModel;Ljava/util/List;ILjava/lang/String;Landroidx/media3/session/MediaController;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
