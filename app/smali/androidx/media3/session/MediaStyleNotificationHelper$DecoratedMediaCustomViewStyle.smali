.class public Landroidx/media3/session/MediaStyleNotificationHelper$DecoratedMediaCustomViewStyle;
.super Landroidx/media3/session/MediaStyleNotificationHelper$MediaStyle;
.source "MediaStyleNotificationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/session/MediaStyleNotificationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DecoratedMediaCustomViewStyle"
.end annotation


# direct methods
.method public constructor <init>(Landroidx/media3/session/MediaSession;)V
    .locals 0
    .param p1, "session"    # Landroidx/media3/session/MediaSession;

    .line 330
    invoke-direct {p0, p1}, Landroidx/media3/session/MediaStyleNotificationHelper$MediaStyle;-><init>(Landroidx/media3/session/MediaSession;)V

    .line 331
    return-void
.end method

.method private setBackgroundColor(Landroid/widget/RemoteViews;)V
    .locals 3
    .param p1, "views"    # Landroid/widget/RemoteViews;

    .line 437
    iget-object v0, p0, Landroidx/media3/session/MediaStyleNotificationHelper$DecoratedMediaCustomViewStyle;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->getColor()I

    move-result v0

    if-eqz v0, :cond_0

    .line 438
    iget-object v0, p0, Landroidx/media3/session/MediaStyleNotificationHelper$DecoratedMediaCustomViewStyle;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->getColor()I

    move-result v0

    goto :goto_0

    .line 442
    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaStyleNotificationHelper$DecoratedMediaCustomViewStyle;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v0, v0, Landroidx/core/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    .line 441
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroidx/media3/session/R$color;->notification_material_background_media_default_color:I

    .line 442
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    :goto_0
    nop

    .line 445
    .local v0, "color":I
    sget v1, Landroidx/media3/session/R$id;->status_bar_latest_event_content:I

    const-string/jumbo v2, "setBackgroundColor"

    invoke-virtual {p1, v1, v2, v0}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 449
    return-void
.end method


# virtual methods
.method public apply(Landroidx/core/app/NotificationBuilderWithBuilderAccessor;)V
    .locals 4
    .param p1, "builder"    # Landroidx/core/app/NotificationBuilderWithBuilderAccessor;

    .line 335
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_0

    .line 336
    invoke-super {p0, p1}, Landroidx/media3/session/MediaStyleNotificationHelper$MediaStyle;->apply(Landroidx/core/app/NotificationBuilderWithBuilderAccessor;)V

    .line 337
    return-void

    .line 340
    :cond_0
    invoke-static {}, Landroidx/media3/session/MediaStyleNotificationHelper$Api24Impl;->createDecoratedMediaCustomViewStyle()Landroid/app/Notification$DecoratedMediaCustomViewStyle;

    move-result-object v0

    .line 341
    .local v0, "style":Landroid/app/Notification$DecoratedMediaCustomViewStyle;
    iget-object v1, p0, Landroidx/media3/session/MediaStyleNotificationHelper$DecoratedMediaCustomViewStyle;->actionsToShowInCompact:[I

    if-eqz v1, :cond_1

    .line 342
    iget-object v1, p0, Landroidx/media3/session/MediaStyleNotificationHelper$DecoratedMediaCustomViewStyle;->actionsToShowInCompact:[I

    invoke-virtual {v0, v1}, Landroid/app/Notification$DecoratedMediaCustomViewStyle;->setShowActionsInCompactView([I)Landroid/app/Notification$MediaStyle;

    .line 344
    :cond_1
    sget v1, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v2, 0x22

    if-lt v1, v2, :cond_2

    iget-object v1, p0, Landroidx/media3/session/MediaStyleNotificationHelper$DecoratedMediaCustomViewStyle;->remoteDeviceName:Ljava/lang/CharSequence;

    if-eqz v1, :cond_2

    .line 345
    iget-object v1, p0, Landroidx/media3/session/MediaStyleNotificationHelper$DecoratedMediaCustomViewStyle;->remoteDeviceName:Ljava/lang/CharSequence;

    iget v2, p0, Landroidx/media3/session/MediaStyleNotificationHelper$DecoratedMediaCustomViewStyle;->remoteDeviceIconRes:I

    iget-object v3, p0, Landroidx/media3/session/MediaStyleNotificationHelper$DecoratedMediaCustomViewStyle;->remoteDeviceIntent:Landroid/app/PendingIntent;

    invoke-static {v0, v1, v2, v3}, Landroidx/media3/session/MediaStyleNotificationHelper$Api34Impl;->setRemotePlaybackInfo(Landroid/app/Notification$MediaStyle;Ljava/lang/CharSequence;ILandroid/app/PendingIntent;)Landroid/app/Notification$MediaStyle;

    .line 347
    invoke-interface {p1}, Landroidx/core/app/NotificationBuilderWithBuilderAccessor;->getBuilder()Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    goto :goto_0

    .line 349
    :cond_2
    invoke-interface {p1}, Landroidx/core/app/NotificationBuilderWithBuilderAccessor;->getBuilder()Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 350
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 351
    .local v1, "bundle":Landroid/os/Bundle;
    iget-object v2, p0, Landroidx/media3/session/MediaStyleNotificationHelper$DecoratedMediaCustomViewStyle;->session:Landroidx/media3/session/MediaSession;

    invoke-virtual {v2}, Landroidx/media3/session/MediaSession;->getToken()Landroidx/media3/session/SessionToken;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/media3/session/SessionToken;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "androidx.media3.session"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 352
    invoke-interface {p1}, Landroidx/core/app/NotificationBuilderWithBuilderAccessor;->getBuilder()Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Notification$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    .line 354
    .end local v1    # "bundle":Landroid/os/Bundle;
    :goto_0
    return-void
.end method

.method getBigContentViewLayoutResource(I)I
    .locals 1
    .param p1, "actionCount"    # I

    .line 408
    const/4 v0, 0x3

    if-gt p1, v0, :cond_0

    .line 409
    sget v0, Landroidx/media3/session/R$layout;->media3_notification_template_big_media_narrow_custom:I

    goto :goto_0

    .line 410
    :cond_0
    sget v0, Landroidx/media3/session/R$layout;->media3_notification_template_big_media_custom:I

    .line 408
    :goto_0
    return v0
.end method

.method getContentViewLayoutResource()I
    .locals 1

    .line 379
    iget-object v0, p0, Landroidx/media3/session/MediaStyleNotificationHelper$DecoratedMediaCustomViewStyle;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->getContentView()Landroid/widget/RemoteViews;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 380
    sget v0, Landroidx/media3/session/R$layout;->media3_notification_template_media_custom:I

    goto :goto_0

    .line 381
    :cond_0
    invoke-super {p0}, Landroidx/media3/session/MediaStyleNotificationHelper$MediaStyle;->getContentViewLayoutResource()I

    move-result v0

    .line 379
    :goto_0
    return v0
.end method

.method public makeBigContentView(Landroidx/core/app/NotificationBuilderWithBuilderAccessor;)Landroid/widget/RemoteViews;
    .locals 3
    .param p1, "builder"    # Landroidx/core/app/NotificationBuilderWithBuilderAccessor;

    .line 388
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x18

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    .line 390
    return-object v2

    .line 393
    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaStyleNotificationHelper$DecoratedMediaCustomViewStyle;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->getBigContentView()Landroid/widget/RemoteViews;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 394
    iget-object v0, p0, Landroidx/media3/session/MediaStyleNotificationHelper$DecoratedMediaCustomViewStyle;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->getBigContentView()Landroid/widget/RemoteViews;

    move-result-object v0

    goto :goto_0

    .line 395
    :cond_1
    iget-object v0, p0, Landroidx/media3/session/MediaStyleNotificationHelper$DecoratedMediaCustomViewStyle;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->getContentView()Landroid/widget/RemoteViews;

    move-result-object v0

    :goto_0
    nop

    .line 396
    .local v0, "innerView":Landroid/widget/RemoteViews;
    if-nez v0, :cond_2

    .line 398
    return-object v2

    .line 400
    :cond_2
    invoke-virtual {p0}, Landroidx/media3/session/MediaStyleNotificationHelper$DecoratedMediaCustomViewStyle;->generateBigContentView()Landroid/widget/RemoteViews;

    move-result-object v1

    .line 401
    .local v1, "bigContentView":Landroid/widget/RemoteViews;
    invoke-virtual {p0, v1, v0}, Landroidx/media3/session/MediaStyleNotificationHelper$DecoratedMediaCustomViewStyle;->buildIntoRemoteViews(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V

    .line 402
    invoke-direct {p0, v1}, Landroidx/media3/session/MediaStyleNotificationHelper$DecoratedMediaCustomViewStyle;->setBackgroundColor(Landroid/widget/RemoteViews;)V

    .line 403
    return-object v1
.end method

.method public makeContentView(Landroidx/core/app/NotificationBuilderWithBuilderAccessor;)Landroid/widget/RemoteViews;
    .locals 5
    .param p1, "builder"    # Landroidx/core/app/NotificationBuilderWithBuilderAccessor;

    .line 360
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x18

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    .line 362
    return-object v2

    .line 364
    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaStyleNotificationHelper$DecoratedMediaCustomViewStyle;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->getContentView()Landroid/widget/RemoteViews;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v3

    .line 365
    .local v0, "hasContentView":Z
    :goto_0
    if-nez v0, :cond_3

    iget-object v4, p0, Landroidx/media3/session/MediaStyleNotificationHelper$DecoratedMediaCustomViewStyle;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v4}, Landroidx/core/app/NotificationCompat$Builder;->getBigContentView()Landroid/widget/RemoteViews;

    move-result-object v4

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    move v1, v3

    .line 366
    .local v1, "createCustomContent":Z
    :cond_3
    :goto_1
    if-eqz v1, :cond_5

    .line 367
    invoke-virtual {p0}, Landroidx/media3/session/MediaStyleNotificationHelper$DecoratedMediaCustomViewStyle;->generateContentView()Landroid/widget/RemoteViews;

    move-result-object v2

    .line 368
    .local v2, "contentView":Landroid/widget/RemoteViews;
    if-eqz v0, :cond_4

    .line 369
    iget-object v3, p0, Landroidx/media3/session/MediaStyleNotificationHelper$DecoratedMediaCustomViewStyle;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v3}, Landroidx/core/app/NotificationCompat$Builder;->getContentView()Landroid/widget/RemoteViews;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroidx/media3/session/MediaStyleNotificationHelper$DecoratedMediaCustomViewStyle;->buildIntoRemoteViews(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V

    .line 371
    :cond_4
    invoke-direct {p0, v2}, Landroidx/media3/session/MediaStyleNotificationHelper$DecoratedMediaCustomViewStyle;->setBackgroundColor(Landroid/widget/RemoteViews;)V

    .line 372
    return-object v2

    .line 374
    .end local v2    # "contentView":Landroid/widget/RemoteViews;
    :cond_5
    return-object v2
.end method

.method public makeHeadsUpContentView(Landroidx/core/app/NotificationBuilderWithBuilderAccessor;)Landroid/widget/RemoteViews;
    .locals 3
    .param p1, "builder"    # Landroidx/core/app/NotificationBuilderWithBuilderAccessor;

    .line 417
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x18

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    .line 419
    return-object v2

    .line 422
    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaStyleNotificationHelper$DecoratedMediaCustomViewStyle;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->getHeadsUpContentView()Landroid/widget/RemoteViews;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 423
    iget-object v0, p0, Landroidx/media3/session/MediaStyleNotificationHelper$DecoratedMediaCustomViewStyle;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->getHeadsUpContentView()Landroid/widget/RemoteViews;

    move-result-object v0

    goto :goto_0

    .line 424
    :cond_1
    iget-object v0, p0, Landroidx/media3/session/MediaStyleNotificationHelper$DecoratedMediaCustomViewStyle;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->getContentView()Landroid/widget/RemoteViews;

    move-result-object v0

    :goto_0
    nop

    .line 425
    .local v0, "innerView":Landroid/widget/RemoteViews;
    if-nez v0, :cond_2

    .line 427
    return-object v2

    .line 429
    :cond_2
    invoke-virtual {p0}, Landroidx/media3/session/MediaStyleNotificationHelper$DecoratedMediaCustomViewStyle;->generateBigContentView()Landroid/widget/RemoteViews;

    move-result-object v1

    .line 430
    .local v1, "headsUpContentView":Landroid/widget/RemoteViews;
    invoke-virtual {p0, v1, v0}, Landroidx/media3/session/MediaStyleNotificationHelper$DecoratedMediaCustomViewStyle;->buildIntoRemoteViews(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V

    .line 431
    invoke-direct {p0, v1}, Landroidx/media3/session/MediaStyleNotificationHelper$DecoratedMediaCustomViewStyle;->setBackgroundColor(Landroid/widget/RemoteViews;)V

    .line 432
    return-object v1
.end method
