.class public Landroidx/media3/session/DefaultMediaNotificationProvider;
.super Ljava/lang/Object;
.source "DefaultMediaNotificationProvider.java"

# interfaces
.implements Landroidx/media3/session/MediaNotification$Provider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/session/DefaultMediaNotificationProvider$Builder;,
        Landroidx/media3/session/DefaultMediaNotificationProvider$NotificationIdProvider;,
        Landroidx/media3/session/DefaultMediaNotificationProvider$OnBitmapLoadedFutureCallback;,
        Landroidx/media3/session/DefaultMediaNotificationProvider$Api31;,
        Landroidx/media3/session/DefaultMediaNotificationProvider$Api26;
    }
.end annotation


# static fields
.field public static final COMMAND_KEY_COMPACT_VIEW_INDEX:Ljava/lang/String; = "androidx.media3.session.command.COMPACT_VIEW_INDEX"

.field public static final DEFAULT_CHANNEL_ID:Ljava/lang/String; = "default_channel_id"

.field public static final DEFAULT_CHANNEL_NAME_RESOURCE_ID:I

.field public static final DEFAULT_NOTIFICATION_ID:I = 0x3e9

.field public static final GROUP_KEY:Ljava/lang/String; = "media3_group_key"

.field private static final TAG:Ljava/lang/String; = "NotificationProvider"


# instance fields
.field private final channelId:Ljava/lang/String;

.field private final channelNameResourceId:I

.field private final context:Landroid/content/Context;

.field private final notificationIdProvider:Landroidx/media3/session/DefaultMediaNotificationProvider$NotificationIdProvider;

.field private final notificationManager:Landroid/app/NotificationManager;

.field private pendingOnBitmapLoadedFutureCallback:Landroidx/media3/session/DefaultMediaNotificationProvider$OnBitmapLoadedFutureCallback;

.field private smallIconResourceId:I


# direct methods
.method public static synthetic $r8$lambda$mCEi04OcFi8gu0FD463twzV2nG8(Landroid/os/Handler;Ljava/lang/Runnable;)Z
    .locals 0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 236
    sget v0, Landroidx/media3/session/R$string;->default_notification_channel_name:I

    sput v0, Landroidx/media3/session/DefaultMediaNotificationProvider;->DEFAULT_CHANNEL_NAME_RESOURCE_ID:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 262
    new-instance v0, Landroidx/media3/session/DefaultMediaNotificationProvider$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroidx/media3/session/DefaultMediaNotificationProvider$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "default_channel_id"

    sget v2, Landroidx/media3/session/DefaultMediaNotificationProvider;->DEFAULT_CHANNEL_NAME_RESOURCE_ID:I

    invoke-direct {p0, p1, v0, v1, v2}, Landroidx/media3/session/DefaultMediaNotificationProvider;-><init>(Landroid/content/Context;Landroidx/media3/session/DefaultMediaNotificationProvider$NotificationIdProvider;Ljava/lang/String;I)V

    .line 267
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/media3/session/DefaultMediaNotificationProvider$NotificationIdProvider;Ljava/lang/String;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "notificationIdProvider"    # Landroidx/media3/session/DefaultMediaNotificationProvider$NotificationIdProvider;
    .param p3, "channelId"    # Ljava/lang/String;
    .param p4, "channelNameResourceId"    # I

    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 278
    iput-object p1, p0, Landroidx/media3/session/DefaultMediaNotificationProvider;->context:Landroid/content/Context;

    .line 279
    iput-object p2, p0, Landroidx/media3/session/DefaultMediaNotificationProvider;->notificationIdProvider:Landroidx/media3/session/DefaultMediaNotificationProvider$NotificationIdProvider;

    .line 280
    iput-object p3, p0, Landroidx/media3/session/DefaultMediaNotificationProvider;->channelId:Ljava/lang/String;

    .line 281
    iput p4, p0, Landroidx/media3/session/DefaultMediaNotificationProvider;->channelNameResourceId:I

    .line 282
    nop

    .line 284
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 283
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Landroidx/media3/session/DefaultMediaNotificationProvider;->notificationManager:Landroid/app/NotificationManager;

    .line 285
    sget v0, Landroidx/media3/session/R$drawable;->media3_notification_small_icon:I

    iput v0, p0, Landroidx/media3/session/DefaultMediaNotificationProvider;->smallIconResourceId:I

    .line 286
    return-void
.end method

.method private constructor <init>(Landroidx/media3/session/DefaultMediaNotificationProvider$Builder;)V
    .locals 4
    .param p1, "builder"    # Landroidx/media3/session/DefaultMediaNotificationProvider$Builder;

    .line 289
    nop

    .line 290
    invoke-static {p1}, Landroidx/media3/session/DefaultMediaNotificationProvider$Builder;->access$100(Landroidx/media3/session/DefaultMediaNotificationProvider$Builder;)Landroid/content/Context;

    move-result-object v0

    .line 291
    invoke-static {p1}, Landroidx/media3/session/DefaultMediaNotificationProvider$Builder;->access$200(Landroidx/media3/session/DefaultMediaNotificationProvider$Builder;)Landroidx/media3/session/DefaultMediaNotificationProvider$NotificationIdProvider;

    move-result-object v1

    .line 292
    invoke-static {p1}, Landroidx/media3/session/DefaultMediaNotificationProvider$Builder;->access$300(Landroidx/media3/session/DefaultMediaNotificationProvider$Builder;)Ljava/lang/String;

    move-result-object v2

    .line 293
    invoke-static {p1}, Landroidx/media3/session/DefaultMediaNotificationProvider$Builder;->access$400(Landroidx/media3/session/DefaultMediaNotificationProvider$Builder;)I

    move-result v3

    .line 289
    invoke-direct {p0, v0, v1, v2, v3}, Landroidx/media3/session/DefaultMediaNotificationProvider;-><init>(Landroid/content/Context;Landroidx/media3/session/DefaultMediaNotificationProvider$NotificationIdProvider;Ljava/lang/String;I)V

    .line 294
    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/session/DefaultMediaNotificationProvider$Builder;Landroidx/media3/session/DefaultMediaNotificationProvider$1;)V
    .locals 0
    .param p1, "x0"    # Landroidx/media3/session/DefaultMediaNotificationProvider$Builder;
    .param p2, "x1"    # Landroidx/media3/session/DefaultMediaNotificationProvider$1;

    .line 115
    invoke-direct {p0, p1}, Landroidx/media3/session/DefaultMediaNotificationProvider;-><init>(Landroidx/media3/session/DefaultMediaNotificationProvider$Builder;)V

    return-void
.end method

.method static synthetic access$500(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/Throwable;

    .line 115
    invoke-static {p0}, Landroidx/media3/session/DefaultMediaNotificationProvider;->getBitmapLoadErrorMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private ensureNotificationChannel()V
    .locals 4

    .line 627
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Landroidx/media3/session/DefaultMediaNotificationProvider;->notificationManager:Landroid/app/NotificationManager;

    iget-object v1, p0, Landroidx/media3/session/DefaultMediaNotificationProvider;->channelId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 630
    :cond_0
    iget-object v0, p0, Landroidx/media3/session/DefaultMediaNotificationProvider;->notificationManager:Landroid/app/NotificationManager;

    iget-object v1, p0, Landroidx/media3/session/DefaultMediaNotificationProvider;->channelId:Ljava/lang/String;

    iget-object v2, p0, Landroidx/media3/session/DefaultMediaNotificationProvider;->context:Landroid/content/Context;

    iget v3, p0, Landroidx/media3/session/DefaultMediaNotificationProvider;->channelNameResourceId:I

    .line 631
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 630
    invoke-static {v0, v1, v2}, Landroidx/media3/session/DefaultMediaNotificationProvider$Api26;->createNotificationChannel(Landroid/app/NotificationManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    return-void

    .line 628
    :cond_1
    :goto_0
    return-void
.end method

.method private static getBitmapLoadErrorMessage(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2
    .param p0, "throwable"    # Ljava/lang/Throwable;

    .line 706
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to load bitmap: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getPlaybackStartTimeEpochMs(Landroidx/media3/common/Player;)J
    .locals 4
    .param p0, "player"    # Landroidx/media3/common/Player;

    .line 635
    invoke-interface {p0}, Landroidx/media3/common/Player;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 636
    invoke-interface {p0}, Landroidx/media3/common/Player;->isPlayingAd()Z

    move-result v0

    if-nez v0, :cond_0

    .line 637
    invoke-interface {p0}, Landroidx/media3/common/Player;->isCurrentMediaItemDynamic()Z

    move-result v0

    if-nez v0, :cond_0

    .line 638
    invoke-interface {p0}, Landroidx/media3/common/Player;->getPlaybackParameters()Landroidx/media3/common/PlaybackParameters;

    move-result-object v0

    iget v0, v0, Landroidx/media3/common/PlaybackParameters;->speed:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 639
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-interface {p0}, Landroidx/media3/common/Player;->getContentPosition()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0

    .line 641
    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method static synthetic lambda$new$0(Landroidx/media3/session/MediaSession;)I
    .locals 1
    .param p0, "session"    # Landroidx/media3/session/MediaSession;

    .line 264
    const/16 v0, 0x3e9

    return v0
.end method


# virtual methods
.method protected addNotificationActions(Landroidx/media3/session/MediaSession;Lcom/google/common/collect/ImmutableList;Landroidx/core/app/NotificationCompat$Builder;Landroidx/media3/session/MediaNotification$ActionFactory;)[I
    .locals 16
    .param p1, "mediaSession"    # Landroidx/media3/session/MediaSession;
    .param p3, "builder"    # Landroidx/core/app/NotificationCompat$Builder;
    .param p4, "actionFactory"    # Landroidx/media3/session/MediaNotification$ActionFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/session/MediaSession;",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/session/CommandButton;",
            ">;",
            "Landroidx/core/app/NotificationCompat$Builder;",
            "Landroidx/media3/session/MediaNotification$ActionFactory;",
            ")[I"
        }
    .end annotation

    .line 531
    .local p2, "mediaButtons":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Landroidx/media3/session/CommandButton;>;"
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    const/4 v3, 0x3

    new-array v4, v3, [I

    .line 532
    .local v4, "compactViewIndices":[I
    new-array v5, v3, [I

    .line 533
    .local v5, "defaultCompactViewIndices":[I
    const/4 v6, -0x1

    invoke-static {v4, v6}, Ljava/util/Arrays;->fill([II)V

    .line 534
    invoke-static {v5, v6}, Ljava/util/Arrays;->fill([II)V

    .line 535
    const/4 v7, 0x0

    .line 536
    .local v7, "compactViewCommandCount":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    invoke-virtual/range {p2 .. p2}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v9

    if-ge v8, v9, :cond_9

    .line 537
    move-object/from16 v9, p2

    invoke-virtual {v9, v8}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/media3/session/CommandButton;

    .line 538
    .local v10, "commandButton":Landroidx/media3/session/CommandButton;
    iget-object v11, v10, Landroidx/media3/session/CommandButton;->sessionCommand:Landroidx/media3/session/SessionCommand;

    const/4 v13, 0x1

    if-eqz v11, :cond_0

    .line 539
    nop

    .line 540
    invoke-interface {v2, v0, v10}, Landroidx/media3/session/MediaNotification$ActionFactory;->createCustomActionFromCustomCommandButton(Landroidx/media3/session/MediaSession;Landroidx/media3/session/CommandButton;)Landroidx/core/app/NotificationCompat$Action;

    move-result-object v11

    .line 539
    invoke-virtual {v1, v11}, Landroidx/core/app/NotificationCompat$Builder;->addAction(Landroidx/core/app/NotificationCompat$Action;)Landroidx/core/app/NotificationCompat$Builder;

    move-object/from16 v11, p0

    goto :goto_2

    .line 542
    :cond_0
    iget v11, v10, Landroidx/media3/session/CommandButton;->playerCommand:I

    if-eq v11, v6, :cond_1

    move v11, v13

    goto :goto_1

    :cond_1
    const/4 v11, 0x0

    :goto_1
    invoke-static {v11}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 543
    move-object/from16 v11, p0

    iget-object v14, v11, Landroidx/media3/session/DefaultMediaNotificationProvider;->context:Landroid/content/Context;

    iget v15, v10, Landroidx/media3/session/CommandButton;->iconResId:I

    .line 546
    invoke-static {v14, v15}, Landroidx/core/graphics/drawable/IconCompat;->createWithResource(Landroid/content/Context;I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v14

    iget-object v15, v10, Landroidx/media3/session/CommandButton;->displayName:Ljava/lang/CharSequence;

    iget v12, v10, Landroidx/media3/session/CommandButton;->playerCommand:I

    .line 544
    invoke-interface {v2, v0, v14, v15, v12}, Landroidx/media3/session/MediaNotification$ActionFactory;->createMediaAction(Landroidx/media3/session/MediaSession;Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;I)Landroidx/core/app/NotificationCompat$Action;

    move-result-object v12

    .line 543
    invoke-virtual {v1, v12}, Landroidx/core/app/NotificationCompat$Builder;->addAction(Landroidx/core/app/NotificationCompat$Action;)Landroidx/core/app/NotificationCompat$Builder;

    .line 550
    :goto_2
    if-ne v7, v3, :cond_2

    .line 551
    goto :goto_4

    .line 553
    :cond_2
    iget-object v12, v10, Landroidx/media3/session/CommandButton;->extras:Landroid/os/Bundle;

    .line 554
    const-string v14, "androidx.media3.session.command.COMPACT_VIEW_INDEX"

    invoke-virtual {v12, v14, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v12

    .line 556
    .local v12, "compactViewIndex":I
    if-ltz v12, :cond_3

    array-length v14, v4

    if-ge v12, v14, :cond_3

    .line 557
    add-int/lit8 v7, v7, 0x1

    .line 558
    aput v8, v4, v12

    goto :goto_4

    .line 559
    :cond_3
    iget v14, v10, Landroidx/media3/session/CommandButton;->playerCommand:I

    const/4 v15, 0x7

    if-eq v14, v15, :cond_7

    iget v14, v10, Landroidx/media3/session/CommandButton;->playerCommand:I

    const/4 v15, 0x6

    if-ne v14, v15, :cond_4

    goto :goto_3

    .line 562
    :cond_4
    iget v14, v10, Landroidx/media3/session/CommandButton;->playerCommand:I

    if-ne v14, v13, :cond_5

    .line 563
    aput v8, v5, v13

    goto :goto_4

    .line 564
    :cond_5
    iget v13, v10, Landroidx/media3/session/CommandButton;->playerCommand:I

    const/16 v14, 0x9

    if-eq v13, v14, :cond_6

    iget v13, v10, Landroidx/media3/session/CommandButton;->playerCommand:I

    const/16 v14, 0x8

    if-ne v13, v14, :cond_8

    .line 566
    :cond_6
    const/4 v13, 0x2

    aput v8, v5, v13

    goto :goto_4

    .line 561
    :cond_7
    :goto_3
    const/4 v13, 0x0

    aput v8, v5, v13

    .line 536
    .end local v10    # "commandButton":Landroidx/media3/session/CommandButton;
    .end local v12    # "compactViewIndex":I
    :cond_8
    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_9
    move-object/from16 v11, p0

    move-object/from16 v9, p2

    .line 569
    .end local v8    # "i":I
    if-nez v7, :cond_b

    .line 572
    const/4 v3, 0x0

    .line 573
    .local v3, "indexInCompactViewIndices":I
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_5
    array-length v10, v5

    if-ge v8, v10, :cond_b

    .line 574
    aget v10, v5, v8

    if-ne v10, v6, :cond_a

    .line 575
    goto :goto_6

    .line 577
    :cond_a
    aget v10, v5, v8

    aput v10, v4, v3

    .line 578
    add-int/lit8 v3, v3, 0x1

    .line 573
    :goto_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 581
    .end local v3    # "indexInCompactViewIndices":I
    .end local v8    # "i":I
    :cond_b
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_7
    array-length v8, v4

    if-ge v3, v8, :cond_d

    .line 582
    aget v8, v4, v3

    if-ne v8, v6, :cond_c

    .line 583
    invoke-static {v4, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v4

    .line 584
    goto :goto_8

    .line 581
    :cond_c
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 587
    .end local v3    # "i":I
    :cond_d
    :goto_8
    return-object v4
.end method

.method public final createNotification(Landroidx/media3/session/MediaSession;Lcom/google/common/collect/ImmutableList;Landroidx/media3/session/MediaNotification$ActionFactory;Landroidx/media3/session/MediaNotification$Provider$Callback;)Landroidx/media3/session/MediaNotification;
    .locals 18
    .param p1, "mediaSession"    # Landroidx/media3/session/MediaSession;
    .param p3, "actionFactory"    # Landroidx/media3/session/MediaNotification$ActionFactory;
    .param p4, "onNotificationChangedCallback"    # Landroidx/media3/session/MediaNotification$Provider$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/session/MediaSession;",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/session/CommandButton;",
            ">;",
            "Landroidx/media3/session/MediaNotification$ActionFactory;",
            "Landroidx/media3/session/MediaNotification$Provider$Callback;",
            ")",
            "Landroidx/media3/session/MediaNotification;"
        }
    .end annotation

    .line 304
    .local p2, "mediaButtonPreferences":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Landroidx/media3/session/CommandButton;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct/range {p0 .. p0}, Landroidx/media3/session/DefaultMediaNotificationProvider;->ensureNotificationChannel()V

    .line 307
    new-instance v0, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    move-object v5, v0

    .line 309
    .local v5, "mediaButtonPreferencesWithEnabledCommandButtonsOnly":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Landroidx/media3/session/CommandButton;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual/range {p2 .. p2}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v6

    if-ge v0, v6, :cond_1

    .line 310
    invoke-virtual {v3, v0}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/media3/session/CommandButton;

    .line 311
    .local v6, "button":Landroidx/media3/session/CommandButton;
    iget-object v7, v6, Landroidx/media3/session/CommandButton;->sessionCommand:Landroidx/media3/session/SessionCommand;

    if-eqz v7, :cond_0

    iget-object v7, v6, Landroidx/media3/session/CommandButton;->sessionCommand:Landroidx/media3/session/SessionCommand;

    iget v7, v7, Landroidx/media3/session/SessionCommand;->commandCode:I

    if-nez v7, :cond_0

    iget-boolean v7, v6, Landroidx/media3/session/CommandButton;->isEnabled:Z

    if-eqz v7, :cond_0

    .line 314
    invoke-virtual {v3, v0}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/media3/session/CommandButton;

    invoke-virtual {v5, v7}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 309
    .end local v6    # "button":Landroidx/media3/session/CommandButton;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 317
    .end local v0    # "i":I
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/session/MediaSession;->getPlayer()Landroidx/media3/common/Player;

    move-result-object v6

    .line 318
    .local v6, "player":Landroidx/media3/common/Player;
    new-instance v0, Landroidx/core/app/NotificationCompat$Builder;

    iget-object v7, v1, Landroidx/media3/session/DefaultMediaNotificationProvider;->context:Landroid/content/Context;

    iget-object v8, v1, Landroidx/media3/session/DefaultMediaNotificationProvider;->channelId:Ljava/lang/String;

    invoke-direct {v0, v7, v8}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    move-object v7, v0

    .line 319
    .local v7, "builder":Landroidx/core/app/NotificationCompat$Builder;
    iget-object v0, v1, Landroidx/media3/session/DefaultMediaNotificationProvider;->notificationIdProvider:Landroidx/media3/session/DefaultMediaNotificationProvider$NotificationIdProvider;

    invoke-interface {v0, v2}, Landroidx/media3/session/DefaultMediaNotificationProvider$NotificationIdProvider;->getNotificationId(Landroidx/media3/session/MediaSession;)I

    move-result v8

    .line 321
    .local v8, "notificationId":I
    new-instance v0, Landroidx/media3/session/MediaStyleNotificationHelper$MediaStyle;

    invoke-direct {v0, v2}, Landroidx/media3/session/MediaStyleNotificationHelper$MediaStyle;-><init>(Landroidx/media3/session/MediaSession;)V

    move-object v9, v0

    .line 322
    .local v9, "mediaStyle":Landroidx/media3/session/MediaStyleNotificationHelper$MediaStyle;
    nop

    .line 327
    invoke-interface {v6}, Landroidx/media3/common/Player;->getAvailableCommands()Landroidx/media3/common/Player$Commands;

    move-result-object v0

    .line 328
    invoke-virtual {v5}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v10

    .line 330
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/session/MediaSession;->getShowPlayButtonIfPlaybackIsSuppressed()Z

    move-result v11

    .line 329
    invoke-static {v6, v11}, Landroidx/media3/common/util/Util;->shouldShowPlayButton(Landroidx/media3/common/Player;Z)Z

    move-result v11

    .line 325
    const/4 v12, 0x1

    xor-int/2addr v11, v12

    invoke-virtual {v1, v2, v0, v10, v11}, Landroidx/media3/session/DefaultMediaNotificationProvider;->getMediaButtons(Landroidx/media3/session/MediaSession;Landroidx/media3/common/Player$Commands;Lcom/google/common/collect/ImmutableList;Z)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 323
    invoke-virtual {v1, v2, v0, v7, v4}, Landroidx/media3/session/DefaultMediaNotificationProvider;->addNotificationActions(Landroidx/media3/session/MediaSession;Lcom/google/common/collect/ImmutableList;Landroidx/core/app/NotificationCompat$Builder;Landroidx/media3/session/MediaNotification$ActionFactory;)[I

    move-result-object v10

    .line 333
    .local v10, "compactViewIndices":[I
    invoke-virtual {v9, v10}, Landroidx/media3/session/MediaStyleNotificationHelper$MediaStyle;->setShowActionsInCompactView([I)Landroidx/media3/session/MediaStyleNotificationHelper$MediaStyle;

    .line 336
    const/16 v0, 0x12

    invoke-interface {v6, v0}, Landroidx/media3/common/Player;->isCommandAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 337
    invoke-interface {v6}, Landroidx/media3/common/Player;->getMediaMetadata()Landroidx/media3/common/MediaMetadata;

    move-result-object v11

    .line 338
    .local v11, "metadata":Landroidx/media3/common/MediaMetadata;
    nop

    .line 339
    invoke-virtual {v1, v11}, Landroidx/media3/session/DefaultMediaNotificationProvider;->getNotificationContentTitle(Landroidx/media3/common/MediaMetadata;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 340
    invoke-virtual {v1, v11}, Landroidx/media3/session/DefaultMediaNotificationProvider;->getNotificationContentText(Landroidx/media3/common/MediaMetadata;)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v0, v13}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 342
    nop

    .line 343
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/session/MediaSession;->getBitmapLoader()Landroidx/media3/common/util/BitmapLoader;

    move-result-object v0

    invoke-interface {v0, v11}, Landroidx/media3/common/util/BitmapLoader;->loadBitmapFromMetadata(Landroidx/media3/common/MediaMetadata;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v13

    .line 344
    .local v13, "bitmapFuture":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Landroid/graphics/Bitmap;>;"
    if-eqz v13, :cond_4

    .line 345
    iget-object v0, v1, Landroidx/media3/session/DefaultMediaNotificationProvider;->pendingOnBitmapLoadedFutureCallback:Landroidx/media3/session/DefaultMediaNotificationProvider$OnBitmapLoadedFutureCallback;

    if-eqz v0, :cond_2

    .line 346
    iget-object v0, v1, Landroidx/media3/session/DefaultMediaNotificationProvider;->pendingOnBitmapLoadedFutureCallback:Landroidx/media3/session/DefaultMediaNotificationProvider$OnBitmapLoadedFutureCallback;

    invoke-virtual {v0}, Landroidx/media3/session/DefaultMediaNotificationProvider$OnBitmapLoadedFutureCallback;->discardIfPending()V

    .line 348
    :cond_2
    invoke-interface {v13}, Lcom/google/common/util/concurrent/ListenableFuture;->isDone()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 350
    :try_start_0
    invoke-static {v13}, Lcom/google/common/util/concurrent/Futures;->getDone(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v7, v0}, Landroidx/core/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$Builder;
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 351
    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    .line 352
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    const-string v14, "NotificationProvider"

    invoke-static {v0}, Landroidx/media3/session/DefaultMediaNotificationProvider;->getBitmapLoadErrorMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    move-object/from16 v14, p4

    goto :goto_3

    .line 355
    :cond_3
    new-instance v0, Landroidx/media3/session/DefaultMediaNotificationProvider$OnBitmapLoadedFutureCallback;

    move-object/from16 v14, p4

    invoke-direct {v0, v8, v7, v14}, Landroidx/media3/session/DefaultMediaNotificationProvider$OnBitmapLoadedFutureCallback;-><init>(ILandroidx/core/app/NotificationCompat$Builder;Landroidx/media3/session/MediaNotification$Provider$Callback;)V

    iput-object v0, v1, Landroidx/media3/session/DefaultMediaNotificationProvider;->pendingOnBitmapLoadedFutureCallback:Landroidx/media3/session/DefaultMediaNotificationProvider$OnBitmapLoadedFutureCallback;

    .line 358
    iget-object v0, v1, Landroidx/media3/session/DefaultMediaNotificationProvider;->pendingOnBitmapLoadedFutureCallback:Landroidx/media3/session/DefaultMediaNotificationProvider$OnBitmapLoadedFutureCallback;

    .line 363
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/session/MediaSession;->getImpl()Landroidx/media3/session/MediaSessionImpl;

    move-result-object v15

    invoke-virtual {v15}, Landroidx/media3/session/MediaSessionImpl;->getApplicationHandler()Landroid/os/Handler;

    move-result-object v15

    invoke-static {v15}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v12, Landroidx/media3/session/DefaultMediaNotificationProvider$$ExternalSyntheticLambda1;

    invoke-direct {v12, v15}, Landroidx/media3/session/DefaultMediaNotificationProvider$$ExternalSyntheticLambda1;-><init>(Landroid/os/Handler;)V

    .line 358
    invoke-static {v13, v0, v12}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;Ljava/util/concurrent/Executor;)V

    goto :goto_3

    .line 344
    :cond_4
    move-object/from16 v14, p4

    goto :goto_3

    .line 336
    .end local v11    # "metadata":Landroidx/media3/common/MediaMetadata;
    .end local v13    # "bitmapFuture":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Landroid/graphics/Bitmap;>;"
    :cond_5
    move-object/from16 v14, p4

    .line 368
    :goto_3
    invoke-static {v6}, Landroidx/media3/session/DefaultMediaNotificationProvider;->getPlaybackStartTimeEpochMs(Landroidx/media3/common/Player;)J

    move-result-wide v11

    .line 369
    .local v11, "playbackStartTimeMs":J
    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v11, v16

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_4

    :cond_6
    const/4 v0, 0x0

    .line 370
    .local v0, "displayElapsedTimeWithChronometer":Z
    :goto_4
    nop

    .line 371
    if-eqz v0, :cond_7

    move-wide v13, v11

    goto :goto_5

    :cond_7
    const-wide/16 v16, 0x0

    move-wide/from16 v13, v16

    :goto_5
    invoke-virtual {v7, v13, v14}, Landroidx/core/app/NotificationCompat$Builder;->setWhen(J)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v13

    .line 372
    invoke-virtual {v13, v0}, Landroidx/core/app/NotificationCompat$Builder;->setShowWhen(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v13

    .line 373
    invoke-virtual {v13, v0}, Landroidx/core/app/NotificationCompat$Builder;->setUsesChronometer(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 375
    sget v13, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v14, 0x1f

    if-lt v13, v14, :cond_8

    .line 376
    invoke-static {v7}, Landroidx/media3/session/DefaultMediaNotificationProvider$Api31;->setForegroundServiceBehavior(Landroidx/core/app/NotificationCompat$Builder;)V

    .line 379
    :cond_8
    nop

    .line 381
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/session/MediaSession;->getSessionActivity()Landroid/app/PendingIntent;

    move-result-object v13

    invoke-virtual {v7, v13}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v13

    .line 383
    move-object v14, v5

    move-object/from16 v16, v6

    .end local v5    # "mediaButtonPreferencesWithEnabledCommandButtonsOnly":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Landroidx/media3/session/CommandButton;>;"
    .end local v6    # "player":Landroidx/media3/common/Player;
    .local v14, "mediaButtonPreferencesWithEnabledCommandButtonsOnly":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Landroidx/media3/session/CommandButton;>;"
    .local v16, "player":Landroidx/media3/common/Player;
    const-wide/16 v5, 0x3

    invoke-interface {v4, v2, v5, v6}, Landroidx/media3/session/MediaNotification$ActionFactory;->createMediaActionPendingIntent(Landroidx/media3/session/MediaSession;J)Landroid/app/PendingIntent;

    move-result-object v5

    .line 382
    invoke-virtual {v13, v5}, Landroidx/core/app/NotificationCompat$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v5

    .line 384
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroidx/core/app/NotificationCompat$Builder;->setOnlyAlertOnce(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v5

    iget v13, v1, Landroidx/media3/session/DefaultMediaNotificationProvider;->smallIconResourceId:I

    .line 385
    invoke-virtual {v5, v13}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v5

    .line 386
    invoke-virtual {v5, v9}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v5

    .line 387
    invoke-virtual {v5, v6}, Landroidx/core/app/NotificationCompat$Builder;->setVisibility(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v5

    .line 388
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v5

    .line 389
    const-string v6, "media3_group_key"

    invoke-virtual {v5, v6}, Landroidx/core/app/NotificationCompat$Builder;->setGroup(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v5

    .line 390
    invoke-virtual {v5}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v5

    .line 391
    .local v5, "notification":Landroid/app/Notification;
    new-instance v6, Landroidx/media3/session/MediaNotification;

    invoke-direct {v6, v8, v5}, Landroidx/media3/session/MediaNotification;-><init>(ILandroid/app/Notification;)V

    return-object v6
.end method

.method protected getMediaButtons(Landroidx/media3/session/MediaSession;Landroidx/media3/common/Player$Commands;Lcom/google/common/collect/ImmutableList;Z)Lcom/google/common/collect/ImmutableList;
    .locals 7
    .param p1, "session"    # Landroidx/media3/session/MediaSession;
    .param p2, "playerCommands"    # Landroidx/media3/common/Player$Commands;
    .param p4, "showPauseButton"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/session/MediaSession;",
            "Landroidx/media3/common/Player$Commands;",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/session/CommandButton;",
            ">;Z)",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/session/CommandButton;",
            ">;"
        }
    .end annotation

    .line 449
    .local p3, "mediaButtonPreferences":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Landroidx/media3/session/CommandButton;>;"
    new-instance v0, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    .line 450
    .local v0, "commandButtons":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Landroidx/media3/session/CommandButton;>;"
    const/4 v1, 0x7

    const/4 v2, 0x6

    filled-new-array {v1, v2}, [I

    move-result-object v1

    invoke-virtual {p2, v1}, Landroidx/media3/common/Player$Commands;->containsAny([I)Z

    move-result v1

    const/4 v3, -0x1

    const-string v4, "androidx.media3.session.command.COMPACT_VIEW_INDEX"

    if-eqz v1, :cond_0

    .line 451
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 452
    .local v1, "commandButtonExtras":Landroid/os/Bundle;
    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 453
    new-instance v5, Landroidx/media3/session/CommandButton$Builder;

    const v6, 0xe045

    invoke-direct {v5, v6}, Landroidx/media3/session/CommandButton$Builder;-><init>(I)V

    .line 455
    invoke-virtual {v5, v2}, Landroidx/media3/session/CommandButton$Builder;->setPlayerCommand(I)Landroidx/media3/session/CommandButton$Builder;

    move-result-object v2

    iget-object v5, p0, Landroidx/media3/session/DefaultMediaNotificationProvider;->context:Landroid/content/Context;

    sget v6, Landroidx/media3/session/R$string;->media3_controls_seek_to_previous_description:I

    .line 457
    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 456
    invoke-virtual {v2, v5}, Landroidx/media3/session/CommandButton$Builder;->setDisplayName(Ljava/lang/CharSequence;)Landroidx/media3/session/CommandButton$Builder;

    move-result-object v2

    .line 458
    invoke-virtual {v2, v1}, Landroidx/media3/session/CommandButton$Builder;->setExtras(Landroid/os/Bundle;)Landroidx/media3/session/CommandButton$Builder;

    move-result-object v2

    .line 459
    invoke-virtual {v2}, Landroidx/media3/session/CommandButton$Builder;->build()Landroidx/media3/session/CommandButton;

    move-result-object v2

    .line 453
    invoke-virtual {v0, v2}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 461
    .end local v1    # "commandButtonExtras":Landroid/os/Bundle;
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Landroidx/media3/common/Player$Commands;->contains(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 462
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 463
    .local v2, "commandButtonExtras":Landroid/os/Bundle;
    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 464
    if-eqz p4, :cond_1

    .line 465
    new-instance v5, Landroidx/media3/session/CommandButton$Builder;

    const v6, 0xe034

    invoke-direct {v5, v6}, Landroidx/media3/session/CommandButton$Builder;-><init>(I)V

    .line 467
    invoke-virtual {v5, v1}, Landroidx/media3/session/CommandButton$Builder;->setPlayerCommand(I)Landroidx/media3/session/CommandButton$Builder;

    move-result-object v1

    .line 468
    invoke-virtual {v1, v2}, Landroidx/media3/session/CommandButton$Builder;->setExtras(Landroid/os/Bundle;)Landroidx/media3/session/CommandButton$Builder;

    move-result-object v1

    iget-object v5, p0, Landroidx/media3/session/DefaultMediaNotificationProvider;->context:Landroid/content/Context;

    sget v6, Landroidx/media3/session/R$string;->media3_controls_pause_description:I

    .line 469
    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroidx/media3/session/CommandButton$Builder;->setDisplayName(Ljava/lang/CharSequence;)Landroidx/media3/session/CommandButton$Builder;

    move-result-object v1

    .line 470
    invoke-virtual {v1}, Landroidx/media3/session/CommandButton$Builder;->build()Landroidx/media3/session/CommandButton;

    move-result-object v1

    .line 465
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto :goto_0

    .line 472
    :cond_1
    new-instance v5, Landroidx/media3/session/CommandButton$Builder;

    const v6, 0xe037

    invoke-direct {v5, v6}, Landroidx/media3/session/CommandButton$Builder;-><init>(I)V

    .line 474
    invoke-virtual {v5, v1}, Landroidx/media3/session/CommandButton$Builder;->setPlayerCommand(I)Landroidx/media3/session/CommandButton$Builder;

    move-result-object v1

    .line 475
    invoke-virtual {v1, v2}, Landroidx/media3/session/CommandButton$Builder;->setExtras(Landroid/os/Bundle;)Landroidx/media3/session/CommandButton$Builder;

    move-result-object v1

    iget-object v5, p0, Landroidx/media3/session/DefaultMediaNotificationProvider;->context:Landroid/content/Context;

    sget v6, Landroidx/media3/session/R$string;->media3_controls_play_description:I

    .line 476
    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroidx/media3/session/CommandButton$Builder;->setDisplayName(Ljava/lang/CharSequence;)Landroidx/media3/session/CommandButton$Builder;

    move-result-object v1

    .line 477
    invoke-virtual {v1}, Landroidx/media3/session/CommandButton$Builder;->build()Landroidx/media3/session/CommandButton;

    move-result-object v1

    .line 472
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 481
    .end local v2    # "commandButtonExtras":Landroid/os/Bundle;
    :cond_2
    :goto_0
    const/16 v1, 0x9

    const/16 v2, 0x8

    filled-new-array {v1, v2}, [I

    move-result-object v1

    invoke-virtual {p2, v1}, Landroidx/media3/common/Player$Commands;->containsAny([I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 482
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 483
    .restart local v1    # "commandButtonExtras":Landroid/os/Bundle;
    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 484
    new-instance v3, Landroidx/media3/session/CommandButton$Builder;

    const v4, 0xe044

    invoke-direct {v3, v4}, Landroidx/media3/session/CommandButton$Builder;-><init>(I)V

    .line 486
    invoke-virtual {v3, v2}, Landroidx/media3/session/CommandButton$Builder;->setPlayerCommand(I)Landroidx/media3/session/CommandButton$Builder;

    move-result-object v2

    .line 487
    invoke-virtual {v2, v1}, Landroidx/media3/session/CommandButton$Builder;->setExtras(Landroid/os/Bundle;)Landroidx/media3/session/CommandButton$Builder;

    move-result-object v2

    iget-object v3, p0, Landroidx/media3/session/DefaultMediaNotificationProvider;->context:Landroid/content/Context;

    sget v4, Landroidx/media3/session/R$string;->media3_controls_seek_to_next_description:I

    .line 488
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/media3/session/CommandButton$Builder;->setDisplayName(Ljava/lang/CharSequence;)Landroidx/media3/session/CommandButton$Builder;

    move-result-object v2

    .line 489
    invoke-virtual {v2}, Landroidx/media3/session/CommandButton$Builder;->build()Landroidx/media3/session/CommandButton;

    move-result-object v2

    .line 484
    invoke-virtual {v0, v2}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 491
    .end local v1    # "commandButtonExtras":Landroid/os/Bundle;
    :cond_3
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p3}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 492
    invoke-virtual {p3, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/session/CommandButton;

    .line 493
    .local v2, "button":Landroidx/media3/session/CommandButton;
    iget-object v3, v2, Landroidx/media3/session/CommandButton;->sessionCommand:Landroidx/media3/session/SessionCommand;

    if-eqz v3, :cond_4

    iget-object v3, v2, Landroidx/media3/session/CommandButton;->sessionCommand:Landroidx/media3/session/SessionCommand;

    iget v3, v3, Landroidx/media3/session/SessionCommand;->commandCode:I

    if-nez v3, :cond_4

    .line 495
    invoke-virtual {v0, v2}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 491
    .end local v2    # "button":Landroidx/media3/session/CommandButton;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 498
    .end local v1    # "i":I
    :cond_5
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    return-object v1
.end method

.method protected getNotificationContentText(Landroidx/media3/common/MediaMetadata;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "metadata"    # Landroidx/media3/common/MediaMetadata;

    .line 623
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->artist:Ljava/lang/CharSequence;

    return-object v0
.end method

.method protected getNotificationContentTitle(Landroidx/media3/common/MediaMetadata;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "metadata"    # Landroidx/media3/common/MediaMetadata;

    .line 605
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->title:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final handleCustomCommand(Landroidx/media3/session/MediaSession;Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 1
    .param p1, "session"    # Landroidx/media3/session/MediaSession;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 397
    const/4 v0, 0x0

    return v0
.end method

.method public final setSmallIcon(I)V
    .locals 0
    .param p1, "smallIconResourceId"    # I

    .line 409
    iput p1, p0, Landroidx/media3/session/DefaultMediaNotificationProvider;->smallIconResourceId:I

    .line 410
    return-void
.end method
