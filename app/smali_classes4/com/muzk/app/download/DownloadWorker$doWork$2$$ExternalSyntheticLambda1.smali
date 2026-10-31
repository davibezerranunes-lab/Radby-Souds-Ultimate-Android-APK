.class public final synthetic Lcom/muzk/app/download/DownloadWorker$doWork$2$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/muzk/app/download/DownloadWorker;

.field public final synthetic f$1:Ljava/io/File;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/muzk/app/download/DownloadWorker;Ljava/io/File;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/muzk/app/download/DownloadWorker$doWork$2$$ExternalSyntheticLambda1;->f$0:Lcom/muzk/app/download/DownloadWorker;

    iput-object p2, p0, Lcom/muzk/app/download/DownloadWorker$doWork$2$$ExternalSyntheticLambda1;->f$1:Ljava/io/File;

    iput-object p3, p0, Lcom/muzk/app/download/DownloadWorker$doWork$2$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/muzk/app/download/DownloadWorker$doWork$2$$ExternalSyntheticLambda1;->f$0:Lcom/muzk/app/download/DownloadWorker;

    iget-object v1, p0, Lcom/muzk/app/download/DownloadWorker$doWork$2$$ExternalSyntheticLambda1;->f$1:Ljava/io/File;

    iget-object v2, p0, Lcom/muzk/app/download/DownloadWorker$doWork$2$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/muzk/app/download/DownloadWorker$doWork$2;->$r8$lambda$OZqEDDC83F0ZbgD-Vrl5Y2-J8xg(Lcom/muzk/app/download/DownloadWorker;Ljava/io/File;Ljava/lang/String;)Lcom/yausername/youtubedl_android/YoutubeDLResponse;

    move-result-object v0

    return-object v0
.end method
