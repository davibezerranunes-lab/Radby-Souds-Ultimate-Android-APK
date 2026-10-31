.class final Landroidx/media3/session/DefaultActionFactory$Api26;
.super Ljava/lang/Object;
.source "DefaultActionFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/session/DefaultActionFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Api26"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createForegroundServicePendingIntent(Landroid/app/Service;ILandroid/content/Intent;)Landroid/app/PendingIntent;
    .locals 1
    .param p0, "service"    # Landroid/app/Service;
    .param p1, "keyCode"    # I
    .param p2, "intent"    # Landroid/content/Intent;

    .line 207
    const/high16 v0, 0x4000000

    invoke-static {p0, p1, p2, v0}, Landroid/app/PendingIntent;->getForegroundService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method
