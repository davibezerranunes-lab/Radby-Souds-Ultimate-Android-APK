.class public final Landroidx/media3/session/SessionToken;
.super Ljava/lang/Object;
.source "SessionToken.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/session/SessionToken$SessionTokenImpl;,
        Landroidx/media3/session/SessionToken$TokenType;
    }
.end annotation


# static fields
.field private static final FIELD_IMPL:Ljava/lang/String;

.field private static final FIELD_IMPL_TYPE:Ljava/lang/String;

.field private static final IMPL_TYPE_BASE:I = 0x0

.field private static final IMPL_TYPE_LEGACY:I = 0x1

.field static final TYPE_BROWSER_SERVICE_LEGACY:I = 0x65

.field public static final TYPE_LIBRARY_SERVICE:I = 0x2

.field public static final TYPE_SESSION:I = 0x0

.field static final TYPE_SESSION_LEGACY:I = 0x64

.field public static final TYPE_SESSION_SERVICE:I = 0x1

.field private static final WAIT_TIME_MS_FOR_SESSION3_TOKEN:J = 0x1f4L


# instance fields
.field private final impl:Landroidx/media3/session/SessionToken$SessionTokenImpl;


# direct methods
.method public static synthetic $r8$lambda$nIdAVhuvCCf7-tWOpNRJA108HsE(Landroid/os/HandlerThread;)Z
    .locals 0

    invoke-virtual {p0}, Landroid/os/HandlerThread;->quit()Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 77
    const-string v0, "media3.session"

    invoke-static {v0}, Landroidx/media3/common/MediaLibraryInfo;->registerModule(Ljava/lang/String;)V

    .line 498
    const/4 v0, 0x0

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/SessionToken;->FIELD_IMPL_TYPE:Ljava/lang/String;

    .line 499
    const/4 v0, 0x1

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/SessionToken;->FIELD_IMPL:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(IIIILjava/lang/String;Landroidx/media3/session/IMediaSession;Landroid/os/Bundle;Landroid/media/session/MediaSession$Token;)V
    .locals 10
    .param p1, "uid"    # I
    .param p2, "type"    # I
    .param p3, "libraryVersion"    # I
    .param p4, "interfaceVersion"    # I
    .param p5, "packageName"    # Ljava/lang/String;
    .param p6, "iSession"    # Landroidx/media3/session/IMediaSession;
    .param p7, "tokenExtras"    # Landroid/os/Bundle;
    .param p8, "platformToken"    # Landroid/media/session/MediaSession$Token;

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    new-instance v9, Landroidx/media3/session/SessionTokenImplBase;

    move-object v0, v9

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Landroidx/media3/session/SessionTokenImplBase;-><init>(IIIILjava/lang/String;Landroidx/media3/session/IMediaSession;Landroid/os/Bundle;Landroid/media/session/MediaSession$Token;)V

    move-object v0, p0

    iput-object v9, v0, Landroidx/media3/session/SessionToken;->impl:Landroidx/media3/session/SessionToken$SessionTokenImpl;

    .line 163
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serviceComponent"    # Landroid/content/ComponentName;

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    const-string v0, "context must not be null"

    invoke-static {p1, v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    const-string/jumbo v0, "serviceComponent must not be null"

    invoke-static {p2, v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 118
    .local v0, "manager":Landroid/content/pm/PackageManager;
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/media3/session/SessionToken;->getUid(Landroid/content/pm/PackageManager;Ljava/lang/String;)I

    move-result v1

    .line 121
    .local v1, "uid":I
    const-string v2, "androidx.media3.session.MediaLibraryService"

    invoke-static {v0, v2, p2}, Landroidx/media3/session/SessionToken;->isInterfaceDeclared(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/ComponentName;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 122
    const/4 v2, 0x2

    .local v2, "type":I
    goto :goto_0

    .line 123
    .end local v2    # "type":I
    :cond_0
    const-string v2, "androidx.media3.session.MediaSessionService"

    invoke-static {v0, v2, p2}, Landroidx/media3/session/SessionToken;->isInterfaceDeclared(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/ComponentName;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 125
    const/4 v2, 0x1

    .restart local v2    # "type":I
    goto :goto_0

    .line 126
    .end local v2    # "type":I
    :cond_1
    const-string v2, "android.media.browse.MediaBrowserService"

    invoke-static {v0, v2, p2}, Landroidx/media3/session/SessionToken;->isInterfaceDeclared(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/ComponentName;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 128
    const/16 v2, 0x65

    .line 136
    .restart local v2    # "type":I
    :goto_0
    const/16 v3, 0x65

    if-eq v2, v3, :cond_2

    .line 137
    new-instance v3, Landroidx/media3/session/SessionTokenImplBase;

    invoke-direct {v3, p2, v1, v2}, Landroidx/media3/session/SessionTokenImplBase;-><init>(Landroid/content/ComponentName;II)V

    iput-object v3, p0, Landroidx/media3/session/SessionToken;->impl:Landroidx/media3/session/SessionToken$SessionTokenImpl;

    goto :goto_1

    .line 139
    :cond_2
    new-instance v3, Landroidx/media3/session/SessionTokenImplLegacy;

    invoke-direct {v3, p2, v1}, Landroidx/media3/session/SessionTokenImplLegacy;-><init>(Landroid/content/ComponentName;I)V

    iput-object v3, p0, Landroidx/media3/session/SessionToken;->impl:Landroidx/media3/session/SessionToken$SessionTokenImpl;

    .line 141
    :goto_1
    return-void

    .line 130
    .end local v2    # "type":I
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to resolve SessionToken for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". Manifest doesn\'t declare one of either MediaSessionService, MediaLibraryService, MediaBrowserService or MediaBrowserServiceCompat. Use service\'s full name."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private constructor <init>(Landroid/os/Bundle;Landroid/media/session/MediaSession$Token;)V
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "platformToken"    # Landroid/media/session/MediaSession$Token;

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    sget-object v0, Landroidx/media3/session/SessionToken;->FIELD_IMPL_TYPE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "Impl type needs to be set."

    invoke-static {v0, v1}, Landroidx/media3/common/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 172
    sget-object v0, Landroidx/media3/session/SessionToken;->FIELD_IMPL_TYPE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 173
    .local v0, "implType":I
    sget-object v1, Landroidx/media3/session/SessionToken;->FIELD_IMPL:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 174
    .local v1, "implBundle":Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 175
    invoke-static {v1, p2}, Landroidx/media3/session/SessionTokenImplBase;->fromBundle(Landroid/os/Bundle;Landroid/media/session/MediaSession$Token;)Landroidx/media3/session/SessionTokenImplBase;

    move-result-object v2

    iput-object v2, p0, Landroidx/media3/session/SessionToken;->impl:Landroidx/media3/session/SessionToken$SessionTokenImpl;

    goto :goto_0

    .line 177
    :cond_0
    invoke-static {v1}, Landroidx/media3/session/SessionTokenImplLegacy;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/session/SessionTokenImplLegacy;

    move-result-object v2

    iput-object v2, p0, Landroidx/media3/session/SessionToken;->impl:Landroidx/media3/session/SessionToken$SessionTokenImpl;

    .line 179
    :goto_0
    return-void
.end method

.method private constructor <init>(Landroidx/media3/session/legacy/MediaSessionCompat$Token;Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 1
    .param p1, "token"    # Landroidx/media3/session/legacy/MediaSessionCompat$Token;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "extras"    # Landroid/os/Bundle;

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    new-instance v0, Landroidx/media3/session/SessionTokenImplLegacy;

    invoke-direct {v0, p1, p2, p3, p4}, Landroidx/media3/session/SessionTokenImplLegacy;-><init>(Landroidx/media3/session/legacy/MediaSessionCompat$Token;Ljava/lang/String;ILandroid/os/Bundle;)V

    iput-object v0, p0, Landroidx/media3/session/SessionToken;->impl:Landroidx/media3/session/SessionToken$SessionTokenImpl;

    .line 168
    return-void
.end method

.method static synthetic access$000(Landroid/os/Bundle;Landroid/media/session/MediaSession$Token;)Landroidx/media3/session/SessionToken;
    .locals 1
    .param p0, "x0"    # Landroid/os/Bundle;
    .param p1, "x1"    # Landroid/media/session/MediaSession$Token;

    .line 74
    invoke-static {p0, p1}, Landroidx/media3/session/SessionToken;->fromBundle(Landroid/os/Bundle;Landroid/media/session/MediaSession$Token;)Landroidx/media3/session/SessionToken;

    move-result-object v0

    return-object v0
.end method

.method private static createCompatToken(Landroid/os/Parcelable;)Landroidx/media3/session/legacy/MediaSessionCompat$Token;
    .locals 1
    .param p0, "platformOrLegacyCompatToken"    # Landroid/os/Parcelable;

    .line 317
    instance-of v0, p0, Landroid/media/session/MediaSession$Token;

    if-eqz v0, :cond_0

    .line 318
    invoke-static {p0}, Landroidx/media3/session/legacy/MediaSessionCompat$Token;->fromToken(Ljava/lang/Object;)Landroidx/media3/session/legacy/MediaSessionCompat$Token;

    move-result-object v0

    return-object v0

    .line 321
    :cond_0
    sget-object v0, Landroidx/media3/session/legacy/MediaSessionCompat$Token;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p0, v0}, Landroidx/media3/session/legacy/LegacyParcelableUtil;->convert(Landroid/os/Parcelable;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroidx/media3/session/legacy/MediaSessionCompat$Token;

    return-object v0
.end method

.method public static createSessionToken(Landroid/content/Context;Landroid/os/Parcelable;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "token"    # Landroid/os/Parcelable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Parcelable;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media3/session/SessionToken;",
            ">;"
        }
    .end annotation

    .line 294
    invoke-static {p1}, Landroidx/media3/session/SessionToken;->createCompatToken(Landroid/os/Parcelable;)Landroidx/media3/session/legacy/MediaSessionCompat$Token;

    move-result-object v0

    invoke-static {p0, v0}, Landroidx/media3/session/SessionToken;->createSessionToken(Landroid/content/Context;Landroidx/media3/session/legacy/MediaSessionCompat$Token;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public static createSessionToken(Landroid/content/Context;Landroid/os/Parcelable;Landroid/os/Looper;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "token"    # Landroid/os/Parcelable;
    .param p2, "completionLooper"    # Landroid/os/Looper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Parcelable;",
            "Landroid/os/Looper;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media3/session/SessionToken;",
            ">;"
        }
    .end annotation

    .line 312
    invoke-static {p1}, Landroidx/media3/session/SessionToken;->createCompatToken(Landroid/os/Parcelable;)Landroidx/media3/session/legacy/MediaSessionCompat$Token;

    move-result-object v0

    invoke-static {p0, v0, p2}, Landroidx/media3/session/SessionToken;->createSessionToken(Landroid/content/Context;Landroidx/media3/session/legacy/MediaSessionCompat$Token;Landroid/os/Looper;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method private static createSessionToken(Landroid/content/Context;Landroidx/media3/session/legacy/MediaSessionCompat$Token;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "compatToken"    # Landroidx/media3/session/legacy/MediaSessionCompat$Token;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/media3/session/legacy/MediaSessionCompat$Token;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media3/session/SessionToken;",
            ">;"
        }
    .end annotation

    .line 327
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SessionTokenThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 328
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 329
    nop

    .line 330
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {p0, p1, v1}, Landroidx/media3/session/SessionToken;->createSessionToken(Landroid/content/Context;Landroidx/media3/session/legacy/MediaSessionCompat$Token;Landroid/os/Looper;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    .line 331
    .local v1, "tokenFuture":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Landroidx/media3/session/SessionToken;>;"
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroidx/media3/session/SessionToken$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Landroidx/media3/session/SessionToken$$ExternalSyntheticLambda0;-><init>(Landroid/os/HandlerThread;)V

    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 332
    return-object v1
.end method

.method private static createSessionToken(Landroid/content/Context;Landroidx/media3/session/legacy/MediaSessionCompat$Token;Landroid/os/Looper;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "compatToken"    # Landroidx/media3/session/legacy/MediaSessionCompat$Token;
    .param p2, "completionLooper"    # Landroid/os/Looper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/media3/session/legacy/MediaSessionCompat$Token;",
            "Landroid/os/Looper;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media3/session/SessionToken;",
            ">;"
        }
    .end annotation

    .line 337
    const-string v0, "context must not be null"

    invoke-static {p0, v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    const-string v0, "compatToken must not be null"

    invoke-static {p1, v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    .line 342
    .local v0, "future":Lcom/google/common/util/concurrent/SettableFuture;, "Lcom/google/common/util/concurrent/SettableFuture<Landroidx/media3/session/SessionToken;>;"
    new-instance v1, Landroidx/media3/session/legacy/MediaControllerCompat;

    invoke-direct {v1, p0, p1}, Landroidx/media3/session/legacy/MediaControllerCompat;-><init>(Landroid/content/Context;Landroidx/media3/session/legacy/MediaSessionCompat$Token;)V

    move-object v7, v1

    .line 343
    .local v7, "controller":Landroidx/media3/session/legacy/MediaControllerCompat;
    invoke-virtual {v7}, Landroidx/media3/session/legacy/MediaControllerCompat;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Ljava/lang/String;

    .line 344
    .local v8, "packageName":Ljava/lang/String;
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object v9, v1

    .line 345
    .local v9, "handler":Landroid/os/Handler;
    new-instance v10, Landroidx/media3/session/SessionToken$$ExternalSyntheticLambda1;

    move-object v1, v10

    move-object v2, p0

    move-object v3, v8

    move-object v4, p1

    move-object v5, v7

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Landroidx/media3/session/SessionToken$$ExternalSyntheticLambda1;-><init>(Landroid/content/Context;Ljava/lang/String;Landroidx/media3/session/legacy/MediaSessionCompat$Token;Landroidx/media3/session/legacy/MediaControllerCompat;Lcom/google/common/util/concurrent/SettableFuture;)V

    .line 353
    .local v10, "createFallbackLegacyToken":Ljava/lang/Runnable;
    const-wide/16 v1, 0x1f4

    invoke-virtual {v9, v10, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 354
    new-instance v11, Landroidx/media3/session/SessionToken$1;

    move-object v1, v11

    move-object v2, v9

    move-object v3, v9

    move-object v4, v0

    move-object v5, p1

    move-object v6, v10

    invoke-direct/range {v1 .. v6}, Landroidx/media3/session/SessionToken$1;-><init>(Landroid/os/Handler;Landroid/os/Handler;Lcom/google/common/util/concurrent/SettableFuture;Landroidx/media3/session/legacy/MediaSessionCompat$Token;Ljava/lang/Runnable;)V

    const-string v1, "androidx.media3.session.SESSION_COMMAND_REQUEST_SESSION3_TOKEN"

    const/4 v2, 0x0

    invoke-virtual {v7, v1, v2, v11}, Landroidx/media3/session/legacy/MediaControllerCompat;->sendCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    .line 371
    return-object v0
.end method

.method public static fromBundle(Landroid/os/Bundle;)Landroidx/media3/session/SessionToken;
    .locals 2
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 526
    new-instance v0, Landroidx/media3/session/SessionToken;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/media3/session/SessionToken;-><init>(Landroid/os/Bundle;Landroid/media/session/MediaSession$Token;)V

    return-object v0
.end method

.method private static fromBundle(Landroid/os/Bundle;Landroid/media/session/MediaSession$Token;)Landroidx/media3/session/SessionToken;
    .locals 1
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "platformToken"    # Landroid/media/session/MediaSession$Token;

    .line 534
    new-instance v0, Landroidx/media3/session/SessionToken;

    invoke-direct {v0, p0, p1}, Landroidx/media3/session/SessionToken;-><init>(Landroid/os/Bundle;Landroid/media/session/MediaSession$Token;)V

    return-object v0
.end method

.method public static getAllServiceTokens(Landroid/content/Context;)Lcom/google/common/collect/ImmutableSet;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lcom/google/common/collect/ImmutableSet<",
            "Landroidx/media3/session/SessionToken;",
            ">;"
        }
    .end annotation

    .line 398
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 399
    .local v0, "pm":Landroid/content/pm/PackageManager;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 401
    .local v1, "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v2, Landroid/content/Intent;

    const-string v3, "androidx.media3.session.MediaLibraryService"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 402
    const/16 v3, 0x80

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 404
    .local v2, "libraryServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v2, :cond_0

    .line 405
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 407
    :cond_0
    new-instance v4, Landroid/content/Intent;

    const-string v5, "androidx.media3.session.MediaSessionService"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 408
    invoke-virtual {v0, v4, v3}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 410
    .local v4, "sessionServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v4, :cond_1

    .line 411
    invoke-interface {v1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 413
    :cond_1
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.media.browse.MediaBrowserService"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 414
    invoke-virtual {v0, v5, v3}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 416
    .local v3, "browserServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v3, :cond_2

    .line 417
    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 420
    :cond_2
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->builder()Lcom/google/common/collect/ImmutableSet$Builder;

    move-result-object v5

    .line 421
    .local v5, "sessionServiceTokens":Lcom/google/common/collect/ImmutableSet$Builder;, "Lcom/google/common/collect/ImmutableSet$Builder<Landroidx/media3/session/SessionToken;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 422
    .local v7, "service":Landroid/content/pm/ResolveInfo;
    if-eqz v7, :cond_3

    iget-object v8, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v8, :cond_4

    .line 423
    goto :goto_0

    .line 425
    :cond_4
    iget-object v8, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 426
    .local v8, "serviceInfo":Landroid/content/pm/ServiceInfo;
    new-instance v9, Landroidx/media3/session/SessionToken;

    new-instance v10, Landroid/content/ComponentName;

    iget-object v11, v8, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v12, v8, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v10, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v9, p0, v10}, Landroidx/media3/session/SessionToken;-><init>(Landroid/content/Context;Landroid/content/ComponentName;)V

    .line 428
    .local v9, "token":Landroidx/media3/session/SessionToken;
    invoke-virtual {v5, v9}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    .line 429
    .end local v7    # "service":Landroid/content/pm/ResolveInfo;
    .end local v8    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    .end local v9    # "token":Landroidx/media3/session/SessionToken;
    goto :goto_0

    .line 430
    :cond_5
    invoke-virtual {v5}, Lcom/google/common/collect/ImmutableSet$Builder;->build()Lcom/google/common/collect/ImmutableSet;

    move-result-object v6

    return-object v6
.end method

.method private static getUid(Landroid/content/pm/PackageManager;Ljava/lang/String;)I
    .locals 2
    .param p0, "manager"    # Landroid/content/pm/PackageManager;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 461
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 462
    :catch_0
    move-exception v0

    .line 463
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, -0x1

    return v1
.end method

.method private static isInterfaceDeclared(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/ComponentName;)Z
    .locals 6
    .param p0, "manager"    # Landroid/content/pm/PackageManager;
    .param p1, "serviceInterface"    # Ljava/lang/String;
    .param p2, "serviceComponent"    # Landroid/content/ComponentName;

    .line 437
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 441
    .local v0, "serviceIntent":Landroid/content/Intent;
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 443
    nop

    .line 444
    const/16 v1, 0x80

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 445
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v1, :cond_2

    .line 446
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 447
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 448
    .local v3, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v3, :cond_1

    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v4, :cond_0

    .line 449
    goto :goto_1

    .line 451
    :cond_0
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 452
    const/4 v4, 0x1

    return v4

    .line 446
    .end local v3    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 456
    .end local v2    # "i":I
    :cond_2
    const/4 v2, 0x0

    return v2
.end method

.method static synthetic lambda$createSessionToken$0(Landroid/content/Context;Ljava/lang/String;Landroidx/media3/session/legacy/MediaSessionCompat$Token;Landroidx/media3/session/legacy/MediaControllerCompat;Lcom/google/common/util/concurrent/SettableFuture;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "compatToken"    # Landroidx/media3/session/legacy/MediaSessionCompat$Token;
    .param p3, "controller"    # Landroidx/media3/session/legacy/MediaControllerCompat;
    .param p4, "future"    # Lcom/google/common/util/concurrent/SettableFuture;

    .line 347
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/media3/session/SessionToken;->getUid(Landroid/content/pm/PackageManager;Ljava/lang/String;)I

    move-result v0

    .line 348
    .local v0, "uid":I
    new-instance v1, Landroidx/media3/session/SessionToken;

    .line 349
    invoke-virtual {p3}, Landroidx/media3/session/legacy/MediaControllerCompat;->getSessionInfo()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {v1, p2, p1, v0, v2}, Landroidx/media3/session/SessionToken;-><init>(Landroidx/media3/session/legacy/MediaSessionCompat$Token;Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 350
    .local v1, "resultToken":Landroidx/media3/session/SessionToken;
    invoke-virtual {p4, v1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 351
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 188
    instance-of v0, p1, Landroidx/media3/session/SessionToken;

    if-nez v0, :cond_0

    .line 189
    const/4 v0, 0x0

    return v0

    .line 191
    :cond_0
    move-object v0, p1

    check-cast v0, Landroidx/media3/session/SessionToken;

    .line 192
    .local v0, "other":Landroidx/media3/session/SessionToken;
    iget-object v1, p0, Landroidx/media3/session/SessionToken;->impl:Landroidx/media3/session/SessionToken$SessionTokenImpl;

    iget-object v2, v0, Landroidx/media3/session/SessionToken;->impl:Landroidx/media3/session/SessionToken$SessionTokenImpl;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method getBinder()Ljava/lang/Object;
    .locals 1

    .line 274
    iget-object v0, p0, Landroidx/media3/session/SessionToken;->impl:Landroidx/media3/session/SessionToken$SessionTokenImpl;

    invoke-interface {v0}, Landroidx/media3/session/SessionToken$SessionTokenImpl;->getBinder()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method getComponentName()Landroid/content/ComponentName;
    .locals 1

    .line 228
    iget-object v0, p0, Landroidx/media3/session/SessionToken;->impl:Landroidx/media3/session/SessionToken$SessionTokenImpl;

    invoke-interface {v0}, Landroidx/media3/session/SessionToken$SessionTokenImpl;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .line 265
    iget-object v0, p0, Landroidx/media3/session/SessionToken;->impl:Landroidx/media3/session/SessionToken$SessionTokenImpl;

    invoke-interface {v0}, Landroidx/media3/session/SessionToken$SessionTokenImpl;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getInterfaceVersion()I
    .locals 1

    .line 256
    iget-object v0, p0, Landroidx/media3/session/SessionToken;->impl:Landroidx/media3/session/SessionToken$SessionTokenImpl;

    invoke-interface {v0}, Landroidx/media3/session/SessionToken$SessionTokenImpl;->getInterfaceVersion()I

    move-result v0

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 211
    iget-object v0, p0, Landroidx/media3/session/SessionToken;->impl:Landroidx/media3/session/SessionToken$SessionTokenImpl;

    invoke-interface {v0}, Landroidx/media3/session/SessionToken$SessionTokenImpl;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getPlatformToken()Landroid/media/session/MediaSession$Token;
    .locals 1

    .line 279
    iget-object v0, p0, Landroidx/media3/session/SessionToken;->impl:Landroidx/media3/session/SessionToken$SessionTokenImpl;

    invoke-interface {v0}, Landroidx/media3/session/SessionToken$SessionTokenImpl;->getPlatformToken()Landroid/media/session/MediaSession$Token;

    move-result-object v0

    return-object v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    .line 219
    iget-object v0, p0, Landroidx/media3/session/SessionToken;->impl:Landroidx/media3/session/SessionToken$SessionTokenImpl;

    invoke-interface {v0}, Landroidx/media3/session/SessionToken$SessionTokenImpl;->getServiceName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSessionVersion()I
    .locals 1

    .line 247
    iget-object v0, p0, Landroidx/media3/session/SessionToken;->impl:Landroidx/media3/session/SessionToken$SessionTokenImpl;

    invoke-interface {v0}, Landroidx/media3/session/SessionToken$SessionTokenImpl;->getLibraryVersion()I

    move-result v0

    return v0
.end method

.method public getType()I
    .locals 1

    .line 236
    iget-object v0, p0, Landroidx/media3/session/SessionToken;->impl:Landroidx/media3/session/SessionToken$SessionTokenImpl;

    invoke-interface {v0}, Landroidx/media3/session/SessionToken$SessionTokenImpl;->getType()I

    move-result v0

    return v0
.end method

.method public getUid()I
    .locals 1

    .line 206
    iget-object v0, p0, Landroidx/media3/session/SessionToken;->impl:Landroidx/media3/session/SessionToken$SessionTokenImpl;

    invoke-interface {v0}, Landroidx/media3/session/SessionToken$SessionTokenImpl;->getUid()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 183
    iget-object v0, p0, Landroidx/media3/session/SessionToken;->impl:Landroidx/media3/session/SessionToken$SessionTokenImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method isLegacySession()Z
    .locals 1

    .line 269
    iget-object v0, p0, Landroidx/media3/session/SessionToken;->impl:Landroidx/media3/session/SessionToken$SessionTokenImpl;

    invoke-interface {v0}, Landroidx/media3/session/SessionToken$SessionTokenImpl;->isLegacySession()Z

    move-result v0

    return v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 3

    .line 513
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 514
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v1, p0, Landroidx/media3/session/SessionToken;->impl:Landroidx/media3/session/SessionToken$SessionTokenImpl;

    instance-of v1, v1, Landroidx/media3/session/SessionTokenImplBase;

    if-eqz v1, :cond_0

    .line 515
    sget-object v1, Landroidx/media3/session/SessionToken;->FIELD_IMPL_TYPE:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 517
    :cond_0
    sget-object v1, Landroidx/media3/session/SessionToken;->FIELD_IMPL_TYPE:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 519
    :goto_0
    sget-object v1, Landroidx/media3/session/SessionToken;->FIELD_IMPL:Ljava/lang/String;

    iget-object v2, p0, Landroidx/media3/session/SessionToken;->impl:Landroidx/media3/session/SessionToken$SessionTokenImpl;

    invoke-interface {v2}, Landroidx/media3/session/SessionToken$SessionTokenImpl;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 520
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 197
    iget-object v0, p0, Landroidx/media3/session/SessionToken;->impl:Landroidx/media3/session/SessionToken$SessionTokenImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
