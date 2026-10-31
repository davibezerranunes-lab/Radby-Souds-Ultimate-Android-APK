.class public final synthetic Lcom/muzk/app/ui/settings/EqualizerDialog$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Ljava/util/List;

.field public final synthetic f$1:F

.field public final synthetic f$2:F

.field public final synthetic f$3:Landroid/media/audiofx/Equalizer;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;FFLandroid/media/audiofx/Equalizer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/muzk/app/ui/settings/EqualizerDialog$$ExternalSyntheticLambda4;->f$0:Ljava/util/List;

    iput p2, p0, Lcom/muzk/app/ui/settings/EqualizerDialog$$ExternalSyntheticLambda4;->f$1:F

    iput p3, p0, Lcom/muzk/app/ui/settings/EqualizerDialog$$ExternalSyntheticLambda4;->f$2:F

    iput-object p4, p0, Lcom/muzk/app/ui/settings/EqualizerDialog$$ExternalSyntheticLambda4;->f$3:Landroid/media/audiofx/Equalizer;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/muzk/app/ui/settings/EqualizerDialog$$ExternalSyntheticLambda4;->f$0:Ljava/util/List;

    iget v1, p0, Lcom/muzk/app/ui/settings/EqualizerDialog$$ExternalSyntheticLambda4;->f$1:F

    iget v2, p0, Lcom/muzk/app/ui/settings/EqualizerDialog$$ExternalSyntheticLambda4;->f$2:F

    iget-object v3, p0, Lcom/muzk/app/ui/settings/EqualizerDialog$$ExternalSyntheticLambda4;->f$3:Landroid/media/audiofx/Equalizer;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/muzk/app/ui/settings/EqualizerDialog;->$r8$lambda$YJX2xSDa7Hw5lX2yvm9KkEvQjYw(Ljava/util/List;FFLandroid/media/audiofx/Equalizer;Landroid/view/View;)V

    return-void
.end method
