.class public final Landroidx/media3/exoplayer/util/SntpClient;
.super Ljava/lang/Object;
.source "SntpClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/util/SntpClient$InitializationCallback;,
        Landroidx/media3/exoplayer/util/SntpClient$NtpTimeLoadable;,
        Landroidx/media3/exoplayer/util/SntpClient$NtpTimeCallback;
    }
.end annotation


# static fields
.field public static final DEFAULT_NTP_HOST:Ljava/lang/String; = "time.android.com"

.field public static final DEFAULT_TIMEOUT_MS:I = 0x3e8

.field private static final MAX_RETRY_COUNT:I = 0xa

.field private static final NTP_LEAP_NOSYNC:I = 0x3

.field private static final NTP_MODE_BROADCAST:I = 0x5

.field private static final NTP_MODE_CLIENT:I = 0x3

.field private static final NTP_MODE_SERVER:I = 0x4

.field private static final NTP_PACKET_SIZE:I = 0x30

.field private static final NTP_PORT:I = 0x7b

.field private static final NTP_STRATUM_DEATH:I = 0x0

.field private static final NTP_STRATUM_MAX:I = 0xf

.field private static final NTP_VERSION:I = 0x3

.field private static final OFFSET_1900_TO_1970:J = 0x83aa7e80L

.field private static final ORIGINATE_TIME_OFFSET:I = 0x18

.field private static final RECEIVE_TIME_OFFSET:I = 0x20

.field private static final TRANSMIT_TIME_OFFSET:I = 0x28

.field private static elapsedRealtimeOffsetMs:J

.field private static isInitialized:Z

.field private static lastUpdateElapsedRealtime:J

.field private static final loaderLock:Ljava/lang/Object;

.field private static maxElapsedTimeUntilUpdateMs:J

.field private static ntpHost:Ljava/lang/String;

.field private static timeoutMs:I

.field private static final valueLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 84
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/media3/exoplayer/util/SntpClient;->loaderLock:Ljava/lang/Object;

    .line 85
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/media3/exoplayer/util/SntpClient;->valueLock:Ljava/lang/Object;

    .line 94
    const-string/jumbo v0, "time.android.com"

    sput-object v0, Landroidx/media3/exoplayer/util/SntpClient;->ntpHost:Ljava/lang/String;

    .line 97
    const/16 v0, 0x3e8

    sput v0, Landroidx/media3/exoplayer/util/SntpClient;->timeoutMs:I

    .line 100
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    sput-wide v0, Landroidx/media3/exoplayer/util/SntpClient;->maxElapsedTimeUntilUpdateMs:J

    .line 103
    sput-wide v0, Landroidx/media3/exoplayer/util/SntpClient;->lastUpdateElapsedRealtime:J

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/Object;
    .locals 1

    .line 44
    sget-object v0, Landroidx/media3/exoplayer/util/SntpClient;->loaderLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/Object;
    .locals 1

    .line 44
    sget-object v0, Landroidx/media3/exoplayer/util/SntpClient;->valueLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300()Z
    .locals 1

    .line 44
    sget-boolean v0, Landroidx/media3/exoplayer/util/SntpClient;->isInitialized:Z

    return v0
.end method

.method static synthetic access$302(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .line 44
    sput-boolean p0, Landroidx/media3/exoplayer/util/SntpClient;->isInitialized:Z

    return p0
.end method

.method static synthetic access$400()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    invoke-static {}, Landroidx/media3/exoplayer/util/SntpClient;->loadNtpTimeOffsetMs()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$502(J)J
    .locals 0
    .param p0, "x0"    # J

    .line 44
    sput-wide p0, Landroidx/media3/exoplayer/util/SntpClient;->lastUpdateElapsedRealtime:J

    return-wide p0
.end method

.method static synthetic access$602(J)J
    .locals 0
    .param p0, "x0"    # J

    .line 44
    sput-wide p0, Landroidx/media3/exoplayer/util/SntpClient;->elapsedRealtimeOffsetMs:J

    return-wide p0
.end method

.method private static checkValidServerReply(BBIJ)V
    .locals 3
    .param p0, "leap"    # B
    .param p1, "mode"    # B
    .param p2, "stratum"    # I
    .param p3, "transmitTime"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 355
    const/4 v0, 0x3

    if-eq p0, v0, :cond_4

    .line 358
    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 359
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SNTP: Untrusted mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 361
    :cond_1
    :goto_0
    if-eqz p2, :cond_3

    const/16 v0, 0xf

    if-gt p2, v0, :cond_3

    .line 364
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-eqz v0, :cond_2

    .line 367
    return-void

    .line 365
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "SNTP: Zero transmitTime"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 362
    :cond_3
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SNTP: Untrusted stratum: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 356
    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "SNTP: Unsynchronized server"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getElapsedRealtimeOffsetMs()J
    .locals 3

    .line 199
    sget-object v0, Landroidx/media3/exoplayer/util/SntpClient;->valueLock:Ljava/lang/Object;

    monitor-enter v0

    .line 200
    :try_start_0
    sget-boolean v1, Landroidx/media3/exoplayer/util/SntpClient;->isInitialized:Z

    if-eqz v1, :cond_0

    sget-wide v1, Landroidx/media3/exoplayer/util/SntpClient;->elapsedRealtimeOffsetMs:J

    goto :goto_0

    :cond_0
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    :goto_0
    monitor-exit v0

    return-wide v1

    .line 201
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getMaxElapsedTimeUntilUpdateMs()J
    .locals 3

    .line 170
    sget-object v0, Landroidx/media3/exoplayer/util/SntpClient;->valueLock:Ljava/lang/Object;

    monitor-enter v0

    .line 171
    :try_start_0
    sget-wide v1, Landroidx/media3/exoplayer/util/SntpClient;->maxElapsedTimeUntilUpdateMs:J

    monitor-exit v0

    return-wide v1

    .line 172
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getNtpHost()Ljava/lang/String;
    .locals 2

    .line 109
    sget-object v0, Landroidx/media3/exoplayer/util/SntpClient;->valueLock:Ljava/lang/Object;

    monitor-enter v0

    .line 110
    :try_start_0
    sget-object v1, Landroidx/media3/exoplayer/util/SntpClient;->ntpHost:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 111
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getTimeoutMs()I
    .locals 2

    .line 135
    sget-object v0, Landroidx/media3/exoplayer/util/SntpClient;->valueLock:Ljava/lang/Object;

    monitor-enter v0

    .line 136
    :try_start_0
    sget v1, Landroidx/media3/exoplayer/util/SntpClient;->timeoutMs:I

    monitor-exit v0

    return v1

    .line 137
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static initialize(Landroidx/media3/exoplayer/upstream/Loader;Landroidx/media3/exoplayer/util/SntpClient$InitializationCallback;)V
    .locals 3
    .param p0, "loader"    # Landroidx/media3/exoplayer/upstream/Loader;
    .param p1, "callback"    # Landroidx/media3/exoplayer/util/SntpClient$InitializationCallback;

    .line 213
    invoke-static {}, Landroidx/media3/exoplayer/util/SntpClient;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 214
    if-eqz p1, :cond_0

    .line 215
    invoke-interface {p1}, Landroidx/media3/exoplayer/util/SntpClient$InitializationCallback;->onInitialized()V

    .line 217
    :cond_0
    return-void

    .line 219
    :cond_1
    if-nez p0, :cond_2

    .line 220
    new-instance v0, Landroidx/media3/exoplayer/upstream/Loader;

    const-string v1, "SntpClient"

    invoke-direct {v0, v1}, Landroidx/media3/exoplayer/upstream/Loader;-><init>(Ljava/lang/String;)V

    move-object p0, v0

    .line 222
    :cond_2
    new-instance v0, Landroidx/media3/exoplayer/util/SntpClient$NtpTimeLoadable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/media3/exoplayer/util/SntpClient$NtpTimeLoadable;-><init>(Landroidx/media3/exoplayer/util/SntpClient$1;)V

    new-instance v1, Landroidx/media3/exoplayer/util/SntpClient$NtpTimeCallback;

    invoke-direct {v1, p1}, Landroidx/media3/exoplayer/util/SntpClient$NtpTimeCallback;-><init>(Landroidx/media3/exoplayer/util/SntpClient$InitializationCallback;)V

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Landroidx/media3/exoplayer/upstream/Loader;->startLoading(Landroidx/media3/exoplayer/upstream/Loader$Loadable;Landroidx/media3/exoplayer/upstream/Loader$Callback;I)J

    .line 224
    return-void
.end method

.method public static isInitialized()Z
    .locals 5

    .line 182
    sget-object v0, Landroidx/media3/exoplayer/util/SntpClient;->valueLock:Ljava/lang/Object;

    monitor-enter v0

    .line 183
    :try_start_0
    sget-wide v1, Landroidx/media3/exoplayer/util/SntpClient;->lastUpdateElapsedRealtime:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    sget-wide v1, Landroidx/media3/exoplayer/util/SntpClient;->maxElapsedTimeUntilUpdateMs:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    .line 185
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sget-wide v3, Landroidx/media3/exoplayer/util/SntpClient;->lastUpdateElapsedRealtime:J

    sub-long/2addr v1, v3

    .line 186
    .local v1, "deltaLastUpdate":J
    sget-boolean v3, Landroidx/media3/exoplayer/util/SntpClient;->isInitialized:Z

    if-eqz v3, :cond_0

    sget-wide v3, Landroidx/media3/exoplayer/util/SntpClient;->maxElapsedTimeUntilUpdateMs:J

    cmp-long v3, v1, v3

    if-gez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    sput-boolean v3, Landroidx/media3/exoplayer/util/SntpClient;->isInitialized:Z

    .line 188
    .end local v1    # "deltaLastUpdate":J
    :cond_1
    sget-boolean v1, Landroidx/media3/exoplayer/util/SntpClient;->isInitialized:Z

    monitor-exit v0

    return v1

    .line 189
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static loadNtpTimeOffsetMs()J
    .locals 33
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 227
    new-instance v0, Ljava/net/DatagramSocket;

    invoke-direct {v0}, Ljava/net/DatagramSocket;-><init>()V

    move-object v1, v0

    .line 228
    .local v1, "socket":Ljava/net/DatagramSocket;
    :try_start_0
    invoke-static {}, Landroidx/media3/exoplayer/util/SntpClient;->getTimeoutMs()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    .line 230
    const/4 v0, 0x0

    .line 231
    .local v0, "retryCount":I
    const/4 v2, 0x0

    .line 232
    .local v2, "timeoutException":Ljava/net/SocketTimeoutException;
    invoke-static {}, Landroidx/media3/exoplayer/util/SntpClient;->getNtpHost()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v3

    .line 233
    .local v3, "addresses":[Ljava/net/InetAddress;
    array-length v4, v3

    const/4 v5, 0x0

    move-object v6, v2

    move v7, v5

    move v2, v0

    .end local v0    # "retryCount":I
    .local v2, "retryCount":I
    .local v6, "timeoutException":Ljava/net/SocketTimeoutException;
    :goto_0
    if-ge v7, v4, :cond_2

    aget-object v0, v3, v7

    move-object v8, v0

    .line 234
    .local v8, "address":Ljava/net/InetAddress;
    const/16 v0, 0x30

    new-array v0, v0, [B

    move-object v9, v0

    .line 235
    .local v9, "buffer":[B
    new-instance v0, Ljava/net/DatagramPacket;

    array-length v10, v9

    const/16 v11, 0x7b

    invoke-direct {v0, v9, v10, v8, v11}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    move-object v10, v0

    .line 239
    .local v10, "request":Ljava/net/DatagramPacket;
    const/16 v0, 0x1b

    aput-byte v0, v9, v5

    .line 242
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 243
    .local v11, "requestTime":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    .line 244
    .local v13, "requestTicks":J
    const/16 v0, 0x28

    invoke-static {v9, v0, v11, v12}, Landroidx/media3/exoplayer/util/SntpClient;->writeTimestamp([BIJ)V

    .line 246
    invoke-virtual {v1, v10}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 249
    new-instance v15, Ljava/net/DatagramPacket;

    array-length v0, v9

    invoke-direct {v15, v9, v0}, Ljava/net/DatagramPacket;-><init>([BI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    .local v15, "response":Ljava/net/DatagramPacket;
    :try_start_1
    invoke-virtual {v1, v15}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 264
    nop

    .line 266
    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v17

    .line 267
    .local v17, "responseTicks":J
    sub-long v19, v17, v13

    add-long v19, v11, v19

    .line 270
    .local v19, "responseTime":J
    aget-byte v0, v9, v5

    shr-int/lit8 v0, v0, 0x6

    and-int/lit8 v0, v0, 0x3

    int-to-byte v0, v0

    .line 271
    .local v0, "leap":B
    aget-byte v4, v9, v5

    and-int/lit8 v4, v4, 0x7

    int-to-byte v4, v4

    .line 272
    .local v4, "mode":B
    const/4 v5, 0x1

    aget-byte v5, v9, v5

    and-int/lit16 v5, v5, 0xff

    .line 273
    .local v5, "stratum":I
    const/16 v7, 0x18

    invoke-static {v9, v7}, Landroidx/media3/exoplayer/util/SntpClient;->readTimestamp([BI)J

    move-result-wide v21

    .line 274
    .local v21, "originateTime":J
    const/16 v7, 0x20

    invoke-static {v9, v7}, Landroidx/media3/exoplayer/util/SntpClient;->readTimestamp([BI)J

    move-result-wide v23

    .line 275
    .local v23, "receiveTime":J
    const/16 v7, 0x28

    invoke-static {v9, v7}, Landroidx/media3/exoplayer/util/SntpClient;->readTimestamp([BI)J

    move-result-wide v25

    move-wide/from16 v27, v25

    .line 278
    .local v27, "transmitTime":J
    move-object/from16 v16, v8

    move-wide/from16 v7, v27

    .end local v8    # "address":Ljava/net/InetAddress;
    .end local v27    # "transmitTime":J
    .local v7, "transmitTime":J
    .local v16, "address":Ljava/net/InetAddress;
    invoke-static {v0, v4, v5, v7, v8}, Landroidx/media3/exoplayer/util/SntpClient;->checkValidServerReply(BBIJ)V

    .line 288
    sub-long v25, v23, v21

    sub-long v27, v7, v19

    add-long v25, v25, v27

    const-wide/16 v27, 0x2

    div-long v25, v25, v27
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 292
    .local v25, "clockOffset":J
    add-long v27, v19, v25

    .line 293
    .local v27, "ntpTime":J
    move-wide/from16 v29, v17

    .line 295
    .local v29, "ntpTimeReference":J
    sub-long v31, v27, v29

    .line 299
    invoke-virtual {v1}, Ljava/net/DatagramSocket;->close()V

    .line 295
    return-wide v31

    .line 252
    .end local v0    # "leap":B
    .end local v4    # "mode":B
    .end local v5    # "stratum":I
    .end local v7    # "transmitTime":J
    .end local v16    # "address":Ljava/net/InetAddress;
    .end local v17    # "responseTicks":J
    .end local v19    # "responseTime":J
    .end local v21    # "originateTime":J
    .end local v23    # "receiveTime":J
    .end local v25    # "clockOffset":J
    .end local v27    # "ntpTime":J
    .end local v29    # "ntpTimeReference":J
    .restart local v8    # "address":Ljava/net/InetAddress;
    :catch_0
    move-exception v0

    move-object/from16 v16, v8

    move-object v8, v0

    .end local v8    # "address":Ljava/net/InetAddress;
    .restart local v16    # "address":Ljava/net/InetAddress;
    move-object v0, v8

    .line 254
    .local v0, "e":Ljava/net/SocketTimeoutException;
    if-nez v6, :cond_0

    .line 255
    move-object v6, v0

    goto :goto_1

    .line 257
    :cond_0
    :try_start_3
    invoke-virtual {v6, v0}, Ljava/net/SocketTimeoutException;->addSuppressed(Ljava/lang/Throwable;)V

    .line 259
    :goto_1
    add-int/lit8 v8, v2, 0x1

    .end local v2    # "retryCount":I
    .local v8, "retryCount":I
    const/16 v5, 0xa

    if-ge v2, v5, :cond_1

    .line 260
    nop

    .line 233
    .end local v0    # "e":Ljava/net/SocketTimeoutException;
    .end local v9    # "buffer":[B
    .end local v10    # "request":Ljava/net/DatagramPacket;
    .end local v11    # "requestTime":J
    .end local v13    # "requestTicks":J
    .end local v15    # "response":Ljava/net/DatagramPacket;
    .end local v16    # "address":Ljava/net/InetAddress;
    add-int/lit8 v7, v7, 0x1

    move v2, v8

    const/4 v5, 0x0

    goto/16 :goto_0

    .line 262
    .restart local v0    # "e":Ljava/net/SocketTimeoutException;
    .restart local v9    # "buffer":[B
    .restart local v10    # "request":Ljava/net/DatagramPacket;
    .restart local v11    # "requestTime":J
    .restart local v13    # "requestTicks":J
    .restart local v15    # "response":Ljava/net/DatagramPacket;
    .restart local v16    # "address":Ljava/net/InetAddress;
    :cond_1
    move v2, v8

    .line 298
    .end local v0    # "e":Ljava/net/SocketTimeoutException;
    .end local v8    # "retryCount":I
    .end local v9    # "buffer":[B
    .end local v10    # "request":Ljava/net/DatagramPacket;
    .end local v11    # "requestTime":J
    .end local v13    # "requestTicks":J
    .end local v15    # "response":Ljava/net/DatagramPacket;
    .end local v16    # "address":Ljava/net/InetAddress;
    .restart local v2    # "retryCount":I
    :cond_2
    invoke-static {v6}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/SocketTimeoutException;

    .end local v1    # "socket":Ljava/net/DatagramSocket;
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 227
    .end local v2    # "retryCount":I
    .end local v3    # "addresses":[Ljava/net/InetAddress;
    .end local v6    # "timeoutException":Ljava/net/SocketTimeoutException;
    .restart local v1    # "socket":Ljava/net/DatagramSocket;
    :catchall_0
    move-exception v0

    move-object v2, v0

    :try_start_4
    invoke-virtual {v1}, Ljava/net/DatagramSocket;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v2
.end method

.method private static read32([BI)J
    .locals 13
    .param p0, "buffer"    # [B
    .param p1, "offset"    # I

    .line 339
    aget-byte v0, p0, p1

    .line 340
    .local v0, "b0":B
    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    .line 341
    .local v1, "b1":B
    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    .line 342
    .local v2, "b2":B
    add-int/lit8 v3, p1, 0x3

    aget-byte v3, p0, v3

    .line 345
    .local v3, "b3":B
    and-int/lit16 v4, v0, 0x80

    const/16 v5, 0x80

    if-ne v4, v5, :cond_0

    and-int/lit8 v4, v0, 0x7f

    add-int/2addr v4, v5

    goto :goto_0

    :cond_0
    move v4, v0

    .line 346
    .local v4, "i0":I
    :goto_0
    and-int/lit16 v6, v1, 0x80

    if-ne v6, v5, :cond_1

    and-int/lit8 v6, v1, 0x7f

    add-int/2addr v6, v5

    goto :goto_1

    :cond_1
    move v6, v1

    .line 347
    .local v6, "i1":I
    :goto_1
    and-int/lit16 v7, v2, 0x80

    if-ne v7, v5, :cond_2

    and-int/lit8 v7, v2, 0x7f

    add-int/2addr v7, v5

    goto :goto_2

    :cond_2
    move v7, v2

    .line 348
    .local v7, "i2":I
    :goto_2
    and-int/lit16 v8, v3, 0x80

    if-ne v8, v5, :cond_3

    and-int/lit8 v8, v3, 0x7f

    add-int/2addr v8, v5

    goto :goto_3

    :cond_3
    move v8, v3

    :goto_3
    move v5, v8

    .line 350
    .local v5, "i3":I
    int-to-long v8, v4

    const/16 v10, 0x18

    shl-long/2addr v8, v10

    int-to-long v10, v6

    const/16 v12, 0x10

    shl-long/2addr v10, v12

    add-long/2addr v8, v10

    int-to-long v10, v7

    const/16 v12, 0x8

    shl-long/2addr v10, v12

    add-long/2addr v8, v10

    int-to-long v10, v5

    add-long/2addr v8, v10

    return-wide v8
.end method

.method private static readTimestamp([BI)J
    .locals 10
    .param p0, "buffer"    # [B
    .param p1, "offset"    # I

    .line 303
    invoke-static {p0, p1}, Landroidx/media3/exoplayer/util/SntpClient;->read32([BI)J

    move-result-wide v0

    .line 304
    .local v0, "seconds":J
    add-int/lit8 v2, p1, 0x4

    invoke-static {p0, v2}, Landroidx/media3/exoplayer/util/SntpClient;->read32([BI)J

    move-result-wide v2

    .line 306
    .local v2, "fraction":J
    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-nez v6, :cond_0

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    .line 307
    return-wide v4

    .line 309
    :cond_0
    const-wide v4, 0x83aa7e80L

    sub-long v4, v0, v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    mul-long/2addr v6, v2

    const-wide v8, 0x100000000L

    div-long/2addr v6, v8

    add-long/2addr v4, v6

    return-wide v4
.end method

.method public static setMaxElapsedTimeUntilUpdateMs(J)V
    .locals 2
    .param p0, "maxElapsedTimeUntilUpdateMs"    # J

    .line 163
    sget-object v0, Landroidx/media3/exoplayer/util/SntpClient;->valueLock:Ljava/lang/Object;

    monitor-enter v0

    .line 164
    :try_start_0
    sput-wide p0, Landroidx/media3/exoplayer/util/SntpClient;->maxElapsedTimeUntilUpdateMs:J

    .line 165
    monitor-exit v0

    .line 166
    return-void

    .line 165
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static setNtpHost(Ljava/lang/String;)V
    .locals 2
    .param p0, "ntpHost"    # Ljava/lang/String;

    .line 125
    sget-object v0, Landroidx/media3/exoplayer/util/SntpClient;->valueLock:Ljava/lang/Object;

    monitor-enter v0

    .line 126
    :try_start_0
    sget-object v1, Landroidx/media3/exoplayer/util/SntpClient;->ntpHost:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 127
    sput-object p0, Landroidx/media3/exoplayer/util/SntpClient;->ntpHost:Ljava/lang/String;

    .line 128
    const/4 v1, 0x0

    sput-boolean v1, Landroidx/media3/exoplayer/util/SntpClient;->isInitialized:Z

    .line 130
    :cond_0
    monitor-exit v0

    .line 131
    return-void

    .line 130
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static setTimeoutMs(I)V
    .locals 2
    .param p0, "timeoutMs"    # I

    .line 149
    sget-object v0, Landroidx/media3/exoplayer/util/SntpClient;->valueLock:Ljava/lang/Object;

    monitor-enter v0

    .line 150
    :try_start_0
    sget v1, Landroidx/media3/exoplayer/util/SntpClient;->timeoutMs:I

    if-eq v1, p0, :cond_0

    .line 151
    sput p0, Landroidx/media3/exoplayer/util/SntpClient;->timeoutMs:I

    .line 152
    const/4 v1, 0x0

    sput-boolean v1, Landroidx/media3/exoplayer/util/SntpClient;->isInitialized:Z

    .line 154
    :cond_0
    monitor-exit v0

    .line 155
    return-void

    .line 154
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static writeTimestamp([BIJ)V
    .locals 15
    .param p0, "buffer"    # [B
    .param p1, "offset"    # I
    .param p2, "time"    # J

    .line 314
    move-object v0, p0

    move/from16 v1, p1

    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 315
    add-int/lit8 v2, v1, 0x8

    invoke-static {p0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 316
    return-void

    .line 319
    :cond_0
    const-wide/16 v4, 0x3e8

    div-long v6, p2, v4

    .line 320
    .local v6, "seconds":J
    mul-long v8, v6, v4

    sub-long v8, p2, v8

    .line 321
    .local v8, "milliseconds":J
    const-wide v10, 0x83aa7e80L

    add-long/2addr v6, v10

    .line 324
    add-int/lit8 v2, v1, 0x1

    .end local p1    # "offset":I
    .local v2, "offset":I
    const/16 v10, 0x18

    shr-long v11, v6, v10

    long-to-int v11, v11

    int-to-byte v11, v11

    aput-byte v11, v0, v1

    .line 325
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "offset":I
    .local v1, "offset":I
    const/16 v11, 0x10

    shr-long v12, v6, v11

    long-to-int v12, v12

    int-to-byte v12, v12

    aput-byte v12, v0, v2

    .line 326
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "offset":I
    .restart local v2    # "offset":I
    const/16 v12, 0x8

    shr-long v13, v6, v12

    long-to-int v13, v13

    int-to-byte v13, v13

    aput-byte v13, v0, v1

    .line 327
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "offset":I
    .restart local v1    # "offset":I
    shr-long v13, v6, v3

    long-to-int v3, v13

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 329
    const-wide v2, 0x100000000L

    mul-long/2addr v2, v8

    div-long/2addr v2, v4

    .line 331
    .local v2, "fraction":J
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "offset":I
    .local v4, "offset":I
    shr-long v13, v2, v10

    long-to-int v5, v13

    int-to-byte v5, v5

    aput-byte v5, v0, v1

    .line 332
    add-int/lit8 v1, v4, 0x1

    .end local v4    # "offset":I
    .restart local v1    # "offset":I
    shr-long v10, v2, v11

    long-to-int v5, v10

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    .line 333
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "offset":I
    .restart local v4    # "offset":I
    shr-long v10, v2, v12

    long-to-int v5, v10

    int-to-byte v5, v5

    aput-byte v5, v0, v1

    .line 335
    add-int/lit8 v1, v4, 0x1

    .end local v4    # "offset":I
    .restart local v1    # "offset":I
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v10

    const-wide v12, 0x406fe00000000000L    # 255.0

    mul-double/2addr v10, v12

    double-to-int v5, v10

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    .line 336
    return-void
.end method
