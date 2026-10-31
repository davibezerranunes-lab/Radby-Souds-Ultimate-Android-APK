.class public final Landroidx/media3/session/legacy/MediaControllerCompat;
.super Ljava/lang/Object;
.source "MediaControllerCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImplApi21;,
        Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImplApi29;,
        Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImpl;,
        Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImplBase;,
        Landroidx/media3/session/legacy/MediaControllerCompat$TransportControls;,
        Landroidx/media3/session/legacy/MediaControllerCompat$PlaybackInfo;,
        Landroidx/media3/session/legacy/MediaControllerCompat$Callback;,
        Landroidx/media3/session/legacy/MediaControllerCompat$TransportControlsApi29;,
        Landroidx/media3/session/legacy/MediaControllerCompat$TransportControlsApi24;,
        Landroidx/media3/session/legacy/MediaControllerCompat$TransportControlsApi23;,
        Landroidx/media3/session/legacy/MediaControllerCompat$TransportControlsApi21;,
        Landroidx/media3/session/legacy/MediaControllerCompat$TransportControlsBase;
    }
.end annotation


# static fields
.field public static final COMMAND_ADD_QUEUE_ITEM:Ljava/lang/String; = "android.support.v4.media.session.command.ADD_QUEUE_ITEM"

.field public static final COMMAND_ADD_QUEUE_ITEM_AT:Ljava/lang/String; = "android.support.v4.media.session.command.ADD_QUEUE_ITEM_AT"

.field public static final COMMAND_ARGUMENT_INDEX:Ljava/lang/String; = "android.support.v4.media.session.command.ARGUMENT_INDEX"

.field public static final COMMAND_ARGUMENT_MEDIA_DESCRIPTION:Ljava/lang/String; = "android.support.v4.media.session.command.ARGUMENT_MEDIA_DESCRIPTION"

.field public static final COMMAND_GET_EXTRA_BINDER:Ljava/lang/String; = "android.support.v4.media.session.command.GET_EXTRA_BINDER"

.field public static final COMMAND_REMOVE_QUEUE_ITEM:Ljava/lang/String; = "android.support.v4.media.session.command.REMOVE_QUEUE_ITEM"

.field public static final COMMAND_REMOVE_QUEUE_ITEM_AT:Ljava/lang/String; = "android.support.v4.media.session.command.REMOVE_QUEUE_ITEM_AT"

.field static final TAG:Ljava/lang/String; = "MediaControllerCompat"


# instance fields
.field private final mImpl:Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImpl;

.field private final mRegisteredCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/media3/session/legacy/MediaControllerCompat$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private final mToken:Landroidx/media3/session/legacy/MediaSessionCompat$Token;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/media3/session/legacy/MediaSessionCompat$Token;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sessionToken"    # Landroidx/media3/session/legacy/MediaSessionCompat$Token;

    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 216
    if-eqz p2, :cond_1

    .line 219
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/session/legacy/MediaControllerCompat;->mRegisteredCallbacks:Ljava/util/Set;

    .line 220
    iput-object p2, p0, Landroidx/media3/session/legacy/MediaControllerCompat;->mToken:Landroidx/media3/session/legacy/MediaSessionCompat$Token;

    .line 222
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 223
    new-instance v0, Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImplApi29;

    invoke-direct {v0, p1, p2}, Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImplApi29;-><init>(Landroid/content/Context;Landroidx/media3/session/legacy/MediaSessionCompat$Token;)V

    iput-object v0, p0, Landroidx/media3/session/legacy/MediaControllerCompat;->mImpl:Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImpl;

    goto :goto_0

    .line 224
    :cond_0
    nop

    .line 225
    new-instance v0, Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImplApi21;

    invoke-direct {v0, p1, p2}, Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImplApi21;-><init>(Landroid/content/Context;Landroidx/media3/session/legacy/MediaSessionCompat$Token;)V

    iput-object v0, p0, Landroidx/media3/session/legacy/MediaControllerCompat;->mImpl:Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImpl;

    .line 229
    :goto_0
    return-void

    .line 217
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sessionToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/media3/session/legacy/MediaSessionCompat;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "session"    # Landroidx/media3/session/legacy/MediaSessionCompat;

    .line 205
    invoke-virtual {p2}, Landroidx/media3/session/legacy/MediaSessionCompat;->getSessionToken()Landroidx/media3/session/legacy/MediaSessionCompat$Token;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroidx/media3/session/legacy/MediaControllerCompat;-><init>(Landroid/content/Context;Landroidx/media3/session/legacy/MediaSessionCompat$Token;)V

    .line 206
    return-void
.end method

.method public static getMediaController(Landroid/app/Activity;)Landroidx/media3/session/legacy/MediaControllerCompat;
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .line 162
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    sget v1, Landroidx/media3/session/R$id;->media_controller_compat_view_tag:I

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 163
    .local v0, "tag":Ljava/lang/Object;
    instance-of v1, v0, Landroidx/media3/session/legacy/MediaControllerCompat;

    if-eqz v1, :cond_0

    .line 164
    move-object v1, v0

    check-cast v1, Landroidx/media3/session/legacy/MediaControllerCompat;

    return-object v1

    .line 165
    :cond_0
    nop

    .line 166
    invoke-static {p0}, Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImplApi21;->getMediaController(Landroid/app/Activity;)Landroidx/media3/session/legacy/MediaControllerCompat;

    move-result-object v1

    return-object v1
.end method

.method public static setMediaController(Landroid/app/Activity;Landroidx/media3/session/legacy/MediaControllerCompat;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "mediaController"    # Landroidx/media3/session/legacy/MediaControllerCompat;

    .line 141
    nop

    .line 142
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 143
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    sget v1, Landroidx/media3/session/R$id;->media_controller_compat_view_tag:I

    .line 144
    invoke-virtual {v0, v1, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 145
    nop

    .line 146
    invoke-static {p0, p1}, Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImplApi21;->setMediaController(Landroid/app/Activity;Landroidx/media3/session/legacy/MediaControllerCompat;)V

    .line 148
    return-void
.end method

.method static validateCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p0, "action"    # Ljava/lang/String;
    .param p1, "args"    # Landroid/os/Bundle;

    .line 173
    if-nez p0, :cond_0

    .line 174
    return-void

    .line 176
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_1
    goto :goto_0

    :sswitch_0
    const-string v0, "android.support.v4.media.session.action.UNFOLLOW"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_1
    const-string v0, "android.support.v4.media.session.action.FOLLOW"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 179
    :pswitch_0
    if-eqz p1, :cond_2

    const-string v0, "android.support.v4.media.session.ARGUMENT_MEDIA_ATTRIBUTE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    .line 180
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "An extra field android.support.v4.media.session.ARGUMENT_MEDIA_ATTRIBUTE is required for this action "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x50603a8b -> :sswitch_1
        0x1dfb584e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public addQueueItem(Landroidx/media3/session/legacy/MediaDescriptionCompat;)V
    .locals 1
    .param p1, "description"    # Landroidx/media3/session/legacy/MediaDescriptionCompat;

    .line 303
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaControllerCompat;->mImpl:Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImpl;

    invoke-interface {v0, p1}, Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImpl;->addQueueItem(Landroidx/media3/session/legacy/MediaDescriptionCompat;)V

    .line 304
    return-void
.end method

.method public addQueueItem(Landroidx/media3/session/legacy/MediaDescriptionCompat;I)V
    .locals 1
    .param p1, "description"    # Landroidx/media3/session/legacy/MediaDescriptionCompat;
    .param p2, "index"    # I

    .line 323
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaControllerCompat;->mImpl:Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImpl;

    invoke-interface {v0, p1, p2}, Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImpl;->addQueueItem(Landroidx/media3/session/legacy/MediaDescriptionCompat;I)V

    .line 324
    return-void
.end method

.method public adjustVolume(II)V
    .locals 1
    .param p1, "direction"    # I
    .param p2, "flags"    # I

    .line 516
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaControllerCompat;->mImpl:Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImpl;

    invoke-interface {v0, p1, p2}, Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImpl;->adjustVolume(II)V

    .line 517
    return-void
.end method

.method public dispatchMediaButtonEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;

    .line 248
    if-eqz p1, :cond_0

    .line 251
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaControllerCompat;->mImpl:Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImpl;

    invoke-interface {v0, p1}, Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImpl;->dispatchMediaButtonEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 249
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "KeyEvent may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .line 375
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaControllerCompat;->mImpl:Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImpl;

    invoke-interface {v0}, Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImpl;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getFlags()J
    .locals 2

    .line 447
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaControllerCompat;->mImpl:Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImpl;

    invoke-interface {v0}, Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImpl;->getFlags()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMediaController()Ljava/lang/Object;
    .locals 1

    .line 644
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaControllerCompat;->mImpl:Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImpl;

    invoke-interface {v0}, Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImpl;->getMediaController()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getMetadata()Landroidx/media3/session/legacy/MediaMetadataCompat;
    .locals 1

    .line 276
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaControllerCompat;->mImpl:Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImpl;

    invoke-interface {v0}, Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImpl;->getMetadata()Landroidx/media3/session/legacy/MediaMetadataCompat;

    move-result-object v0

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 617
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaControllerCompat;->mImpl:Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImpl;

    invoke-interface {v0}, Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImpl;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPlaybackInfo()Landroidx/media3/session/legacy/MediaControllerCompat$PlaybackInfo;
    .locals 1

    .line 457
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaControllerCompat;->mImpl:Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImpl;

    invoke-interface {v0}, Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImpl;->getPlaybackInfo()Landroidx/media3/session/legacy/MediaControllerCompat$PlaybackInfo;

    move-result-object v0

    return-object v0
.end method

.method public getPlaybackState()Landroidx/media3/session/legacy/PlaybackStateCompat;
    .locals 1

    .line 266
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaControllerCompat;->mImpl:Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImpl;

    invoke-interface {v0}, Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImpl;->getPlaybackState()Landroidx/media3/session/legacy/PlaybackStateCompat;

    move-result-object v0

    return-object v0
.end method

.method public getQueue()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/media3/session/legacy/MediaSessionCompat$QueueItem;",
            ">;"
        }
    .end annotation

    .line 287
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaControllerCompat;->mImpl:Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImpl;

    invoke-interface {v0}, Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImpl;->getQueue()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getQueueTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 369
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaControllerCompat;->mImpl:Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImpl;

    invoke-interface {v0}, Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImpl;->getQueueTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getRatingType()I
    .locals 1

    .line 399
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaControllerCompat;->mImpl:Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImpl;

    invoke-interface {v0}, Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImpl;->getRatingType()I

    move-result v0

    return v0
.end method

.method public getRepeatMode()I
    .locals 1

    .line 425
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaControllerCompat;->mImpl:Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImpl;

    invoke-interface {v0}, Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImpl;->getRepeatMode()I

    move-result v0

    return v0
.end method

.method public getSession2Token()Landroidx/versionedparcelable/VersionedParcelable;
    .locals 1

    .line 487
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaControllerCompat;->mToken:Landroidx/media3/session/legacy/MediaSessionCompat$Token;

    invoke-virtual {v0}, Landroidx/media3/session/legacy/MediaSessionCompat$Token;->getSession2Token()Landroidx/versionedparcelable/VersionedParcelable;

    move-result-object v0

    return-object v0
.end method

.method public getSessionActivity()Landroid/app/PendingIntent;
    .locals 1

    .line 467
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaControllerCompat;->mImpl:Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImpl;

    invoke-interface {v0}, Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImpl;->getSessionActivity()Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public getSessionInfo()Landroid/os/Bundle;
    .locals 1

    .line 632
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaControllerCompat;->mImpl:Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImpl;

    invoke-interface {v0}, Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImpl;->getSessionInfo()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getSessionToken()Landroidx/media3/session/legacy/MediaSessionCompat$Token;
    .locals 1

    .line 476
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaControllerCompat;->mToken:Landroidx/media3/session/legacy/MediaSessionCompat$Token;

    return-object v0
.end method

.method public getShuffleMode()I
    .locals 1

    .line 438
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaControllerCompat;->mImpl:Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImpl;

    invoke-interface {v0}, Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImpl;->getShuffleMode()I

    move-result v0

    return v0
.end method

.method public getTransportControls()Landroidx/media3/session/legacy/MediaControllerCompat$TransportControls;
    .locals 1

    .line 237
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaControllerCompat;->mImpl:Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImpl;

    invoke-interface {v0}, Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImpl;->getTransportControls()Landroidx/media3/session/legacy/MediaControllerCompat$TransportControls;

    move-result-object v0

    return-object v0
.end method

.method public isCaptioningEnabled()Z
    .locals 1

    .line 412
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaControllerCompat;->mImpl:Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImpl;

    invoke-interface {v0}, Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImpl;->isCaptioningEnabled()Z

    move-result v0

    return v0
.end method

.method public isSessionReady()Z
    .locals 1

    .line 607
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaControllerCompat;->mImpl:Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImpl;

    invoke-interface {v0}, Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImpl;->isSessionReady()Z

    move-result v0

    return v0
.end method

.method public registerCallback(Landroidx/media3/session/legacy/MediaControllerCompat$Callback;)V
    .locals 1
    .param p1, "callback"    # Landroidx/media3/session/legacy/MediaControllerCompat$Callback;

    .line 526
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/media3/session/legacy/MediaControllerCompat;->registerCallback(Landroidx/media3/session/legacy/MediaControllerCompat$Callback;Landroid/os/Handler;)V

    .line 527
    return-void
.end method

.method public registerCallback(Landroidx/media3/session/legacy/MediaControllerCompat$Callback;Landroid/os/Handler;)V
    .locals 2
    .param p1, "callback"    # Landroidx/media3/session/legacy/MediaControllerCompat$Callback;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 538
    if-eqz p1, :cond_2

    .line 541
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaControllerCompat;->mRegisteredCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 542
    const-string v0, "MediaControllerCompat"

    const-string/jumbo v1, "the callback has already been registered"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    return-void

    .line 545
    :cond_0
    if-nez p2, :cond_1

    .line 546
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    move-object p2, v0

    .line 548
    :cond_1
    invoke-virtual {p1, p2}, Landroidx/media3/session/legacy/MediaControllerCompat$Callback;->setHandler(Landroid/os/Handler;)V

    .line 549
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaControllerCompat;->mImpl:Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImpl;

    invoke-interface {v0, p1, p2}, Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImpl;->registerCallback(Landroidx/media3/session/legacy/MediaControllerCompat$Callback;Landroid/os/Handler;)V

    .line 550
    return-void

    .line 539
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeQueueItem(Landroidx/media3/session/legacy/MediaDescriptionCompat;)V
    .locals 1
    .param p1, "description"    # Landroidx/media3/session/legacy/MediaDescriptionCompat;

    .line 340
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaControllerCompat;->mImpl:Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImpl;

    invoke-interface {v0, p1}, Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImpl;->removeQueueItem(Landroidx/media3/session/legacy/MediaDescriptionCompat;)V

    .line 341
    return-void
.end method

.method public removeQueueItemAt(I)V
    .locals 3
    .param p1, "index"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 357
    invoke-virtual {p0}, Landroidx/media3/session/legacy/MediaControllerCompat;->getQueue()Ljava/util/List;

    move-result-object v0

    .line 358
    .local v0, "queue":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/session/legacy/MediaSessionCompat$QueueItem;>;"
    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 359
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/session/legacy/MediaSessionCompat$QueueItem;

    .line 360
    .local v1, "item":Landroidx/media3/session/legacy/MediaSessionCompat$QueueItem;
    if-eqz v1, :cond_0

    .line 361
    invoke-virtual {v1}, Landroidx/media3/session/legacy/MediaSessionCompat$QueueItem;->getDescription()Landroidx/media3/session/legacy/MediaDescriptionCompat;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroidx/media3/session/legacy/MediaControllerCompat;->removeQueueItem(Landroidx/media3/session/legacy/MediaDescriptionCompat;)V

    .line 364
    .end local v1    # "item":Landroidx/media3/session/legacy/MediaSessionCompat$QueueItem;
    :cond_0
    return-void
.end method

.method public sendCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 2
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "params"    # Landroid/os/Bundle;
    .param p3, "cb"    # Landroid/os/ResultReceiver;

    .line 583
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 586
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaControllerCompat;->mImpl:Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImpl;

    invoke-interface {v0, p1, p2, p3}, Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImpl;->sendCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    .line 587
    return-void

    .line 584
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "command must neither be null nor empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setVolumeTo(II)V
    .locals 1
    .param p1, "value"    # I
    .param p2, "flags"    # I

    .line 500
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaControllerCompat;->mImpl:Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImpl;

    invoke-interface {v0, p1, p2}, Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImpl;->setVolumeTo(II)V

    .line 501
    return-void
.end method

.method public unregisterCallback(Landroidx/media3/session/legacy/MediaControllerCompat$Callback;)V
    .locals 2
    .param p1, "callback"    # Landroidx/media3/session/legacy/MediaControllerCompat$Callback;

    .line 559
    if-eqz p1, :cond_1

    .line 562
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaControllerCompat;->mRegisteredCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 563
    const-string v0, "MediaControllerCompat"

    const-string/jumbo v1, "the callback has never been registered"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    return-void

    .line 567
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroidx/media3/session/legacy/MediaControllerCompat;->mImpl:Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImpl;

    invoke-interface {v1, p1}, Landroidx/media3/session/legacy/MediaControllerCompat$MediaControllerImpl;->unregisterCallback(Landroidx/media3/session/legacy/MediaControllerCompat$Callback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 569
    invoke-virtual {p1, v0}, Landroidx/media3/session/legacy/MediaControllerCompat$Callback;->setHandler(Landroid/os/Handler;)V

    .line 570
    nop

    .line 571
    return-void

    .line 569
    :catchall_0
    move-exception v1

    invoke-virtual {p1, v0}, Landroidx/media3/session/legacy/MediaControllerCompat$Callback;->setHandler(Landroid/os/Handler;)V

    .line 570
    throw v1

    .line 560
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
