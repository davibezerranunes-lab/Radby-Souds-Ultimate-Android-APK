.class final Landroidx/media3/session/MediaSessionService$Api31;
.super Ljava/lang/Object;
.source "MediaSessionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/session/MediaSessionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Api31"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 815
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static instanceOfForegroundServiceStartNotAllowedException(Ljava/lang/IllegalStateException;)Z
    .locals 1
    .param p0, "e"    # Ljava/lang/IllegalStateException;

    .line 818
    instance-of v0, p0, Landroid/app/ForegroundServiceStartNotAllowedException;

    return v0
.end method
