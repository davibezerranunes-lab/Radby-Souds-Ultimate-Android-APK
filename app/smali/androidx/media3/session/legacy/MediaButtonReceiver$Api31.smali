.class final Landroidx/media3/session/legacy/MediaButtonReceiver$Api31;
.super Ljava/lang/Object;
.source "MediaButtonReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/session/legacy/MediaButtonReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Api31"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 376
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static castToForegroundServiceStartNotAllowedException(Ljava/lang/IllegalStateException;)Landroid/app/ForegroundServiceStartNotAllowedException;
    .locals 1
    .param p0, "e"    # Ljava/lang/IllegalStateException;

    .line 391
    move-object v0, p0

    check-cast v0, Landroid/app/ForegroundServiceStartNotAllowedException;

    return-object v0
.end method

.method public static instanceOfForegroundServiceStartNotAllowedException(Ljava/lang/IllegalStateException;)Z
    .locals 1
    .param p0, "e"    # Ljava/lang/IllegalStateException;

    .line 382
    instance-of v0, p0, Landroid/app/ForegroundServiceStartNotAllowedException;

    return v0
.end method
