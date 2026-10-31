.class public final synthetic Lcom/muzk/app/ui/library/LibraryFragment$$ExternalSyntheticLambda21;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lcom/muzk/app/ui/library/LibraryFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/muzk/app/ui/library/LibraryFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/muzk/app/ui/library/LibraryFragment$$ExternalSyntheticLambda21;->f$0:Lcom/muzk/app/ui/library/LibraryFragment;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/muzk/app/ui/library/LibraryFragment$$ExternalSyntheticLambda21;->f$0:Lcom/muzk/app/ui/library/LibraryFragment;

    check-cast p1, Lcom/muzk/app/ui/library/LibraryRow$PlaylistItem;

    invoke-static {v0, p1}, Lcom/muzk/app/ui/library/LibraryFragment;->$r8$lambda$WHm3s1AhzILhK9B7_FBL5kb8GTE(Lcom/muzk/app/ui/library/LibraryFragment;Lcom/muzk/app/ui/library/LibraryRow$PlaylistItem;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
