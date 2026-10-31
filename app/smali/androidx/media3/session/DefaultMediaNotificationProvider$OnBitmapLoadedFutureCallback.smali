.class Landroidx/media3/session/DefaultMediaNotificationProvider$OnBitmapLoadedFutureCallback;
.super Ljava/lang/Object;
.source "DefaultMediaNotificationProvider.java"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/session/DefaultMediaNotificationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OnBitmapLoadedFutureCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/FutureCallback<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final builder:Landroidx/core/app/NotificationCompat$Builder;

.field private discarded:Z

.field private final notificationId:I

.field private final onNotificationChangedCallback:Landroidx/media3/session/MediaNotification$Provider$Callback;


# direct methods
.method public constructor <init>(ILandroidx/core/app/NotificationCompat$Builder;Landroidx/media3/session/MediaNotification$Provider$Callback;)V
    .locals 0
    .param p1, "notificationId"    # I
    .param p2, "builder"    # Landroidx/core/app/NotificationCompat$Builder;
    .param p3, "onNotificationChangedCallback"    # Landroidx/media3/session/MediaNotification$Provider$Callback;

    .line 655
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 656
    iput p1, p0, Landroidx/media3/session/DefaultMediaNotificationProvider$OnBitmapLoadedFutureCallback;->notificationId:I

    .line 657
    iput-object p2, p0, Landroidx/media3/session/DefaultMediaNotificationProvider$OnBitmapLoadedFutureCallback;->builder:Landroidx/core/app/NotificationCompat$Builder;

    .line 658
    iput-object p3, p0, Landroidx/media3/session/DefaultMediaNotificationProvider$OnBitmapLoadedFutureCallback;->onNotificationChangedCallback:Landroidx/media3/session/MediaNotification$Provider$Callback;

    .line 659
    return-void
.end method


# virtual methods
.method public discardIfPending()V
    .locals 1

    .line 662
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/session/DefaultMediaNotificationProvider$OnBitmapLoadedFutureCallback;->discarded:Z

    .line 663
    return-void
.end method

.method public onFailure(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 676
    iget-boolean v0, p0, Landroidx/media3/session/DefaultMediaNotificationProvider$OnBitmapLoadedFutureCallback;->discarded:Z

    if-nez v0, :cond_0

    .line 677
    const-string v0, "NotificationProvider"

    invoke-static {p1}, Landroidx/media3/session/DefaultMediaNotificationProvider;->access$500(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    :cond_0
    return-void
.end method

.method public onSuccess(Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "result"    # Landroid/graphics/Bitmap;

    .line 667
    iget-boolean v0, p0, Landroidx/media3/session/DefaultMediaNotificationProvider$OnBitmapLoadedFutureCallback;->discarded:Z

    if-nez v0, :cond_0

    .line 668
    iget-object v0, p0, Landroidx/media3/session/DefaultMediaNotificationProvider$OnBitmapLoadedFutureCallback;->builder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$Builder;

    .line 669
    iget-object v0, p0, Landroidx/media3/session/DefaultMediaNotificationProvider$OnBitmapLoadedFutureCallback;->onNotificationChangedCallback:Landroidx/media3/session/MediaNotification$Provider$Callback;

    new-instance v1, Landroidx/media3/session/MediaNotification;

    iget v2, p0, Landroidx/media3/session/DefaultMediaNotificationProvider$OnBitmapLoadedFutureCallback;->notificationId:I

    iget-object v3, p0, Landroidx/media3/session/DefaultMediaNotificationProvider$OnBitmapLoadedFutureCallback;->builder:Landroidx/core/app/NotificationCompat$Builder;

    .line 670
    invoke-virtual {v3}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroidx/media3/session/MediaNotification;-><init>(ILandroid/app/Notification;)V

    .line 669
    invoke-interface {v0, v1}, Landroidx/media3/session/MediaNotification$Provider$Callback;->onNotificationChanged(Landroidx/media3/session/MediaNotification;)V

    .line 672
    :cond_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 645
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Landroidx/media3/session/DefaultMediaNotificationProvider$OnBitmapLoadedFutureCallback;->onSuccess(Landroid/graphics/Bitmap;)V

    return-void
.end method
