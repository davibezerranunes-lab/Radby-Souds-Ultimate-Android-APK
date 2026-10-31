.class Landroidx/media3/session/legacy/MediaSessionManager$MediaSessionManagerImplBase;
.super Ljava/lang/Object;
.source "MediaSessionManager.java"

# interfaces
.implements Landroidx/media3/session/legacy/MediaSessionManager$MediaSessionManagerImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/session/legacy/MediaSessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MediaSessionManagerImplBase"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/session/legacy/MediaSessionManager$MediaSessionManagerImplBase$RemoteUserInfoImplBase;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final ENABLED_NOTIFICATION_LISTENERS:Ljava/lang/String; = "enabled_notification_listeners"

.field private static final PERMISSION_MEDIA_CONTENT_CONTROL:Ljava/lang/String; = "android.permission.MEDIA_CONTENT_CONTROL"

.field private static final PERMISSION_STATUS_BAR_SERVICE:Ljava/lang/String; = "android.permission.STATUS_BAR_SERVICE"

.field private static final TAG:Ljava/lang/String; = "MediaSessionManager"


# instance fields
.field mContentResolver:Landroid/content/ContentResolver;

.field mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 247
    sget-boolean v0, Landroidx/media3/session/legacy/MediaSessionManager;->DEBUG:Z

    sput-boolean v0, Landroidx/media3/session/legacy/MediaSessionManager$MediaSessionManagerImplBase;->DEBUG:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 259
    iput-object p1, p0, Landroidx/media3/session/legacy/MediaSessionManager$MediaSessionManagerImplBase;->mContext:Landroid/content/Context;

    .line 260
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaSessionManager$MediaSessionManagerImplBase;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/session/legacy/MediaSessionManager$MediaSessionManagerImplBase;->mContentResolver:Landroid/content/ContentResolver;

    .line 261
    return-void
.end method

.method private isPermissionGranted(Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfoImpl;Ljava/lang/String;)Z
    .locals 5
    .param p1, "userInfo"    # Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfoImpl;
    .param p2, "permission"    # Ljava/lang/String;

    .line 291
    invoke-interface {p1}, Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfoImpl;->getPid()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gez v0, :cond_1

    .line 293
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaSessionManager$MediaSessionManagerImplBase;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-interface {p1}, Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfoImpl;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, p2, v3}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    .line 296
    :cond_1
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaSessionManager$MediaSessionManagerImplBase;->mContext:Landroid/content/Context;

    invoke-interface {p1}, Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfoImpl;->getPid()I

    move-result v3

    invoke-interface {p1}, Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfoImpl;->getUid()I

    move-result v4

    invoke-virtual {v0, p2, v3, v4}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .line 265
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaSessionManager$MediaSessionManagerImplBase;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method isEnabledNotificationListener(Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfoImpl;)Z
    .locals 6
    .param p1, "userInfo"    # Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfoImpl;

    .line 308
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaSessionManager$MediaSessionManagerImplBase;->mContentResolver:Landroid/content/ContentResolver;

    .line 309
    const-string v1, "enabled_notification_listeners"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 310
    .local v0, "enabledNotifListeners":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 311
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 312
    .local v1, "components":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 313
    aget-object v3, v1, v2

    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    .line 314
    .local v3, "component":Landroid/content/ComponentName;
    if-eqz v3, :cond_0

    .line 315
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1}, Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfoImpl;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 316
    const/4 v4, 0x1

    return v4

    .line 312
    .end local v3    # "component":Landroid/content/ComponentName;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 321
    .end local v1    # "components":[Ljava/lang/String;
    .end local v2    # "i":I
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public isTrustedForMediaControl(Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfoImpl;)Z
    .locals 4
    .param p1, "userInfo"    # Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfoImpl;

    .line 272
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroidx/media3/session/legacy/MediaSessionManager$MediaSessionManagerImplBase;->mContext:Landroid/content/Context;

    .line 273
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-interface {p1}, Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfoImpl;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 274
    .local v1, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v1, :cond_0

    .line 275
    return v0

    .line 282
    .end local v1    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :cond_0
    nop

    .line 283
    const-string v1, "android.permission.STATUS_BAR_SERVICE"

    invoke-direct {p0, p1, v1}, Landroidx/media3/session/legacy/MediaSessionManager$MediaSessionManagerImplBase;->isPermissionGranted(Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfoImpl;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 284
    const-string v1, "android.permission.MEDIA_CONTENT_CONTROL"

    invoke-direct {p0, p1, v1}, Landroidx/media3/session/legacy/MediaSessionManager$MediaSessionManagerImplBase;->isPermissionGranted(Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfoImpl;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 285
    invoke-interface {p1}, Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfoImpl;->getUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_1

    .line 286
    invoke-virtual {p0, p1}, Landroidx/media3/session/legacy/MediaSessionManager$MediaSessionManagerImplBase;->isEnabledNotificationListener(Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfoImpl;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 283
    :cond_2
    return v0

    .line 277
    :catch_0
    move-exception v1

    .line 278
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-boolean v2, Landroidx/media3/session/legacy/MediaSessionManager$MediaSessionManagerImplBase;->DEBUG:Z

    if-eqz v2, :cond_3

    .line 279
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfoImpl;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " doesn\'t exist"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MediaSessionManager"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    :cond_3
    return v0
.end method
