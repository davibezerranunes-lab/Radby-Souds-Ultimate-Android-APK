.class public final synthetic Lcom/muzk/app/ui/player/PlayerFragment$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/muzk/app/databinding/DialogTextInputBinding;

.field public final synthetic f$1:Lcom/muzk/app/data/PlaylistStore;

.field public final synthetic f$2:J

.field public final synthetic f$3:Lcom/muzk/app/ui/player/PlayerFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/muzk/app/databinding/DialogTextInputBinding;Lcom/muzk/app/data/PlaylistStore;JLcom/muzk/app/ui/player/PlayerFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/muzk/app/ui/player/PlayerFragment$$ExternalSyntheticLambda6;->f$0:Lcom/muzk/app/databinding/DialogTextInputBinding;

    iput-object p2, p0, Lcom/muzk/app/ui/player/PlayerFragment$$ExternalSyntheticLambda6;->f$1:Lcom/muzk/app/data/PlaylistStore;

    iput-wide p3, p0, Lcom/muzk/app/ui/player/PlayerFragment$$ExternalSyntheticLambda6;->f$2:J

    iput-object p5, p0, Lcom/muzk/app/ui/player/PlayerFragment$$ExternalSyntheticLambda6;->f$3:Lcom/muzk/app/ui/player/PlayerFragment;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    .line 0
    iget-object v0, p0, Lcom/muzk/app/ui/player/PlayerFragment$$ExternalSyntheticLambda6;->f$0:Lcom/muzk/app/databinding/DialogTextInputBinding;

    iget-object v1, p0, Lcom/muzk/app/ui/player/PlayerFragment$$ExternalSyntheticLambda6;->f$1:Lcom/muzk/app/data/PlaylistStore;

    iget-wide v2, p0, Lcom/muzk/app/ui/player/PlayerFragment$$ExternalSyntheticLambda6;->f$2:J

    iget-object v4, p0, Lcom/muzk/app/ui/player/PlayerFragment$$ExternalSyntheticLambda6;->f$3:Lcom/muzk/app/ui/player/PlayerFragment;

    move-object v5, p1

    move v6, p2

    invoke-static/range {v0 .. v6}, Lcom/muzk/app/ui/player/PlayerFragment;->$r8$lambda$e4fYFIyhDaD0u5jivl40ENKYvgA(Lcom/muzk/app/databinding/DialogTextInputBinding;Lcom/muzk/app/data/PlaylistStore;JLcom/muzk/app/ui/player/PlayerFragment;Landroid/content/DialogInterface;I)V

    return-void
.end method
