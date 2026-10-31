.class public final Landroidx/media3/session/DefaultMediaNotificationProvider$Builder;
.super Ljava/lang/Object;
.source "DefaultMediaNotificationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/session/DefaultMediaNotificationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private built:Z

.field private channelId:Ljava/lang/String;

.field private channelNameResourceId:I

.field private final context:Landroid/content/Context;

.field private notificationIdProvider:Landroidx/media3/session/DefaultMediaNotificationProvider$NotificationIdProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput-object p1, p0, Landroidx/media3/session/DefaultMediaNotificationProvider$Builder;->context:Landroid/content/Context;

    .line 132
    new-instance v0, Landroidx/media3/session/DefaultMediaNotificationProvider$Builder$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroidx/media3/session/DefaultMediaNotificationProvider$Builder$$ExternalSyntheticLambda0;-><init>()V

    iput-object v0, p0, Landroidx/media3/session/DefaultMediaNotificationProvider$Builder;->notificationIdProvider:Landroidx/media3/session/DefaultMediaNotificationProvider$NotificationIdProvider;

    .line 133
    const-string v0, "default_channel_id"

    iput-object v0, p0, Landroidx/media3/session/DefaultMediaNotificationProvider$Builder;->channelId:Ljava/lang/String;

    .line 134
    sget v0, Landroidx/media3/session/DefaultMediaNotificationProvider;->DEFAULT_CHANNEL_NAME_RESOURCE_ID:I

    iput v0, p0, Landroidx/media3/session/DefaultMediaNotificationProvider$Builder;->channelNameResourceId:I

    .line 135
    return-void
.end method

.method static synthetic access$100(Landroidx/media3/session/DefaultMediaNotificationProvider$Builder;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/session/DefaultMediaNotificationProvider$Builder;

    .line 118
    iget-object v0, p0, Landroidx/media3/session/DefaultMediaNotificationProvider$Builder;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Landroidx/media3/session/DefaultMediaNotificationProvider$Builder;)Landroidx/media3/session/DefaultMediaNotificationProvider$NotificationIdProvider;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/session/DefaultMediaNotificationProvider$Builder;

    .line 118
    iget-object v0, p0, Landroidx/media3/session/DefaultMediaNotificationProvider$Builder;->notificationIdProvider:Landroidx/media3/session/DefaultMediaNotificationProvider$NotificationIdProvider;

    return-object v0
.end method

.method static synthetic access$300(Landroidx/media3/session/DefaultMediaNotificationProvider$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/session/DefaultMediaNotificationProvider$Builder;

    .line 118
    iget-object v0, p0, Landroidx/media3/session/DefaultMediaNotificationProvider$Builder;->channelId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Landroidx/media3/session/DefaultMediaNotificationProvider$Builder;)I
    .locals 1
    .param p0, "x0"    # Landroidx/media3/session/DefaultMediaNotificationProvider$Builder;

    .line 118
    iget v0, p0, Landroidx/media3/session/DefaultMediaNotificationProvider$Builder;->channelNameResourceId:I

    return v0
.end method

.method static synthetic lambda$new$0(Landroidx/media3/session/MediaSession;)I
    .locals 1
    .param p0, "session"    # Landroidx/media3/session/MediaSession;

    .line 132
    const/16 v0, 0x3e9

    return v0
.end method

.method static synthetic lambda$setNotificationId$1(ILandroidx/media3/session/MediaSession;)I
    .locals 0
    .param p0, "notificationId"    # I
    .param p1, "session"    # Landroidx/media3/session/MediaSession;

    .line 148
    return p0
.end method


# virtual methods
.method public build()Landroidx/media3/session/DefaultMediaNotificationProvider;
    .locals 3

    .line 198
    iget-boolean v0, p0, Landroidx/media3/session/DefaultMediaNotificationProvider$Builder;->built:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 199
    new-instance v0, Landroidx/media3/session/DefaultMediaNotificationProvider;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Landroidx/media3/session/DefaultMediaNotificationProvider;-><init>(Landroidx/media3/session/DefaultMediaNotificationProvider$Builder;Landroidx/media3/session/DefaultMediaNotificationProvider$1;)V

    .line 200
    .local v0, "provider":Landroidx/media3/session/DefaultMediaNotificationProvider;
    iput-boolean v1, p0, Landroidx/media3/session/DefaultMediaNotificationProvider$Builder;->built:Z

    .line 201
    return-object v0
.end method

.method public setChannelId(Ljava/lang/String;)Landroidx/media3/session/DefaultMediaNotificationProvider$Builder;
    .locals 0
    .param p1, "channelId"    # Ljava/lang/String;

    .line 177
    iput-object p1, p0, Landroidx/media3/session/DefaultMediaNotificationProvider$Builder;->channelId:Ljava/lang/String;

    .line 178
    return-object p0
.end method

.method public setChannelName(I)Landroidx/media3/session/DefaultMediaNotificationProvider$Builder;
    .locals 0
    .param p1, "channelNameResourceId"    # I

    .line 190
    iput p1, p0, Landroidx/media3/session/DefaultMediaNotificationProvider$Builder;->channelNameResourceId:I

    .line 191
    return-object p0
.end method

.method public setNotificationId(I)Landroidx/media3/session/DefaultMediaNotificationProvider$Builder;
    .locals 1
    .param p1, "notificationId"    # I

    .line 148
    new-instance v0, Landroidx/media3/session/DefaultMediaNotificationProvider$Builder$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Landroidx/media3/session/DefaultMediaNotificationProvider$Builder$$ExternalSyntheticLambda1;-><init>(I)V

    iput-object v0, p0, Landroidx/media3/session/DefaultMediaNotificationProvider$Builder;->notificationIdProvider:Landroidx/media3/session/DefaultMediaNotificationProvider$NotificationIdProvider;

    .line 149
    return-object p0
.end method

.method public setNotificationIdProvider(Landroidx/media3/session/DefaultMediaNotificationProvider$NotificationIdProvider;)Landroidx/media3/session/DefaultMediaNotificationProvider$Builder;
    .locals 0
    .param p1, "notificationIdProvider"    # Landroidx/media3/session/DefaultMediaNotificationProvider$NotificationIdProvider;

    .line 164
    iput-object p1, p0, Landroidx/media3/session/DefaultMediaNotificationProvider$Builder;->notificationIdProvider:Landroidx/media3/session/DefaultMediaNotificationProvider$NotificationIdProvider;

    .line 165
    return-object p0
.end method
