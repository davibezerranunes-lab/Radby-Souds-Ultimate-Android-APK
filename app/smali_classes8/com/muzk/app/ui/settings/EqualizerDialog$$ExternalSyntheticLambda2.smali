.class public final synthetic Lcom/muzk/app/ui/settings/EqualizerDialog$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/material/slider/Slider$OnChangeListener;


# instance fields
.field public final synthetic f$0:Landroid/media/audiofx/Equalizer;

.field public final synthetic f$1:S


# direct methods
.method public synthetic constructor <init>(Landroid/media/audiofx/Equalizer;S)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/muzk/app/ui/settings/EqualizerDialog$$ExternalSyntheticLambda2;->f$0:Landroid/media/audiofx/Equalizer;

    iput-short p2, p0, Lcom/muzk/app/ui/settings/EqualizerDialog$$ExternalSyntheticLambda2;->f$1:S

    return-void
.end method


# virtual methods
.method public final onValueChange(Lcom/google/android/material/slider/Slider;FZ)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/muzk/app/ui/settings/EqualizerDialog$$ExternalSyntheticLambda2;->f$0:Landroid/media/audiofx/Equalizer;

    iget-short v1, p0, Lcom/muzk/app/ui/settings/EqualizerDialog$$ExternalSyntheticLambda2;->f$1:S

    invoke-static {v0, v1, p1, p2, p3}, Lcom/muzk/app/ui/settings/EqualizerDialog;->$r8$lambda$BDQ3ip-WHAcsVUr9kUGTd7t8o5M(Landroid/media/audiofx/Equalizer;SLcom/google/android/material/slider/Slider;FZ)V

    return-void
.end method

.method public final bridge synthetic onValueChange(Ljava/lang/Object;FZ)V
    .locals 0

    .line 0
    check-cast p1, Lcom/google/android/material/slider/Slider;

    invoke-virtual {p0, p1, p2, p3}, Lcom/muzk/app/ui/settings/EqualizerDialog$$ExternalSyntheticLambda2;->onValueChange(Lcom/google/android/material/slider/Slider;FZ)V

    return-void
.end method
