.class Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase$MessageHandler;
.super Landroid/os/Handler;
.source "MediaSessionCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MessageHandler"
.end annotation


# static fields
.field private static final KEYCODE_MEDIA_PAUSE:I = 0x7f

.field private static final KEYCODE_MEDIA_PLAY:I = 0x7e

.field private static final MSG_ADD_QUEUE_ITEM:I = 0x19

.field private static final MSG_ADD_QUEUE_ITEM_AT:I = 0x1a

.field private static final MSG_ADJUST_VOLUME:I = 0x2

.field private static final MSG_COMMAND:I = 0x1

.field private static final MSG_CUSTOM_ACTION:I = 0x14

.field private static final MSG_FAST_FORWARD:I = 0x10

.field private static final MSG_MEDIA_BUTTON:I = 0x15

.field private static final MSG_NEXT:I = 0xe

.field private static final MSG_PAUSE:I = 0xc

.field private static final MSG_PLAY:I = 0x7

.field private static final MSG_PLAY_MEDIA_ID:I = 0x8

.field private static final MSG_PLAY_SEARCH:I = 0x9

.field private static final MSG_PLAY_URI:I = 0xa

.field private static final MSG_PREPARE:I = 0x3

.field private static final MSG_PREPARE_MEDIA_ID:I = 0x4

.field private static final MSG_PREPARE_SEARCH:I = 0x5

.field private static final MSG_PREPARE_URI:I = 0x6

.field private static final MSG_PREVIOUS:I = 0xf

.field private static final MSG_RATE:I = 0x13

.field private static final MSG_RATE_EXTRA:I = 0x1f

.field private static final MSG_REMOVE_QUEUE_ITEM:I = 0x1b

.field private static final MSG_REMOVE_QUEUE_ITEM_AT:I = 0x1c

.field private static final MSG_REWIND:I = 0x11

.field private static final MSG_SEEK_TO:I = 0x12

.field private static final MSG_SET_CAPTIONING_ENABLED:I = 0x1d

.field private static final MSG_SET_PLAYBACK_SPEED:I = 0x20

.field private static final MSG_SET_REPEAT_MODE:I = 0x17

.field private static final MSG_SET_SHUFFLE_MODE:I = 0x1e

.field private static final MSG_SET_VOLUME:I = 0x16

.field private static final MSG_SKIP_TO_ITEM:I = 0xb

.field private static final MSG_STOP:I = 0xd


# instance fields
.field final synthetic this$0:Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase;


# direct methods
.method public constructor <init>(Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 3490
    iput-object p1, p0, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->this$0:Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase;

    .line 3491
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 3492
    return-void
.end method

.method private onMediaButtonEvent(Landroid/view/KeyEvent;Landroidx/media3/session/legacy/MediaSessionCompat$Callback;)V
    .locals 7
    .param p1, "ke"    # Landroid/view/KeyEvent;
    .param p2, "cb"    # Landroidx/media3/session/legacy/MediaSessionCompat$Callback;

    .line 3628
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 3631
    :cond_0
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->this$0:Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase;

    iget-object v0, v0, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase;->mState:Landroidx/media3/session/legacy/PlaybackStateCompat;

    const-wide/16 v1, 0x0

    if-nez v0, :cond_1

    move-wide v3, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->this$0:Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase;

    iget-object v0, v0, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase;->mState:Landroidx/media3/session/legacy/PlaybackStateCompat;

    invoke-virtual {v0}, Landroidx/media3/session/legacy/PlaybackStateCompat;->getActions()J

    move-result-wide v3

    .line 3632
    .local v3, "validActions":J
    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_1

    .line 3641
    :sswitch_0
    const-wide/16 v5, 0x2

    and-long/2addr v5, v3

    cmp-long v0, v5, v1

    if-eqz v0, :cond_2

    .line 3642
    invoke-virtual {p2}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;->onPause()V

    goto :goto_1

    .line 3635
    :sswitch_1
    const-wide/16 v5, 0x4

    and-long/2addr v5, v3

    cmp-long v0, v5, v1

    if-eqz v0, :cond_2

    .line 3636
    invoke-virtual {p2}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;->onPlay()V

    goto :goto_1

    .line 3661
    :sswitch_2
    const-wide/16 v5, 0x40

    and-long/2addr v5, v3

    cmp-long v0, v5, v1

    if-eqz v0, :cond_2

    .line 3662
    invoke-virtual {p2}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;->onFastForward()V

    goto :goto_1

    .line 3666
    :sswitch_3
    const-wide/16 v5, 0x8

    and-long/2addr v5, v3

    cmp-long v0, v5, v1

    if-eqz v0, :cond_2

    .line 3667
    invoke-virtual {p2}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;->onRewind()V

    goto :goto_1

    .line 3651
    :sswitch_4
    const-wide/16 v5, 0x10

    and-long/2addr v5, v3

    cmp-long v0, v5, v1

    if-eqz v0, :cond_2

    .line 3652
    invoke-virtual {p2}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;->onSkipToPrevious()V

    goto :goto_1

    .line 3646
    :sswitch_5
    const-wide/16 v5, 0x20

    and-long/2addr v5, v3

    cmp-long v0, v5, v1

    if-eqz v0, :cond_2

    .line 3647
    invoke-virtual {p2}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;->onSkipToNext()V

    goto :goto_1

    .line 3656
    :sswitch_6
    const-wide/16 v5, 0x1

    and-long/2addr v5, v3

    cmp-long v0, v5, v1

    if-eqz v0, :cond_2

    .line 3657
    invoke-virtual {p2}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;->onStop()V

    goto :goto_1

    .line 3672
    :sswitch_7
    const-string v0, "MediaSessionCompat"

    const-string v1, "KEYCODE_MEDIA_PLAY_PAUSE and KEYCODE_HEADSETHOOK are handled already"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3675
    :cond_2
    :goto_1
    return-void

    .line 3629
    .end local v3    # "validActions":J
    :cond_3
    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        0x4f -> :sswitch_7
        0x55 -> :sswitch_7
        0x56 -> :sswitch_6
        0x57 -> :sswitch_5
        0x58 -> :sswitch_4
        0x59 -> :sswitch_3
        0x5a -> :sswitch_2
        0x7e -> :sswitch_1
        0x7f -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .line 3496
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->this$0:Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase;

    iget-object v0, v0, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase;->mCallback:Landroidx/media3/session/legacy/MediaSessionCompat$Callback;

    .line 3497
    .local v0, "cb":Landroidx/media3/session/legacy/MediaSessionCompat$Callback;
    if-nez v0, :cond_0

    .line 3498
    return-void

    .line 3501
    :cond_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 3502
    .local v1, "data":Landroid/os/Bundle;
    invoke-static {v1}, Landroidx/media3/session/legacy/MediaSessionCompat;->ensureClassLoader(Landroid/os/Bundle;)V

    .line 3503
    iget-object v2, p0, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->this$0:Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase;

    new-instance v3, Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;

    .line 3505
    const-string v4, "data_calling_pkg"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3506
    const-string v5, "data_calling_pid"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 3507
    const-string v6, "data_calling_uid"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v3, v4, v5, v6}, Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;-><init>(Ljava/lang/String;II)V

    .line 3503
    invoke-virtual {v2, v3}, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase;->setCurrentControllerInfo(Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;)V

    .line 3509
    const-string v2, "data_extras"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 3510
    .local v2, "extras":Landroid/os/Bundle;
    invoke-static {v2}, Landroidx/media3/session/legacy/MediaSessionCompat;->ensureClassLoader(Landroid/os/Bundle;)V

    .line 3513
    const/4 v3, 0x0

    :try_start_0
    iget v4, p1, Landroid/os/Message;->what:I

    const/4 v5, 0x0

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_1

    .line 3583
    :pswitch_1
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {v0, v4}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;->onSetPlaybackSpeed(F)V

    .line 3584
    goto/16 :goto_1

    .line 3580
    :pswitch_2
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroidx/media3/session/legacy/RatingCompat;

    invoke-virtual {v0, v4, v2}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;->onSetRating(Landroidx/media3/session/legacy/RatingCompat;Landroid/os/Bundle;)V

    .line 3581
    goto/16 :goto_1

    .line 3619
    :pswitch_3
    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v4}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;->onSetShuffleMode(I)V

    goto/16 :goto_1

    .line 3613
    :pswitch_4
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v0, v4}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;->onSetCaptioningEnabled(Z)V

    .line 3614
    goto/16 :goto_1

    .line 3598
    :pswitch_5
    iget-object v4, p0, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->this$0:Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase;

    iget-object v4, v4, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase;->mQueue:Ljava/util/List;

    if-eqz v4, :cond_3

    .line 3600
    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ltz v4, :cond_1

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget-object v5, p0, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->this$0:Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase;

    iget-object v5, v5, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase;->mQueue:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    iget-object v4, p0, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->this$0:Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase;

    iget-object v4, v4, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase;->mQueue:Ljava/util/List;

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/session/legacy/MediaSessionCompat$QueueItem;

    goto :goto_0

    :cond_1
    move-object v4, v3

    .line 3601
    .local v4, "item":Landroidx/media3/session/legacy/MediaSessionCompat$QueueItem;
    :goto_0
    if-eqz v4, :cond_2

    .line 3602
    invoke-virtual {v4}, Landroidx/media3/session/legacy/MediaSessionCompat$QueueItem;->getDescription()Landroidx/media3/session/legacy/MediaDescriptionCompat;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;->onRemoveQueueItem(Landroidx/media3/session/legacy/MediaDescriptionCompat;)V

    .line 3604
    .end local v4    # "item":Landroidx/media3/session/legacy/MediaSessionCompat$QueueItem;
    :cond_2
    goto/16 :goto_1

    .line 3595
    :pswitch_6
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroidx/media3/session/legacy/MediaDescriptionCompat;

    invoke-virtual {v0, v4}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;->onRemoveQueueItem(Landroidx/media3/session/legacy/MediaDescriptionCompat;)V

    .line 3596
    goto/16 :goto_1

    .line 3592
    :pswitch_7
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroidx/media3/session/legacy/MediaDescriptionCompat;

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v4, v5}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;->onAddQueueItem(Landroidx/media3/session/legacy/MediaDescriptionCompat;I)V

    .line 3593
    goto/16 :goto_1

    .line 3589
    :pswitch_8
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroidx/media3/session/legacy/MediaDescriptionCompat;

    invoke-virtual {v0, v4}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;->onAddQueueItem(Landroidx/media3/session/legacy/MediaDescriptionCompat;)V

    .line 3590
    goto/16 :goto_1

    .line 3616
    :pswitch_9
    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v4}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;->onSetRepeatMode(I)V

    .line 3617
    goto/16 :goto_1

    .line 3610
    :pswitch_a
    iget-object v4, p0, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->this$0:Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase;

    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v6, v5}, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase;->setVolumeTo(II)V

    .line 3611
    goto/16 :goto_1

    .line 3519
    :pswitch_b
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/view/KeyEvent;

    .line 3520
    .local v4, "keyEvent":Landroid/view/KeyEvent;
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3521
    .local v5, "intent":Landroid/content/Intent;
    const-string v6, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v5, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3524
    invoke-virtual {v0, v5}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;->onMediaButtonEvent(Landroid/content/Intent;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 3525
    invoke-direct {p0, v4, v0}, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->onMediaButtonEvent(Landroid/view/KeyEvent;Landroidx/media3/session/legacy/MediaSessionCompat$Callback;)V

    goto/16 :goto_1

    .line 3586
    .end local v4    # "keyEvent":Landroid/view/KeyEvent;
    .end local v5    # "intent":Landroid/content/Intent;
    :pswitch_c
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4, v2}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;->onCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 3587
    goto/16 :goto_1

    .line 3577
    :pswitch_d
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroidx/media3/session/legacy/RatingCompat;

    invoke-virtual {v0, v4}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;->onSetRating(Landroidx/media3/session/legacy/RatingCompat;)V

    .line 3578
    goto/16 :goto_1

    .line 3574
    :pswitch_e
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;->onSeekTo(J)V

    .line 3575
    goto/16 :goto_1

    .line 3571
    :pswitch_f
    invoke-virtual {v0}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;->onRewind()V

    .line 3572
    goto/16 :goto_1

    .line 3568
    :pswitch_10
    invoke-virtual {v0}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;->onFastForward()V

    .line 3569
    goto/16 :goto_1

    .line 3565
    :pswitch_11
    invoke-virtual {v0}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;->onSkipToPrevious()V

    .line 3566
    goto/16 :goto_1

    .line 3562
    :pswitch_12
    invoke-virtual {v0}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;->onSkipToNext()V

    .line 3563
    goto :goto_1

    .line 3559
    :pswitch_13
    invoke-virtual {v0}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;->onStop()V

    .line 3560
    goto :goto_1

    .line 3556
    :pswitch_14
    invoke-virtual {v0}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;->onPause()V

    .line 3557
    goto :goto_1

    .line 3553
    :pswitch_15
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;->onSkipToQueueItem(J)V

    .line 3554
    goto :goto_1

    .line 3550
    :pswitch_16
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/net/Uri;

    invoke-virtual {v0, v4, v2}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;->onPlayFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 3551
    goto :goto_1

    .line 3547
    :pswitch_17
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4, v2}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;->onPlayFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 3548
    goto :goto_1

    .line 3544
    :pswitch_18
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4, v2}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;->onPlayFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 3545
    goto :goto_1

    .line 3541
    :pswitch_19
    invoke-virtual {v0}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;->onPlay()V

    .line 3542
    goto :goto_1

    .line 3538
    :pswitch_1a
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/net/Uri;

    invoke-virtual {v0, v4, v2}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;->onPrepareFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 3539
    goto :goto_1

    .line 3535
    :pswitch_1b
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4, v2}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;->onPrepareFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 3536
    goto :goto_1

    .line 3532
    :pswitch_1c
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4, v2}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;->onPrepareFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 3533
    goto :goto_1

    .line 3529
    :pswitch_1d
    invoke-virtual {v0}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;->onPrepare()V

    .line 3530
    goto :goto_1

    .line 3607
    :pswitch_1e
    iget-object v4, p0, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->this$0:Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase;

    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v6, v5}, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase;->adjustVolume(II)V

    .line 3608
    goto :goto_1

    .line 3515
    :pswitch_1f
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase$Command;

    .line 3516
    .local v4, "cmd":Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase$Command;
    iget-object v5, v4, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase$Command;->command:Ljava/lang/String;

    iget-object v6, v4, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase$Command;->extras:Landroid/os/Bundle;

    iget-object v7, v4, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase$Command;->stub:Landroid/os/ResultReceiver;

    invoke-virtual {v0, v5, v6, v7}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;->onCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3517
    nop

    .line 3623
    .end local v4    # "cmd":Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase$Command;
    :cond_3
    :goto_1
    iget-object v4, p0, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->this$0:Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase;

    invoke-virtual {v4, v3}, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase;->setCurrentControllerInfo(Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;)V

    .line 3624
    nop

    .line 3625
    return-void

    .line 3623
    :catchall_0
    move-exception v4

    iget-object v5, p0, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->this$0:Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase;

    invoke-virtual {v5, v3}, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase;->setCurrentControllerInfo(Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;)V

    .line 3624
    throw v4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
