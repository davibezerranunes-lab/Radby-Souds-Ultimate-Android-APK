.class final Landroidx/media3/exoplayer/AudioFocusManager;
.super Ljava/lang/Object;
.source "AudioFocusManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/AudioFocusManager$PlayerControl;,
        Landroidx/media3/exoplayer/AudioFocusManager$AudioFocusListener;,
        Landroidx/media3/exoplayer/AudioFocusManager$PlayerCommand;
    }
.end annotation


# static fields
.field private static final AUDIOFOCUS_GAIN:I = 0x1

.field private static final AUDIOFOCUS_GAIN_TRANSIENT:I = 0x2

.field private static final AUDIOFOCUS_GAIN_TRANSIENT_EXCLUSIVE:I = 0x4

.field private static final AUDIOFOCUS_GAIN_TRANSIENT_MAY_DUCK:I = 0x3

.field private static final AUDIOFOCUS_NONE:I = 0x0

.field private static final AUDIO_FOCUS_STATE_HAVE_FOCUS:I = 0x2

.field private static final AUDIO_FOCUS_STATE_LOSS_TRANSIENT:I = 0x3

.field private static final AUDIO_FOCUS_STATE_LOSS_TRANSIENT_DUCK:I = 0x4

.field private static final AUDIO_FOCUS_STATE_NOT_REQUESTED:I = 0x0

.field private static final AUDIO_FOCUS_STATE_NO_FOCUS:I = 0x1

.field public static final PLAYER_COMMAND_DO_NOT_PLAY:I = -0x1

.field public static final PLAYER_COMMAND_PLAY_WHEN_READY:I = 0x1

.field public static final PLAYER_COMMAND_WAIT_FOR_CALLBACK:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AudioFocusManager"

.field private static final VOLUME_MULTIPLIER_DEFAULT:F = 1.0f

.field private static final VOLUME_MULTIPLIER_DUCK:F = 0.2f


# instance fields
.field private audioAttributes:Landroidx/media3/common/AudioAttributes;

.field private audioFocusRequest:Landroid/media/AudioFocusRequest;

.field private audioFocusState:I

.field private final audioManager:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier<",
            "Landroid/media/AudioManager;",
            ">;"
        }
    .end annotation
.end field

.field private focusGainToRequest:I

.field private final focusListener:Landroidx/media3/exoplayer/AudioFocusManager$AudioFocusListener;

.field private playerControl:Landroidx/media3/exoplayer/AudioFocusManager$PlayerControl;

.field private rebuildAudioFocusRequest:Z

.field private volumeMultiplier:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroidx/media3/exoplayer/AudioFocusManager$PlayerControl;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "eventHandler"    # Landroid/os/Handler;
    .param p3, "playerControl"    # Landroidx/media3/exoplayer/AudioFocusManager$PlayerControl;

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroidx/media3/exoplayer/AudioFocusManager;->volumeMultiplier:F

    .line 184
    new-instance v0, Landroidx/media3/exoplayer/AudioFocusManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Landroidx/media3/exoplayer/AudioFocusManager$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;)V

    .line 185
    invoke-static {v0}, Lcom/google/common/base/Suppliers;->memoize(Lcom/google/common/base/Supplier;)Lcom/google/common/base/Supplier;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/AudioFocusManager;->audioManager:Lcom/google/common/base/Supplier;

    .line 190
    iput-object p3, p0, Landroidx/media3/exoplayer/AudioFocusManager;->playerControl:Landroidx/media3/exoplayer/AudioFocusManager$PlayerControl;

    .line 191
    new-instance v0, Landroidx/media3/exoplayer/AudioFocusManager$AudioFocusListener;

    invoke-direct {v0, p0, p2}, Landroidx/media3/exoplayer/AudioFocusManager$AudioFocusListener;-><init>(Landroidx/media3/exoplayer/AudioFocusManager;Landroid/os/Handler;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/AudioFocusManager;->focusListener:Landroidx/media3/exoplayer/AudioFocusManager$AudioFocusListener;

    .line 192
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/exoplayer/AudioFocusManager;->audioFocusState:I

    .line 193
    return-void
.end method

.method private abandonAudioFocusDefault()V
    .locals 2

    .line 325
    iget-object v0, p0, Landroidx/media3/exoplayer/AudioFocusManager;->audioManager:Lcom/google/common/base/Supplier;

    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iget-object v1, p0, Landroidx/media3/exoplayer/AudioFocusManager;->focusListener:Landroidx/media3/exoplayer/AudioFocusManager$AudioFocusListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 326
    return-void
.end method

.method private abandonAudioFocusIfHeld()V
    .locals 2

    .line 282
    iget v0, p0, Landroidx/media3/exoplayer/AudioFocusManager;->audioFocusState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    iget v0, p0, Landroidx/media3/exoplayer/AudioFocusManager;->audioFocusState:I

    if-nez v0, :cond_0

    goto :goto_1

    .line 286
    :cond_0
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    .line 287
    invoke-direct {p0}, Landroidx/media3/exoplayer/AudioFocusManager;->abandonAudioFocusV26()V

    goto :goto_0

    .line 289
    :cond_1
    invoke-direct {p0}, Landroidx/media3/exoplayer/AudioFocusManager;->abandonAudioFocusDefault()V

    .line 291
    :goto_0
    return-void

    .line 284
    :cond_2
    :goto_1
    return-void
.end method

.method private abandonAudioFocusV26()V
    .locals 2

    .line 330
    iget-object v0, p0, Landroidx/media3/exoplayer/AudioFocusManager;->audioFocusRequest:Landroid/media/AudioFocusRequest;

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Landroidx/media3/exoplayer/AudioFocusManager;->audioManager:Lcom/google/common/base/Supplier;

    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iget-object v1, p0, Landroidx/media3/exoplayer/AudioFocusManager;->audioFocusRequest:Landroid/media/AudioFocusRequest;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocusRequest(Landroid/media/AudioFocusRequest;)I

    .line 333
    :cond_0
    return-void
.end method

.method static synthetic access$000(Landroidx/media3/exoplayer/AudioFocusManager;I)V
    .locals 0
    .param p0, "x0"    # Landroidx/media3/exoplayer/AudioFocusManager;
    .param p1, "x1"    # I

    .line 44
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/AudioFocusManager;->handlePlatformAudioFocusChange(I)V

    return-void
.end method

.method private static convertAudioAttributesToFocusGain(Landroidx/media3/common/AudioAttributes;)I
    .locals 6
    .param p0, "audioAttributes"    # Landroidx/media3/common/AudioAttributes;

    .line 349
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 352
    return v0

    .line 355
    :cond_0
    iget v1, p0, Landroidx/media3/common/AudioAttributes;->usage:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const-string v4, "AudioFocusManager"

    const/4 v5, 0x1

    packed-switch v1, :pswitch_data_0

    .line 409
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unidentified audio usage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroidx/media3/common/AudioAttributes;->usage:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    return v0

    .line 399
    :pswitch_1
    const/4 v0, 0x4

    return v0

    .line 403
    :pswitch_2
    iget v0, p0, Landroidx/media3/common/AudioAttributes;->contentType:I

    if-ne v0, v5, :cond_1

    .line 405
    return v3

    .line 407
    :cond_1
    return v2

    .line 393
    :pswitch_3
    return v2

    .line 360
    :pswitch_4
    return v0

    .line 381
    :pswitch_5
    return v3

    .line 366
    :pswitch_6
    return v5

    .line 371
    :pswitch_7
    const-string v0, "Specify a proper usage in the audio attributes for audio focus handling. Using AUDIOFOCUS_GAIN by default."

    invoke-static {v4, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    return v5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private executePlayerCommand(I)V
    .locals 1
    .param p1, "playerCommand"    # I

    .line 459
    iget-object v0, p0, Landroidx/media3/exoplayer/AudioFocusManager;->playerControl:Landroidx/media3/exoplayer/AudioFocusManager$PlayerControl;

    if-eqz v0, :cond_0

    .line 460
    iget-object v0, p0, Landroidx/media3/exoplayer/AudioFocusManager;->playerControl:Landroidx/media3/exoplayer/AudioFocusManager$PlayerControl;

    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/AudioFocusManager$PlayerControl;->executePlayerCommand(I)V

    .line 462
    :cond_0
    return-void
.end method

.method private handlePlatformAudioFocusChange(I)V
    .locals 2
    .param p1, "focusChange"    # I

    .line 434
    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    .line 454
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown focus change type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioFocusManager"

    invoke-static {v1, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    return-void

    .line 436
    :pswitch_1
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Landroidx/media3/exoplayer/AudioFocusManager;->setAudioFocusState(I)V

    .line 437
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/AudioFocusManager;->executePlayerCommand(I)V

    .line 438
    return-void

    .line 440
    :pswitch_2
    const/4 v1, -0x1

    invoke-direct {p0, v1}, Landroidx/media3/exoplayer/AudioFocusManager;->executePlayerCommand(I)V

    .line 441
    invoke-direct {p0}, Landroidx/media3/exoplayer/AudioFocusManager;->abandonAudioFocusIfHeld()V

    .line 442
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/AudioFocusManager;->setAudioFocusState(I)V

    .line 443
    return-void

    .line 446
    :pswitch_3
    const/4 v0, -0x2

    if-eq p1, v0, :cond_1

    invoke-direct {p0}, Landroidx/media3/exoplayer/AudioFocusManager;->willPauseWhenDucked()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 450
    :cond_0
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/AudioFocusManager;->setAudioFocusState(I)V

    goto :goto_1

    .line 447
    :cond_1
    :goto_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/AudioFocusManager;->executePlayerCommand(I)V

    .line 448
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/AudioFocusManager;->setAudioFocusState(I)V

    .line 452
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic lambda$new$0(Landroid/content/Context;)Landroid/media/AudioManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 187
    nop

    .line 189
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 187
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    return-object v0
.end method

.method private requestAudioFocus()I
    .locals 4

    .line 268
    iget v0, p0, Landroidx/media3/exoplayer/AudioFocusManager;->audioFocusState:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 269
    return v1

    .line 271
    :cond_0
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v0, v3, :cond_1

    invoke-direct {p0}, Landroidx/media3/exoplayer/AudioFocusManager;->requestAudioFocusV26()I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Landroidx/media3/exoplayer/AudioFocusManager;->requestAudioFocusDefault()I

    move-result v0

    .line 272
    .local v0, "requestResult":I
    :goto_0
    if-ne v0, v1, :cond_2

    .line 273
    invoke-direct {p0, v2}, Landroidx/media3/exoplayer/AudioFocusManager;->setAudioFocusState(I)V

    .line 274
    return v1

    .line 276
    :cond_2
    invoke-direct {p0, v1}, Landroidx/media3/exoplayer/AudioFocusManager;->setAudioFocusState(I)V

    .line 277
    const/4 v1, -0x1

    return v1
.end method

.method private requestAudioFocusDefault()I
    .locals 4

    .line 294
    iget-object v0, p0, Landroidx/media3/exoplayer/AudioFocusManager;->audioManager:Lcom/google/common/base/Supplier;

    .line 295
    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iget-object v1, p0, Landroidx/media3/exoplayer/AudioFocusManager;->focusListener:Landroidx/media3/exoplayer/AudioFocusManager$AudioFocusListener;

    iget-object v2, p0, Landroidx/media3/exoplayer/AudioFocusManager;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    .line 298
    invoke-static {v2}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/common/AudioAttributes;

    iget v2, v2, Landroidx/media3/common/AudioAttributes;->usage:I

    invoke-static {v2}, Landroidx/media3/common/util/Util;->getStreamTypeForAudioUsage(I)I

    move-result v2

    iget v3, p0, Landroidx/media3/exoplayer/AudioFocusManager;->focusGainToRequest:I

    .line 296
    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    .line 294
    return v0
.end method

.method private requestAudioFocusV26()I
    .locals 4

    .line 304
    iget-object v0, p0, Landroidx/media3/exoplayer/AudioFocusManager;->audioFocusRequest:Landroid/media/AudioFocusRequest;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/media3/exoplayer/AudioFocusManager;->rebuildAudioFocusRequest:Z

    if-eqz v0, :cond_2

    .line 306
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/AudioFocusManager;->audioFocusRequest:Landroid/media/AudioFocusRequest;

    if-nez v0, :cond_1

    .line 307
    new-instance v0, Landroid/media/AudioFocusRequest$Builder;

    iget v1, p0, Landroidx/media3/exoplayer/AudioFocusManager;->focusGainToRequest:I

    invoke-direct {v0, v1}, Landroid/media/AudioFocusRequest$Builder;-><init>(I)V

    goto :goto_0

    .line 308
    :cond_1
    new-instance v0, Landroid/media/AudioFocusRequest$Builder;

    iget-object v1, p0, Landroidx/media3/exoplayer/AudioFocusManager;->audioFocusRequest:Landroid/media/AudioFocusRequest;

    invoke-direct {v0, v1}, Landroid/media/AudioFocusRequest$Builder;-><init>(Landroid/media/AudioFocusRequest;)V

    :goto_0
    nop

    .line 310
    .local v0, "builder":Landroid/media/AudioFocusRequest$Builder;
    invoke-direct {p0}, Landroidx/media3/exoplayer/AudioFocusManager;->willPauseWhenDucked()Z

    move-result v1

    .line 311
    .local v1, "willPauseWhenDucked":Z
    iget-object v2, p0, Landroidx/media3/exoplayer/AudioFocusManager;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    .line 314
    invoke-static {v2}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/common/AudioAttributes;

    invoke-virtual {v2}, Landroidx/media3/common/AudioAttributes;->getAudioAttributesV21()Landroidx/media3/common/AudioAttributes$AudioAttributesV21;

    move-result-object v2

    iget-object v2, v2, Landroidx/media3/common/AudioAttributes$AudioAttributesV21;->audioAttributes:Landroid/media/AudioAttributes;

    .line 313
    invoke-virtual {v0, v2}, Landroid/media/AudioFocusRequest$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v2

    .line 315
    invoke-virtual {v2, v1}, Landroid/media/AudioFocusRequest$Builder;->setWillPauseWhenDucked(Z)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v2

    iget-object v3, p0, Landroidx/media3/exoplayer/AudioFocusManager;->focusListener:Landroidx/media3/exoplayer/AudioFocusManager$AudioFocusListener;

    .line 316
    invoke-virtual {v2, v3}, Landroid/media/AudioFocusRequest$Builder;->setOnAudioFocusChangeListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v2

    .line 317
    invoke-virtual {v2}, Landroid/media/AudioFocusRequest$Builder;->build()Landroid/media/AudioFocusRequest;

    move-result-object v2

    iput-object v2, p0, Landroidx/media3/exoplayer/AudioFocusManager;->audioFocusRequest:Landroid/media/AudioFocusRequest;

    .line 319
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroidx/media3/exoplayer/AudioFocusManager;->rebuildAudioFocusRequest:Z

    .line 321
    .end local v0    # "builder":Landroid/media/AudioFocusRequest$Builder;
    .end local v1    # "willPauseWhenDucked":Z
    :cond_2
    iget-object v0, p0, Landroidx/media3/exoplayer/AudioFocusManager;->audioManager:Lcom/google/common/base/Supplier;

    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iget-object v1, p0, Landroidx/media3/exoplayer/AudioFocusManager;->audioFocusRequest:Landroid/media/AudioFocusRequest;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioFocusRequest;)I

    move-result v0

    return v0
.end method

.method private setAudioFocusState(I)V
    .locals 2
    .param p1, "audioFocusState"    # I

    .line 415
    iget v0, p0, Landroidx/media3/exoplayer/AudioFocusManager;->audioFocusState:I

    if-ne v0, p1, :cond_0

    .line 416
    return-void

    .line 418
    :cond_0
    iput p1, p0, Landroidx/media3/exoplayer/AudioFocusManager;->audioFocusState:I

    .line 421
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 422
    const v0, 0x3e4ccccd    # 0.2f

    goto :goto_0

    .line 423
    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    nop

    .line 424
    .local v0, "volumeMultiplier":F
    iget v1, p0, Landroidx/media3/exoplayer/AudioFocusManager;->volumeMultiplier:F

    cmpl-float v1, v1, v0

    if-nez v1, :cond_2

    .line 425
    return-void

    .line 427
    :cond_2
    iput v0, p0, Landroidx/media3/exoplayer/AudioFocusManager;->volumeMultiplier:F

    .line 428
    iget-object v1, p0, Landroidx/media3/exoplayer/AudioFocusManager;->playerControl:Landroidx/media3/exoplayer/AudioFocusManager$PlayerControl;

    if-eqz v1, :cond_3

    .line 429
    iget-object v1, p0, Landroidx/media3/exoplayer/AudioFocusManager;->playerControl:Landroidx/media3/exoplayer/AudioFocusManager$PlayerControl;

    invoke-interface {v1, v0}, Landroidx/media3/exoplayer/AudioFocusManager$PlayerControl;->setVolumeMultiplier(F)V

    .line 431
    :cond_3
    return-void
.end method

.method private shouldHandleAudioFocus(I)Z
    .locals 2
    .param p1, "playbackState"    # I

    .line 264
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    iget v1, p0, Landroidx/media3/exoplayer/AudioFocusManager;->focusGainToRequest:I

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private willPauseWhenDucked()Z
    .locals 2

    .line 336
    iget-object v0, p0, Landroidx/media3/exoplayer/AudioFocusManager;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/AudioFocusManager;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    iget v0, v0, Landroidx/media3/common/AudioAttributes;->contentType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method getFocusListener()Landroid/media/AudioManager$OnAudioFocusChangeListener;
    .locals 1

    .line 260
    iget-object v0, p0, Landroidx/media3/exoplayer/AudioFocusManager;->focusListener:Landroidx/media3/exoplayer/AudioFocusManager$AudioFocusListener;

    return-object v0
.end method

.method public getVolumeMultiplier()F
    .locals 1

    .line 197
    iget v0, p0, Landroidx/media3/exoplayer/AudioFocusManager;->volumeMultiplier:F

    return v0
.end method

.method public release()V
    .locals 1

    .line 251
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/exoplayer/AudioFocusManager;->playerControl:Landroidx/media3/exoplayer/AudioFocusManager$PlayerControl;

    .line 252
    invoke-direct {p0}, Landroidx/media3/exoplayer/AudioFocusManager;->abandonAudioFocusIfHeld()V

    .line 253
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/AudioFocusManager;->setAudioFocusState(I)V

    .line 254
    return-void
.end method

.method public setAudioAttributes(Landroidx/media3/common/AudioAttributes;)V
    .locals 2
    .param p1, "audioAttributes"    # Landroidx/media3/common/AudioAttributes;

    .line 210
    iget-object v0, p0, Landroidx/media3/exoplayer/AudioFocusManager;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    invoke-static {v0, p1}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 211
    iput-object p1, p0, Landroidx/media3/exoplayer/AudioFocusManager;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    .line 212
    invoke-static {p1}, Landroidx/media3/exoplayer/AudioFocusManager;->convertAudioAttributesToFocusGain(Landroidx/media3/common/AudioAttributes;)I

    move-result v0

    iput v0, p0, Landroidx/media3/exoplayer/AudioFocusManager;->focusGainToRequest:I

    .line 213
    iget v0, p0, Landroidx/media3/exoplayer/AudioFocusManager;->focusGainToRequest:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Landroidx/media3/exoplayer/AudioFocusManager;->focusGainToRequest:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    const-string v0, "Automatic handling of audio focus is only available for USAGE_MEDIA and USAGE_GAME."

    invoke-static {v1, v0}, Landroidx/media3/common/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 217
    :cond_2
    return-void
.end method

.method public updateAudioFocus(ZI)I
    .locals 3
    .param p1, "playWhenReady"    # Z
    .param p2, "playbackState"    # I

    .line 228
    invoke-direct {p0, p2}, Landroidx/media3/exoplayer/AudioFocusManager;->shouldHandleAudioFocus(I)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 229
    invoke-direct {p0}, Landroidx/media3/exoplayer/AudioFocusManager;->abandonAudioFocusIfHeld()V

    .line 230
    invoke-direct {p0, v2}, Landroidx/media3/exoplayer/AudioFocusManager;->setAudioFocusState(I)V

    .line 231
    return v1

    .line 233
    :cond_0
    if-eqz p1, :cond_1

    .line 234
    invoke-direct {p0}, Landroidx/media3/exoplayer/AudioFocusManager;->requestAudioFocus()I

    move-result v0

    return v0

    .line 236
    :cond_1
    iget v0, p0, Landroidx/media3/exoplayer/AudioFocusManager;->audioFocusState:I

    packed-switch v0, :pswitch_data_0

    .line 242
    :pswitch_0
    return v1

    .line 240
    :pswitch_1
    return v2

    .line 238
    :pswitch_2
    const/4 v0, -0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
