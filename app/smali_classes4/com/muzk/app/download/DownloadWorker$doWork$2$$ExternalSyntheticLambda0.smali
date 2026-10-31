.class public final synthetic Lcom/muzk/app/download/DownloadWorker$doWork$2$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic f$0:Lcom/muzk/app/download/DownloadWorker;


# direct methods
.method public synthetic constructor <init>(Lcom/muzk/app/download/DownloadWorker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/muzk/app/download/DownloadWorker$doWork$2$$ExternalSyntheticLambda0;->f$0:Lcom/muzk/app/download/DownloadWorker;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/muzk/app/download/DownloadWorker$doWork$2$$ExternalSyntheticLambda0;->f$0:Lcom/muzk/app/download/DownloadWorker;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    check-cast p3, Ljava/lang/String;

    invoke-static {v0, p1, v1, v2, p3}, Lcom/muzk/app/download/DownloadWorker$doWork$2;->$r8$lambda$CwNjUQ_QmjsPMr7PqF7R4j1ZZCI(Lcom/muzk/app/download/DownloadWorker;FJLjava/lang/String;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
