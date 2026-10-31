.class public final synthetic Lcom/muzk/app/ui/library/LibraryAdapter$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic f$0:Lcom/muzk/app/ui/library/LibraryAdapter;

.field public final synthetic f$1:Lcom/muzk/app/ui/library/LibraryRow;


# direct methods
.method public synthetic constructor <init>(Lcom/muzk/app/ui/library/LibraryAdapter;Lcom/muzk/app/ui/library/LibraryRow;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/muzk/app/ui/library/LibraryAdapter$$ExternalSyntheticLambda2;->f$0:Lcom/muzk/app/ui/library/LibraryAdapter;

    iput-object p2, p0, Lcom/muzk/app/ui/library/LibraryAdapter$$ExternalSyntheticLambda2;->f$1:Lcom/muzk/app/ui/library/LibraryRow;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/muzk/app/ui/library/LibraryAdapter$$ExternalSyntheticLambda2;->f$0:Lcom/muzk/app/ui/library/LibraryAdapter;

    iget-object v1, p0, Lcom/muzk/app/ui/library/LibraryAdapter$$ExternalSyntheticLambda2;->f$1:Lcom/muzk/app/ui/library/LibraryRow;

    invoke-static {v0, v1, p1}, Lcom/muzk/app/ui/library/LibraryAdapter;->$r8$lambda$EmnODyJh5nkP_J4SS8GdFnfuEgs(Lcom/muzk/app/ui/library/LibraryAdapter;Lcom/muzk/app/ui/library/LibraryRow;Landroid/view/View;)Z

    move-result p1

    return p1
.end method
