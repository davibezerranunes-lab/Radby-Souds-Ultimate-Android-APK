.class public final synthetic Lcom/muzk/app/ui/library/LibraryFragment$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/muzk/app/databinding/DialogTextInputBinding;

.field public final synthetic f$1:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Lcom/muzk/app/databinding/DialogTextInputBinding;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/muzk/app/ui/library/LibraryFragment$$ExternalSyntheticLambda6;->f$0:Lcom/muzk/app/databinding/DialogTextInputBinding;

    iput-object p2, p0, Lcom/muzk/app/ui/library/LibraryFragment$$ExternalSyntheticLambda6;->f$1:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/muzk/app/ui/library/LibraryFragment$$ExternalSyntheticLambda6;->f$0:Lcom/muzk/app/databinding/DialogTextInputBinding;

    iget-object v1, p0, Lcom/muzk/app/ui/library/LibraryFragment$$ExternalSyntheticLambda6;->f$1:Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1, p1, p2}, Lcom/muzk/app/ui/library/LibraryFragment;->$r8$lambda$vorFQ_cWPDzbcKh8pGPLMxxeJbw(Lcom/muzk/app/databinding/DialogTextInputBinding;Lkotlin/jvm/functions/Function1;Landroid/content/DialogInterface;I)V

    return-void
.end method
