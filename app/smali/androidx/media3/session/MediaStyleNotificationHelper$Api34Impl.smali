.class Landroidx/media3/session/MediaStyleNotificationHelper$Api34Impl;
.super Ljava/lang/Object;
.source "MediaStyleNotificationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/session/MediaStyleNotificationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Api34Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 464
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setRemotePlaybackInfo(Landroid/app/Notification$MediaStyle;Ljava/lang/CharSequence;ILandroid/app/PendingIntent;)Landroid/app/Notification$MediaStyle;
    .locals 0
    .param p0, "style"    # Landroid/app/Notification$MediaStyle;
    .param p1, "remoteDeviceName"    # Ljava/lang/CharSequence;
    .param p2, "remoteDeviceIconRes"    # I
    .param p3, "remoteDeviceIntent"    # Landroid/app/PendingIntent;

    .line 474
    invoke-virtual {p0, p1, p2, p3}, Landroid/app/Notification$MediaStyle;->setRemotePlaybackInfo(Ljava/lang/CharSequence;ILandroid/app/PendingIntent;)Landroid/app/Notification$MediaStyle;

    .line 475
    return-object p0
.end method
