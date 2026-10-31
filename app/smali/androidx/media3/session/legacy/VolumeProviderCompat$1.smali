.class Landroidx/media3/session/legacy/VolumeProviderCompat$1;
.super Landroid/media/VolumeProvider;
.source "VolumeProviderCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media3/session/legacy/VolumeProviderCompat;->getVolumeProvider()Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media3/session/legacy/VolumeProviderCompat;


# direct methods
.method constructor <init>(Landroidx/media3/session/legacy/VolumeProviderCompat;IIILjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/media3/session/legacy/VolumeProviderCompat;
    .param p2, "arg0"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "arg3"    # Ljava/lang/String;

    .line 189
    iput-object p1, p0, Landroidx/media3/session/legacy/VolumeProviderCompat$1;->this$0:Landroidx/media3/session/legacy/VolumeProviderCompat;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/media/VolumeProvider;-><init>(IIILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onAdjustVolume(I)V
    .locals 1
    .param p1, "direction"    # I

    .line 197
    iget-object v0, p0, Landroidx/media3/session/legacy/VolumeProviderCompat$1;->this$0:Landroidx/media3/session/legacy/VolumeProviderCompat;

    invoke-virtual {v0, p1}, Landroidx/media3/session/legacy/VolumeProviderCompat;->onAdjustVolume(I)V

    .line 198
    return-void
.end method

.method public onSetVolumeTo(I)V
    .locals 1
    .param p1, "volume"    # I

    .line 192
    iget-object v0, p0, Landroidx/media3/session/legacy/VolumeProviderCompat$1;->this$0:Landroidx/media3/session/legacy/VolumeProviderCompat;

    invoke-virtual {v0, p1}, Landroidx/media3/session/legacy/VolumeProviderCompat;->onSetVolumeTo(I)V

    .line 193
    return-void
.end method
