.class public final Lcom/muzk/app/playback/PlaybackService;
.super Landroidx/media3/session/MediaSessionService;
.source "PlaybackService.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/muzk/app/playback/PlaybackService$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 \u000f2\u00020\u0001:\u0001\u000fB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010\u0006\u001a\u00020\u0007H\u0016J\u0012\u0010\u0008\u001a\u0004\u0018\u00010\u00052\u0006\u0010\t\u001a\u00020\nH\u0016J\u0012\u0010\u000b\u001a\u00020\u00072\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH\u0016J\u0008\u0010\u000e\u001a\u00020\u0007H\u0016R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/muzk/app/playback/PlaybackService;",
        "Landroidx/media3/session/MediaSessionService;",
        "<init>",
        "()V",
        "session",
        "Landroidx/media3/session/MediaSession;",
        "onCreate",
        "",
        "onGetSession",
        "controllerInfo",
        "Landroidx/media3/session/MediaSession$ControllerInfo;",
        "onTaskRemoved",
        "rootIntent",
        "Landroid/content/Intent;",
        "onDestroy",
        "Companion",
        "app_debug"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/muzk/app/playback/PlaybackService$Companion;

.field private static final PREF_EQ_BANDS:Ljava/lang/String; = "eq_bands"

.field public static final PREF_EQ_ENABLED:Ljava/lang/String; = "eq_enabled"

.field private static volatile audioSessionId:I

.field private static volatile equalizer:Landroid/media/audiofx/Equalizer;


# instance fields
.field private session:Landroidx/media3/session/MediaSession;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/muzk/app/playback/PlaybackService$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/muzk/app/playback/PlaybackService$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/muzk/app/playback/PlaybackService;->Companion:Lcom/muzk/app/playback/PlaybackService$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Landroidx/media3/session/MediaSessionService;-><init>()V

    return-void
.end method

.method public static final synthetic access$getAudioSessionId$cp()I
    .locals 1

    .line 23
    sget v0, Lcom/muzk/app/playback/PlaybackService;->audioSessionId:I

    return v0
.end method

.method public static final synthetic access$getEqualizer$cp()Landroid/media/audiofx/Equalizer;
    .locals 1

    .line 23
    sget-object v0, Lcom/muzk/app/playback/PlaybackService;->equalizer:Landroid/media/audiofx/Equalizer;

    return-object v0
.end method

.method public static final synthetic access$setEqualizer$cp(Landroid/media/audiofx/Equalizer;)V
    .locals 0
    .param p0, "<set-?>"    # Landroid/media/audiofx/Equalizer;

    .line 23
    sput-object p0, Lcom/muzk/app/playback/PlaybackService;->equalizer:Landroid/media/audiofx/Equalizer;

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 8

    .line 28
    invoke-super {p0}, Landroidx/media3/session/MediaSessionService;->onCreate()V

    .line 29
    new-instance v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/media3/exoplayer/ExoPlayer$Builder;-><init>(Landroid/content/Context;)V

    .line 31
    new-instance v1, Landroidx/media3/common/AudioAttributes$Builder;

    invoke-direct {v1}, Landroidx/media3/common/AudioAttributes$Builder;-><init>()V

    .line 32
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/media3/common/AudioAttributes$Builder;->setUsage(I)Landroidx/media3/common/AudioAttributes$Builder;

    move-result-object v1

    .line 33
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroidx/media3/common/AudioAttributes$Builder;->setContentType(I)Landroidx/media3/common/AudioAttributes$Builder;

    move-result-object v1

    .line 34
    invoke-virtual {v1}, Landroidx/media3/common/AudioAttributes$Builder;->build()Landroidx/media3/common/AudioAttributes;

    move-result-object v1

    .line 35
    nop

    .line 30
    invoke-virtual {v0, v1, v2}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->setAudioAttributes(Landroidx/media3/common/AudioAttributes;Z)Landroidx/media3/exoplayer/ExoPlayer$Builder;

    move-result-object v0

    .line 37
    invoke-virtual {v0, v2}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->setHandleAudioBecomingNoisy(Z)Landroidx/media3/exoplayer/ExoPlayer$Builder;

    move-result-object v0

    .line 38
    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->build()Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object v0

    const-string v1, "build(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    nop

    .line 41
    .local v0, "player":Landroidx/media3/exoplayer/ExoPlayer;
    sget-object v1, Lcom/muzk/app/data/PlayStats;->Companion:Lcom/muzk/app/data/PlayStats$Companion;

    move-object v3, p0

    check-cast v3, Landroid/content/Context;

    invoke-virtual {v1, v3}, Lcom/muzk/app/data/PlayStats$Companion;->get(Landroid/content/Context;)Lcom/muzk/app/data/PlayStats;

    move-result-object v1

    .line 42
    .local v1, "stats":Lcom/muzk/app/data/PlayStats;
    new-instance v3, Lcom/muzk/app/playback/PlaybackService$onCreate$1;

    invoke-direct {v3, v1}, Lcom/muzk/app/playback/PlaybackService$onCreate$1;-><init>(Lcom/muzk/app/data/PlayStats;)V

    check-cast v3, Landroidx/media3/common/Player$Listener;

    invoke-interface {v0, v3}, Landroidx/media3/exoplayer/ExoPlayer;->addListener(Landroidx/media3/common/Player$Listener;)V

    .line 48
    invoke-interface {v0}, Landroidx/media3/exoplayer/ExoPlayer;->getAudioSessionId()I

    move-result v3

    sput v3, Lcom/muzk/app/playback/PlaybackService;->audioSessionId:I

    .line 50
    nop

    .line 51
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.media.action.OPEN_AUDIO_EFFECT_CONTROL_SESSION"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 52
    const-string v4, "android.media.extra.AUDIO_SESSION"

    sget v5, Lcom/muzk/app/playback/PlaybackService;->audioSessionId:I

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    .line 53
    const-string v4, "android.media.extra.PACKAGE_NAME"

    invoke-virtual {p0}, Lcom/muzk/app/playback/PlaybackService;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 54
    const-string v4, "android.media.extra.CONTENT_TYPE"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    .line 50
    invoke-virtual {p0, v3}, Lcom/muzk/app/playback/PlaybackService;->sendBroadcast(Landroid/content/Intent;)V

    .line 56
    move-object v3, p0

    check-cast v3, Landroid/content/Context;

    invoke-static {v3}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "eq_enabled"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 57
    sget-object v3, Lcom/muzk/app/playback/PlaybackService;->Companion:Lcom/muzk/app/playback/PlaybackService$Companion;

    move-object v4, p0

    check-cast v4, Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/muzk/app/playback/PlaybackService$Companion;->obtainEqualizer(Landroid/content/Context;)Landroid/media/audiofx/Equalizer;

    .line 61
    :cond_0
    move-object v3, p0

    check-cast v3, Landroid/content/Context;

    .line 62
    new-instance v4, Landroid/content/Intent;

    move-object v6, p0

    check-cast v6, Landroid/content/Context;

    const-class v7, Lcom/muzk/app/ui/MainActivity;

    invoke-direct {v4, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v6, "open_player"

    invoke-virtual {v4, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v2

    .line 63
    nop

    .line 60
    const/high16 v4, 0xc000000

    invoke-static {v3, v5, v2, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 65
    .local v2, "openApp":Landroid/app/PendingIntent;
    new-instance v3, Landroidx/media3/session/MediaSession$Builder;

    move-object v4, p0

    check-cast v4, Landroid/content/Context;

    move-object v5, v0

    check-cast v5, Landroidx/media3/common/Player;

    invoke-direct {v3, v4, v5}, Landroidx/media3/session/MediaSession$Builder;-><init>(Landroid/content/Context;Landroidx/media3/common/Player;)V

    .line 66
    invoke-virtual {v3, v2}, Landroidx/media3/session/MediaSession$Builder;->setSessionActivity(Landroid/app/PendingIntent;)Landroidx/media3/session/MediaSession$Builder;

    move-result-object v3

    .line 67
    invoke-virtual {v3}, Landroidx/media3/session/MediaSession$Builder;->build()Landroidx/media3/session/MediaSession;

    move-result-object v3

    .line 65
    iput-object v3, p0, Lcom/muzk/app/playback/PlaybackService;->session:Landroidx/media3/session/MediaSession;

    .line 68
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .line 81
    nop

    .line 82
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.CLOSE_AUDIO_EFFECT_CONTROL_SESSION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 83
    const-string v1, "android.media.extra.AUDIO_SESSION"

    sget v2, Lcom/muzk/app/playback/PlaybackService;->audioSessionId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 84
    const-string v1, "android.media.extra.PACKAGE_NAME"

    invoke-virtual {p0}, Lcom/muzk/app/playback/PlaybackService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 81
    invoke-virtual {p0, v0}, Lcom/muzk/app/playback/PlaybackService;->sendBroadcast(Landroid/content/Intent;)V

    .line 86
    sget-object v0, Lcom/muzk/app/playback/PlaybackService;->equalizer:Landroid/media/audiofx/Equalizer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/audiofx/Equalizer;->release()V

    .line 87
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/muzk/app/playback/PlaybackService;->equalizer:Landroid/media/audiofx/Equalizer;

    .line 88
    const/4 v1, 0x0

    sput v1, Lcom/muzk/app/playback/PlaybackService;->audioSessionId:I

    .line 89
    iget-object v1, p0, Lcom/muzk/app/playback/PlaybackService;->session:Landroidx/media3/session/MediaSession;

    if-eqz v1, :cond_1

    .local v1, "$this$onDestroy_u24lambda_u240":Landroidx/media3/session/MediaSession;
    const/4 v2, 0x0

    .line 90
    .local v2, "$i$a$-run-PlaybackService$onDestroy$1":I
    invoke-virtual {v1}, Landroidx/media3/session/MediaSession;->getPlayer()Landroidx/media3/common/Player;

    move-result-object v3

    invoke-interface {v3}, Landroidx/media3/common/Player;->release()V

    .line 91
    invoke-virtual {v1}, Landroidx/media3/session/MediaSession;->release()V

    .line 92
    nop

    .line 89
    .end local v1    # "$this$onDestroy_u24lambda_u240":Landroidx/media3/session/MediaSession;
    .end local v2    # "$i$a$-run-PlaybackService$onDestroy$1":I
    nop

    .line 93
    :cond_1
    iput-object v0, p0, Lcom/muzk/app/playback/PlaybackService;->session:Landroidx/media3/session/MediaSession;

    .line 94
    invoke-super {p0}, Landroidx/media3/session/MediaSessionService;->onDestroy()V

    .line 95
    return-void
.end method

.method public onGetSession(Landroidx/media3/session/MediaSession$ControllerInfo;)Landroidx/media3/session/MediaSession;
    .locals 1
    .param p1, "controllerInfo"    # Landroidx/media3/session/MediaSession$ControllerInfo;

    const-string v0, "controllerInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/muzk/app/playback/PlaybackService;->session:Landroidx/media3/session/MediaSession;

    return-object v0
.end method

.method public onTaskRemoved(Landroid/content/Intent;)V
    .locals 2
    .param p1, "rootIntent"    # Landroid/content/Intent;

    .line 74
    iget-object v0, p0, Lcom/muzk/app/playback/PlaybackService;->session:Landroidx/media3/session/MediaSession;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/media3/session/MediaSession;->getPlayer()Landroidx/media3/common/Player;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 75
    .local v0, "player":Landroidx/media3/common/Player;
    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroidx/media3/common/Player;->getPlayWhenReady()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Landroidx/media3/common/Player;->getMediaItemCount()I

    move-result v1

    if-nez v1, :cond_2

    .line 76
    :cond_1
    invoke-virtual {p0}, Lcom/muzk/app/playback/PlaybackService;->stopSelf()V

    .line 78
    :cond_2
    return-void
.end method
