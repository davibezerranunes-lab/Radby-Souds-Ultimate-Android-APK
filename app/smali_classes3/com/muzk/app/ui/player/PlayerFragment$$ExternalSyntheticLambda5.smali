.class public final synthetic Lcom/muzk/app/ui/player/PlayerFragment$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Ljava/util/List;

.field public final synthetic f$1:Lcom/muzk/app/data/PlaylistStore;

.field public final synthetic f$2:J

.field public final synthetic f$3:Lcom/muzk/app/ui/player/PlayerFragment;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Lcom/muzk/app/data/PlaylistStore;JLcom/muzk/app/ui/player/PlayerFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/muzk/app/ui/player/PlayerFragment$$ExternalSyntheticLambda5;->f$0:Ljava/util/List;

    iput-object p2, p0, Lcom/muzk/app/ui/player/PlayerFragment$$ExternalSyntheticLambda5;->f$1:Lcom/muzk/app/data/PlaylistStore;

    iput-wide p3, p0, Lcom/muzk/app/ui/player/PlayerFragment$$ExternalSyntheticLambda5;->f$2:J

    iput-object p5, p0, Lcom/muzk/app/ui/player/PlayerFragment$$ExternalSyntheticLambda5;->f$3:Lcom/muzk/app/ui/player/PlayerFragment;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    .line 0
    iget-object v0, p0, Lcom/muzk/app/ui/player/PlayerFragment$$ExternalSyntheticLambda5;->f$0:Ljava/util/List;

    iget-object v1, p0, Lcom/muzk/app/ui/player/PlayerFragment$$ExternalSyntheticLambda5;->f$1:Lcom/muzk/app/data/PlaylistStore;

    iget-wide v2, p0, Lcom/muzk/app/ui/player/PlayerFragment$$ExternalSyntheticLambda5;->f$2:J

    iget-object v4, p0, Lcom/muzk/app/ui/player/PlayerFragment$$ExternalSyntheticLambda5;->f$3:Lcom/muzk/app/ui/player/PlayerFragment;

    move-object v5, p1

    move v6, p2

    invoke-static/range {v0 .. v6}, Lcom/muzk/app/ui/player/PlayerFragment;->$r8$lambda$VM64F3nkiBG88rB41fUMpjPOICk(Ljava/util/List;Lcom/muzk/app/data/PlaylistStore;JLcom/muzk/app/ui/player/PlayerFragment;Landroid/content/DialogInterface;I)V

    return-void
.end method
