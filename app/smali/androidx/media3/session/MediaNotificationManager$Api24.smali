.class Landroidx/media3/session/MediaNotificationManager$Api24;
.super Ljava/lang/Object;
.source "MediaNotificationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/session/MediaNotificationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Api24"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 391
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static stopForeground(Landroidx/media3/session/MediaSessionService;Z)V
    .locals 1
    .param p0, "service"    # Landroidx/media3/session/MediaSessionService;
    .param p1, "removeNotification"    # Z

    .line 388
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    invoke-virtual {p0, v0}, Landroidx/media3/session/MediaSessionService;->stopForeground(I)V

    .line 389
    return-void
.end method
