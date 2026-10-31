.class public final synthetic Lcom/muzk/app/ui/settings/PalettePreference$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:Lcom/muzk/app/ui/settings/PalettePreference;

.field public final synthetic f$2:Lcom/muzk/app/ui/settings/PalettePreference$Swatch;


# direct methods
.method public synthetic constructor <init>(ZLcom/muzk/app/ui/settings/PalettePreference;Lcom/muzk/app/ui/settings/PalettePreference$Swatch;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/muzk/app/ui/settings/PalettePreference$$ExternalSyntheticLambda0;->f$0:Z

    iput-object p2, p0, Lcom/muzk/app/ui/settings/PalettePreference$$ExternalSyntheticLambda0;->f$1:Lcom/muzk/app/ui/settings/PalettePreference;

    iput-object p3, p0, Lcom/muzk/app/ui/settings/PalettePreference$$ExternalSyntheticLambda0;->f$2:Lcom/muzk/app/ui/settings/PalettePreference$Swatch;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 0
    iget-boolean v0, p0, Lcom/muzk/app/ui/settings/PalettePreference$$ExternalSyntheticLambda0;->f$0:Z

    iget-object v1, p0, Lcom/muzk/app/ui/settings/PalettePreference$$ExternalSyntheticLambda0;->f$1:Lcom/muzk/app/ui/settings/PalettePreference;

    iget-object v2, p0, Lcom/muzk/app/ui/settings/PalettePreference$$ExternalSyntheticLambda0;->f$2:Lcom/muzk/app/ui/settings/PalettePreference$Swatch;

    invoke-static {v0, v1, v2, p1}, Lcom/muzk/app/ui/settings/PalettePreference;->$r8$lambda$oJTg6Qvcje8sS-GD-Bg52FBIlZI(ZLcom/muzk/app/ui/settings/PalettePreference;Lcom/muzk/app/ui/settings/PalettePreference$Swatch;Landroid/view/View;)V

    return-void
.end method
