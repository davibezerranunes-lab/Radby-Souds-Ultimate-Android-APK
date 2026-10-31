.class public final synthetic Lcom/muzk/app/data/PlaylistStore$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(ZJ)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/muzk/app/data/PlaylistStore$$ExternalSyntheticLambda4;->f$0:Z

    iput-wide p2, p0, Lcom/muzk/app/data/PlaylistStore$$ExternalSyntheticLambda4;->f$1:J

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 0
    iget-boolean v0, p0, Lcom/muzk/app/data/PlaylistStore$$ExternalSyntheticLambda4;->f$0:Z

    iget-wide v1, p0, Lcom/muzk/app/data/PlaylistStore$$ExternalSyntheticLambda4;->f$1:J

    check-cast p1, Ljava/util/List;

    invoke-static {v0, v1, v2, p1}, Lcom/muzk/app/data/PlaylistStore;->$r8$lambda$NGNbBhWK7h4ra248LRs0cixBvK4(ZJLjava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
