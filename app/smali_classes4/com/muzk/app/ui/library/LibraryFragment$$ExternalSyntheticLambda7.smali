.class public final synthetic Lcom/muzk/app/ui/library/LibraryFragment$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# instance fields
.field public final synthetic f$0:Lcom/muzk/app/ui/library/LibraryFragment;

.field public final synthetic f$1:Lcom/muzk/app/ui/library/LibraryRow$Track;


# direct methods
.method public synthetic constructor <init>(Lcom/muzk/app/ui/library/LibraryFragment;Lcom/muzk/app/ui/library/LibraryRow$Track;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/muzk/app/ui/library/LibraryFragment$$ExternalSyntheticLambda7;->f$0:Lcom/muzk/app/ui/library/LibraryFragment;

    iput-object p2, p0, Lcom/muzk/app/ui/library/LibraryFragment$$ExternalSyntheticLambda7;->f$1:Lcom/muzk/app/ui/library/LibraryRow$Track;

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/muzk/app/ui/library/LibraryFragment$$ExternalSyntheticLambda7;->f$0:Lcom/muzk/app/ui/library/LibraryFragment;

    iget-object v1, p0, Lcom/muzk/app/ui/library/LibraryFragment$$ExternalSyntheticLambda7;->f$1:Lcom/muzk/app/ui/library/LibraryRow$Track;

    invoke-static {v0, v1, p1}, Lcom/muzk/app/ui/library/LibraryFragment;->$r8$lambda$lu6yYpCoNogAX7b2_xpgluaaOas(Lcom/muzk/app/ui/library/LibraryFragment;Lcom/muzk/app/ui/library/LibraryRow$Track;Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
