.class public final synthetic Lcom/muzk/app/ui/player/PlayerFragment$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# instance fields
.field public final synthetic f$0:Ljava/lang/Long;

.field public final synthetic f$1:Lcom/muzk/app/ui/player/PlayerFragment;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Long;Lcom/muzk/app/ui/player/PlayerFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/muzk/app/ui/player/PlayerFragment$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Long;

    iput-object p2, p0, Lcom/muzk/app/ui/player/PlayerFragment$$ExternalSyntheticLambda4;->f$1:Lcom/muzk/app/ui/player/PlayerFragment;

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/muzk/app/ui/player/PlayerFragment$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Long;

    iget-object v1, p0, Lcom/muzk/app/ui/player/PlayerFragment$$ExternalSyntheticLambda4;->f$1:Lcom/muzk/app/ui/player/PlayerFragment;

    invoke-static {v0, v1, p1}, Lcom/muzk/app/ui/player/PlayerFragment;->$r8$lambda$cEryB1xE887s67YBxHx9tCX1jgs(Ljava/lang/Long;Lcom/muzk/app/ui/player/PlayerFragment;Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
