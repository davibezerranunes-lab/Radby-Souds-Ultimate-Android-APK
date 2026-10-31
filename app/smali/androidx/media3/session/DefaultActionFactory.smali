.class final Landroidx/media3/session/DefaultActionFactory;
.super Ljava/lang/Object;
.source "DefaultActionFactory.java"

# interfaces
.implements Landroidx/media3/session/MediaNotification$ActionFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/session/DefaultActionFactory$Api26;
    }
.end annotation


# static fields
.field private static final ACTION_CUSTOM:Ljava/lang/String; = "androidx.media3.session.CUSTOM_NOTIFICATION_ACTION"

.field private static final EXTRAS_KEY_ACTION_CUSTOM:Ljava/lang/String; = "androidx.media3.session.EXTRAS_KEY_CUSTOM_NOTIFICATION_ACTION"

.field public static final EXTRAS_KEY_ACTION_CUSTOM_EXTRAS:Ljava/lang/String; = "androidx.media3.session.EXTRAS_KEY_CUSTOM_NOTIFICATION_ACTION_EXTRAS"


# instance fields
.field private customActionPendingIntentRequestCode:I

.field private final service:Landroid/app/Service;


# direct methods
.method public constructor <init>(Landroid/app/Service;)V
    .locals 1
    .param p1, "service"    # Landroid/app/Service;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/session/DefaultActionFactory;->customActionPendingIntentRequestCode:I

    .line 75
    iput-object p1, p0, Landroidx/media3/session/DefaultActionFactory;->service:Landroid/app/Service;

    .line 76
    return-void
.end method

.method private createCustomActionPendingIntent(Landroidx/media3/session/MediaSession;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/PendingIntent;
    .locals 5
    .param p1, "mediaSession"    # Landroidx/media3/session/MediaSession;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 154
    new-instance v0, Landroid/content/Intent;

    const-string v1, "androidx.media3.session.CUSTOM_NOTIFICATION_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 155
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroidx/media3/session/MediaSession;->getImpl()Landroidx/media3/session/MediaSessionImpl;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media3/session/MediaSessionImpl;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 156
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Landroidx/media3/session/DefaultActionFactory;->service:Landroid/app/Service;

    iget-object v3, p0, Landroidx/media3/session/DefaultActionFactory;->service:Landroid/app/Service;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 157
    const-string v1, "androidx.media3.session.EXTRAS_KEY_CUSTOM_NOTIFICATION_ACTION"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 158
    const-string v1, "androidx.media3.session.EXTRAS_KEY_CUSTOM_NOTIFICATION_ACTION_EXTRAS"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 160
    iget-object v1, p0, Landroidx/media3/session/DefaultActionFactory;->service:Landroid/app/Service;

    iget v2, p0, Landroidx/media3/session/DefaultActionFactory;->customActionPendingIntentRequestCode:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroidx/media3/session/DefaultActionFactory;->customActionPendingIntentRequestCode:I

    .line 165
    sget v3, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_0

    const/high16 v3, 0x4000000

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const/high16 v4, 0x8000000

    or-int/2addr v3, v4

    .line 160
    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method public static getKeyEvent(Landroid/content/Intent;)Landroid/view/KeyEvent;
    .locals 3
    .param p0, "intent"    # Landroid/content/Intent;

    .line 63
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 64
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    const-string v1, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 65
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/view/KeyEvent;

    return-object v1

    .line 67
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private toKeyCode(J)I
    .locals 2
    .param p1, "action"    # J

    .line 134
    const-wide/16 v0, 0x8

    cmp-long v0, p1, v0

    if-eqz v0, :cond_7

    const-wide/16 v0, 0x9

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 136
    :cond_0
    const-wide/16 v0, 0x6

    cmp-long v0, p1, v0

    if-eqz v0, :cond_6

    const-wide/16 v0, 0x7

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 139
    :cond_1
    const-wide/16 v0, 0x3

    cmp-long v0, p1, v0

    if-nez v0, :cond_2

    .line 140
    const/16 v0, 0x56

    return v0

    .line 141
    :cond_2
    const-wide/16 v0, 0xc

    cmp-long v0, p1, v0

    if-nez v0, :cond_3

    .line 142
    const/16 v0, 0x5a

    return v0

    .line 143
    :cond_3
    const-wide/16 v0, 0xb

    cmp-long v0, p1, v0

    if-nez v0, :cond_4

    .line 144
    const/16 v0, 0x59

    return v0

    .line 145
    :cond_4
    const-wide/16 v0, 0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_5

    .line 146
    const/16 v0, 0x55

    return v0

    .line 148
    :cond_5
    const/4 v0, 0x0

    return v0

    .line 138
    :cond_6
    :goto_0
    const/16 v0, 0x58

    return v0

    .line 135
    :cond_7
    :goto_1
    const/16 v0, 0x57

    return v0
.end method


# virtual methods
.method public createCustomAction(Landroidx/media3/session/MediaSession;Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/core/app/NotificationCompat$Action;
    .locals 2
    .param p1, "mediaSession"    # Landroidx/media3/session/MediaSession;
    .param p2, "icon"    # Landroidx/core/graphics/drawable/IconCompat;
    .param p3, "title"    # Ljava/lang/CharSequence;
    .param p4, "customAction"    # Ljava/lang/String;
    .param p5, "extras"    # Landroid/os/Bundle;

    .line 92
    new-instance v0, Landroidx/core/app/NotificationCompat$Action;

    .line 93
    invoke-direct {p0, p1, p4, p5}, Landroidx/media3/session/DefaultActionFactory;->createCustomActionPendingIntent(Landroidx/media3/session/MediaSession;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-direct {v0, p2, p3, v1}, Landroidx/core/app/NotificationCompat$Action;-><init>(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 92
    return-object v0
.end method

.method public createCustomActionFromCustomCommandButton(Landroidx/media3/session/MediaSession;Landroidx/media3/session/CommandButton;)Landroidx/core/app/NotificationCompat$Action;
    .locals 6
    .param p1, "mediaSession"    # Landroidx/media3/session/MediaSession;
    .param p2, "customCommandButton"    # Landroidx/media3/session/CommandButton;

    .line 99
    iget-object v0, p2, Landroidx/media3/session/CommandButton;->sessionCommand:Landroidx/media3/session/SessionCommand;

    if-eqz v0, :cond_0

    iget-object v0, p2, Landroidx/media3/session/CommandButton;->sessionCommand:Landroidx/media3/session/SessionCommand;

    iget v0, v0, Landroidx/media3/session/SessionCommand;->commandCode:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    .line 103
    iget-object v0, p2, Landroidx/media3/session/CommandButton;->sessionCommand:Landroidx/media3/session/SessionCommand;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/session/SessionCommand;

    .line 104
    .local v0, "customCommand":Landroidx/media3/session/SessionCommand;
    new-instance v1, Landroidx/core/app/NotificationCompat$Action;

    iget-object v2, p0, Landroidx/media3/session/DefaultActionFactory;->service:Landroid/app/Service;

    iget v3, p2, Landroidx/media3/session/CommandButton;->iconResId:I

    .line 105
    invoke-static {v2, v3}, Landroidx/core/graphics/drawable/IconCompat;->createWithResource(Landroid/content/Context;I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v2

    iget-object v3, p2, Landroidx/media3/session/CommandButton;->displayName:Ljava/lang/CharSequence;

    iget-object v4, v0, Landroidx/media3/session/SessionCommand;->customAction:Ljava/lang/String;

    iget-object v5, v0, Landroidx/media3/session/SessionCommand;->customExtras:Landroid/os/Bundle;

    .line 107
    invoke-direct {p0, p1, v4, v5}, Landroidx/media3/session/DefaultActionFactory;->createCustomActionPendingIntent(Landroidx/media3/session/MediaSession;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Landroidx/core/app/NotificationCompat$Action;-><init>(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 104
    return-object v1
.end method

.method public createMediaAction(Landroidx/media3/session/MediaSession;Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;I)Landroidx/core/app/NotificationCompat$Action;
    .locals 3
    .param p1, "mediaSession"    # Landroidx/media3/session/MediaSession;
    .param p2, "icon"    # Landroidx/core/graphics/drawable/IconCompat;
    .param p3, "title"    # Ljava/lang/CharSequence;
    .param p4, "command"    # I

    .line 81
    new-instance v0, Landroidx/core/app/NotificationCompat$Action;

    int-to-long v1, p4

    .line 82
    invoke-virtual {p0, p1, v1, v2}, Landroidx/media3/session/DefaultActionFactory;->createMediaActionPendingIntent(Landroidx/media3/session/MediaSession;J)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-direct {v0, p2, p3, v1}, Landroidx/core/app/NotificationCompat$Action;-><init>(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 81
    return-object v0
.end method

.method public createMediaActionPendingIntent(Landroidx/media3/session/MediaSession;J)Landroid/app/PendingIntent;
    .locals 6
    .param p1, "mediaSession"    # Landroidx/media3/session/MediaSession;
    .param p2, "command"    # J

    .line 115
    invoke-direct {p0, p2, p3}, Landroidx/media3/session/DefaultActionFactory;->toKeyCode(J)I

    move-result v0

    .line 116
    .local v0, "keyCode":I
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 117
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroidx/media3/session/MediaSession;->getImpl()Landroidx/media3/session/MediaSessionImpl;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/media3/session/MediaSessionImpl;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 118
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p0, Landroidx/media3/session/DefaultActionFactory;->service:Landroid/app/Service;

    iget-object v4, p0, Landroidx/media3/session/DefaultActionFactory;->service:Landroid/app/Service;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 119
    new-instance v2, Landroid/view/KeyEvent;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0}, Landroid/view/KeyEvent;-><init>(II)V

    const-string v4, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 120
    sget v2, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v4, 0x1a

    if-lt v2, v4, :cond_0

    const-wide/16 v4, 0x1

    cmp-long v2, p2, v4

    if-nez v2, :cond_0

    .line 122
    invoke-virtual {p1}, Landroidx/media3/session/MediaSession;->getPlayer()Landroidx/media3/common/Player;

    move-result-object v2

    invoke-interface {v2}, Landroidx/media3/common/Player;->getPlayWhenReady()Z

    move-result v2

    if-nez v2, :cond_0

    .line 123
    iget-object v2, p0, Landroidx/media3/session/DefaultActionFactory;->service:Landroid/app/Service;

    invoke-static {v2, v0, v1}, Landroidx/media3/session/DefaultActionFactory$Api26;->createForegroundServicePendingIntent(Landroid/app/Service;ILandroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v2

    return-object v2

    .line 125
    :cond_0
    iget-object v2, p0, Landroidx/media3/session/DefaultActionFactory;->service:Landroid/app/Service;

    .line 129
    sget v4, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v5, 0x17

    if-lt v4, v5, :cond_1

    const/high16 v3, 0x4000000

    .line 125
    :cond_1
    invoke-static {v2, v0, v1, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    return-object v2
.end method

.method public getCustomAction(Landroid/content/Intent;)Ljava/lang/String;
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 184
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 185
    .local v0, "extras":Landroid/os/Bundle;
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "androidx.media3.session.EXTRAS_KEY_CUSTOM_NOTIFICATION_ACTION"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    .line 186
    .local v2, "customAction":Ljava/lang/Object;
    :goto_0
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_1

    move-object v1, v2

    check-cast v1, Ljava/lang/String;

    :cond_1
    return-object v1
.end method

.method public getCustomActionExtras(Landroid/content/Intent;)Landroid/os/Bundle;
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 194
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 196
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    const-string v1, "androidx.media3.session.EXTRAS_KEY_CUSTOM_NOTIFICATION_ACTION_EXTRAS"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 197
    .local v1, "customExtras":Ljava/lang/Object;
    :goto_0
    instance-of v2, v1, Landroid/os/Bundle;

    if-eqz v2, :cond_1

    move-object v2, v1

    check-cast v2, Landroid/os/Bundle;

    goto :goto_1

    :cond_1
    sget-object v2, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    :goto_1
    return-object v2
.end method

.method public isCustomAction(Landroid/content/Intent;)Z
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 175
    const-string v0, "androidx.media3.session.CUSTOM_NOTIFICATION_ACTION"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isMediaAction(Landroid/content/Intent;)Z
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 170
    const-string v0, "android.intent.action.MEDIA_BUTTON"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
