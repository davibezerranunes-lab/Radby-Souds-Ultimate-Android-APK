.class public final synthetic Lcom/muzk/app/playback/PlaybackService$Companion$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Landroid/media/audiofx/Equalizer;


# direct methods
.method public synthetic constructor <init>(Landroid/media/audiofx/Equalizer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/muzk/app/playback/PlaybackService$Companion$$ExternalSyntheticLambda0;->f$0:Landroid/media/audiofx/Equalizer;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/muzk/app/playback/PlaybackService$Companion$$ExternalSyntheticLambda0;->f$0:Landroid/media/audiofx/Equalizer;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/muzk/app/playback/PlaybackService$Companion;->$r8$lambda$QKEu1jVyNO3UeXRikiSbCKYaemM(Landroid/media/audiofx/Equalizer;I)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method
