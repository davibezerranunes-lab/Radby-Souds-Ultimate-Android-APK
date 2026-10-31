.class public final Landroidx/work/impl/WorkerUpdater;
.super Ljava/lang/Object;
.source "WorkerUpdater.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWorkerUpdater.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WorkerUpdater.kt\nandroidx/work/impl/WorkerUpdater\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,165:1\n1855#2,2:166\n*S KotlinDebug\n*F\n+ 1 WorkerUpdater.kt\nandroidx/work/impl/WorkerUpdater\n*L\n56#1:166,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001aD\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\t2\u0006\u0010\u000b\u001a\u00020\u000c2\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000eH\u0002\u001a\u001c\u0010\u0010\u001a\u00020\u0011*\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u000f2\u0006\u0010\u0014\u001a\u00020\u0015H\u0007\u001a\u001a\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u0016*\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u0015H\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "updateWorkImpl",
        "Landroidx/work/WorkManager$UpdateResult;",
        "processor",
        "Landroidx/work/impl/Processor;",
        "workDatabase",
        "Landroidx/work/impl/WorkDatabase;",
        "configuration",
        "Landroidx/work/Configuration;",
        "schedulers",
        "",
        "Landroidx/work/impl/Scheduler;",
        "newWorkSpec",
        "Landroidx/work/impl/model/WorkSpec;",
        "tags",
        "",
        "",
        "enqueueUniquelyNamedPeriodic",
        "Landroidx/work/Operation;",
        "Landroidx/work/impl/WorkManagerImpl;",
        "name",
        "workRequest",
        "Landroidx/work/WorkRequest;",
        "Lcom/google/common/util/concurrent/ListenableFuture;",
        "work-runtime_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static synthetic $r8$lambda$tVg6EDB7tRl2_Gkh3Gh2mZTMa58(Landroidx/work/impl/WorkDatabase;Landroidx/work/impl/model/WorkSpec;Landroidx/work/impl/model/WorkSpec;Ljava/util/List;Ljava/lang/String;Ljava/util/Set;Z)V
    .locals 0

    invoke-static/range {p0 .. p6}, Landroidx/work/impl/WorkerUpdater;->updateWorkImpl$lambda$2(Landroidx/work/impl/WorkDatabase;Landroidx/work/impl/model/WorkSpec;Landroidx/work/impl/model/WorkSpec;Ljava/util/List;Ljava/lang/String;Ljava/util/Set;Z)V

    return-void
.end method

.method public static final synthetic access$updateWorkImpl(Landroidx/work/impl/Processor;Landroidx/work/impl/WorkDatabase;Landroidx/work/Configuration;Ljava/util/List;Landroidx/work/impl/model/WorkSpec;Ljava/util/Set;)Landroidx/work/WorkManager$UpdateResult;
    .locals 1
    .param p0, "processor"    # Landroidx/work/impl/Processor;
    .param p1, "workDatabase"    # Landroidx/work/impl/WorkDatabase;
    .param p2, "configuration"    # Landroidx/work/Configuration;
    .param p3, "schedulers"    # Ljava/util/List;
    .param p4, "newWorkSpec"    # Landroidx/work/impl/model/WorkSpec;
    .param p5, "tags"    # Ljava/util/Set;

    .line 1
    invoke-static/range {p0 .. p5}, Landroidx/work/impl/WorkerUpdater;->updateWorkImpl(Landroidx/work/impl/Processor;Landroidx/work/impl/WorkDatabase;Landroidx/work/Configuration;Ljava/util/List;Landroidx/work/impl/model/WorkSpec;Ljava/util/Set;)Landroidx/work/WorkManager$UpdateResult;

    move-result-object v0

    return-object v0
.end method

.method public static final enqueueUniquelyNamedPeriodic(Landroidx/work/impl/WorkManagerImpl;Ljava/lang/String;Landroidx/work/WorkRequest;)Landroidx/work/Operation;
    .locals 4
    .param p0, "$this$enqueueUniquelyNamedPeriodic"    # Landroidx/work/impl/WorkManagerImpl;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "workRequest"    # Landroidx/work/WorkRequest;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "workRequest"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0}, Landroidx/work/impl/WorkManagerImpl;->getConfiguration()Landroidx/work/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/work/Configuration;->getTracer()Landroidx/work/Tracer;

    move-result-object v0

    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enqueueUniquePeriodic_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 120
    invoke-virtual {p0}, Landroidx/work/impl/WorkManagerImpl;->getWorkTaskExecutor()Landroidx/work/impl/utils/taskexecutor/TaskExecutor;

    move-result-object v2

    invoke-interface {v2}, Landroidx/work/impl/utils/taskexecutor/TaskExecutor;->getSerialTaskExecutor()Landroidx/work/impl/utils/taskexecutor/SerialExecutor;

    move-result-object v2

    const-string v3, "workTaskExecutor.serialTaskExecutor"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/util/concurrent/Executor;

    .line 117
    new-instance v3, Landroidx/work/impl/WorkerUpdater$enqueueUniquelyNamedPeriodic$1;

    invoke-direct {v3, p0, p1, p2}, Landroidx/work/impl/WorkerUpdater$enqueueUniquelyNamedPeriodic$1;-><init>(Landroidx/work/impl/WorkManagerImpl;Ljava/lang/String;Landroidx/work/WorkRequest;)V

    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1, v2, v3}, Landroidx/work/OperationKt;->launchOperation(Landroidx/work/Tracer;Ljava/lang/String;Ljava/util/concurrent/Executor;Lkotlin/jvm/functions/Function0;)Landroidx/work/Operation;

    move-result-object v0

    .line 164
    return-object v0
.end method

.method private static final updateWorkImpl(Landroidx/work/impl/Processor;Landroidx/work/impl/WorkDatabase;Landroidx/work/Configuration;Ljava/util/List;Landroidx/work/impl/model/WorkSpec;Ljava/util/Set;)Landroidx/work/WorkManager$UpdateResult;
    .locals 16
    .param p0, "processor"    # Landroidx/work/impl/Processor;
    .param p1, "workDatabase"    # Landroidx/work/impl/WorkDatabase;
    .param p2, "configuration"    # Landroidx/work/Configuration;
    .param p3, "schedulers"    # Ljava/util/List;
    .param p4, "newWorkSpec"    # Landroidx/work/impl/model/WorkSpec;
    .param p5, "tags"    # Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/work/impl/Processor;",
            "Landroidx/work/impl/WorkDatabase;",
            "Landroidx/work/Configuration;",
            "Ljava/util/List<",
            "+",
            "Landroidx/work/impl/Scheduler;",
            ">;",
            "Landroidx/work/impl/model/WorkSpec;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Landroidx/work/WorkManager$UpdateResult;"
        }
    .end annotation

    .line 43
    move-object/from16 v8, p1

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    iget-object v11, v10, Landroidx/work/impl/model/WorkSpec;->id:Ljava/lang/String;

    .line 45
    .local v11, "workSpecId":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroidx/work/impl/WorkDatabase;->workSpecDao()Landroidx/work/impl/model/WorkSpecDao;

    move-result-object v0

    invoke-interface {v0, v11}, Landroidx/work/impl/model/WorkSpecDao;->getWorkSpec(Ljava/lang/String;)Landroidx/work/impl/model/WorkSpec;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 44
    move-object v12, v0

    .line 47
    .local v12, "oldWorkSpec":Landroidx/work/impl/model/WorkSpec;
    iget-object v0, v12, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/WorkInfo$State;

    invoke-virtual {v0}, Landroidx/work/WorkInfo$State;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroidx/work/WorkManager$UpdateResult;->NOT_APPLIED:Landroidx/work/WorkManager$UpdateResult;

    return-object v0

    .line 48
    :cond_0
    invoke-virtual {v12}, Landroidx/work/impl/model/WorkSpec;->isPeriodic()Z

    move-result v0

    invoke-virtual/range {p4 .. p4}, Landroidx/work/impl/model/WorkSpec;->isPeriodic()Z

    move-result v1

    xor-int/2addr v0, v1

    if-nez v0, :cond_5

    .line 55
    move-object/from16 v13, p0

    invoke-virtual {v13, v11}, Landroidx/work/impl/Processor;->isEnqueued(Ljava/lang/String;)Z

    move-result v14

    .line 56
    .local v14, "isEnqueued":Z
    if-nez v14, :cond_2

    move-object v0, v9

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 166
    .local v1, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "element$iv":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Landroidx/work/impl/Scheduler;

    .local v4, "scheduler":Landroidx/work/impl/Scheduler;
    const/4 v5, 0x0

    .line 56
    .local v5, "$i$a$-forEach-WorkerUpdater$updateWorkImpl$1":I
    invoke-interface {v4, v11}, Landroidx/work/impl/Scheduler;->cancel(Ljava/lang/String;)V

    .line 166
    .end local v4    # "scheduler":Landroidx/work/impl/Scheduler;
    .end local v5    # "$i$a$-forEach-WorkerUpdater$updateWorkImpl$1":I
    nop

    .end local v3    # "element$iv":Ljava/lang/Object;
    goto :goto_0

    .line 167
    :cond_1
    nop

    .line 57
    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$forEach":I
    :cond_2
    new-instance v15, Landroidx/work/impl/WorkerUpdater$$ExternalSyntheticLambda0;

    move-object v0, v15

    move-object/from16 v1, p1

    move-object v2, v12

    move-object/from16 v3, p4

    move-object/from16 v4, p3

    move-object v5, v11

    move-object/from16 v6, p5

    move v7, v14

    invoke-direct/range {v0 .. v7}, Landroidx/work/impl/WorkerUpdater$$ExternalSyntheticLambda0;-><init>(Landroidx/work/impl/WorkDatabase;Landroidx/work/impl/model/WorkSpec;Landroidx/work/impl/model/WorkSpec;Ljava/util/List;Ljava/lang/String;Ljava/util/Set;Z)V

    invoke-virtual {v8, v15}, Landroidx/work/impl/WorkDatabase;->runInTransaction(Ljava/lang/Runnable;)V

    .line 92
    if-nez v14, :cond_3

    move-object/from16 v0, p2

    invoke-static {v0, v8, v9}, Landroidx/work/impl/Schedulers;->schedule(Landroidx/work/Configuration;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    goto :goto_1

    :cond_3
    move-object/from16 v0, p2

    .line 93
    :goto_1
    if-eqz v14, :cond_4

    sget-object v1, Landroidx/work/WorkManager$UpdateResult;->APPLIED_FOR_NEXT_RUN:Landroidx/work/WorkManager$UpdateResult;

    goto :goto_2

    :cond_4
    sget-object v1, Landroidx/work/WorkManager$UpdateResult;->APPLIED_IMMEDIATELY:Landroidx/work/WorkManager$UpdateResult;

    :goto_2
    return-object v1

    .line 49
    .end local v14    # "isEnqueued":Z
    :cond_5
    move-object/from16 v13, p0

    move-object/from16 v0, p2

    sget-object v1, Landroidx/work/impl/WorkerUpdater$updateWorkImpl$type$1;->INSTANCE:Landroidx/work/impl/WorkerUpdater$updateWorkImpl$type$1;

    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 50
    .local v1, "type":Lkotlin/jvm/functions/Function1;
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    .line 51
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t update "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1, v12}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Worker to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1, v10}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Worker. Update operation must preserve worker\'s type."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 50
    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 46
    .end local v1    # "type":Lkotlin/jvm/functions/Function1;
    .end local v12    # "oldWorkSpec":Landroidx/work/impl/model/WorkSpec;
    :cond_6
    move-object/from16 v13, p0

    move-object/from16 v0, p2

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Worker with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " doesn\'t exist"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static final updateWorkImpl(Landroidx/work/impl/WorkManagerImpl;Landroidx/work/WorkRequest;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .param p0, "$this$updateWorkImpl"    # Landroidx/work/impl/WorkManagerImpl;
    .param p1, "workRequest"    # Landroidx/work/WorkRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/work/impl/WorkManagerImpl;",
            "Landroidx/work/WorkRequest;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/work/WorkManager$UpdateResult;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "workRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Landroidx/work/impl/WorkManagerImpl;->getWorkTaskExecutor()Landroidx/work/impl/utils/taskexecutor/TaskExecutor;

    move-result-object v0

    invoke-interface {v0}, Landroidx/work/impl/utils/taskexecutor/TaskExecutor;->getSerialTaskExecutor()Landroidx/work/impl/utils/taskexecutor/SerialExecutor;

    move-result-object v0

    const-string v1, "workTaskExecutor.serialTaskExecutor"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/work/impl/WorkerUpdater$updateWorkImpl$3;

    invoke-direct {v1, p0, p1}, Landroidx/work/impl/WorkerUpdater$updateWorkImpl$3;-><init>(Landroidx/work/impl/WorkManagerImpl;Landroidx/work/WorkRequest;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    const-string v2, "updateWorkImpl"

    invoke-static {v0, v2, v1}, Landroidx/work/ListenableFutureKt;->executeAsync(Ljava/util/concurrent/Executor;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method private static final updateWorkImpl$lambda$2(Landroidx/work/impl/WorkDatabase;Landroidx/work/impl/model/WorkSpec;Landroidx/work/impl/model/WorkSpec;Ljava/util/List;Ljava/lang/String;Ljava/util/Set;Z)V
    .locals 39
    .param p0, "$workDatabase"    # Landroidx/work/impl/WorkDatabase;
    .param p1, "$oldWorkSpec"    # Landroidx/work/impl/model/WorkSpec;
    .param p2, "$newWorkSpec"    # Landroidx/work/impl/model/WorkSpec;
    .param p3, "$schedulers"    # Ljava/util/List;
    .param p4, "$workSpecId"    # Ljava/lang/String;
    .param p5, "$tags"    # Ljava/util/Set;
    .param p6, "$isEnqueued"    # Z

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-object/from16 v2, p2

    .line 58
    invoke-virtual/range {p0 .. p0}, Landroidx/work/impl/WorkDatabase;->workSpecDao()Landroidx/work/impl/model/WorkSpecDao;

    move-result-object v15

    .line 59
    .local v15, "workSpecDao":Landroidx/work/impl/model/WorkSpecDao;
    invoke-virtual/range {p0 .. p0}, Landroidx/work/impl/WorkDatabase;->workTagDao()Landroidx/work/impl/model/WorkTagDao;

    move-result-object v13

    .line 66
    .local v13, "workTagDao":Landroidx/work/impl/model/WorkTagDao;
    iget-object v4, v0, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/WorkInfo$State;

    .line 67
    iget v3, v0, Landroidx/work/impl/model/WorkSpec;->runAttemptCount:I

    move/from16 v16, v3

    .line 68
    iget-wide v5, v0, Landroidx/work/impl/model/WorkSpec;->lastEnqueueTime:J

    move-wide/from16 v20, v5

    .line 69
    invoke-virtual/range {p1 .. p1}, Landroidx/work/impl/model/WorkSpec;->getGeneration()I

    move-result v3

    const/4 v14, 0x1

    add-int/lit8 v29, v3, 0x1

    .line 70
    invoke-virtual/range {p1 .. p1}, Landroidx/work/impl/model/WorkSpec;->getPeriodCount()I

    move-result v28

    .line 71
    invoke-virtual/range {p1 .. p1}, Landroidx/work/impl/model/WorkSpec;->getNextScheduleTimeOverride()J

    move-result-wide v30

    .line 73
    invoke-virtual/range {p1 .. p1}, Landroidx/work/impl/model/WorkSpec;->getNextScheduleTimeOverrideGeneration()I

    move-result v32

    .line 64
    nop

    .line 65
    nop

    .line 66
    nop

    .line 65
    nop

    .line 67
    nop

    .line 65
    nop

    .line 68
    nop

    .line 65
    nop

    .line 70
    nop

    .line 69
    nop

    .line 71
    nop

    .line 73
    nop

    .line 65
    const v35, 0xc3dbfd

    const/16 v36, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v17, 0x0

    move-object/from16 v37, v13

    .end local v13    # "workTagDao":Landroidx/work/impl/model/WorkTagDao;
    .local v37, "workTagDao":Landroidx/work/impl/model/WorkTagDao;
    move-wide/from16 v13, v17

    const/16 v17, 0x0

    move-object/from16 v38, v15

    .end local v15    # "workSpecDao":Landroidx/work/impl/model/WorkSpecDao;
    .local v38, "workSpecDao":Landroidx/work/impl/model/WorkSpecDao;
    move-object/from16 v15, v17

    const-wide/16 v18, 0x0

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    invoke-static/range {v2 .. v36}, Landroidx/work/impl/model/WorkSpec;->copy$default(Landroidx/work/impl/model/WorkSpec;Ljava/lang/String;Landroidx/work/WorkInfo$State;Ljava/lang/String;Ljava/lang/String;Landroidx/work/Data;Landroidx/work/Data;JJJLandroidx/work/Constraints;ILandroidx/work/BackoffPolicy;JJJJZLandroidx/work/OutOfQuotaPolicy;IIJIILjava/lang/String;ILjava/lang/Object;)Landroidx/work/impl/model/WorkSpec;

    move-result-object v2

    .line 75
    move-object v3, v2

    .local v3, "$this$updateWorkImpl_u24lambda_u242_u24lambda_u241":Landroidx/work/impl/model/WorkSpec;
    const/4 v4, 0x0

    .line 76
    .local v4, "$i$a$-apply-WorkerUpdater$updateWorkImpl$2$updatedSpec$1":I
    invoke-virtual/range {p2 .. p2}, Landroidx/work/impl/model/WorkSpec;->getNextScheduleTimeOverrideGeneration()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 77
    invoke-virtual/range {p2 .. p2}, Landroidx/work/impl/model/WorkSpec;->getNextScheduleTimeOverride()J

    move-result-wide v7

    invoke-virtual {v3, v7, v8}, Landroidx/work/impl/model/WorkSpec;->setNextScheduleTimeOverride(J)V

    .line 78
    invoke-virtual {v3}, Landroidx/work/impl/model/WorkSpec;->getNextScheduleTimeOverrideGeneration()I

    move-result v5

    add-int/2addr v5, v6

    invoke-virtual {v3, v5}, Landroidx/work/impl/model/WorkSpec;->setNextScheduleTimeOverrideGeneration(I)V

    .line 82
    :cond_0
    nop

    .line 75
    .end local v3    # "$this$updateWorkImpl_u24lambda_u242_u24lambda_u241":Landroidx/work/impl/model/WorkSpec;
    .end local v4    # "$i$a$-apply-WorkerUpdater$updateWorkImpl$2$updatedSpec$1":I
    nop

    .line 63
    nop

    .line 84
    .local v2, "updatedSpec":Landroidx/work/impl/model/WorkSpec;
    move-object/from16 v3, p3

    invoke-static {v3, v2}, Landroidx/work/impl/utils/EnqueueUtilsKt;->wrapWorkSpecIfNeeded(Ljava/util/List;Landroidx/work/impl/model/WorkSpec;)Landroidx/work/impl/model/WorkSpec;

    move-result-object v4

    move-object/from16 v5, v38

    .end local v38    # "workSpecDao":Landroidx/work/impl/model/WorkSpecDao;
    .local v5, "workSpecDao":Landroidx/work/impl/model/WorkSpecDao;
    invoke-interface {v5, v4}, Landroidx/work/impl/model/WorkSpecDao;->updateWorkSpec(Landroidx/work/impl/model/WorkSpec;)V

    .line 85
    move-object/from16 v4, v37

    .end local v37    # "workTagDao":Landroidx/work/impl/model/WorkTagDao;
    .local v4, "workTagDao":Landroidx/work/impl/model/WorkTagDao;
    invoke-interface {v4, v1}, Landroidx/work/impl/model/WorkTagDao;->deleteByWorkSpecId(Ljava/lang/String;)V

    .line 86
    move-object/from16 v6, p5

    invoke-interface {v4, v1, v6}, Landroidx/work/impl/model/WorkTagDao;->insertTags(Ljava/lang/String;Ljava/util/Set;)V

    .line 87
    if-nez p6, :cond_1

    .line 88
    const-wide/16 v7, -0x1

    invoke-interface {v5, v1, v7, v8}, Landroidx/work/impl/model/WorkSpecDao;->markWorkSpecScheduled(Ljava/lang/String;J)I

    .line 89
    invoke-virtual/range {p0 .. p0}, Landroidx/work/impl/WorkDatabase;->workProgressDao()Landroidx/work/impl/model/WorkProgressDao;

    move-result-object v7

    invoke-interface {v7, v1}, Landroidx/work/impl/model/WorkProgressDao;->delete(Ljava/lang/String;)V

    .line 91
    :cond_1
    return-void
.end method
