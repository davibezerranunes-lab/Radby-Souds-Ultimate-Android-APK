.class Landroidx/media3/session/MediaSessionImpl;
.super Ljava/lang/Object;
.source "MediaSessionImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/session/MediaSessionImpl$RemoteControllerTask;,
        Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;,
        Landroidx/media3/session/MediaSessionImpl$MediaPlayPauseKeyHandler;,
        Landroidx/media3/session/MediaSessionImpl$PlayerListener;
    }
.end annotation


# static fields
.field private static final ANDROID_AUTOMOTIVE_LAUNCHER_PACKAGE_NAME:Ljava/lang/String; = "com.android.car.carlauncher"

.field private static final ANDROID_AUTOMOTIVE_MEDIA_PACKAGE_NAME:Ljava/lang/String; = "com.android.car.media"

.field private static final ANDROID_AUTO_PACKAGE_NAME:Ljava/lang/String; = "com.google.android.projection.gearhead"

.field private static final DEFAULT_SESSION_POSITION_UPDATE_DELAY_MS:J = 0xbb8L

.field private static final RESULT_WHEN_CLOSED:Landroidx/media3/session/SessionResult;

.field private static final SYSTEM_UI_PACKAGE_NAME:Ljava/lang/String; = "com.android.systemui"

.field public static final TAG:Ljava/lang/String; = "MediaSessionImpl"

.field private static final WRONG_THREAD_ERROR_MESSAGE:Ljava/lang/String; = "Player callback method is called from a wrong thread. See javadoc of MediaSession for details."


# instance fields
.field private final applicationHandler:Landroid/os/Handler;

.field private final bitmapLoader:Landroidx/media3/common/util/BitmapLoader;

.field private browserServiceLegacyStub:Landroidx/media3/session/MediaSessionServiceLegacyStub;

.field private final callback:Landroidx/media3/session/MediaSession$Callback;

.field private closed:Z

.field private final commandButtonsForMediaItems:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/session/CommandButton;",
            ">;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private controllerForCurrentRequest:Landroidx/media3/session/MediaSession$ControllerInfo;

.field private customLayout:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/session/CommandButton;",
            ">;"
        }
    .end annotation
.end field

.field private final instance:Landroidx/media3/session/MediaSession;

.field private isMediaNotificationControllerConnected:Z

.field private final isPeriodicPositionUpdateEnabled:Z

.field private final lock:Ljava/lang/Object;

.field private final mainHandler:Landroid/os/Handler;

.field private mediaButtonPreferences:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/session/CommandButton;",
            ">;"
        }
    .end annotation
.end field

.field private final mediaPlayPauseKeyHandler:Landroidx/media3/session/MediaSessionImpl$MediaPlayPauseKeyHandler;

.field private mediaSessionListener:Landroidx/media3/session/MediaSession$Listener;

.field private final onPlayerInfoChangedHandler:Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;

.field private final periodicSessionPositionInfoUpdateRunnable:Ljava/lang/Runnable;

.field private final playIfSuppressed:Z

.field private playerInfo:Landroidx/media3/session/PlayerInfo;

.field private playerListener:Landroidx/media3/session/MediaSessionImpl$PlayerListener;

.field private playerWrapper:Landroidx/media3/session/PlayerWrapper;

.field private sessionActivity:Landroid/app/PendingIntent;

.field private sessionExtras:Landroid/os/Bundle;

.field private final sessionId:Ljava/lang/String;

.field private final sessionLegacyStub:Landroidx/media3/session/MediaSessionLegacyStub;

.field private sessionPositionUpdateDelayMs:J

.field private final sessionStub:Landroidx/media3/session/MediaSessionStub;

.field private final sessionToken:Landroidx/media3/session/SessionToken;

.field private final sessionUri:Landroid/net/Uri;


# direct methods
.method public static synthetic $r8$lambda$0KXhYynaXSf7ddUrubjSkjdskIU(Landroidx/media3/session/MediaSessionImpl;)V
    .locals 0

    invoke-direct {p0}, Landroidx/media3/session/MediaSessionImpl;->schedulePeriodicSessionPositionInfoChanges()V

    return-void
.end method

.method public static synthetic $r8$lambda$PlgEiNQFdzh2COk_GTDDwcVq-0c(Landroidx/media3/session/MediaSessionImpl;)V
    .locals 0

    invoke-direct {p0}, Landroidx/media3/session/MediaSessionImpl;->notifyPeriodicSessionPositionInfoChangesOnHandler()V

    return-void
.end method

.method public static synthetic $r8$lambda$x4Hecr6lNdk4Y9wrS1czF0XiyNw(Landroidx/media3/session/MediaSessionImpl;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/media3/session/MediaSessionImpl;->postOrRunOnApplicationHandler(Ljava/lang/Runnable;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 115
    new-instance v0, Landroidx/media3/session/SessionResult;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroidx/media3/session/SessionResult;-><init>(I)V

    sput-object v0, Landroidx/media3/session/MediaSessionImpl;->RESULT_WHEN_CLOSED:Landroidx/media3/session/SessionResult;

    return-void
.end method

.method public constructor <init>(Landroidx/media3/session/MediaSession;Landroid/content/Context;Ljava/lang/String;Landroidx/media3/common/Player;Landroid/app/PendingIntent;Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;Landroidx/media3/session/MediaSession$Callback;Landroid/os/Bundle;Landroid/os/Bundle;Landroidx/media3/common/util/BitmapLoader;ZZ)V
    .locals 25
    .param p1, "instance"    # Landroidx/media3/session/MediaSession;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "id"    # Ljava/lang/String;
    .param p4, "player"    # Landroidx/media3/common/Player;
    .param p5, "sessionActivity"    # Landroid/app/PendingIntent;
    .param p9, "callback"    # Landroidx/media3/session/MediaSession$Callback;
    .param p10, "tokenExtras"    # Landroid/os/Bundle;
    .param p11, "sessionExtras"    # Landroid/os/Bundle;
    .param p12, "bitmapLoader"    # Landroidx/media3/common/util/BitmapLoader;
    .param p13, "playIfSuppressed"    # Z
    .param p14, "isPeriodicPositionUpdateEnabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/session/MediaSession;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Landroidx/media3/common/Player;",
            "Landroid/app/PendingIntent;",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/session/CommandButton;",
            ">;",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/session/CommandButton;",
            ">;",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/session/CommandButton;",
            ">;",
            "Landroidx/media3/session/MediaSession$Callback;",
            "Landroid/os/Bundle;",
            "Landroid/os/Bundle;",
            "Landroidx/media3/common/util/BitmapLoader;",
            "ZZ)V"
        }
    .end annotation

    .line 173
    .local p6, "customLayout":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Landroidx/media3/session/CommandButton;>;"
    .local p7, "mediaButtonPreferences":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Landroidx/media3/session/CommandButton;>;"
    .local p8, "commandButtonsForMediaItems":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Landroidx/media3/session/CommandButton;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 117
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, v0, Landroidx/media3/session/MediaSessionImpl;->lock:Ljava/lang/Object;

    .line 174
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Init "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 177
    invoke-static/range {p0 .. p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "AndroidXMedia3/1.5.1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroidx/media3/common/util/Util;->DEVICE_DEBUG_INFO:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 174
    const-string v4, "MediaSessionImpl"

    invoke-static {v4, v3}, Landroidx/media3/common/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    iput-object v1, v0, Landroidx/media3/session/MediaSessionImpl;->instance:Landroidx/media3/session/MediaSession;

    .line 184
    move-object/from16 v3, p2

    iput-object v3, v0, Landroidx/media3/session/MediaSessionImpl;->context:Landroid/content/Context;

    .line 185
    iput-object v2, v0, Landroidx/media3/session/MediaSessionImpl;->sessionId:Ljava/lang/String;

    .line 186
    move-object/from16 v4, p5

    iput-object v4, v0, Landroidx/media3/session/MediaSessionImpl;->sessionActivity:Landroid/app/PendingIntent;

    .line 187
    move-object/from16 v13, p6

    iput-object v13, v0, Landroidx/media3/session/MediaSessionImpl;->customLayout:Lcom/google/common/collect/ImmutableList;

    .line 188
    move-object/from16 v14, p7

    iput-object v14, v0, Landroidx/media3/session/MediaSessionImpl;->mediaButtonPreferences:Lcom/google/common/collect/ImmutableList;

    .line 189
    move-object/from16 v15, p8

    iput-object v15, v0, Landroidx/media3/session/MediaSessionImpl;->commandButtonsForMediaItems:Lcom/google/common/collect/ImmutableList;

    .line 190
    move-object/from16 v12, p9

    iput-object v12, v0, Landroidx/media3/session/MediaSessionImpl;->callback:Landroidx/media3/session/MediaSession$Callback;

    .line 191
    move-object/from16 v11, p11

    iput-object v11, v0, Landroidx/media3/session/MediaSessionImpl;->sessionExtras:Landroid/os/Bundle;

    .line 192
    move-object/from16 v10, p12

    iput-object v10, v0, Landroidx/media3/session/MediaSessionImpl;->bitmapLoader:Landroidx/media3/common/util/BitmapLoader;

    .line 193
    move/from16 v9, p13

    iput-boolean v9, v0, Landroidx/media3/session/MediaSessionImpl;->playIfSuppressed:Z

    .line 194
    move/from16 v8, p14

    iput-boolean v8, v0, Landroidx/media3/session/MediaSessionImpl;->isPeriodicPositionUpdateEnabled:Z

    .line 198
    move-object/from16 v7, p0

    .line 200
    .local v7, "thisRef":Landroidx/media3/session/MediaSessionImpl;
    new-instance v5, Landroidx/media3/session/MediaSessionStub;

    invoke-direct {v5, v7}, Landroidx/media3/session/MediaSessionStub;-><init>(Landroidx/media3/session/MediaSessionImpl;)V

    iput-object v5, v0, Landroidx/media3/session/MediaSessionImpl;->sessionStub:Landroidx/media3/session/MediaSessionStub;

    .line 202
    new-instance v5, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v5, v0, Landroidx/media3/session/MediaSessionImpl;->mainHandler:Landroid/os/Handler;

    .line 203
    invoke-interface/range {p4 .. p4}, Landroidx/media3/common/Player;->getApplicationLooper()Landroid/os/Looper;

    move-result-object v6

    .line 204
    .local v6, "applicationLooper":Landroid/os/Looper;
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5, v6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v5, v0, Landroidx/media3/session/MediaSessionImpl;->applicationHandler:Landroid/os/Handler;

    .line 206
    sget-object v5, Landroidx/media3/session/PlayerInfo;->DEFAULT:Landroidx/media3/session/PlayerInfo;

    iput-object v5, v0, Landroidx/media3/session/MediaSessionImpl;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 207
    new-instance v5, Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;

    invoke-direct {v5, v0, v6}, Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;-><init>(Landroidx/media3/session/MediaSessionImpl;Landroid/os/Looper;)V

    iput-object v5, v0, Landroidx/media3/session/MediaSessionImpl;->onPlayerInfoChangedHandler:Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;

    .line 208
    new-instance v5, Landroidx/media3/session/MediaSessionImpl$MediaPlayPauseKeyHandler;

    invoke-direct {v5, v0, v6}, Landroidx/media3/session/MediaSessionImpl$MediaPlayPauseKeyHandler;-><init>(Landroidx/media3/session/MediaSessionImpl;Landroid/os/Looper;)V

    iput-object v5, v0, Landroidx/media3/session/MediaSessionImpl;->mediaPlayPauseKeyHandler:Landroidx/media3/session/MediaSessionImpl$MediaPlayPauseKeyHandler;

    .line 219
    new-instance v5, Landroid/net/Uri$Builder;

    invoke-direct {v5}, Landroid/net/Uri$Builder;-><init>()V

    .line 221
    const-class v16, Landroidx/media3/session/MediaSessionImpl;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    .line 222
    invoke-virtual {v3, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    .line 223
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    .line 224
    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    iput-object v3, v0, Landroidx/media3/session/MediaSessionImpl;->sessionUri:Landroid/net/Uri;

    .line 226
    new-instance v3, Landroidx/media3/session/MediaSessionLegacyStub;

    iget-object v5, v0, Landroidx/media3/session/MediaSessionImpl;->sessionUri:Landroid/net/Uri;

    iget-object v2, v0, Landroidx/media3/session/MediaSessionImpl;->applicationHandler:Landroid/os/Handler;

    move-object/from16 v4, p10

    invoke-direct {v3, v7, v5, v2, v4}, Landroidx/media3/session/MediaSessionLegacyStub;-><init>(Landroidx/media3/session/MediaSessionImpl;Landroid/net/Uri;Landroid/os/Handler;Landroid/os/Bundle;)V

    iput-object v3, v0, Landroidx/media3/session/MediaSessionImpl;->sessionLegacyStub:Landroidx/media3/session/MediaSessionLegacyStub;

    .line 230
    iget-object v2, v0, Landroidx/media3/session/MediaSessionImpl;->sessionLegacyStub:Landroidx/media3/session/MediaSessionLegacyStub;

    invoke-virtual {v2}, Landroidx/media3/session/MediaSessionLegacyStub;->getSessionCompat()Landroidx/media3/session/legacy/MediaSessionCompat;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/media3/session/legacy/MediaSessionCompat;->getSessionToken()Landroidx/media3/session/legacy/MediaSessionCompat$Token;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/media3/session/legacy/MediaSessionCompat$Token;->getToken()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/session/MediaSession$Token;

    .line 231
    .local v2, "platformToken":Landroid/media/session/MediaSession$Token;
    new-instance v3, Landroidx/media3/session/SessionToken;

    .line 233
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v17

    .line 237
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v21

    iget-object v5, v0, Landroidx/media3/session/MediaSessionImpl;->sessionStub:Landroidx/media3/session/MediaSessionStub;

    const/16 v18, 0x0

    const v19, 0x3be71a54

    const/16 v20, 0x4

    move-object/from16 v16, v3

    move-object/from16 v22, v5

    move-object/from16 v23, p10

    move-object/from16 v24, v2

    invoke-direct/range {v16 .. v24}, Landroidx/media3/session/SessionToken;-><init>(IIIILjava/lang/String;Landroidx/media3/session/IMediaSession;Landroid/os/Bundle;Landroid/media/session/MediaSession$Token;)V

    iput-object v3, v0, Landroidx/media3/session/MediaSessionImpl;->sessionToken:Landroidx/media3/session/SessionToken;

    .line 245
    new-instance v3, Landroidx/media3/session/MediaSession$ConnectionResult$AcceptedResultBuilder;

    invoke-direct {v3, v1}, Landroidx/media3/session/MediaSession$ConnectionResult$AcceptedResultBuilder;-><init>(Landroidx/media3/session/MediaSession;)V

    .line 246
    invoke-virtual {v3}, Landroidx/media3/session/MediaSession$ConnectionResult$AcceptedResultBuilder;->build()Landroidx/media3/session/MediaSession$ConnectionResult;

    move-result-object v3

    .line 247
    .local v3, "connectionResult":Landroidx/media3/session/MediaSession$ConnectionResult;
    new-instance v16, Landroidx/media3/session/PlayerWrapper;

    iget-object v5, v3, Landroidx/media3/session/MediaSession$ConnectionResult;->availableSessionCommands:Landroidx/media3/session/SessionCommands;

    iget-object v1, v3, Landroidx/media3/session/MediaSession$ConnectionResult;->availablePlayerCommands:Landroidx/media3/common/Player$Commands;

    move-object/from16 v17, v5

    move-object/from16 v5, v16

    move-object/from16 v18, v6

    .end local v6    # "applicationLooper":Landroid/os/Looper;
    .local v18, "applicationLooper":Landroid/os/Looper;
    move-object/from16 v6, p4

    move-object/from16 v19, v2

    move-object v2, v7

    .end local v7    # "thisRef":Landroidx/media3/session/MediaSessionImpl;
    .local v2, "thisRef":Landroidx/media3/session/MediaSessionImpl;
    .local v19, "platformToken":Landroid/media/session/MediaSession$Token;
    move/from16 v7, p13

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, v17

    move-object v11, v1

    move-object/from16 v12, p11

    invoke-direct/range {v5 .. v12}, Landroidx/media3/session/PlayerWrapper;-><init>(Landroidx/media3/common/Player;ZLcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;Landroidx/media3/session/SessionCommands;Landroidx/media3/common/Player$Commands;Landroid/os/Bundle;)V

    move-object/from16 v1, v16

    .line 256
    .local v1, "playerWrapper":Landroidx/media3/session/PlayerWrapper;
    iput-object v1, v0, Landroidx/media3/session/MediaSessionImpl;->playerWrapper:Landroidx/media3/session/PlayerWrapper;

    .line 257
    iget-object v5, v0, Landroidx/media3/session/MediaSessionImpl;->applicationHandler:Landroid/os/Handler;

    new-instance v6, Landroidx/media3/session/MediaSessionImpl$$ExternalSyntheticLambda31;

    invoke-direct {v6, v2, v1}, Landroidx/media3/session/MediaSessionImpl$$ExternalSyntheticLambda31;-><init>(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/PlayerWrapper;)V

    invoke-static {v5, v6}, Landroidx/media3/common/util/Util;->postOrRun(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    .line 263
    const-wide/16 v5, 0xbb8

    iput-wide v5, v0, Landroidx/media3/session/MediaSessionImpl;->sessionPositionUpdateDelayMs:J

    .line 264
    nop

    .line 265
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Landroidx/media3/session/MediaSessionImpl$$ExternalSyntheticLambda32;

    invoke-direct {v5, v2}, Landroidx/media3/session/MediaSessionImpl$$ExternalSyntheticLambda32;-><init>(Landroidx/media3/session/MediaSessionImpl;)V

    iput-object v5, v0, Landroidx/media3/session/MediaSessionImpl;->periodicSessionPositionInfoUpdateRunnable:Ljava/lang/Runnable;

    .line 266
    iget-object v5, v0, Landroidx/media3/session/MediaSessionImpl;->applicationHandler:Landroid/os/Handler;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Landroidx/media3/session/MediaSessionImpl$$ExternalSyntheticLambda33;

    invoke-direct {v6, v2}, Landroidx/media3/session/MediaSessionImpl$$ExternalSyntheticLambda33;-><init>(Landroidx/media3/session/MediaSessionImpl;)V

    invoke-static {v5, v6}, Landroidx/media3/common/util/Util;->postOrRun(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    .line 267
    return-void
.end method

.method static synthetic access$000(Landroidx/media3/session/MediaSessionImpl;)Landroidx/media3/session/PlayerWrapper;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/session/MediaSessionImpl;

    .line 100
    iget-object v0, p0, Landroidx/media3/session/MediaSessionImpl;->playerWrapper:Landroidx/media3/session/PlayerWrapper;

    return-object v0
.end method

.method static synthetic access$100(Landroidx/media3/session/MediaSessionImpl;)V
    .locals 0
    .param p0, "x0"    # Landroidx/media3/session/MediaSessionImpl;

    .line 100
    invoke-direct {p0}, Landroidx/media3/session/MediaSessionImpl;->verifyApplicationThread()V

    return-void
.end method

.method static synthetic access$200(Landroidx/media3/session/MediaSessionImpl;)Landroidx/media3/session/PlayerInfo;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/session/MediaSessionImpl;

    .line 100
    iget-object v0, p0, Landroidx/media3/session/MediaSessionImpl;->playerInfo:Landroidx/media3/session/PlayerInfo;

    return-object v0
.end method

.method static synthetic access$202(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/PlayerInfo;)Landroidx/media3/session/PlayerInfo;
    .locals 0
    .param p0, "x0"    # Landroidx/media3/session/MediaSessionImpl;
    .param p1, "x1"    # Landroidx/media3/session/PlayerInfo;

    .line 100
    iput-object p1, p0, Landroidx/media3/session/MediaSessionImpl;->playerInfo:Landroidx/media3/session/PlayerInfo;

    return-object p1
.end method

.method static synthetic access$300(Landroidx/media3/session/MediaSessionImpl;)Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/session/MediaSessionImpl;

    .line 100
    iget-object v0, p0, Landroidx/media3/session/MediaSessionImpl;->onPlayerInfoChangedHandler:Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;

    return-object v0
.end method

.method static synthetic access$400(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSessionImpl$RemoteControllerTask;)V
    .locals 0
    .param p0, "x0"    # Landroidx/media3/session/MediaSessionImpl;
    .param p1, "x1"    # Landroidx/media3/session/MediaSessionImpl$RemoteControllerTask;

    .line 100
    invoke-direct {p0, p1}, Landroidx/media3/session/MediaSessionImpl;->dispatchRemoteControllerTaskToLegacyStub(Landroidx/media3/session/MediaSessionImpl$RemoteControllerTask;)V

    return-void
.end method

.method static synthetic access$500(Landroidx/media3/session/MediaSessionImpl;)V
    .locals 0
    .param p0, "x0"    # Landroidx/media3/session/MediaSessionImpl;

    .line 100
    invoke-direct {p0}, Landroidx/media3/session/MediaSessionImpl;->schedulePeriodicSessionPositionInfoChanges()V

    return-void
.end method

.method static synthetic access$600(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/common/Player$Commands;)V
    .locals 0
    .param p0, "x0"    # Landroidx/media3/session/MediaSessionImpl;
    .param p1, "x1"    # Landroidx/media3/common/Player$Commands;

    .line 100
    invoke-direct {p0, p1}, Landroidx/media3/session/MediaSessionImpl;->handleAvailablePlayerCommandsChanged(Landroidx/media3/common/Player$Commands;)V

    return-void
.end method

.method static synthetic access$700(Landroidx/media3/session/MediaSessionImpl;Landroid/view/KeyEvent;Z)Z
    .locals 1
    .param p0, "x0"    # Landroidx/media3/session/MediaSessionImpl;
    .param p1, "x1"    # Landroid/view/KeyEvent;
    .param p2, "x2"    # Z

    .line 100
    invoke-direct {p0, p1, p2}, Landroidx/media3/session/MediaSessionImpl;->applyMediaButtonKeyEvent(Landroid/view/KeyEvent;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Landroidx/media3/session/MediaSessionImpl;)Landroidx/media3/session/MediaSessionLegacyStub;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/session/MediaSessionImpl;

    .line 100
    iget-object v0, p0, Landroidx/media3/session/MediaSessionImpl;->sessionLegacyStub:Landroidx/media3/session/MediaSessionLegacyStub;

    return-object v0
.end method

.method static synthetic access$900(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/PlayerInfo;ZZ)V
    .locals 0
    .param p0, "x0"    # Landroidx/media3/session/MediaSessionImpl;
    .param p1, "x1"    # Landroidx/media3/session/PlayerInfo;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z

    .line 100
    invoke-direct {p0, p1, p2, p3}, Landroidx/media3/session/MediaSessionImpl;->dispatchOnPlayerInfoChanged(Landroidx/media3/session/PlayerInfo;ZZ)V

    return-void
.end method

.method private applyMediaButtonKeyEvent(Landroid/view/KeyEvent;Z)Z
    .locals 5
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;
    .param p2, "doubleTapCompleted"    # Z

    .line 1314
    iget-object v0, p0, Landroidx/media3/session/MediaSessionImpl;->instance:Landroidx/media3/session/MediaSession;

    invoke-virtual {v0}, Landroidx/media3/session/MediaSession;->getMediaNotificationControllerInfo()Landroidx/media3/session/MediaSession$ControllerInfo;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/session/MediaSession$ControllerInfo;

    .line 1316
    .local v0, "controllerInfo":Landroidx/media3/session/MediaSession$ControllerInfo;
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 1317
    .local v1, "keyCode":I
    const/16 v2, 0x55

    if-eq v1, v2, :cond_0

    const/16 v2, 0x4f

    if-ne v1, v2, :cond_1

    :cond_0
    if-eqz p2, :cond_1

    .line 1319
    const/16 v1, 0x57

    .line 1321
    :cond_1
    sparse-switch v1, :sswitch_data_0

    .line 1358
    const/4 v2, 0x0

    return v2

    .line 1332
    :sswitch_0
    new-instance v2, Landroidx/media3/session/MediaSessionImpl$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0}, Landroidx/media3/session/MediaSessionImpl$$ExternalSyntheticLambda1;-><init>(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;)V

    .line 1333
    .local v2, "command":Ljava/lang/Runnable;
    goto :goto_1

    .line 1329
    .end local v2    # "command":Ljava/lang/Runnable;
    :sswitch_1
    new-instance v2, Landroidx/media3/session/MediaSessionImpl$$ExternalSyntheticLambda36;

    invoke-direct {v2, p0, v0}, Landroidx/media3/session/MediaSessionImpl$$ExternalSyntheticLambda36;-><init>(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;)V

    .line 1330
    .restart local v2    # "command":Ljava/lang/Runnable;
    goto :goto_1

    .line 1347
    .end local v2    # "command":Ljava/lang/Runnable;
    :sswitch_2
    new-instance v2, Landroidx/media3/session/MediaSessionImpl$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, v0}, Landroidx/media3/session/MediaSessionImpl$$ExternalSyntheticLambda4;-><init>(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;)V

    .line 1349
    .restart local v2    # "command":Ljava/lang/Runnable;
    goto :goto_1

    .line 1351
    .end local v2    # "command":Ljava/lang/Runnable;
    :sswitch_3
    new-instance v2, Landroidx/media3/session/MediaSessionImpl$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0, v0}, Landroidx/media3/session/MediaSessionImpl$$ExternalSyntheticLambda5;-><init>(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;)V

    .line 1353
    .restart local v2    # "command":Ljava/lang/Runnable;
    goto :goto_1

    .line 1341
    .end local v2    # "command":Ljava/lang/Runnable;
    :sswitch_4
    new-instance v2, Landroidx/media3/session/MediaSessionImpl$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, v0}, Landroidx/media3/session/MediaSessionImpl$$ExternalSyntheticLambda3;-><init>(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;)V

    .line 1345
    .restart local v2    # "command":Ljava/lang/Runnable;
    goto :goto_1

    .line 1336
    .end local v2    # "command":Ljava/lang/Runnable;
    :sswitch_5
    new-instance v2, Landroidx/media3/session/MediaSessionImpl$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v0}, Landroidx/media3/session/MediaSessionImpl$$ExternalSyntheticLambda2;-><init>(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;)V

    .line 1338
    .restart local v2    # "command":Ljava/lang/Runnable;
    goto :goto_1

    .line 1355
    .end local v2    # "command":Ljava/lang/Runnable;
    :sswitch_6
    new-instance v2, Landroidx/media3/session/MediaSessionImpl$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0, v0}, Landroidx/media3/session/MediaSessionImpl$$ExternalSyntheticLambda6;-><init>(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;)V

    .line 1356
    .restart local v2    # "command":Ljava/lang/Runnable;
    goto :goto_1

    .line 1324
    .end local v2    # "command":Ljava/lang/Runnable;
    :sswitch_7
    invoke-virtual {p0}, Landroidx/media3/session/MediaSessionImpl;->getPlayerWrapper()Landroidx/media3/session/PlayerWrapper;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/media3/session/PlayerWrapper;->getPlayWhenReady()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1325
    new-instance v2, Landroidx/media3/session/MediaSessionImpl$$ExternalSyntheticLambda34;

    invoke-direct {v2, p0, v0}, Landroidx/media3/session/MediaSessionImpl$$ExternalSyntheticLambda34;-><init>(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;)V

    goto :goto_0

    .line 1326
    :cond_2
    new-instance v2, Landroidx/media3/session/MediaSessionImpl$$ExternalSyntheticLambda35;

    invoke-direct {v2, p0, v0}, Landroidx/media3/session/MediaSessionImpl$$ExternalSyntheticLambda35;-><init>(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;)V

    :goto_0
    nop

    .line 1327
    .restart local v2    # "command":Ljava/lang/Runnable;
    nop

    .line 1360
    :goto_1
    nop

    .line 1361
    invoke-virtual {p0}, Landroidx/media3/session/MediaSessionImpl;->getApplicationHandler()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Landroidx/media3/session/MediaSessionImpl$$ExternalSyntheticLambda7;

    invoke-direct {v4, p0, v2, v0}, Landroidx/media3/session/MediaSessionImpl$$ExternalSyntheticLambda7;-><init>(Landroidx/media3/session/MediaSessionImpl;Ljava/lang/Runnable;Landroidx/media3/session/MediaSession$ControllerInfo;)V

    .line 1360
    invoke-static {v3, v4}, Landroidx/media3/common/util/Util;->postOrRun(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    .line 1366
    const/4 v3, 0x1

    return v3

    nop

    :sswitch_data_0
    .sparse-switch
        0x55 -> :sswitch_7
        0x56 -> :sswitch_6
        0x57 -> :sswitch_5
        0x58 -> :sswitch_4
        0x59 -> :sswitch_3
        0x5a -> :sswitch_2
        0x7e -> :sswitch_1
        0x7f -> :sswitch_0
        0x110 -> :sswitch_5
        0x111 -> :sswitch_4
    .end sparse-switch
.end method

.method private dispatchOnPeriodicSessionPositionInfoChanged(Landroidx/media3/session/SessionPositionInfo;)V
    .locals 9
    .param p1, "sessionPositionInfo"    # Landroidx/media3/session/SessionPositionInfo;

    .line 1063
    iget-object v0, p0, Landroidx/media3/session/MediaSessionImpl;->sessionStub:Landroidx/media3/session/MediaSessionStub;

    .line 1064
    invoke-virtual {v0}, Landroidx/media3/session/MediaSessionStub;->getConnectedControllersManager()Landroidx/media3/session/ConnectedControllersManager;

    move-result-object v0

    .line 1065
    .local v0, "controllersManager":Landroidx/media3/session/ConnectedControllersManager;, "Landroidx/media3/session/ConnectedControllersManager<Landroid/os/IBinder;>;"
    iget-object v1, p0, Landroidx/media3/session/MediaSessionImpl;->sessionStub:Landroidx/media3/session/MediaSessionStub;

    .line 1066
    invoke-virtual {v1}, Landroidx/media3/session/MediaSessionStub;->getConnectedControllersManager()Landroidx/media3/session/ConnectedControllersManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media3/session/ConnectedControllersManager;->getConnectedControllers()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    .line 1067
    .local v1, "controllers":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/session/MediaSession$ControllerInfo;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 1068
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/session/MediaSession$ControllerInfo;

    .line 1069
    .local v3, "controller":Landroidx/media3/session/MediaSession$ControllerInfo;
    nop

    .line 1070
    const/16 v4, 0x10

    invoke-virtual {v0, v3, v4}, Landroidx/media3/session/ConnectedControllersManager;->isPlayerCommandAvailable(Landroidx/media3/session/MediaSession$ControllerInfo;I)Z

    move-result v4

    .line 1072
    .local v4, "canAccessCurrentMediaItem":Z
    nop

    .line 1073
    const/16 v5, 0x11

    invoke-virtual {v0, v3, v5}, Landroidx/media3/session/ConnectedControllersManager;->isPlayerCommandAvailable(Landroidx/media3/session/MediaSession$ControllerInfo;I)Z

    move-result v5

    .line 1074
    .local v5, "canAccessTimeline":Z
    new-instance v6, Landroidx/media3/session/MediaSessionImpl$$ExternalSyntheticLambda26;

    invoke-direct {v6, p1, v4, v5, v3}, Landroidx/media3/session/MediaSessionImpl$$ExternalSyntheticLambda26;-><init>(Landroidx/media3/session/SessionPositionInfo;ZZLandroidx/media3/session/MediaSession$ControllerInfo;)V

    invoke-virtual {p0, v3, v6}, Landroidx/media3/session/MediaSessionImpl;->dispatchRemoteControllerTaskWithoutReturn(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/MediaSessionImpl$RemoteControllerTask;)V

    .line 1067
    .end local v3    # "controller":Landroidx/media3/session/MediaSession$ControllerInfo;
    .end local v4    # "canAccessCurrentMediaItem":Z
    .end local v5    # "canAccessTimeline":Z
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1085
    .end local v2    # "i":I
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroidx/media3/session/MediaSessionImpl;->sessionLegacyStub:Landroidx/media3/session/MediaSessionLegacyStub;

    .line 1086
    invoke-virtual {v2}, Landroidx/media3/session/MediaSessionLegacyStub;->getControllerLegacyCbForBroadcast()Landroidx/media3/session/MediaSession$ControllerCb;

    move-result-object v3

    .line 1087
    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v5, p1

    invoke-interface/range {v3 .. v8}, Landroidx/media3/session/MediaSession$ControllerCb;->onPeriodicSessionPositionInfoChanged(ILandroidx/media3/session/SessionPositionInfo;ZZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1095
    goto :goto_1

    .line 1093
    :catch_0
    move-exception v2

    .line 1094
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "MediaSessionImpl"

    const-string v4, "Exception in using media1 API"

    invoke-static {v3, v4, v2}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1096
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method

.method private dispatchOnPlayerInfoChanged(Landroidx/media3/session/PlayerInfo;ZZ)V
    .locals 12
    .param p1, "playerInfo"    # Landroidx/media3/session/PlayerInfo;
    .param p2, "excludeTimeline"    # Z
    .param p3, "excludeTracks"    # Z

    .line 629
    iget-object v0, p0, Landroidx/media3/session/MediaSessionImpl;->sessionStub:Landroidx/media3/session/MediaSessionStub;

    invoke-virtual {v0, p1}, Landroidx/media3/session/MediaSessionStub;->generateAndCacheUniqueTrackGroupIds(Landroidx/media3/session/PlayerInfo;)Landroidx/media3/session/PlayerInfo;

    move-result-object p1

    .line 630
    iget-object v0, p0, Landroidx/media3/session/MediaSessionImpl;->sessionStub:Landroidx/media3/session/MediaSessionStub;

    .line 631
    invoke-virtual {v0}, Landroidx/media3/session/MediaSessionStub;->getConnectedControllersManager()Landroidx/media3/session/ConnectedControllersManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/session/ConnectedControllersManager;->getConnectedControllers()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 632
    .local v0, "controllers":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/session/MediaSession$ControllerInfo;>;"
    const/4 v1, 0x0

    move v7, v1

    .local v7, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v7, v1, :cond_2

    .line 633
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroidx/media3/session/MediaSession$ControllerInfo;

    .line 636
    .local v8, "controller":Landroidx/media3/session/MediaSession$ControllerInfo;
    :try_start_0
    iget-object v1, p0, Landroidx/media3/session/MediaSessionImpl;->sessionStub:Landroidx/media3/session/MediaSessionStub;

    .line 637
    invoke-virtual {v1}, Landroidx/media3/session/MediaSessionStub;->getConnectedControllersManager()Landroidx/media3/session/ConnectedControllersManager;

    move-result-object v1

    move-object v9, v1

    .line 638
    .local v9, "controllersManager":Landroidx/media3/session/ConnectedControllersManager;, "Landroidx/media3/session/ConnectedControllersManager<Landroid/os/IBinder;>;"
    invoke-virtual {v9, v8}, Landroidx/media3/session/ConnectedControllersManager;->getSequencedFutureManager(Landroidx/media3/session/MediaSession$ControllerInfo;)Landroidx/media3/session/SequencedFutureManager;

    move-result-object v1

    move-object v10, v1

    .line 639
    .local v10, "manager":Landroidx/media3/session/SequencedFutureManager;
    if-eqz v10, :cond_0

    .line 640
    invoke-virtual {v10}, Landroidx/media3/session/SequencedFutureManager;->obtainNextSequenceNumber()I

    move-result v1

    move v11, v1

    .local v1, "seq":I
    goto :goto_1

    .line 642
    .end local v1    # "seq":I
    :cond_0
    invoke-virtual {p0, v8}, Landroidx/media3/session/MediaSessionImpl;->isConnected(Landroidx/media3/session/MediaSession$ControllerInfo;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 643
    return-void

    .line 646
    :cond_1
    const/4 v1, 0x0

    move v11, v1

    .line 648
    .local v11, "seq":I
    :goto_1
    nop

    .line 650
    invoke-virtual {v9, v8}, Landroidx/media3/session/ConnectedControllersManager;->getAvailablePlayerCommands(Landroidx/media3/session/MediaSession$ControllerInfo;)Landroidx/media3/common/Player$Commands;

    move-result-object v1

    .line 651
    invoke-virtual {p0}, Landroidx/media3/session/MediaSessionImpl;->getPlayerWrapper()Landroidx/media3/session/PlayerWrapper;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/media3/session/PlayerWrapper;->getAvailableCommands()Landroidx/media3/common/Player$Commands;

    move-result-object v2

    .line 649
    invoke-static {v1, v2}, Landroidx/media3/session/MediaUtils;->intersect(Landroidx/media3/common/Player$Commands;Landroidx/media3/common/Player$Commands;)Landroidx/media3/common/Player$Commands;

    move-result-object v4

    .line 652
    .local v4, "intersectedCommands":Landroidx/media3/common/Player$Commands;
    invoke-virtual {v8}, Landroidx/media3/session/MediaSession$ControllerInfo;->getControllerCb()Landroidx/media3/session/MediaSession$ControllerCb;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/session/MediaSession$ControllerCb;

    .line 653
    move v2, v11

    move-object v3, p1

    move v5, p2

    move v6, p3

    invoke-interface/range {v1 .. v6}, Landroidx/media3/session/MediaSession$ControllerCb;->onPlayerInfoChanged(ILandroidx/media3/session/PlayerInfo;Landroidx/media3/common/Player$Commands;ZZ)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v4    # "intersectedCommands":Landroidx/media3/common/Player$Commands;
    .end local v9    # "controllersManager":Landroidx/media3/session/ConnectedControllersManager;, "Landroidx/media3/session/ConnectedControllersManager<Landroid/os/IBinder;>;"
    .end local v10    # "manager":Landroidx/media3/session/SequencedFutureManager;
    .end local v11    # "seq":I
    goto :goto_2

    .line 657
    :catch_0
    move-exception v1

    .line 663
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Landroidx/media3/session/MediaSession$ControllerInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MediaSessionImpl"

    invoke-static {v3, v2, v1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 655
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 656
    .local v1, "e":Landroid/os/DeadObjectException;
    invoke-direct {p0, v8}, Landroidx/media3/session/MediaSessionImpl;->onDeadObjectException(Landroidx/media3/session/MediaSession$ControllerInfo;)V

    .line 664
    .end local v1    # "e":Landroid/os/DeadObjectException;
    :goto_2
    nop

    .line 632
    .end local v8    # "controller":Landroidx/media3/session/MediaSession$ControllerInfo;
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 666
    .end local v7    # "i":I
    :cond_2
    return-void
.end method

.method private dispatchRemoteControllerTask(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/MediaSessionImpl$RemoteControllerTask;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 5
    .param p1, "controller"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p2, "task"    # Landroidx/media3/session/MediaSessionImpl$RemoteControllerTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/session/MediaSession$ControllerInfo;",
            "Landroidx/media3/session/MediaSessionImpl$RemoteControllerTask;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media3/session/SessionResult;",
            ">;"
        }
    .end annotation

    .line 1150
    const/16 v0, -0x64

    :try_start_0
    iget-object v1, p0, Landroidx/media3/session/MediaSessionImpl;->sessionStub:Landroidx/media3/session/MediaSessionStub;

    .line 1151
    invoke-virtual {v1}, Landroidx/media3/session/MediaSessionStub;->getConnectedControllersManager()Landroidx/media3/session/ConnectedControllersManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroidx/media3/session/ConnectedControllersManager;->getSequencedFutureManager(Landroidx/media3/session/MediaSession$ControllerInfo;)Landroidx/media3/session/SequencedFutureManager;

    move-result-object v1

    .line 1152
    .local v1, "manager":Landroidx/media3/session/SequencedFutureManager;
    if-eqz v1, :cond_0

    .line 1153
    sget-object v2, Landroidx/media3/session/MediaSessionImpl;->RESULT_WHEN_CLOSED:Landroidx/media3/session/SessionResult;

    invoke-virtual {v1, v2}, Landroidx/media3/session/SequencedFutureManager;->createSequencedFuture(Ljava/lang/Object;)Landroidx/media3/session/SequencedFutureManager$SequencedFuture;

    move-result-object v2

    .line 1154
    .local v2, "future":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Landroidx/media3/session/SessionResult;>;"
    move-object v3, v2

    check-cast v3, Landroidx/media3/session/SequencedFutureManager$SequencedFuture;

    invoke-virtual {v3}, Landroidx/media3/session/SequencedFutureManager$SequencedFuture;->getSequenceNumber()I

    move-result v3

    .local v3, "seq":I
    goto :goto_0

    .line 1156
    .end local v2    # "future":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Landroidx/media3/session/SessionResult;>;"
    .end local v3    # "seq":I
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/media3/session/MediaSessionImpl;->isConnected(Landroidx/media3/session/MediaSession$ControllerInfo;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1157
    new-instance v2, Landroidx/media3/session/SessionResult;

    invoke-direct {v2, v0}, Landroidx/media3/session/SessionResult;-><init>(I)V

    invoke-static {v2}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0

    .line 1160
    :cond_1
    const/4 v3, 0x0

    .line 1162
    .restart local v3    # "seq":I
    new-instance v2, Landroidx/media3/session/SessionResult;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, Landroidx/media3/session/SessionResult;-><init>(I)V

    invoke-static {v2}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v2

    .line 1164
    .restart local v2    # "future":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Landroidx/media3/session/SessionResult;>;"
    :goto_0
    invoke-virtual {p1}, Landroidx/media3/session/MediaSession$ControllerInfo;->getControllerCb()Landroidx/media3/session/MediaSession$ControllerCb;

    move-result-object v4

    .line 1165
    .local v4, "cb":Landroidx/media3/session/MediaSession$ControllerCb;
    if-eqz v4, :cond_2

    .line 1166
    invoke-interface {p2, v4, v3}, Landroidx/media3/session/MediaSessionImpl$RemoteControllerTask;->run(Landroidx/media3/session/MediaSession$ControllerCb;I)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1168
    :cond_2
    return-object v2

    .line 1172
    .end local v1    # "manager":Landroidx/media3/session/SequencedFutureManager;
    .end local v2    # "future":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Landroidx/media3/session/SessionResult;>;"
    .end local v3    # "seq":I
    .end local v4    # "cb":Landroidx/media3/session/MediaSession$ControllerCb;
    :catch_0
    move-exception v0

    .line 1178
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroidx/media3/session/MediaSession$ControllerInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MediaSessionImpl"

    invoke-static {v2, v1, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1180
    .end local v0    # "e":Landroid/os/RemoteException;
    new-instance v0, Landroidx/media3/session/SessionResult;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroidx/media3/session/SessionResult;-><init>(I)V

    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0

    .line 1169
    :catch_1
    move-exception v1

    .line 1170
    .local v1, "e":Landroid/os/DeadObjectException;
    invoke-direct {p0, p1}, Landroidx/media3/session/MediaSessionImpl;->onDeadObjectException(Landroidx/media3/session/MediaSession$ControllerInfo;)V

    .line 1171
    new-instance v2, Landroidx/media3/session/SessionResult;

    invoke-direct {v2, v0}, Landroidx/media3/session/SessionResult;-><init>(I)V

    invoke-static {v2}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method private dispatchRemoteControllerTaskToLegacyStub(Landroidx/media3/session/MediaSessionImpl$RemoteControllerTask;)V
    .locals 3
    .param p1, "task"    # Landroidx/media3/session/MediaSessionImpl$RemoteControllerTask;

    .line 1055
    :try_start_0
    iget-object v0, p0, Landroidx/media3/session/MediaSessionImpl;->sessionLegacyStub:Landroidx/media3/session/MediaSessionLegacyStub;

    invoke-virtual {v0}, Landroidx/media3/session/MediaSessionLegacyStub;->getControllerLegacyCbForBroadcast()Landroidx/media3/session/MediaSession$ControllerCb;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroidx/media3/session/MediaSessionImpl$RemoteControllerTask;->run(Landroidx/media3/session/MediaSession$ControllerCb;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1058
    goto :goto_0

    .line 1056
    :catch_0
    move-exception v0

    .line 1057
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaSessionImpl"

    const-string v2, "Exception in using media1 API"

    invoke-static {v1, v2, v0}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1059
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private handleAvailablePlayerCommandsChanged(Landroidx/media3/common/Player$Commands;)V
    .locals 2
    .param p1, "availableCommands"    # Landroidx/media3/common/Player$Commands;

    .line 1229
    iget-object v0, p0, Landroidx/media3/session/MediaSessionImpl;->onPlayerInfoChangedHandler:Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;->sendPlayerInfoChangedMessage(ZZ)V

    .line 1231
    new-instance v0, Landroidx/media3/session/MediaSessionImpl$$ExternalSyntheticLambda9;

    invoke-direct {v0, p1}, Landroidx/media3/session/MediaSessionImpl$$ExternalSyntheticLambda9;-><init>(Landroidx/media3/common/Player$Commands;)V

    invoke-virtual {p0, v0}, Landroidx/media3/session/MediaSessionImpl;->dispatchRemoteControllerTaskWithoutReturn(Landroidx/media3/session/MediaSessionImpl$RemoteControllerTask;)V

    .line 1236
    new-instance v0, Landroidx/media3/session/MediaSessionImpl$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0}, Landroidx/media3/session/MediaSessionImpl$$ExternalSyntheticLambda10;-><init>(Landroidx/media3/session/MediaSessionImpl;)V

    invoke-direct {p0, v0}, Landroidx/media3/session/MediaSessionImpl;->dispatchRemoteControllerTaskToLegacyStub(Landroidx/media3/session/MediaSessionImpl$RemoteControllerTask;)V

    .line 1238
    return-void
.end method

.method static synthetic lambda$broadcastCustomCommand$12(Landroidx/media3/session/SessionCommand;Landroid/os/Bundle;Landroidx/media3/session/MediaSession$ControllerCb;I)V
    .locals 0
    .param p0, "command"    # Landroidx/media3/session/SessionCommand;
    .param p1, "args"    # Landroid/os/Bundle;
    .param p2, "controller"    # Landroidx/media3/session/MediaSession$ControllerCb;
    .param p3, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 624
    invoke-interface {p2, p3, p0, p1}, Landroidx/media3/session/MediaSession$ControllerCb;->sendCustomCommand(ILandroidx/media3/session/SessionCommand;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic lambda$dispatchOnPeriodicSessionPositionInfoChanged$21(Landroidx/media3/session/SessionPositionInfo;ZZLandroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/MediaSession$ControllerCb;I)V
    .locals 6
    .param p0, "sessionPositionInfo"    # Landroidx/media3/session/SessionPositionInfo;
    .param p1, "canAccessCurrentMediaItem"    # Z
    .param p2, "canAccessTimeline"    # Z
    .param p3, "controller"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p4, "controllerCb"    # Landroidx/media3/session/MediaSession$ControllerCb;
    .param p5, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1077
    nop

    .line 1082
    invoke-virtual {p3}, Landroidx/media3/session/MediaSession$ControllerInfo;->getInterfaceVersion()I

    move-result v5

    .line 1077
    move-object v0, p4

    move v1, p5

    move-object v2, p0

    move v3, p1

    move v4, p2

    invoke-interface/range {v0 .. v5}, Landroidx/media3/session/MediaSession$ControllerCb;->onPeriodicSessionPositionInfoChanged(ILandroidx/media3/session/SessionPositionInfo;ZZI)V

    return-void
.end method

.method static synthetic lambda$handleAvailablePlayerCommandsChanged$22(Landroidx/media3/common/Player$Commands;Landroidx/media3/session/MediaSession$ControllerCb;I)V
    .locals 0
    .param p0, "availableCommands"    # Landroidx/media3/common/Player$Commands;
    .param p1, "callback"    # Landroidx/media3/session/MediaSession$ControllerCb;
    .param p2, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1232
    invoke-interface {p1, p2, p0}, Landroidx/media3/session/MediaSession$ControllerCb;->onAvailableCommandsChangedFromPlayer(ILandroidx/media3/common/Player$Commands;)V

    return-void
.end method

.method static synthetic lambda$new$0(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/PlayerWrapper;)V
    .locals 1
    .param p0, "thisRef"    # Landroidx/media3/session/MediaSessionImpl;
    .param p1, "playerWrapper"    # Landroidx/media3/session/PlayerWrapper;

    .line 260
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Landroidx/media3/session/MediaSessionImpl;->setPlayerInternal(Landroidx/media3/session/PlayerWrapper;Landroidx/media3/session/PlayerWrapper;)V

    return-void
.end method

.method static synthetic lambda$sendCustomCommand$13(Landroidx/media3/session/SessionCommand;Landroid/os/Bundle;Landroidx/media3/session/MediaSession$ControllerCb;I)V
    .locals 0
    .param p0, "command"    # Landroidx/media3/session/SessionCommand;
    .param p1, "args"    # Landroid/os/Bundle;
    .param p2, "cb"    # Landroidx/media3/session/MediaSession$ControllerCb;
    .param p3, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 671
    invoke-interface {p2, p3, p0, p1}, Landroidx/media3/session/MediaSession$ControllerCb;->sendCustomCommand(ILandroidx/media3/session/SessionCommand;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic lambda$sendError$14(Landroidx/media3/session/SessionError;Landroidx/media3/session/MediaSession$ControllerCb;I)V
    .locals 0
    .param p0, "sessionError"    # Landroidx/media3/session/SessionError;
    .param p1, "callback"    # Landroidx/media3/session/MediaSession$ControllerCb;
    .param p2, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 684
    invoke-interface {p1, p2, p0}, Landroidx/media3/session/MediaSession$ControllerCb;->onError(ILandroidx/media3/session/SessionError;)V

    return-void
.end method

.method static synthetic lambda$sendError$15(Landroidx/media3/session/SessionError;Landroidx/media3/session/MediaSession$ControllerCb;I)V
    .locals 0
    .param p0, "sessionError"    # Landroidx/media3/session/SessionError;
    .param p1, "callback"    # Landroidx/media3/session/MediaSession$ControllerCb;
    .param p2, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 688
    invoke-interface {p1, p2, p0}, Landroidx/media3/session/MediaSession$ControllerCb;->onError(ILandroidx/media3/session/SessionError;)V

    return-void
.end method

.method static synthetic lambda$sendError$16(Landroidx/media3/session/SessionError;Landroidx/media3/session/MediaSession$ControllerCb;I)V
    .locals 0
    .param p0, "sessionError"    # Landroidx/media3/session/SessionError;
    .param p1, "callback"    # Landroidx/media3/session/MediaSession$ControllerCb;
    .param p2, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 706
    invoke-interface {p1, p2, p0}, Landroidx/media3/session/MediaSession$ControllerCb;->onError(ILandroidx/media3/session/SessionError;)V

    return-void
.end method

.method static synthetic lambda$setAvailableCommands$11(Landroidx/media3/session/SessionCommands;Landroidx/media3/common/Player$Commands;Landroidx/media3/session/MediaSession$ControllerCb;I)V
    .locals 0
    .param p0, "sessionCommands"    # Landroidx/media3/session/SessionCommands;
    .param p1, "playerCommands"    # Landroidx/media3/common/Player$Commands;
    .param p2, "callback"    # Landroidx/media3/session/MediaSession$ControllerCb;
    .param p3, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 612
    invoke-interface {p2, p3, p0, p1}, Landroidx/media3/session/MediaSession$ControllerCb;->onAvailableCommandsChangedFromSession(ILandroidx/media3/session/SessionCommands;Landroidx/media3/common/Player$Commands;)V

    return-void
.end method

.method static synthetic lambda$setCustomLayout$4(Lcom/google/common/collect/ImmutableList;Landroidx/media3/session/MediaSession$ControllerCb;I)V
    .locals 0
    .param p0, "customLayout"    # Lcom/google/common/collect/ImmutableList;
    .param p1, "controller1"    # Landroidx/media3/session/MediaSession$ControllerCb;
    .param p2, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 508
    invoke-interface {p1, p2, p0}, Landroidx/media3/session/MediaSession$ControllerCb;->setCustomLayout(ILjava/util/List;)V

    return-void
.end method

.method static synthetic lambda$setCustomLayout$5(Lcom/google/common/collect/ImmutableList;Landroidx/media3/session/MediaSession$ControllerCb;I)V
    .locals 0
    .param p0, "customLayout"    # Lcom/google/common/collect/ImmutableList;
    .param p1, "controller"    # Landroidx/media3/session/MediaSession$ControllerCb;
    .param p2, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 516
    invoke-interface {p1, p2, p0}, Landroidx/media3/session/MediaSession$ControllerCb;->setCustomLayout(ILjava/util/List;)V

    return-void
.end method

.method static synthetic lambda$setMediaButtonPreferences$6(Lcom/google/common/collect/ImmutableList;Landroidx/media3/session/MediaSession$ControllerCb;I)V
    .locals 0
    .param p0, "mediaButtonPreferences"    # Lcom/google/common/collect/ImmutableList;
    .param p1, "controller1"    # Landroidx/media3/session/MediaSession$ControllerCb;
    .param p2, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 534
    invoke-interface {p1, p2, p0}, Landroidx/media3/session/MediaSession$ControllerCb;->setMediaButtonPreferences(ILjava/util/List;)V

    return-void
.end method

.method static synthetic lambda$setMediaButtonPreferences$7(Lcom/google/common/collect/ImmutableList;Landroidx/media3/session/MediaSession$ControllerCb;I)V
    .locals 0
    .param p0, "mediaButtonPreferences"    # Lcom/google/common/collect/ImmutableList;
    .param p1, "controller"    # Landroidx/media3/session/MediaSession$ControllerCb;
    .param p2, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 545
    invoke-interface {p1, p2, p0}, Landroidx/media3/session/MediaSession$ControllerCb;->setMediaButtonPreferences(ILjava/util/List;)V

    return-void
.end method

.method static synthetic lambda$setPlayerInternal$1(Landroidx/media3/session/PlayerWrapper;Landroidx/media3/session/PlayerWrapper;Landroidx/media3/session/MediaSession$ControllerCb;I)V
    .locals 0
    .param p0, "oldPlayerWrapper"    # Landroidx/media3/session/PlayerWrapper;
    .param p1, "newPlayerWrapper"    # Landroidx/media3/session/PlayerWrapper;
    .param p2, "callback"    # Landroidx/media3/session/MediaSession$ControllerCb;
    .param p3, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 296
    invoke-interface {p2, p3, p0, p1}, Landroidx/media3/session/MediaSession$ControllerCb;->onPlayerChanged(ILandroidx/media3/session/PlayerWrapper;Landroidx/media3/session/PlayerWrapper;)V

    return-void
.end method

.method static synthetic lambda$setSessionActivity$17(Landroid/app/PendingIntent;Landroidx/media3/session/MediaSession$ControllerCb;I)V
    .locals 0
    .param p0, "sessionActivity"    # Landroid/app/PendingIntent;
    .param p1, "callback"    # Landroidx/media3/session/MediaSession$ControllerCb;
    .param p2, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 863
    invoke-interface {p1, p2, p0}, Landroidx/media3/session/MediaSession$ControllerCb;->onSessionActivityChanged(ILandroid/app/PendingIntent;)V

    return-void
.end method

.method static synthetic lambda$setSessionActivity$18(Landroid/app/PendingIntent;Landroidx/media3/session/MediaSession$ControllerCb;I)V
    .locals 0
    .param p0, "sessionActivity"    # Landroid/app/PendingIntent;
    .param p1, "callback"    # Landroidx/media3/session/MediaSession$ControllerCb;
    .param p2, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 866
    invoke-interface {p1, p2, p0}, Landroidx/media3/session/MediaSession$ControllerCb;->onSessionActivityChanged(ILandroid/app/PendingIntent;)V

    return-void
.end method

.method static synthetic lambda$setSessionExtras$10(Landroid/os/Bundle;Landroidx/media3/session/MediaSession$ControllerCb;I)V
    .locals 0
    .param p0, "sessionExtras"    # Landroid/os/Bundle;
    .param p1, "callback"    # Landroidx/media3/session/MediaSession$ControllerCb;
    .param p2, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 575
    invoke-interface {p1, p2, p0}, Landroidx/media3/session/MediaSession$ControllerCb;->onSessionExtrasChanged(ILandroid/os/Bundle;)V

    return-void
.end method

.method static synthetic lambda$setSessionExtras$8(Landroid/os/Bundle;Landroidx/media3/session/MediaSession$ControllerCb;I)V
    .locals 0
    .param p0, "sessionExtras"    # Landroid/os/Bundle;
    .param p1, "controller"    # Landroidx/media3/session/MediaSession$ControllerCb;
    .param p2, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 566
    invoke-interface {p1, p2, p0}, Landroidx/media3/session/MediaSession$ControllerCb;->onSessionExtrasChanged(ILandroid/os/Bundle;)V

    return-void
.end method

.method static synthetic lambda$setSessionExtras$9(Landroid/os/Bundle;Landroidx/media3/session/MediaSession$ControllerCb;I)V
    .locals 0
    .param p0, "sessionExtras"    # Landroid/os/Bundle;
    .param p1, "callback"    # Landroidx/media3/session/MediaSession$ControllerCb;
    .param p2, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 572
    invoke-interface {p1, p2, p0}, Landroidx/media3/session/MediaSession$ControllerCb;->onSessionExtrasChanged(ILandroid/os/Bundle;)V

    return-void
.end method

.method private notifyPeriodicSessionPositionInfoChangesOnHandler()V
    .locals 2

    .line 1197
    iget-object v0, p0, Landroidx/media3/session/MediaSessionImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 1198
    :try_start_0
    iget-boolean v1, p0, Landroidx/media3/session/MediaSessionImpl;->closed:Z

    if-eqz v1, :cond_0

    .line 1199
    monitor-exit v0

    return-void

    .line 1201
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1202
    iget-object v0, p0, Landroidx/media3/session/MediaSessionImpl;->playerWrapper:Landroidx/media3/session/PlayerWrapper;

    invoke-virtual {v0}, Landroidx/media3/session/PlayerWrapper;->createSessionPositionInfoForBundling()Landroidx/media3/session/SessionPositionInfo;

    move-result-object v0

    .line 1203
    .local v0, "sessionPositionInfo":Landroidx/media3/session/SessionPositionInfo;
    iget-object v1, p0, Landroidx/media3/session/MediaSessionImpl;->onPlayerInfoChangedHandler:Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;

    invoke-virtual {v1}, Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;->hasPendingPlayerInfoChangedUpdate()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroidx/media3/session/MediaSessionImpl;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v1, v1, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    .line 1204
    invoke-static {v0, v1}, Landroidx/media3/session/MediaUtils;->areSessionPositionInfosInSamePeriodOrAd(Landroidx/media3/session/SessionPositionInfo;Landroidx/media3/session/SessionPositionInfo;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1211
    invoke-direct {p0, v0}, Landroidx/media3/session/MediaSessionImpl;->dispatchOnPeriodicSessionPositionInfoChanged(Landroidx/media3/session/SessionPositionInfo;)V

    .line 1213
    :cond_1
    invoke-direct {p0}, Landroidx/media3/session/MediaSessionImpl;->schedulePeriodicSessionPositionInfoChanges()V

    .line 1214
    return-void

    .line 1201
    .end local v0    # "sessionPositionInfo":Landroidx/media3/session/SessionPositionInfo;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private onDeadObjectException(Landroidx/media3/session/MediaSession$ControllerInfo;)V
    .locals 1
    .param p1, "controller"    # Landroidx/media3/session/MediaSession$ControllerInfo;

    .line 1187
    iget-object v0, p0, Landroidx/media3/session/MediaSessionImpl;->sessionStub:Landroidx/media3/session/MediaSessionStub;

    invoke-virtual {v0}, Landroidx/media3/session/MediaSessionStub;->getConnectedControllersManager()Landroidx/media3/session/ConnectedControllersManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/media3/session/ConnectedControllersManager;->removeController(Landroidx/media3/session/MediaSession$ControllerInfo;)V

    .line 1188
    return-void
.end method

.method private postOrRunOnApplicationHandler(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 1370
    invoke-virtual {p0}, Landroidx/media3/session/MediaSessionImpl;->getApplicationHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/media3/common/util/Util;->postOrRun(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    .line 1371
    return-void
.end method

.method private schedulePeriodicSessionPositionInfoChanges()V
    .locals 4

    .line 1217
    iget-object v0, p0, Landroidx/media3/session/MediaSessionImpl;->applicationHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/media3/session/MediaSessionImpl;->periodicSessionPositionInfoUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1218
    iget-boolean v0, p0, Landroidx/media3/session/MediaSessionImpl;->isPeriodicPositionUpdateEnabled:Z

    if-eqz v0, :cond_1

    iget-wide v0, p0, Landroidx/media3/session/MediaSessionImpl;->sessionPositionUpdateDelayMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget-object v0, p0, Landroidx/media3/session/MediaSessionImpl;->playerWrapper:Landroidx/media3/session/PlayerWrapper;

    .line 1220
    invoke-virtual {v0}, Landroidx/media3/session/PlayerWrapper;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media3/session/MediaSessionImpl;->playerWrapper:Landroidx/media3/session/PlayerWrapper;

    invoke-virtual {v0}, Landroidx/media3/session/PlayerWrapper;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1221
    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaSessionImpl;->applicationHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/media3/session/MediaSessionImpl;->periodicSessionPositionInfoUpdateRunnable:Ljava/lang/Runnable;

    iget-wide v2, p0, Landroidx/media3/session/MediaSessionImpl;->sessionPositionUpdateDelayMs:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1224
    :cond_1
    return-void
.end method

.method private setAvailableFrameworkControllerCommands(Landroidx/media3/session/SessionCommands;Landroidx/media3/common/Player$Commands;)V
    .locals 3
    .param p1, "sessionCommands"    # Landroidx/media3/session/SessionCommands;
    .param p2, "playerCommands"    # Landroidx/media3/common/Player$Commands;

    .line 1042
    iget-object v0, p0, Landroidx/media3/session/MediaSessionImpl;->playerWrapper:Landroidx/media3/session/PlayerWrapper;

    .line 1043
    invoke-virtual {v0}, Landroidx/media3/session/PlayerWrapper;->getAvailablePlayerCommands()Landroidx/media3/common/Player$Commands;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroidx/media3/common/Player$Commands;->contains(I)Z

    move-result v0

    .line 1044
    invoke-virtual {p2, v1}, Landroidx/media3/common/Player$Commands;->contains(I)Z

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1045
    .local v0, "commandGetTimelineChanged":Z
    :goto_0
    iget-object v1, p0, Landroidx/media3/session/MediaSessionImpl;->playerWrapper:Landroidx/media3/session/PlayerWrapper;

    invoke-virtual {v1, p1, p2}, Landroidx/media3/session/PlayerWrapper;->setAvailableCommands(Landroidx/media3/session/SessionCommands;Landroidx/media3/common/Player$Commands;)V

    .line 1046
    if-eqz v0, :cond_1

    .line 1047
    iget-object v1, p0, Landroidx/media3/session/MediaSessionImpl;->sessionLegacyStub:Landroidx/media3/session/MediaSessionLegacyStub;

    iget-object v2, p0, Landroidx/media3/session/MediaSessionImpl;->playerWrapper:Landroidx/media3/session/PlayerWrapper;

    invoke-virtual {v1, v2}, Landroidx/media3/session/MediaSessionLegacyStub;->updateLegacySessionPlaybackStateAndQueue(Landroidx/media3/session/PlayerWrapper;)V

    goto :goto_1

    .line 1049
    :cond_1
    iget-object v1, p0, Landroidx/media3/session/MediaSessionImpl;->sessionLegacyStub:Landroidx/media3/session/MediaSessionLegacyStub;

    iget-object v2, p0, Landroidx/media3/session/MediaSessionImpl;->playerWrapper:Landroidx/media3/session/PlayerWrapper;

    invoke-virtual {v1, v2}, Landroidx/media3/session/MediaSessionLegacyStub;->updateLegacySessionPlaybackState(Landroidx/media3/session/PlayerWrapper;)V

    .line 1051
    :goto_1
    return-void
.end method

.method private setPlayerInternal(Landroidx/media3/session/PlayerWrapper;Landroidx/media3/session/PlayerWrapper;)V
    .locals 2
    .param p1, "oldPlayerWrapper"    # Landroidx/media3/session/PlayerWrapper;
    .param p2, "newPlayerWrapper"    # Landroidx/media3/session/PlayerWrapper;

    .line 287
    iput-object p2, p0, Landroidx/media3/session/MediaSessionImpl;->playerWrapper:Landroidx/media3/session/PlayerWrapper;

    .line 288
    if-eqz p1, :cond_0

    .line 289
    iget-object v0, p0, Landroidx/media3/session/MediaSessionImpl;->playerListener:Landroidx/media3/session/MediaSessionImpl$PlayerListener;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/Player$Listener;

    invoke-virtual {p1, v0}, Landroidx/media3/session/PlayerWrapper;->removeListener(Landroidx/media3/common/Player$Listener;)V

    .line 291
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaSessionImpl$PlayerListener;

    invoke-direct {v0, p0, p2}, Landroidx/media3/session/MediaSessionImpl$PlayerListener;-><init>(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/PlayerWrapper;)V

    .line 292
    .local v0, "playerListener":Landroidx/media3/session/MediaSessionImpl$PlayerListener;
    invoke-virtual {p2, v0}, Landroidx/media3/session/PlayerWrapper;->addListener(Landroidx/media3/common/Player$Listener;)V

    .line 293
    iput-object v0, p0, Landroidx/media3/session/MediaSessionImpl;->playerListener:Landroidx/media3/session/MediaSessionImpl$PlayerListener;

    .line 295
    new-instance v1, Landroidx/media3/session/MediaSessionImpl$$ExternalSyntheticLambda13;

    invoke-direct {v1, p1, p2}, Landroidx/media3/session/MediaSessionImpl$$ExternalSyntheticLambda13;-><init>(Landroidx/media3/session/PlayerWrapper;Landroidx/media3/session/PlayerWrapper;)V

    invoke-direct {p0, v1}, Landroidx/media3/session/MediaSessionImpl;->dispatchRemoteControllerTaskToLegacyStub(Landroidx/media3/session/MediaSessionImpl$RemoteControllerTask;)V

    .line 299
    if-nez p1, :cond_1

    .line 302
    iget-object v1, p0, Landroidx/media3/session/MediaSessionImpl;->sessionLegacyStub:Landroidx/media3/session/MediaSessionLegacyStub;

    invoke-virtual {v1}, Landroidx/media3/session/MediaSessionLegacyStub;->start()V

    .line 305
    :cond_1
    invoke-virtual {p2}, Landroidx/media3/session/PlayerWrapper;->createPlayerInfoForBundling()Landroidx/media3/session/PlayerInfo;

    move-result-object v1

    iput-object v1, p0, Landroidx/media3/session/MediaSessionImpl;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 306
    invoke-virtual {p2}, Landroidx/media3/session/PlayerWrapper;->getAvailableCommands()Landroidx/media3/common/Player$Commands;

    move-result-object v1

    invoke-direct {p0, v1}, Landroidx/media3/session/MediaSessionImpl;->handleAvailablePlayerCommandsChanged(Landroidx/media3/common/Player$Commands;)V

    .line 307
    return-void
.end method

.method private verifyApplicationThread()V
    .locals 2

    .line 1191
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/session/MediaSessionImpl;->applicationHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 1194
    return-void

    .line 1192
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Player callback method is called from a wrong thread. See javadoc of MediaSession for details."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public broadcastCustomCommand(Landroidx/media3/session/SessionCommand;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "command"    # Landroidx/media3/session/SessionCommand;
    .param p2, "args"    # Landroid/os/Bundle;

    .line 623
    new-instance v0, Landroidx/media3/session/MediaSessionImpl$$ExternalSyntheticLambda17;

    invoke-direct {v0, p1, p2}, Landroidx/media3/session/MediaSessionImpl$$ExternalSyntheticLambda17;-><init>(Landroidx/media3/session/SessionCommand;Landroid/os/Bundle;)V

    invoke-virtual {p0, v0}, Landroidx/media3/session/MediaSessionImpl;->dispatchRemoteControllerTaskWithoutReturn(Landroidx/media3/session/MediaSessionImpl$RemoteControllerTask;)V

    .line 625
    return-void
.end method

.method public callWithControllerForCurrentRequestSet(Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 1
    .param p1, "controllerForCurrentRequest"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p2, "runnable"    # Ljava/lang/Runnable;

    .line 354
    new-instance v0, Landroidx/media3/session/MediaSessionImpl$$ExternalSyntheticLambda21;

    invoke-direct {v0, p0, p1, p2}, Landroidx/media3/session/MediaSessionImpl$$ExternalSyntheticLambda21;-><init>(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/lang/Runnable;)V

    return-object v0
.end method

.method canResumePlaybackOnStart()Z
    .locals 1

    .line 916
    iget-object v0, p0, Landroidx/media3/session/MediaSessionImpl;->sessionLegacyStub:Landroidx/media3/session/MediaSessionLegacyStub;

    invoke-virtual {v0}, Landroidx/media3/session/MediaSessionLegacyStub;->canResumePlaybackOnStart()Z

    move-result v0

    return v0
.end method

.method clearMediaSessionListener()V
    .locals 1

    .line 924
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/session/MediaSessionImpl;->mediaSessionListener:Landroidx/media3/session/MediaSession$Listener;

    .line 925
    return-void
.end method

.method public connectFromService(Landroidx/media3/session/IMediaController;Landroidx/media3/session/MediaSession$ControllerInfo;)V
    .locals 1
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "controllerInfo"    # Landroidx/media3/session/MediaSession$ControllerInfo;

    .line 818
    iget-object v0, p0, Landroidx/media3/session/MediaSessionImpl;->sessionStub:Landroidx/media3/session/MediaSessionStub;

    invoke-virtual {v0, p1, p2}, Landroidx/media3/session/MediaSessionStub;->connect(Landroidx/media3/session/IMediaController;Landroidx/media3/session/MediaSession$ControllerInfo;)V

    .line 819
    return-void
.end method

.method protected createLegacyBrowserService(Landroidx/media3/session/legacy/MediaSessionCompat$Token;)Landroidx/media3/session/MediaSessionServiceLegacyStub;
    .locals 1
    .param p1, "compatToken"    # Landroidx/media3/session/legacy/MediaSessionCompat$Token;

    .line 897
    new-instance v0, Landroidx/media3/session/MediaSessionServiceLegacyStub;

    invoke-direct {v0, p0}, Landroidx/media3/session/MediaSessionServiceLegacyStub;-><init>(Landroidx/media3/session/MediaSessionImpl;)V

    .line 898
    .local v0, "stub":Landroidx/media3/session/MediaSessionServiceLegacyStub;
    invoke-virtual {v0, p1}, Landroidx/media3/session/MediaSessionServiceLegacyStub;->initialize(Landroidx/media3/session/legacy/MediaSessionCompat$Token;)V

    .line 899
    return-object v0
.end method

.method protected dispatchRemoteControllerTaskWithoutReturn(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/MediaSessionImpl$RemoteControllerTask;)V
    .locals 3
    .param p1, "controller"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p2, "task"    # Landroidx/media3/session/MediaSessionImpl$RemoteControllerTask;

    .line 1117
    :try_start_0
    iget-object v0, p0, Landroidx/media3/session/MediaSessionImpl;->sessionStub:Landroidx/media3/session/MediaSessionStub;

    .line 1118
    invoke-virtual {v0}, Landroidx/media3/session/MediaSessionStub;->getConnectedControllersManager()Landroidx/media3/session/ConnectedControllersManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/media3/session/ConnectedControllersManager;->getSequencedFutureManager(Landroidx/media3/session/MediaSession$ControllerInfo;)Landroidx/media3/session/SequencedFutureManager;

    move-result-object v0

    .line 1119
    .local v0, "manager":Landroidx/media3/session/SequencedFutureManager;
    if-eqz v0, :cond_0

    .line 1120
    invoke-virtual {v0}, Landroidx/media3/session/SequencedFutureManager;->obtainNextSequenceNumber()I

    move-result v1

    .local v1, "seq":I
    goto :goto_0

    .line 1122
    .end local v1    # "seq":I
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/media3/session/MediaSessionImpl;->isConnected(Landroidx/media3/session/MediaSession$ControllerInfo;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1123
    return-void

    .line 1126
    :cond_1
    const/4 v1, 0x0

    .line 1128
    .restart local v1    # "seq":I
    :goto_0
    invoke-virtual {p1}, Landroidx/media3/session/MediaSession$ControllerInfo;->getControllerCb()Landroidx/media3/session/MediaSession$ControllerCb;

    move-result-object v2

    .line 1129
    .local v2, "cb":Landroidx/media3/session/MediaSession$ControllerCb;
    if-eqz v2, :cond_2

    .line 1130
    invoke-interface {p2, v2, v1}, Landroidx/media3/session/MediaSessionImpl$RemoteControllerTask;->run(Landroidx/media3/session/MediaSession$ControllerCb;I)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1134
    .end local v0    # "manager":Landroidx/media3/session/SequencedFutureManager;
    .end local v1    # "seq":I
    .end local v2    # "cb":Landroidx/media3/session/MediaSession$ControllerCb;
    :catch_0
    move-exception v0

    .line 1140
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroidx/media3/session/MediaSession$ControllerInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MediaSessionImpl"

    invoke-static {v2, v1, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 1132
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1133
    .local v0, "e":Landroid/os/DeadObjectException;
    invoke-direct {p0, p1}, Landroidx/media3/session/MediaSessionImpl;->onDeadObjectException(Landroidx/media3/session/MediaSession$ControllerInfo;)V

    .line 1141
    .end local v0    # "e":Landroid/os/DeadObjectException;
    :cond_2
    :goto_1
    nop

    .line 1142
    :goto_2
    return-void
.end method

.method protected dispatchRemoteControllerTaskWithoutReturn(Landroidx/media3/session/MediaSessionImpl$RemoteControllerTask;)V
    .locals 4
    .param p1, "task"    # Landroidx/media3/session/MediaSessionImpl$RemoteControllerTask;

    .line 1099
    iget-object v0, p0, Landroidx/media3/session/MediaSessionImpl;->sessionStub:Landroidx/media3/session/MediaSessionStub;

    .line 1100
    invoke-virtual {v0}, Landroidx/media3/session/MediaSessionStub;->getConnectedControllersManager()Landroidx/media3/session/ConnectedControllersManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/session/ConnectedControllersManager;->getConnectedControllers()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 1101
    .local v0, "controllers":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/session/MediaSession$ControllerInfo;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1102
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/session/MediaSession$ControllerInfo;

    .line 1103
    .local v2, "controller":Landroidx/media3/session/MediaSession$ControllerInfo;
    invoke-virtual {p0, v2, p1}, Landroidx/media3/session/MediaSessionImpl;->dispatchRemoteControllerTaskWithoutReturn(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/MediaSessionImpl$RemoteControllerTask;)V

    .line 1101
    .end local v2    # "controller":Landroidx/media3/session/MediaSession$ControllerInfo;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1106
    .end local v1    # "i":I
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroidx/media3/session/MediaSessionImpl;->sessionLegacyStub:Landroidx/media3/session/MediaSessionLegacyStub;

    invoke-virtual {v1}, Landroidx/media3/session/MediaSessionLegacyStub;->getControllerLegacyCbForBroadcast()Landroidx/media3/session/MediaSession$ControllerCb;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Landroidx/media3/session/MediaSessionImpl$RemoteControllerTask;->run(Landroidx/media3/session/MediaSession$ControllerCb;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1109
    goto :goto_1

    .line 1107
    :catch_0
    move-exception v1

    .line 1108
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "MediaSessionImpl"

    const-string v3, "Exception in using media1 API"

    invoke-static {v2, v3, v1}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1110
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method

.method protected getApplicationHandler()Landroid/os/Handler;
    .locals 1

    .line 834
    iget-object v0, p0, Landroidx/media3/session/MediaSessionImpl;->applicationHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getBitmapLoader()Landroidx/media3/common/util/BitmapLoader;
    .locals 1

    .line 585
    iget-object v0, p0, Landroidx/media3/session/MediaSessionImpl;->bitmapLoader:Landroidx/media3/common/util/BitmapLoader;

    return-object v0
.end method

.method public getCommandButtonsForMediaItems()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/session/CommandButton;",
            ">;"
        }
    .end annotation

    .line 560
    iget-object v0, p0, Landroidx/media3/session/MediaSessionImpl;->commandButtonsForMediaItems:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public getConnectedControllers()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/media3/session/MediaSession$ControllerInfo;",
            ">;"
        }
    .end annotation

    .line 374
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 375
    .local v0, "controllers":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/session/MediaSession$ControllerInfo;>;"
    iget-object v1, p0, Landroidx/media3/session/MediaSessionImpl;->sessionStub:Landroidx/media3/session/MediaSessionStub;

    invoke-virtual {v1}, Landroidx/media3/session/MediaSessionStub;->getConnectedControllersManager()Landroidx/media3/session/ConnectedControllersManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media3/session/ConnectedControllersManager;->getConnectedControllers()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 376
    iget-boolean v1, p0, Landroidx/media3/session/MediaSessionImpl;->isMediaNotificationControllerConnected:Z

    if-eqz v1, :cond_2

    .line 377
    iget-object v1, p0, Landroidx/media3/session/MediaSessionImpl;->sessionLegacyStub:Landroidx/media3/session/MediaSessionLegacyStub;

    .line 378
    invoke-virtual {v1}, Landroidx/media3/session/MediaSessionLegacyStub;->getConnectedControllersManager()Landroidx/media3/session/ConnectedControllersManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media3/session/ConnectedControllersManager;->getConnectedControllers()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    .line 379
    .local v1, "legacyControllers":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Landroidx/media3/session/MediaSession$ControllerInfo;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 380
    invoke-virtual {v1, v2}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/session/MediaSession$ControllerInfo;

    .line 381
    .local v3, "legacyController":Landroidx/media3/session/MediaSession$ControllerInfo;
    invoke-virtual {p0, v3}, Landroidx/media3/session/MediaSessionImpl;->isSystemUiController(Landroidx/media3/session/MediaSession$ControllerInfo;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 382
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 379
    .end local v3    # "legacyController":Landroidx/media3/session/MediaSession$ControllerInfo;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 385
    .end local v1    # "legacyControllers":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Landroidx/media3/session/MediaSession$ControllerInfo;>;"
    .end local v2    # "i":I
    :cond_1
    goto :goto_1

    .line 386
    :cond_2
    iget-object v1, p0, Landroidx/media3/session/MediaSessionImpl;->sessionLegacyStub:Landroidx/media3/session/MediaSessionLegacyStub;

    .line 387
    invoke-virtual {v1}, Landroidx/media3/session/MediaSessionLegacyStub;->getConnectedControllersManager()Landroidx/media3/session/ConnectedControllersManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media3/session/ConnectedControllersManager;->getConnectedControllers()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    .line 386
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 389
    :goto_1
    return-object v0
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1

    .line 830
    iget-object v0, p0, Landroidx/media3/session/MediaSessionImpl;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getControllerForCurrentRequest()Landroidx/media3/session/MediaSession$ControllerInfo;
    .locals 1

    .line 394
    iget-object v0, p0, Landroidx/media3/session/MediaSessionImpl;->controllerForCurrentRequest:Landroidx/media3/session/MediaSession$ControllerInfo;

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Landroidx/media3/session/MediaSessionImpl;->controllerForCurrentRequest:Landroidx/media3/session/MediaSession$ControllerInfo;

    invoke-virtual {p0, v0}, Landroidx/media3/session/MediaSessionImpl;->resolveControllerInfoForCallback(Landroidx/media3/session/MediaSession$ControllerInfo;)Landroidx/media3/session/MediaSession$ControllerInfo;

    move-result-object v0

    goto :goto_0

    .line 396
    :cond_0
    const/4 v0, 0x0

    .line 394
    :goto_0
    return-object v0
.end method

.method public getCustomLayout()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/session/CommandButton;",
            ">;"
        }
    .end annotation

    .line 550
    iget-object v0, p0, Landroidx/media3/session/MediaSessionImpl;->customLayout:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 362
    iget-object v0, p0, Landroidx/media3/session/MediaSessionImpl;->sessionId:Ljava/lang/String;

    return-object v0
.end method

.method protected getLegacyBrowserService()Landroidx/media3/session/MediaSessionServiceLegacyStub;
    .locals 2

    .line 910
    iget-object v0, p0, Landroidx/media3/session/MediaSessionImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 911
    :try_start_0
    iget-object v1, p0, Landroidx/media3/session/MediaSessionImpl;->browserServiceLegacyStub:Landroidx/media3/session/MediaSessionServiceLegacyStub;

    monitor-exit v0

    return-object v1

    .line 912
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected getLegacyBrowserServiceBinder()Landroid/os/IBinder;
    .locals 3

    .line 884
    iget-object v0, p0, Landroidx/media3/session/MediaSessionImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 885
    :try_start_0
    iget-object v1, p0, Landroidx/media3/session/MediaSessionImpl;->browserServiceLegacyStub:Landroidx/media3/session/MediaSessionServiceLegacyStub;

    if-nez v1, :cond_0

    .line 886
    iget-object v1, p0, Landroidx/media3/session/MediaSessionImpl;->instance:Landroidx/media3/session/MediaSession;

    .line 887
    invoke-virtual {v1}, Landroidx/media3/session/MediaSession;->getSessionCompat()Landroidx/media3/session/legacy/MediaSessionCompat;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media3/session/legacy/MediaSessionCompat;->getSessionToken()Landroidx/media3/session/legacy/MediaSessionCompat$Token;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/media3/session/MediaSessionImpl;->createLegacyBrowserService(Landroidx/media3/session/legacy/MediaSessionCompat$Token;)Landroidx/media3/session/MediaSessionServiceLegacyStub;

    move-result-object v1

    iput-object v1, p0, Landroidx/media3/session/MediaSessionImpl;->browserServiceLegacyStub:Landroidx/media3/session/MediaSessionServiceLegacyStub;

    .line 889
    :cond_0
    iget-object v1, p0, Landroidx/media3/session/MediaSessionImpl;->browserServiceLegacyStub:Landroidx/media3/session/MediaSessionServiceLegacyStub;

    .line 890
    .local v1, "legacyStub":Landroidx/media3/session/MediaSessionServiceLegacyStub;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 891
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.media.browse.MediaBrowserService"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 892
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroidx/media3/session/MediaSessionServiceLegacyStub;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object v2

    return-object v2

    .line 890
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "legacyStub":Landroidx/media3/session/MediaSessionServiceLegacyStub;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getMediaButtonPreferences()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/session/CommandButton;",
            ">;"
        }
    .end annotation

    .line 555
    iget-object v0, p0, Landroidx/media3/session/MediaSessionImpl;->mediaButtonPreferences:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public getMediaNotificationControllerInfo()Landroidx/media3/session/MediaSession$ControllerInfo;
    .locals 4

    .line 478
    iget-object v0, p0, Landroidx/media3/session/MediaSessionImpl;->sessionStub:Landroidx/media3/session/MediaSessionStub;

    .line 479
    invoke-virtual {v0}, Landroidx/media3/session/MediaSessionStub;->getConnectedControllersManager()Landroidx/media3/session/ConnectedControllersManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/session/ConnectedControllersManager;->getConnectedControllers()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 480
    .local v0, "connectedControllers":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Landroidx/media3/session/MediaSession$ControllerInfo;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 481
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/session/MediaSession$ControllerInfo;

    .line 482
    .local v2, "controllerInfo":Landroidx/media3/session/MediaSession$ControllerInfo;
    invoke-virtual {p0, v2}, Landroidx/media3/session/MediaSessionImpl;->isMediaNotificationController(Landroidx/media3/session/MediaSession$ControllerInfo;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 483
    return-object v2

    .line 480
    .end local v2    # "controllerInfo":Landroidx/media3/session/MediaSession$ControllerInfo;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 486
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public getPlayerWrapper()Landroidx/media3/session/PlayerWrapper;
    .locals 1

    .line 348
    iget-object v0, p0, Landroidx/media3/session/MediaSessionImpl;->playerWrapper:Landroidx/media3/session/PlayerWrapper;

    return-object v0
.end method

.method protected getSessionActivity()Landroid/app/PendingIntent;
    .locals 1

    .line 845
    iget-object v0, p0, Landroidx/media3/session/MediaSessionImpl;->sessionActivity:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public getSessionCompat()Landroidx/media3/session/legacy/MediaSessionCompat;
    .locals 1

    .line 822
    iget-object v0, p0, Landroidx/media3/session/MediaSessionImpl;->sessionLegacyStub:Landroidx/media3/session/MediaSessionLegacyStub;

    invoke-virtual {v0}, Landroidx/media3/session/MediaSessionLegacyStub;->getSessionCompat()Landroidx/media3/session/legacy/MediaSessionCompat;

    move-result-object v0

    return-object v0
.end method

.method public getSessionExtras()Landroid/os/Bundle;
    .locals 1

    .line 581
    iget-object v0, p0, Landroidx/media3/session/MediaSessionImpl;->sessionExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method protected getSystemUiControllerInfo()Landroidx/media3/session/MediaSession$ControllerInfo;
    .locals 4

    .line 461
    iget-object v0, p0, Landroidx/media3/session/MediaSessionImpl;->sessionLegacyStub:Landroidx/media3/session/MediaSessionLegacyStub;

    .line 462
    invoke-virtual {v0}, Landroidx/media3/session/MediaSessionLegacyStub;->getConnectedControllersManager()Landroidx/media3/session/ConnectedControllersManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/session/ConnectedControllersManager;->getConnectedControllers()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 463
    .local v0, "connectedControllers":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Landroidx/media3/session/MediaSession$ControllerInfo;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 464
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/session/MediaSession$ControllerInfo;

    .line 465
    .local v2, "controllerInfo":Landroidx/media3/session/MediaSession$ControllerInfo;
    invoke-virtual {p0, v2}, Landroidx/media3/session/MediaSessionImpl;->isSystemUiController(Landroidx/media3/session/MediaSession$ControllerInfo;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 466
    return-object v2

    .line 463
    .end local v2    # "controllerInfo":Landroidx/media3/session/MediaSession$ControllerInfo;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 469
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public getToken()Landroidx/media3/session/SessionToken;
    .locals 1

    .line 370
    iget-object v0, p0, Landroidx/media3/session/MediaSessionImpl;->sessionToken:Landroidx/media3/session/SessionToken;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .line 366
    iget-object v0, p0, Landroidx/media3/session/MediaSessionImpl;->sessionUri:Landroid/net/Uri;

    return-object v0
.end method

.method handleMediaControllerPlayRequest(Landroidx/media3/session/MediaSession$ControllerInfo;Z)V
    .locals 7
    .param p1, "controller"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p2, "callOnPlayerInteractionFinished"    # Z

    .line 963
    invoke-virtual {p0}, Landroidx/media3/session/MediaSessionImpl;->onPlayRequested()Z

    move-result v0

    if-nez v0, :cond_0

    .line 965
    return-void

    .line 967
    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaSessionImpl;->playerWrapper:Landroidx/media3/session/PlayerWrapper;

    .line 968
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroidx/media3/session/PlayerWrapper;->isCommandAvailable(I)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/media3/session/MediaSessionImpl;->playerWrapper:Landroidx/media3/session/PlayerWrapper;

    .line 969
    invoke-virtual {v0}, Landroidx/media3/session/PlayerWrapper;->getCurrentMediaItem()Landroidx/media3/common/MediaItem;

    move-result-object v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    .line 970
    .local v0, "hasCurrentMediaItem":Z
    :goto_0
    iget-object v3, p0, Landroidx/media3/session/MediaSessionImpl;->playerWrapper:Landroidx/media3/session/PlayerWrapper;

    .line 971
    const/16 v4, 0x1f

    invoke-virtual {v3, v4}, Landroidx/media3/session/PlayerWrapper;->isCommandAvailable(I)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Landroidx/media3/session/MediaSessionImpl;->playerWrapper:Landroidx/media3/session/PlayerWrapper;

    .line 972
    const/16 v4, 0x14

    invoke-virtual {v3, v4}, Landroidx/media3/session/PlayerWrapper;->isCommandAvailable(I)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    move v1, v2

    .line 973
    .local v1, "canAddMediaItems":Z
    :cond_3
    invoke-virtual {p0, p1}, Landroidx/media3/session/MediaSessionImpl;->resolveControllerInfoForCallback(Landroidx/media3/session/MediaSession$ControllerInfo;)Landroidx/media3/session/MediaSession$ControllerInfo;

    move-result-object v3

    .line 974
    .local v3, "controllerForRequest":Landroidx/media3/session/MediaSession$ControllerInfo;
    new-instance v4, Landroidx/media3/common/Player$Commands$Builder;

    invoke-direct {v4}, Landroidx/media3/common/Player$Commands$Builder;-><init>()V

    .line 975
    invoke-virtual {v4, v2}, Landroidx/media3/common/Player$Commands$Builder;->add(I)Landroidx/media3/common/Player$Commands$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/media3/common/Player$Commands$Builder;->build()Landroidx/media3/common/Player$Commands;

    move-result-object v2

    .line 976
    .local v2, "playCommand":Landroidx/media3/common/Player$Commands;
    if-nez v0, :cond_5

    if-nez v1, :cond_4

    goto :goto_1

    .line 990
    :cond_4
    iget-object v4, p0, Landroidx/media3/session/MediaSessionImpl;->callback:Landroidx/media3/session/MediaSession$Callback;

    iget-object v5, p0, Landroidx/media3/session/MediaSessionImpl;->instance:Landroidx/media3/session/MediaSession;

    .line 992
    invoke-interface {v4, v5, v3}, Landroidx/media3/session/MediaSession$Callback;->onPlaybackResumption(Landroidx/media3/session/MediaSession;Landroidx/media3/session/MediaSession$ControllerInfo;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v4

    .line 991
    const-string v5, "Callback.onPlaybackResumption must return a non-null future"

    invoke-static {v4, v5}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/common/util/concurrent/ListenableFuture;

    .line 994
    .local v4, "future":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Landroidx/media3/session/MediaSession$MediaItemsWithStartPosition;>;"
    new-instance v5, Landroidx/media3/session/MediaSessionImpl$1;

    invoke-direct {v5, p0, v3, p2, v2}, Landroidx/media3/session/MediaSessionImpl$1;-><init>(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;ZLandroidx/media3/common/Player$Commands;)V

    new-instance v6, Landroidx/media3/session/MediaSessionImpl$$ExternalSyntheticLambda27;

    invoke-direct {v6, p0}, Landroidx/media3/session/MediaSessionImpl$$ExternalSyntheticLambda27;-><init>(Landroidx/media3/session/MediaSessionImpl;)V

    invoke-static {v4, v5, v6}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;Ljava/util/concurrent/Executor;)V

    goto :goto_2

    .line 978
    .end local v4    # "future":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Landroidx/media3/session/MediaSession$MediaItemsWithStartPosition;>;"
    :cond_5
    :goto_1
    if-nez v0, :cond_6

    .line 979
    const-string v4, "MediaSessionImpl"

    const-string v5, "Play requested without current MediaItem, but playback resumption prevented by missing available commands"

    invoke-static {v4, v5}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 984
    :cond_6
    iget-object v4, p0, Landroidx/media3/session/MediaSessionImpl;->playerWrapper:Landroidx/media3/session/PlayerWrapper;

    invoke-static {v4}, Landroidx/media3/common/util/Util;->handlePlayButtonAction(Landroidx/media3/common/Player;)Z

    .line 985
    if-eqz p2, :cond_7

    .line 986
    invoke-virtual {p0, v3, v2}, Landroidx/media3/session/MediaSessionImpl;->onPlayerInteractionFinishedOnHandler(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/common/Player$Commands;)V

    .line 1038
    :cond_7
    :goto_2
    return-void
.end method

.method public isAutoCompanionController(Landroidx/media3/session/MediaSession$ControllerInfo;)Z
    .locals 2
    .param p1, "controllerInfo"    # Landroidx/media3/session/MediaSession$ControllerInfo;

    .line 451
    invoke-virtual {p1}, Landroidx/media3/session/MediaSession$ControllerInfo;->getControllerVersion()I

    move-result v0

    if-nez v0, :cond_0

    .line 452
    invoke-virtual {p1}, Landroidx/media3/session/MediaSession$ControllerInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.android.projection.gearhead"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 451
    :goto_0
    return v0
.end method

.method public isAutomotiveController(Landroidx/media3/session/MediaSession$ControllerInfo;)Z
    .locals 2
    .param p1, "controllerInfo"    # Landroidx/media3/session/MediaSession$ControllerInfo;

    .line 438
    invoke-virtual {p1}, Landroidx/media3/session/MediaSession$ControllerInfo;->getControllerVersion()I

    move-result v0

    if-nez v0, :cond_1

    .line 439
    invoke-virtual {p1}, Landroidx/media3/session/MediaSession$ControllerInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.car.media"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 440
    invoke-virtual {p1}, Landroidx/media3/session/MediaSession$ControllerInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.car.carlauncher"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 438
    :goto_0
    return v0
.end method

.method public isConnected(Landroidx/media3/session/MediaSession$ControllerInfo;)Z
    .locals 1
    .param p1, "controller"    # Landroidx/media3/session/MediaSession$ControllerInfo;

    .line 400
    iget-object v0, p0, Landroidx/media3/session/MediaSessionImpl;->sessionStub:Landroidx/media3/session/MediaSessionStub;

    invoke-virtual {v0}, Landroidx/media3/session/MediaSessionStub;->getConnectedControllersManager()Landroidx/media3/session/ConnectedControllersManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/media3/session/ConnectedControllersManager;->isConnected(Landroidx/media3/session/MediaSession$ControllerInfo;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/media3/session/MediaSessionImpl;->sessionLegacyStub:Landroidx/media3/session/MediaSessionLegacyStub;

    .line 401
    invoke-virtual {v0}, Landroidx/media3/session/MediaSessionLegacyStub;->getConnectedControllersManager()Landroidx/media3/session/ConnectedControllersManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/media3/session/ConnectedControllersManager;->isConnected(Landroidx/media3/session/MediaSession$ControllerInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 400
    :goto_1
    return v0
.end method

.method public isMediaNotificationController(Landroidx/media3/session/MediaSession$ControllerInfo;)Z
    .locals 3
    .param p1, "controllerInfo"    # Landroidx/media3/session/MediaSession$ControllerInfo;

    .line 423
    invoke-virtual {p1}, Landroidx/media3/session/MediaSession$ControllerInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/session/MediaSessionImpl;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 424
    invoke-virtual {p1}, Landroidx/media3/session/MediaSession$ControllerInfo;->getControllerVersion()I

    move-result v0

    if-eqz v0, :cond_0

    .line 426
    invoke-virtual {p1}, Landroidx/media3/session/MediaSession$ControllerInfo;->getConnectionHints()Landroid/os/Bundle;

    move-result-object v0

    .line 427
    const-string v2, "androidx.media3.session.MediaNotificationManager"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 423
    :goto_0
    return v1
.end method

.method protected isMediaNotificationControllerConnected()Z
    .locals 1

    .line 491
    iget-boolean v0, p0, Landroidx/media3/session/MediaSessionImpl;->isMediaNotificationControllerConnected:Z

    return v0
.end method

.method protected isReleased()Z
    .locals 2

    .line 838
    iget-object v0, p0, Landroidx/media3/session/MediaSessionImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 839
    :try_start_0
    iget-boolean v1, p0, Landroidx/media3/session/MediaSessionImpl;->closed:Z

    monitor-exit v0

    return v1

    .line 840
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected isSystemUiController(Landroidx/media3/session/MediaSession$ControllerInfo;)Z
    .locals 2
    .param p1, "controllerInfo"    # Landroidx/media3/session/MediaSession$ControllerInfo;

    .line 411
    if-eqz p1, :cond_0

    .line 412
    invoke-virtual {p1}, Landroidx/media3/session/MediaSession$ControllerInfo;->getControllerVersion()I

    move-result v0

    if-nez v0, :cond_0

    .line 413
    invoke-virtual {p1}, Landroidx/media3/session/MediaSession$ControllerInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.systemui"

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 411
    :goto_0
    return v0
.end method

.method synthetic lambda$applyMediaButtonKeyEvent$24$androidx-media3-session-MediaSessionImpl(Landroidx/media3/session/MediaSession$ControllerInfo;)V
    .locals 2
    .param p1, "controllerInfo"    # Landroidx/media3/session/MediaSession$ControllerInfo;

    .line 1325
    iget-object v0, p0, Landroidx/media3/session/MediaSessionImpl;->sessionStub:Landroidx/media3/session/MediaSessionStub;

    const/high16 v1, -0x80000000

    invoke-virtual {v0, p1, v1}, Landroidx/media3/session/MediaSessionStub;->pauseForControllerInfo(Landroidx/media3/session/MediaSession$ControllerInfo;I)V

    return-void
.end method

.method synthetic lambda$applyMediaButtonKeyEvent$25$androidx-media3-session-MediaSessionImpl(Landroidx/media3/session/MediaSession$ControllerInfo;)V
    .locals 2
    .param p1, "controllerInfo"    # Landroidx/media3/session/MediaSession$ControllerInfo;

    .line 1326
    iget-object v0, p0, Landroidx/media3/session/MediaSessionImpl;->sessionStub:Landroidx/media3/session/MediaSessionStub;

    const/high16 v1, -0x80000000

    invoke-virtual {v0, p1, v1}, Landroidx/media3/session/MediaSessionStub;->playForControllerInfo(Landroidx/media3/session/MediaSession$ControllerInfo;I)V

    return-void
.end method

.method synthetic lambda$applyMediaButtonKeyEvent$26$androidx-media3-session-MediaSessionImpl(Landroidx/media3/session/MediaSession$ControllerInfo;)V
    .locals 2
    .param p1, "controllerInfo"    # Landroidx/media3/session/MediaSession$ControllerInfo;

    .line 1329
    iget-object v0, p0, Landroidx/media3/session/MediaSessionImpl;->sessionStub:Landroidx/media3/session/MediaSessionStub;

    const/high16 v1, -0x80000000

    invoke-virtual {v0, p1, v1}, Landroidx/media3/session/MediaSessionStub;->playForControllerInfo(Landroidx/media3/session/MediaSession$ControllerInfo;I)V

    return-void
.end method

.method synthetic lambda$applyMediaButtonKeyEvent$27$androidx-media3-session-MediaSessionImpl(Landroidx/media3/session/MediaSession$ControllerInfo;)V
    .locals 2
    .param p1, "controllerInfo"    # Landroidx/media3/session/MediaSession$ControllerInfo;

    .line 1332
    iget-object v0, p0, Landroidx/media3/session/MediaSessionImpl;->sessionStub:Landroidx/media3/session/MediaSessionStub;

    const/high16 v1, -0x80000000

    invoke-virtual {v0, p1, v1}, Landroidx/media3/session/MediaSessionStub;->pauseForControllerInfo(Landroidx/media3/session/MediaSession$ControllerInfo;I)V

    return-void
.end method

.method synthetic lambda$applyMediaButtonKeyEvent$28$androidx-media3-session-MediaSessionImpl(Landroidx/media3/session/MediaSession$ControllerInfo;)V
    .locals 2
    .param p1, "controllerInfo"    # Landroidx/media3/session/MediaSession$ControllerInfo;

    .line 1337
    iget-object v0, p0, Landroidx/media3/session/MediaSessionImpl;->sessionStub:Landroidx/media3/session/MediaSessionStub;

    const/high16 v1, -0x80000000

    invoke-virtual {v0, p1, v1}, Landroidx/media3/session/MediaSessionStub;->seekToNextForControllerInfo(Landroidx/media3/session/MediaSession$ControllerInfo;I)V

    return-void
.end method

.method synthetic lambda$applyMediaButtonKeyEvent$29$androidx-media3-session-MediaSessionImpl(Landroidx/media3/session/MediaSession$ControllerInfo;)V
    .locals 2
    .param p1, "controllerInfo"    # Landroidx/media3/session/MediaSession$ControllerInfo;

    .line 1343
    iget-object v0, p0, Landroidx/media3/session/MediaSessionImpl;->sessionStub:Landroidx/media3/session/MediaSessionStub;

    const/high16 v1, -0x80000000

    invoke-virtual {v0, p1, v1}, Landroidx/media3/session/MediaSessionStub;->seekToPreviousForControllerInfo(Landroidx/media3/session/MediaSession$ControllerInfo;I)V

    return-void
.end method

.method synthetic lambda$applyMediaButtonKeyEvent$30$androidx-media3-session-MediaSessionImpl(Landroidx/media3/session/MediaSession$ControllerInfo;)V
    .locals 2
    .param p1, "controllerInfo"    # Landroidx/media3/session/MediaSession$ControllerInfo;

    .line 1348
    iget-object v0, p0, Landroidx/media3/session/MediaSessionImpl;->sessionStub:Landroidx/media3/session/MediaSessionStub;

    const/high16 v1, -0x80000000

    invoke-virtual {v0, p1, v1}, Landroidx/media3/session/MediaSessionStub;->seekForwardForControllerInfo(Landroidx/media3/session/MediaSession$ControllerInfo;I)V

    return-void
.end method

.method synthetic lambda$applyMediaButtonKeyEvent$31$androidx-media3-session-MediaSessionImpl(Landroidx/media3/session/MediaSession$ControllerInfo;)V
    .locals 2
    .param p1, "controllerInfo"    # Landroidx/media3/session/MediaSession$ControllerInfo;

    .line 1352
    iget-object v0, p0, Landroidx/media3/session/MediaSessionImpl;->sessionStub:Landroidx/media3/session/MediaSessionStub;

    const/high16 v1, -0x80000000

    invoke-virtual {v0, p1, v1}, Landroidx/media3/session/MediaSessionStub;->seekBackForControllerInfo(Landroidx/media3/session/MediaSession$ControllerInfo;I)V

    return-void
.end method

.method synthetic lambda$applyMediaButtonKeyEvent$32$androidx-media3-session-MediaSessionImpl(Landroidx/media3/session/MediaSession$ControllerInfo;)V
    .locals 2
    .param p1, "controllerInfo"    # Landroidx/media3/session/MediaSession$ControllerInfo;

    .line 1355
    iget-object v0, p0, Landroidx/media3/session/MediaSessionImpl;->sessionStub:Landroidx/media3/session/MediaSessionStub;

    const/high16 v1, -0x80000000

    invoke-virtual {v0, p1, v1}, Landroidx/media3/session/MediaSessionStub;->stopForControllerInfo(Landroidx/media3/session/MediaSession$ControllerInfo;I)V

    return-void
.end method

.method synthetic lambda$applyMediaButtonKeyEvent$33$androidx-media3-session-MediaSessionImpl(Ljava/lang/Runnable;Landroidx/media3/session/MediaSession$ControllerInfo;)V
    .locals 1
    .param p1, "command"    # Ljava/lang/Runnable;
    .param p2, "controllerInfo"    # Landroidx/media3/session/MediaSession$ControllerInfo;

    .line 1363
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 1364
    iget-object v0, p0, Landroidx/media3/session/MediaSessionImpl;->sessionStub:Landroidx/media3/session/MediaSessionStub;

    invoke-virtual {v0}, Landroidx/media3/session/MediaSessionStub;->getConnectedControllersManager()Landroidx/media3/session/ConnectedControllersManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroidx/media3/session/ConnectedControllersManager;->flushCommandQueue(Landroidx/media3/session/MediaSession$ControllerInfo;)V

    .line 1365
    return-void
.end method

.method synthetic lambda$callWithControllerForCurrentRequestSet$3$androidx-media3-session-MediaSessionImpl(Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "controllerForCurrentRequest"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p2, "runnable"    # Ljava/lang/Runnable;

    .line 355
    iput-object p1, p0, Landroidx/media3/session/MediaSessionImpl;->controllerForCurrentRequest:Landroidx/media3/session/MediaSession$ControllerInfo;

    .line 356
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 357
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/session/MediaSessionImpl;->controllerForCurrentRequest:Landroidx/media3/session/MediaSession$ControllerInfo;

    .line 358
    return-void
.end method

.method synthetic lambda$handleAvailablePlayerCommandsChanged$23$androidx-media3-session-MediaSessionImpl(Landroidx/media3/session/MediaSession$ControllerCb;I)V
    .locals 1
    .param p1, "callback"    # Landroidx/media3/session/MediaSession$ControllerCb;
    .param p2, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1237
    iget-object v0, p0, Landroidx/media3/session/MediaSessionImpl;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v0, v0, Landroidx/media3/session/PlayerInfo;->deviceInfo:Landroidx/media3/common/DeviceInfo;

    invoke-interface {p1, p2, v0}, Landroidx/media3/session/MediaSession$ControllerCb;->onDeviceInfoChanged(ILandroidx/media3/common/DeviceInfo;)V

    return-void
.end method

.method synthetic lambda$onNotificationRefreshRequired$19$androidx-media3-session-MediaSessionImpl()V
    .locals 2

    .line 931
    iget-object v0, p0, Landroidx/media3/session/MediaSessionImpl;->mediaSessionListener:Landroidx/media3/session/MediaSession$Listener;

    if-eqz v0, :cond_0

    .line 932
    iget-object v0, p0, Landroidx/media3/session/MediaSessionImpl;->mediaSessionListener:Landroidx/media3/session/MediaSession$Listener;

    iget-object v1, p0, Landroidx/media3/session/MediaSessionImpl;->instance:Landroidx/media3/session/MediaSession;

    invoke-interface {v0, v1}, Landroidx/media3/session/MediaSession$Listener;->onNotificationRefreshRequired(Landroidx/media3/session/MediaSession;)V

    .line 934
    :cond_0
    return-void
.end method

.method synthetic lambda$onPlayRequested$20$androidx-media3-session-MediaSessionImpl(Lcom/google/common/util/concurrent/SettableFuture;)V
    .locals 1
    .param p1, "playRequested"    # Lcom/google/common/util/concurrent/SettableFuture;

    .line 940
    invoke-virtual {p0}, Landroidx/media3/session/MediaSessionImpl;->onPlayRequested()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    return-void
.end method

.method synthetic lambda$release$2$androidx-media3-session-MediaSessionImpl()V
    .locals 2

    .line 333
    iget-object v0, p0, Landroidx/media3/session/MediaSessionImpl;->playerListener:Landroidx/media3/session/MediaSessionImpl$PlayerListener;

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Landroidx/media3/session/MediaSessionImpl;->playerWrapper:Landroidx/media3/session/PlayerWrapper;

    iget-object v1, p0, Landroidx/media3/session/MediaSessionImpl;->playerListener:Landroidx/media3/session/MediaSessionImpl$PlayerListener;

    invoke-virtual {v0, v1}, Landroidx/media3/session/PlayerWrapper;->removeListener(Landroidx/media3/common/Player$Listener;)V

    .line 336
    :cond_0
    return-void
.end method

.method protected onAddMediaItemsOnHandler(Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/util/List;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .param p1, "controller"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/session/MediaSession$ControllerInfo;",
            "Ljava/util/List<",
            "Landroidx/media3/common/MediaItem;",
            ">;)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/util/List<",
            "Landroidx/media3/common/MediaItem;",
            ">;>;"
        }
    .end annotation

    .line 793
    .local p2, "mediaItems":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/MediaItem;>;"
    iget-object v0, p0, Landroidx/media3/session/MediaSessionImpl;->callback:Landroidx/media3/session/MediaSession$Callback;

    iget-object v1, p0, Landroidx/media3/session/MediaSessionImpl;->instance:Landroidx/media3/session/MediaSession;

    .line 795
    invoke-virtual {p0, p1}, Landroidx/media3/session/MediaSessionImpl;->resolveControllerInfoForCallback(Landroidx/media3/session/MediaSession$ControllerInfo;)Landroidx/media3/session/MediaSession$ControllerInfo;

    move-result-object v2

    .line 794
    invoke-interface {v0, v1, v2, p2}, Landroidx/media3/session/MediaSession$Callback;->onAddMediaItems(Landroidx/media3/session/MediaSession;Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/util/List;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 793
    const-string v1, "Callback.onAddMediaItems must return a non-null future"

    invoke-static {v0, v1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/ListenableFuture;

    return-object v0
.end method

.method public onConnectOnHandler(Landroidx/media3/session/MediaSession$ControllerInfo;)Landroidx/media3/session/MediaSession$ConnectionResult;
    .locals 3
    .param p1, "controller"    # Landroidx/media3/session/MediaSession$ControllerInfo;

    .line 710
    iget-boolean v0, p0, Landroidx/media3/session/MediaSessionImpl;->isMediaNotificationControllerConnected:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/media3/session/MediaSessionImpl;->isSystemUiController(Landroidx/media3/session/MediaSession$ControllerInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 712
    new-instance v0, Landroidx/media3/session/MediaSession$ConnectionResult$AcceptedResultBuilder;

    iget-object v1, p0, Landroidx/media3/session/MediaSessionImpl;->instance:Landroidx/media3/session/MediaSession;

    invoke-direct {v0, v1}, Landroidx/media3/session/MediaSession$ConnectionResult$AcceptedResultBuilder;-><init>(Landroidx/media3/session/MediaSession;)V

    iget-object v1, p0, Landroidx/media3/session/MediaSessionImpl;->playerWrapper:Landroidx/media3/session/PlayerWrapper;

    .line 713
    invoke-virtual {v1}, Landroidx/media3/session/PlayerWrapper;->getAvailableSessionCommands()Landroidx/media3/session/SessionCommands;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/media3/session/MediaSession$ConnectionResult$AcceptedResultBuilder;->setAvailableSessionCommands(Landroidx/media3/session/SessionCommands;)Landroidx/media3/session/MediaSession$ConnectionResult$AcceptedResultBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/session/MediaSessionImpl;->playerWrapper:Landroidx/media3/session/PlayerWrapper;

    .line 714
    invoke-virtual {v1}, Landroidx/media3/session/PlayerWrapper;->getAvailablePlayerCommands()Landroidx/media3/common/Player$Commands;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/media3/session/MediaSession$ConnectionResult$AcceptedResultBuilder;->setAvailablePlayerCommands(Landroidx/media3/common/Player$Commands;)Landroidx/media3/session/MediaSession$ConnectionResult$AcceptedResultBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/session/MediaSessionImpl;->playerWrapper:Landroidx/media3/session/PlayerWrapper;

    .line 715
    invoke-virtual {v1}, Landroidx/media3/session/PlayerWrapper;->getCustomLayout()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/media3/session/MediaSession$ConnectionResult$AcceptedResultBuilder;->setCustomLayout(Ljava/util/List;)Landroidx/media3/session/MediaSession$ConnectionResult$AcceptedResultBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/session/MediaSessionImpl;->playerWrapper:Landroidx/media3/session/PlayerWrapper;

    .line 716
    invoke-virtual {v1}, Landroidx/media3/session/PlayerWrapper;->getMediaButtonPreferences()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/media3/session/MediaSession$ConnectionResult$AcceptedResultBuilder;->setMediaButtonPreferences(Ljava/util/List;)Landroidx/media3/session/MediaSession$ConnectionResult$AcceptedResultBuilder;

    move-result-object v0

    .line 717
    invoke-virtual {v0}, Landroidx/media3/session/MediaSession$ConnectionResult$AcceptedResultBuilder;->build()Landroidx/media3/session/MediaSession$ConnectionResult;

    move-result-object v0

    .line 712
    return-object v0

    .line 719
    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaSessionImpl;->callback:Landroidx/media3/session/MediaSession$Callback;

    iget-object v1, p0, Landroidx/media3/session/MediaSessionImpl;->instance:Landroidx/media3/session/MediaSession;

    .line 721
    invoke-interface {v0, v1, p1}, Landroidx/media3/session/MediaSession$Callback;->onConnect(Landroidx/media3/session/MediaSession;Landroidx/media3/session/MediaSession$ControllerInfo;)Landroidx/media3/session/MediaSession$ConnectionResult;

    move-result-object v0

    .line 720
    const-string v1, "Callback.onConnect must return non-null future"

    invoke-static {v0, v1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/session/MediaSession$ConnectionResult;

    .line 723
    .local v0, "connectionResult":Landroidx/media3/session/MediaSession$ConnectionResult;
    invoke-virtual {p0, p1}, Landroidx/media3/session/MediaSessionImpl;->isMediaNotificationController(Landroidx/media3/session/MediaSession$ControllerInfo;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, v0, Landroidx/media3/session/MediaSession$ConnectionResult;->isAccepted:Z

    if-eqz v1, :cond_3

    .line 724
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/media3/session/MediaSessionImpl;->isMediaNotificationControllerConnected:Z

    .line 725
    iget-object v1, p0, Landroidx/media3/session/MediaSessionImpl;->playerWrapper:Landroidx/media3/session/PlayerWrapper;

    .line 726
    iget-object v2, v0, Landroidx/media3/session/MediaSession$ConnectionResult;->customLayout:Lcom/google/common/collect/ImmutableList;

    if-eqz v2, :cond_1

    .line 727
    iget-object v2, v0, Landroidx/media3/session/MediaSession$ConnectionResult;->customLayout:Lcom/google/common/collect/ImmutableList;

    goto :goto_0

    .line 728
    :cond_1
    iget-object v2, p0, Landroidx/media3/session/MediaSessionImpl;->instance:Landroidx/media3/session/MediaSession;

    invoke-virtual {v2}, Landroidx/media3/session/MediaSession;->getCustomLayout()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    .line 725
    :goto_0
    invoke-virtual {v1, v2}, Landroidx/media3/session/PlayerWrapper;->setCustomLayout(Lcom/google/common/collect/ImmutableList;)V

    .line 729
    iget-object v1, p0, Landroidx/media3/session/MediaSessionImpl;->playerWrapper:Landroidx/media3/session/PlayerWrapper;

    .line 730
    iget-object v2, v0, Landroidx/media3/session/MediaSession$ConnectionResult;->mediaButtonPreferences:Lcom/google/common/collect/ImmutableList;

    if-eqz v2, :cond_2

    .line 731
    iget-object v2, v0, Landroidx/media3/session/MediaSession$ConnectionResult;->mediaButtonPreferences:Lcom/google/common/collect/ImmutableList;

    goto :goto_1

    .line 732
    :cond_2
    iget-object v2, p0, Landroidx/media3/session/MediaSessionImpl;->instance:Landroidx/media3/session/MediaSession;

    invoke-virtual {v2}, Landroidx/media3/session/MediaSession;->getMediaButtonPreferences()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    .line 729
    :goto_1
    invoke-virtual {v1, v2}, Landroidx/media3/session/PlayerWrapper;->setMediaButtonPreferences(Lcom/google/common/collect/ImmutableList;)V

    .line 733
    iget-object v1, v0, Landroidx/media3/session/MediaSession$ConnectionResult;->availableSessionCommands:Landroidx/media3/session/SessionCommands;

    iget-object v2, v0, Landroidx/media3/session/MediaSession$ConnectionResult;->availablePlayerCommands:Landroidx/media3/common/Player$Commands;

    invoke-direct {p0, v1, v2}, Landroidx/media3/session/MediaSessionImpl;->setAvailableFrameworkControllerCommands(Landroidx/media3/session/SessionCommands;Landroidx/media3/common/Player$Commands;)V

    .line 736
    :cond_3
    return-object v0
.end method

.method public onCustomCommandOnHandler(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/SessionCommand;Landroid/os/Bundle;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .param p1, "controller"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p2, "command"    # Landroidx/media3/session/SessionCommand;
    .param p3, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/session/MediaSession$ControllerInfo;",
            "Landroidx/media3/session/SessionCommand;",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media3/session/SessionResult;",
            ">;"
        }
    .end annotation

    .line 785
    iget-object v0, p0, Landroidx/media3/session/MediaSessionImpl;->callback:Landroidx/media3/session/MediaSession$Callback;

    iget-object v1, p0, Landroidx/media3/session/MediaSessionImpl;->instance:Landroidx/media3/session/MediaSession;

    .line 787
    invoke-virtual {p0, p1}, Landroidx/media3/session/MediaSessionImpl;->resolveControllerInfoForCallback(Landroidx/media3/session/MediaSession$ControllerInfo;)Landroidx/media3/session/MediaSession$ControllerInfo;

    move-result-object v2

    .line 786
    invoke-interface {v0, v1, v2, p2, p3}, Landroidx/media3/session/MediaSession$Callback;->onCustomCommand(Landroidx/media3/session/MediaSession;Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/SessionCommand;Landroid/os/Bundle;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 785
    const-string v1, "Callback.onCustomCommandOnHandler must return non-null future"

    invoke-static {v0, v1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/ListenableFuture;

    return-object v0
.end method

.method public onDisconnectedOnHandler(Landroidx/media3/session/MediaSession$ControllerInfo;)V
    .locals 2
    .param p1, "controller"    # Landroidx/media3/session/MediaSession$ControllerInfo;

    .line 749
    iget-boolean v0, p0, Landroidx/media3/session/MediaSessionImpl;->isMediaNotificationControllerConnected:Z

    if-eqz v0, :cond_1

    .line 750
    invoke-virtual {p0, p1}, Landroidx/media3/session/MediaSessionImpl;->isSystemUiController(Landroidx/media3/session/MediaSession$ControllerInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 753
    return-void

    .line 754
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/media3/session/MediaSessionImpl;->isMediaNotificationController(Landroidx/media3/session/MediaSession$ControllerInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 755
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/session/MediaSessionImpl;->isMediaNotificationControllerConnected:Z

    .line 758
    :cond_1
    iget-object v0, p0, Landroidx/media3/session/MediaSessionImpl;->callback:Landroidx/media3/session/MediaSession$Callback;

    iget-object v1, p0, Landroidx/media3/session/MediaSessionImpl;->instance:Landroidx/media3/session/MediaSession;

    invoke-interface {v0, v1, p1}, Landroidx/media3/session/MediaSession$Callback;->onDisconnected(Landroidx/media3/session/MediaSession;Landroidx/media3/session/MediaSession$ControllerInfo;)V

    .line 759
    return-void
.end method

.method onMediaButtonEvent(Landroidx/media3/session/MediaSession$ControllerInfo;Landroid/content/Intent;)Z
    .locals 8
    .param p1, "callerInfo"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 1250
    invoke-static {p2}, Landroidx/media3/session/DefaultActionFactory;->getKeyEvent(Landroid/content/Intent;)Landroid/view/KeyEvent;

    move-result-object v0

    .line 1251
    .local v0, "keyEvent":Landroid/view/KeyEvent;
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 1252
    .local v1, "intentComponent":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.MEDIA_BUTTON"

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_a

    if-eqz v1, :cond_0

    .line 1254
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Landroidx/media3/session/MediaSessionImpl;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_0
    if-eqz v0, :cond_a

    .line 1256
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_2

    .line 1260
    :cond_1
    invoke-direct {p0}, Landroidx/media3/session/MediaSessionImpl;->verifyApplicationThread()V

    .line 1261
    iget-object v2, p0, Landroidx/media3/session/MediaSessionImpl;->callback:Landroidx/media3/session/MediaSession$Callback;

    iget-object v4, p0, Landroidx/media3/session/MediaSessionImpl;->instance:Landroidx/media3/session/MediaSession;

    invoke-interface {v2, v4, p1, p2}, Landroidx/media3/session/MediaSession$Callback;->onMediaButtonEvent(Landroidx/media3/session/MediaSession;Landroidx/media3/session/MediaSession$ControllerInfo;Landroid/content/Intent;)Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    .line 1263
    return v4

    .line 1266
    :cond_2
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    .line 1267
    .local v2, "keyCode":I
    iget-object v5, p0, Landroidx/media3/session/MediaSessionImpl;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "android.software.leanback"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    .line 1268
    .local v5, "isTvApp":Z
    const/4 v6, 0x0

    .line 1269
    .local v6, "doubleTapCompleted":Z
    sparse-switch v2, :sswitch_data_0

    .line 1291
    iget-object v7, p0, Landroidx/media3/session/MediaSessionImpl;->mediaPlayPauseKeyHandler:Landroidx/media3/session/MediaSessionImpl$MediaPlayPauseKeyHandler;

    invoke-virtual {v7}, Landroidx/media3/session/MediaSessionImpl$MediaPlayPauseKeyHandler;->flush()V

    goto :goto_1

    .line 1272
    :sswitch_0
    if-nez v5, :cond_5

    .line 1273
    invoke-virtual {p1}, Landroidx/media3/session/MediaSession$ControllerInfo;->getControllerVersion()I

    move-result v7

    if-nez v7, :cond_5

    .line 1274
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_0

    .line 1278
    :cond_3
    iget-object v7, p0, Landroidx/media3/session/MediaSessionImpl;->mediaPlayPauseKeyHandler:Landroidx/media3/session/MediaSessionImpl$MediaPlayPauseKeyHandler;

    invoke-virtual {v7}, Landroidx/media3/session/MediaSessionImpl$MediaPlayPauseKeyHandler;->hasPendingPlayPauseTask()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1280
    iget-object v7, p0, Landroidx/media3/session/MediaSessionImpl;->mediaPlayPauseKeyHandler:Landroidx/media3/session/MediaSessionImpl$MediaPlayPauseKeyHandler;

    invoke-virtual {v7}, Landroidx/media3/session/MediaSessionImpl$MediaPlayPauseKeyHandler;->clearPendingPlayPauseTask()Ljava/lang/Runnable;

    .line 1281
    const/4 v6, 0x1

    goto :goto_1

    .line 1284
    :cond_4
    iget-object v3, p0, Landroidx/media3/session/MediaSessionImpl;->mediaPlayPauseKeyHandler:Landroidx/media3/session/MediaSessionImpl$MediaPlayPauseKeyHandler;

    invoke-virtual {v3, p1, v0}, Landroidx/media3/session/MediaSessionImpl$MediaPlayPauseKeyHandler;->setPendingPlayPauseTask(Landroidx/media3/session/MediaSession$ControllerInfo;Landroid/view/KeyEvent;)V

    .line 1285
    return v4

    .line 1277
    :cond_5
    :goto_0
    iget-object v7, p0, Landroidx/media3/session/MediaSessionImpl;->mediaPlayPauseKeyHandler:Landroidx/media3/session/MediaSessionImpl$MediaPlayPauseKeyHandler;

    invoke-virtual {v7}, Landroidx/media3/session/MediaSessionImpl$MediaPlayPauseKeyHandler;->flush()V

    .line 1295
    :goto_1
    invoke-virtual {p0}, Landroidx/media3/session/MediaSessionImpl;->isMediaNotificationControllerConnected()Z

    move-result v7

    if-nez v7, :cond_9

    .line 1296
    const/16 v7, 0x55

    if-eq v2, v7, :cond_6

    const/16 v7, 0x4f

    if-ne v2, v7, :cond_7

    :cond_6
    if-eqz v6, :cond_7

    .line 1299
    iget-object v3, p0, Landroidx/media3/session/MediaSessionImpl;->sessionLegacyStub:Landroidx/media3/session/MediaSessionLegacyStub;

    invoke-virtual {v3}, Landroidx/media3/session/MediaSessionLegacyStub;->onSkipToNext()V

    .line 1300
    return v4

    .line 1301
    :cond_7
    invoke-virtual {p1}, Landroidx/media3/session/MediaSession$ControllerInfo;->getControllerVersion()I

    move-result v7

    if-eqz v7, :cond_8

    .line 1302
    iget-object v3, p0, Landroidx/media3/session/MediaSessionImpl;->sessionLegacyStub:Landroidx/media3/session/MediaSessionLegacyStub;

    invoke-virtual {v3}, Landroidx/media3/session/MediaSessionLegacyStub;->getSessionCompat()Landroidx/media3/session/legacy/MediaSessionCompat;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/media3/session/legacy/MediaSessionCompat;->getController()Landroidx/media3/session/legacy/MediaControllerCompat;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroidx/media3/session/legacy/MediaControllerCompat;->dispatchMediaButtonEvent(Landroid/view/KeyEvent;)Z

    .line 1303
    return v4

    .line 1307
    :cond_8
    return v3

    .line 1310
    :cond_9
    invoke-direct {p0, v0, v6}, Landroidx/media3/session/MediaSessionImpl;->applyMediaButtonKeyEvent(Landroid/view/KeyEvent;Z)Z

    move-result v3

    return v3

    .line 1257
    .end local v2    # "keyCode":I
    .end local v5    # "isTvApp":Z
    .end local v6    # "doubleTapCompleted":Z
    :cond_a
    :goto_2
    return v3

    :sswitch_data_0
    .sparse-switch
        0x4f -> :sswitch_0
        0x55 -> :sswitch_0
    .end sparse-switch
.end method

.method onNotificationRefreshRequired()V
    .locals 2

    .line 928
    iget-object v0, p0, Landroidx/media3/session/MediaSessionImpl;->mainHandler:Landroid/os/Handler;

    new-instance v1, Landroidx/media3/session/MediaSessionImpl$$ExternalSyntheticLambda20;

    invoke-direct {v1, p0}, Landroidx/media3/session/MediaSessionImpl$$ExternalSyntheticLambda20;-><init>(Landroidx/media3/session/MediaSessionImpl;)V

    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->postOrRun(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    .line 935
    return-void
.end method

.method onPlayRequested()Z
    .locals 3

    .line 938
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 939
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    .line 940
    .local v0, "playRequested":Lcom/google/common/util/concurrent/SettableFuture;, "Lcom/google/common/util/concurrent/SettableFuture<Ljava/lang/Boolean;>;"
    iget-object v1, p0, Landroidx/media3/session/MediaSessionImpl;->mainHandler:Landroid/os/Handler;

    new-instance v2, Landroidx/media3/session/MediaSessionImpl$$ExternalSyntheticLambda23;

    invoke-direct {v2, p0, v0}, Landroidx/media3/session/MediaSessionImpl$$ExternalSyntheticLambda23;-><init>(Landroidx/media3/session/MediaSessionImpl;Lcom/google/common/util/concurrent/SettableFuture;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 942
    :try_start_0
    invoke-virtual {v0}, Lcom/google/common/util/concurrent/SettableFuture;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 943
    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 944
    .local v1, "e":Ljava/lang/Exception;
    :goto_0
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 947
    .end local v0    # "playRequested":Lcom/google/common/util/concurrent/SettableFuture;, "Lcom/google/common/util/concurrent/SettableFuture<Ljava/lang/Boolean;>;"
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaSessionImpl;->mediaSessionListener:Landroidx/media3/session/MediaSession$Listener;

    if-eqz v0, :cond_1

    .line 948
    iget-object v0, p0, Landroidx/media3/session/MediaSessionImpl;->mediaSessionListener:Landroidx/media3/session/MediaSession$Listener;

    iget-object v1, p0, Landroidx/media3/session/MediaSessionImpl;->instance:Landroidx/media3/session/MediaSession;

    invoke-interface {v0, v1}, Landroidx/media3/session/MediaSession$Listener;->onPlayRequested(Landroidx/media3/session/MediaSession;)Z

    move-result v0

    return v0

    .line 950
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public onPlayerCommandRequestOnHandler(Landroidx/media3/session/MediaSession$ControllerInfo;I)I
    .locals 3
    .param p1, "controller"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p2, "playerCommand"    # I

    .line 764
    iget-object v0, p0, Landroidx/media3/session/MediaSessionImpl;->callback:Landroidx/media3/session/MediaSession$Callback;

    iget-object v1, p0, Landroidx/media3/session/MediaSessionImpl;->instance:Landroidx/media3/session/MediaSession;

    .line 765
    invoke-virtual {p0, p1}, Landroidx/media3/session/MediaSessionImpl;->resolveControllerInfoForCallback(Landroidx/media3/session/MediaSession$ControllerInfo;)Landroidx/media3/session/MediaSession$ControllerInfo;

    move-result-object v2

    .line 764
    invoke-interface {v0, v1, v2, p2}, Landroidx/media3/session/MediaSession$Callback;->onPlayerCommandRequest(Landroidx/media3/session/MediaSession;Landroidx/media3/session/MediaSession$ControllerInfo;I)I

    move-result v0

    return v0
.end method

.method protected onPlayerInteractionFinishedOnHandler(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/common/Player$Commands;)V
    .locals 3
    .param p1, "controller"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p2, "playerCommands"    # Landroidx/media3/common/Player$Commands;

    .line 813
    iget-object v0, p0, Landroidx/media3/session/MediaSessionImpl;->callback:Landroidx/media3/session/MediaSession$Callback;

    iget-object v1, p0, Landroidx/media3/session/MediaSessionImpl;->instance:Landroidx/media3/session/MediaSession;

    .line 814
    invoke-virtual {p0, p1}, Landroidx/media3/session/MediaSessionImpl;->resolveControllerInfoForCallback(Landroidx/media3/session/MediaSession$ControllerInfo;)Landroidx/media3/session/MediaSession$ControllerInfo;

    move-result-object v2

    .line 813
    invoke-interface {v0, v1, v2, p2}, Landroidx/media3/session/MediaSession$Callback;->onPlayerInteractionFinished(Landroidx/media3/session/MediaSession;Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/common/Player$Commands;)V

    .line 815
    return-void
.end method

.method public onPostConnectOnHandler(Landroidx/media3/session/MediaSession$ControllerInfo;)V
    .locals 2
    .param p1, "controller"    # Landroidx/media3/session/MediaSession$ControllerInfo;

    .line 740
    iget-boolean v0, p0, Landroidx/media3/session/MediaSessionImpl;->isMediaNotificationControllerConnected:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/media3/session/MediaSessionImpl;->isSystemUiController(Landroidx/media3/session/MediaSession$ControllerInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 743
    return-void

    .line 745
    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaSessionImpl;->callback:Landroidx/media3/session/MediaSession$Callback;

    iget-object v1, p0, Landroidx/media3/session/MediaSessionImpl;->instance:Landroidx/media3/session/MediaSession;

    invoke-interface {v0, v1, p1}, Landroidx/media3/session/MediaSession$Callback;->onPostConnect(Landroidx/media3/session/MediaSession;Landroidx/media3/session/MediaSession$ControllerInfo;)V

    .line 746
    return-void
.end method

.method protected onSetMediaItemsOnHandler(Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/util/List;IJ)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 7
    .param p1, "controller"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p3, "startIndex"    # I
    .param p4, "startPositionMs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/session/MediaSession$ControllerInfo;",
            "Ljava/util/List<",
            "Landroidx/media3/common/MediaItem;",
            ">;IJ)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media3/session/MediaSession$MediaItemsWithStartPosition;",
            ">;"
        }
    .end annotation

    .line 801
    .local p2, "mediaItems":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/MediaItem;>;"
    iget-object v0, p0, Landroidx/media3/session/MediaSessionImpl;->callback:Landroidx/media3/session/MediaSession$Callback;

    iget-object v1, p0, Landroidx/media3/session/MediaSessionImpl;->instance:Landroidx/media3/session/MediaSession;

    .line 804
    invoke-virtual {p0, p1}, Landroidx/media3/session/MediaSessionImpl;->resolveControllerInfoForCallback(Landroidx/media3/session/MediaSession$ControllerInfo;)Landroidx/media3/session/MediaSession$ControllerInfo;

    move-result-object v2

    .line 802
    move-object v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-interface/range {v0 .. v6}, Landroidx/media3/session/MediaSession$Callback;->onSetMediaItems(Landroidx/media3/session/MediaSession;Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/util/List;IJ)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 801
    const-string v1, "Callback.onSetMediaItems must return a non-null future"

    invoke-static {v0, v1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/ListenableFuture;

    return-object v0
.end method

.method public onSetRatingOnHandler(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/common/Rating;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .param p1, "controller"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p2, "rating"    # Landroidx/media3/common/Rating;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/session/MediaSession$ControllerInfo;",
            "Landroidx/media3/common/Rating;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media3/session/SessionResult;",
            ">;"
        }
    .end annotation

    .line 778
    iget-object v0, p0, Landroidx/media3/session/MediaSessionImpl;->callback:Landroidx/media3/session/MediaSession$Callback;

    iget-object v1, p0, Landroidx/media3/session/MediaSessionImpl;->instance:Landroidx/media3/session/MediaSession;

    .line 779
    invoke-virtual {p0, p1}, Landroidx/media3/session/MediaSessionImpl;->resolveControllerInfoForCallback(Landroidx/media3/session/MediaSession$ControllerInfo;)Landroidx/media3/session/MediaSession$ControllerInfo;

    move-result-object v2

    invoke-interface {v0, v1, v2, p2}, Landroidx/media3/session/MediaSession$Callback;->onSetRating(Landroidx/media3/session/MediaSession;Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/common/Rating;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 778
    const-string v1, "Callback.onSetRating must return non-null future"

    invoke-static {v0, v1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/ListenableFuture;

    return-object v0
.end method

.method public onSetRatingOnHandler(Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/lang/String;Landroidx/media3/common/Rating;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .param p1, "controller"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p2, "mediaId"    # Ljava/lang/String;
    .param p3, "rating"    # Landroidx/media3/common/Rating;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/session/MediaSession$ControllerInfo;",
            "Ljava/lang/String;",
            "Landroidx/media3/common/Rating;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media3/session/SessionResult;",
            ">;"
        }
    .end annotation

    .line 770
    iget-object v0, p0, Landroidx/media3/session/MediaSessionImpl;->callback:Landroidx/media3/session/MediaSession$Callback;

    iget-object v1, p0, Landroidx/media3/session/MediaSessionImpl;->instance:Landroidx/media3/session/MediaSession;

    .line 772
    invoke-virtual {p0, p1}, Landroidx/media3/session/MediaSessionImpl;->resolveControllerInfoForCallback(Landroidx/media3/session/MediaSession$ControllerInfo;)Landroidx/media3/session/MediaSession$ControllerInfo;

    move-result-object v2

    .line 771
    invoke-interface {v0, v1, v2, p2, p3}, Landroidx/media3/session/MediaSession$Callback;->onSetRating(Landroidx/media3/session/MediaSession;Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/lang/String;Landroidx/media3/common/Rating;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 770
    const-string v1, "Callback.onSetRating must return non-null future"

    invoke-static {v0, v1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/ListenableFuture;

    return-object v0
.end method

.method public release()V
    .locals 3

    .line 310
    const-string v0, "MediaSessionImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Release "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 313
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "AndroidXMedia3/1.5.1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroidx/media3/common/util/Util;->DEVICE_DEBUG_INFO:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 319
    invoke-static {}, Landroidx/media3/common/MediaLibraryInfo;->registeredModules()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 310
    invoke-static {v0, v1}, Landroidx/media3/common/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    iget-object v0, p0, Landroidx/media3/session/MediaSessionImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 322
    :try_start_0
    iget-boolean v1, p0, Landroidx/media3/session/MediaSessionImpl;->closed:Z

    if-eqz v1, :cond_0

    .line 323
    monitor-exit v0

    return-void

    .line 325
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/media3/session/MediaSessionImpl;->closed:Z

    .line 326
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 327
    iget-object v0, p0, Landroidx/media3/session/MediaSessionImpl;->mediaPlayPauseKeyHandler:Landroidx/media3/session/MediaSessionImpl$MediaPlayPauseKeyHandler;

    invoke-virtual {v0}, Landroidx/media3/session/MediaSessionImpl$MediaPlayPauseKeyHandler;->clearPendingPlayPauseTask()Ljava/lang/Runnable;

    .line 328
    iget-object v0, p0, Landroidx/media3/session/MediaSessionImpl;->applicationHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 330
    :try_start_1
    iget-object v0, p0, Landroidx/media3/session/MediaSessionImpl;->applicationHandler:Landroid/os/Handler;

    new-instance v1, Landroidx/media3/session/MediaSessionImpl$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0}, Landroidx/media3/session/MediaSessionImpl$$ExternalSyntheticLambda11;-><init>(Landroidx/media3/session/MediaSessionImpl;)V

    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->postOrRun(Landroid/os/Handler;Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 342
    goto :goto_0

    .line 337
    :catch_0
    move-exception v0

    .line 341
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MediaSessionImpl"

    const-string v2, "Exception thrown while closing"

    invoke-static {v1, v2, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 343
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    iget-object v0, p0, Landroidx/media3/session/MediaSessionImpl;->sessionLegacyStub:Landroidx/media3/session/MediaSessionLegacyStub;

    invoke-virtual {v0}, Landroidx/media3/session/MediaSessionLegacyStub;->release()V

    .line 344
    iget-object v0, p0, Landroidx/media3/session/MediaSessionImpl;->sessionStub:Landroidx/media3/session/MediaSessionStub;

    invoke-virtual {v0}, Landroidx/media3/session/MediaSessionStub;->release()V

    .line 345
    return-void

    .line 326
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method protected resolveControllerInfoForCallback(Landroidx/media3/session/MediaSession$ControllerInfo;)Landroidx/media3/session/MediaSession$ControllerInfo;
    .locals 1
    .param p1, "controller"    # Landroidx/media3/session/MediaSession$ControllerInfo;

    .line 872
    iget-boolean v0, p0, Landroidx/media3/session/MediaSessionImpl;->isMediaNotificationControllerConnected:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/media3/session/MediaSessionImpl;->isSystemUiController(Landroidx/media3/session/MediaSession$ControllerInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 873
    invoke-virtual {p0}, Landroidx/media3/session/MediaSessionImpl;->getMediaNotificationControllerInfo()Landroidx/media3/session/MediaSession$ControllerInfo;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/session/MediaSession$ControllerInfo;

    goto :goto_0

    .line 874
    :cond_0
    move-object v0, p1

    .line 872
    :goto_0
    return-object v0
.end method

.method public sendCustomCommand(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/SessionCommand;Landroid/os/Bundle;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .param p1, "controller"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p2, "command"    # Landroidx/media3/session/SessionCommand;
    .param p3, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/session/MediaSession$ControllerInfo;",
            "Landroidx/media3/session/SessionCommand;",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media3/session/SessionResult;",
            ">;"
        }
    .end annotation

    .line 670
    new-instance v0, Landroidx/media3/session/MediaSessionImpl$$ExternalSyntheticLambda12;

    invoke-direct {v0, p2, p3}, Landroidx/media3/session/MediaSessionImpl$$ExternalSyntheticLambda12;-><init>(Landroidx/media3/session/SessionCommand;Landroid/os/Bundle;)V

    invoke-direct {p0, p1, v0}, Landroidx/media3/session/MediaSessionImpl;->dispatchRemoteControllerTask(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/MediaSessionImpl$RemoteControllerTask;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public sendError(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/SessionError;)V
    .locals 2
    .param p1, "controllerInfo"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p2, "sessionError"    # Landroidx/media3/session/SessionError;

    .line 675
    invoke-virtual {p1}, Landroidx/media3/session/MediaSession$ControllerInfo;->getControllerVersion()I

    move-result v0

    if-eqz v0, :cond_0

    .line 676
    invoke-virtual {p1}, Landroidx/media3/session/MediaSession$ControllerInfo;->getInterfaceVersion()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 678
    return-void

    .line 680
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/media3/session/MediaSessionImpl;->isMediaNotificationController(Landroidx/media3/session/MediaSession$ControllerInfo;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 681
    invoke-virtual {p1}, Landroidx/media3/session/MediaSession$ControllerInfo;->getControllerVersion()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 687
    :cond_1
    new-instance v0, Landroidx/media3/session/MediaSessionImpl$$ExternalSyntheticLambda19;

    invoke-direct {v0, p2}, Landroidx/media3/session/MediaSessionImpl$$ExternalSyntheticLambda19;-><init>(Landroidx/media3/session/SessionError;)V

    invoke-virtual {p0, p1, v0}, Landroidx/media3/session/MediaSessionImpl;->dispatchRemoteControllerTaskWithoutReturn(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/MediaSessionImpl$RemoteControllerTask;)V

    goto :goto_1

    .line 683
    :cond_2
    :goto_0
    new-instance v0, Landroidx/media3/session/MediaSessionImpl$$ExternalSyntheticLambda18;

    invoke-direct {v0, p2}, Landroidx/media3/session/MediaSessionImpl$$ExternalSyntheticLambda18;-><init>(Landroidx/media3/session/SessionError;)V

    invoke-direct {p0, v0}, Landroidx/media3/session/MediaSessionImpl;->dispatchRemoteControllerTaskToLegacyStub(Landroidx/media3/session/MediaSessionImpl$RemoteControllerTask;)V

    .line 690
    :goto_1
    return-void
.end method

.method public sendError(Landroidx/media3/session/SessionError;)V
    .locals 4
    .param p1, "sessionError"    # Landroidx/media3/session/SessionError;

    .line 694
    iget-object v0, p0, Landroidx/media3/session/MediaSessionImpl;->sessionStub:Landroidx/media3/session/MediaSessionStub;

    .line 695
    invoke-virtual {v0}, Landroidx/media3/session/MediaSessionStub;->getConnectedControllersManager()Landroidx/media3/session/ConnectedControllersManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/session/ConnectedControllersManager;->getConnectedControllers()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 696
    .local v0, "connectedControllers":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Landroidx/media3/session/MediaSession$ControllerInfo;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 697
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/session/MediaSession$ControllerInfo;

    .line 698
    .local v2, "controllerInfo":Landroidx/media3/session/MediaSession$ControllerInfo;
    invoke-virtual {p0, v2}, Landroidx/media3/session/MediaSessionImpl;->isMediaNotificationController(Landroidx/media3/session/MediaSession$ControllerInfo;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 701
    invoke-virtual {p0, v2, p1}, Landroidx/media3/session/MediaSessionImpl;->sendError(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/SessionError;)V

    .line 696
    .end local v2    # "controllerInfo":Landroidx/media3/session/MediaSession$ControllerInfo;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 705
    .end local v1    # "i":I
    :cond_1
    new-instance v1, Landroidx/media3/session/MediaSessionImpl$$ExternalSyntheticLambda16;

    invoke-direct {v1, p1}, Landroidx/media3/session/MediaSessionImpl$$ExternalSyntheticLambda16;-><init>(Landroidx/media3/session/SessionError;)V

    invoke-direct {p0, v1}, Landroidx/media3/session/MediaSessionImpl;->dispatchRemoteControllerTaskToLegacyStub(Landroidx/media3/session/MediaSessionImpl$RemoteControllerTask;)V

    .line 707
    return-void
.end method

.method public setAvailableCommands(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/SessionCommands;Landroidx/media3/common/Player$Commands;)V
    .locals 2
    .param p1, "controller"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p2, "sessionCommands"    # Landroidx/media3/session/SessionCommands;
    .param p3, "playerCommands"    # Landroidx/media3/common/Player$Commands;

    .line 594
    iget-object v0, p0, Landroidx/media3/session/MediaSessionImpl;->sessionStub:Landroidx/media3/session/MediaSessionStub;

    invoke-virtual {v0}, Landroidx/media3/session/MediaSessionStub;->getConnectedControllersManager()Landroidx/media3/session/ConnectedControllersManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/media3/session/ConnectedControllersManager;->isConnected(Landroidx/media3/session/MediaSession$ControllerInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 595
    invoke-virtual {p0, p1}, Landroidx/media3/session/MediaSessionImpl;->isMediaNotificationController(Landroidx/media3/session/MediaSession$ControllerInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 596
    invoke-direct {p0, p2, p3}, Landroidx/media3/session/MediaSessionImpl;->setAvailableFrameworkControllerCommands(Landroidx/media3/session/SessionCommands;Landroidx/media3/common/Player$Commands;)V

    .line 597
    invoke-virtual {p0}, Landroidx/media3/session/MediaSessionImpl;->getSystemUiControllerInfo()Landroidx/media3/session/MediaSession$ControllerInfo;

    move-result-object v0

    .line 598
    .local v0, "systemUiControllerInfo":Landroidx/media3/session/MediaSession$ControllerInfo;
    if-eqz v0, :cond_0

    .line 601
    iget-object v1, p0, Landroidx/media3/session/MediaSessionImpl;->sessionLegacyStub:Landroidx/media3/session/MediaSessionLegacyStub;

    .line 602
    invoke-virtual {v1}, Landroidx/media3/session/MediaSessionLegacyStub;->getConnectedControllersManager()Landroidx/media3/session/ConnectedControllersManager;

    move-result-object v1

    .line 603
    invoke-virtual {v1, v0, p2, p3}, Landroidx/media3/session/ConnectedControllersManager;->updateCommandsFromSession(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/SessionCommands;Landroidx/media3/common/Player$Commands;)V

    .line 606
    .end local v0    # "systemUiControllerInfo":Landroidx/media3/session/MediaSession$ControllerInfo;
    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaSessionImpl;->sessionStub:Landroidx/media3/session/MediaSessionStub;

    .line 607
    invoke-virtual {v0}, Landroidx/media3/session/MediaSessionStub;->getConnectedControllersManager()Landroidx/media3/session/ConnectedControllersManager;

    move-result-object v0

    .line 608
    invoke-virtual {v0, p1, p2, p3}, Landroidx/media3/session/ConnectedControllersManager;->updateCommandsFromSession(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/SessionCommands;Landroidx/media3/common/Player$Commands;)V

    .line 609
    new-instance v0, Landroidx/media3/session/MediaSessionImpl$$ExternalSyntheticLambda29;

    invoke-direct {v0, p2, p3}, Landroidx/media3/session/MediaSessionImpl$$ExternalSyntheticLambda29;-><init>(Landroidx/media3/session/SessionCommands;Landroidx/media3/common/Player$Commands;)V

    invoke-virtual {p0, p1, v0}, Landroidx/media3/session/MediaSessionImpl;->dispatchRemoteControllerTaskWithoutReturn(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/MediaSessionImpl$RemoteControllerTask;)V

    .line 613
    iget-object v0, p0, Landroidx/media3/session/MediaSessionImpl;->onPlayerInfoChangedHandler:Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;->sendPlayerInfoChangedMessage(ZZ)V

    goto :goto_0

    .line 616
    :cond_1
    iget-object v0, p0, Landroidx/media3/session/MediaSessionImpl;->sessionLegacyStub:Landroidx/media3/session/MediaSessionLegacyStub;

    .line 617
    invoke-virtual {v0}, Landroidx/media3/session/MediaSessionLegacyStub;->getConnectedControllersManager()Landroidx/media3/session/ConnectedControllersManager;

    move-result-object v0

    .line 618
    invoke-virtual {v0, p1, p2, p3}, Landroidx/media3/session/ConnectedControllersManager;->updateCommandsFromSession(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/SessionCommands;Landroidx/media3/common/Player$Commands;)V

    .line 620
    :goto_0
    return-void
.end method

.method public setCustomLayout(Landroidx/media3/session/MediaSession$ControllerInfo;Lcom/google/common/collect/ImmutableList;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .param p1, "controller"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/session/MediaSession$ControllerInfo;",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/session/CommandButton;",
            ">;)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media3/session/SessionResult;",
            ">;"
        }
    .end annotation

    .line 503
    .local p2, "customLayout":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Landroidx/media3/session/CommandButton;>;"
    invoke-virtual {p0, p1}, Landroidx/media3/session/MediaSessionImpl;->isMediaNotificationController(Landroidx/media3/session/MediaSession$ControllerInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 504
    iget-object v0, p0, Landroidx/media3/session/MediaSessionImpl;->playerWrapper:Landroidx/media3/session/PlayerWrapper;

    invoke-virtual {v0, p2}, Landroidx/media3/session/PlayerWrapper;->setCustomLayout(Lcom/google/common/collect/ImmutableList;)V

    .line 505
    iget-object v0, p0, Landroidx/media3/session/MediaSessionImpl;->sessionLegacyStub:Landroidx/media3/session/MediaSessionLegacyStub;

    iget-object v1, p0, Landroidx/media3/session/MediaSessionImpl;->playerWrapper:Landroidx/media3/session/PlayerWrapper;

    invoke-virtual {v0, v1}, Landroidx/media3/session/MediaSessionLegacyStub;->updateLegacySessionPlaybackState(Landroidx/media3/session/PlayerWrapper;)V

    .line 507
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaSessionImpl$$ExternalSyntheticLambda28;

    invoke-direct {v0, p2}, Landroidx/media3/session/MediaSessionImpl$$ExternalSyntheticLambda28;-><init>(Lcom/google/common/collect/ImmutableList;)V

    invoke-direct {p0, p1, v0}, Landroidx/media3/session/MediaSessionImpl;->dispatchRemoteControllerTask(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/MediaSessionImpl$RemoteControllerTask;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public setCustomLayout(Lcom/google/common/collect/ImmutableList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/session/CommandButton;",
            ">;)V"
        }
    .end annotation

    .line 513
    .local p1, "customLayout":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Landroidx/media3/session/CommandButton;>;"
    iput-object p1, p0, Landroidx/media3/session/MediaSessionImpl;->customLayout:Lcom/google/common/collect/ImmutableList;

    .line 514
    iget-object v0, p0, Landroidx/media3/session/MediaSessionImpl;->playerWrapper:Landroidx/media3/session/PlayerWrapper;

    invoke-virtual {v0, p1}, Landroidx/media3/session/PlayerWrapper;->setCustomLayout(Lcom/google/common/collect/ImmutableList;)V

    .line 515
    new-instance v0, Landroidx/media3/session/MediaSessionImpl$$ExternalSyntheticLambda30;

    invoke-direct {v0, p1}, Landroidx/media3/session/MediaSessionImpl$$ExternalSyntheticLambda30;-><init>(Lcom/google/common/collect/ImmutableList;)V

    invoke-virtual {p0, v0}, Landroidx/media3/session/MediaSessionImpl;->dispatchRemoteControllerTaskWithoutReturn(Landroidx/media3/session/MediaSessionImpl$RemoteControllerTask;)V

    .line 517
    return-void
.end method

.method public setLegacyControllerConnectionTimeoutMs(J)V
    .locals 1
    .param p1, "timeoutMs"    # J

    .line 826
    iget-object v0, p0, Landroidx/media3/session/MediaSessionImpl;->sessionLegacyStub:Landroidx/media3/session/MediaSessionLegacyStub;

    invoke-virtual {v0, p1, p2}, Landroidx/media3/session/MediaSessionLegacyStub;->setLegacyControllerDisconnectTimeoutMs(J)V

    .line 827
    return-void
.end method

.method public setMediaButtonPreferences(Landroidx/media3/session/MediaSession$ControllerInfo;Lcom/google/common/collect/ImmutableList;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .param p1, "controller"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/session/MediaSession$ControllerInfo;",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/session/CommandButton;",
            ">;)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media3/session/SessionResult;",
            ">;"
        }
    .end annotation

    .line 528
    .local p2, "mediaButtonPreferences":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Landroidx/media3/session/CommandButton;>;"
    invoke-virtual {p0, p1}, Landroidx/media3/session/MediaSessionImpl;->isMediaNotificationController(Landroidx/media3/session/MediaSession$ControllerInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 529
    iget-object v0, p0, Landroidx/media3/session/MediaSessionImpl;->playerWrapper:Landroidx/media3/session/PlayerWrapper;

    invoke-virtual {v0, p2}, Landroidx/media3/session/PlayerWrapper;->setMediaButtonPreferences(Lcom/google/common/collect/ImmutableList;)V

    .line 530
    iget-object v0, p0, Landroidx/media3/session/MediaSessionImpl;->sessionLegacyStub:Landroidx/media3/session/MediaSessionLegacyStub;

    iget-object v1, p0, Landroidx/media3/session/MediaSessionImpl;->playerWrapper:Landroidx/media3/session/PlayerWrapper;

    invoke-virtual {v0, v1}, Landroidx/media3/session/MediaSessionLegacyStub;->updateLegacySessionPlaybackState(Landroidx/media3/session/PlayerWrapper;)V

    .line 532
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaSessionImpl$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2}, Landroidx/media3/session/MediaSessionImpl$$ExternalSyntheticLambda0;-><init>(Lcom/google/common/collect/ImmutableList;)V

    invoke-direct {p0, p1, v0}, Landroidx/media3/session/MediaSessionImpl;->dispatchRemoteControllerTask(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/MediaSessionImpl$RemoteControllerTask;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public setMediaButtonPreferences(Lcom/google/common/collect/ImmutableList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/session/CommandButton;",
            ">;)V"
        }
    .end annotation

    .line 542
    .local p1, "mediaButtonPreferences":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Landroidx/media3/session/CommandButton;>;"
    iput-object p1, p0, Landroidx/media3/session/MediaSessionImpl;->mediaButtonPreferences:Lcom/google/common/collect/ImmutableList;

    .line 543
    iget-object v0, p0, Landroidx/media3/session/MediaSessionImpl;->playerWrapper:Landroidx/media3/session/PlayerWrapper;

    invoke-virtual {v0, p1}, Landroidx/media3/session/PlayerWrapper;->setMediaButtonPreferences(Lcom/google/common/collect/ImmutableList;)V

    .line 544
    new-instance v0, Landroidx/media3/session/MediaSessionImpl$$ExternalSyntheticLambda22;

    invoke-direct {v0, p1}, Landroidx/media3/session/MediaSessionImpl$$ExternalSyntheticLambda22;-><init>(Lcom/google/common/collect/ImmutableList;)V

    invoke-virtual {p0, v0}, Landroidx/media3/session/MediaSessionImpl;->dispatchRemoteControllerTaskWithoutReturn(Landroidx/media3/session/MediaSessionImpl$RemoteControllerTask;)V

    .line 546
    return-void
.end method

.method setMediaSessionListener(Landroidx/media3/session/MediaSession$Listener;)V
    .locals 0
    .param p1, "listener"    # Landroidx/media3/session/MediaSession$Listener;

    .line 920
    iput-object p1, p0, Landroidx/media3/session/MediaSessionImpl;->mediaSessionListener:Landroidx/media3/session/MediaSession$Listener;

    .line 921
    return-void
.end method

.method public setPlayer(Landroidx/media3/common/Player;)V
    .locals 10
    .param p1, "player"    # Landroidx/media3/common/Player;

    .line 270
    iget-object v0, p0, Landroidx/media3/session/MediaSessionImpl;->playerWrapper:Landroidx/media3/session/PlayerWrapper;

    invoke-virtual {v0}, Landroidx/media3/session/PlayerWrapper;->getWrappedPlayer()Landroidx/media3/common/Player;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 271
    return-void

    .line 273
    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaSessionImpl;->playerWrapper:Landroidx/media3/session/PlayerWrapper;

    new-instance v9, Landroidx/media3/session/PlayerWrapper;

    iget-boolean v3, p0, Landroidx/media3/session/MediaSessionImpl;->playIfSuppressed:Z

    iget-object v1, p0, Landroidx/media3/session/MediaSessionImpl;->playerWrapper:Landroidx/media3/session/PlayerWrapper;

    .line 278
    invoke-virtual {v1}, Landroidx/media3/session/PlayerWrapper;->getCustomLayout()Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    iget-object v1, p0, Landroidx/media3/session/MediaSessionImpl;->playerWrapper:Landroidx/media3/session/PlayerWrapper;

    .line 279
    invoke-virtual {v1}, Landroidx/media3/session/PlayerWrapper;->getMediaButtonPreferences()Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    iget-object v1, p0, Landroidx/media3/session/MediaSessionImpl;->playerWrapper:Landroidx/media3/session/PlayerWrapper;

    .line 280
    invoke-virtual {v1}, Landroidx/media3/session/PlayerWrapper;->getAvailableSessionCommands()Landroidx/media3/session/SessionCommands;

    move-result-object v6

    iget-object v1, p0, Landroidx/media3/session/MediaSessionImpl;->playerWrapper:Landroidx/media3/session/PlayerWrapper;

    .line 281
    invoke-virtual {v1}, Landroidx/media3/session/PlayerWrapper;->getAvailablePlayerCommands()Landroidx/media3/common/Player$Commands;

    move-result-object v7

    iget-object v1, p0, Landroidx/media3/session/MediaSessionImpl;->playerWrapper:Landroidx/media3/session/PlayerWrapper;

    .line 282
    invoke-virtual {v1}, Landroidx/media3/session/PlayerWrapper;->getLegacyExtras()Landroid/os/Bundle;

    move-result-object v8

    move-object v1, v9

    move-object v2, p1

    invoke-direct/range {v1 .. v8}, Landroidx/media3/session/PlayerWrapper;-><init>(Landroidx/media3/common/Player;ZLcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;Landroidx/media3/session/SessionCommands;Landroidx/media3/common/Player$Commands;Landroid/os/Bundle;)V

    .line 273
    invoke-direct {p0, v0, v9}, Landroidx/media3/session/MediaSessionImpl;->setPlayerInternal(Landroidx/media3/session/PlayerWrapper;Landroidx/media3/session/PlayerWrapper;)V

    .line 283
    return-void
.end method

.method protected setSessionActivity(Landroid/app/PendingIntent;)V
    .locals 3
    .param p1, "sessionActivity"    # Landroid/app/PendingIntent;

    .line 850
    iput-object p1, p0, Landroidx/media3/session/MediaSessionImpl;->sessionActivity:Landroid/app/PendingIntent;

    .line 851
    iget-object v0, p0, Landroidx/media3/session/MediaSessionImpl;->sessionStub:Landroidx/media3/session/MediaSessionStub;

    .line 852
    invoke-virtual {v0}, Landroidx/media3/session/MediaSessionStub;->getConnectedControllersManager()Landroidx/media3/session/ConnectedControllersManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/session/ConnectedControllersManager;->getConnectedControllers()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 853
    .local v0, "connectedControllers":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Landroidx/media3/session/MediaSession$ControllerInfo;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 854
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/session/MediaSession$ControllerInfo;

    invoke-virtual {p0, v2, p1}, Landroidx/media3/session/MediaSessionImpl;->setSessionActivity(Landroidx/media3/session/MediaSession$ControllerInfo;Landroid/app/PendingIntent;)V

    .line 853
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 856
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected setSessionActivity(Landroidx/media3/session/MediaSession$ControllerInfo;Landroid/app/PendingIntent;)V
    .locals 2
    .param p1, "controller"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p2, "sessionActivity"    # Landroid/app/PendingIntent;

    .line 860
    invoke-virtual {p1}, Landroidx/media3/session/MediaSession$ControllerInfo;->getControllerVersion()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Landroidx/media3/session/MediaSessionImpl;->sessionStub:Landroidx/media3/session/MediaSessionStub;

    .line 861
    invoke-virtual {v0}, Landroidx/media3/session/MediaSessionStub;->getConnectedControllersManager()Landroidx/media3/session/ConnectedControllersManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/media3/session/ConnectedControllersManager;->isConnected(Landroidx/media3/session/MediaSession$ControllerInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 862
    new-instance v0, Landroidx/media3/session/MediaSessionImpl$$ExternalSyntheticLambda14;

    invoke-direct {v0, p2}, Landroidx/media3/session/MediaSessionImpl$$ExternalSyntheticLambda14;-><init>(Landroid/app/PendingIntent;)V

    invoke-virtual {p0, p1, v0}, Landroidx/media3/session/MediaSessionImpl;->dispatchRemoteControllerTaskWithoutReturn(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/MediaSessionImpl$RemoteControllerTask;)V

    .line 864
    invoke-virtual {p0, p1}, Landroidx/media3/session/MediaSessionImpl;->isMediaNotificationController(Landroidx/media3/session/MediaSession$ControllerInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 865
    new-instance v0, Landroidx/media3/session/MediaSessionImpl$$ExternalSyntheticLambda15;

    invoke-direct {v0, p2}, Landroidx/media3/session/MediaSessionImpl$$ExternalSyntheticLambda15;-><init>(Landroid/app/PendingIntent;)V

    invoke-direct {p0, v0}, Landroidx/media3/session/MediaSessionImpl;->dispatchRemoteControllerTaskToLegacyStub(Landroidx/media3/session/MediaSessionImpl$RemoteControllerTask;)V

    .line 869
    :cond_0
    return-void
.end method

.method public setSessionExtras(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "sessionExtras"    # Landroid/os/Bundle;

    .line 564
    iput-object p1, p0, Landroidx/media3/session/MediaSessionImpl;->sessionExtras:Landroid/os/Bundle;

    .line 565
    new-instance v0, Landroidx/media3/session/MediaSessionImpl$$ExternalSyntheticLambda8;

    invoke-direct {v0, p1}, Landroidx/media3/session/MediaSessionImpl$$ExternalSyntheticLambda8;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p0, v0}, Landroidx/media3/session/MediaSessionImpl;->dispatchRemoteControllerTaskWithoutReturn(Landroidx/media3/session/MediaSessionImpl$RemoteControllerTask;)V

    .line 567
    return-void
.end method

.method public setSessionExtras(Landroidx/media3/session/MediaSession$ControllerInfo;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "controller"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p2, "sessionExtras"    # Landroid/os/Bundle;

    .line 570
    iget-object v0, p0, Landroidx/media3/session/MediaSessionImpl;->sessionStub:Landroidx/media3/session/MediaSessionStub;

    invoke-virtual {v0}, Landroidx/media3/session/MediaSessionStub;->getConnectedControllersManager()Landroidx/media3/session/ConnectedControllersManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/media3/session/ConnectedControllersManager;->isConnected(Landroidx/media3/session/MediaSession$ControllerInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 571
    new-instance v0, Landroidx/media3/session/MediaSessionImpl$$ExternalSyntheticLambda24;

    invoke-direct {v0, p2}, Landroidx/media3/session/MediaSessionImpl$$ExternalSyntheticLambda24;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p0, p1, v0}, Landroidx/media3/session/MediaSessionImpl;->dispatchRemoteControllerTaskWithoutReturn(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/MediaSessionImpl$RemoteControllerTask;)V

    .line 573
    invoke-virtual {p0, p1}, Landroidx/media3/session/MediaSessionImpl;->isMediaNotificationController(Landroidx/media3/session/MediaSession$ControllerInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 574
    new-instance v0, Landroidx/media3/session/MediaSessionImpl$$ExternalSyntheticLambda25;

    invoke-direct {v0, p2}, Landroidx/media3/session/MediaSessionImpl$$ExternalSyntheticLambda25;-><init>(Landroid/os/Bundle;)V

    invoke-direct {p0, v0}, Landroidx/media3/session/MediaSessionImpl;->dispatchRemoteControllerTaskToLegacyStub(Landroidx/media3/session/MediaSessionImpl$RemoteControllerTask;)V

    .line 578
    :cond_0
    return-void
.end method

.method protected setSessionPositionUpdateDelayMsOnHandler(J)V
    .locals 0
    .param p1, "updateDelayMs"    # J

    .line 903
    invoke-direct {p0}, Landroidx/media3/session/MediaSessionImpl;->verifyApplicationThread()V

    .line 904
    iput-wide p1, p0, Landroidx/media3/session/MediaSessionImpl;->sessionPositionUpdateDelayMs:J

    .line 905
    invoke-direct {p0}, Landroidx/media3/session/MediaSessionImpl;->schedulePeriodicSessionPositionInfoChanges()V

    .line 906
    return-void
.end method

.method public shouldPlayIfSuppressed()Z
    .locals 1

    .line 589
    iget-boolean v0, p0, Landroidx/media3/session/MediaSessionImpl;->playIfSuppressed:Z

    return v0
.end method
