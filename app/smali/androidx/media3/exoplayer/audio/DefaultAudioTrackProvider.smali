.class public Landroidx/media3/exoplayer/audio/DefaultAudioTrackProvider;
.super Ljava/lang/Object;
.source "DefaultAudioTrackProvider.java"

# interfaces
.implements Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioTrackProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private createAudioTrackV21(Landroidx/media3/exoplayer/audio/AudioSink$AudioTrackConfig;Landroidx/media3/common/AudioAttributes;I)Landroid/media/AudioTrack;
    .locals 7
    .param p1, "audioTrackConfig"    # Landroidx/media3/exoplayer/audio/AudioSink$AudioTrackConfig;
    .param p2, "audioAttributes"    # Landroidx/media3/common/AudioAttributes;
    .param p3, "audioSessionId"    # I

    .line 93
    new-instance v6, Landroid/media/AudioTrack;

    iget-boolean v0, p1, Landroidx/media3/exoplayer/audio/AudioSink$AudioTrackConfig;->tunneling:Z

    .line 94
    invoke-direct {p0, p2, v0}, Landroidx/media3/exoplayer/audio/DefaultAudioTrackProvider;->getAudioTrackAttributesV21(Landroidx/media3/common/AudioAttributes;Z)Landroid/media/AudioAttributes;

    move-result-object v1

    iget v0, p1, Landroidx/media3/exoplayer/audio/AudioSink$AudioTrackConfig;->sampleRate:I

    iget v2, p1, Landroidx/media3/exoplayer/audio/AudioSink$AudioTrackConfig;->channelConfig:I

    iget v3, p1, Landroidx/media3/exoplayer/audio/AudioSink$AudioTrackConfig;->encoding:I

    .line 95
    invoke-static {v0, v2, v3}, Landroidx/media3/common/util/Util;->getAudioFormat(III)Landroid/media/AudioFormat;

    move-result-object v2

    iget v3, p1, Landroidx/media3/exoplayer/audio/AudioSink$AudioTrackConfig;->bufferSize:I

    const/4 v4, 0x1

    move-object v0, v6

    move v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioTrack;-><init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;III)V

    .line 93
    return-object v6
.end method

.method private createAudioTrackV23(Landroidx/media3/exoplayer/audio/AudioSink$AudioTrackConfig;Landroidx/media3/common/AudioAttributes;I)Landroid/media/AudioTrack;
    .locals 5
    .param p1, "audioTrackConfig"    # Landroidx/media3/exoplayer/audio/AudioSink$AudioTrackConfig;
    .param p2, "audioAttributes"    # Landroidx/media3/common/AudioAttributes;
    .param p3, "audioSessionId"    # I

    .line 52
    iget v0, p1, Landroidx/media3/exoplayer/audio/AudioSink$AudioTrackConfig;->sampleRate:I

    iget v1, p1, Landroidx/media3/exoplayer/audio/AudioSink$AudioTrackConfig;->channelConfig:I

    iget v2, p1, Landroidx/media3/exoplayer/audio/AudioSink$AudioTrackConfig;->encoding:I

    .line 53
    invoke-static {v0, v1, v2}, Landroidx/media3/common/util/Util;->getAudioFormat(III)Landroid/media/AudioFormat;

    move-result-object v0

    .line 55
    .local v0, "audioFormat":Landroid/media/AudioFormat;
    iget-boolean v1, p1, Landroidx/media3/exoplayer/audio/AudioSink$AudioTrackConfig;->tunneling:Z

    .line 56
    invoke-direct {p0, p2, v1}, Landroidx/media3/exoplayer/audio/DefaultAudioTrackProvider;->getAudioTrackAttributesV21(Landroidx/media3/common/AudioAttributes;Z)Landroid/media/AudioAttributes;

    move-result-object v1

    .line 57
    .local v1, "audioTrackAttributes":Landroid/media/AudioAttributes;
    new-instance v2, Landroid/media/AudioTrack$Builder;

    invoke-direct {v2}, Landroid/media/AudioTrack$Builder;-><init>()V

    .line 59
    invoke-virtual {v2, v1}, Landroid/media/AudioTrack$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioTrack$Builder;

    move-result-object v2

    .line 60
    invoke-virtual {v2, v0}, Landroid/media/AudioTrack$Builder;->setAudioFormat(Landroid/media/AudioFormat;)Landroid/media/AudioTrack$Builder;

    move-result-object v2

    .line 61
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/media/AudioTrack$Builder;->setTransferMode(I)Landroid/media/AudioTrack$Builder;

    move-result-object v2

    iget v3, p1, Landroidx/media3/exoplayer/audio/AudioSink$AudioTrackConfig;->bufferSize:I

    .line 62
    invoke-virtual {v2, v3}, Landroid/media/AudioTrack$Builder;->setBufferSizeInBytes(I)Landroid/media/AudioTrack$Builder;

    move-result-object v2

    .line 63
    invoke-virtual {v2, p3}, Landroid/media/AudioTrack$Builder;->setSessionId(I)Landroid/media/AudioTrack$Builder;

    move-result-object v2

    .line 64
    .local v2, "audioTrackBuilder":Landroid/media/AudioTrack$Builder;
    sget v3, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v4, 0x1d

    if-lt v3, v4, :cond_0

    .line 65
    iget-boolean v3, p1, Landroidx/media3/exoplayer/audio/AudioSink$AudioTrackConfig;->offload:Z

    invoke-direct {p0, v2, v3}, Landroidx/media3/exoplayer/audio/DefaultAudioTrackProvider;->setOffloadedPlaybackV29(Landroid/media/AudioTrack$Builder;Z)V

    .line 67
    :cond_0
    invoke-virtual {p0, v2}, Landroidx/media3/exoplayer/audio/DefaultAudioTrackProvider;->customizeAudioTrackBuilder(Landroid/media/AudioTrack$Builder;)Landroid/media/AudioTrack$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioTrack$Builder;->build()Landroid/media/AudioTrack;

    move-result-object v3

    return-object v3
.end method

.method private getAudioTrackAttributesV21(Landroidx/media3/common/AudioAttributes;Z)Landroid/media/AudioAttributes;
    .locals 1
    .param p1, "audioAttributes"    # Landroidx/media3/common/AudioAttributes;
    .param p2, "tunneling"    # Z

    .line 104
    if-eqz p2, :cond_0

    .line 105
    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioTrackProvider;->getAudioTrackTunnelingAttributesV21()Landroid/media/AudioAttributes;

    move-result-object v0

    return-object v0

    .line 107
    :cond_0
    invoke-virtual {p1}, Landroidx/media3/common/AudioAttributes;->getAudioAttributesV21()Landroidx/media3/common/AudioAttributes$AudioAttributesV21;

    move-result-object v0

    iget-object v0, v0, Landroidx/media3/common/AudioAttributes$AudioAttributesV21;->audioAttributes:Landroid/media/AudioAttributes;

    return-object v0
.end method

.method private getAudioTrackTunnelingAttributesV21()Landroid/media/AudioAttributes;
    .locals 2

    .line 112
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 113
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 114
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setFlags(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 115
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 116
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    .line 112
    return-object v0
.end method

.method private setOffloadedPlaybackV29(Landroid/media/AudioTrack$Builder;Z)V
    .locals 0
    .param p1, "audioTrackBuilder"    # Landroid/media/AudioTrack$Builder;
    .param p2, "isOffloaded"    # Z

    .line 72
    invoke-virtual {p1, p2}, Landroid/media/AudioTrack$Builder;->setOffloadedPlayback(Z)Landroid/media/AudioTrack$Builder;

    .line 73
    return-void
.end method


# virtual methods
.method protected customizeAudioTrackBuilder(Landroid/media/AudioTrack$Builder;)Landroid/media/AudioTrack$Builder;
    .locals 0
    .param p1, "audioTrackBuilder"    # Landroid/media/AudioTrack$Builder;

    .line 86
    return-object p1
.end method

.method public final getAudioTrack(Landroidx/media3/exoplayer/audio/AudioSink$AudioTrackConfig;Landroidx/media3/common/AudioAttributes;I)Landroid/media/AudioTrack;
    .locals 2
    .param p1, "audioTrackConfig"    # Landroidx/media3/exoplayer/audio/AudioSink$AudioTrackConfig;
    .param p2, "audioAttributes"    # Landroidx/media3/common/AudioAttributes;
    .param p3, "audioSessionId"    # I

    .line 40
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroidx/media3/exoplayer/audio/DefaultAudioTrackProvider;->createAudioTrackV23(Landroidx/media3/exoplayer/audio/AudioSink$AudioTrackConfig;Landroidx/media3/common/AudioAttributes;I)Landroid/media/AudioTrack;

    move-result-object v0

    return-object v0

    .line 43
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroidx/media3/exoplayer/audio/DefaultAudioTrackProvider;->createAudioTrackV21(Landroidx/media3/exoplayer/audio/AudioSink$AudioTrackConfig;Landroidx/media3/common/AudioAttributes;I)Landroid/media/AudioTrack;

    move-result-object v0

    return-object v0
.end method
