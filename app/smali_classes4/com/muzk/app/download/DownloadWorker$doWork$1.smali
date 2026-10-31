.class final Lcom/muzk/app/download/DownloadWorker$doWork$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "DownloadWorker.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muzk/app/download/DownloadWorker;->doWork(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.muzk.app.download.DownloadWorker"
    f = "DownloadWorker.kt"
    i = {}
    l = {
        0x29
    }
    m = "doWork"
    n = {}
    s = {}
.end annotation


# instance fields
.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lcom/muzk/app/download/DownloadWorker;


# direct methods
.method constructor <init>(Lcom/muzk/app/download/DownloadWorker;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/muzk/app/download/DownloadWorker;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/muzk/app/download/DownloadWorker$doWork$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/muzk/app/download/DownloadWorker$doWork$1;->this$0:Lcom/muzk/app/download/DownloadWorker;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iput-object p1, p0, Lcom/muzk/app/download/DownloadWorker$doWork$1;->result:Ljava/lang/Object;

    iget v0, p0, Lcom/muzk/app/download/DownloadWorker$doWork$1;->label:I

    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/muzk/app/download/DownloadWorker$doWork$1;->label:I

    iget-object v0, p0, Lcom/muzk/app/download/DownloadWorker$doWork$1;->this$0:Lcom/muzk/app/download/DownloadWorker;

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    invoke-virtual {v0, v1}, Lcom/muzk/app/download/DownloadWorker;->doWork(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
