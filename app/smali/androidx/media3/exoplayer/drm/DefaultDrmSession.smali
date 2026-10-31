.class Landroidx/media3/exoplayer/drm/DefaultDrmSession;
.super Ljava/lang/Object;
.source "DefaultDrmSession.java"

# interfaces
.implements Landroidx/media3/exoplayer/drm/DrmSession;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/drm/DefaultDrmSession$ResponseHandler;,
        Landroidx/media3/exoplayer/drm/DefaultDrmSession$ProvisioningManager;,
        Landroidx/media3/exoplayer/drm/DefaultDrmSession$ReferenceCountListener;,
        Landroidx/media3/exoplayer/drm/DefaultDrmSession$RequestHandler;,
        Landroidx/media3/exoplayer/drm/DefaultDrmSession$RequestTask;,
        Landroidx/media3/exoplayer/drm/DefaultDrmSession$UnexpectedDrmSessionException;
    }
.end annotation


# static fields
.field private static final MAX_LICENSE_DURATION_TO_RENEW_SECONDS:I = 0x3c

.field private static final MSG_KEYS:I = 0x2

.field private static final MSG_PROVISION:I = 0x1

.field private static final TAG:Ljava/lang/String; = "DefaultDrmSession"


# instance fields
.field private final callback:Landroidx/media3/exoplayer/drm/MediaDrmCallback;

.field private cryptoConfig:Landroidx/media3/decoder/CryptoConfig;

.field private currentKeyRequest:Landroidx/media3/exoplayer/drm/ExoMediaDrm$KeyRequest;

.field private currentProvisionRequest:Landroidx/media3/exoplayer/drm/ExoMediaDrm$ProvisionRequest;

.field private final eventDispatchers:Landroidx/media3/common/util/CopyOnWriteMultiset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media3/common/util/CopyOnWriteMultiset<",
            "Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;",
            ">;"
        }
    .end annotation
.end field

.field private final isPlaceholderSession:Z

.field private final keyRequestParameters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private lastException:Landroidx/media3/exoplayer/drm/DrmSession$DrmSessionException;

.field private final loadErrorHandlingPolicy:Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

.field private final mediaDrm:Landroidx/media3/exoplayer/drm/ExoMediaDrm;

.field private final mode:I

.field private offlineLicenseKeySetId:[B

.field private final playClearSamplesWithoutKeys:Z

.field private final playbackLooper:Landroid/os/Looper;

.field private final playerId:Landroidx/media3/exoplayer/analytics/PlayerId;

.field private final provisioningManager:Landroidx/media3/exoplayer/drm/DefaultDrmSession$ProvisioningManager;

.field private referenceCount:I

.field private final referenceCountListener:Landroidx/media3/exoplayer/drm/DefaultDrmSession$ReferenceCountListener;

.field private requestHandler:Landroidx/media3/exoplayer/drm/DefaultDrmSession$RequestHandler;

.field private requestHandlerThread:Landroid/os/HandlerThread;

.field private final responseHandler:Landroidx/media3/exoplayer/drm/DefaultDrmSession$ResponseHandler;

.field public final schemeDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media3/common/DrmInitData$SchemeData;",
            ">;"
        }
    .end annotation
.end field

.field private sessionId:[B

.field private state:I

.field private final uuid:Ljava/util/UUID;


# direct methods
.method public constructor <init>(Ljava/util/UUID;Landroidx/media3/exoplayer/drm/ExoMediaDrm;Landroidx/media3/exoplayer/drm/DefaultDrmSession$ProvisioningManager;Landroidx/media3/exoplayer/drm/DefaultDrmSession$ReferenceCountListener;Ljava/util/List;IZZ[BLjava/util/HashMap;Landroidx/media3/exoplayer/drm/MediaDrmCallback;Landroid/os/Looper;Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;Landroidx/media3/exoplayer/analytics/PlayerId;)V
    .locals 1
    .param p1, "uuid"    # Ljava/util/UUID;
    .param p2, "mediaDrm"    # Landroidx/media3/exoplayer/drm/ExoMediaDrm;
    .param p3, "provisioningManager"    # Landroidx/media3/exoplayer/drm/DefaultDrmSession$ProvisioningManager;
    .param p4, "referenceCountListener"    # Landroidx/media3/exoplayer/drm/DefaultDrmSession$ReferenceCountListener;
    .param p6, "mode"    # I
    .param p7, "playClearSamplesWithoutKeys"    # Z
    .param p8, "isPlaceholderSession"    # Z
    .param p9, "offlineLicenseKeySetId"    # [B
    .param p11, "callback"    # Landroidx/media3/exoplayer/drm/MediaDrmCallback;
    .param p12, "playbackLooper"    # Landroid/os/Looper;
    .param p13, "loadErrorHandlingPolicy"    # Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;
    .param p14, "playerId"    # Landroidx/media3/exoplayer/analytics/PlayerId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Landroidx/media3/exoplayer/drm/ExoMediaDrm;",
            "Landroidx/media3/exoplayer/drm/DefaultDrmSession$ProvisioningManager;",
            "Landroidx/media3/exoplayer/drm/DefaultDrmSession$ReferenceCountListener;",
            "Ljava/util/List<",
            "Landroidx/media3/common/DrmInitData$SchemeData;",
            ">;IZZ[B",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroidx/media3/exoplayer/drm/MediaDrmCallback;",
            "Landroid/os/Looper;",
            "Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;",
            "Landroidx/media3/exoplayer/analytics/PlayerId;",
            ")V"
        }
    .end annotation

    .line 187
    .local p5, "schemeDatas":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/DrmInitData$SchemeData;>;"
    .local p10, "keyRequestParameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    const/4 v0, 0x1

    if-eq p6, v0, :cond_0

    const/4 v0, 0x3

    if-ne p6, v0, :cond_1

    .line 190
    :cond_0
    invoke-static {p9}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    :cond_1
    iput-object p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->uuid:Ljava/util/UUID;

    .line 193
    iput-object p3, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->provisioningManager:Landroidx/media3/exoplayer/drm/DefaultDrmSession$ProvisioningManager;

    .line 194
    iput-object p4, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->referenceCountListener:Landroidx/media3/exoplayer/drm/DefaultDrmSession$ReferenceCountListener;

    .line 195
    iput-object p2, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->mediaDrm:Landroidx/media3/exoplayer/drm/ExoMediaDrm;

    .line 196
    iput p6, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->mode:I

    .line 197
    iput-boolean p7, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->playClearSamplesWithoutKeys:Z

    .line 198
    iput-boolean p8, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->isPlaceholderSession:Z

    .line 199
    if-eqz p9, :cond_2

    .line 200
    iput-object p9, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->offlineLicenseKeySetId:[B

    .line 201
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->schemeDatas:Ljava/util/List;

    goto :goto_0

    .line 203
    :cond_2
    invoke-static {p5}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->schemeDatas:Ljava/util/List;

    .line 205
    :goto_0
    iput-object p10, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->keyRequestParameters:Ljava/util/HashMap;

    .line 206
    iput-object p11, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->callback:Landroidx/media3/exoplayer/drm/MediaDrmCallback;

    .line 207
    new-instance v0, Landroidx/media3/common/util/CopyOnWriteMultiset;

    invoke-direct {v0}, Landroidx/media3/common/util/CopyOnWriteMultiset;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->eventDispatchers:Landroidx/media3/common/util/CopyOnWriteMultiset;

    .line 208
    iput-object p13, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->loadErrorHandlingPolicy:Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    .line 209
    iput-object p14, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->playerId:Landroidx/media3/exoplayer/analytics/PlayerId;

    .line 210
    const/4 v0, 0x2

    iput v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->state:I

    .line 211
    iput-object p12, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->playbackLooper:Landroid/os/Looper;

    .line 212
    new-instance v0, Landroidx/media3/exoplayer/drm/DefaultDrmSession$ResponseHandler;

    invoke-direct {v0, p0, p12}, Landroidx/media3/exoplayer/drm/DefaultDrmSession$ResponseHandler;-><init>(Landroidx/media3/exoplayer/drm/DefaultDrmSession;Landroid/os/Looper;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->responseHandler:Landroidx/media3/exoplayer/drm/DefaultDrmSession$ResponseHandler;

    .line 213
    return-void
.end method

.method static synthetic access$000(Landroidx/media3/exoplayer/drm/DefaultDrmSession;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Landroidx/media3/exoplayer/drm/DefaultDrmSession;
    .param p1, "x1"    # Ljava/lang/Object;
    .param p2, "x2"    # Ljava/lang/Object;

    .line 59
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->onProvisionResponse(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$100(Landroidx/media3/exoplayer/drm/DefaultDrmSession;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Landroidx/media3/exoplayer/drm/DefaultDrmSession;
    .param p1, "x1"    # Ljava/lang/Object;
    .param p2, "x2"    # Ljava/lang/Object;

    .line 59
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->onKeyResponse(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$200(Landroidx/media3/exoplayer/drm/DefaultDrmSession;)Ljava/util/UUID;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/drm/DefaultDrmSession;

    .line 59
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->uuid:Ljava/util/UUID;

    return-object v0
.end method

.method static synthetic access$300(Landroidx/media3/exoplayer/drm/DefaultDrmSession;)Landroidx/media3/exoplayer/drm/MediaDrmCallback;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/drm/DefaultDrmSession;

    .line 59
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->callback:Landroidx/media3/exoplayer/drm/MediaDrmCallback;

    return-object v0
.end method

.method static synthetic access$400(Landroidx/media3/exoplayer/drm/DefaultDrmSession;)Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/drm/DefaultDrmSession;

    .line 59
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->loadErrorHandlingPolicy:Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    return-object v0
.end method

.method static synthetic access$500(Landroidx/media3/exoplayer/drm/DefaultDrmSession;)Landroidx/media3/exoplayer/drm/DefaultDrmSession$ResponseHandler;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/drm/DefaultDrmSession;

    .line 59
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->responseHandler:Landroidx/media3/exoplayer/drm/DefaultDrmSession$ResponseHandler;

    return-object v0
.end method

.method private dispatchEvent(Landroidx/media3/common/util/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/util/Consumer<",
            "Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;",
            ">;)V"
        }
    .end annotation

    .line 592
    .local p1, "event":Landroidx/media3/common/util/Consumer;, "Landroidx/media3/common/util/Consumer<Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;>;"
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->eventDispatchers:Landroidx/media3/common/util/CopyOnWriteMultiset;

    invoke-virtual {v0}, Landroidx/media3/common/util/CopyOnWriteMultiset;->elementSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    .line 593
    .local v1, "eventDispatcher":Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;
    invoke-interface {p1, v1}, Landroidx/media3/common/util/Consumer;->accept(Ljava/lang/Object;)V

    .line 594
    .end local v1    # "eventDispatcher":Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;
    goto :goto_0

    .line 595
    :cond_0
    return-void
.end method

.method private doLicense(Z)V
    .locals 8
    .param p1, "allowRetry"    # Z
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "sessionId"
        }
    .end annotation

    .line 433
    iget-boolean v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->isPlaceholderSession:Z

    if-eqz v0, :cond_0

    .line 434
    return-void

    .line 436
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->sessionId:[B

    invoke-static {v0}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 437
    .local v0, "sessionId":[B
    iget v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->mode:I

    const/4 v2, 0x2

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_1

    .line 466
    :pswitch_0
    iget-object v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->offlineLicenseKeySetId:[B

    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    iget-object v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->sessionId:[B

    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    iget-object v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->offlineLicenseKeySetId:[B

    const/4 v2, 0x3

    invoke-direct {p0, v1, v2, p1}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->postKeyRequest([BIZ)V

    .line 469
    goto :goto_1

    .line 461
    :pswitch_1
    iget-object v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->offlineLicenseKeySetId:[B

    if-eqz v1, :cond_1

    invoke-direct {p0}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->restoreKeys()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 462
    :cond_1
    invoke-direct {p0, v0, v2, p1}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->postKeyRequest([BIZ)V

    goto :goto_1

    .line 440
    :pswitch_2
    iget-object v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->offlineLicenseKeySetId:[B

    if-nez v1, :cond_2

    .line 441
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->postKeyRequest([BIZ)V

    goto :goto_1

    .line 442
    :cond_2
    iget v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->state:I

    const/4 v3, 0x4

    if-eq v1, v3, :cond_3

    invoke-direct {p0}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->restoreKeys()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 443
    :cond_3
    invoke-direct {p0}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->getLicenseDurationRemainingSec()J

    move-result-wide v4

    .line 444
    .local v4, "licenseDurationRemainingSec":J
    iget v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->mode:I

    if-nez v1, :cond_4

    const-wide/16 v6, 0x3c

    cmp-long v1, v4, v6

    if-gtz v1, :cond_4

    .line 446
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Offline license has expired or will expire soon. Remaining seconds: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "DefaultDrmSession"

    invoke-static {v3, v1}, Landroidx/media3/common/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    invoke-direct {p0, v0, v2, p1}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->postKeyRequest([BIZ)V

    goto :goto_0

    .line 452
    :cond_4
    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-gtz v1, :cond_5

    .line 453
    new-instance v1, Landroidx/media3/exoplayer/drm/KeysExpiredException;

    invoke-direct {v1}, Landroidx/media3/exoplayer/drm/KeysExpiredException;-><init>()V

    invoke-direct {p0, v1, v2}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->onError(Ljava/lang/Throwable;I)V

    goto :goto_0

    .line 455
    :cond_5
    iput v3, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->state:I

    .line 456
    new-instance v1, Landroidx/media3/exoplayer/drm/DefaultDrmSession$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Landroidx/media3/exoplayer/drm/DefaultDrmSession$$ExternalSyntheticLambda4;-><init>()V

    invoke-direct {p0, v1}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->dispatchEvent(Landroidx/media3/common/util/Consumer;)V

    .line 458
    .end local v4    # "licenseDurationRemainingSec":J
    :goto_0
    nop

    .line 473
    :cond_6
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getLicenseDurationRemainingSec()J
    .locals 5

    .line 487
    sget-object v0, Landroidx/media3/common/C;->WIDEVINE_UUID:Ljava/util/UUID;

    iget-object v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->uuid:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 488
    const-wide v0, 0x7fffffffffffffffL

    return-wide v0

    .line 490
    :cond_0
    nop

    .line 491
    invoke-static {p0}, Landroidx/media3/exoplayer/drm/WidevineUtil;->getLicenseDurationRemainingSec(Landroidx/media3/exoplayer/drm/DrmSession;)Landroid/util/Pair;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 492
    .local v0, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    return-wide v1
.end method

.method private isOpen()Z
    .locals 2
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNullIf;
        expression = {
            "sessionId"
        }
        result = true
    .end annotation

    .line 588
    iget v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->state:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->state:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method static synthetic lambda$onError$1(Ljava/lang/Throwable;Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)V
    .locals 1
    .param p0, "e"    # Ljava/lang/Throwable;
    .param p1, "eventDispatcher"    # Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    .line 570
    move-object v0, p0

    check-cast v0, Ljava/lang/Exception;

    invoke-virtual {p1, v0}, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;->drmSessionManagerError(Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic lambda$openInternal$0(ILandroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)V
    .locals 0
    .param p0, "localState"    # I
    .param p1, "eventDispatcher"    # Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    .line 392
    invoke-virtual {p1, p0}, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;->drmSessionAcquired(I)V

    return-void
.end method

.method private onError(Ljava/lang/Throwable;I)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;
    .param p2, "errorSource"    # I

    .line 566
    new-instance v0, Landroidx/media3/exoplayer/drm/DrmSession$DrmSessionException;

    .line 567
    invoke-static {p1, p2}, Landroidx/media3/exoplayer/drm/DrmUtil;->getErrorCodeForMediaDrmException(Ljava/lang/Throwable;I)I

    move-result v1

    invoke-direct {v0, p1, v1}, Landroidx/media3/exoplayer/drm/DrmSession$DrmSessionException;-><init>(Ljava/lang/Throwable;I)V

    iput-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->lastException:Landroidx/media3/exoplayer/drm/DrmSession$DrmSessionException;

    .line 568
    const-string v0, "DefaultDrmSession"

    const-string v1, "DRM session error"

    invoke-static {v0, v1, p1}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 569
    instance-of v0, p1, Ljava/lang/Exception;

    if-eqz v0, :cond_0

    .line 570
    new-instance v0, Landroidx/media3/exoplayer/drm/DefaultDrmSession$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1}, Landroidx/media3/exoplayer/drm/DefaultDrmSession$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Throwable;)V

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->dispatchEvent(Landroidx/media3/common/util/Consumer;)V

    goto :goto_0

    .line 571
    :cond_0
    instance-of v0, p1, Ljava/lang/Error;

    if-eqz v0, :cond_4

    .line 573
    invoke-static {p1}, Landroidx/media3/exoplayer/drm/DrmUtil;->isFailureToConstructResourceBusyException(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 574
    invoke-static {p1}, Landroidx/media3/exoplayer/drm/DrmUtil;->isFailureToConstructNotProvisionedException(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 575
    :cond_1
    move-object v0, p1

    check-cast v0, Ljava/lang/Error;

    throw v0

    .line 580
    :cond_2
    :goto_0
    iget v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->state:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    .line 581
    const/4 v0, 0x1

    iput v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->state:I

    .line 583
    :cond_3
    return-void

    .line 578
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected Throwable subclass"

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private onKeyResponse(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4
    .param p1, "request"    # Ljava/lang/Object;
    .param p2, "response"    # Ljava/lang/Object;

    .line 506
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->currentKeyRequest:Landroidx/media3/exoplayer/drm/ExoMediaDrm$KeyRequest;

    if-ne p1, v0, :cond_6

    invoke-direct {p0}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_4

    .line 510
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->currentKeyRequest:Landroidx/media3/exoplayer/drm/ExoMediaDrm$KeyRequest;

    .line 512
    instance-of v0, p2, Ljava/lang/Exception;

    if-nez v0, :cond_5

    instance-of v0, p2, Ljava/lang/NoSuchMethodError;

    if-eqz v0, :cond_1

    goto :goto_3

    .line 518
    :cond_1
    :try_start_0
    move-object v0, p2

    check-cast v0, [B

    .line 519
    .local v0, "responseData":[B
    iget v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->mode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 520
    iget-object v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->mediaDrm:Landroidx/media3/exoplayer/drm/ExoMediaDrm;

    iget-object v2, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->offlineLicenseKeySetId:[B

    invoke-static {v2}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-interface {v1, v2, v0}, Landroidx/media3/exoplayer/drm/ExoMediaDrm;->provideKeyResponse([B[B)[B

    .line 521
    new-instance v1, Landroidx/media3/exoplayer/drm/DefaultDrmSession$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroidx/media3/exoplayer/drm/DefaultDrmSession$$ExternalSyntheticLambda1;-><init>()V

    invoke-direct {p0, v1}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->dispatchEvent(Landroidx/media3/common/util/Consumer;)V

    goto :goto_0

    .line 523
    :cond_2
    iget-object v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->mediaDrm:Landroidx/media3/exoplayer/drm/ExoMediaDrm;

    iget-object v2, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->sessionId:[B

    invoke-interface {v1, v2, v0}, Landroidx/media3/exoplayer/drm/ExoMediaDrm;->provideKeyResponse([B[B)[B

    move-result-object v1

    .line 524
    .local v1, "keySetId":[B
    iget v2, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->mode:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    iget v2, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->mode:I

    if-nez v2, :cond_4

    iget-object v2, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->offlineLicenseKeySetId:[B

    if-eqz v2, :cond_4

    :cond_3
    if-eqz v1, :cond_4

    array-length v2, v1

    if-eqz v2, :cond_4

    .line 529
    iput-object v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->offlineLicenseKeySetId:[B

    .line 531
    :cond_4
    const/4 v2, 0x4

    iput v2, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->state:I

    .line 532
    new-instance v2, Landroidx/media3/exoplayer/drm/DefaultDrmSession$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Landroidx/media3/exoplayer/drm/DefaultDrmSession$$ExternalSyntheticLambda2;-><init>()V

    invoke-direct {p0, v2}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->dispatchEvent(Landroidx/media3/common/util/Consumer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 536
    .end local v0    # "responseData":[B
    .end local v1    # "keySetId":[B
    :goto_0
    goto :goto_2

    .line 534
    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    .line 535
    .local v0, "e":Ljava/lang/Throwable;
    :goto_1
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->onKeysError(Ljava/lang/Throwable;Z)V

    .line 537
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_2
    return-void

    .line 513
    :cond_5
    :goto_3
    move-object v0, p2

    check-cast v0, Ljava/lang/Throwable;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->onKeysError(Ljava/lang/Throwable;Z)V

    .line 514
    return-void

    .line 508
    :cond_6
    :goto_4
    return-void
.end method

.method private onKeysError(Ljava/lang/Throwable;Z)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;
    .param p2, "thrownByExoMediaDrm"    # Z

    .line 550
    instance-of v0, p1, Landroid/media/NotProvisionedException;

    if-nez v0, :cond_2

    .line 551
    invoke-static {p1}, Landroidx/media3/exoplayer/drm/DrmUtil;->isFailureToConstructNotProvisionedException(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 554
    :cond_0
    nop

    .line 556
    if-eqz p2, :cond_1

    .line 557
    const/4 v0, 0x1

    goto :goto_0

    .line 558
    :cond_1
    const/4 v0, 0x2

    .line 554
    :goto_0
    invoke-direct {p0, p1, v0}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->onError(Ljava/lang/Throwable;I)V

    goto :goto_2

    .line 552
    :cond_2
    :goto_1
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->provisioningManager:Landroidx/media3/exoplayer/drm/DefaultDrmSession$ProvisioningManager;

    invoke-interface {v0, p0}, Landroidx/media3/exoplayer/drm/DefaultDrmSession$ProvisioningManager;->provisionRequired(Landroidx/media3/exoplayer/drm/DefaultDrmSession;)V

    .line 560
    :goto_2
    return-void
.end method

.method private onKeysRequired()V
    .locals 2

    .line 540
    iget v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->mode:I

    if-nez v0, :cond_0

    iget v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->state:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 541
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->sessionId:[B

    invoke-static {v0}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 542
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->doLicense(Z)V

    .line 544
    :cond_0
    return-void
.end method

.method private onProvisionResponse(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .param p1, "request"    # Ljava/lang/Object;
    .param p2, "response"    # Ljava/lang/Object;

    .line 410
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->currentProvisionRequest:Landroidx/media3/exoplayer/drm/ExoMediaDrm$ProvisionRequest;

    if-ne p1, v0, :cond_2

    iget v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->state:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 414
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->currentProvisionRequest:Landroidx/media3/exoplayer/drm/ExoMediaDrm$ProvisionRequest;

    .line 416
    instance-of v0, p2, Ljava/lang/Exception;

    if-eqz v0, :cond_1

    .line 417
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->provisioningManager:Landroidx/media3/exoplayer/drm/DefaultDrmSession$ProvisioningManager;

    move-object v1, p2

    check-cast v1, Ljava/lang/Exception;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroidx/media3/exoplayer/drm/DefaultDrmSession$ProvisioningManager;->onProvisionError(Ljava/lang/Exception;Z)V

    .line 418
    return-void

    .line 422
    :cond_1
    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->mediaDrm:Landroidx/media3/exoplayer/drm/ExoMediaDrm;

    move-object v1, p2

    check-cast v1, [B

    invoke-interface {v0, v1}, Landroidx/media3/exoplayer/drm/ExoMediaDrm;->provideProvisionResponse([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 426
    nop

    .line 428
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->provisioningManager:Landroidx/media3/exoplayer/drm/DefaultDrmSession$ProvisioningManager;

    invoke-interface {v0}, Landroidx/media3/exoplayer/drm/DefaultDrmSession$ProvisioningManager;->onProvisionCompleted()V

    .line 429
    return-void

    .line 423
    :catch_0
    move-exception v0

    .line 424
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->provisioningManager:Landroidx/media3/exoplayer/drm/DefaultDrmSession$ProvisioningManager;

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Landroidx/media3/exoplayer/drm/DefaultDrmSession$ProvisioningManager;->onProvisionError(Ljava/lang/Exception;Z)V

    .line 425
    return-void

    .line 412
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_0
    return-void
.end method

.method private openInternal()Z
    .locals 4
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNullIf;
        expression = {
            "sessionId"
        }
        result = true
    .end annotation

    .line 380
    invoke-direct {p0}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->isOpen()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 382
    return v1

    .line 386
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->mediaDrm:Landroidx/media3/exoplayer/drm/ExoMediaDrm;

    invoke-interface {v0}, Landroidx/media3/exoplayer/drm/ExoMediaDrm;->openSession()[B

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->sessionId:[B

    .line 387
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->mediaDrm:Landroidx/media3/exoplayer/drm/ExoMediaDrm;

    iget-object v2, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->sessionId:[B

    iget-object v3, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->playerId:Landroidx/media3/exoplayer/analytics/PlayerId;

    invoke-interface {v0, v2, v3}, Landroidx/media3/exoplayer/drm/ExoMediaDrm;->setPlayerIdForSession([BLandroidx/media3/exoplayer/analytics/PlayerId;)V

    .line 388
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->mediaDrm:Landroidx/media3/exoplayer/drm/ExoMediaDrm;

    iget-object v2, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->sessionId:[B

    invoke-interface {v0, v2}, Landroidx/media3/exoplayer/drm/ExoMediaDrm;->createCryptoConfig([B)Landroidx/media3/decoder/CryptoConfig;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->cryptoConfig:Landroidx/media3/decoder/CryptoConfig;

    .line 389
    const/4 v0, 0x3

    iput v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->state:I

    .line 391
    iget v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->state:I

    .line 392
    .local v0, "localState":I
    new-instance v2, Landroidx/media3/exoplayer/drm/DefaultDrmSession$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Landroidx/media3/exoplayer/drm/DefaultDrmSession$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-direct {p0, v2}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->dispatchEvent(Landroidx/media3/common/util/Consumer;)V

    .line 393
    iget-object v2, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->sessionId:[B

    invoke-static {v2}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/media/NotProvisionedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 394
    return v1

    .line 397
    .end local v0    # "localState":I
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 399
    .local v0, "e":Ljava/lang/Throwable;
    :goto_0
    invoke-static {v0}, Landroidx/media3/exoplayer/drm/DrmUtil;->isFailureToConstructNotProvisionedException(Ljava/lang/Throwable;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 400
    iget-object v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->provisioningManager:Landroidx/media3/exoplayer/drm/DefaultDrmSession$ProvisioningManager;

    invoke-interface {v1, p0}, Landroidx/media3/exoplayer/drm/DefaultDrmSession$ProvisioningManager;->provisionRequired(Landroidx/media3/exoplayer/drm/DefaultDrmSession;)V

    goto :goto_1

    .line 402
    :cond_1
    invoke-direct {p0, v0, v1}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->onError(Ljava/lang/Throwable;I)V

    goto :goto_1

    .line 395
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_2
    move-exception v0

    .line 396
    .local v0, "e":Landroid/media/NotProvisionedException;
    iget-object v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->provisioningManager:Landroidx/media3/exoplayer/drm/DefaultDrmSession$ProvisioningManager;

    invoke-interface {v1, p0}, Landroidx/media3/exoplayer/drm/DefaultDrmSession$ProvisioningManager;->provisionRequired(Landroidx/media3/exoplayer/drm/DefaultDrmSession;)V

    .line 404
    .end local v0    # "e":Landroid/media/NotProvisionedException;
    nop

    .line 406
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method private postKeyRequest([BIZ)V
    .locals 3
    .param p1, "scope"    # [B
    .param p2, "type"    # I
    .param p3, "allowRetry"    # Z

    .line 497
    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->mediaDrm:Landroidx/media3/exoplayer/drm/ExoMediaDrm;

    iget-object v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->schemeDatas:Ljava/util/List;

    iget-object v2, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->keyRequestParameters:Ljava/util/HashMap;

    invoke-interface {v0, p1, v1, p2, v2}, Landroidx/media3/exoplayer/drm/ExoMediaDrm;->getKeyRequest([BLjava/util/List;ILjava/util/HashMap;)Landroidx/media3/exoplayer/drm/ExoMediaDrm$KeyRequest;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->currentKeyRequest:Landroidx/media3/exoplayer/drm/ExoMediaDrm$KeyRequest;

    .line 498
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->requestHandler:Landroidx/media3/exoplayer/drm/DefaultDrmSession$RequestHandler;

    invoke-static {v0}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/drm/DefaultDrmSession$RequestHandler;

    iget-object v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->currentKeyRequest:Landroidx/media3/exoplayer/drm/ExoMediaDrm$KeyRequest;

    .line 499
    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1, p3}, Landroidx/media3/exoplayer/drm/DefaultDrmSession$RequestHandler;->post(ILjava/lang/Object;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 502
    goto :goto_1

    .line 500
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 501
    .local v0, "e":Ljava/lang/Throwable;
    :goto_0
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->onKeysError(Ljava/lang/Throwable;Z)V

    .line 503
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_1
    return-void
.end method

.method private restoreKeys()Z
    .locals 4
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "sessionId",
            "offlineLicenseKeySetId"
        }
    .end annotation

    .line 478
    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->mediaDrm:Landroidx/media3/exoplayer/drm/ExoMediaDrm;

    iget-object v2, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->sessionId:[B

    iget-object v3, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->offlineLicenseKeySetId:[B

    invoke-interface {v1, v2, v3}, Landroidx/media3/exoplayer/drm/ExoMediaDrm;->restoreKeys([B[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 479
    return v0

    .line 480
    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 481
    .local v1, "e":Ljava/lang/Throwable;
    :goto_0
    invoke-direct {p0, v1, v0}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->onError(Ljava/lang/Throwable;I)V

    .line 483
    .end local v1    # "e":Ljava/lang/Throwable;
    const/4 v0, 0x0

    return v0
.end method

.method private verifyPlaybackThread()V
    .locals 3

    .line 598
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->playbackLooper:Landroid/os/Looper;

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 599
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DefaultDrmSession accessed on the wrong thread.\nCurrent thread: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 602
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nExpected thread: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->playbackLooper:Landroid/os/Looper;

    .line 604
    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 599
    const-string v2, "DefaultDrmSession"

    invoke-static {v2, v0, v1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 607
    :cond_0
    return-void
.end method


# virtual methods
.method public acquire(Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)V
    .locals 4
    .param p1, "eventDispatcher"    # Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    .line 311
    invoke-direct {p0}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->verifyPlaybackThread()V

    .line 312
    iget v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->referenceCount:I

    const/4 v1, 0x0

    if-gez v0, :cond_0

    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Session reference count less than zero: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->referenceCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "DefaultDrmSession"

    invoke-static {v2, v0}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    iput v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->referenceCount:I

    .line 316
    :cond_0
    if-eqz p1, :cond_1

    .line 317
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->eventDispatchers:Landroidx/media3/common/util/CopyOnWriteMultiset;

    invoke-virtual {v0, p1}, Landroidx/media3/common/util/CopyOnWriteMultiset;->add(Ljava/lang/Object;)V

    .line 319
    :cond_1
    iget v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->referenceCount:I

    const/4 v2, 0x1

    add-int/2addr v0, v2

    iput v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->referenceCount:I

    if-ne v0, v2, :cond_3

    .line 320
    iget v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->state:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    move v1, v2

    :cond_2
    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 321
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ExoPlayer:DrmRequestHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->requestHandlerThread:Landroid/os/HandlerThread;

    .line 322
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->requestHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 323
    new-instance v0, Landroidx/media3/exoplayer/drm/DefaultDrmSession$RequestHandler;

    iget-object v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->requestHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroidx/media3/exoplayer/drm/DefaultDrmSession$RequestHandler;-><init>(Landroidx/media3/exoplayer/drm/DefaultDrmSession;Landroid/os/Looper;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->requestHandler:Landroidx/media3/exoplayer/drm/DefaultDrmSession$RequestHandler;

    .line 324
    invoke-direct {p0}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->openInternal()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 325
    invoke-direct {p0, v2}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->doLicense(Z)V

    goto :goto_0

    .line 327
    :cond_3
    if-eqz p1, :cond_4

    .line 328
    invoke-direct {p0}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->eventDispatchers:Landroidx/media3/common/util/CopyOnWriteMultiset;

    .line 329
    invoke-virtual {v0, p1}, Landroidx/media3/common/util/CopyOnWriteMultiset;->count(Ljava/lang/Object;)I

    move-result v0

    if-ne v0, v2, :cond_4

    .line 332
    iget v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->state:I

    invoke-virtual {p1, v0}, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;->drmSessionAcquired(I)V

    .line 334
    :cond_4
    :goto_0
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->referenceCountListener:Landroidx/media3/exoplayer/drm/DefaultDrmSession$ReferenceCountListener;

    iget v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->referenceCount:I

    invoke-interface {v0, p0, v1}, Landroidx/media3/exoplayer/drm/DefaultDrmSession$ReferenceCountListener;->onReferenceCountIncremented(Landroidx/media3/exoplayer/drm/DefaultDrmSession;I)V

    .line 335
    return-void
.end method

.method public final getCryptoConfig()Landroidx/media3/decoder/CryptoConfig;
    .locals 1

    .line 285
    invoke-direct {p0}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->verifyPlaybackThread()V

    .line 286
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->cryptoConfig:Landroidx/media3/decoder/CryptoConfig;

    return-object v0
.end method

.method public final getError()Landroidx/media3/exoplayer/drm/DrmSession$DrmSessionException;
    .locals 2

    .line 272
    invoke-direct {p0}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->verifyPlaybackThread()V

    .line 273
    iget v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->lastException:Landroidx/media3/exoplayer/drm/DrmSession$DrmSessionException;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getOfflineLicenseKeySetId()[B
    .locals 1

    .line 299
    invoke-direct {p0}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->verifyPlaybackThread()V

    .line 300
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->offlineLicenseKeySetId:[B

    return-object v0
.end method

.method public final getSchemeUuid()Ljava/util/UUID;
    .locals 1

    .line 278
    invoke-direct {p0}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->verifyPlaybackThread()V

    .line 279
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->uuid:Ljava/util/UUID;

    return-object v0
.end method

.method public final getState()I
    .locals 1

    .line 259
    invoke-direct {p0}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->verifyPlaybackThread()V

    .line 260
    iget v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->state:I

    return v0
.end method

.method public hasSessionId([B)Z
    .locals 1
    .param p1, "sessionId"    # [B

    .line 216
    invoke-direct {p0}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->verifyPlaybackThread()V

    .line 217
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->sessionId:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    return v0
.end method

.method onMediaDrmEvent(I)V
    .locals 0
    .param p1, "what"    # I

    .line 221
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 223
    :pswitch_0
    invoke-direct {p0}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->onKeysRequired()V

    .line 224
    nop

    .line 228
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method onProvisionCompleted()V
    .locals 1

    .line 242
    invoke-direct {p0}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->openInternal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->doLicense(Z)V

    .line 245
    :cond_0
    return-void
.end method

.method onProvisionError(Ljava/lang/Exception;Z)V
    .locals 1
    .param p1, "error"    # Ljava/lang/Exception;
    .param p2, "thrownByExoMediaDrm"    # Z

    .line 248
    nop

    .line 250
    if-eqz p2, :cond_0

    .line 251
    const/4 v0, 0x1

    goto :goto_0

    .line 252
    :cond_0
    const/4 v0, 0x3

    .line 248
    :goto_0
    invoke-direct {p0, p1, v0}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->onError(Ljava/lang/Throwable;I)V

    .line 253
    return-void
.end method

.method public playClearSamplesWithoutKeys()Z
    .locals 1

    .line 265
    invoke-direct {p0}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->verifyPlaybackThread()V

    .line 266
    iget-boolean v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->playClearSamplesWithoutKeys:Z

    return v0
.end method

.method provision()V
    .locals 3

    .line 233
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->mediaDrm:Landroidx/media3/exoplayer/drm/ExoMediaDrm;

    invoke-interface {v0}, Landroidx/media3/exoplayer/drm/ExoMediaDrm;->getProvisionRequest()Landroidx/media3/exoplayer/drm/ExoMediaDrm$ProvisionRequest;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->currentProvisionRequest:Landroidx/media3/exoplayer/drm/ExoMediaDrm$ProvisionRequest;

    .line 234
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->requestHandler:Landroidx/media3/exoplayer/drm/DefaultDrmSession$RequestHandler;

    invoke-static {v0}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/drm/DefaultDrmSession$RequestHandler;

    iget-object v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->currentProvisionRequest:Landroidx/media3/exoplayer/drm/ExoMediaDrm$ProvisionRequest;

    .line 237
    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 235
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1, v2}, Landroidx/media3/exoplayer/drm/DefaultDrmSession$RequestHandler;->post(ILjava/lang/Object;Z)V

    .line 239
    return-void
.end method

.method public queryKeyStatus()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 292
    invoke-direct {p0}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->verifyPlaybackThread()V

    .line 293
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->sessionId:[B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->mediaDrm:Landroidx/media3/exoplayer/drm/ExoMediaDrm;

    iget-object v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->sessionId:[B

    invoke-interface {v0, v1}, Landroidx/media3/exoplayer/drm/ExoMediaDrm;->queryKeyStatus([B)Ljava/util/Map;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public release(Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)V
    .locals 3
    .param p1, "eventDispatcher"    # Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    .line 339
    invoke-direct {p0}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->verifyPlaybackThread()V

    .line 340
    iget v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->referenceCount:I

    if-gtz v0, :cond_0

    .line 341
    const-string v0, "DefaultDrmSession"

    const-string/jumbo v1, "release() called on a session that\'s already fully released."

    invoke-static {v0, v1}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    return-void

    .line 344
    :cond_0
    iget v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->referenceCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->referenceCount:I

    if-nez v0, :cond_1

    .line 346
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->state:I

    .line 347
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->responseHandler:Landroidx/media3/exoplayer/drm/DefaultDrmSession$ResponseHandler;

    invoke-static {v0}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/drm/DefaultDrmSession$ResponseHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/drm/DefaultDrmSession$ResponseHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 348
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->requestHandler:Landroidx/media3/exoplayer/drm/DefaultDrmSession$RequestHandler;

    invoke-static {v0}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/drm/DefaultDrmSession$RequestHandler;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/drm/DefaultDrmSession$RequestHandler;->release()V

    .line 349
    iput-object v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->requestHandler:Landroidx/media3/exoplayer/drm/DefaultDrmSession$RequestHandler;

    .line 350
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->requestHandlerThread:Landroid/os/HandlerThread;

    invoke-static {v0}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 351
    iput-object v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->requestHandlerThread:Landroid/os/HandlerThread;

    .line 352
    iput-object v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->cryptoConfig:Landroidx/media3/decoder/CryptoConfig;

    .line 353
    iput-object v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->lastException:Landroidx/media3/exoplayer/drm/DrmSession$DrmSessionException;

    .line 354
    iput-object v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->currentKeyRequest:Landroidx/media3/exoplayer/drm/ExoMediaDrm$KeyRequest;

    .line 355
    iput-object v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->currentProvisionRequest:Landroidx/media3/exoplayer/drm/ExoMediaDrm$ProvisionRequest;

    .line 356
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->sessionId:[B

    if-eqz v0, :cond_1

    .line 357
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->mediaDrm:Landroidx/media3/exoplayer/drm/ExoMediaDrm;

    iget-object v2, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->sessionId:[B

    invoke-interface {v0, v2}, Landroidx/media3/exoplayer/drm/ExoMediaDrm;->closeSession([B)V

    .line 358
    iput-object v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->sessionId:[B

    .line 361
    :cond_1
    if-eqz p1, :cond_2

    .line 362
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->eventDispatchers:Landroidx/media3/common/util/CopyOnWriteMultiset;

    invoke-virtual {v0, p1}, Landroidx/media3/common/util/CopyOnWriteMultiset;->remove(Ljava/lang/Object;)V

    .line 363
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->eventDispatchers:Landroidx/media3/common/util/CopyOnWriteMultiset;

    invoke-virtual {v0, p1}, Landroidx/media3/common/util/CopyOnWriteMultiset;->count(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_2

    .line 365
    invoke-virtual {p1}, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;->drmSessionReleased()V

    .line 368
    :cond_2
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->referenceCountListener:Landroidx/media3/exoplayer/drm/DefaultDrmSession$ReferenceCountListener;

    iget v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->referenceCount:I

    invoke-interface {v0, p0, v1}, Landroidx/media3/exoplayer/drm/DefaultDrmSession$ReferenceCountListener;->onReferenceCountDecremented(Landroidx/media3/exoplayer/drm/DefaultDrmSession;I)V

    .line 369
    return-void
.end method

.method public requiresSecureDecoder(Ljava/lang/String;)Z
    .locals 2
    .param p1, "mimeType"    # Ljava/lang/String;

    .line 305
    invoke-direct {p0}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->verifyPlaybackThread()V

    .line 306
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->mediaDrm:Landroidx/media3/exoplayer/drm/ExoMediaDrm;

    iget-object v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->sessionId:[B

    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-interface {v0, v1, p1}, Landroidx/media3/exoplayer/drm/ExoMediaDrm;->requiresSecureDecoder([BLjava/lang/String;)Z

    move-result v0

    return v0
.end method
