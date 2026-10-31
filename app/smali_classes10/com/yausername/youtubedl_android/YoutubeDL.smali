.class public final Lcom/yausername/youtubedl_android/YoutubeDL;
.super Ljava/lang/Object;
.source "YoutubeDL.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yausername/youtubedl_android/YoutubeDL$CanceledException;,
        Lcom/yausername/youtubedl_android/YoutubeDL$UpdateStatus;,
        Lcom/yausername/youtubedl_android/YoutubeDL$UpdateChannel;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nYoutubeDL.kt\nKotlin\n*S Kotlin\n*F\n+ 1 YoutubeDL.kt\ncom/yausername/youtubedl_android/YoutubeDL\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,320:1\n1#2:321\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000~\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010%\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0003HIJB\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010#\u001a\u00020$H\u0002J\u0010\u0010%\u001a\u00020\u00152\u0006\u0010&\u001a\u00020\u0004H\u0002J\u000e\u0010\'\u001a\u00020\u00152\u0006\u0010&\u001a\u00020\u0004J>\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020+2\n\u0008\u0002\u0010,\u001a\u0004\u0018\u00010\u00042\"\u0008\u0002\u0010-\u001a\u001c\u0012\u0004\u0012\u00020/\u0012\u0004\u0012\u000200\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020$\u0018\u00010.JJ\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020+2\n\u0008\u0002\u0010,\u001a\u0004\u0018\u00010\u00042\u0008\u0008\u0002\u00101\u001a\u00020\u00152\"\u0008\u0002\u0010-\u001a\u001c\u0012\u0004\u0012\u00020/\u0012\u0004\u0012\u000200\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020$\u0018\u00010.H\u0007JJ\u00102\u001a\u00020)2\u0006\u0010*\u001a\u00020+2\n\u0008\u0002\u0010,\u001a\u0004\u0018\u00010\u00042\u0008\u0008\u0002\u00101\u001a\u00020\u00152\"\u0008\u0002\u0010-\u001a\u001c\u0012\u0004\u0012\u00020/\u0012\u0004\u0012\u000200\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020$\u0018\u00010.H\u0002J\u000e\u00103\u001a\u0002042\u0006\u0010*\u001a\u00020+J\u000e\u00103\u001a\u0002042\u0006\u00105\u001a\u00020\u0004J\u0008\u00106\u001a\u00020\u0000H\u0007J\u0018\u00107\u001a\u00020\u00152\u0006\u0010*\u001a\u00020+2\u0006\u00108\u001a\u00020\u0004H\u0002J\u000e\u00109\u001a\u00020$2\u0006\u0010:\u001a\u00020;J\u0016\u0010<\u001a\u00020$2\u0006\u0010:\u001a\u00020;2\u0006\u0010=\u001a\u00020\u000bJ\u0016\u0010>\u001a\u00020$2\u0006\u0010:\u001a\u00020;2\u0006\u0010?\u001a\u00020\u000bJ\u0018\u0010@\u001a\u00020\u00152\u0006\u0010:\u001a\u00020;2\u0006\u0010A\u001a\u00020\u0004H\u0002J\u0018\u0010B\u001a\u00020$2\u0006\u0010:\u001a\u00020;2\u0006\u0010A\u001a\u00020\u0004H\u0002J\u001a\u0010C\u001a\u0004\u0018\u00010D2\u0006\u0010:\u001a\u00020;2\u0008\u0008\u0002\u0010E\u001a\u00020FJ\u0012\u0010A\u001a\u0004\u0018\u00010\u00042\u0008\u0010:\u001a\u0004\u0018\u00010;J\u0012\u0010G\u001a\u0004\u0018\u00010\u00042\u0008\u0010:\u001a\u0004\u0018\u00010;R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000RN\u0010\u000f\u001aB\u0012\u000c\u0012\n \u0011*\u0004\u0018\u00010\u00040\u0004\u0012\u000c\u0012\n \u0011*\u0004\u0018\u00010\u00120\u0012 \u0011* \u0012\u000c\u0012\n \u0011*\u0004\u0018\u00010\u00040\u0004\u0012\u000c\u0012\n \u0011*\u0004\u0018\u00010\u00120\u0012\u0018\u00010\u00130\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0016\u001a\u00020\u0017\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019R\u000e\u0010\u001a\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001f\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010!\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u0010\u0010\"\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006K"
    }
    d2 = {
        "Lcom/yausername/youtubedl_android/YoutubeDL;",
        "",
        "()V",
        "ENV_LD_LIBRARY_PATH",
        "",
        "ENV_PYTHONHOME",
        "ENV_SSL_CERT_FILE",
        "TMPDIR",
        "aria2cDirName",
        "baseName",
        "binDir",
        "Ljava/io/File;",
        "ffmpegBinName",
        "ffmpegDirName",
        "ffmpegPath",
        "idProcessMap",
        "",
        "kotlin.jvm.PlatformType",
        "Ljava/lang/Process;",
        "",
        "initialized",
        "",
        "objectMapper",
        "Lcom/fasterxml/jackson/databind/ObjectMapper;",
        "getObjectMapper",
        "()Lcom/fasterxml/jackson/databind/ObjectMapper;",
        "packagesRoot",
        "pythonBinName",
        "pythonDirName",
        "pythonLibName",
        "pythonLibVersion",
        "pythonPath",
        "ytdlpBin",
        "ytdlpDirName",
        "ytdlpPath",
        "assertInit",
        "",
        "destroyChildProcesses",
        "id",
        "destroyProcessById",
        "execute",
        "Lcom/yausername/youtubedl_android/YoutubeDLResponse;",
        "request",
        "Lcom/yausername/youtubedl_android/YoutubeDLRequest;",
        "processId",
        "callback",
        "Lkotlin/Function3;",
        "",
        "",
        "redirectErrorStream",
        "executeImpl",
        "getInfo",
        "Lcom/yausername/youtubedl_android/mapper/VideoInfo;",
        "url",
        "getInstance",
        "ignoreErrors",
        "out",
        "init",
        "appContext",
        "Landroid/content/Context;",
        "initPython",
        "pythonDir",
        "init_ytdlp",
        "ytdlpDir",
        "shouldUpdatePython",
        "version",
        "updatePython",
        "updateYoutubeDL",
        "Lcom/yausername/youtubedl_android/YoutubeDL$UpdateStatus;",
        "updateChannel",
        "Lcom/yausername/youtubedl_android/YoutubeDL$UpdateChannel;",
        "versionName",
        "CanceledException",
        "UpdateChannel",
        "UpdateStatus",
        "library_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field private static ENV_LD_LIBRARY_PATH:Ljava/lang/String; = null

.field private static ENV_PYTHONHOME:Ljava/lang/String; = null

.field private static ENV_SSL_CERT_FILE:Ljava/lang/String; = null

.field public static final INSTANCE:Lcom/yausername/youtubedl_android/YoutubeDL;

.field private static TMPDIR:Ljava/lang/String; = null

.field private static final aria2cDirName:Ljava/lang/String; = "aria2c"

.field public static final baseName:Ljava/lang/String; = "youtubedl-android"

.field private static binDir:Ljava/io/File; = null

.field private static final ffmpegBinName:Ljava/lang/String; = "libffmpeg.so"

.field private static final ffmpegDirName:Ljava/lang/String; = "ffmpeg"

.field private static ffmpegPath:Ljava/io/File; = null

.field private static final idProcessMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Process;",
            ">;"
        }
    .end annotation
.end field

.field private static initialized:Z = false

.field private static final objectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

.field private static final packagesRoot:Ljava/lang/String; = "packages"

.field private static final pythonBinName:Ljava/lang/String; = "libpython.so"

.field private static final pythonDirName:Ljava/lang/String; = "python"

.field private static final pythonLibName:Ljava/lang/String; = "libpython.zip.so"

.field private static final pythonLibVersion:Ljava/lang/String; = "pythonLibVersion"

.field private static pythonPath:Ljava/io/File; = null

.field public static final ytdlpBin:Ljava/lang/String; = "yt-dlp"

.field public static final ytdlpDirName:Ljava/lang/String; = "yt-dlp"

.field private static ytdlpPath:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/yausername/youtubedl_android/YoutubeDL;

    invoke-direct {v0}, Lcom/yausername/youtubedl_android/YoutubeDL;-><init>()V

    sput-object v0, Lcom/yausername/youtubedl_android/YoutubeDL;->INSTANCE:Lcom/yausername/youtubedl_android/YoutubeDL;

    .line 25
    const-string v0, ""

    sput-object v0, Lcom/yausername/youtubedl_android/YoutubeDL;->TMPDIR:Ljava/lang/String;

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/yausername/youtubedl_android/YoutubeDL;->idProcessMap:Ljava/util/Map;

    .line 316
    new-instance v0, Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;-><init>()V

    sput-object v0, Lcom/yausername/youtubedl_android/YoutubeDL;->objectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final assertInit()V
    .locals 2

    .line 97
    sget-boolean v0, Lcom/yausername/youtubedl_android/YoutubeDL;->initialized:Z

    if-eqz v0, :cond_0

    .line 98
    return-void

    .line 321
    :cond_0
    const/4 v0, 0x0

    .line 97
    .local v0, "$i$a$-check-YoutubeDL$assertInit$1":I
    nop

    .end local v0    # "$i$a$-check-YoutubeDL$assertInit$1":I
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "instance not initialized"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final destroyChildProcesses(Ljava/lang/String;)Z
    .locals 6
    .param p1, "id"    # Ljava/lang/String;

    .line 141
    nop

    .line 142
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pstree -p "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | grep -oP \'\\(\\K[^\\)]+\' | xargs kill"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 143
    .local v1, "command":Ljava/lang/String;
    new-instance v2, Ljava/lang/ProcessBuilder;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "/system/bin/sh"

    aput-object v4, v3, v0

    const-string v4, "-c"

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const/4 v4, 0x2

    aput-object v1, v3, v4

    invoke-direct {v2, v3}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    .line 144
    .local v2, "processBuilder":Ljava/lang/ProcessBuilder;
    invoke-virtual {v2}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v3

    .line 145
    .local v3, "process":Ljava/lang/Process;
    invoke-virtual {v3}, Ljava/lang/Process;->waitFor()I

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    .local v4, "res":I
    if-nez v4, :cond_0

    move v0, v5

    :cond_0
    return v0

    .line 147
    .end local v1    # "command":Ljava/lang/String;
    .end local v2    # "processBuilder":Ljava/lang/ProcessBuilder;
    .end local v3    # "process":Ljava/lang/Process;
    .end local v4    # "res":I
    :catch_0
    move-exception v1

    .line 148
    .local v1, "e":Ljava/lang/Exception;
    return v0
.end method

.method public static synthetic execute$default(Lcom/yausername/youtubedl_android/YoutubeDL;Lcom/yausername/youtubedl_android/YoutubeDLRequest;Ljava/lang/String;Lkotlin/jvm/functions/Function3;ILjava/lang/Object;)Lcom/yausername/youtubedl_android/YoutubeDLResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yausername/youtubedl_android/YoutubeDLException;,
            Ljava/lang/InterruptedException;,
            Lcom/yausername/youtubedl_android/YoutubeDL$CanceledException;
        }
    .end annotation

    .line 155
    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    .line 157
    move-object p2, v0

    .line 155
    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 158
    move-object p3, v0

    .line 155
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/yausername/youtubedl_android/YoutubeDL;->execute(Lcom/yausername/youtubedl_android/YoutubeDLRequest;Ljava/lang/String;Lkotlin/jvm/functions/Function3;)Lcom/yausername/youtubedl_android/YoutubeDLResponse;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic execute$default(Lcom/yausername/youtubedl_android/YoutubeDL;Lcom/yausername/youtubedl_android/YoutubeDLRequest;Ljava/lang/String;ZLkotlin/jvm/functions/Function3;ILjava/lang/Object;)Lcom/yausername/youtubedl_android/YoutubeDLResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yausername/youtubedl_android/YoutubeDLException;,
            Ljava/lang/InterruptedException;,
            Lcom/yausername/youtubedl_android/YoutubeDL$CanceledException;
        }
    .end annotation

    .line 165
    and-int/lit8 p6, p5, 0x2

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    .line 167
    move-object p2, v0

    .line 165
    :cond_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_1

    .line 168
    const/4 p3, 0x0

    .line 165
    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    .line 169
    move-object p4, v0

    .line 165
    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/yausername/youtubedl_android/YoutubeDL;->execute(Lcom/yausername/youtubedl_android/YoutubeDLRequest;Ljava/lang/String;ZLkotlin/jvm/functions/Function3;)Lcom/yausername/youtubedl_android/YoutubeDLResponse;

    move-result-object p0

    return-object p0
.end method

.method private final executeImpl(Lcom/yausername/youtubedl_android/YoutubeDLRequest;Ljava/lang/String;ZLkotlin/jvm/functions/Function3;)Lcom/yausername/youtubedl_android/YoutubeDLResponse;
    .locals 27
    .param p1, "request"    # Lcom/yausername/youtubedl_android/YoutubeDLRequest;
    .param p2, "processId"    # Ljava/lang/String;
    .param p3, "redirectErrorStream"    # Z
    .param p4, "callback"    # Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yausername/youtubedl_android/YoutubeDLRequest;",
            "Ljava/lang/String;",
            "Z",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Ljava/lang/Float;",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/yausername/youtubedl_android/YoutubeDLResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yausername/youtubedl_android/YoutubeDLException;,
            Ljava/lang/InterruptedException;,
            Lcom/yausername/youtubedl_android/YoutubeDL$CanceledException;
        }
    .end annotation

    .line 181
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {p0 .. p0}, Lcom/yausername/youtubedl_android/YoutubeDL;->assertInit()V

    .line 182
    if-eqz v2, :cond_1

    sget-object v0, Lcom/yausername/youtubedl_android/YoutubeDL;->idProcessMap:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/yausername/youtubedl_android/YoutubeDLException;

    const-string v3, "Process ID already exists"

    invoke-direct {v0, v3}, Lcom/yausername/youtubedl_android/YoutubeDLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 184
    :cond_1
    :goto_0
    const-string v0, "--cache-dir"

    invoke-virtual {v1, v0}, Lcom/yausername/youtubedl_android/YoutubeDLRequest;->hasOption(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1, v0}, Lcom/yausername/youtubedl_android/YoutubeDLRequest;->getOption(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    .line 185
    :cond_2
    const-string v0, "--no-cache-dir"

    invoke-virtual {v1, v0}, Lcom/yausername/youtubedl_android/YoutubeDLRequest;->addOption(Ljava/lang/String;)Lcom/yausername/youtubedl_android/YoutubeDLRequest;

    .line 188
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/yausername/youtubedl_android/YoutubeDLRequest;->buildCommand()Ljava/util/List;

    move-result-object v0

    const-string v3, "libaria2c.so"

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 189
    nop

    .line 190
    const-string v0, "aria2c:--summary-interval=1"

    const-string v3, "--external-downloader-args"

    invoke-virtual {v1, v3, v0}, Lcom/yausername/youtubedl_android/YoutubeDLRequest;->addOption(Ljava/lang/String;Ljava/lang/String;)Lcom/yausername/youtubedl_android/YoutubeDLRequest;

    move-result-object v0

    .line 192
    nop

    .line 193
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "aria2c:--ca-certificate="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/yausername/youtubedl_android/YoutubeDL;->ENV_SSL_CERT_FILE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 191
    invoke-virtual {v0, v3, v4}, Lcom/yausername/youtubedl_android/YoutubeDLRequest;->addOption(Ljava/lang/String;Ljava/lang/String;)Lcom/yausername/youtubedl_android/YoutubeDLRequest;

    .line 198
    :cond_4
    sget-object v0, Lcom/yausername/youtubedl_android/YoutubeDL;->ffmpegPath:Ljava/io/File;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v3, "ffmpegPath!!.absolutePath"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "--ffmpeg-location"

    invoke-virtual {v1, v3, v0}, Lcom/yausername/youtubedl_android/YoutubeDLRequest;->addOption(Ljava/lang/String;Ljava/lang/String;)Lcom/yausername/youtubedl_android/YoutubeDLRequest;

    const/4 v3, 0x0

    .local v3, "youtubeDLResponse":Lcom/yausername/youtubedl_android/YoutubeDLResponse;
    const/4 v4, 0x0

    .local v4, "process":Ljava/lang/Process;
    const/4 v5, 0x0

    .line 202
    .local v5, "exitCode":I
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    move-object v6, v0

    .line 203
    .local v6, "outBuffer":Ljava/lang/StringBuffer;
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    move-object v7, v0

    .line 204
    .local v7, "errBuffer":Ljava/lang/StringBuffer;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 205
    .local v8, "startTime":J
    invoke-virtual/range {p1 .. p1}, Lcom/yausername/youtubedl_android/YoutubeDLRequest;->buildCommand()Ljava/util/List;

    move-result-object v10

    .line 206
    .local v10, "args":Ljava/util/List;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v14, v0

    check-cast v14, Ljava/util/List;

    .line 207
    .local v14, "command":Ljava/util/List;
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    sget-object v11, Lcom/yausername/youtubedl_android/YoutubeDL;->pythonPath:Ljava/io/File;

    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v0, v12

    sget-object v11, Lcom/yausername/youtubedl_android/YoutubeDL;->ytdlpPath:Ljava/io/File;

    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    aput-object v11, v0, v12

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v14, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 208
    move-object v0, v10

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v14, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 209
    new-instance v0, Ljava/lang/ProcessBuilder;

    invoke-direct {v0, v14}, Ljava/lang/ProcessBuilder;-><init>(Ljava/util/List;)V

    .line 210
    move/from16 v15, p3

    invoke-virtual {v0, v15}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    move-result-object v0

    .line 209
    move-object/from16 v18, v0

    .line 212
    .local v18, "processBuilder":Ljava/lang/ProcessBuilder;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/ProcessBuilder;->environment()Ljava/util/Map;

    move-result-object v0

    .local v0, "$this$executeImpl_u24lambda_u241":Ljava/util/Map;
    const/4 v11, 0x0

    .line 213
    .local v11, "$i$a$-apply-YoutubeDL$executeImpl$1":I
    const-string v12, "this"

    invoke-static {v0, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "LD_LIBRARY_PATH"

    sget-object v13, Lcom/yausername/youtubedl_android/YoutubeDL;->ENV_LD_LIBRARY_PATH:Ljava/lang/String;

    invoke-interface {v0, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    const-string v12, "SSL_CERT_FILE"

    sget-object v13, Lcom/yausername/youtubedl_android/YoutubeDL;->ENV_SSL_CERT_FILE:Ljava/lang/String;

    invoke-interface {v0, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "PATH"

    move-object/from16 v19, v3

    .end local v3    # "youtubeDLResponse":Lcom/yausername/youtubedl_android/YoutubeDLResponse;
    .local v19, "youtubeDLResponse":Lcom/yausername/youtubedl_android/YoutubeDLResponse;
    invoke-static {v13}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v12, 0x3a

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v12, Lcom/yausername/youtubedl_android/YoutubeDL;->binDir:Ljava/io/File;

    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v13, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    const-string v3, "PYTHONHOME"

    sget-object v12, Lcom/yausername/youtubedl_android/YoutubeDL;->ENV_PYTHONHOME:Ljava/lang/String;

    invoke-interface {v0, v3, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    const-string v3, "HOME"

    sget-object v12, Lcom/yausername/youtubedl_android/YoutubeDL;->ENV_PYTHONHOME:Ljava/lang/String;

    invoke-interface {v0, v3, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    const-string v3, "TMPDIR"

    sget-object v12, Lcom/yausername/youtubedl_android/YoutubeDL;->TMPDIR:Ljava/lang/String;

    invoke-interface {v0, v3, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    nop

    .line 212
    .end local v0    # "$this$executeImpl_u24lambda_u241":Ljava/util/Map;
    .end local v11    # "$i$a$-apply-YoutubeDL$executeImpl$1":I
    nop

    .line 221
    nop

    .line 222
    :try_start_0
    invoke-virtual/range {v18 .. v18}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v0

    .line 221
    const-string v3, "{\n            processBuilder.start()\n        }"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v3, v0

    .line 226
    .end local v4    # "process":Ljava/lang/Process;
    .local v3, "process":Ljava/lang/Process;
    if-eqz v2, :cond_5

    .line 227
    sget-object v0, Lcom/yausername/youtubedl_android/YoutubeDL;->idProcessMap:Ljava/util/Map;

    const-string v4, "idProcessMap"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    :cond_5
    invoke-virtual {v3}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 230
    .local v4, "outStream":Ljava/io/InputStream;
    invoke-virtual {v3}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v13

    .line 231
    .local v13, "errStream":Ljava/io/InputStream;
    new-instance v0, Lcom/yausername/youtubedl_android/StreamProcessExtractor;

    const-string v11, "outStream"

    invoke-static {v4, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v12, p4

    invoke-direct {v0, v6, v4, v12}, Lcom/yausername/youtubedl_android/StreamProcessExtractor;-><init>(Ljava/lang/StringBuffer;Ljava/io/InputStream;Lkotlin/jvm/functions/Function3;)V

    move-object/from16 v20, v0

    .line 232
    .local v20, "stdOutProcessor":Lcom/yausername/youtubedl_android/StreamProcessExtractor;
    new-instance v0, Lcom/yausername/youtubedl_android/StreamGobbler;

    const-string v11, "errStream"

    invoke-static {v13, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v7, v13}, Lcom/yausername/youtubedl_android/StreamGobbler;-><init>(Ljava/lang/StringBuffer;Ljava/io/InputStream;)V

    move-object/from16 v21, v0

    .line 233
    .local v21, "stdErrProcessor":Lcom/yausername/youtubedl_android/StreamGobbler;
    nop

    .line 234
    :try_start_1
    invoke-virtual/range {v20 .. v20}, Lcom/yausername/youtubedl_android/StreamProcessExtractor;->join()V

    .line 235
    invoke-virtual/range {v21 .. v21}, Lcom/yausername/youtubedl_android/StreamGobbler;->join()V

    .line 236
    invoke-virtual {v3}, Ljava/lang/Process;->waitFor()I

    move-result v0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 233
    nop

    .line 242
    .end local v5    # "exitCode":I
    .local v0, "exitCode":I
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v11, "outBuffer.toString()"

    invoke-static {v5, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 243
    .local v5, "out":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v22, v4

    .end local v4    # "outStream":Ljava/io/InputStream;
    .local v22, "outStream":Ljava/io/InputStream;
    const-string v4, "errBuffer.toString()"

    invoke-static {v11, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, v11

    .line 244
    .local v4, "err":Ljava/lang/String;
    if-lez v0, :cond_9

    .line 245
    if-eqz v2, :cond_7

    sget-object v11, Lcom/yausername/youtubedl_android/YoutubeDL;->idProcessMap:Ljava/util/Map;

    invoke-interface {v11, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    goto :goto_1

    .line 246
    :cond_6
    new-instance v11, Lcom/yausername/youtubedl_android/YoutubeDL$CanceledException;

    invoke-direct {v11}, Lcom/yausername/youtubedl_android/YoutubeDL$CanceledException;-><init>()V

    throw v11

    .line 247
    :cond_7
    :goto_1
    move-object/from16 v11, p0

    invoke-direct {v11, v1, v5}, Lcom/yausername/youtubedl_android/YoutubeDL;->ignoreErrors(Lcom/yausername/youtubedl_android/YoutubeDLRequest;Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_8

    goto :goto_2

    .line 248
    :cond_8
    sget-object v1, Lcom/yausername/youtubedl_android/YoutubeDL;->idProcessMap:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    new-instance v1, Lcom/yausername/youtubedl_android/YoutubeDLException;

    invoke-direct {v1, v4}, Lcom/yausername/youtubedl_android/YoutubeDLException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 244
    :cond_9
    move-object/from16 v11, p0

    .line 252
    :goto_2
    sget-object v1, Lcom/yausername/youtubedl_android/YoutubeDL;->idProcessMap:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    sub-long v23, v16, v8

    .line 255
    .local v23, "elapsedTime":J
    new-instance v1, Lcom/yausername/youtubedl_android/YoutubeDLResponse;

    move-object v11, v1

    move-object v12, v14

    move-object/from16 v25, v13

    .end local v13    # "errStream":Ljava/io/InputStream;
    .local v25, "errStream":Ljava/io/InputStream;
    move v13, v0

    move-object/from16 v26, v14

    .end local v14    # "command":Ljava/util/List;
    .local v26, "command":Ljava/util/List;
    move-wide/from16 v14, v23

    move-object/from16 v16, v5

    move-object/from16 v17, v4

    invoke-direct/range {v11 .. v17}, Lcom/yausername/youtubedl_android/YoutubeDLResponse;-><init>(Ljava/util/List;IJLjava/lang/String;Ljava/lang/String;)V

    .line 256
    .end local v19    # "youtubeDLResponse":Lcom/yausername/youtubedl_android/YoutubeDLResponse;
    .local v1, "youtubeDLResponse":Lcom/yausername/youtubedl_android/YoutubeDLResponse;
    return-object v1

    .line 237
    .end local v0    # "exitCode":I
    .end local v1    # "youtubeDLResponse":Lcom/yausername/youtubedl_android/YoutubeDLResponse;
    .end local v22    # "outStream":Ljava/io/InputStream;
    .end local v23    # "elapsedTime":J
    .end local v25    # "errStream":Ljava/io/InputStream;
    .end local v26    # "command":Ljava/util/List;
    .local v4, "outStream":Ljava/io/InputStream;
    .local v5, "exitCode":I
    .restart local v13    # "errStream":Ljava/io/InputStream;
    .restart local v14    # "command":Ljava/util/List;
    .restart local v19    # "youtubeDLResponse":Lcom/yausername/youtubedl_android/YoutubeDLResponse;
    :catch_0
    move-exception v0

    move-object/from16 v22, v4

    move-object/from16 v25, v13

    move-object/from16 v26, v14

    .line 238
    .end local v4    # "outStream":Ljava/io/InputStream;
    .end local v13    # "errStream":Ljava/io/InputStream;
    .end local v14    # "command":Ljava/util/List;
    .local v0, "e":Ljava/lang/InterruptedException;
    .restart local v22    # "outStream":Ljava/io/InputStream;
    .restart local v25    # "errStream":Ljava/io/InputStream;
    .restart local v26    # "command":Ljava/util/List;
    invoke-virtual {v3}, Ljava/lang/Process;->destroy()V

    .line 239
    if-eqz v2, :cond_a

    sget-object v1, Lcom/yausername/youtubedl_android/YoutubeDL;->idProcessMap:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    :cond_a
    throw v0

    .line 223
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v3    # "process":Ljava/lang/Process;
    .end local v20    # "stdOutProcessor":Lcom/yausername/youtubedl_android/StreamProcessExtractor;
    .end local v21    # "stdErrProcessor":Lcom/yausername/youtubedl_android/StreamGobbler;
    .end local v22    # "outStream":Ljava/io/InputStream;
    .end local v25    # "errStream":Ljava/io/InputStream;
    .end local v26    # "command":Ljava/util/List;
    .local v4, "process":Ljava/lang/Process;
    .restart local v14    # "command":Ljava/util/List;
    :catch_1
    move-exception v0

    move-object/from16 v26, v14

    .line 224
    .end local v14    # "command":Ljava/util/List;
    .local v0, "e":Ljava/io/IOException;
    .restart local v26    # "command":Ljava/util/List;
    new-instance v1, Lcom/yausername/youtubedl_android/YoutubeDLException;

    move-object v3, v0

    check-cast v3, Ljava/lang/Throwable;

    invoke-direct {v1, v3}, Lcom/yausername/youtubedl_android/YoutubeDLException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static synthetic executeImpl$default(Lcom/yausername/youtubedl_android/YoutubeDL;Lcom/yausername/youtubedl_android/YoutubeDLRequest;Ljava/lang/String;ZLkotlin/jvm/functions/Function3;ILjava/lang/Object;)Lcom/yausername/youtubedl_android/YoutubeDLResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yausername/youtubedl_android/YoutubeDLException;,
            Ljava/lang/InterruptedException;,
            Lcom/yausername/youtubedl_android/YoutubeDL$CanceledException;
        }
    .end annotation

    .line 175
    and-int/lit8 p6, p5, 0x2

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    .line 177
    move-object p2, v0

    .line 175
    :cond_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_1

    .line 178
    const/4 p3, 0x0

    .line 175
    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    .line 179
    move-object p4, v0

    .line 175
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/yausername/youtubedl_android/YoutubeDL;->executeImpl(Lcom/yausername/youtubedl_android/YoutubeDLRequest;Ljava/lang/String;ZLkotlin/jvm/functions/Function3;)Lcom/yausername/youtubedl_android/YoutubeDLResponse;

    move-result-object p0

    return-object p0
.end method

.method public static final getInstance()Lcom/yausername/youtubedl_android/YoutubeDL;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 319
    sget-object v0, Lcom/yausername/youtubedl_android/YoutubeDL;->INSTANCE:Lcom/yausername/youtubedl_android/YoutubeDL;

    return-object v0
.end method

.method private final ignoreErrors(Lcom/yausername/youtubedl_android/YoutubeDLRequest;Ljava/lang/String;)Z
    .locals 3
    .param p1, "request"    # Lcom/yausername/youtubedl_android/YoutubeDLRequest;
    .param p2, "out"    # Ljava/lang/String;

    .line 119
    const-string v0, "--dump-json"

    invoke-virtual {p1, v0}, Lcom/yausername/youtubedl_android/YoutubeDLRequest;->hasOption(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move-object v0, p2

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    const-string v0, "--ignore-errors"

    invoke-virtual {p1, v0}, Lcom/yausername/youtubedl_android/YoutubeDLRequest;->hasOption(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, v2

    :cond_1
    return v1
.end method

.method private final shouldUpdatePython(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p1, "appContext"    # Landroid/content/Context;
    .param p2, "version"    # Ljava/lang/String;

    .line 89
    const-string v0, "pythonLibVersion"

    invoke-static {p1, v0}, Lcom/yausername/youtubedl_common/SharedPrefsHelper;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private final updatePython(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "appContext"    # Landroid/content/Context;
    .param p2, "version"    # Ljava/lang/String;

    .line 93
    const-string v0, "pythonLibVersion"

    invoke-static {p1, v0, p2}, Lcom/yausername/youtubedl_common/SharedPrefsHelper;->update(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method public static synthetic updateYoutubeDL$default(Lcom/yausername/youtubedl_android/YoutubeDL;Landroid/content/Context;Lcom/yausername/youtubedl_android/YoutubeDL$UpdateChannel;ILjava/lang/Object;)Lcom/yausername/youtubedl_android/YoutubeDL$UpdateStatus;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yausername/youtubedl_android/YoutubeDLException;
        }
    .end annotation

    .line 261
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 263
    sget-object p2, Lcom/yausername/youtubedl_android/YoutubeDL$UpdateChannel$STABLE;->INSTANCE:Lcom/yausername/youtubedl_android/YoutubeDL$UpdateChannel$STABLE;

    check-cast p2, Lcom/yausername/youtubedl_android/YoutubeDL$UpdateChannel;

    .line 261
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/yausername/youtubedl_android/YoutubeDL;->updateYoutubeDL(Landroid/content/Context;Lcom/yausername/youtubedl_android/YoutubeDL$UpdateChannel;)Lcom/yausername/youtubedl_android/YoutubeDL$UpdateStatus;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final destroyProcessById(Ljava/lang/String;)Z
    .locals 3
    .param p1, "id"    # Ljava/lang/String;

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    sget-object v0, Lcom/yausername/youtubedl_android/YoutubeDL;->idProcessMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    sget-object v0, Lcom/yausername/youtubedl_android/YoutubeDL;->idProcessMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Process;

    .line 125
    .local v0, "p":Ljava/lang/Process;
    const/4 v1, 0x1

    .line 127
    .local v1, "alive":Z
    nop

    .line 128
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Process;->isAlive()Z

    move-result v1

    .line 130
    if-eqz v1, :cond_1

    .line 131
    invoke-direct {p0, p1}, Lcom/yausername/youtubedl_android/YoutubeDL;->destroyChildProcesses(Ljava/lang/String;)Z

    .line 132
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    .line 133
    :cond_0
    sget-object v2, Lcom/yausername/youtubedl_android/YoutubeDL;->idProcessMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    const/4 v2, 0x1

    return v2

    .line 137
    .end local v0    # "p":Ljava/lang/Process;
    .end local v1    # "alive":Z
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final execute(Lcom/yausername/youtubedl_android/YoutubeDLRequest;)Lcom/yausername/youtubedl_android/YoutubeDLResponse;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yausername/youtubedl_android/YoutubeDLException;,
            Ljava/lang/InterruptedException;,
            Lcom/yausername/youtubedl_android/YoutubeDL$CanceledException;
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0xe

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v7}, Lcom/yausername/youtubedl_android/YoutubeDL;->execute$default(Lcom/yausername/youtubedl_android/YoutubeDL;Lcom/yausername/youtubedl_android/YoutubeDLRequest;Ljava/lang/String;ZLkotlin/jvm/functions/Function3;ILjava/lang/Object;)Lcom/yausername/youtubedl_android/YoutubeDLResponse;

    move-result-object v0

    return-object v0
.end method

.method public final execute(Lcom/yausername/youtubedl_android/YoutubeDLRequest;Ljava/lang/String;)Lcom/yausername/youtubedl_android/YoutubeDLResponse;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yausername/youtubedl_android/YoutubeDLException;,
            Ljava/lang/InterruptedException;,
            Lcom/yausername/youtubedl_android/YoutubeDL$CanceledException;
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0xc

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v7}, Lcom/yausername/youtubedl_android/YoutubeDL;->execute$default(Lcom/yausername/youtubedl_android/YoutubeDL;Lcom/yausername/youtubedl_android/YoutubeDLRequest;Ljava/lang/String;ZLkotlin/jvm/functions/Function3;ILjava/lang/Object;)Lcom/yausername/youtubedl_android/YoutubeDLResponse;

    move-result-object v0

    return-object v0
.end method

.method public final execute(Lcom/yausername/youtubedl_android/YoutubeDLRequest;Ljava/lang/String;Lkotlin/jvm/functions/Function3;)Lcom/yausername/youtubedl_android/YoutubeDLResponse;
    .locals 1
    .param p1, "request"    # Lcom/yausername/youtubedl_android/YoutubeDLRequest;
    .param p2, "processId"    # Ljava/lang/String;
    .param p3, "callback"    # Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yausername/youtubedl_android/YoutubeDLRequest;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Ljava/lang/Float;",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/yausername/youtubedl_android/YoutubeDLResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yausername/youtubedl_android/YoutubeDLException;,
            Ljava/lang/InterruptedException;,
            Lcom/yausername/youtubedl_android/YoutubeDL$CanceledException;
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/yausername/youtubedl_android/YoutubeDL;->executeImpl(Lcom/yausername/youtubedl_android/YoutubeDLRequest;Ljava/lang/String;ZLkotlin/jvm/functions/Function3;)Lcom/yausername/youtubedl_android/YoutubeDLResponse;

    move-result-object v0

    return-object v0
.end method

.method public final execute(Lcom/yausername/youtubedl_android/YoutubeDLRequest;Ljava/lang/String;Z)Lcom/yausername/youtubedl_android/YoutubeDLResponse;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yausername/youtubedl_android/YoutubeDLException;,
            Ljava/lang/InterruptedException;,
            Lcom/yausername/youtubedl_android/YoutubeDL$CanceledException;
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-static/range {v1 .. v7}, Lcom/yausername/youtubedl_android/YoutubeDL;->execute$default(Lcom/yausername/youtubedl_android/YoutubeDL;Lcom/yausername/youtubedl_android/YoutubeDLRequest;Ljava/lang/String;ZLkotlin/jvm/functions/Function3;ILjava/lang/Object;)Lcom/yausername/youtubedl_android/YoutubeDLResponse;

    move-result-object v0

    return-object v0
.end method

.method public final execute(Lcom/yausername/youtubedl_android/YoutubeDLRequest;Ljava/lang/String;ZLkotlin/jvm/functions/Function3;)Lcom/yausername/youtubedl_android/YoutubeDLResponse;
    .locals 1
    .param p1, "request"    # Lcom/yausername/youtubedl_android/YoutubeDLRequest;
    .param p2, "processId"    # Ljava/lang/String;
    .param p3, "redirectErrorStream"    # Z
    .param p4, "callback"    # Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yausername/youtubedl_android/YoutubeDLRequest;",
            "Ljava/lang/String;",
            "Z",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Ljava/lang/Float;",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/yausername/youtubedl_android/YoutubeDLResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yausername/youtubedl_android/YoutubeDLException;,
            Ljava/lang/InterruptedException;,
            Lcom/yausername/youtubedl_android/YoutubeDL$CanceledException;
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/yausername/youtubedl_android/YoutubeDL;->executeImpl(Lcom/yausername/youtubedl_android/YoutubeDLRequest;Ljava/lang/String;ZLkotlin/jvm/functions/Function3;)Lcom/yausername/youtubedl_android/YoutubeDLResponse;

    move-result-object v0

    return-object v0
.end method

.method public final getInfo(Lcom/yausername/youtubedl_android/YoutubeDLRequest;)Lcom/yausername/youtubedl_android/mapper/VideoInfo;
    .locals 5
    .param p1, "request"    # Lcom/yausername/youtubedl_android/YoutubeDLRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yausername/youtubedl_android/YoutubeDLException;,
            Ljava/lang/InterruptedException;,
            Lcom/yausername/youtubedl_android/YoutubeDL$CanceledException;
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    const-string v0, "--dump-json"

    invoke-virtual {p1, v0}, Lcom/yausername/youtubedl_android/YoutubeDLRequest;->addOption(Ljava/lang/String;)Lcom/yausername/youtubedl_android/YoutubeDLRequest;

    .line 109
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/yausername/youtubedl_android/YoutubeDL;->execute(Lcom/yausername/youtubedl_android/YoutubeDLRequest;Ljava/lang/String;Lkotlin/jvm/functions/Function3;)Lcom/yausername/youtubedl_android/YoutubeDLResponse;

    move-result-object v0

    .line 110
    .local v0, "response":Lcom/yausername/youtubedl_android/YoutubeDLResponse;
    nop

    .line 111
    :try_start_0
    sget-object v1, Lcom/yausername/youtubedl_android/YoutubeDL;->objectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0}, Lcom/yausername/youtubedl_android/YoutubeDLResponse;->getOut()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/yausername/youtubedl_android/mapper/VideoInfo;

    invoke-virtual {v1, v2, v3}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yausername/youtubedl_android/mapper/VideoInfo;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    if-eqz v1, :cond_0

    .line 115
    .local v1, "videoInfo":Lcom/yausername/youtubedl_android/mapper/VideoInfo;
    return-object v1

    .line 114
    .end local v1    # "videoInfo":Lcom/yausername/youtubedl_android/mapper/VideoInfo;
    :cond_0
    new-instance v1, Lcom/yausername/youtubedl_android/YoutubeDLException;

    const-string v2, "Failed to fetch video information"

    invoke-direct {v1, v2}, Lcom/yausername/youtubedl_android/YoutubeDLException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 112
    :catch_0
    move-exception v1

    .line 113
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Lcom/yausername/youtubedl_android/YoutubeDLException;

    const-string v3, "Unable to parse video information"

    move-object v4, v1

    check-cast v4, Ljava/lang/Throwable;

    invoke-direct {v2, v3, v4}, Lcom/yausername/youtubedl_android/YoutubeDLException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public final getInfo(Ljava/lang/String;)Lcom/yausername/youtubedl_android/mapper/VideoInfo;
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yausername/youtubedl_android/YoutubeDLException;,
            Ljava/lang/InterruptedException;,
            Lcom/yausername/youtubedl_android/YoutubeDL$CanceledException;
        }
    .end annotation

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    new-instance v0, Lcom/yausername/youtubedl_android/YoutubeDLRequest;

    invoke-direct {v0, p1}, Lcom/yausername/youtubedl_android/YoutubeDLRequest;-><init>(Ljava/lang/String;)V

    .line 103
    .local v0, "request":Lcom/yausername/youtubedl_android/YoutubeDLRequest;
    invoke-virtual {p0, v0}, Lcom/yausername/youtubedl_android/YoutubeDL;->getInfo(Lcom/yausername/youtubedl_android/YoutubeDLRequest;)Lcom/yausername/youtubedl_android/mapper/VideoInfo;

    move-result-object v1

    return-object v1
.end method

.method public final getObjectMapper()Lcom/fasterxml/jackson/databind/ObjectMapper;
    .locals 1

    .line 316
    sget-object v0, Lcom/yausername/youtubedl_android/YoutubeDL;->objectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    return-object v0
.end method

.method public final declared-synchronized init(Landroid/content/Context;)V
    .locals 8
    .param p1, "appContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yausername/youtubedl_android/YoutubeDLException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "appContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    sget-boolean v0, Lcom/yausername/youtubedl_android/YoutubeDL;->initialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    .line 32
    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getNoBackupFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "youtubedl-android"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 33
    .local v0, "baseDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 34
    .end local p0    # "this":Lcom/yausername/youtubedl_android/YoutubeDL;
    :cond_1
    new-instance v1, Ljava/io/File;

    const-string v2, "packages"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 35
    .local v1, "packagesDir":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v2, Lcom/yausername/youtubedl_android/YoutubeDL;->binDir:Ljava/io/File;

    .line 36
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/yausername/youtubedl_android/YoutubeDL;->binDir:Ljava/io/File;

    const-string v4, "libpython.so"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v2, Lcom/yausername/youtubedl_android/YoutubeDL;->pythonPath:Ljava/io/File;

    .line 37
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/yausername/youtubedl_android/YoutubeDL;->binDir:Ljava/io/File;

    const-string v4, "libffmpeg.so"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v2, Lcom/yausername/youtubedl_android/YoutubeDL;->ffmpegPath:Ljava/io/File;

    .line 38
    new-instance v2, Ljava/io/File;

    const-string v3, "python"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 39
    .local v2, "pythonDir":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    const-string v4, "ffmpeg"

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 40
    .local v3, "ffmpegDir":Ljava/io/File;
    new-instance v4, Ljava/io/File;

    const-string v5, "aria2c"

    invoke-direct {v4, v1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 41
    .local v4, "aria2cDir":Ljava/io/File;
    new-instance v5, Ljava/io/File;

    const-string v6, "yt-dlp"

    invoke-direct {v5, v0, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 42
    .local v5, "ytdlpDir":Ljava/io/File;
    new-instance v6, Ljava/io/File;

    const-string v7, "yt-dlp"

    invoke-direct {v6, v5, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v6, Lcom/yausername/youtubedl_android/YoutubeDL;->ytdlpPath:Ljava/io/File;

    .line 43
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/usr/lib:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 44
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    .line 43
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 44
    const-string v7, "/usr/lib:"

    .line 43
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 45
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    .line 43
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 45
    const-string v7, "/usr/lib"

    .line 43
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/yausername/youtubedl_android/YoutubeDL;->ENV_LD_LIBRARY_PATH:Ljava/lang/String;

    .line 46
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/usr/etc/tls/cert.pem"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/yausername/youtubedl_android/YoutubeDL;->ENV_SSL_CERT_FILE:Ljava/lang/String;

    .line 47
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/usr"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/yausername/youtubedl_android/YoutubeDL;->ENV_PYTHONHOME:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    const-string v7, "appContext.cacheDir.absolutePath"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v6, Lcom/yausername/youtubedl_android/YoutubeDL;->TMPDIR:Ljava/lang/String;

    .line 49
    invoke-virtual {p0, p1, v2}, Lcom/yausername/youtubedl_android/YoutubeDL;->initPython(Landroid/content/Context;Ljava/io/File;)V

    .line 50
    invoke-virtual {p0, p1, v5}, Lcom/yausername/youtubedl_android/YoutubeDL;->init_ytdlp(Landroid/content/Context;Ljava/io/File;)V

    .line 51
    const/4 v6, 0x1

    sput-boolean v6, Lcom/yausername/youtubedl_android/YoutubeDL;->initialized:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    monitor-exit p0

    return-void

    .line 30
    .end local v0    # "baseDir":Ljava/io/File;
    .end local v1    # "packagesDir":Ljava/io/File;
    .end local v2    # "pythonDir":Ljava/io/File;
    .end local v3    # "ffmpegDir":Ljava/io/File;
    .end local v4    # "aria2cDir":Ljava/io/File;
    .end local v5    # "ytdlpDir":Ljava/io/File;
    .end local p1    # "appContext":Landroid/content/Context;
    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final initPython(Landroid/content/Context;Ljava/io/File;)V
    .locals 6
    .param p1, "appContext"    # Landroid/content/Context;
    .param p2, "pythonDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yausername/youtubedl_android/YoutubeDLException;
        }
    .end annotation

    const-string v0, "appContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pythonDir"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/yausername/youtubedl_android/YoutubeDL;->binDir:Ljava/io/File;

    const-string v2, "libpython.zip.so"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 74
    .local v0, "pythonLib":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, "pythonSize":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, p1, v1}, Lcom/yausername/youtubedl_android/YoutubeDL;->shouldUpdatePython(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 76
    :cond_0
    invoke-static {p2}, Lorg/apache/commons/io/FileUtils;->deleteQuietly(Ljava/io/File;)Z

    .line 77
    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    .line 78
    nop

    .line 79
    :try_start_0
    sget-object v2, Lcom/yausername/youtubedl_common/utils/ZipUtils;->INSTANCE:Lcom/yausername/youtubedl_common/utils/ZipUtils;

    invoke-virtual {v2, v0, p2}, Lcom/yausername/youtubedl_common/utils/ZipUtils;->unzip(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    invoke-direct {p0, p1, v1}, Lcom/yausername/youtubedl_android/YoutubeDL;->updatePython(Landroid/content/Context;Ljava/lang/String;)V

    .line 86
    :cond_1
    return-void

    .line 80
    :catch_0
    move-exception v2

    .line 81
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {p2}, Lorg/apache/commons/io/FileUtils;->deleteQuietly(Ljava/io/File;)Z

    .line 82
    new-instance v3, Lcom/yausername/youtubedl_android/YoutubeDLException;

    const-string v4, "failed to initialize"

    move-object v5, v2

    check-cast v5, Ljava/lang/Throwable;

    invoke-direct {v3, v4, v5}, Lcom/yausername/youtubedl_android/YoutubeDLException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public final init_ytdlp(Landroid/content/Context;Ljava/io/File;)V
    .locals 5
    .param p1, "appContext"    # Landroid/content/Context;
    .param p2, "ytdlpDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yausername/youtubedl_android/YoutubeDLException;
        }
    .end annotation

    const-string v0, "appContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ytdlpDir"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    .line 57
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, "yt-dlp"

    invoke-direct {v0, p2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 58
    .local v0, "ytdlpBinary":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 59
    nop

    .line 61
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/yausername/youtubedl_android/R$raw;->ytdlp:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    const-string v2, "appContext.resources.openRawResource(R.raw.ytdlp)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    nop

    .line 62
    .local v1, "inputStream":Ljava/io/InputStream;
    invoke-static {v1, v0}, Lorg/apache/commons/io/FileUtils;->copyInputStreamToFile(Ljava/io/InputStream;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "inputStream":Ljava/io/InputStream;
    goto :goto_0

    .line 63
    :catch_0
    move-exception v1

    .line 64
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {p2}, Lorg/apache/commons/io/FileUtils;->deleteQuietly(Ljava/io/File;)Z

    .line 65
    new-instance v2, Lcom/yausername/youtubedl_android/YoutubeDLException;

    const-string v3, "failed to initialize"

    move-object v4, v1

    check-cast v4, Ljava/lang/Throwable;

    invoke-direct {v2, v3, v4}, Lcom/yausername/youtubedl_android/YoutubeDLException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 68
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return-void
.end method

.method public final declared-synchronized updateYoutubeDL(Landroid/content/Context;Lcom/yausername/youtubedl_android/YoutubeDL$UpdateChannel;)Lcom/yausername/youtubedl_android/YoutubeDL$UpdateStatus;
    .locals 4
    .param p1, "appContext"    # Landroid/content/Context;
    .param p2, "updateChannel"    # Lcom/yausername/youtubedl_android/YoutubeDL$UpdateChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yausername/youtubedl_android/YoutubeDLException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "appContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "updateChannel"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 265
    invoke-direct {p0}, Lcom/yausername/youtubedl_android/YoutubeDL;->assertInit()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 266
    nop

    .line 267
    :try_start_1
    sget-object v0, Lcom/yausername/youtubedl_android/YoutubeDLUpdater;->INSTANCE:Lcom/yausername/youtubedl_android/YoutubeDLUpdater;

    invoke-virtual {v0, p1, p2}, Lcom/yausername/youtubedl_android/YoutubeDLUpdater;->update$library_release(Landroid/content/Context;Lcom/yausername/youtubedl_android/YoutubeDL$UpdateChannel;)Lcom/yausername/youtubedl_android/YoutubeDL$UpdateStatus;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 266
    monitor-exit p0

    return-object v0

    .line 268
    .end local p0    # "this":Lcom/yausername/youtubedl_android/YoutubeDL;
    :catch_0
    move-exception v0

    .line 269
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    new-instance v1, Lcom/yausername/youtubedl_android/YoutubeDLException;

    const-string v2, "failed to update youtube-dl"

    move-object v3, v0

    check-cast v3, Ljava/lang/Throwable;

    invoke-direct {v1, v2, v3}, Lcom/yausername/youtubedl_android/YoutubeDLException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 264
    .end local v0    # "e":Ljava/io/IOException;
    .end local p1    # "appContext":Landroid/content/Context;
    .end local p2    # "updateChannel":Lcom/yausername/youtubedl_android/YoutubeDL$UpdateChannel;
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final version(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "appContext"    # Landroid/content/Context;

    .line 274
    sget-object v0, Lcom/yausername/youtubedl_android/YoutubeDLUpdater;->INSTANCE:Lcom/yausername/youtubedl_android/YoutubeDLUpdater;

    invoke-virtual {v0, p1}, Lcom/yausername/youtubedl_android/YoutubeDLUpdater;->version(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final versionName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "appContext"    # Landroid/content/Context;

    .line 278
    sget-object v0, Lcom/yausername/youtubedl_android/YoutubeDLUpdater;->INSTANCE:Lcom/yausername/youtubedl_android/YoutubeDLUpdater;

    invoke-virtual {v0, p1}, Lcom/yausername/youtubedl_android/YoutubeDLUpdater;->versionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
