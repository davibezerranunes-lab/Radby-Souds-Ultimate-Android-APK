.class public final Lcom/yausername/ffmpeg/FFmpeg;
.super Ljava/lang/Object;
.source "FFmpeg.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\r\u001a\u00020\u0000H\u0007J\u000e\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011J\u0018\u0010\u0012\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u0006H\u0002J\u0018\u0010\u0014\u001a\u00020\u000b2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0015\u001a\u00020\u0004H\u0002J\u0018\u0010\u0016\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0015\u001a\u00020\u0004H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/yausername/ffmpeg/FFmpeg;",
        "",
        "()V",
        "baseName",
        "",
        "binDir",
        "Ljava/io/File;",
        "ffmegDirName",
        "ffmpegLibName",
        "ffmpegLibVersion",
        "initialized",
        "",
        "packagesRoot",
        "getInstance",
        "init",
        "",
        "appContext",
        "Landroid/content/Context;",
        "initFFmpeg",
        "ffmpegDir",
        "shouldUpdateFFmpeg",
        "version",
        "updateFFmpeg",
        "ffmpeg_release"
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
.field public static final INSTANCE:Lcom/yausername/ffmpeg/FFmpeg;

.field private static final baseName:Ljava/lang/String; = "youtubedl-android"

.field private static binDir:Ljava/io/File; = null

.field private static final ffmegDirName:Ljava/lang/String; = "ffmpeg"

.field private static final ffmpegLibName:Ljava/lang/String; = "libffmpeg.zip.so"

.field private static final ffmpegLibVersion:Ljava/lang/String; = "ffmpegLibVersion"

.field private static initialized:Z = false

.field private static final packagesRoot:Ljava/lang/String; = "packages"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/yausername/ffmpeg/FFmpeg;

    invoke-direct {v0}, Lcom/yausername/ffmpeg/FFmpeg;-><init>()V

    sput-object v0, Lcom/yausername/ffmpeg/FFmpeg;->INSTANCE:Lcom/yausername/ffmpeg/FFmpeg;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getInstance()Lcom/yausername/ffmpeg/FFmpeg;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 53
    sget-object v0, Lcom/yausername/ffmpeg/FFmpeg;->INSTANCE:Lcom/yausername/ffmpeg/FFmpeg;

    return-object v0
.end method

.method private final initFFmpeg(Landroid/content/Context;Ljava/io/File;)V
    .locals 6
    .param p1, "appContext"    # Landroid/content/Context;
    .param p2, "ffmpegDir"    # Ljava/io/File;

    .line 28
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/yausername/ffmpeg/FFmpeg;->binDir:Ljava/io/File;

    const-string v2, "libffmpeg.zip.so"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 30
    .local v0, "ffmpegLib":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 31
    .local v1, "ffmpegSize":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, p1, v1}, Lcom/yausername/ffmpeg/FFmpeg;->shouldUpdateFFmpeg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 32
    :cond_0
    invoke-static {p2}, Lorg/apache/commons/io/FileUtils;->deleteQuietly(Ljava/io/File;)Z

    .line 33
    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    .line 34
    nop

    .line 35
    :try_start_0
    sget-object v2, Lcom/yausername/youtubedl_common/utils/ZipUtils;->INSTANCE:Lcom/yausername/youtubedl_common/utils/ZipUtils;

    invoke-virtual {v2, v0, p2}, Lcom/yausername/youtubedl_common/utils/ZipUtils;->unzip(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    invoke-direct {p0, p1, v1}, Lcom/yausername/ffmpeg/FFmpeg;->updateFFmpeg(Landroid/content/Context;Ljava/lang/String;)V

    .line 42
    :cond_1
    return-void

    .line 36
    :catch_0
    move-exception v2

    .line 37
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {p2}, Lorg/apache/commons/io/FileUtils;->deleteQuietly(Ljava/io/File;)Z

    .line 38
    new-instance v3, Lcom/yausername/youtubedl_android/YoutubeDLException;

    const-string v4, "failed to initialize"

    move-object v5, v2

    check-cast v5, Ljava/lang/Throwable;

    invoke-direct {v3, v4, v5}, Lcom/yausername/youtubedl_android/YoutubeDLException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private final shouldUpdateFFmpeg(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p1, "appContext"    # Landroid/content/Context;
    .param p2, "version"    # Ljava/lang/String;

    .line 45
    const-string v0, "ffmpegLibVersion"

    invoke-static {p1, v0}, Lcom/yausername/youtubedl_common/SharedPrefsHelper;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private final updateFFmpeg(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "appContext"    # Landroid/content/Context;
    .param p2, "version"    # Ljava/lang/String;

    .line 49
    const-string v0, "ffmpegLibVersion"

    invoke-static {p1, v0, p2}, Lcom/yausername/youtubedl_common/SharedPrefsHelper;->update(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    return-void
.end method


# virtual methods
.method public final declared-synchronized init(Landroid/content/Context;)V
    .locals 4
    .param p1, "appContext"    # Landroid/content/Context;

    monitor-enter p0

    :try_start_0
    const-string v0, "appContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    sget-boolean v0, Lcom/yausername/ffmpeg/FFmpeg;->initialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    .line 18
    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getNoBackupFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "youtubedl-android"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 19
    .local v0, "baseDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 20
    .end local p0    # "this":Lcom/yausername/ffmpeg/FFmpeg;
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/yausername/ffmpeg/FFmpeg;->binDir:Ljava/io/File;

    .line 21
    new-instance v1, Ljava/io/File;

    const-string v2, "packages"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 22
    .local v1, "packagesDir":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v3, "ffmpeg"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 23
    .local v2, "ffmpegDir":Ljava/io/File;
    invoke-direct {p0, p1, v2}, Lcom/yausername/ffmpeg/FFmpeg;->initFFmpeg(Landroid/content/Context;Ljava/io/File;)V

    .line 24
    const/4 v3, 0x1

    sput-boolean v3, Lcom/yausername/ffmpeg/FFmpeg;->initialized:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    monitor-exit p0

    return-void

    .line 16
    .end local v0    # "baseDir":Ljava/io/File;
    .end local v1    # "packagesDir":Ljava/io/File;
    .end local v2    # "ffmpegDir":Ljava/io/File;
    .end local p1    # "appContext":Landroid/content/Context;
    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
