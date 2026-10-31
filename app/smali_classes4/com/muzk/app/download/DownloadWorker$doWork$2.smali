.class final Lcom/muzk/app/download/DownloadWorker$doWork$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "DownloadWorker.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muzk/app/download/DownloadWorker;->doWork(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Landroidx/work/ListenableWorker$Result;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDownloadWorker.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DownloadWorker.kt\ncom/muzk/app/download/DownloadWorker$doWork$2\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 5 Data.kt\nandroidx/work/DataKt\n*L\n1#1,195:1\n1#2:196\n3829#3:197\n4344#3,2:198\n1971#4,14:200\n31#5,5:214\n31#5,5:219\n31#5,5:224\n*S KotlinDebug\n*F\n+ 1 DownloadWorker.kt\ncom/muzk/app/download/DownloadWorker$doWork$2\n*L\n67#1:197\n67#1:198,2\n68#1:200,14\n73#1:214,5\n80#1:219,5\n57#1:224,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00070\u0001\u00a2\u0006\u0002\u0008\u0002*\u00020\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "Landroidx/work/ListenableWorker$Result;",
        "Lkotlin/jvm/internal/EnhancedNullability;",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.muzk.app.download.DownloadWorker$doWork$2"
    f = "DownloadWorker.kt"
    i = {
        0x1,
        0x2
    }
    l = {
        0x2d,
        0x31,
        0x36
    }
    m = "invokeSuspend"
    n = {
        "workDir",
        "workDir"
    }
    s = {
        "L$0",
        "L$0"
    }
.end annotation


# instance fields
.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/muzk/app/download/DownloadWorker;


# direct methods
.method public static synthetic $r8$lambda$CwNjUQ_QmjsPMr7PqF7R4j1ZZCI(Lcom/muzk/app/download/DownloadWorker;FJLjava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/muzk/app/download/DownloadWorker$doWork$2;->invokeSuspend$lambda$3$lambda$2(Lcom/muzk/app/download/DownloadWorker;FJLjava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$OZqEDDC83F0ZbgD-Vrl5Y2-J8xg(Lcom/muzk/app/download/DownloadWorker;Ljava/io/File;Ljava/lang/String;)Lcom/yausername/youtubedl_android/YoutubeDLResponse;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/muzk/app/download/DownloadWorker$doWork$2;->invokeSuspend$lambda$3(Lcom/muzk/app/download/DownloadWorker;Ljava/io/File;Ljava/lang/String;)Lcom/yausername/youtubedl_android/YoutubeDLResponse;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Lcom/muzk/app/download/DownloadWorker;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/muzk/app/download/DownloadWorker;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/muzk/app/download/DownloadWorker$doWork$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/muzk/app/download/DownloadWorker$doWork$2;->this$0:Lcom/muzk/app/download/DownloadWorker;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method private static final invokeSuspend$lambda$3(Lcom/muzk/app/download/DownloadWorker;Ljava/io/File;Ljava/lang/String;)Lcom/yausername/youtubedl_android/YoutubeDLResponse;
    .locals 4
    .param p0, "this$0"    # Lcom/muzk/app/download/DownloadWorker;
    .param p1, "$workDir"    # Ljava/io/File;
    .param p2, "$format"    # Ljava/lang/String;

    .line 55
    invoke-static {}, Lcom/yausername/youtubedl_android/YoutubeDL;->getInstance()Lcom/yausername/youtubedl_android/YoutubeDL;

    move-result-object v0

    invoke-static {p0, p1, p2}, Lcom/muzk/app/download/DownloadWorker;->access$buildRequest(Lcom/muzk/app/download/DownloadWorker;Ljava/io/File;Ljava/lang/String;)Lcom/yausername/youtubedl_android/YoutubeDLRequest;

    move-result-object v1

    invoke-static {p0}, Lcom/muzk/app/download/DownloadWorker;->access$getProcessId$p(Lcom/muzk/app/download/DownloadWorker;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/muzk/app/download/DownloadWorker$doWork$2$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/muzk/app/download/DownloadWorker$doWork$2$$ExternalSyntheticLambda0;-><init>(Lcom/muzk/app/download/DownloadWorker;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/yausername/youtubedl_android/YoutubeDL;->execute(Lcom/yausername/youtubedl_android/YoutubeDLRequest;Ljava/lang/String;Lkotlin/jvm/functions/Function3;)Lcom/yausername/youtubedl_android/YoutubeDLResponse;

    move-result-object v0

    .line 63
    return-object v0
.end method

.method private static final invokeSuspend$lambda$3$lambda$2(Lcom/muzk/app/download/DownloadWorker;FJLjava/lang/String;)Lkotlin/Unit;
    .locals 6
    .param p0, "this$0"    # Lcom/muzk/app/download/DownloadWorker;
    .param p1, "progress"    # F

    .line 56
    float-to-int p2, p1

    const/16 p3, 0x64

    const/4 p4, 0x0

    invoke-static {p2, p4, p3}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result p2

    .line 57
    .local p2, "pct":I
    const/4 p3, 0x1

    new-array p3, p3, [Lkotlin/Pair;

    const-string v0, "progress"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    aput-object v0, p3, p4

    .local p3, "pairs$iv":[Lkotlin/Pair;
    const/4 v0, 0x0

    .line 224
    .local v0, "$i$f$workDataOf":I
    new-instance v1, Landroidx/work/Data$Builder;

    invoke-direct {v1}, Landroidx/work/Data$Builder;-><init>()V

    .line 225
    .local v1, "dataBuilder$iv":Landroidx/work/Data$Builder;
    array-length v2, p3

    :goto_0
    if-ge p4, v2, :cond_0

    aget-object v3, p3, p4

    .line 226
    .local v3, "pair$iv":Lkotlin/Pair;
    invoke-virtual {v3}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroidx/work/Data$Builder;->put(Ljava/lang/String;Ljava/lang/Object;)Landroidx/work/Data$Builder;

    .line 225
    .end local v3    # "pair$iv":Lkotlin/Pair;
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 228
    :cond_0
    invoke-virtual {v1}, Landroidx/work/Data$Builder;->build()Landroidx/work/Data;

    move-result-object p3

    .line 57
    .end local v0    # "$i$f$workDataOf":I
    .end local v1    # "dataBuilder$iv":Landroidx/work/Data$Builder;
    .end local p3    # "pairs$iv":[Lkotlin/Pair;
    invoke-virtual {p0, p3}, Lcom/muzk/app/download/DownloadWorker;->setProgressAsync(Landroidx/work/Data;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 58
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    .line 59
    .local p3, "now":J
    invoke-static {p0}, Lcom/muzk/app/download/DownloadWorker;->access$getLastNotified$p(Lcom/muzk/app/download/DownloadWorker;)J

    move-result-wide v0

    sub-long v0, p3, v0

    const-wide/16 v2, 0x2bc

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 60
    invoke-static {p0, p3, p4}, Lcom/muzk/app/download/DownloadWorker;->access$setLastNotified$p(Lcom/muzk/app/download/DownloadWorker;J)V

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p2, v0}, Lcom/muzk/app/download/DownloadWorker;->access$foregroundInfo(Lcom/muzk/app/download/DownloadWorker;ILjava/lang/String;)Landroidx/work/ForegroundInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/muzk/app/download/DownloadWorker;->setForegroundAsync(Landroidx/work/ForegroundInfo;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 63
    :cond_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/muzk/app/download/DownloadWorker$doWork$2;

    iget-object v1, p0, Lcom/muzk/app/download/DownloadWorker$doWork$2;->this$0:Lcom/muzk/app/download/DownloadWorker;

    invoke-direct {v0, v1, p2}, Lcom/muzk/app/download/DownloadWorker$doWork$2;-><init>(Lcom/muzk/app/download/DownloadWorker;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/muzk/app/download/DownloadWorker$doWork$2;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/muzk/app/download/DownloadWorker$doWork$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroidx/work/ListenableWorker$Result;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/muzk/app/download/DownloadWorker$doWork$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lcom/muzk/app/download/DownloadWorker$doWork$2;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/muzk/app/download/DownloadWorker$doWork$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    move-object/from16 v1, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 41
    iget v0, v1, Lcom/muzk/app/download/DownloadWorker$doWork$2;->label:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x0

    const-string v6, "mp3"

    const/4 v7, 0x0

    const/4 v8, 0x1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    move-object/from16 v2, p1

    .local v2, "$result":Ljava/lang/Object;
    iget-object v0, v1, Lcom/muzk/app/download/DownloadWorker$doWork$2;->L$0:Ljava/lang/Object;

    move-object v9, v0

    check-cast v9, Ljava/io/File;

    .local v9, "workDir":Ljava/io/File;
    :try_start_0
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/yausername/youtubedl_android/YoutubeDL$CanceledException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_4

    .line 82
    :catchall_0
    move-exception v0

    goto/16 :goto_d

    .line 78
    :catch_0
    move-exception v0

    goto/16 :goto_8

    .line 76
    :catch_1
    move-exception v0

    goto/16 :goto_a

    .line 74
    :catch_2
    move-exception v0

    goto/16 :goto_c

    .line 41
    .end local v2    # "$result":Ljava/lang/Object;
    .end local v9    # "workDir":Ljava/io/File;
    :pswitch_1
    move-object/from16 v9, p1

    .local v9, "$result":Ljava/lang/Object;
    iget-object v0, v1, Lcom/muzk/app/download/DownloadWorker$doWork$2;->L$0:Ljava/lang/Object;

    move-object v10, v0

    check-cast v10, Ljava/io/File;

    .local v10, "workDir":Ljava/io/File;
    :try_start_1
    invoke-static {v9}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Lcom/yausername/youtubedl_android/YoutubeDL$CanceledException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_3

    .line 82
    :catchall_1
    move-exception v0

    move-object v2, v9

    move-object v9, v10

    goto/16 :goto_d

    .line 78
    :catch_3
    move-exception v0

    move-object v2, v9

    move-object v9, v10

    goto/16 :goto_8

    .line 76
    :catch_4
    move-exception v0

    move-object v2, v9

    move-object v9, v10

    goto/16 :goto_a

    .line 74
    :catch_5
    move-exception v0

    move-object v2, v9

    move-object v9, v10

    goto/16 :goto_c

    .line 41
    .end local v9    # "$result":Ljava/lang/Object;
    .end local v10    # "workDir":Ljava/io/File;
    :pswitch_2
    move-object/from16 v9, p1

    .restart local v9    # "$result":Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, "$i$a$-runCatching-DownloadWorker$doWork$2$1":I
    :try_start_2
    invoke-static {v9}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 45
    .end local v0    # "$i$a$-runCatching-DownloadWorker$doWork$2$1":I
    :catchall_2
    move-exception v0

    goto :goto_1

    .line 41
    .end local v9    # "$result":Ljava/lang/Object;
    :pswitch_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v9, p1

    .restart local v9    # "$result":Ljava/lang/Object;
    iget-object v0, v1, Lcom/muzk/app/download/DownloadWorker$doWork$2;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    .line 42
    .local v0, "$this$withContext":Lkotlinx/coroutines/CoroutineScope;
    iget-object v10, v1, Lcom/muzk/app/download/DownloadWorker$doWork$2;->this$0:Lcom/muzk/app/download/DownloadWorker;

    invoke-static {v10}, Lcom/muzk/app/download/DownloadWorker;->access$getUrl$p(Lcom/muzk/app/download/DownloadWorker;)Ljava/lang/String;

    move-result-object v10

    check-cast v10, Ljava/lang/CharSequence;

    invoke-static {v10}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-static {}, Landroidx/work/ListenableWorker$Result;->failure()Landroidx/work/ListenableWorker$Result;

    move-result-object v2

    return-object v2

    .line 45
    :cond_0
    iget-object v10, v1, Lcom/muzk/app/download/DownloadWorker$doWork$2;->this$0:Lcom/muzk/app/download/DownloadWorker;

    .end local v0    # "$this$withContext":Lkotlinx/coroutines/CoroutineScope;
    :try_start_3
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 196
    const/4 v0, 0x0

    .line 45
    .local v0, "$i$a$-runCatching-DownloadWorker$doWork$2$1":I
    invoke-virtual {v10}, Lcom/muzk/app/download/DownloadWorker;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    sget v12, Lcom/muzk/app/R$string;->dl_preparing:I

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string v12, "getString(...)"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v12, -0x1

    invoke-static {v10, v12, v11}, Lcom/muzk/app/download/DownloadWorker;->access$foregroundInfo(Lcom/muzk/app/download/DownloadWorker;ILjava/lang/String;)Landroidx/work/ForegroundInfo;

    move-result-object v11

    iput v8, v1, Lcom/muzk/app/download/DownloadWorker$doWork$2;->label:I

    invoke-virtual {v10, v11, v1}, Lcom/muzk/app/download/DownloadWorker;->setForeground(Landroidx/work/ForegroundInfo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v2, :cond_1

    .line 41
    return-object v2

    .line 45
    :cond_1
    :goto_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .end local v0    # "$i$a$-runCatching-DownloadWorker$doWork$2$1":I
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_2

    :goto_1
    sget-object v10, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    :goto_2
    new-instance v0, Ljava/io/File;

    iget-object v10, v1, Lcom/muzk/app/download/DownloadWorker$doWork$2;->this$0:Lcom/muzk/app/download/DownloadWorker;

    invoke-virtual {v10}, Lcom/muzk/app/download/DownloadWorker;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v10

    iget-object v11, v1, Lcom/muzk/app/download/DownloadWorker$doWork$2;->this$0:Lcom/muzk/app/download/DownloadWorker;

    invoke-static {v11}, Lcom/muzk/app/download/DownloadWorker;->access$getProcessId$p(Lcom/muzk/app/download/DownloadWorker;)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "downloads/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v10, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v10, v0

    .line 196
    .local v10, "$this$invokeSuspend_u24lambda_u241":Ljava/io/File;
    const/4 v11, 0x0

    .line 47
    .local v11, "$i$a$-apply-DownloadWorker$doWork$2$workDir$1":I
    invoke-virtual {v10}, Ljava/io/File;->mkdirs()Z

    .line 48
    .end local v11    # "$i$a$-apply-DownloadWorker$doWork$2$workDir$1":I
    .local v10, "workDir":Ljava/io/File;
    nop

    .line 49
    :try_start_4
    sget-object v0, Lcom/muzk/app/MuzkApp;->Companion:Lcom/muzk/app/MuzkApp$Companion;

    invoke-virtual {v0}, Lcom/muzk/app/MuzkApp$Companion;->getYtdlReady()Lkotlinx/coroutines/CompletableDeferred;

    move-result-object v0

    move-object v11, v1

    check-cast v11, Lkotlin/coroutines/Continuation;

    iput-object v10, v1, Lcom/muzk/app/download/DownloadWorker$doWork$2;->L$0:Ljava/lang/Object;

    iput v4, v1, Lcom/muzk/app/download/DownloadWorker$doWork$2;->label:I

    invoke-interface {v0, v11}, Lkotlinx/coroutines/CompletableDeferred;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v2, :cond_2

    .line 41
    return-object v2

    .line 50
    :cond_2
    :goto_3
    iget-object v0, v1, Lcom/muzk/app/download/DownloadWorker$doWork$2;->this$0:Lcom/muzk/app/download/DownloadWorker;

    invoke-virtual {v0}, Lcom/muzk/app/download/DownloadWorker;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 51
    const-string v11, "audio_format"

    invoke-interface {v0, v11, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 50
    if-nez v0, :cond_3

    .line 51
    move-object v0, v6

    .line 50
    :cond_3
    nop

    .line 54
    .local v0, "format":Ljava/lang/String;
    iget-object v11, v1, Lcom/muzk/app/download/DownloadWorker$doWork$2;->this$0:Lcom/muzk/app/download/DownloadWorker;

    new-instance v12, Lcom/muzk/app/download/DownloadWorker$doWork$2$$ExternalSyntheticLambda1;

    invoke-direct {v12, v11, v10, v0}, Lcom/muzk/app/download/DownloadWorker$doWork$2$$ExternalSyntheticLambda1;-><init>(Lcom/muzk/app/download/DownloadWorker;Ljava/io/File;Ljava/lang/String;)V

    move-object v11, v1

    check-cast v11, Lkotlin/coroutines/Continuation;

    iput-object v10, v1, Lcom/muzk/app/download/DownloadWorker$doWork$2;->L$0:Ljava/lang/Object;

    iput v3, v1, Lcom/muzk/app/download/DownloadWorker$doWork$2;->label:I

    invoke-static {v5, v12, v11, v8, v5}, Lkotlinx/coroutines/InterruptibleKt;->runInterruptible$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v11
    :try_end_4
    .catch Ljava/util/concurrent/CancellationException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Lcom/yausername/youtubedl_android/YoutubeDL$CanceledException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .end local v0    # "format":Ljava/lang/String;
    if-ne v11, v2, :cond_4

    .line 41
    return-object v2

    .line 54
    :cond_4
    move-object v2, v9

    move-object v9, v10

    .line 66
    .end local v10    # "workDir":Ljava/io/File;
    .restart local v2    # "$result":Ljava/lang/Object;
    .local v9, "workDir":Ljava/io/File;
    :goto_4
    nop

    .line 68
    nop

    .line 66
    :try_start_5
    invoke-virtual {v9}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 67
    if-eqz v0, :cond_d

    .line 66
    nop

    .line 67
    .local v0, "$this$filter$iv":[Ljava/lang/Object;
    const/4 v10, 0x0

    .line 197
    .local v10, "$i$f$filter":I
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    check-cast v11, Ljava/util/Collection;

    .local v0, "$this$filterTo$iv$iv":[Ljava/lang/Object;
    .local v11, "destination$iv$iv":Ljava/util/Collection;
    const/4 v12, 0x0

    .line 198
    .local v12, "$i$f$filterTo":I
    array-length v13, v0

    move v14, v7

    :goto_5
    if-ge v14, v13, :cond_6

    aget-object v15, v0, v14

    .local v15, "element$iv$iv":Ljava/lang/Object;
    move-object/from16 v16, v15

    .local v16, "it":Ljava/io/File;
    const/16 v17, 0x0

    .line 67
    .local v17, "$i$a$-filter-DownloadWorker$doWork$2$audio$1":I
    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/String;

    aput-object v6, v5, v7

    const-string v18, "m4a"

    aput-object v18, v5, v8

    const-string v18, "opus"

    aput-object v18, v5, v4

    const-string v18, "ogg"

    aput-object v18, v5, v3

    const-string v18, "webm"

    const/16 v19, 0x4

    aput-object v18, v5, v19

    invoke-static {v5}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v5

    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static/range {v16 .. v16}, Lkotlin/io/FilesKt;->getExtension(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "toLowerCase(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v5, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    .line 198
    .end local v16    # "it":Ljava/io/File;
    .end local v17    # "$i$a$-filter-DownloadWorker$doWork$2$audio$1":I
    if-eqz v3, :cond_5

    invoke-interface {v11, v15}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .end local v15    # "element$iv$iv":Ljava/lang/Object;
    :cond_5
    add-int/lit8 v14, v14, 0x1

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x0

    goto :goto_5

    .line 199
    :cond_6
    nop

    .end local v0    # "$this$filterTo$iv$iv":[Ljava/lang/Object;
    .end local v11    # "destination$iv$iv":Ljava/util/Collection;
    .end local v12    # "$i$f$filterTo":I
    move-object v0, v11

    check-cast v0, Ljava/util/List;

    .line 197
    nop

    .line 67
    .end local v10    # "$i$f$filter":I
    nop

    .line 68
    nop

    .line 66
    check-cast v0, Ljava/lang/Iterable;

    .line 68
    .local v0, "$this$maxByOrNull$iv":Ljava/lang/Iterable;
    const/4 v3, 0x0

    .line 200
    .local v3, "$i$f$maxByOrNull":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v0, v4

    .line 201
    .local v0, "iterator$iv":Ljava/util/Iterator;
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_7

    const/4 v5, 0x0

    goto :goto_6

    .line 202
    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    .line 203
    .local v5, "maxElem$iv":Ljava/lang/Object;
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_8

    goto :goto_6

    .line 204
    :cond_8
    move-object v4, v5

    check-cast v4, Ljava/io/File;

    .local v4, "it":Ljava/io/File;
    const/4 v6, 0x0

    .line 68
    .local v6, "$i$a$-maxByOrNull-DownloadWorker$doWork$2$audio$2":I
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v10

    .line 204
    .end local v4    # "it":Ljava/io/File;
    .end local v6    # "$i$a$-maxByOrNull-DownloadWorker$doWork$2$audio$2":I
    nop

    .line 206
    .local v10, "maxValue$iv":J
    :cond_9
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 207
    .local v4, "e$iv":Ljava/lang/Object;
    move-object v6, v4

    check-cast v6, Ljava/io/File;

    .local v6, "it":Ljava/io/File;
    const/4 v12, 0x0

    .line 68
    .local v12, "$i$a$-maxByOrNull-DownloadWorker$doWork$2$audio$2":I
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v13

    .line 207
    .end local v6    # "it":Ljava/io/File;
    .end local v12    # "$i$a$-maxByOrNull-DownloadWorker$doWork$2$audio$2":I
    move-wide v12, v13

    .line 208
    .local v12, "v$iv":J
    cmp-long v6, v10, v12

    if-gez v6, :cond_a

    .line 209
    .end local v5    # "maxElem$iv":Ljava/lang/Object;
    .end local v10    # "maxValue$iv":J
    move-object v5, v4

    .line 210
    .restart local v5    # "maxElem$iv":Ljava/lang/Object;
    move-wide v10, v12

    .line 212
    .end local v4    # "e$iv":Ljava/lang/Object;
    .end local v12    # "v$iv":J
    .restart local v10    # "maxValue$iv":J
    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_9

    .line 213
    nop

    .line 68
    .end local v0    # "iterator$iv":Ljava/util/Iterator;
    .end local v3    # "$i$f$maxByOrNull":I
    .end local v5    # "maxElem$iv":Ljava/lang/Object;
    .end local v10    # "maxValue$iv":J
    :goto_6
    check-cast v5, Ljava/io/File;

    .line 66
    if-eqz v5, :cond_d

    move-object v0, v5

    .line 71
    .local v0, "audio":Ljava/io/File;
    iget-object v3, v1, Lcom/muzk/app/download/DownloadWorker$doWork$2;->this$0:Lcom/muzk/app/download/DownloadWorker;

    invoke-static {v3, v0}, Lcom/muzk/app/download/DownloadWorker;->access$publishToMusic(Lcom/muzk/app/download/DownloadWorker;Ljava/io/File;)V

    .line 72
    iget-object v10, v1, Lcom/muzk/app/download/DownloadWorker$doWork$2;->this$0:Lcom/muzk/app/download/DownloadWorker;

    invoke-static {v0}, Lkotlin/io/FilesKt;->getNameWithoutExtension(Ljava/io/File;)Ljava/lang/String;

    move-result-object v11

    const/4 v14, 0x4

    const/4 v15, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-static/range {v10 .. v15}, Lcom/muzk/app/download/DownloadWorker;->notifyDone$default(Lcom/muzk/app/download/DownloadWorker;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 73
    new-array v3, v8, [Lkotlin/Pair;

    const-string v4, "title"

    iget-object v5, v1, Lcom/muzk/app/download/DownloadWorker$doWork$2;->this$0:Lcom/muzk/app/download/DownloadWorker;

    invoke-static {v5}, Lcom/muzk/app/download/DownloadWorker;->access$getTitle$p(Lcom/muzk/app/download/DownloadWorker;)Ljava/lang/String;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v5}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 196
    const/4 v5, 0x0

    .line 73
    .local v5, "$i$a$-ifBlank-DownloadWorker$doWork$2$3":I
    invoke-static {v0}, Lkotlin/io/FilesKt;->getNameWithoutExtension(Ljava/io/File;)Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    .end local v0    # "audio":Ljava/io/File;
    .end local v5    # "$i$a$-ifBlank-DownloadWorker$doWork$2$3":I
    nop

    :cond_b
    invoke-static {v4, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    aput-object v0, v3, v7

    move-object v0, v3

    .local v0, "pairs$iv":[Lkotlin/Pair;
    const/4 v3, 0x0

    .line 214
    .local v3, "$i$f$workDataOf":I
    new-instance v4, Landroidx/work/Data$Builder;

    invoke-direct {v4}, Landroidx/work/Data$Builder;-><init>()V

    .line 215
    .local v4, "dataBuilder$iv":Landroidx/work/Data$Builder;
    array-length v5, v0

    move v6, v7

    :goto_7
    if-ge v6, v5, :cond_c

    aget-object v10, v0, v6

    .line 216
    .local v10, "pair$iv":Lkotlin/Pair;
    invoke-virtual {v10}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v10}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v4, v11, v12}, Landroidx/work/Data$Builder;->put(Ljava/lang/String;Ljava/lang/Object;)Landroidx/work/Data$Builder;

    .line 215
    nop

    .end local v10    # "pair$iv":Lkotlin/Pair;
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 218
    :cond_c
    invoke-virtual {v4}, Landroidx/work/Data$Builder;->build()Landroidx/work/Data;

    move-result-object v5

    .line 73
    .end local v0    # "pairs$iv":[Lkotlin/Pair;
    .end local v3    # "$i$f$workDataOf":I
    .end local v4    # "dataBuilder$iv":Landroidx/work/Data$Builder;
    invoke-static {v5}, Landroidx/work/ListenableWorker$Result;->success(Landroidx/work/Data;)Landroidx/work/ListenableWorker$Result;

    move-result-object v0

    goto :goto_b

    .line 66
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 69
    const-string v3, "Arquivo de \u00e1udio n\u00e3o encontrado ap\u00f3s o download"

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v2    # "$result":Ljava/lang/Object;
    .end local v9    # "workDir":Ljava/io/File;
    throw v0
    :try_end_5
    .catch Ljava/util/concurrent/CancellationException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lcom/yausername/youtubedl_android/YoutubeDL$CanceledException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 79
    .local v0, "e":Ljava/lang/Exception;
    .restart local v2    # "$result":Ljava/lang/Object;
    .restart local v9    # "workDir":Ljava/io/File;
    :goto_8
    :try_start_6
    iget-object v3, v1, Lcom/muzk/app/download/DownloadWorker$doWork$2;->this$0:Lcom/muzk/app/download/DownloadWorker;

    iget-object v4, v1, Lcom/muzk/app/download/DownloadWorker$doWork$2;->this$0:Lcom/muzk/app/download/DownloadWorker;

    invoke-static {v4}, Lcom/muzk/app/download/DownloadWorker;->access$getTitle$p(Lcom/muzk/app/download/DownloadWorker;)Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    iget-object v5, v1, Lcom/muzk/app/download/DownloadWorker$doWork$2;->this$0:Lcom/muzk/app/download/DownloadWorker;

    invoke-static {v4}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 196
    const/4 v4, 0x0

    .line 79
    .local v4, "$i$a$-ifBlank-DownloadWorker$doWork$2$4":I
    invoke-static {v5}, Lcom/muzk/app/download/DownloadWorker;->access$getUrl$p(Lcom/muzk/app/download/DownloadWorker;)Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    .end local v4    # "$i$a$-ifBlank-DownloadWorker$doWork$2$4":I
    :cond_e
    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v7, v5}, Lcom/muzk/app/download/DownloadWorker;->access$notifyDone(Lcom/muzk/app/download/DownloadWorker;Ljava/lang/String;ZLjava/lang/String;)V

    .line 80
    new-array v3, v8, [Lkotlin/Pair;

    const-string v4, "error"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    .end local v0    # "e":Ljava/lang/Exception;
    if-nez v5, :cond_f

    const-string v5, "erro"

    :cond_f
    invoke-static {v4, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    aput-object v0, v3, v7

    move-object v0, v3

    .local v0, "pairs$iv":[Lkotlin/Pair;
    const/4 v3, 0x0

    .line 219
    .restart local v3    # "$i$f$workDataOf":I
    new-instance v4, Landroidx/work/Data$Builder;

    invoke-direct {v4}, Landroidx/work/Data$Builder;-><init>()V

    .line 220
    .local v4, "dataBuilder$iv":Landroidx/work/Data$Builder;
    array-length v5, v0

    :goto_9
    if-ge v7, v5, :cond_10

    aget-object v6, v0, v7

    .line 221
    .local v6, "pair$iv":Lkotlin/Pair;
    invoke-virtual {v6}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v6}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v4, v8, v10}, Landroidx/work/Data$Builder;->put(Ljava/lang/String;Ljava/lang/Object;)Landroidx/work/Data$Builder;

    .line 220
    nop

    .end local v6    # "pair$iv":Lkotlin/Pair;
    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    .line 223
    :cond_10
    invoke-virtual {v4}, Landroidx/work/Data$Builder;->build()Landroidx/work/Data;

    move-result-object v5

    .line 80
    .end local v0    # "pairs$iv":[Lkotlin/Pair;
    .end local v3    # "$i$f$workDataOf":I
    .end local v4    # "dataBuilder$iv":Landroidx/work/Data$Builder;
    invoke-static {v5}, Landroidx/work/ListenableWorker$Result;->failure(Landroidx/work/Data;)Landroidx/work/ListenableWorker$Result;

    move-result-object v0

    goto :goto_b

    .line 77
    :goto_a
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->failure()Landroidx/work/ListenableWorker$Result;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 82
    :goto_b
    invoke-static {}, Lcom/yausername/youtubedl_android/YoutubeDL;->getInstance()Lcom/yausername/youtubedl_android/YoutubeDL;

    move-result-object v3

    iget-object v4, v1, Lcom/muzk/app/download/DownloadWorker$doWork$2;->this$0:Lcom/muzk/app/download/DownloadWorker;

    invoke-static {v4}, Lcom/muzk/app/download/DownloadWorker;->access$getProcessId$p(Lcom/muzk/app/download/DownloadWorker;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/yausername/youtubedl_android/YoutubeDL;->destroyProcessById(Ljava/lang/String;)Z

    .line 83
    invoke-static {v9}, Lkotlin/io/FilesKt;->deleteRecursively(Ljava/io/File;)Z

    .line 84
    .end local v9    # "workDir":Ljava/io/File;
    return-object v0

    .line 75
    .local v0, "e":Ljava/util/concurrent/CancellationException;
    .restart local v9    # "workDir":Ljava/io/File;
    :goto_c
    nop

    .end local v2    # "$result":Ljava/lang/Object;
    .end local v9    # "workDir":Ljava/io/File;
    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 82
    .end local v0    # "e":Ljava/util/concurrent/CancellationException;
    .restart local v2    # "$result":Ljava/lang/Object;
    .restart local v9    # "workDir":Ljava/io/File;
    :goto_d
    invoke-static {}, Lcom/yausername/youtubedl_android/YoutubeDL;->getInstance()Lcom/yausername/youtubedl_android/YoutubeDL;

    move-result-object v3

    iget-object v4, v1, Lcom/muzk/app/download/DownloadWorker$doWork$2;->this$0:Lcom/muzk/app/download/DownloadWorker;

    invoke-static {v4}, Lcom/muzk/app/download/DownloadWorker;->access$getProcessId$p(Lcom/muzk/app/download/DownloadWorker;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/yausername/youtubedl_android/YoutubeDL;->destroyProcessById(Ljava/lang/String;)Z

    .line 83
    invoke-static {v9}, Lkotlin/io/FilesKt;->deleteRecursively(Ljava/io/File;)Z

    .end local v9    # "workDir":Ljava/io/File;
    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
