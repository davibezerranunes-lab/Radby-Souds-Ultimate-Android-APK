.class public final Lcom/yausername/youtubedl_android/YoutubeDLUpdater;
.super Ljava/lang/Object;
.source "YoutubeDLUpdater.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001a\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0002J\u0018\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u0012\u001a\u00020\u0004H\u0002J\u0010\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u000bH\u0002J\u0010\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u000bH\u0002J\u0010\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u000bH\u0002J\u0010\u0010\u0017\u001a\u00020\u00112\u0006\u0010\u000c\u001a\u00020\rH\u0002J!\u0010\u0018\u001a\u00020\u00192\u0008\u0010\u000c\u001a\u0004\u0018\u00010\r2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000fH\u0000\u00a2\u0006\u0002\u0008\u001aJ \u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u001d\u001a\u00020\u00042\u0006\u0010\u001e\u001a\u00020\u0004H\u0002J\u0012\u0010\u001f\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rJ\u0012\u0010 \u001a\u0004\u0018\u00010\u00042\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006!"
    }
    d2 = {
        "Lcom/yausername/youtubedl_android/YoutubeDLUpdater;",
        "",
        "()V",
        "dlpBinaryName",
        "",
        "dlpVersionKey",
        "dlpVersionNameKey",
        "youtubeDLMasterChannelUrl",
        "youtubeDLNightlyChannelUrl",
        "youtubeDLStableChannelUrl",
        "checkForUpdate",
        "Lcom/fasterxml/jackson/databind/JsonNode;",
        "appContext",
        "Landroid/content/Context;",
        "youtubeDLChannel",
        "Lcom/yausername/youtubedl_android/YoutubeDL$UpdateChannel;",
        "download",
        "Ljava/io/File;",
        "url",
        "getDownloadUrl",
        "json",
        "getName",
        "getTag",
        "getYoutubeDLDir",
        "update",
        "Lcom/yausername/youtubedl_android/YoutubeDL$UpdateStatus;",
        "update$library_release",
        "updateSharedPrefs",
        "",
        "tag",
        "name",
        "version",
        "versionName",
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
.field public static final INSTANCE:Lcom/yausername/youtubedl_android/YoutubeDLUpdater;

.field private static final dlpBinaryName:Ljava/lang/String; = "yt-dlp"

.field private static final dlpVersionKey:Ljava/lang/String; = "dlpVersion"

.field private static final dlpVersionNameKey:Ljava/lang/String; = "dlpVersionName"

.field private static final youtubeDLMasterChannelUrl:Ljava/lang/String; = "https://api.github.com/repos/yt-dlp/yt-dlp-master-builds/releases/latest"

.field private static final youtubeDLNightlyChannelUrl:Ljava/lang/String; = "https://api.github.com/repos/yt-dlp/yt-dlp-nightly-builds/releases/latest"

.field private static final youtubeDLStableChannelUrl:Ljava/lang/String; = "https://api.github.com/repos/yt-dlp/yt-dlp/releases/latest"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/yausername/youtubedl_android/YoutubeDLUpdater;

    invoke-direct {v0}, Lcom/yausername/youtubedl_android/YoutubeDLUpdater;-><init>()V

    sput-object v0, Lcom/yausername/youtubedl_android/YoutubeDLUpdater;->INSTANCE:Lcom/yausername/youtubedl_android/YoutubeDLUpdater;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final checkForUpdate(Landroid/content/Context;Lcom/yausername/youtubedl_android/YoutubeDL$UpdateChannel;)Lcom/fasterxml/jackson/databind/JsonNode;
    .locals 5
    .param p1, "appContext"    # Landroid/content/Context;
    .param p2, "youtubeDLChannel"    # Lcom/yausername/youtubedl_android/YoutubeDL$UpdateChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    new-instance v0, Ljava/net/URL;

    invoke-virtual {p2}, Lcom/yausername/youtubedl_android/YoutubeDL$UpdateChannel;->getApiUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 65
    .local v0, "url":Ljava/net/URL;
    sget-object v1, Lcom/yausername/youtubedl_android/YoutubeDL;->INSTANCE:Lcom/yausername/youtubedl_android/YoutubeDL;

    invoke-virtual {v1}, Lcom/yausername/youtubedl_android/YoutubeDL;->getObjectMapper()Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readTree(Ljava/net/URL;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v1

    .line 66
    .local v1, "json":Lcom/fasterxml/jackson/databind/JsonNode;
    const-string v2, "json"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/yausername/youtubedl_android/YoutubeDLUpdater;->getTag(Lcom/fasterxml/jackson/databind/JsonNode;)Ljava/lang/String;

    move-result-object v2

    .line 67
    .local v2, "newVersion":Ljava/lang/String;
    const-string v3, "dlpVersion"

    invoke-static {p1, v3}, Lcom/yausername/youtubedl_common/SharedPrefsHelper;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 68
    .local v3, "oldVersion":Ljava/lang/String;
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 69
    const/4 v4, 0x0

    goto :goto_0

    .line 70
    :cond_0
    move-object v4, v1

    .line 68
    :goto_0
    return-object v4
.end method

.method private final download(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .param p1, "appContext"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 98
    .local v0, "downloadUrl":Ljava/net/URL;
    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "yt-dlp"

    invoke-static {v3, v1, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 99
    .local v1, "file":Ljava/io/File;
    const/16 v2, 0x1388

    const/16 v3, 0x2710

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/io/FileUtils;->copyURLToFile(Ljava/net/URL;Ljava/io/File;II)V

    .line 100
    const-string v2, "file"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method

.method private final getDownloadUrl(Lcom/fasterxml/jackson/databind/JsonNode;)Ljava/lang/String;
    .locals 6
    .param p1, "json"    # Lcom/fasterxml/jackson/databind/JsonNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yausername/youtubedl_android/YoutubeDLException;
        }
    .end annotation

    .line 83
    const-string v0, "assets"

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.fasterxml.jackson.databind.node.ArrayNode"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 84
    .local v0, "assets":Lcom/fasterxml/jackson/databind/node/ArrayNode;
    const-string v1, ""

    .line 85
    .local v1, "downloadUrl":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fasterxml/jackson/databind/JsonNode;

    .line 86
    .local v3, "asset":Lcom/fasterxml/jackson/databind/JsonNode;
    const-string v4, "name"

    invoke-virtual {v3, v4}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v4

    const-string v5, "yt-dlp"

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 87
    const-string v2, "browser_download_url"

    invoke-virtual {v3, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v2

    const-string v4, "asset[\"browser_download_url\"].asText()"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v2

    .line 88
    nop

    .line 91
    .end local v3    # "asset":Lcom/fasterxml/jackson/databind/JsonNode;
    :cond_1
    move-object v2, v1

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_3

    .line 92
    return-object v1

    .line 91
    :cond_3
    new-instance v2, Lcom/yausername/youtubedl_android/YoutubeDLException;

    const-string v3, "unable to get download url"

    invoke-direct {v2, v3}, Lcom/yausername/youtubedl_android/YoutubeDLException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private final getName(Lcom/fasterxml/jackson/databind/JsonNode;)Ljava/lang/String;
    .locals 2
    .param p1, "json"    # Lcom/fasterxml/jackson/databind/JsonNode;

    .line 78
    const-string v0, "name"

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v0

    const-string v1, "json[\"name\"].asText()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final getTag(Lcom/fasterxml/jackson/databind/JsonNode;)Ljava/lang/String;
    .locals 2
    .param p1, "json"    # Lcom/fasterxml/jackson/databind/JsonNode;

    .line 74
    const-string v0, "tag_name"

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v0

    const-string v1, "json[\"tag_name\"].asText()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final getYoutubeDLDir(Landroid/content/Context;)Ljava/io/File;
    .locals 3
    .param p1, "appContext"    # Landroid/content/Context;

    .line 104
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getNoBackupFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "youtubedl-android"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 105
    .local v0, "baseDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v2, "yt-dlp"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method public static synthetic update$library_release$default(Lcom/yausername/youtubedl_android/YoutubeDLUpdater;Landroid/content/Context;Lcom/yausername/youtubedl_android/YoutubeDL$UpdateChannel;ILjava/lang/Object;)Lcom/yausername/youtubedl_android/YoutubeDL$UpdateStatus;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/yausername/youtubedl_android/YoutubeDLException;
        }
    .end annotation

    .line 28
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 30
    sget-object p2, Lcom/yausername/youtubedl_android/YoutubeDL$UpdateChannel$STABLE;->INSTANCE:Lcom/yausername/youtubedl_android/YoutubeDL$UpdateChannel$STABLE;

    check-cast p2, Lcom/yausername/youtubedl_android/YoutubeDL$UpdateChannel;

    .line 28
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/yausername/youtubedl_android/YoutubeDLUpdater;->update$library_release(Landroid/content/Context;Lcom/yausername/youtubedl_android/YoutubeDL$UpdateChannel;)Lcom/yausername/youtubedl_android/YoutubeDL$UpdateStatus;

    move-result-object p0

    return-object p0
.end method

.method private final updateSharedPrefs(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "appContext"    # Landroid/content/Context;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;

    .line 58
    const-string v0, "dlpVersion"

    invoke-static {p1, v0, p2}, Lcom/yausername/youtubedl_common/SharedPrefsHelper;->update(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const-string v0, "dlpVersionName"

    invoke-static {p1, v0, p3}, Lcom/yausername/youtubedl_common/SharedPrefsHelper;->update(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    return-void
.end method


# virtual methods
.method public final update$library_release(Landroid/content/Context;Lcom/yausername/youtubedl_android/YoutubeDL$UpdateChannel;)Lcom/yausername/youtubedl_android/YoutubeDL$UpdateStatus;
    .locals 8
    .param p1, "appContext"    # Landroid/content/Context;
    .param p2, "youtubeDLChannel"    # Lcom/yausername/youtubedl_android/YoutubeDL$UpdateChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/yausername/youtubedl_android/YoutubeDLException;
        }
    .end annotation

    const-string v0, "youtubeDLChannel"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, p1, p2}, Lcom/yausername/youtubedl_android/YoutubeDLUpdater;->checkForUpdate(Landroid/content/Context;Lcom/yausername/youtubedl_android/YoutubeDL$UpdateChannel;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    if-nez v0, :cond_0

    .line 33
    sget-object v0, Lcom/yausername/youtubedl_android/YoutubeDL$UpdateStatus;->ALREADY_UP_TO_DATE:Lcom/yausername/youtubedl_android/YoutubeDL$UpdateStatus;

    return-object v0

    .line 34
    .local v0, "json":Lcom/fasterxml/jackson/databind/JsonNode;
    :cond_0
    invoke-direct {p0, v0}, Lcom/yausername/youtubedl_android/YoutubeDLUpdater;->getDownloadUrl(Lcom/fasterxml/jackson/databind/JsonNode;)Ljava/lang/String;

    move-result-object v1

    .line 35
    .local v1, "downloadUrl":Ljava/lang/String;
    invoke-direct {p0, p1, v1}, Lcom/yausername/youtubedl_android/YoutubeDLUpdater;->download(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 36
    .local v2, "file":Ljava/io/File;
    nop

    .line 37
    nop

    .line 36
    invoke-direct {p0, p1}, Lcom/yausername/youtubedl_android/YoutubeDLUpdater;->getYoutubeDLDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    .line 39
    .local v3, "ytdlpDir":Ljava/io/File;
    new-instance v4, Ljava/io/File;

    const-string v5, "yt-dlp"

    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 40
    .local v4, "binary":Ljava/io/File;
    nop

    .line 42
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v3}, Lorg/apache/commons/io/FileUtils;->deleteDirectory(Ljava/io/File;)V

    .line 43
    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 44
    invoke-static {v2, v4}, Lorg/apache/commons/io/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 52
    nop

    .line 53
    invoke-direct {p0, v0}, Lcom/yausername/youtubedl_android/YoutubeDLUpdater;->getTag(Lcom/fasterxml/jackson/databind/JsonNode;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v0}, Lcom/yausername/youtubedl_android/YoutubeDLUpdater;->getName(Lcom/fasterxml/jackson/databind/JsonNode;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, p1, v5, v6}, Lcom/yausername/youtubedl_android/YoutubeDLUpdater;->updateSharedPrefs(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    sget-object v5, Lcom/yausername/youtubedl_android/YoutubeDL$UpdateStatus;->DONE:Lcom/yausername/youtubedl_android/YoutubeDL$UpdateStatus;

    return-object v5

    .line 51
    :catchall_0
    move-exception v5

    goto :goto_0

    .line 45
    :catch_0
    move-exception v5

    .line 47
    .local v5, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v3}, Lorg/apache/commons/io/FileUtils;->deleteQuietly(Ljava/io/File;)Z

    .line 48
    invoke-static {}, Lcom/yausername/youtubedl_android/YoutubeDL;->getInstance()Lcom/yausername/youtubedl_android/YoutubeDL;

    move-result-object v6

    invoke-virtual {v6, p1, v3}, Lcom/yausername/youtubedl_android/YoutubeDL;->init_ytdlp(Landroid/content/Context;Ljava/io/File;)V

    .line 49
    new-instance v6, Lcom/yausername/youtubedl_android/YoutubeDLException;

    move-object v7, v5

    check-cast v7, Ljava/lang/Throwable;

    invoke-direct {v6, v7}, Lcom/yausername/youtubedl_android/YoutubeDLException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "json":Lcom/fasterxml/jackson/databind/JsonNode;
    .end local v1    # "downloadUrl":Ljava/lang/String;
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "ytdlpDir":Ljava/io/File;
    .end local v4    # "binary":Ljava/io/File;
    .end local p1    # "appContext":Landroid/content/Context;
    .end local p2    # "youtubeDLChannel":Lcom/yausername/youtubedl_android/YoutubeDL$UpdateChannel;
    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v0    # "json":Lcom/fasterxml/jackson/databind/JsonNode;
    .restart local v1    # "downloadUrl":Ljava/lang/String;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v3    # "ytdlpDir":Ljava/io/File;
    .restart local v4    # "binary":Ljava/io/File;
    .restart local p1    # "appContext":Landroid/content/Context;
    .restart local p2    # "youtubeDLChannel":Lcom/yausername/youtubedl_android/YoutubeDL$UpdateChannel;
    :goto_0
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    throw v5
.end method

.method public final version(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "appContext"    # Landroid/content/Context;

    .line 109
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v0, "dlpVersion"

    invoke-static {p1, v0}, Lcom/yausername/youtubedl_common/SharedPrefsHelper;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final versionName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "appContext"    # Landroid/content/Context;

    .line 113
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v0, "dlpVersionName"

    invoke-static {p1, v0}, Lcom/yausername/youtubedl_common/SharedPrefsHelper;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
