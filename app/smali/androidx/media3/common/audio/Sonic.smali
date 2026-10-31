.class final Landroidx/media3/common/audio/Sonic;
.super Ljava/lang/Object;
.source "Sonic.java"


# static fields
.field private static final AMDF_FREQUENCY:I = 0xfa0

.field private static final BYTES_PER_SAMPLE:I = 0x2

.field private static final MAXIMUM_PITCH:I = 0x190

.field private static final MINIMUM_PITCH:I = 0x41


# instance fields
.field private accumulatedSpeedAdjustmentError:D

.field private final channelCount:I

.field private final downSampleBuffer:[S

.field private inputBuffer:[S

.field private inputFrameCount:I

.field private final inputSampleRateHz:I

.field private maxDiff:I

.field private final maxPeriod:I

.field private final maxRequiredFrameCount:I

.field private minDiff:I

.field private final minPeriod:I

.field private newRatePosition:I

.field private oldRatePosition:I

.field private outputBuffer:[S

.field private outputFrameCount:I

.field private final pitch:F

.field private pitchBuffer:[S

.field private pitchFrameCount:I

.field private prevMinDiff:I

.field private prevPeriod:I

.field private final rate:F

.field private remainingInputToCopyFrameCount:I

.field private final speed:F


# direct methods
.method public constructor <init>(IIFFI)V
    .locals 2
    .param p1, "inputSampleRateHz"    # I
    .param p2, "channelCount"    # I
    .param p3, "speed"    # F
    .param p4, "pitch"    # F
    .param p5, "outputSampleRateHz"    # I

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput p1, p0, Landroidx/media3/common/audio/Sonic;->inputSampleRateHz:I

    .line 85
    iput p2, p0, Landroidx/media3/common/audio/Sonic;->channelCount:I

    .line 86
    iput p3, p0, Landroidx/media3/common/audio/Sonic;->speed:F

    .line 87
    iput p4, p0, Landroidx/media3/common/audio/Sonic;->pitch:F

    .line 88
    int-to-float v0, p1

    int-to-float v1, p5

    div-float/2addr v0, v1

    iput v0, p0, Landroidx/media3/common/audio/Sonic;->rate:F

    .line 89
    div-int/lit16 v0, p1, 0x190

    iput v0, p0, Landroidx/media3/common/audio/Sonic;->minPeriod:I

    .line 90
    div-int/lit8 v0, p1, 0x41

    iput v0, p0, Landroidx/media3/common/audio/Sonic;->maxPeriod:I

    .line 91
    iget v0, p0, Landroidx/media3/common/audio/Sonic;->maxPeriod:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroidx/media3/common/audio/Sonic;->maxRequiredFrameCount:I

    .line 92
    iget v0, p0, Landroidx/media3/common/audio/Sonic;->maxRequiredFrameCount:I

    new-array v0, v0, [S

    iput-object v0, p0, Landroidx/media3/common/audio/Sonic;->downSampleBuffer:[S

    .line 93
    iget v0, p0, Landroidx/media3/common/audio/Sonic;->maxRequiredFrameCount:I

    mul-int/2addr v0, p2

    new-array v0, v0, [S

    iput-object v0, p0, Landroidx/media3/common/audio/Sonic;->inputBuffer:[S

    .line 94
    iget v0, p0, Landroidx/media3/common/audio/Sonic;->maxRequiredFrameCount:I

    mul-int/2addr v0, p2

    new-array v0, v0, [S

    iput-object v0, p0, Landroidx/media3/common/audio/Sonic;->outputBuffer:[S

    .line 95
    iget v0, p0, Landroidx/media3/common/audio/Sonic;->maxRequiredFrameCount:I

    mul-int/2addr v0, p2

    new-array v0, v0, [S

    iput-object v0, p0, Landroidx/media3/common/audio/Sonic;->pitchBuffer:[S

    .line 96
    return-void
.end method

.method private adjustRate(FI)V
    .locals 18
    .param p1, "rate"    # F
    .param p2, "originalOutputFrameCount"    # I

    .line 399
    move-object/from16 v7, p0

    move/from16 v8, p2

    iget v0, v7, Landroidx/media3/common/audio/Sonic;->outputFrameCount:I

    if-ne v0, v8, :cond_0

    .line 400
    return-void

    .line 405
    :cond_0
    iget v0, v7, Landroidx/media3/common/audio/Sonic;->inputSampleRateHz:I

    int-to-float v0, v0

    div-float v0, v0, p1

    float-to-long v0, v0

    .line 406
    .local v0, "newSampleRate":J
    iget v2, v7, Landroidx/media3/common/audio/Sonic;->inputSampleRateHz:I

    int-to-long v2, v2

    move-wide v9, v0

    move-wide v11, v2

    .line 408
    .end local v0    # "newSampleRate":J
    .local v9, "newSampleRate":J
    .local v11, "oldSampleRate":J
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, v9, v0

    if-eqz v2, :cond_1

    cmp-long v2, v11, v0

    if-eqz v2, :cond_1

    const-wide/16 v2, 0x2

    rem-long v4, v9, v2

    cmp-long v4, v4, v0

    if-nez v4, :cond_1

    rem-long v4, v11, v2

    cmp-long v0, v4, v0

    if-nez v0, :cond_1

    .line 412
    div-long/2addr v9, v2

    .line 413
    div-long/2addr v11, v2

    goto :goto_0

    .line 415
    :cond_1
    invoke-direct {v7, v8}, Landroidx/media3/common/audio/Sonic;->moveNewSamplesToPitchBuffer(I)V

    .line 417
    const/4 v0, 0x0

    move v13, v0

    .local v13, "position":I
    :goto_1
    iget v0, v7, Landroidx/media3/common/audio/Sonic;->pitchFrameCount:I

    const/4 v14, 0x1

    sub-int/2addr v0, v14

    if-ge v13, v0, :cond_6

    .line 419
    :goto_2
    iget v0, v7, Landroidx/media3/common/audio/Sonic;->oldRatePosition:I

    add-int/2addr v0, v14

    int-to-long v0, v0

    mul-long/2addr v0, v9

    iget v2, v7, Landroidx/media3/common/audio/Sonic;->newRatePosition:I

    int-to-long v2, v2

    mul-long/2addr v2, v11

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    .line 420
    iget-object v0, v7, Landroidx/media3/common/audio/Sonic;->outputBuffer:[S

    iget v1, v7, Landroidx/media3/common/audio/Sonic;->outputFrameCount:I

    .line 421
    invoke-direct {v7, v0, v1, v14}, Landroidx/media3/common/audio/Sonic;->ensureSpaceForAdditionalFrames([SII)[S

    move-result-object v0

    iput-object v0, v7, Landroidx/media3/common/audio/Sonic;->outputBuffer:[S

    .line 423
    const/4 v0, 0x0

    move v15, v0

    .local v15, "i":I
    :goto_3
    iget v0, v7, Landroidx/media3/common/audio/Sonic;->channelCount:I

    if-ge v15, v0, :cond_2

    .line 424
    iget-object v5, v7, Landroidx/media3/common/audio/Sonic;->outputBuffer:[S

    iget v0, v7, Landroidx/media3/common/audio/Sonic;->outputFrameCount:I

    iget v1, v7, Landroidx/media3/common/audio/Sonic;->channelCount:I

    mul-int/2addr v0, v1

    add-int v16, v0, v15

    iget-object v1, v7, Landroidx/media3/common/audio/Sonic;->pitchBuffer:[S

    iget v0, v7, Landroidx/media3/common/audio/Sonic;->channelCount:I

    mul-int/2addr v0, v13

    add-int v2, v0, v15

    .line 425
    move-object/from16 v0, p0

    move-wide v3, v11

    move-object/from16 v17, v5

    move-wide v5, v9

    invoke-direct/range {v0 .. v6}, Landroidx/media3/common/audio/Sonic;->interpolate([SIJJ)S

    move-result v0

    aput-short v0, v17, v16

    .line 423
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 427
    .end local v15    # "i":I
    :cond_2
    iget v0, v7, Landroidx/media3/common/audio/Sonic;->newRatePosition:I

    add-int/2addr v0, v14

    iput v0, v7, Landroidx/media3/common/audio/Sonic;->newRatePosition:I

    .line 428
    iget v0, v7, Landroidx/media3/common/audio/Sonic;->outputFrameCount:I

    add-int/2addr v0, v14

    iput v0, v7, Landroidx/media3/common/audio/Sonic;->outputFrameCount:I

    goto :goto_2

    .line 430
    :cond_3
    iget v0, v7, Landroidx/media3/common/audio/Sonic;->oldRatePosition:I

    add-int/2addr v0, v14

    iput v0, v7, Landroidx/media3/common/audio/Sonic;->oldRatePosition:I

    .line 431
    iget v0, v7, Landroidx/media3/common/audio/Sonic;->oldRatePosition:I

    int-to-long v0, v0

    cmp-long v0, v0, v11

    if-nez v0, :cond_5

    .line 432
    const/4 v0, 0x0

    iput v0, v7, Landroidx/media3/common/audio/Sonic;->oldRatePosition:I

    .line 433
    iget v1, v7, Landroidx/media3/common/audio/Sonic;->newRatePosition:I

    int-to-long v1, v1

    cmp-long v1, v1, v9

    if-nez v1, :cond_4

    goto :goto_4

    :cond_4
    move v14, v0

    :goto_4
    invoke-static {v14}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 434
    iput v0, v7, Landroidx/media3/common/audio/Sonic;->newRatePosition:I

    .line 417
    :cond_5
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 437
    .end local v13    # "position":I
    :cond_6
    iget v0, v7, Landroidx/media3/common/audio/Sonic;->pitchFrameCount:I

    sub-int/2addr v0, v14

    invoke-direct {v7, v0}, Landroidx/media3/common/audio/Sonic;->removePitchFrames(I)V

    .line 438
    return-void
.end method

.method private changeSpeed(D)V
    .locals 9
    .param p1, "speed"    # D

    .line 504
    iget v0, p0, Landroidx/media3/common/audio/Sonic;->inputFrameCount:I

    iget v1, p0, Landroidx/media3/common/audio/Sonic;->maxRequiredFrameCount:I

    if-ge v0, v1, :cond_0

    .line 505
    return-void

    .line 507
    :cond_0
    iget v0, p0, Landroidx/media3/common/audio/Sonic;->inputFrameCount:I

    .line 508
    .local v0, "frameCount":I
    const/4 v1, 0x0

    .line 510
    .local v1, "positionFrames":I
    :cond_1
    iget v2, p0, Landroidx/media3/common/audio/Sonic;->remainingInputToCopyFrameCount:I

    if-lez v2, :cond_2

    .line 511
    invoke-direct {p0, v1}, Landroidx/media3/common/audio/Sonic;->copyInputToOutput(I)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    .line 513
    :cond_2
    iget-object v2, p0, Landroidx/media3/common/audio/Sonic;->inputBuffer:[S

    invoke-direct {p0, v2, v1}, Landroidx/media3/common/audio/Sonic;->findPitchPeriod([SI)I

    move-result v8

    .line 514
    .local v8, "period":I
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, p1, v2

    if-lez v2, :cond_3

    .line 515
    iget-object v3, p0, Landroidx/media3/common/audio/Sonic;->inputBuffer:[S

    move-object v2, p0

    move v4, v1

    move-wide v5, p1

    move v7, v8

    invoke-direct/range {v2 .. v7}, Landroidx/media3/common/audio/Sonic;->skipPitchPeriod([SIDI)I

    move-result v2

    add-int/2addr v2, v8

    add-int/2addr v1, v2

    goto :goto_0

    .line 517
    :cond_3
    iget-object v3, p0, Landroidx/media3/common/audio/Sonic;->inputBuffer:[S

    move-object v2, p0

    move v4, v1

    move-wide v5, p1

    move v7, v8

    invoke-direct/range {v2 .. v7}, Landroidx/media3/common/audio/Sonic;->insertPitchPeriod([SIDI)I

    move-result v2

    add-int/2addr v1, v2

    .line 520
    .end local v8    # "period":I
    :goto_0
    iget v2, p0, Landroidx/media3/common/audio/Sonic;->maxRequiredFrameCount:I

    add-int/2addr v2, v1

    if-le v2, v0, :cond_1

    .line 521
    invoke-direct {p0, v1}, Landroidx/media3/common/audio/Sonic;->removeProcessedInputFrames(I)V

    .line 522
    return-void
.end method

.method private copyInputToOutput(I)I
    .locals 2
    .param p1, "positionFrames"    # I

    .line 247
    iget v0, p0, Landroidx/media3/common/audio/Sonic;->maxRequiredFrameCount:I

    iget v1, p0, Landroidx/media3/common/audio/Sonic;->remainingInputToCopyFrameCount:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 248
    .local v0, "frameCount":I
    iget-object v1, p0, Landroidx/media3/common/audio/Sonic;->inputBuffer:[S

    invoke-direct {p0, v1, p1, v0}, Landroidx/media3/common/audio/Sonic;->copyToOutput([SII)V

    .line 249
    iget v1, p0, Landroidx/media3/common/audio/Sonic;->remainingInputToCopyFrameCount:I

    sub-int/2addr v1, v0

    iput v1, p0, Landroidx/media3/common/audio/Sonic;->remainingInputToCopyFrameCount:I

    .line 250
    return v0
.end method

.method private copyToOutput([SII)V
    .locals 4
    .param p1, "samples"    # [S
    .param p2, "positionFrames"    # I
    .param p3, "frameCount"    # I

    .line 236
    iget-object v0, p0, Landroidx/media3/common/audio/Sonic;->outputBuffer:[S

    iget v1, p0, Landroidx/media3/common/audio/Sonic;->outputFrameCount:I

    invoke-direct {p0, v0, v1, p3}, Landroidx/media3/common/audio/Sonic;->ensureSpaceForAdditionalFrames([SII)[S

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/audio/Sonic;->outputBuffer:[S

    .line 237
    iget v0, p0, Landroidx/media3/common/audio/Sonic;->channelCount:I

    mul-int/2addr v0, p2

    iget-object v1, p0, Landroidx/media3/common/audio/Sonic;->outputBuffer:[S

    iget v2, p0, Landroidx/media3/common/audio/Sonic;->outputFrameCount:I

    iget v3, p0, Landroidx/media3/common/audio/Sonic;->channelCount:I

    mul-int/2addr v2, v3

    iget v3, p0, Landroidx/media3/common/audio/Sonic;->channelCount:I

    mul-int/2addr v3, p3

    invoke-static {p1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 243
    iget v0, p0, Landroidx/media3/common/audio/Sonic;->outputFrameCount:I

    add-int/2addr v0, p3

    iput v0, p0, Landroidx/media3/common/audio/Sonic;->outputFrameCount:I

    .line 244
    return-void
.end method

.method private downSampleInput([SII)V
    .locals 6
    .param p1, "samples"    # [S
    .param p2, "position"    # I
    .param p3, "skip"    # I

    .line 256
    iget v0, p0, Landroidx/media3/common/audio/Sonic;->maxRequiredFrameCount:I

    div-int/2addr v0, p3

    .line 257
    .local v0, "frameCount":I
    iget v1, p0, Landroidx/media3/common/audio/Sonic;->channelCount:I

    mul-int/2addr v1, p3

    .line 258
    .local v1, "samplesPerValue":I
    iget v2, p0, Landroidx/media3/common/audio/Sonic;->channelCount:I

    mul-int/2addr p2, v2

    .line 259
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 260
    const/4 v3, 0x0

    .line 261
    .local v3, "value":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    if-ge v4, v1, :cond_0

    .line 262
    mul-int v5, v2, v1

    add-int/2addr v5, p2

    add-int/2addr v5, v4

    aget-short v5, p1, v5

    add-int/2addr v3, v5

    .line 261
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 264
    .end local v4    # "j":I
    :cond_0
    div-int/2addr v3, v1

    .line 265
    iget-object v4, p0, Landroidx/media3/common/audio/Sonic;->downSampleBuffer:[S

    int-to-short v5, v3

    aput-short v5, v4, v2

    .line 259
    .end local v3    # "value":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 267
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method private ensureSpaceForAdditionalFrames([SII)[S
    .locals 3
    .param p1, "buffer"    # [S
    .param p2, "frameCount"    # I
    .param p3, "additionalFrameCount"    # I

    .line 219
    array-length v0, p1

    iget v1, p0, Landroidx/media3/common/audio/Sonic;->channelCount:I

    div-int/2addr v0, v1

    .line 220
    .local v0, "currentCapacityFrames":I
    add-int v1, p2, p3

    if-gt v1, v0, :cond_0

    .line 221
    return-object p1

    .line 223
    :cond_0
    mul-int/lit8 v1, v0, 0x3

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p3

    .line 224
    .local v1, "newCapacityFrames":I
    iget v2, p0, Landroidx/media3/common/audio/Sonic;->channelCount:I

    mul-int/2addr v2, v1

    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([SI)[S

    move-result-object v2

    return-object v2
.end method

.method private findPitchPeriod([SI)I
    .locals 7
    .param p1, "samples"    # [S
    .param p2, "position"    # I

    .line 327
    iget v0, p0, Landroidx/media3/common/audio/Sonic;->inputSampleRateHz:I

    const/4 v1, 0x1

    const/16 v2, 0xfa0

    if-le v0, v2, :cond_0

    iget v0, p0, Landroidx/media3/common/audio/Sonic;->inputSampleRateHz:I

    div-int/2addr v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 328
    .local v0, "skip":I
    :goto_0
    iget v2, p0, Landroidx/media3/common/audio/Sonic;->channelCount:I

    if-ne v2, v1, :cond_1

    if-ne v0, v1, :cond_1

    .line 329
    iget v1, p0, Landroidx/media3/common/audio/Sonic;->minPeriod:I

    iget v2, p0, Landroidx/media3/common/audio/Sonic;->maxPeriod:I

    invoke-direct {p0, p1, p2, v1, v2}, Landroidx/media3/common/audio/Sonic;->findPitchPeriodInRange([SIII)I

    move-result v1

    .local v1, "period":I
    goto :goto_1

    .line 331
    .end local v1    # "period":I
    :cond_1
    invoke-direct {p0, p1, p2, v0}, Landroidx/media3/common/audio/Sonic;->downSampleInput([SII)V

    .line 332
    iget-object v2, p0, Landroidx/media3/common/audio/Sonic;->downSampleBuffer:[S

    iget v3, p0, Landroidx/media3/common/audio/Sonic;->minPeriod:I

    div-int/2addr v3, v0

    iget v4, p0, Landroidx/media3/common/audio/Sonic;->maxPeriod:I

    div-int/2addr v4, v0

    const/4 v5, 0x0

    invoke-direct {p0, v2, v5, v3, v4}, Landroidx/media3/common/audio/Sonic;->findPitchPeriodInRange([SIII)I

    move-result v2

    .line 333
    .local v2, "period":I
    if-eq v0, v1, :cond_5

    .line 334
    mul-int/2addr v2, v0

    .line 335
    mul-int/lit8 v3, v0, 0x4

    sub-int v3, v2, v3

    .line 336
    .local v3, "minP":I
    mul-int/lit8 v4, v0, 0x4

    add-int/2addr v4, v2

    .line 337
    .local v4, "maxP":I
    iget v6, p0, Landroidx/media3/common/audio/Sonic;->minPeriod:I

    if-ge v3, v6, :cond_2

    .line 338
    iget v3, p0, Landroidx/media3/common/audio/Sonic;->minPeriod:I

    .line 340
    :cond_2
    iget v6, p0, Landroidx/media3/common/audio/Sonic;->maxPeriod:I

    if-le v4, v6, :cond_3

    .line 341
    iget v4, p0, Landroidx/media3/common/audio/Sonic;->maxPeriod:I

    .line 343
    :cond_3
    iget v6, p0, Landroidx/media3/common/audio/Sonic;->channelCount:I

    if-ne v6, v1, :cond_4

    .line 344
    invoke-direct {p0, p1, p2, v3, v4}, Landroidx/media3/common/audio/Sonic;->findPitchPeriodInRange([SIII)I

    move-result v1

    .end local v2    # "period":I
    .restart local v1    # "period":I
    goto :goto_1

    .line 346
    .end local v1    # "period":I
    .restart local v2    # "period":I
    :cond_4
    invoke-direct {p0, p1, p2, v1}, Landroidx/media3/common/audio/Sonic;->downSampleInput([SII)V

    .line 347
    iget-object v1, p0, Landroidx/media3/common/audio/Sonic;->downSampleBuffer:[S

    invoke-direct {p0, v1, v5, v3, v4}, Landroidx/media3/common/audio/Sonic;->findPitchPeriodInRange([SIII)I

    move-result v1

    .end local v2    # "period":I
    .restart local v1    # "period":I
    goto :goto_1

    .line 333
    .end local v1    # "period":I
    .end local v3    # "minP":I
    .end local v4    # "maxP":I
    .restart local v2    # "period":I
    :cond_5
    move v1, v2

    .line 351
    .end local v2    # "period":I
    .restart local v1    # "period":I
    :goto_1
    iget v2, p0, Landroidx/media3/common/audio/Sonic;->minDiff:I

    iget v3, p0, Landroidx/media3/common/audio/Sonic;->maxDiff:I

    invoke-direct {p0, v2, v3}, Landroidx/media3/common/audio/Sonic;->previousPeriodBetter(II)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 352
    iget v2, p0, Landroidx/media3/common/audio/Sonic;->prevPeriod:I

    .local v2, "retPeriod":I
    goto :goto_2

    .line 354
    .end local v2    # "retPeriod":I
    :cond_6
    move v2, v1

    .line 356
    .restart local v2    # "retPeriod":I
    :goto_2
    iget v3, p0, Landroidx/media3/common/audio/Sonic;->minDiff:I

    iput v3, p0, Landroidx/media3/common/audio/Sonic;->prevMinDiff:I

    .line 357
    iput v1, p0, Landroidx/media3/common/audio/Sonic;->prevPeriod:I

    .line 358
    return v2
.end method

.method private findPitchPeriodInRange([SIII)I
    .locals 10
    .param p1, "samples"    # [S
    .param p2, "position"    # I
    .param p3, "minPeriod"    # I
    .param p4, "maxPeriod"    # I

    .line 272
    const/4 v0, 0x0

    .line 273
    .local v0, "bestPeriod":I
    const/16 v1, 0xff

    .line 274
    .local v1, "worstPeriod":I
    const/4 v2, 0x1

    .line 275
    .local v2, "minDiff":I
    const/4 v3, 0x0

    .line 276
    .local v3, "maxDiff":I
    iget v4, p0, Landroidx/media3/common/audio/Sonic;->channelCount:I

    mul-int/2addr p2, v4

    .line 277
    move v4, p3

    .local v4, "period":I
    :goto_0
    if-gt v4, p4, :cond_3

    .line 278
    const/4 v5, 0x0

    .line 279
    .local v5, "diff":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v4, :cond_0

    .line 280
    add-int v7, p2, v6

    aget-short v7, p1, v7

    .line 281
    .local v7, "sVal":S
    add-int v8, p2, v4

    add-int/2addr v8, v6

    aget-short v8, p1, v8

    .line 282
    .local v8, "pVal":S
    sub-int v9, v7, v8

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    add-int/2addr v5, v9

    .line 279
    .end local v7    # "sVal":S
    .end local v8    # "pVal":S
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 287
    .end local v6    # "i":I
    :cond_0
    mul-int v6, v5, v0

    mul-int v7, v2, v4

    if-ge v6, v7, :cond_1

    .line 288
    move v2, v5

    .line 289
    move v0, v4

    .line 291
    :cond_1
    mul-int v6, v5, v1

    mul-int v7, v3, v4

    if-le v6, v7, :cond_2

    .line 292
    move v3, v5

    .line 293
    move v1, v4

    .line 277
    .end local v5    # "diff":I
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 296
    .end local v4    # "period":I
    :cond_3
    div-int v4, v2, v0

    iput v4, p0, Landroidx/media3/common/audio/Sonic;->minDiff:I

    .line 297
    div-int v4, v3, v1

    iput v4, p0, Landroidx/media3/common/audio/Sonic;->maxDiff:I

    .line 298
    return v0
.end method

.method private insertPitchPeriod([SIDI)I
    .locals 12
    .param p1, "samples"    # [S
    .param p2, "position"    # I
    .param p3, "speed"    # D
    .param p5, "period"    # I

    .line 471
    move-object v0, p0

    move/from16 v9, p5

    const-wide/high16 v1, 0x3fe0000000000000L    # 0.5

    cmpg-double v1, p3, v1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    if-gez v1, :cond_0

    .line 472
    int-to-double v4, v9

    mul-double/2addr v4, p3

    sub-double/2addr v2, p3

    div-double/2addr v4, v2

    iget-wide v1, v0, Landroidx/media3/common/audio/Sonic;->accumulatedSpeedAdjustmentError:D

    add-double/2addr v4, v1

    .line 473
    .local v4, "expectedFrameCount":D
    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-int v1, v1

    .line 474
    .local v1, "newFrameCount":I
    int-to-double v2, v1

    sub-double v2, v4, v2

    iput-wide v2, v0, Landroidx/media3/common/audio/Sonic;->accumulatedSpeedAdjustmentError:D

    .line 475
    .end local v4    # "expectedFrameCount":D
    move v10, v1

    goto :goto_0

    .line 476
    .end local v1    # "newFrameCount":I
    :cond_0
    move/from16 v1, p5

    .line 477
    .restart local v1    # "newFrameCount":I
    int-to-double v4, v9

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    mul-double/2addr v6, p3

    sub-double/2addr v6, v2

    mul-double/2addr v4, v6

    sub-double/2addr v2, p3

    div-double/2addr v4, v2

    iget-wide v2, v0, Landroidx/media3/common/audio/Sonic;->accumulatedSpeedAdjustmentError:D

    add-double/2addr v4, v2

    .line 479
    .local v4, "expectedInputToCopy":D
    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, v0, Landroidx/media3/common/audio/Sonic;->remainingInputToCopyFrameCount:I

    .line 480
    iget v2, v0, Landroidx/media3/common/audio/Sonic;->remainingInputToCopyFrameCount:I

    int-to-double v2, v2

    sub-double v2, v4, v2

    iput-wide v2, v0, Landroidx/media3/common/audio/Sonic;->accumulatedSpeedAdjustmentError:D

    move v10, v1

    .line 482
    .end local v1    # "newFrameCount":I
    .end local v4    # "expectedInputToCopy":D
    .local v10, "newFrameCount":I
    :goto_0
    iget-object v1, v0, Landroidx/media3/common/audio/Sonic;->outputBuffer:[S

    iget v2, v0, Landroidx/media3/common/audio/Sonic;->outputFrameCount:I

    add-int v3, v9, v10

    .line 483
    invoke-direct {p0, v1, v2, v3}, Landroidx/media3/common/audio/Sonic;->ensureSpaceForAdditionalFrames([SII)[S

    move-result-object v1

    iput-object v1, v0, Landroidx/media3/common/audio/Sonic;->outputBuffer:[S

    .line 484
    iget v1, v0, Landroidx/media3/common/audio/Sonic;->channelCount:I

    mul-int/2addr v1, p2

    iget-object v2, v0, Landroidx/media3/common/audio/Sonic;->outputBuffer:[S

    iget v3, v0, Landroidx/media3/common/audio/Sonic;->outputFrameCount:I

    iget v4, v0, Landroidx/media3/common/audio/Sonic;->channelCount:I

    mul-int/2addr v3, v4

    iget v4, v0, Landroidx/media3/common/audio/Sonic;->channelCount:I

    mul-int/2addr v4, v9

    move-object v11, p1

    invoke-static {p1, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 490
    iget v2, v0, Landroidx/media3/common/audio/Sonic;->channelCount:I

    iget-object v3, v0, Landroidx/media3/common/audio/Sonic;->outputBuffer:[S

    iget v1, v0, Landroidx/media3/common/audio/Sonic;->outputFrameCount:I

    add-int v4, v1, v9

    add-int v6, p2, v9

    move v1, v10

    move-object v5, p1

    move-object v7, p1

    move v8, p2

    invoke-static/range {v1 .. v8}, Landroidx/media3/common/audio/Sonic;->overlapAdd(II[SI[SI[SI)V

    .line 499
    iget v1, v0, Landroidx/media3/common/audio/Sonic;->outputFrameCount:I

    add-int v2, v9, v10

    add-int/2addr v1, v2

    iput v1, v0, Landroidx/media3/common/audio/Sonic;->outputFrameCount:I

    .line 500
    return v10
.end method

.method private interpolate([SIJJ)S
    .locals 18
    .param p1, "in"    # [S
    .param p2, "inPos"    # I
    .param p3, "oldSampleRate"    # J
    .param p5, "newSampleRate"    # J

    .line 388
    move-object/from16 v0, p0

    aget-short v1, p1, p2

    .line 389
    .local v1, "left":S
    iget v2, v0, Landroidx/media3/common/audio/Sonic;->channelCount:I

    add-int v2, p2, v2

    aget-short v2, p1, v2

    .line 390
    .local v2, "right":S
    iget v3, v0, Landroidx/media3/common/audio/Sonic;->newRatePosition:I

    int-to-long v3, v3

    mul-long v3, v3, p3

    .line 391
    .local v3, "position":J
    iget v5, v0, Landroidx/media3/common/audio/Sonic;->oldRatePosition:I

    int-to-long v5, v5

    mul-long v5, v5, p5

    .line 392
    .local v5, "leftPosition":J
    iget v7, v0, Landroidx/media3/common/audio/Sonic;->oldRatePosition:I

    add-int/lit8 v7, v7, 0x1

    int-to-long v7, v7

    mul-long v7, v7, p5

    .line 393
    .local v7, "rightPosition":J
    sub-long v9, v7, v3

    .line 394
    .local v9, "ratio":J
    sub-long v11, v7, v5

    .line 395
    .local v11, "width":J
    int-to-long v13, v1

    mul-long/2addr v13, v9

    sub-long v15, v11, v9

    move/from16 v17, v1

    .end local v1    # "left":S
    .local v17, "left":S
    int-to-long v0, v2

    mul-long/2addr v15, v0

    add-long/2addr v13, v15

    div-long/2addr v13, v11

    long-to-int v0, v13

    int-to-short v0, v0

    return v0
.end method

.method private moveNewSamplesToPitchBuffer(I)V
    .locals 6
    .param p1, "originalOutputFrameCount"    # I

    .line 362
    iget v0, p0, Landroidx/media3/common/audio/Sonic;->outputFrameCount:I

    sub-int/2addr v0, p1

    .line 363
    .local v0, "frameCount":I
    iget-object v1, p0, Landroidx/media3/common/audio/Sonic;->pitchBuffer:[S

    iget v2, p0, Landroidx/media3/common/audio/Sonic;->pitchFrameCount:I

    invoke-direct {p0, v1, v2, v0}, Landroidx/media3/common/audio/Sonic;->ensureSpaceForAdditionalFrames([SII)[S

    move-result-object v1

    iput-object v1, p0, Landroidx/media3/common/audio/Sonic;->pitchBuffer:[S

    .line 364
    iget-object v1, p0, Landroidx/media3/common/audio/Sonic;->outputBuffer:[S

    iget v2, p0, Landroidx/media3/common/audio/Sonic;->channelCount:I

    mul-int/2addr v2, p1

    iget-object v3, p0, Landroidx/media3/common/audio/Sonic;->pitchBuffer:[S

    iget v4, p0, Landroidx/media3/common/audio/Sonic;->pitchFrameCount:I

    iget v5, p0, Landroidx/media3/common/audio/Sonic;->channelCount:I

    mul-int/2addr v4, v5

    iget v5, p0, Landroidx/media3/common/audio/Sonic;->channelCount:I

    mul-int/2addr v5, v0

    invoke-static {v1, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 370
    iput p1, p0, Landroidx/media3/common/audio/Sonic;->outputFrameCount:I

    .line 371
    iget v1, p0, Landroidx/media3/common/audio/Sonic;->pitchFrameCount:I

    add-int/2addr v1, v0

    iput v1, p0, Landroidx/media3/common/audio/Sonic;->pitchFrameCount:I

    .line 372
    return-void
.end method

.method private static overlapAdd(II[SI[SI[SI)V
    .locals 7
    .param p0, "frameCount"    # I
    .param p1, "channelCount"    # I
    .param p2, "out"    # [S
    .param p3, "outPosition"    # I
    .param p4, "rampDown"    # [S
    .param p5, "rampDownPosition"    # I
    .param p6, "rampUp"    # [S
    .param p7, "rampUpPosition"    # I

    .line 549
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_1

    .line 550
    mul-int v1, p3, p1

    add-int/2addr v1, v0

    .line 551
    .local v1, "o":I
    mul-int v2, p7, p1

    add-int/2addr v2, v0

    .line 552
    .local v2, "u":I
    mul-int v3, p5, p1

    add-int/2addr v3, v0

    .line 553
    .local v3, "d":I
    const/4 v4, 0x0

    .local v4, "t":I
    :goto_1
    if-ge v4, p0, :cond_0

    .line 554
    aget-short v5, p4, v3

    sub-int v6, p0, v4

    mul-int/2addr v5, v6

    aget-short v6, p6, v2

    mul-int/2addr v6, v4

    add-int/2addr v5, v6

    div-int/2addr v5, p0

    int-to-short v5, v5

    aput-short v5, p2, v1

    .line 555
    add-int/2addr v1, p1

    .line 556
    add-int/2addr v3, p1

    .line 557
    add-int/2addr v2, p1

    .line 553
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 549
    .end local v1    # "o":I
    .end local v2    # "u":I
    .end local v3    # "d":I
    .end local v4    # "t":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 560
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private previousPeriodBetter(II)Z
    .locals 3
    .param p1, "minDiff"    # I
    .param p2, "maxDiff"    # I

    .line 306
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    iget v1, p0, Landroidx/media3/common/audio/Sonic;->prevPeriod:I

    if-nez v1, :cond_0

    goto :goto_0

    .line 309
    :cond_0
    mul-int/lit8 v1, p1, 0x3

    if-le p2, v1, :cond_1

    .line 311
    return v0

    .line 313
    :cond_1
    mul-int/lit8 v1, p1, 0x2

    iget v2, p0, Landroidx/media3/common/audio/Sonic;->prevMinDiff:I

    mul-int/lit8 v2, v2, 0x3

    if-gt v1, v2, :cond_2

    .line 315
    return v0

    .line 317
    :cond_2
    const/4 v0, 0x1

    return v0

    .line 307
    :cond_3
    :goto_0
    return v0
.end method

.method private processStreamInput()V
    .locals 7

    .line 526
    iget v0, p0, Landroidx/media3/common/audio/Sonic;->outputFrameCount:I

    .line 527
    .local v0, "originalOutputFrameCount":I
    iget v1, p0, Landroidx/media3/common/audio/Sonic;->speed:F

    iget v2, p0, Landroidx/media3/common/audio/Sonic;->pitch:F

    div-float/2addr v1, v2

    float-to-double v1, v1

    .line 528
    .local v1, "s":D
    iget v3, p0, Landroidx/media3/common/audio/Sonic;->rate:F

    iget v4, p0, Landroidx/media3/common/audio/Sonic;->pitch:F

    mul-float/2addr v3, v4

    .line 529
    .local v3, "r":F
    const-wide v4, 0x3ff0000a7c5ac472L    # 1.00001

    cmpl-double v4, v1, v4

    if-gtz v4, :cond_1

    const-wide v4, 0x3fefffeb074a771dL    # 0.99999

    cmpg-double v4, v1, v4

    if-gez v4, :cond_0

    goto :goto_0

    .line 532
    :cond_0
    iget-object v4, p0, Landroidx/media3/common/audio/Sonic;->inputBuffer:[S

    iget v5, p0, Landroidx/media3/common/audio/Sonic;->inputFrameCount:I

    const/4 v6, 0x0

    invoke-direct {p0, v4, v6, v5}, Landroidx/media3/common/audio/Sonic;->copyToOutput([SII)V

    .line 533
    iput v6, p0, Landroidx/media3/common/audio/Sonic;->inputFrameCount:I

    goto :goto_1

    .line 530
    :cond_1
    :goto_0
    invoke-direct {p0, v1, v2}, Landroidx/media3/common/audio/Sonic;->changeSpeed(D)V

    .line 535
    :goto_1
    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v4, v3, v4

    if-eqz v4, :cond_2

    .line 536
    invoke-direct {p0, v3, v0}, Landroidx/media3/common/audio/Sonic;->adjustRate(FI)V

    .line 538
    :cond_2
    return-void
.end method

.method private removePitchFrames(I)V
    .locals 5
    .param p1, "frameCount"    # I

    .line 375
    if-nez p1, :cond_0

    .line 376
    return-void

    .line 378
    :cond_0
    iget-object v0, p0, Landroidx/media3/common/audio/Sonic;->pitchBuffer:[S

    iget v1, p0, Landroidx/media3/common/audio/Sonic;->channelCount:I

    mul-int/2addr v1, p1

    iget-object v2, p0, Landroidx/media3/common/audio/Sonic;->pitchBuffer:[S

    iget v3, p0, Landroidx/media3/common/audio/Sonic;->pitchFrameCount:I

    sub-int/2addr v3, p1

    iget v4, p0, Landroidx/media3/common/audio/Sonic;->channelCount:I

    mul-int/2addr v3, v4

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 384
    iget v0, p0, Landroidx/media3/common/audio/Sonic;->pitchFrameCount:I

    sub-int/2addr v0, p1

    iput v0, p0, Landroidx/media3/common/audio/Sonic;->pitchFrameCount:I

    .line 385
    return-void
.end method

.method private removeProcessedInputFrames(I)V
    .locals 6
    .param p1, "positionFrames"    # I

    .line 229
    iget v0, p0, Landroidx/media3/common/audio/Sonic;->inputFrameCount:I

    sub-int/2addr v0, p1

    .line 230
    .local v0, "remainingFrames":I
    iget-object v1, p0, Landroidx/media3/common/audio/Sonic;->inputBuffer:[S

    iget v2, p0, Landroidx/media3/common/audio/Sonic;->channelCount:I

    mul-int/2addr v2, p1

    iget-object v3, p0, Landroidx/media3/common/audio/Sonic;->inputBuffer:[S

    iget v4, p0, Landroidx/media3/common/audio/Sonic;->channelCount:I

    mul-int/2addr v4, v0

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 232
    iput v0, p0, Landroidx/media3/common/audio/Sonic;->inputFrameCount:I

    .line 233
    return-void
.end method

.method private skipPitchPeriod([SIDI)I
    .locals 17
    .param p1, "samples"    # [S
    .param p2, "position"    # I
    .param p3, "speed"    # D
    .param p5, "period"    # I

    .line 443
    move-object/from16 v0, p0

    move/from16 v1, p5

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    cmpl-double v4, p3, v2

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    if-ltz v4, :cond_0

    .line 444
    int-to-double v2, v1

    sub-double v4, p3, v5

    div-double/2addr v2, v4

    iget-wide v4, v0, Landroidx/media3/common/audio/Sonic;->accumulatedSpeedAdjustmentError:D

    add-double/2addr v2, v4

    .line 445
    .local v2, "expectedFrameCount":D
    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v4, v4

    .line 446
    .local v4, "newFrameCount":I
    int-to-double v5, v4

    sub-double v5, v2, v5

    iput-wide v5, v0, Landroidx/media3/common/audio/Sonic;->accumulatedSpeedAdjustmentError:D

    .line 447
    .end local v2    # "expectedFrameCount":D
    goto :goto_0

    .line 448
    .end local v4    # "newFrameCount":I
    :cond_0
    move/from16 v4, p5

    .line 449
    .restart local v4    # "newFrameCount":I
    int-to-double v7, v1

    sub-double v2, v2, p3

    mul-double/2addr v7, v2

    sub-double v2, p3, v5

    div-double/2addr v7, v2

    iget-wide v2, v0, Landroidx/media3/common/audio/Sonic;->accumulatedSpeedAdjustmentError:D

    add-double/2addr v7, v2

    .line 451
    .local v7, "expectedInputToCopy":D
    invoke-static {v7, v8}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, v0, Landroidx/media3/common/audio/Sonic;->remainingInputToCopyFrameCount:I

    .line 452
    iget v2, v0, Landroidx/media3/common/audio/Sonic;->remainingInputToCopyFrameCount:I

    int-to-double v2, v2

    sub-double v2, v7, v2

    iput-wide v2, v0, Landroidx/media3/common/audio/Sonic;->accumulatedSpeedAdjustmentError:D

    .line 454
    .end local v7    # "expectedInputToCopy":D
    :goto_0
    iget-object v2, v0, Landroidx/media3/common/audio/Sonic;->outputBuffer:[S

    iget v3, v0, Landroidx/media3/common/audio/Sonic;->outputFrameCount:I

    invoke-direct {v0, v2, v3, v4}, Landroidx/media3/common/audio/Sonic;->ensureSpaceForAdditionalFrames([SII)[S

    move-result-object v2

    iput-object v2, v0, Landroidx/media3/common/audio/Sonic;->outputBuffer:[S

    .line 455
    iget v10, v0, Landroidx/media3/common/audio/Sonic;->channelCount:I

    iget-object v11, v0, Landroidx/media3/common/audio/Sonic;->outputBuffer:[S

    iget v12, v0, Landroidx/media3/common/audio/Sonic;->outputFrameCount:I

    add-int v16, p2, v1

    move v9, v4

    move-object/from16 v13, p1

    move/from16 v14, p2

    move-object/from16 v15, p1

    invoke-static/range {v9 .. v16}, Landroidx/media3/common/audio/Sonic;->overlapAdd(II[SI[SI[SI)V

    .line 464
    iget v2, v0, Landroidx/media3/common/audio/Sonic;->outputFrameCount:I

    add-int/2addr v2, v4

    iput v2, v0, Landroidx/media3/common/audio/Sonic;->outputFrameCount:I

    .line 465
    return v4
.end method


# virtual methods
.method public flush()V
    .locals 2

    .line 187
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/common/audio/Sonic;->inputFrameCount:I

    .line 188
    iput v0, p0, Landroidx/media3/common/audio/Sonic;->outputFrameCount:I

    .line 189
    iput v0, p0, Landroidx/media3/common/audio/Sonic;->pitchFrameCount:I

    .line 190
    iput v0, p0, Landroidx/media3/common/audio/Sonic;->oldRatePosition:I

    .line 191
    iput v0, p0, Landroidx/media3/common/audio/Sonic;->newRatePosition:I

    .line 192
    iput v0, p0, Landroidx/media3/common/audio/Sonic;->remainingInputToCopyFrameCount:I

    .line 193
    iput v0, p0, Landroidx/media3/common/audio/Sonic;->prevPeriod:I

    .line 194
    iput v0, p0, Landroidx/media3/common/audio/Sonic;->prevMinDiff:I

    .line 195
    iput v0, p0, Landroidx/media3/common/audio/Sonic;->minDiff:I

    .line 196
    iput v0, p0, Landroidx/media3/common/audio/Sonic;->maxDiff:I

    .line 197
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/media3/common/audio/Sonic;->accumulatedSpeedAdjustmentError:D

    .line 198
    return-void
.end method

.method public getOutput(Ljava/nio/ShortBuffer;)V
    .locals 7
    .param p1, "buffer"    # Ljava/nio/ShortBuffer;

    .line 128
    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v0

    iget v1, p0, Landroidx/media3/common/audio/Sonic;->channelCount:I

    div-int/2addr v0, v1

    iget v1, p0, Landroidx/media3/common/audio/Sonic;->outputFrameCount:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 129
    .local v0, "framesToRead":I
    iget-object v1, p0, Landroidx/media3/common/audio/Sonic;->outputBuffer:[S

    iget v2, p0, Landroidx/media3/common/audio/Sonic;->channelCount:I

    mul-int/2addr v2, v0

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3, v2}, Ljava/nio/ShortBuffer;->put([SII)Ljava/nio/ShortBuffer;

    .line 130
    iget v1, p0, Landroidx/media3/common/audio/Sonic;->outputFrameCount:I

    sub-int/2addr v1, v0

    iput v1, p0, Landroidx/media3/common/audio/Sonic;->outputFrameCount:I

    .line 131
    iget-object v1, p0, Landroidx/media3/common/audio/Sonic;->outputBuffer:[S

    iget v2, p0, Landroidx/media3/common/audio/Sonic;->channelCount:I

    mul-int/2addr v2, v0

    iget-object v4, p0, Landroidx/media3/common/audio/Sonic;->outputBuffer:[S

    iget v5, p0, Landroidx/media3/common/audio/Sonic;->outputFrameCount:I

    iget v6, p0, Landroidx/media3/common/audio/Sonic;->channelCount:I

    mul-int/2addr v5, v6

    invoke-static {v1, v2, v4, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 137
    return-void
.end method

.method public getOutputSize()I
    .locals 2

    .line 202
    iget v0, p0, Landroidx/media3/common/audio/Sonic;->outputFrameCount:I

    iget v1, p0, Landroidx/media3/common/audio/Sonic;->channelCount:I

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getPendingInputBytes()I
    .locals 2

    .line 103
    iget v0, p0, Landroidx/media3/common/audio/Sonic;->inputFrameCount:I

    iget v1, p0, Landroidx/media3/common/audio/Sonic;->channelCount:I

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public queueEndOfStream()V
    .locals 11

    .line 144
    iget v0, p0, Landroidx/media3/common/audio/Sonic;->inputFrameCount:I

    .line 145
    .local v0, "remainingFrameCount":I
    iget v1, p0, Landroidx/media3/common/audio/Sonic;->speed:F

    iget v2, p0, Landroidx/media3/common/audio/Sonic;->pitch:F

    div-float/2addr v1, v2

    float-to-double v1, v1

    .line 146
    .local v1, "s":D
    iget v3, p0, Landroidx/media3/common/audio/Sonic;->rate:F

    iget v4, p0, Landroidx/media3/common/audio/Sonic;->pitch:F

    mul-float/2addr v3, v4

    float-to-double v3, v3

    .line 150
    .local v3, "r":D
    iget v5, p0, Landroidx/media3/common/audio/Sonic;->remainingInputToCopyFrameCount:I

    sub-int v5, v0, v5

    .line 155
    .local v5, "adjustedRemainingFrames":I
    iget v6, p0, Landroidx/media3/common/audio/Sonic;->outputFrameCount:I

    int-to-double v7, v5

    div-double/2addr v7, v1

    iget v9, p0, Landroidx/media3/common/audio/Sonic;->remainingInputToCopyFrameCount:I

    int-to-double v9, v9

    add-double/2addr v7, v9

    iget-wide v9, p0, Landroidx/media3/common/audio/Sonic;->accumulatedSpeedAdjustmentError:D

    add-double/2addr v7, v9

    iget v9, p0, Landroidx/media3/common/audio/Sonic;->pitchFrameCount:I

    int-to-double v9, v9

    add-double/2addr v7, v9

    div-double/2addr v7, v3

    const-wide/high16 v9, 0x3fe0000000000000L    # 0.5

    add-double/2addr v7, v9

    double-to-int v7, v7

    add-int/2addr v6, v7

    .line 164
    .local v6, "expectedOutputFrames":I
    const-wide/16 v7, 0x0

    iput-wide v7, p0, Landroidx/media3/common/audio/Sonic;->accumulatedSpeedAdjustmentError:D

    .line 167
    iget-object v7, p0, Landroidx/media3/common/audio/Sonic;->inputBuffer:[S

    iget v8, p0, Landroidx/media3/common/audio/Sonic;->inputFrameCount:I

    iget v9, p0, Landroidx/media3/common/audio/Sonic;->maxRequiredFrameCount:I

    mul-int/lit8 v9, v9, 0x2

    add-int/2addr v9, v0

    .line 168
    invoke-direct {p0, v7, v8, v9}, Landroidx/media3/common/audio/Sonic;->ensureSpaceForAdditionalFrames([SII)[S

    move-result-object v7

    iput-object v7, p0, Landroidx/media3/common/audio/Sonic;->inputBuffer:[S

    .line 170
    const/4 v7, 0x0

    .local v7, "xSample":I
    :goto_0
    iget v8, p0, Landroidx/media3/common/audio/Sonic;->maxRequiredFrameCount:I

    mul-int/lit8 v8, v8, 0x2

    iget v9, p0, Landroidx/media3/common/audio/Sonic;->channelCount:I

    mul-int/2addr v8, v9

    const/4 v9, 0x0

    if-ge v7, v8, :cond_0

    .line 171
    iget-object v8, p0, Landroidx/media3/common/audio/Sonic;->inputBuffer:[S

    iget v10, p0, Landroidx/media3/common/audio/Sonic;->channelCount:I

    mul-int/2addr v10, v0

    add-int/2addr v10, v7

    aput-short v9, v8, v10

    .line 170
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 173
    .end local v7    # "xSample":I
    :cond_0
    iget v7, p0, Landroidx/media3/common/audio/Sonic;->inputFrameCount:I

    iget v8, p0, Landroidx/media3/common/audio/Sonic;->maxRequiredFrameCount:I

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    iput v7, p0, Landroidx/media3/common/audio/Sonic;->inputFrameCount:I

    .line 174
    invoke-direct {p0}, Landroidx/media3/common/audio/Sonic;->processStreamInput()V

    .line 176
    iget v7, p0, Landroidx/media3/common/audio/Sonic;->outputFrameCount:I

    if-le v7, v6, :cond_1

    .line 177
    iput v6, p0, Landroidx/media3/common/audio/Sonic;->outputFrameCount:I

    .line 180
    :cond_1
    iput v9, p0, Landroidx/media3/common/audio/Sonic;->inputFrameCount:I

    .line 181
    iput v9, p0, Landroidx/media3/common/audio/Sonic;->remainingInputToCopyFrameCount:I

    .line 182
    iput v9, p0, Landroidx/media3/common/audio/Sonic;->pitchFrameCount:I

    .line 183
    return-void
.end method

.method public queueInput(Ljava/nio/ShortBuffer;)V
    .locals 5
    .param p1, "buffer"    # Ljava/nio/ShortBuffer;

    .line 113
    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v0

    iget v1, p0, Landroidx/media3/common/audio/Sonic;->channelCount:I

    div-int/2addr v0, v1

    .line 114
    .local v0, "framesToWrite":I
    iget v1, p0, Landroidx/media3/common/audio/Sonic;->channelCount:I

    mul-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x2

    .line 115
    .local v1, "bytesToWrite":I
    iget-object v2, p0, Landroidx/media3/common/audio/Sonic;->inputBuffer:[S

    iget v3, p0, Landroidx/media3/common/audio/Sonic;->inputFrameCount:I

    invoke-direct {p0, v2, v3, v0}, Landroidx/media3/common/audio/Sonic;->ensureSpaceForAdditionalFrames([SII)[S

    move-result-object v2

    iput-object v2, p0, Landroidx/media3/common/audio/Sonic;->inputBuffer:[S

    .line 116
    iget-object v2, p0, Landroidx/media3/common/audio/Sonic;->inputBuffer:[S

    iget v3, p0, Landroidx/media3/common/audio/Sonic;->inputFrameCount:I

    iget v4, p0, Landroidx/media3/common/audio/Sonic;->channelCount:I

    mul-int/2addr v3, v4

    div-int/lit8 v4, v1, 0x2

    invoke-virtual {p1, v2, v3, v4}, Ljava/nio/ShortBuffer;->get([SII)Ljava/nio/ShortBuffer;

    .line 117
    iget v2, p0, Landroidx/media3/common/audio/Sonic;->inputFrameCount:I

    add-int/2addr v2, v0

    iput v2, p0, Landroidx/media3/common/audio/Sonic;->inputFrameCount:I

    .line 118
    invoke-direct {p0}, Landroidx/media3/common/audio/Sonic;->processStreamInput()V

    .line 119
    return-void
.end method
