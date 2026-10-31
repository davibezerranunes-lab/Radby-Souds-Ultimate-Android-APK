.class Landroidx/media3/session/DefaultMediaNotificationProvider$Api31;
.super Ljava/lang/Object;
.source "DefaultMediaNotificationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/session/DefaultMediaNotificationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Api31"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 699
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setForegroundServiceBehavior(Landroidx/core/app/NotificationCompat$Builder;)V
    .locals 1
    .param p0, "builder"    # Landroidx/core/app/NotificationCompat$Builder;

    .line 701
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/core/app/NotificationCompat$Builder;->setForegroundServiceBehavior(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 702
    return-void
.end method
