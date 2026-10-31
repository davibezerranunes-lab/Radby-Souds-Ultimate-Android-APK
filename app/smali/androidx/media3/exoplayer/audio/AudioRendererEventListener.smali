.class public interface abstract Landroidx/media3/exoplayer/audio/AudioRendererEventListener;
.super Ljava/lang/Object;
.source "AudioRendererEventListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;
    }
.end annotation


# virtual methods
.method public onAudioCodecError(Ljava/lang/Exception;)V
    .locals 0
    .param p1, "audioCodecError"    # Ljava/lang/Exception;

    .line 126
    return-void
.end method

.method public onAudioDecoderInitialized(Ljava/lang/String;JJ)V
    .locals 0
    .param p1, "decoderName"    # Ljava/lang/String;
    .param p2, "initializedTimestampMs"    # J
    .param p4, "initializationDurationMs"    # J

    .line 60
    return-void
.end method

.method public onAudioDecoderReleased(Ljava/lang/String;)V
    .locals 0
    .param p1, "decoderName"    # Ljava/lang/String;

    .line 97
    return-void
.end method

.method public onAudioDisabled(Landroidx/media3/exoplayer/DecoderCounters;)V
    .locals 0
    .param p1, "counters"    # Landroidx/media3/exoplayer/DecoderCounters;

    .line 104
    return-void
.end method

.method public onAudioEnabled(Landroidx/media3/exoplayer/DecoderCounters;)V
    .locals 0
    .param p1, "counters"    # Landroidx/media3/exoplayer/DecoderCounters;

    .line 49
    return-void
.end method

.method public onAudioInputFormatChanged(Landroidx/media3/common/Format;Landroidx/media3/exoplayer/DecoderReuseEvaluation;)V
    .locals 0
    .param p1, "format"    # Landroidx/media3/common/Format;
    .param p2, "decoderReuseEvaluation"    # Landroidx/media3/exoplayer/DecoderReuseEvaluation;

    .line 71
    return-void
.end method

.method public onAudioPositionAdvancing(J)V
    .locals 0
    .param p1, "playoutStartSystemTimeMs"    # J

    .line 80
    return-void
.end method

.method public onAudioSinkError(Ljava/lang/Exception;)V
    .locals 0
    .param p1, "audioSinkError"    # Ljava/lang/Exception;

    .line 145
    return-void
.end method

.method public onAudioTrackInitialized(Landroidx/media3/exoplayer/audio/AudioSink$AudioTrackConfig;)V
    .locals 0
    .param p1, "audioTrackConfig"    # Landroidx/media3/exoplayer/audio/AudioSink$AudioTrackConfig;

    .line 153
    return-void
.end method

.method public onAudioTrackReleased(Landroidx/media3/exoplayer/audio/AudioSink$AudioTrackConfig;)V
    .locals 0
    .param p1, "audioTrackConfig"    # Landroidx/media3/exoplayer/audio/AudioSink$AudioTrackConfig;

    .line 161
    return-void
.end method

.method public onAudioUnderrun(IJJ)V
    .locals 0
    .param p1, "bufferSize"    # I
    .param p2, "bufferSizeMs"    # J
    .param p4, "elapsedSinceLastFeedMs"    # J

    .line 90
    return-void
.end method

.method public onSkipSilenceEnabledChanged(Z)V
    .locals 0
    .param p1, "skipSilenceEnabled"    # Z

    .line 111
    return-void
.end method
