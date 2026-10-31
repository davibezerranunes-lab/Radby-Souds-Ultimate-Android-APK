.class public Landroidx/media3/session/legacy/MediaSessionCompat;
.super Ljava/lang/Object;
.source "MediaSessionCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi29;,
        Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;,
        Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi28;,
        Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi22;,
        Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi21;,
        Landroidx/media3/session/legacy/MediaSessionCompat$Callback;,
        Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi19;,
        Landroidx/media3/session/legacy/MediaSessionCompat$RegistrationCallback;,
        Landroidx/media3/session/legacy/MediaSessionCompat$OnActiveChangeListener;,
        Landroidx/media3/session/legacy/MediaSessionCompat$Token;,
        Landroidx/media3/session/legacy/MediaSessionCompat$QueueItem;,
        Landroidx/media3/session/legacy/MediaSessionCompat$RegistrationCallbackHandler;,
        Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi18;,
        Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplBase;,
        Landroidx/media3/session/legacy/MediaSessionCompat$ResultReceiverWrapper;
    }
.end annotation


# static fields
.field public static final ACTION_ARGUMENT_CAPTIONING_ENABLED:Ljava/lang/String; = "android.support.v4.media.session.action.ARGUMENT_CAPTIONING_ENABLED"

.field public static final ACTION_ARGUMENT_EXTRAS:Ljava/lang/String; = "android.support.v4.media.session.action.ARGUMENT_EXTRAS"

.field public static final ACTION_ARGUMENT_MEDIA_ID:Ljava/lang/String; = "android.support.v4.media.session.action.ARGUMENT_MEDIA_ID"

.field public static final ACTION_ARGUMENT_PLAYBACK_SPEED:Ljava/lang/String; = "android.support.v4.media.session.action.ARGUMENT_PLAYBACK_SPEED"

.field public static final ACTION_ARGUMENT_QUERY:Ljava/lang/String; = "android.support.v4.media.session.action.ARGUMENT_QUERY"

.field public static final ACTION_ARGUMENT_RATING:Ljava/lang/String; = "android.support.v4.media.session.action.ARGUMENT_RATING"

.field public static final ACTION_ARGUMENT_REPEAT_MODE:Ljava/lang/String; = "android.support.v4.media.session.action.ARGUMENT_REPEAT_MODE"

.field public static final ACTION_ARGUMENT_SHUFFLE_MODE:Ljava/lang/String; = "android.support.v4.media.session.action.ARGUMENT_SHUFFLE_MODE"

.field public static final ACTION_ARGUMENT_URI:Ljava/lang/String; = "android.support.v4.media.session.action.ARGUMENT_URI"

.field public static final ACTION_FLAG_AS_INAPPROPRIATE:Ljava/lang/String; = "android.support.v4.media.session.action.FLAG_AS_INAPPROPRIATE"

.field public static final ACTION_FOLLOW:Ljava/lang/String; = "android.support.v4.media.session.action.FOLLOW"

.field public static final ACTION_PLAY_FROM_URI:Ljava/lang/String; = "android.support.v4.media.session.action.PLAY_FROM_URI"

.field public static final ACTION_PREPARE:Ljava/lang/String; = "android.support.v4.media.session.action.PREPARE"

.field public static final ACTION_PREPARE_FROM_MEDIA_ID:Ljava/lang/String; = "android.support.v4.media.session.action.PREPARE_FROM_MEDIA_ID"

.field public static final ACTION_PREPARE_FROM_SEARCH:Ljava/lang/String; = "android.support.v4.media.session.action.PREPARE_FROM_SEARCH"

.field public static final ACTION_PREPARE_FROM_URI:Ljava/lang/String; = "android.support.v4.media.session.action.PREPARE_FROM_URI"

.field public static final ACTION_SET_CAPTIONING_ENABLED:Ljava/lang/String; = "android.support.v4.media.session.action.SET_CAPTIONING_ENABLED"

.field public static final ACTION_SET_PLAYBACK_SPEED:Ljava/lang/String; = "android.support.v4.media.session.action.SET_PLAYBACK_SPEED"

.field public static final ACTION_SET_RATING:Ljava/lang/String; = "android.support.v4.media.session.action.SET_RATING"

.field public static final ACTION_SET_REPEAT_MODE:Ljava/lang/String; = "android.support.v4.media.session.action.SET_REPEAT_MODE"

.field public static final ACTION_SET_SHUFFLE_MODE:Ljava/lang/String; = "android.support.v4.media.session.action.SET_SHUFFLE_MODE"

.field public static final ACTION_SKIP_AD:Ljava/lang/String; = "android.support.v4.media.session.action.SKIP_AD"

.field public static final ACTION_UNFOLLOW:Ljava/lang/String; = "android.support.v4.media.session.action.UNFOLLOW"

.field public static final ARGUMENT_MEDIA_ATTRIBUTE:Ljava/lang/String; = "android.support.v4.media.session.ARGUMENT_MEDIA_ATTRIBUTE"

.field public static final ARGUMENT_MEDIA_ATTRIBUTE_VALUE:Ljava/lang/String; = "android.support.v4.media.session.ARGUMENT_MEDIA_ATTRIBUTE_VALUE"

.field private static final DATA_CALLING_PACKAGE:Ljava/lang/String; = "data_calling_pkg"

.field private static final DATA_CALLING_PID:Ljava/lang/String; = "data_calling_pid"

.field private static final DATA_CALLING_UID:Ljava/lang/String; = "data_calling_uid"

.field private static final DATA_EXTRAS:Ljava/lang/String; = "data_extras"

.field public static final FLAG_HANDLES_MEDIA_BUTTONS:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FLAG_HANDLES_QUEUE_COMMANDS:I = 0x4

.field public static final FLAG_HANDLES_TRANSPORT_CONTROLS:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final KEY_EXTRA_BINDER:Ljava/lang/String; = "android.support.v4.media.session.EXTRA_BINDER"

.field public static final KEY_SESSION2_TOKEN:Ljava/lang/String; = "android.support.v4.media.session.SESSION_TOKEN2"

.field public static final KEY_TOKEN:Ljava/lang/String; = "android.support.v4.media.session.TOKEN"

.field private static final MAX_BITMAP_SIZE_IN_DP:I = 0x140

.field public static final MEDIA_ATTRIBUTE_ALBUM:I = 0x1

.field public static final MEDIA_ATTRIBUTE_ARTIST:I = 0x0

.field public static final MEDIA_ATTRIBUTE_PLAYLIST:I = 0x2

.field static final TAG:Ljava/lang/String; = "MediaSessionCompat"

.field static sMaxBitmapSize:I


# instance fields
.field private final mActiveListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/media3/session/legacy/MediaSessionCompat$OnActiveChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mController:Landroidx/media3/session/legacy/MediaControllerCompat;

.field private final mImpl:Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "impl"    # Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;

    .line 500
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/media3/session/legacy/MediaSessionCompat;->mActiveListeners:Ljava/util/ArrayList;

    .line 501
    iput-object p2, p0, Landroidx/media3/session/legacy/MediaSessionCompat;->mImpl:Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;

    .line 502
    new-instance v0, Landroidx/media3/session/legacy/MediaControllerCompat;

    invoke-direct {v0, p1, p0}, Landroidx/media3/session/legacy/MediaControllerCompat;-><init>(Landroid/content/Context;Landroidx/media3/session/legacy/MediaSessionCompat;)V

    iput-object v0, p0, Landroidx/media3/session/legacy/MediaSessionCompat;->mController:Landroidx/media3/session/legacy/MediaControllerCompat;

    .line 503
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tag"    # Ljava/lang/String;

    .line 355
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Landroidx/media3/session/legacy/MediaSessionCompat;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;Landroid/app/PendingIntent;)V

    .line 356
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;Landroid/app/PendingIntent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "mbrComponent"    # Landroid/content/ComponentName;
    .param p4, "mbrIntent"    # Landroid/app/PendingIntent;

    .line 383
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Landroidx/media3/session/legacy/MediaSessionCompat;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;Landroid/app/PendingIntent;Landroid/os/Bundle;)V

    .line 384
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;Landroid/app/PendingIntent;Landroid/os/Bundle;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "mbrComponent"    # Landroid/content/ComponentName;
    .param p4, "mbrIntent"    # Landroid/app/PendingIntent;
    .param p5, "sessionInfo"    # Landroid/os/Bundle;

    .line 418
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Landroidx/media3/session/legacy/MediaSessionCompat;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;Landroid/app/PendingIntent;Landroid/os/Bundle;Landroidx/versionedparcelable/VersionedParcelable;)V

    .line 419
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;Landroid/app/PendingIntent;Landroid/os/Bundle;Landroidx/versionedparcelable/VersionedParcelable;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "mbrComponent"    # Landroid/content/ComponentName;
    .param p4, "mbrIntent"    # Landroid/app/PendingIntent;
    .param p5, "sessionInfo"    # Landroid/os/Bundle;
    .param p6, "session2Token"    # Landroidx/versionedparcelable/VersionedParcelable;

    .line 433
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/media3/session/legacy/MediaSessionCompat;->mActiveListeners:Ljava/util/ArrayList;

    .line 434
    if-eqz p1, :cond_8

    .line 437
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 441
    if-nez p3, :cond_0

    .line 442
    invoke-static {p1}, Landroidx/media3/session/legacy/MediaButtonReceiver;->getMediaButtonReceiverComponent(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object p3

    .line 443
    if-nez p3, :cond_0

    .line 444
    const-string v0, "MediaSessionCompat"

    const-string v1, "Couldn\'t find a unique registered media button receiver in the given context."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    :cond_0
    if-eqz p3, :cond_2

    if-nez p4, :cond_2

    .line 451
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 453
    .local v0, "mediaButtonIntent":Landroid/content/Intent;
    invoke-virtual {v0, p3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 454
    nop

    .line 459
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1f

    const/4 v3, 0x0

    if-lt v1, v2, :cond_1

    const/high16 v1, 0x2000000

    goto :goto_0

    :cond_1
    move v1, v3

    .line 455
    :goto_0
    invoke-static {p1, v3, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p4

    .line 462
    .end local v0    # "mediaButtonIntent":Landroid/content/Intent;
    :cond_2
    nop

    .line 463
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_3

    .line 464
    new-instance v0, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi29;

    invoke-direct {v0, p1, p2, p6, p5}, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi29;-><init>(Landroid/content/Context;Ljava/lang/String;Landroidx/versionedparcelable/VersionedParcelable;Landroid/os/Bundle;)V

    iput-object v0, p0, Landroidx/media3/session/legacy/MediaSessionCompat;->mImpl:Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;

    goto :goto_1

    .line 465
    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_4

    .line 466
    new-instance v0, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi28;

    invoke-direct {v0, p1, p2, p6, p5}, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi28;-><init>(Landroid/content/Context;Ljava/lang/String;Landroidx/versionedparcelable/VersionedParcelable;Landroid/os/Bundle;)V

    iput-object v0, p0, Landroidx/media3/session/legacy/MediaSessionCompat;->mImpl:Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;

    goto :goto_1

    .line 467
    :cond_4
    nop

    .line 468
    new-instance v0, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi22;

    invoke-direct {v0, p1, p2, p6, p5}, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi22;-><init>(Landroid/content/Context;Ljava/lang/String;Landroidx/versionedparcelable/VersionedParcelable;Landroid/os/Bundle;)V

    iput-object v0, p0, Landroidx/media3/session/legacy/MediaSessionCompat;->mImpl:Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;

    .line 473
    :goto_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 474
    .local v0, "myLooper":Landroid/os/Looper;
    new-instance v1, Landroid/os/Handler;

    if-eqz v0, :cond_5

    move-object v2, v0

    goto :goto_2

    :cond_5
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    :goto_2
    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 475
    .local v1, "handler":Landroid/os/Handler;
    new-instance v2, Landroidx/media3/session/legacy/MediaSessionCompat$1;

    invoke-direct {v2, p0}, Landroidx/media3/session/legacy/MediaSessionCompat$1;-><init>(Landroidx/media3/session/legacy/MediaSessionCompat;)V

    invoke-virtual {p0, v2, v1}, Landroidx/media3/session/legacy/MediaSessionCompat;->setCallback(Landroidx/media3/session/legacy/MediaSessionCompat$Callback;Landroid/os/Handler;)V

    .line 476
    iget-object v2, p0, Landroidx/media3/session/legacy/MediaSessionCompat;->mImpl:Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;

    invoke-interface {v2, p4}, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;->setMediaButtonReceiver(Landroid/app/PendingIntent;)V

    .line 477
    .end local v0    # "myLooper":Landroid/os/Looper;
    .end local v1    # "handler":Landroid/os/Handler;
    nop

    .line 482
    new-instance v0, Landroidx/media3/session/legacy/MediaControllerCompat;

    invoke-direct {v0, p1, p0}, Landroidx/media3/session/legacy/MediaControllerCompat;-><init>(Landroid/content/Context;Landroidx/media3/session/legacy/MediaSessionCompat;)V

    iput-object v0, p0, Landroidx/media3/session/legacy/MediaSessionCompat;->mController:Landroidx/media3/session/legacy/MediaControllerCompat;

    .line 484
    sget v0, Landroidx/media3/session/legacy/MediaSessionCompat;->sMaxBitmapSize:I

    if-nez v0, :cond_6

    .line 485
    nop

    .line 490
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 487
    const/4 v1, 0x1

    const/high16 v2, 0x43a00000    # 320.0f

    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Landroidx/media3/session/legacy/MediaSessionCompat;->sMaxBitmapSize:I

    .line 493
    :cond_6
    return-void

    .line 438
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "tag must not be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 435
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static ensureClassLoader(Landroid/os/Bundle;)V
    .locals 1
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 935
    if-eqz p0, :cond_0

    .line 936
    const-class v0, Landroidx/media3/session/legacy/MediaSessionCompat;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 938
    :cond_0
    return-void
.end method

.method public static fromMediaSession(Landroid/content/Context;Ljava/lang/Object;)Landroidx/media3/session/legacy/MediaSessionCompat;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mediaSession"    # Ljava/lang/Object;

    .line 918
    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    .line 922
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1

    .line 923
    new-instance v0, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi29;

    invoke-direct {v0, p1}, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi29;-><init>(Ljava/lang/Object;)V

    .local v0, "impl":Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;
    goto :goto_0

    .line 924
    .end local v0    # "impl":Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_2

    .line 925
    new-instance v0, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi28;

    invoke-direct {v0, p1}, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi28;-><init>(Ljava/lang/Object;)V

    .restart local v0    # "impl":Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;
    goto :goto_0

    .line 928
    .end local v0    # "impl":Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;
    :cond_2
    new-instance v0, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi21;

    invoke-direct {v0, p1}, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi21;-><init>(Ljava/lang/Object;)V

    .line 930
    .restart local v0    # "impl":Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;
    :goto_0
    new-instance v1, Landroidx/media3/session/legacy/MediaSessionCompat;

    invoke-direct {v1, p0, v0}, Landroidx/media3/session/legacy/MediaSessionCompat;-><init>(Landroid/content/Context;Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;)V

    return-object v1

    .line 919
    .end local v0    # "impl":Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;
    :cond_3
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method static getStateWithUpdatedPosition(Landroidx/media3/session/legacy/PlaybackStateCompat;Landroidx/media3/session/legacy/MediaMetadataCompat;)Landroidx/media3/session/legacy/PlaybackStateCompat;
    .locals 18
    .param p0, "state"    # Landroidx/media3/session/legacy/PlaybackStateCompat;
    .param p1, "metadata"    # Landroidx/media3/session/legacy/MediaMetadataCompat;

    .line 965
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz v0, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/legacy/PlaybackStateCompat;->getPosition()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    goto/16 :goto_2

    .line 969
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/legacy/PlaybackStateCompat;->getState()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    .line 970
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/legacy/PlaybackStateCompat;->getState()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    .line 971
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/legacy/PlaybackStateCompat;->getState()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_5

    .line 972
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/legacy/PlaybackStateCompat;->getLastPositionUpdateTime()J

    move-result-wide v2

    .line 973
    .local v2, "updateTime":J
    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_5

    .line 974
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    .line 975
    .local v14, "currentTime":J
    nop

    .line 976
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/legacy/PlaybackStateCompat;->getPlaybackSpeed()F

    move-result v6

    sub-long v7, v14, v2

    long-to-float v7, v7

    mul-float/2addr v6, v7

    float-to-long v6, v6

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/legacy/PlaybackStateCompat;->getPosition()J

    move-result-wide v8

    add-long/2addr v6, v8

    .line 977
    .local v6, "position":J
    const-wide/16 v8, -0x1

    .line 978
    .local v8, "duration":J
    if-eqz v1, :cond_2

    const-string v10, "android.media.metadata.DURATION"

    invoke-virtual {v1, v10}, Landroidx/media3/session/legacy/MediaMetadataCompat;->containsKey(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 979
    invoke-virtual {v1, v10}, Landroidx/media3/session/legacy/MediaMetadataCompat;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    move-wide/from16 v16, v8

    goto :goto_0

    .line 982
    :cond_2
    move-wide/from16 v16, v8

    .end local v8    # "duration":J
    .local v16, "duration":J
    :goto_0
    cmp-long v8, v16, v4

    if-ltz v8, :cond_3

    cmp-long v8, v6, v16

    if-lez v8, :cond_3

    .line 983
    move-wide/from16 v6, v16

    move-wide v4, v6

    goto :goto_1

    .line 984
    :cond_3
    cmp-long v4, v6, v4

    if-gez v4, :cond_4

    .line 985
    const-wide/16 v6, 0x0

    move-wide v4, v6

    goto :goto_1

    .line 984
    :cond_4
    move-wide v4, v6

    .line 987
    .end local v6    # "position":J
    .local v4, "position":J
    :goto_1
    new-instance v7, Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;

    invoke-direct {v7, v0}, Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;-><init>(Landroidx/media3/session/legacy/PlaybackStateCompat;)V

    .line 988
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/legacy/PlaybackStateCompat;->getState()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/legacy/PlaybackStateCompat;->getPlaybackSpeed()F

    move-result v11

    move-wide v9, v4

    move-wide v12, v14

    invoke-virtual/range {v7 .. v13}, Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;->setState(IJFJ)Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;

    move-result-object v6

    .line 989
    invoke-virtual {v6}, Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;->build()Landroidx/media3/session/legacy/PlaybackStateCompat;

    move-result-object v6

    .line 987
    return-object v6

    .line 992
    .end local v2    # "updateTime":J
    .end local v4    # "position":J
    .end local v14    # "currentTime":J
    .end local v16    # "duration":J
    :cond_5
    return-object v0

    .line 966
    :cond_6
    :goto_2
    return-object v0
.end method

.method public static unparcelWithClassLoader(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 4
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 947
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 948
    return-object v0

    .line 950
    :cond_0
    invoke-static {p0}, Landroidx/media3/session/legacy/MediaSessionCompat;->ensureClassLoader(Landroid/os/Bundle;)V

    .line 952
    :try_start_0
    invoke-virtual {p0}, Landroid/os/Bundle;->isEmpty()Z
    :try_end_0
    .catch Landroid/os/BadParcelableException; {:try_start_0 .. :try_end_0} :catch_0

    .line 953
    return-object p0

    .line 954
    :catch_0
    move-exception v1

    .line 956
    .local v1, "e":Landroid/os/BadParcelableException;
    const-string v2, "MediaSessionCompat"

    const-string v3, "Could not unparcel the data."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    return-object v0
.end method


# virtual methods
.method public addOnActiveChangeListener(Landroidx/media3/session/legacy/MediaSessionCompat$OnActiveChangeListener;)V
    .locals 2
    .param p1, "listener"    # Landroidx/media3/session/legacy/MediaSessionCompat$OnActiveChangeListener;

    .line 881
    if-eqz p1, :cond_0

    .line 884
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaSessionCompat;->mActiveListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 885
    return-void

    .line 882
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Listener may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCallingPackage()Ljava/lang/String;
    .locals 1

    .line 871
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaSessionCompat;->mImpl:Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;

    invoke-interface {v0}, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getController()Landroidx/media3/session/legacy/MediaControllerCompat;
    .locals 1

    .line 685
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaSessionCompat;->mController:Landroidx/media3/session/legacy/MediaControllerCompat;

    return-object v0
.end method

.method public final getCurrentControllerInfo()Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;
    .locals 1

    .line 861
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaSessionCompat;->mImpl:Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;

    invoke-interface {v0}, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;->getCurrentControllerInfo()Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;

    move-result-object v0

    return-object v0
.end method

.method public getMediaSession()Ljava/lang/Object;
    .locals 1

    .line 823
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaSessionCompat;->mImpl:Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;

    invoke-interface {v0}, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;->getMediaSession()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getRemoteControlClient()Ljava/lang/Object;
    .locals 1

    .line 836
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaSessionCompat;->mImpl:Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;

    invoke-interface {v0}, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;->getRemoteControlClient()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getSessionToken()Landroidx/media3/session/legacy/MediaSessionCompat$Token;
    .locals 1

    .line 675
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaSessionCompat;->mImpl:Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;

    invoke-interface {v0}, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;->getSessionToken()Landroidx/media3/session/legacy/MediaSessionCompat$Token;

    move-result-object v0

    return-object v0
.end method

.method public isActive()Z
    .locals 1

    .line 637
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaSessionCompat;->mImpl:Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;

    invoke-interface {v0}, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;->isActive()Z

    move-result v0

    return v0
.end method

.method public release()V
    .locals 1

    .line 660
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaSessionCompat;->mImpl:Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;

    invoke-interface {v0}, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;->release()V

    .line 661
    return-void
.end method

.method public removeOnActiveChangeListener(Landroidx/media3/session/legacy/MediaSessionCompat$OnActiveChangeListener;)V
    .locals 2
    .param p1, "listener"    # Landroidx/media3/session/legacy/MediaSessionCompat$OnActiveChangeListener;

    .line 893
    if-eqz p1, :cond_0

    .line 896
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaSessionCompat;->mActiveListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 897
    return-void

    .line 894
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Listener may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public sendSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 648
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 651
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaSessionCompat;->mImpl:Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;

    invoke-interface {v0, p1, p2}, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;->sendSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 652
    return-void

    .line 649
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "event cannot be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setActive(Z)V
    .locals 2
    .param p1, "active"    # Z

    .line 625
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaSessionCompat;->mImpl:Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;

    invoke-interface {v0, p1}, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;->setActive(Z)V

    .line 626
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaSessionCompat;->mActiveListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/session/legacy/MediaSessionCompat$OnActiveChangeListener;

    .line 627
    .local v1, "listener":Landroidx/media3/session/legacy/MediaSessionCompat$OnActiveChangeListener;
    invoke-interface {v1}, Landroidx/media3/session/legacy/MediaSessionCompat$OnActiveChangeListener;->onActiveChanged()V

    .line 628
    .end local v1    # "listener":Landroidx/media3/session/legacy/MediaSessionCompat$OnActiveChangeListener;
    goto :goto_0

    .line 629
    :cond_0
    return-void
.end method

.method public setCallback(Landroidx/media3/session/legacy/MediaSessionCompat$Callback;)V
    .locals 1
    .param p1, "callback"    # Landroidx/media3/session/legacy/MediaSessionCompat$Callback;

    .line 516
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/media3/session/legacy/MediaSessionCompat;->setCallback(Landroidx/media3/session/legacy/MediaSessionCompat$Callback;Landroid/os/Handler;)V

    .line 517
    return-void
.end method

.method public setCallback(Landroidx/media3/session/legacy/MediaSessionCompat$Callback;Landroid/os/Handler;)V
    .locals 2
    .param p1, "callback"    # Landroidx/media3/session/legacy/MediaSessionCompat$Callback;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 531
    if-nez p1, :cond_0

    .line 532
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaSessionCompat;->mImpl:Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;

    const/4 v1, 0x0

    invoke-interface {v0, v1, v1}, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;->setCallback(Landroidx/media3/session/legacy/MediaSessionCompat$Callback;Landroid/os/Handler;)V

    goto :goto_1

    .line 534
    :cond_0
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaSessionCompat;->mImpl:Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;

    if-eqz p2, :cond_1

    move-object v1, p2

    goto :goto_0

    :cond_1
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    :goto_0
    invoke-interface {v0, p1, v1}, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;->setCallback(Landroidx/media3/session/legacy/MediaSessionCompat$Callback;Landroid/os/Handler;)V

    .line 536
    :goto_1
    return-void
.end method

.method public setCaptioningEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 772
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaSessionCompat;->mImpl:Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;

    invoke-interface {v0, p1}, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;->setCaptioningEnabled(Z)V

    .line 773
    return-void
.end method

.method public setExtras(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 811
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaSessionCompat;->mImpl:Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;

    invoke-interface {v0, p1}, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;->setExtras(Landroid/os/Bundle;)V

    .line 812
    return-void
.end method

.method public setFlags(I)V
    .locals 1
    .param p1, "flags"    # I

    .line 579
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaSessionCompat;->mImpl:Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;

    invoke-interface {v0, p1}, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;->setFlags(I)V

    .line 580
    return-void
.end method

.method public setMediaButtonReceiver(Landroid/app/PendingIntent;)V
    .locals 1
    .param p1, "mbr"    # Landroid/app/PendingIntent;

    .line 570
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaSessionCompat;->mImpl:Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;

    invoke-interface {v0, p1}, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;->setMediaButtonReceiver(Landroid/app/PendingIntent;)V

    .line 571
    return-void
.end method

.method public setMetadata(Landroidx/media3/session/legacy/MediaMetadataCompat;)V
    .locals 1
    .param p1, "metadata"    # Landroidx/media3/session/legacy/MediaMetadataCompat;

    .line 706
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaSessionCompat;->mImpl:Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;

    invoke-interface {v0, p1}, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;->setMetadata(Landroidx/media3/session/legacy/MediaMetadataCompat;)V

    .line 707
    return-void
.end method

.method public setPlaybackState(Landroidx/media3/session/legacy/PlaybackStateCompat;)V
    .locals 1
    .param p1, "state"    # Landroidx/media3/session/legacy/PlaybackStateCompat;

    .line 694
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaSessionCompat;->mImpl:Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;

    invoke-interface {v0, p1}, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;->setPlaybackState(Landroidx/media3/session/legacy/PlaybackStateCompat;)V

    .line 695
    return-void
.end method

.method public setPlaybackToLocal(I)V
    .locals 1
    .param p1, "stream"    # I

    .line 592
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaSessionCompat;->mImpl:Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;

    invoke-interface {v0, p1}, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;->setPlaybackToLocal(I)V

    .line 593
    return-void
.end method

.method public setPlaybackToRemote(Landroidx/media3/session/legacy/VolumeProviderCompat;)V
    .locals 2
    .param p1, "volumeProvider"    # Landroidx/media3/session/legacy/VolumeProviderCompat;

    .line 608
    if-eqz p1, :cond_0

    .line 611
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaSessionCompat;->mImpl:Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;

    invoke-interface {v0, p1}, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;->setPlaybackToRemote(Landroidx/media3/session/legacy/VolumeProviderCompat;)V

    .line 612
    return-void

    .line 609
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "volumeProvider may not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setQueue(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/session/legacy/MediaSessionCompat$QueueItem;",
            ">;)V"
        }
    .end annotation

    .line 720
    .local p1, "queue":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/session/legacy/MediaSessionCompat$QueueItem;>;"
    if-eqz p1, :cond_2

    .line 721
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 722
    .local v0, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/session/legacy/MediaSessionCompat$QueueItem;

    .line 723
    .local v2, "item":Landroidx/media3/session/legacy/MediaSessionCompat$QueueItem;
    if-eqz v2, :cond_1

    .line 726
    invoke-virtual {v2}, Landroidx/media3/session/legacy/MediaSessionCompat$QueueItem;->getQueueId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 727
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Found duplicate queue id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 729
    invoke-virtual {v2}, Landroidx/media3/session/legacy/MediaSessionCompat$QueueItem;->getQueueId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "id of each queue item should be unique"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 727
    const-string v5, "MediaSessionCompat"

    invoke-static {v5, v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 732
    :cond_0
    invoke-virtual {v2}, Landroidx/media3/session/legacy/MediaSessionCompat$QueueItem;->getQueueId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 733
    .end local v2    # "item":Landroidx/media3/session/legacy/MediaSessionCompat$QueueItem;
    goto :goto_0

    .line 724
    .restart local v2    # "item":Landroidx/media3/session/legacy/MediaSessionCompat$QueueItem;
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "queue shouldn\'t have null items"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 735
    .end local v0    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    .end local v2    # "item":Landroidx/media3/session/legacy/MediaSessionCompat$QueueItem;
    :cond_2
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaSessionCompat;->mImpl:Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;

    invoke-interface {v0, p1}, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;->setQueue(Ljava/util/List;)V

    .line 736
    return-void
.end method

.method public setQueueTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 745
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaSessionCompat;->mImpl:Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;

    invoke-interface {v0, p1}, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;->setQueueTitle(Ljava/lang/CharSequence;)V

    .line 746
    return-void
.end method

.method public setRatingType(I)V
    .locals 1
    .param p1, "type"    # I

    .line 763
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaSessionCompat;->mImpl:Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;

    invoke-interface {v0, p1}, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;->setRatingType(I)V

    .line 764
    return-void
.end method

.method public setRegistrationCallback(Landroidx/media3/session/legacy/MediaSessionCompat$RegistrationCallback;Landroid/os/Handler;)V
    .locals 1
    .param p1, "callback"    # Landroidx/media3/session/legacy/MediaSessionCompat$RegistrationCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 545
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaSessionCompat;->mImpl:Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;

    invoke-interface {v0, p1, p2}, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;->setRegistrationCallback(Landroidx/media3/session/legacy/MediaSessionCompat$RegistrationCallback;Landroid/os/Handler;)V

    .line 546
    return-void
.end method

.method public setRepeatMode(I)V
    .locals 1
    .param p1, "repeatMode"    # I

    .line 786
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaSessionCompat;->mImpl:Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;

    invoke-interface {v0, p1}, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;->setRepeatMode(I)V

    .line 787
    return-void
.end method

.method public setSessionActivity(Landroid/app/PendingIntent;)V
    .locals 1
    .param p1, "pi"    # Landroid/app/PendingIntent;

    .line 556
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaSessionCompat;->mImpl:Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;

    invoke-interface {v0, p1}, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;->setSessionActivity(Landroid/app/PendingIntent;)V

    .line 557
    return-void
.end method

.method public setShuffleMode(I)V
    .locals 1
    .param p1, "shuffleMode"    # I

    .line 800
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaSessionCompat;->mImpl:Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;

    invoke-interface {v0, p1}, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImpl;->setShuffleMode(I)V

    .line 801
    return-void
.end method
