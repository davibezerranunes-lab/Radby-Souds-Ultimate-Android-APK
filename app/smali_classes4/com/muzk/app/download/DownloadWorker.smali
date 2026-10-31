.class public final Lcom/muzk/app/download/DownloadWorker;
.super Landroidx/work/CoroutineWorker;
.source "DownloadWorker.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/muzk/app/download/DownloadWorker$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDownloadWorker.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DownloadWorker.kt\ncom/muzk/app/download/DownloadWorker\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,195:1\n1#2:196\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0018\u0000 $2\u00020\u0001:\u0001$B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000e\u0010\u0010\u001a\u00020\u0011H\u0096@\u00a2\u0006\u0002\u0010\u0012J\u0018\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\tH\u0002J\u0010\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u0016H\u0002J\u0018\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u000c2\u0006\u0010\u001e\u001a\u00020\tH\u0002J$\u0010\u001f\u001a\u00020\u00192\u0006\u0010 \u001a\u00020\t2\u0006\u0010!\u001a\u00020\"2\n\u0008\u0002\u0010#\u001a\u0004\u0018\u00010\tH\u0003R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006%"
    }
    d2 = {
        "Lcom/muzk/app/download/DownloadWorker;",
        "Landroidx/work/CoroutineWorker;",
        "context",
        "Landroid/content/Context;",
        "params",
        "Landroidx/work/WorkerParameters;",
        "<init>",
        "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V",
        "url",
        "",
        "title",
        "notificationId",
        "",
        "processId",
        "lastNotified",
        "",
        "doWork",
        "Landroidx/work/ListenableWorker$Result;",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "buildRequest",
        "Lcom/yausername/youtubedl_android/YoutubeDLRequest;",
        "dir",
        "Ljava/io/File;",
        "format",
        "publishToMusic",
        "",
        "file",
        "foregroundInfo",
        "Landroidx/work/ForegroundInfo;",
        "progress",
        "text",
        "notifyDone",
        "name",
        "success",
        "",
        "error",
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
.field public static final Companion:Lcom/muzk/app/download/DownloadWorker$Companion;

.field public static final FOLDER:Ljava/lang/String; = "Muzk"

.field public static final FORMAT_MP3:Ljava/lang/String; = "mp3"

.field public static final KEY_ERROR:Ljava/lang/String; = "error"

.field public static final KEY_NOTIFICATION_ID:Ljava/lang/String; = "notification_id"

.field public static final KEY_PROGRESS:Ljava/lang/String; = "progress"

.field public static final KEY_TITLE:Ljava/lang/String; = "title"

.field public static final KEY_URL:Ljava/lang/String; = "url"

.field public static final PREF_FORMAT:Ljava/lang/String; = "audio_format"


# instance fields
.field private lastNotified:J

.field private final notificationId:I

.field private final processId:Ljava/lang/String;

.field private final title:Ljava/lang/String;

.field private final url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/muzk/app/download/DownloadWorker$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/muzk/app/download/DownloadWorker$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/muzk/app/download/DownloadWorker;->Companion:Lcom/muzk/app/download/DownloadWorker$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "params"    # Landroidx/work/WorkerParameters;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-direct {p0, p1, p2}, Landroidx/work/CoroutineWorker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    .line 35
    invoke-virtual {p0}, Lcom/muzk/app/download/DownloadWorker;->getInputData()Landroidx/work/Data;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroidx/work/Data;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_0

    move-object v0, v1

    :cond_0
    iput-object v0, p0, Lcom/muzk/app/download/DownloadWorker;->url:Ljava/lang/String;

    .line 36
    invoke-virtual {p0}, Lcom/muzk/app/download/DownloadWorker;->getInputData()Landroidx/work/Data;

    move-result-object v0

    const-string v2, "title"

    invoke-virtual {v0, v2}, Landroidx/work/Data;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    iput-object v1, p0, Lcom/muzk/app/download/DownloadWorker;->title:Ljava/lang/String;

    .line 37
    invoke-virtual {p0}, Lcom/muzk/app/download/DownloadWorker;->getInputData()Landroidx/work/Data;

    move-result-object v0

    iget-object v1, p0, Lcom/muzk/app/download/DownloadWorker;->url:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const-string v2, "notification_id"

    invoke-virtual {v0, v2, v1}, Landroidx/work/Data;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/muzk/app/download/DownloadWorker;->notificationId:I

    .line 38
    invoke-virtual {p0}, Lcom/muzk/app/download/DownloadWorker;->getId()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "toString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/muzk/app/download/DownloadWorker;->processId:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public static final synthetic access$buildRequest(Lcom/muzk/app/download/DownloadWorker;Ljava/io/File;Ljava/lang/String;)Lcom/yausername/youtubedl_android/YoutubeDLRequest;
    .locals 1
    .param p0, "$this"    # Lcom/muzk/app/download/DownloadWorker;
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "format"    # Ljava/lang/String;

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/muzk/app/download/DownloadWorker;->buildRequest(Ljava/io/File;Ljava/lang/String;)Lcom/yausername/youtubedl_android/YoutubeDLRequest;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$foregroundInfo(Lcom/muzk/app/download/DownloadWorker;ILjava/lang/String;)Landroidx/work/ForegroundInfo;
    .locals 1
    .param p0, "$this"    # Lcom/muzk/app/download/DownloadWorker;
    .param p1, "progress"    # I
    .param p2, "text"    # Ljava/lang/String;

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/muzk/app/download/DownloadWorker;->foregroundInfo(ILjava/lang/String;)Landroidx/work/ForegroundInfo;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getLastNotified$p(Lcom/muzk/app/download/DownloadWorker;)J
    .locals 2
    .param p0, "$this"    # Lcom/muzk/app/download/DownloadWorker;

    .line 33
    iget-wide v0, p0, Lcom/muzk/app/download/DownloadWorker;->lastNotified:J

    return-wide v0
.end method

.method public static final synthetic access$getProcessId$p(Lcom/muzk/app/download/DownloadWorker;)Ljava/lang/String;
    .locals 1
    .param p0, "$this"    # Lcom/muzk/app/download/DownloadWorker;

    .line 33
    iget-object v0, p0, Lcom/muzk/app/download/DownloadWorker;->processId:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getTitle$p(Lcom/muzk/app/download/DownloadWorker;)Ljava/lang/String;
    .locals 1
    .param p0, "$this"    # Lcom/muzk/app/download/DownloadWorker;

    .line 33
    iget-object v0, p0, Lcom/muzk/app/download/DownloadWorker;->title:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getUrl$p(Lcom/muzk/app/download/DownloadWorker;)Ljava/lang/String;
    .locals 1
    .param p0, "$this"    # Lcom/muzk/app/download/DownloadWorker;

    .line 33
    iget-object v0, p0, Lcom/muzk/app/download/DownloadWorker;->url:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$notifyDone(Lcom/muzk/app/download/DownloadWorker;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0
    .param p0, "$this"    # Lcom/muzk/app/download/DownloadWorker;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "success"    # Z
    .param p3, "error"    # Ljava/lang/String;

    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/muzk/app/download/DownloadWorker;->notifyDone(Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$publishToMusic(Lcom/muzk/app/download/DownloadWorker;Ljava/io/File;)V
    .locals 0
    .param p0, "$this"    # Lcom/muzk/app/download/DownloadWorker;
    .param p1, "file"    # Ljava/io/File;

    .line 33
    invoke-direct {p0, p1}, Lcom/muzk/app/download/DownloadWorker;->publishToMusic(Ljava/io/File;)V

    return-void
.end method

.method public static final synthetic access$setLastNotified$p(Lcom/muzk/app/download/DownloadWorker;J)V
    .locals 0
    .param p0, "$this"    # Lcom/muzk/app/download/DownloadWorker;
    .param p1, "<set-?>"    # J

    .line 33
    iput-wide p1, p0, Lcom/muzk/app/download/DownloadWorker;->lastNotified:J

    return-void
.end method

.method private final buildRequest(Ljava/io/File;Ljava/lang/String;)Lcom/yausername/youtubedl_android/YoutubeDLRequest;
    .locals 7
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "format"    # Ljava/lang/String;

    .line 87
    new-instance v0, Lcom/yausername/youtubedl_android/YoutubeDLRequest;

    iget-object v1, p0, Lcom/muzk/app/download/DownloadWorker;->url:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/yausername/youtubedl_android/YoutubeDLRequest;-><init>(Ljava/lang/String;)V

    move-object v1, v0

    .local v1, "$this$buildRequest_u24lambda_u240":Lcom/yausername/youtubedl_android/YoutubeDLRequest;
    const/4 v2, 0x0

    .line 88
    .local v2, "$i$a$-apply-DownloadWorker$buildRequest$1":I
    const-string v3, "--no-playlist"

    invoke-virtual {v1, v3}, Lcom/yausername/youtubedl_android/YoutubeDLRequest;->addOption(Ljava/lang/String;)Lcom/yausername/youtubedl_android/YoutubeDLRequest;

    .line 89
    const-string v3, "--no-mtime"

    invoke-virtual {v1, v3}, Lcom/yausername/youtubedl_android/YoutubeDLRequest;->addOption(Ljava/lang/String;)Lcom/yausername/youtubedl_android/YoutubeDLRequest;

    .line 90
    const-string v3, "--no-warnings"

    invoke-virtual {v1, v3}, Lcom/yausername/youtubedl_android/YoutubeDLRequest;->addOption(Ljava/lang/String;)Lcom/yausername/youtubedl_android/YoutubeDLRequest;

    .line 91
    const-string v3, "-f"

    const-string v4, "bestaudio/best"

    invoke-virtual {v1, v3, v4}, Lcom/yausername/youtubedl_android/YoutubeDLRequest;->addOption(Ljava/lang/String;Ljava/lang/String;)Lcom/yausername/youtubedl_android/YoutubeDLRequest;

    .line 92
    const-string v3, "-x"

    invoke-virtual {v1, v3}, Lcom/yausername/youtubedl_android/YoutubeDLRequest;->addOption(Ljava/lang/String;)Lcom/yausername/youtubedl_android/YoutubeDLRequest;

    .line 93
    const-string v3, "mp3"

    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "--audio-quality"

    const-string v6, "--audio-format"

    if-eqz v4, :cond_0

    .line 94
    invoke-virtual {v1, v6, v3}, Lcom/yausername/youtubedl_android/YoutubeDLRequest;->addOption(Ljava/lang/String;Ljava/lang/String;)Lcom/yausername/youtubedl_android/YoutubeDLRequest;

    .line 95
    const-string v3, "320K"

    invoke-virtual {v1, v5, v3}, Lcom/yausername/youtubedl_android/YoutubeDLRequest;->addOption(Ljava/lang/String;Ljava/lang/String;)Lcom/yausername/youtubedl_android/YoutubeDLRequest;

    goto :goto_0

    .line 98
    :cond_0
    const-string v3, "m4a"

    invoke-virtual {v1, v6, v3}, Lcom/yausername/youtubedl_android/YoutubeDLRequest;->addOption(Ljava/lang/String;Ljava/lang/String;)Lcom/yausername/youtubedl_android/YoutubeDLRequest;

    .line 99
    const-string v3, "0"

    invoke-virtual {v1, v5, v3}, Lcom/yausername/youtubedl_android/YoutubeDLRequest;->addOption(Ljava/lang/String;Ljava/lang/String;)Lcom/yausername/youtubedl_android/YoutubeDLRequest;

    .line 102
    :goto_0
    const-string v3, "--embed-thumbnail"

    invoke-virtual {v1, v3}, Lcom/yausername/youtubedl_android/YoutubeDLRequest;->addOption(Ljava/lang/String;)Lcom/yausername/youtubedl_android/YoutubeDLRequest;

    .line 103
    const-string v3, "--convert-thumbnails"

    const-string v4, "jpg"

    invoke-virtual {v1, v3, v4}, Lcom/yausername/youtubedl_android/YoutubeDLRequest;->addOption(Ljava/lang/String;Ljava/lang/String;)Lcom/yausername/youtubedl_android/YoutubeDLRequest;

    .line 104
    const-string v3, "--ppa"

    const-string v4, "ThumbnailsConvertor:-qmin 1 -q:v 1 -vf crop=\"\'if(gt(ih,iw),iw,ih)\':\'if(gt(iw,ih),ih,iw)\'\""

    invoke-virtual {v1, v3, v4}, Lcom/yausername/youtubedl_android/YoutubeDLRequest;->addOption(Ljava/lang/String;Ljava/lang/String;)Lcom/yausername/youtubedl_android/YoutubeDLRequest;

    .line 106
    const-string v3, "--embed-metadata"

    invoke-virtual {v1, v3}, Lcom/yausername/youtubedl_android/YoutubeDLRequest;->addOption(Ljava/lang/String;)Lcom/yausername/youtubedl_android/YoutubeDLRequest;

    .line 107
    const-string v3, "%(artist,creator,uploader,channel)s:%(meta_artist)s"

    const-string v4, "--parse-metadata"

    invoke-virtual {v1, v4, v3}, Lcom/yausername/youtubedl_android/YoutubeDLRequest;->addOption(Ljava/lang/String;Ljava/lang/String;)Lcom/yausername/youtubedl_android/YoutubeDLRequest;

    .line 108
    const-string v3, "%(track,title)s:%(meta_title)s"

    invoke-virtual {v1, v4, v3}, Lcom/yausername/youtubedl_android/YoutubeDLRequest;->addOption(Ljava/lang/String;Ljava/lang/String;)Lcom/yausername/youtubedl_android/YoutubeDLRequest;

    .line 109
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/%(track,title)s.%(ext)s"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "-o"

    invoke-virtual {v1, v4, v3}, Lcom/yausername/youtubedl_android/YoutubeDLRequest;->addOption(Ljava/lang/String;Ljava/lang/String;)Lcom/yausername/youtubedl_android/YoutubeDLRequest;

    .line 110
    const-string v3, "--windows-filenames"

    invoke-virtual {v1, v3}, Lcom/yausername/youtubedl_android/YoutubeDLRequest;->addOption(Ljava/lang/String;)Lcom/yausername/youtubedl_android/YoutubeDLRequest;

    .line 111
    nop

    .line 87
    .end local v1    # "$this$buildRequest_u24lambda_u240":Lcom/yausername/youtubedl_android/YoutubeDLRequest;
    .end local v2    # "$i$a$-apply-DownloadWorker$buildRequest$1":I
    nop

    .line 111
    return-object v0
.end method

.method private final foregroundInfo(ILjava/lang/String;)Landroidx/work/ForegroundInfo;
    .locals 7
    .param p1, "progress"    # I
    .param p2, "text"    # Ljava/lang/String;

    .line 155
    sget-object v0, Landroidx/work/WorkManager;->Companion:Landroidx/work/WorkManager$Companion;

    invoke-virtual {p0}, Lcom/muzk/app/download/DownloadWorker;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "getApplicationContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroidx/work/WorkManager$Companion;->getInstance(Landroid/content/Context;)Landroidx/work/WorkManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/muzk/app/download/DownloadWorker;->getId()Ljava/util/UUID;

    move-result-object v1

    const-string v2, "getId(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroidx/work/WorkManager;->createCancelPendingIntent(Ljava/util/UUID;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 156
    .local v0, "cancel":Landroid/app/PendingIntent;
    new-instance v1, Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {p0}, Lcom/muzk/app/download/DownloadWorker;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "downloads"

    invoke-direct {v1, v2, v3}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 157
    sget v2, Lcom/muzk/app/R$drawable;->ic_download:I

    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 158
    iget-object v2, p0, Lcom/muzk/app/download/DownloadWorker;->title:Ljava/lang/String;

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 196
    const/4 v2, 0x0

    .line 158
    .local v2, "$i$a$-ifBlank-DownloadWorker$foregroundInfo$notification$1":I
    invoke-virtual {p0}, Lcom/muzk/app/download/DownloadWorker;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/muzk/app/R$string;->dl_downloading:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "getString(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v3

    .end local v2    # "$i$a$-ifBlank-DownloadWorker$foregroundInfo$notification$1":I
    :cond_0
    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 159
    move-object v2, p2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 160
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setOnlyAlertOnce(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 161
    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 162
    const/4 v3, 0x0

    invoke-static {p1, v3}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v4

    if-gez p1, :cond_1

    move v5, v2

    goto :goto_0

    :cond_1
    move v5, v3

    :goto_0
    const/16 v6, 0x64

    invoke-virtual {v1, v6, v4, v5}, Landroidx/core/app/NotificationCompat$Builder;->setProgress(IIZ)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 163
    invoke-virtual {p0}, Lcom/muzk/app/download/DownloadWorker;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/muzk/app/R$string;->cancel:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v1, v3, v4, v0}, Landroidx/core/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 164
    invoke-virtual {v1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    const-string v3, "build(...)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    nop

    .line 165
    .local v1, "notification":Landroid/app/Notification;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1d

    if-lt v3, v4, :cond_2

    .line 166
    new-instance v3, Landroidx/work/ForegroundInfo;

    iget v4, p0, Lcom/muzk/app/download/DownloadWorker;->notificationId:I

    invoke-direct {v3, v4, v1, v2}, Landroidx/work/ForegroundInfo;-><init>(ILandroid/app/Notification;I)V

    goto :goto_1

    .line 168
    :cond_2
    new-instance v3, Landroidx/work/ForegroundInfo;

    iget v2, p0, Lcom/muzk/app/download/DownloadWorker;->notificationId:I

    invoke-direct {v3, v2, v1}, Landroidx/work/ForegroundInfo;-><init>(ILandroid/app/Notification;)V

    .line 165
    :goto_1
    return-object v3
.end method

.method private final notifyDone(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "success"    # Z
    .param p3, "error"    # Ljava/lang/String;

    .line 174
    invoke-virtual {p0}, Lcom/muzk/app/download/DownloadWorker;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "getApplicationContext(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    .local v0, "ctx":Landroid/content/Context;
    new-instance v1, Landroidx/core/app/NotificationCompat$Builder;

    const-string v2, "downloads"

    invoke-direct {v1, v0, v2}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 176
    if-eqz p2, :cond_0

    sget v2, Lcom/muzk/app/R$drawable;->ic_check:I

    goto :goto_0

    :cond_0
    sget v2, Lcom/muzk/app/R$drawable;->ic_error:I

    :goto_0
    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 177
    if-eqz p2, :cond_1

    sget v2, Lcom/muzk/app/R$string;->dl_done:I

    goto :goto_1

    :cond_1
    sget v2, Lcom/muzk/app/R$string;->dl_failed:I

    :goto_1
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 178
    if-eqz p2, :cond_2

    move-object v2, p1

    goto :goto_3

    :cond_2
    if-nez p3, :cond_3

    const-string v2, ""

    goto :goto_2

    :cond_3
    move-object v2, p3

    :goto_2
    const/16 v3, 0x78

    invoke-static {v2, v3}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_3
    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 179
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 180
    invoke-virtual {v1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    const-string v3, "build(...)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    nop

    .line 181
    .local v1, "notification":Landroid/app/Notification;
    :try_start_0
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v3, p0

    check-cast v3, Lcom/muzk/app/download/DownloadWorker;

    .line 196
    .local v3, "$this$notifyDone_u24lambda_u246":Lcom/muzk/app/download/DownloadWorker;
    const/4 v4, 0x0

    .line 181
    .local v4, "$i$a$-runCatching-DownloadWorker$notifyDone$1":I
    invoke-static {v0}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object v5

    iget v6, v3, Lcom/muzk/app/download/DownloadWorker;->notificationId:I

    add-int/2addr v6, v2

    invoke-virtual {v5, v6, v1}, Landroidx/core/app/NotificationManagerCompat;->notify(ILandroid/app/Notification;)V

    .end local v3    # "$this$notifyDone_u24lambda_u246":Lcom/muzk/app/download/DownloadWorker;
    .end local v4    # "$i$a$-runCatching-DownloadWorker$notifyDone$1":I
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v2

    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v2}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    :goto_4
    return-void
.end method

.method static synthetic notifyDone$default(Lcom/muzk/app/download/DownloadWorker;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/Object;)V
    .locals 0

    .line 172
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 173
    const/4 p3, 0x0

    .line 172
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/muzk/app/download/DownloadWorker;->notifyDone(Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method private final publishToMusic(Ljava/io/File;)V
    .locals 18
    .param p1, "file"    # Ljava/io/File;

    .line 115
    invoke-static/range {p1 .. p1}, Lkotlin/io/FilesKt;->getExtension(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "toLowerCase(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :goto_0
    goto :goto_1

    :sswitch_0
    const-string v1, "opus"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :sswitch_1
    const-string v1, "ogg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 118
    :cond_0
    const-string v0, "audio/ogg"

    goto :goto_2

    .line 115
    :sswitch_2
    const-string v1, "mp3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 116
    :cond_1
    const-string v0, "audio/mpeg"

    goto :goto_2

    .line 115
    :sswitch_3
    const-string v1, "m4a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 117
    :cond_2
    const-string v0, "audio/mp4"

    goto :goto_2

    .line 119
    :goto_1
    const-string v0, "audio/*"

    .line 115
    :goto_2
    move-object v1, v0

    .line 121
    .local v1, "mime":Ljava/lang/String;
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-lt v0, v2, :cond_5

    .line 122
    invoke-virtual/range {p0 .. p0}, Lcom/muzk/app/download/DownloadWorker;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 123
    .local v2, "resolver":Landroid/content/ContentResolver;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    move-object v6, v0

    .local v6, "$this$publishToMusic_u24lambda_u241":Landroid/content/ContentValues;
    const/4 v7, 0x0

    .line 124
    .local v7, "$i$a$-apply-DownloadWorker$publishToMusic$values$1":I
    const-string v8, "_display_name"

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    const-string v8, "mime_type"

    invoke-virtual {v6, v8, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    sget-object v8, Landroid/os/Environment;->DIRECTORY_MUSIC:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/Radby Sonds"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "relative_path"

    invoke-virtual {v6, v9, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    const-string v8, "is_music"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 128
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v8, "is_pending"

    invoke-virtual {v6, v8, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 129
    nop

    .line 123
    .end local v6    # "$this$publishToMusic_u24lambda_u241":Landroid/content/ContentValues;
    .end local v7    # "$i$a$-apply-DownloadWorker$publishToMusic$values$1":I
    move-object v4, v0

    .line 130
    .local v4, "values":Landroid/content/ContentValues;
    const-string v0, "external_primary"

    invoke-static {v0}, Landroid/provider/MediaStore$Audio$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 131
    .local v6, "collection":Landroid/net/Uri;
    invoke-virtual {v2, v6, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_4

    move-object v7, v0

    .line 132
    .local v7, "uri":Landroid/net/Uri;
    nop

    .line 133
    :try_start_0
    invoke-virtual {v2, v7}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v0

    if-eqz v0, :cond_3

    move-object v9, v0

    check-cast v9, Ljava/io/Closeable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    move-object v0, v9

    check-cast v0, Ljava/io/OutputStream;

    move-object v10, v0

    .line 196
    .local v10, "out":Ljava/io/OutputStream;
    const/4 v11, 0x0

    .local v11, "$i$a$-use-DownloadWorker$publishToMusic$1":I
    new-instance v0, Ljava/io/FileInputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 133
    move-object/from16 v15, p1

    :try_start_2
    invoke-direct {v0, v15}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v12, v0

    check-cast v12, Ljava/io/Closeable;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    move-object v0, v12

    check-cast v0, Ljava/io/FileInputStream;

    .line 196
    .local v0, "it":Ljava/io/FileInputStream;
    const/4 v13, 0x0

    .line 133
    .local v13, "$i$a$-use-DownloadWorker$publishToMusic$1$1":I
    move-object v14, v0

    check-cast v14, Ljava/io/InputStream;

    move-object/from16 v16, v0

    .end local v0    # "it":Ljava/io/FileInputStream;
    .local v16, "it":Ljava/io/FileInputStream;
    const/4 v0, 0x2

    invoke-static {v14, v10, v3, v0, v5}, Lkotlin/io/ByteStreamsKt;->copyTo$default(Ljava/io/InputStream;Ljava/io/OutputStream;IILjava/lang/Object;)J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v13    # "$i$a$-use-DownloadWorker$publishToMusic$1$1":I
    .end local v16    # "it":Ljava/io/FileInputStream;
    :try_start_4
    invoke-static {v12, v5}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .end local v10    # "out":Ljava/io/OutputStream;
    .end local v11    # "$i$a$-use-DownloadWorker$publishToMusic$1":I
    :try_start_5
    invoke-static {v9, v5}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 135
    invoke-virtual {v4}, Landroid/content/ContentValues;->clear()V

    .line 136
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v8, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 137
    invoke-virtual {v2, v7, v4, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 140
    nop

    .end local v2    # "resolver":Landroid/content/ContentResolver;
    .end local v4    # "values":Landroid/content/ContentValues;
    .end local v6    # "collection":Landroid/net/Uri;
    .end local v7    # "uri":Landroid/net/Uri;
    goto/16 :goto_6

    .line 133
    .restart local v2    # "resolver":Landroid/content/ContentResolver;
    .restart local v4    # "values":Landroid/content/ContentValues;
    .restart local v6    # "collection":Landroid/net/Uri;
    .restart local v7    # "uri":Landroid/net/Uri;
    .restart local v10    # "out":Ljava/io/OutputStream;
    .restart local v11    # "$i$a$-use-DownloadWorker$publishToMusic$1":I
    :catchall_0
    move-exception v0

    move-object v3, v0

    .end local v1    # "mime":Ljava/lang/String;
    .end local v2    # "resolver":Landroid/content/ContentResolver;
    .end local v4    # "values":Landroid/content/ContentValues;
    .end local v6    # "collection":Landroid/net/Uri;
    .end local v7    # "uri":Landroid/net/Uri;
    .end local v10    # "out":Ljava/io/OutputStream;
    .end local v11    # "$i$a$-use-DownloadWorker$publishToMusic$1":I
    .end local p1    # "file":Ljava/io/File;
    :try_start_6
    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .restart local v1    # "mime":Ljava/lang/String;
    .restart local v2    # "resolver":Landroid/content/ContentResolver;
    .restart local v4    # "values":Landroid/content/ContentValues;
    .restart local v6    # "collection":Landroid/net/Uri;
    .restart local v7    # "uri":Landroid/net/Uri;
    .restart local v10    # "out":Ljava/io/OutputStream;
    .restart local v11    # "$i$a$-use-DownloadWorker$publishToMusic$1":I
    .restart local p1    # "file":Ljava/io/File;
    :catchall_1
    move-exception v0

    move-object v8, v0

    :try_start_7
    invoke-static {v12, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .end local v1    # "mime":Ljava/lang/String;
    .end local v2    # "resolver":Landroid/content/ContentResolver;
    .end local v4    # "values":Landroid/content/ContentValues;
    .end local v6    # "collection":Landroid/net/Uri;
    .end local v7    # "uri":Landroid/net/Uri;
    .end local p1    # "file":Ljava/io/File;
    throw v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .end local v10    # "out":Ljava/io/OutputStream;
    .end local v11    # "$i$a$-use-DownloadWorker$publishToMusic$1":I
    .restart local v1    # "mime":Ljava/lang/String;
    .restart local v2    # "resolver":Landroid/content/ContentResolver;
    .restart local v4    # "values":Landroid/content/ContentValues;
    .restart local v6    # "collection":Landroid/net/Uri;
    .restart local v7    # "uri":Landroid/net/Uri;
    .restart local p1    # "file":Ljava/io/File;
    :catchall_2
    move-exception v0

    goto :goto_3

    :catchall_3
    move-exception v0

    move-object/from16 v15, p1

    :goto_3
    move-object v3, v0

    .end local v1    # "mime":Ljava/lang/String;
    .end local v2    # "resolver":Landroid/content/ContentResolver;
    .end local v4    # "values":Landroid/content/ContentValues;
    .end local v6    # "collection":Landroid/net/Uri;
    .end local v7    # "uri":Landroid/net/Uri;
    .end local p1    # "file":Ljava/io/File;
    :try_start_8
    throw v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .restart local v1    # "mime":Ljava/lang/String;
    .restart local v2    # "resolver":Landroid/content/ContentResolver;
    .restart local v4    # "values":Landroid/content/ContentValues;
    .restart local v6    # "collection":Landroid/net/Uri;
    .restart local v7    # "uri":Landroid/net/Uri;
    .restart local p1    # "file":Ljava/io/File;
    :catchall_4
    move-exception v0

    move-object v8, v0

    :try_start_9
    invoke-static {v9, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .end local v1    # "mime":Ljava/lang/String;
    .end local v2    # "resolver":Landroid/content/ContentResolver;
    .end local v4    # "values":Landroid/content/ContentValues;
    .end local v6    # "collection":Landroid/net/Uri;
    .end local v7    # "uri":Landroid/net/Uri;
    .end local p1    # "file":Ljava/io/File;
    throw v8

    .restart local v1    # "mime":Ljava/lang/String;
    .restart local v2    # "resolver":Landroid/content/ContentResolver;
    .restart local v4    # "values":Landroid/content/ContentValues;
    .restart local v6    # "collection":Landroid/net/Uri;
    .restart local v7    # "uri":Landroid/net/Uri;
    .restart local p1    # "file":Ljava/io/File;
    :cond_3
    move-object/from16 v15, p1

    new-instance v0, Ljava/lang/IllegalStateException;

    .line 134
    const-string v3, "N\u00e3o consegui gravar em M\u00fasica"

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v1    # "mime":Ljava/lang/String;
    .end local v2    # "resolver":Landroid/content/ContentResolver;
    .end local v4    # "values":Landroid/content/ContentValues;
    .end local v6    # "collection":Landroid/net/Uri;
    .end local v7    # "uri":Landroid/net/Uri;
    .end local p1    # "file":Ljava/io/File;
    throw v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    .line 138
    .restart local v1    # "mime":Ljava/lang/String;
    .restart local v2    # "resolver":Landroid/content/ContentResolver;
    .restart local v4    # "values":Landroid/content/ContentValues;
    .restart local v6    # "collection":Landroid/net/Uri;
    .restart local v7    # "uri":Landroid/net/Uri;
    .restart local p1    # "file":Ljava/io/File;
    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    move-object/from16 v15, p1

    .line 139
    .local v0, "e":Ljava/lang/Exception;
    :goto_4
    invoke-virtual {v2, v7, v5, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 140
    throw v0

    .line 131
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v7    # "uri":Landroid/net/Uri;
    :cond_4
    move-object/from16 v15, p1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v3, "N\u00e3o consegui criar o arquivo em M\u00fasica"

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    .end local v2    # "resolver":Landroid/content/ContentResolver;
    .end local v4    # "values":Landroid/content/ContentValues;
    .end local v6    # "collection":Landroid/net/Uri;
    :cond_5
    move-object/from16 v15, p1

    new-instance v0, Ljava/io/File;

    sget-object v2, Landroid/os/Environment;->DIRECTORY_MUSIC:Ljava/lang/String;

    invoke-static {v2}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    const-string v6, "Radby Sonds"

    invoke-direct {v0, v2, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 143
    nop

    .line 145
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 146
    new-instance v2, Ljava/io/File;

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v0, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 147
    .local v2, "target":Ljava/io/File;
    const/4 v6, 0x0

    .local v6, "n":I
    const/4 v6, 0x1

    .line 148
    :goto_5
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_6

    new-instance v7, Ljava/io/File;

    invoke-static/range {p1 .. p1}, Lkotlin/io/FilesKt;->getNameWithoutExtension(Ljava/io/File;)Ljava/lang/String;

    move-result-object v8

    invoke-static/range {p1 .. p1}, Lkotlin/io/FilesKt;->getExtension(Ljava/io/File;)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " ("

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ")."

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v0, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v8, v7

    .line 196
    .local v8, "it":Ljava/io/File;
    const/4 v9, 0x0

    .line 148
    .local v9, "$i$a$-also-DownloadWorker$publishToMusic$2":I
    add-int/lit8 v6, v6, 0x1

    .end local v8    # "it":Ljava/io/File;
    .end local v9    # "$i$a$-also-DownloadWorker$publishToMusic$2":I
    move-object v2, v7

    goto :goto_5

    .line 149
    :cond_6
    const/16 v16, 0x6

    const/16 v17, 0x0

    const/4 v14, 0x0

    const/4 v7, 0x0

    move-object/from16 v12, p1

    move-object v13, v2

    move v15, v7

    invoke-static/range {v12 .. v17}, Lkotlin/io/FilesKt;->copyTo$default(Ljava/io/File;Ljava/io/File;ZIILjava/lang/Object;)Ljava/io/File;

    .line 150
    invoke-virtual/range {p0 .. p0}, Lcom/muzk/app/download/DownloadWorker;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    new-array v8, v4, [Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v3

    new-array v4, v4, [Ljava/lang/String;

    aput-object v1, v4, v3

    invoke-static {v7, v8, v4, v5}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 152
    .end local v0    # "dir":Ljava/io/File;
    .end local v2    # "target":Ljava/io/File;
    .end local v6    # "n":I
    :goto_6
    return-void

    :sswitch_data_0
    .sparse-switch
        0x19fda -> :sswitch_3
        0x1a6f0 -> :sswitch_2
        0x1ad8f -> :sswitch_1
        0x34283f -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public doWork(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroidx/work/ListenableWorker$Result;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/muzk/app/download/DownloadWorker$doWork$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/muzk/app/download/DownloadWorker$doWork$1;

    iget v1, v0, Lcom/muzk/app/download/DownloadWorker$doWork$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, v0, Lcom/muzk/app/download/DownloadWorker$doWork$1;->label:I

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/muzk/app/download/DownloadWorker$doWork$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/muzk/app/download/DownloadWorker$doWork$1;

    invoke-direct {v0, p0, p1}, Lcom/muzk/app/download/DownloadWorker$doWork$1;-><init>(Lcom/muzk/app/download/DownloadWorker;Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v1, v0, Lcom/muzk/app/download/DownloadWorker$doWork$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 41
    iget v3, v0, Lcom/muzk/app/download/DownloadWorker$doWork$1;->label:I

    packed-switch v3, :pswitch_data_0

    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v1    # "$result":Ljava/lang/Object;
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v1    # "$result":Ljava/lang/Object;
    :pswitch_0
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v3, v1

    goto :goto_1

    :pswitch_1
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v3, p0

    .local v3, "this":Lcom/muzk/app/download/DownloadWorker;
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v4

    check-cast v4, Lkotlin/coroutines/CoroutineContext;

    new-instance v5, Lcom/muzk/app/download/DownloadWorker$doWork$2;

    const/4 v6, 0x0

    invoke-direct {v5, v3, v6}, Lcom/muzk/app/download/DownloadWorker$doWork$2;-><init>(Lcom/muzk/app/download/DownloadWorker;Lkotlin/coroutines/Continuation;)V

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x1

    iput v6, v0, Lcom/muzk/app/download/DownloadWorker$doWork$1;->label:I

    invoke-static {v4, v5, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "this":Lcom/muzk/app/download/DownloadWorker;
    if-ne v3, v2, :cond_1

    return-object v2

    :cond_1
    :goto_1
    const-string v2, "withContext(...)"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    return-object v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
