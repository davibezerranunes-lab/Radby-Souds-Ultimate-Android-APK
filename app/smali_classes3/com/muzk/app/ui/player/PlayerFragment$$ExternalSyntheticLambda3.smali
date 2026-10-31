.class public final synthetic Lcom/muzk/app/ui/player/PlayerFragment$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/material/slider/Slider$OnChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/muzk/app/databinding/FragmentPlayerBinding;


# direct methods
.method public synthetic constructor <init>(Lcom/muzk/app/databinding/FragmentPlayerBinding;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/muzk/app/ui/player/PlayerFragment$$ExternalSyntheticLambda3;->f$0:Lcom/muzk/app/databinding/FragmentPlayerBinding;

    return-void
.end method


# virtual methods
.method public final onValueChange(Lcom/google/android/material/slider/Slider;FZ)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/muzk/app/ui/player/PlayerFragment$$ExternalSyntheticLambda3;->f$0:Lcom/muzk/app/databinding/FragmentPlayerBinding;

    invoke-static {v0, p1, p2, p3}, Lcom/muzk/app/ui/player/PlayerFragment;->$r8$lambda$yl_HwU9CPZzd94VO2Ih8aD71im0(Lcom/muzk/app/databinding/FragmentPlayerBinding;Lcom/google/android/material/slider/Slider;FZ)V

    return-void
.end method

.method public final bridge synthetic onValueChange(Ljava/lang/Object;FZ)V
    .locals 0

    .line 0
    check-cast p1, Lcom/google/android/material/slider/Slider;

    invoke-virtual {p0, p1, p2, p3}, Lcom/muzk/app/ui/player/PlayerFragment$$ExternalSyntheticLambda3;->onValueChange(Lcom/google/android/material/slider/Slider;FZ)V

    return-void
.end method
