.class Landroidx/work/impl/model/RawWorkInfoDao_Impl$2;
.super Ljava/lang/Object;
.source "RawWorkInfoDao_Impl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/work/impl/model/RawWorkInfoDao_Impl;->getWorkInfoPojosFlow(Landroidx/sqlite/db/SupportSQLiteQuery;)Lkotlinx/coroutines/flow/Flow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/util/List<",
        "Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/work/impl/model/RawWorkInfoDao_Impl;

.field final synthetic val$query:Landroidx/sqlite/db/SupportSQLiteQuery;


# direct methods
.method constructor <init>(Landroidx/work/impl/model/RawWorkInfoDao_Impl;Landroidx/sqlite/db/SupportSQLiteQuery;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/work/impl/model/RawWorkInfoDao_Impl;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$query"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 506
    iput-object p1, p0, Landroidx/work/impl/model/RawWorkInfoDao_Impl$2;->this$0:Landroidx/work/impl/model/RawWorkInfoDao_Impl;

    iput-object p2, p0, Landroidx/work/impl/model/RawWorkInfoDao_Impl$2;->val$query:Landroidx/sqlite/db/SupportSQLiteQuery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 506
    invoke-virtual {p0}, Landroidx/work/impl/model/RawWorkInfoDao_Impl$2;->call()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/List;
    .locals 85
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 510
    move-object/from16 v1, p0

    iget-object v0, v1, Landroidx/work/impl/model/RawWorkInfoDao_Impl$2;->this$0:Landroidx/work/impl/model/RawWorkInfoDao_Impl;

    invoke-static {v0}, Landroidx/work/impl/model/RawWorkInfoDao_Impl;->access$000(Landroidx/work/impl/model/RawWorkInfoDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v0

    iget-object v2, v1, Landroidx/work/impl/model/RawWorkInfoDao_Impl$2;->val$query:Landroidx/sqlite/db/SupportSQLiteQuery;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v0, v2, v4, v3}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    .line 512
    .local v2, "_cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v0, "id"

    invoke-static {v2, v0}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    .line 513
    .local v0, "_cursorIndexOfId":I
    const-string v3, "state"

    invoke-static {v2, v3}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    .line 514
    .local v3, "_cursorIndexOfState":I
    const-string v5, "output"

    invoke-static {v2, v5}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    .line 515
    .local v5, "_cursorIndexOfOutput":I
    const-string v6, "initial_delay"

    invoke-static {v2, v6}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    .line 516
    .local v6, "_cursorIndexOfInitialDelay":I
    const-string v7, "interval_duration"

    invoke-static {v2, v7}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    .line 517
    .local v7, "_cursorIndexOfIntervalDuration":I
    const-string v8, "flex_duration"

    invoke-static {v2, v8}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    .line 518
    .local v8, "_cursorIndexOfFlexDuration":I
    const-string v9, "run_attempt_count"

    invoke-static {v2, v9}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    .line 519
    .local v9, "_cursorIndexOfRunAttemptCount":I
    const-string v10, "backoff_policy"

    invoke-static {v2, v10}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    .line 520
    .local v10, "_cursorIndexOfBackoffPolicy":I
    const-string v11, "backoff_delay_duration"

    invoke-static {v2, v11}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    .line 521
    .local v11, "_cursorIndexOfBackoffDelayDuration":I
    const-string v12, "last_enqueue_time"

    invoke-static {v2, v12}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    .line 522
    .local v12, "_cursorIndexOfLastEnqueueTime":I
    const-string v13, "period_count"

    invoke-static {v2, v13}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    .line 523
    .local v13, "_cursorIndexOfPeriodCount":I
    const-string v14, "generation"

    invoke-static {v2, v14}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    .line 524
    .local v14, "_cursorIndexOfGeneration":I
    const-string v15, "next_schedule_time_override"

    invoke-static {v2, v15}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    .line 525
    .local v15, "_cursorIndexOfNextScheduleTimeOverride":I
    const-string v4, "stop_reason"

    invoke-static {v2, v4}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 526
    .local v4, "_cursorIndexOfStopReason":I
    move/from16 v16, v4

    .end local v4    # "_cursorIndexOfStopReason":I
    .local v16, "_cursorIndexOfStopReason":I
    const-string v4, "required_network_type"

    invoke-static {v2, v4}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 527
    .local v4, "_cursorIndexOfRequiredNetworkType":I
    move/from16 v17, v4

    .end local v4    # "_cursorIndexOfRequiredNetworkType":I
    .local v17, "_cursorIndexOfRequiredNetworkType":I
    const-string v4, "required_network_request"

    invoke-static {v2, v4}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 528
    .local v4, "_cursorIndexOfRequiredNetworkRequestCompat":I
    move/from16 v18, v4

    .end local v4    # "_cursorIndexOfRequiredNetworkRequestCompat":I
    .local v18, "_cursorIndexOfRequiredNetworkRequestCompat":I
    const-string v4, "requires_charging"

    invoke-static {v2, v4}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 529
    .local v4, "_cursorIndexOfRequiresCharging":I
    move/from16 v19, v4

    .end local v4    # "_cursorIndexOfRequiresCharging":I
    .local v19, "_cursorIndexOfRequiresCharging":I
    const-string v4, "requires_device_idle"

    invoke-static {v2, v4}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 530
    .local v4, "_cursorIndexOfRequiresDeviceIdle":I
    move/from16 v20, v4

    .end local v4    # "_cursorIndexOfRequiresDeviceIdle":I
    .local v20, "_cursorIndexOfRequiresDeviceIdle":I
    const-string v4, "requires_battery_not_low"

    invoke-static {v2, v4}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 531
    .local v4, "_cursorIndexOfRequiresBatteryNotLow":I
    move/from16 v21, v4

    .end local v4    # "_cursorIndexOfRequiresBatteryNotLow":I
    .local v21, "_cursorIndexOfRequiresBatteryNotLow":I
    const-string v4, "requires_storage_not_low"

    invoke-static {v2, v4}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 532
    .local v4, "_cursorIndexOfRequiresStorageNotLow":I
    move/from16 v22, v4

    .end local v4    # "_cursorIndexOfRequiresStorageNotLow":I
    .local v22, "_cursorIndexOfRequiresStorageNotLow":I
    const-string v4, "trigger_content_update_delay"

    invoke-static {v2, v4}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 533
    .local v4, "_cursorIndexOfContentTriggerUpdateDelayMillis":I
    move/from16 v23, v4

    .end local v4    # "_cursorIndexOfContentTriggerUpdateDelayMillis":I
    .local v23, "_cursorIndexOfContentTriggerUpdateDelayMillis":I
    const-string v4, "trigger_max_content_delay"

    invoke-static {v2, v4}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 534
    .local v4, "_cursorIndexOfContentTriggerMaxDelayMillis":I
    move/from16 v24, v4

    .end local v4    # "_cursorIndexOfContentTriggerMaxDelayMillis":I
    .local v24, "_cursorIndexOfContentTriggerMaxDelayMillis":I
    const-string v4, "content_uri_triggers"

    invoke-static {v2, v4}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 535
    .local v4, "_cursorIndexOfContentUriTriggers":I
    new-instance v25, Ljava/util/HashMap;

    invoke-direct/range {v25 .. v25}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v26, v25

    .line 536
    .local v26, "_collectionTags":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    new-instance v25, Ljava/util/HashMap;

    invoke-direct/range {v25 .. v25}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v27, v25

    .line 537
    .local v27, "_collectionProgress":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Landroidx/work/Data;>;>;"
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v25

    if-eqz v25, :cond_2

    .line 539
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v28, v25

    .line 540
    .local v28, "_tmpKey":Ljava/lang/String;
    move/from16 v25, v4

    move-object/from16 v4, v26

    move/from16 v26, v15

    move-object/from16 v15, v28

    .end local v28    # "_tmpKey":Ljava/lang/String;
    .local v4, "_collectionTags":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .local v15, "_tmpKey":Ljava/lang/String;
    .local v25, "_cursorIndexOfContentUriTriggers":I
    .local v26, "_cursorIndexOfNextScheduleTimeOverride":I
    invoke-virtual {v4, v15}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_0

    .line 541
    move/from16 v28, v14

    .end local v14    # "_cursorIndexOfGeneration":I
    .local v28, "_cursorIndexOfGeneration":I
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4, v15, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 540
    .end local v28    # "_cursorIndexOfGeneration":I
    .restart local v14    # "_cursorIndexOfGeneration":I
    :cond_0
    move/from16 v28, v14

    .line 544
    .end local v14    # "_cursorIndexOfGeneration":I
    .restart local v28    # "_cursorIndexOfGeneration":I
    :goto_1
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 545
    .local v14, "_tmpKey_1":Ljava/lang/String;
    move-object/from16 v29, v15

    move-object/from16 v15, v27

    .end local v27    # "_collectionProgress":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Landroidx/work/Data;>;>;"
    .local v15, "_collectionProgress":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Landroidx/work/Data;>;>;"
    .local v29, "_tmpKey":Ljava/lang/String;
    invoke-virtual {v15, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_1

    .line 546
    move/from16 v27, v13

    .end local v13    # "_cursorIndexOfPeriodCount":I
    .local v27, "_cursorIndexOfPeriodCount":I
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v15, v14, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 545
    .end local v27    # "_cursorIndexOfPeriodCount":I
    .restart local v13    # "_cursorIndexOfPeriodCount":I
    :cond_1
    move/from16 v27, v13

    .line 548
    .end local v13    # "_cursorIndexOfPeriodCount":I
    .end local v14    # "_tmpKey_1":Ljava/lang/String;
    .end local v29    # "_tmpKey":Ljava/lang/String;
    .restart local v27    # "_cursorIndexOfPeriodCount":I
    :goto_2
    move/from16 v13, v27

    move/from16 v14, v28

    move-object/from16 v27, v15

    move/from16 v15, v26

    move-object/from16 v26, v4

    move/from16 v4, v25

    goto :goto_0

    .line 549
    .end local v25    # "_cursorIndexOfContentUriTriggers":I
    .end local v28    # "_cursorIndexOfGeneration":I
    .local v4, "_cursorIndexOfContentUriTriggers":I
    .restart local v13    # "_cursorIndexOfPeriodCount":I
    .local v14, "_cursorIndexOfGeneration":I
    .local v15, "_cursorIndexOfNextScheduleTimeOverride":I
    .local v26, "_collectionTags":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .local v27, "_collectionProgress":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Landroidx/work/Data;>;>;"
    :cond_2
    move/from16 v25, v4

    move/from16 v28, v14

    move-object/from16 v4, v26

    move/from16 v26, v15

    move-object/from16 v15, v27

    move/from16 v27, v13

    .end local v13    # "_cursorIndexOfPeriodCount":I
    .end local v14    # "_cursorIndexOfGeneration":I
    .local v4, "_collectionTags":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .local v15, "_collectionProgress":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Landroidx/work/Data;>;>;"
    .restart local v25    # "_cursorIndexOfContentUriTriggers":I
    .local v26, "_cursorIndexOfNextScheduleTimeOverride":I
    .local v27, "_cursorIndexOfPeriodCount":I
    .restart local v28    # "_cursorIndexOfGeneration":I
    const/4 v13, -0x1

    invoke-interface {v2, v13}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 550
    iget-object v14, v1, Landroidx/work/impl/model/RawWorkInfoDao_Impl$2;->this$0:Landroidx/work/impl/model/RawWorkInfoDao_Impl;

    invoke-static {v14, v4}, Landroidx/work/impl/model/RawWorkInfoDao_Impl;->access$100(Landroidx/work/impl/model/RawWorkInfoDao_Impl;Ljava/util/HashMap;)V

    .line 551
    iget-object v14, v1, Landroidx/work/impl/model/RawWorkInfoDao_Impl$2;->this$0:Landroidx/work/impl/model/RawWorkInfoDao_Impl;

    invoke-static {v14, v15}, Landroidx/work/impl/model/RawWorkInfoDao_Impl;->access$200(Landroidx/work/impl/model/RawWorkInfoDao_Impl;Ljava/util/HashMap;)V

    .line 552
    new-instance v14, Ljava/util/ArrayList;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v13

    invoke-direct {v14, v13}, Ljava/util/ArrayList;-><init>(I)V

    move-object v13, v14

    .line 553
    .local v13, "_result":Ljava/util/List;, "Ljava/util/List<Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;>;"
    :goto_3
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v14

    if-eqz v14, :cond_1e

    .line 556
    const/4 v14, -0x1

    if-ne v0, v14, :cond_3

    .line 557
    const/16 v29, 0x0

    move-object/from16 v54, v29

    .local v29, "_tmpId":Ljava/lang/String;
    goto :goto_4

    .line 559
    .end local v29    # "_tmpId":Ljava/lang/String;
    :cond_3
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v54, v29

    .line 562
    .local v54, "_tmpId":Ljava/lang/String;
    :goto_4
    if-ne v3, v14, :cond_4

    .line 563
    const/4 v14, 0x0

    .local v14, "_tmpState":Landroidx/work/WorkInfo$State;
    goto :goto_5

    .line 566
    .end local v14    # "_tmpState":Landroidx/work/WorkInfo$State;
    :cond_4
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 567
    .local v14, "_tmp":I
    sget-object v30, Landroidx/work/impl/model/WorkTypeConverters;->INSTANCE:Landroidx/work/impl/model/WorkTypeConverters;

    invoke-static {v14}, Landroidx/work/impl/model/WorkTypeConverters;->intToState(I)Landroidx/work/WorkInfo$State;

    move-result-object v30

    move-object/from16 v14, v30

    .line 570
    .local v14, "_tmpState":Landroidx/work/WorkInfo$State;
    :goto_5
    const/4 v1, -0x1

    if-ne v5, v1, :cond_5

    .line 571
    const/4 v1, 0x0

    .local v1, "_tmpOutput":Landroidx/work/Data;
    goto :goto_6

    .line 574
    .end local v1    # "_tmpOutput":Landroidx/work/Data;
    :cond_5
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    .line 575
    .local v1, "_tmp_1":[B
    invoke-static {v1}, Landroidx/work/Data;->fromByteArray([B)Landroidx/work/Data;

    move-result-object v30

    move-object/from16 v1, v30

    .line 578
    .local v1, "_tmpOutput":Landroidx/work/Data;
    :goto_6
    move/from16 v55, v3

    const/4 v3, -0x1

    .end local v3    # "_cursorIndexOfState":I
    .local v55, "_cursorIndexOfState":I
    if-ne v6, v3, :cond_6

    .line 579
    const-wide/16 v29, 0x0

    move-wide/from16 v56, v29

    .local v29, "_tmpInitialDelay":J
    goto :goto_7

    .line 581
    .end local v29    # "_tmpInitialDelay":J
    :cond_6
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v29

    move-wide/from16 v56, v29

    .line 584
    .local v56, "_tmpInitialDelay":J
    :goto_7
    if-ne v7, v3, :cond_7

    .line 585
    const-wide/16 v29, 0x0

    move-wide/from16 v58, v29

    .local v29, "_tmpIntervalDuration":J
    goto :goto_8

    .line 587
    .end local v29    # "_tmpIntervalDuration":J
    :cond_7
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v29

    move-wide/from16 v58, v29

    .line 590
    .local v58, "_tmpIntervalDuration":J
    :goto_8
    if-ne v8, v3, :cond_8

    .line 591
    const-wide/16 v29, 0x0

    move-wide/from16 v60, v29

    .local v29, "_tmpFlexDuration":J
    goto :goto_9

    .line 593
    .end local v29    # "_tmpFlexDuration":J
    :cond_8
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v29

    move-wide/from16 v60, v29

    .line 596
    .local v60, "_tmpFlexDuration":J
    :goto_9
    if-ne v9, v3, :cond_9

    .line 597
    const/16 v29, 0x0

    move/from16 v62, v29

    .local v29, "_tmpRunAttemptCount":I
    goto :goto_a

    .line 599
    .end local v29    # "_tmpRunAttemptCount":I
    :cond_9
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    move/from16 v62, v29

    .line 602
    .local v62, "_tmpRunAttemptCount":I
    :goto_a
    if-ne v10, v3, :cond_a

    .line 603
    const/4 v3, 0x0

    .local v3, "_tmpBackoffPolicy":Landroidx/work/BackoffPolicy;
    goto :goto_b

    .line 606
    .end local v3    # "_tmpBackoffPolicy":Landroidx/work/BackoffPolicy;
    :cond_a
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 607
    .local v3, "_tmp_2":I
    sget-object v30, Landroidx/work/impl/model/WorkTypeConverters;->INSTANCE:Landroidx/work/impl/model/WorkTypeConverters;

    invoke-static {v3}, Landroidx/work/impl/model/WorkTypeConverters;->intToBackoffPolicy(I)Landroidx/work/BackoffPolicy;

    move-result-object v30

    move-object/from16 v3, v30

    .line 610
    .local v3, "_tmpBackoffPolicy":Landroidx/work/BackoffPolicy;
    :goto_b
    move/from16 v63, v5

    const/4 v5, -0x1

    .end local v5    # "_cursorIndexOfOutput":I
    .local v63, "_cursorIndexOfOutput":I
    if-ne v11, v5, :cond_b

    .line 611
    const-wide/16 v29, 0x0

    move-wide/from16 v64, v29

    .local v29, "_tmpBackoffDelayDuration":J
    goto :goto_c

    .line 613
    .end local v29    # "_tmpBackoffDelayDuration":J
    :cond_b
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v29

    move-wide/from16 v64, v29

    .line 616
    .local v64, "_tmpBackoffDelayDuration":J
    :goto_c
    if-ne v12, v5, :cond_c

    .line 617
    const-wide/16 v29, 0x0

    move-wide/from16 v66, v29

    .local v29, "_tmpLastEnqueueTime":J
    goto :goto_d

    .line 619
    .end local v29    # "_tmpLastEnqueueTime":J
    :cond_c
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v29

    move-wide/from16 v66, v29

    .line 622
    .local v66, "_tmpLastEnqueueTime":J
    :goto_d
    move/from16 v68, v6

    move/from16 v6, v27

    .end local v27    # "_cursorIndexOfPeriodCount":I
    .local v6, "_cursorIndexOfPeriodCount":I
    .local v68, "_cursorIndexOfInitialDelay":I
    if-ne v6, v5, :cond_d

    .line 623
    const/16 v27, 0x0

    .local v27, "_tmpPeriodCount":I
    goto :goto_e

    .line 625
    .end local v27    # "_tmpPeriodCount":I
    :cond_d
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    .line 628
    .restart local v27    # "_tmpPeriodCount":I
    :goto_e
    move/from16 v69, v6

    move/from16 v6, v28

    .end local v28    # "_cursorIndexOfGeneration":I
    .local v6, "_cursorIndexOfGeneration":I
    .local v69, "_cursorIndexOfPeriodCount":I
    if-ne v6, v5, :cond_e

    .line 629
    const/16 v28, 0x0

    .local v28, "_tmpGeneration":I
    goto :goto_f

    .line 631
    .end local v28    # "_tmpGeneration":I
    :cond_e
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v28

    .line 634
    .restart local v28    # "_tmpGeneration":I
    :goto_f
    move/from16 v70, v6

    move/from16 v6, v26

    .end local v26    # "_cursorIndexOfNextScheduleTimeOverride":I
    .local v6, "_cursorIndexOfNextScheduleTimeOverride":I
    .local v70, "_cursorIndexOfGeneration":I
    if-ne v6, v5, :cond_f

    .line 635
    const-wide/16 v29, 0x0

    move-wide/from16 v71, v29

    .local v29, "_tmpNextScheduleTimeOverride":J
    goto :goto_10

    .line 637
    .end local v29    # "_tmpNextScheduleTimeOverride":J
    :cond_f
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v29

    move-wide/from16 v71, v29

    .line 640
    .local v71, "_tmpNextScheduleTimeOverride":J
    :goto_10
    move/from16 v26, v6

    move/from16 v6, v16

    .end local v16    # "_cursorIndexOfStopReason":I
    .local v6, "_cursorIndexOfStopReason":I
    .restart local v26    # "_cursorIndexOfNextScheduleTimeOverride":I
    if-ne v6, v5, :cond_10

    .line 641
    const/16 v16, 0x0

    .local v16, "_tmpStopReason":I
    goto :goto_11

    .line 643
    .end local v16    # "_tmpStopReason":I
    :cond_10
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 647
    .restart local v16    # "_tmpStopReason":I
    :goto_11
    move/from16 v73, v6

    move/from16 v6, v17

    .end local v17    # "_cursorIndexOfRequiredNetworkType":I
    .local v6, "_cursorIndexOfRequiredNetworkType":I
    .local v73, "_cursorIndexOfStopReason":I
    if-ne v6, v5, :cond_11

    .line 648
    const/4 v5, 0x0

    .local v5, "_tmpRequiredNetworkType":Landroidx/work/NetworkType;
    goto :goto_12

    .line 651
    .end local v5    # "_tmpRequiredNetworkType":Landroidx/work/NetworkType;
    :cond_11
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 652
    .local v5, "_tmp_3":I
    sget-object v17, Landroidx/work/impl/model/WorkTypeConverters;->INSTANCE:Landroidx/work/impl/model/WorkTypeConverters;

    invoke-static {v5}, Landroidx/work/impl/model/WorkTypeConverters;->intToNetworkType(I)Landroidx/work/NetworkType;

    move-result-object v17

    move-object/from16 v5, v17

    .line 655
    .local v5, "_tmpRequiredNetworkType":Landroidx/work/NetworkType;
    :goto_12
    move/from16 v17, v6

    move/from16 v6, v18

    move/from16 v18, v7

    const/4 v7, -0x1

    .end local v7    # "_cursorIndexOfIntervalDuration":I
    .local v6, "_cursorIndexOfRequiredNetworkRequestCompat":I
    .restart local v17    # "_cursorIndexOfRequiredNetworkType":I
    .local v18, "_cursorIndexOfIntervalDuration":I
    if-ne v6, v7, :cond_12

    .line 656
    const/4 v7, 0x0

    .local v7, "_tmpRequiredNetworkRequestCompat":Landroidx/work/impl/utils/NetworkRequestCompat;
    goto :goto_13

    .line 659
    .end local v7    # "_tmpRequiredNetworkRequestCompat":Landroidx/work/impl/utils/NetworkRequestCompat;
    :cond_12
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v7

    .line 660
    .local v7, "_tmp_4":[B
    sget-object v30, Landroidx/work/impl/model/WorkTypeConverters;->INSTANCE:Landroidx/work/impl/model/WorkTypeConverters;

    invoke-static {v7}, Landroidx/work/impl/model/WorkTypeConverters;->toNetworkRequest$work_runtime_release([B)Landroidx/work/impl/utils/NetworkRequestCompat;

    move-result-object v30

    move-object/from16 v7, v30

    .line 663
    .local v7, "_tmpRequiredNetworkRequestCompat":Landroidx/work/impl/utils/NetworkRequestCompat;
    :goto_13
    const/16 v30, 0x0

    move/from16 v74, v6

    move/from16 v6, v19

    move/from16 v19, v8

    const/4 v8, -0x1

    .end local v8    # "_cursorIndexOfFlexDuration":I
    .local v6, "_cursorIndexOfRequiresCharging":I
    .local v19, "_cursorIndexOfFlexDuration":I
    .local v74, "_cursorIndexOfRequiredNetworkRequestCompat":I
    if-ne v6, v8, :cond_13

    .line 664
    const/4 v8, 0x0

    .local v8, "_tmpRequiresCharging":Z
    goto :goto_15

    .line 667
    .end local v8    # "_tmpRequiresCharging":Z
    :cond_13
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 668
    .local v8, "_tmp_5":I
    if-eqz v8, :cond_14

    const/16 v31, 0x1

    goto :goto_14

    :cond_14
    move/from16 v31, v30

    :goto_14
    move/from16 v8, v31

    .line 671
    .local v8, "_tmpRequiresCharging":Z
    :goto_15
    move/from16 v75, v6

    move/from16 v6, v20

    move/from16 v20, v9

    const/4 v9, -0x1

    .end local v9    # "_cursorIndexOfRunAttemptCount":I
    .local v6, "_cursorIndexOfRequiresDeviceIdle":I
    .local v20, "_cursorIndexOfRunAttemptCount":I
    .local v75, "_cursorIndexOfRequiresCharging":I
    if-ne v6, v9, :cond_15

    .line 672
    const/4 v9, 0x0

    .local v9, "_tmpRequiresDeviceIdle":Z
    goto :goto_17

    .line 675
    .end local v9    # "_tmpRequiresDeviceIdle":Z
    :cond_15
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 676
    .local v9, "_tmp_6":I
    if-eqz v9, :cond_16

    const/16 v31, 0x1

    goto :goto_16

    :cond_16
    move/from16 v31, v30

    :goto_16
    move/from16 v9, v31

    .line 679
    .local v9, "_tmpRequiresDeviceIdle":Z
    :goto_17
    move/from16 v76, v6

    move/from16 v6, v21

    move/from16 v21, v10

    const/4 v10, -0x1

    .end local v10    # "_cursorIndexOfBackoffPolicy":I
    .local v6, "_cursorIndexOfRequiresBatteryNotLow":I
    .local v21, "_cursorIndexOfBackoffPolicy":I
    .local v76, "_cursorIndexOfRequiresDeviceIdle":I
    if-ne v6, v10, :cond_17

    .line 680
    const/4 v10, 0x0

    .local v10, "_tmpRequiresBatteryNotLow":Z
    goto :goto_19

    .line 683
    .end local v10    # "_tmpRequiresBatteryNotLow":Z
    :cond_17
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 684
    .local v10, "_tmp_7":I
    if-eqz v10, :cond_18

    const/16 v31, 0x1

    goto :goto_18

    :cond_18
    move/from16 v31, v30

    :goto_18
    move/from16 v10, v31

    .line 687
    .local v10, "_tmpRequiresBatteryNotLow":Z
    :goto_19
    move/from16 v77, v6

    move/from16 v6, v22

    move/from16 v22, v11

    const/4 v11, -0x1

    .end local v11    # "_cursorIndexOfBackoffDelayDuration":I
    .local v6, "_cursorIndexOfRequiresStorageNotLow":I
    .local v22, "_cursorIndexOfBackoffDelayDuration":I
    .local v77, "_cursorIndexOfRequiresBatteryNotLow":I
    if-ne v6, v11, :cond_19

    .line 688
    const/4 v11, 0x0

    .local v11, "_tmpRequiresStorageNotLow":Z
    goto :goto_1a

    .line 691
    .end local v11    # "_tmpRequiresStorageNotLow":Z
    :cond_19
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 692
    .local v11, "_tmp_8":I
    if-eqz v11, :cond_1a

    const/16 v30, 0x1

    :cond_1a
    move/from16 v11, v30

    .line 695
    .local v11, "_tmpRequiresStorageNotLow":Z
    :goto_1a
    move/from16 v78, v6

    move/from16 v6, v23

    move/from16 v23, v12

    const/4 v12, -0x1

    .end local v12    # "_cursorIndexOfLastEnqueueTime":I
    .local v6, "_cursorIndexOfContentTriggerUpdateDelayMillis":I
    .local v23, "_cursorIndexOfLastEnqueueTime":I
    .local v78, "_cursorIndexOfRequiresStorageNotLow":I
    if-ne v6, v12, :cond_1b

    .line 696
    const-wide/16 v29, 0x0

    move-wide/from16 v79, v29

    .local v29, "_tmpContentTriggerUpdateDelayMillis":J
    goto :goto_1b

    .line 698
    .end local v29    # "_tmpContentTriggerUpdateDelayMillis":J
    :cond_1b
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v29

    move-wide/from16 v79, v29

    .line 701
    .local v79, "_tmpContentTriggerUpdateDelayMillis":J
    :goto_1b
    move/from16 v29, v6

    move/from16 v6, v24

    .end local v24    # "_cursorIndexOfContentTriggerMaxDelayMillis":I
    .local v6, "_cursorIndexOfContentTriggerMaxDelayMillis":I
    .local v29, "_cursorIndexOfContentTriggerUpdateDelayMillis":I
    if-ne v6, v12, :cond_1c

    .line 702
    const-wide/16 v30, 0x0

    move-wide/from16 v81, v30

    .local v30, "_tmpContentTriggerMaxDelayMillis":J
    goto :goto_1c

    .line 704
    .end local v30    # "_tmpContentTriggerMaxDelayMillis":J
    :cond_1c
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v30

    move-wide/from16 v81, v30

    .line 707
    .local v81, "_tmpContentTriggerMaxDelayMillis":J
    :goto_1c
    move/from16 v24, v6

    move/from16 v6, v25

    .end local v25    # "_cursorIndexOfContentUriTriggers":I
    .local v6, "_cursorIndexOfContentUriTriggers":I
    .restart local v24    # "_cursorIndexOfContentTriggerMaxDelayMillis":I
    if-ne v6, v12, :cond_1d

    .line 708
    const/16 v25, 0x0

    .local v25, "_tmpContentUriTriggers":Ljava/util/Set;, "Ljava/util/Set<Landroidx/work/Constraints$ContentUriTrigger;>;"
    goto :goto_1d

    .line 711
    .end local v25    # "_tmpContentUriTriggers":Ljava/util/Set;, "Ljava/util/Set<Landroidx/work/Constraints$ContentUriTrigger;>;"
    :cond_1d
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v25

    .line 712
    .local v25, "_tmp_9":[B
    sget-object v30, Landroidx/work/impl/model/WorkTypeConverters;->INSTANCE:Landroidx/work/impl/model/WorkTypeConverters;

    invoke-static/range {v25 .. v25}, Landroidx/work/impl/model/WorkTypeConverters;->byteArrayToSetOfTriggers([B)Ljava/util/Set;

    move-result-object v30

    move-object/from16 v25, v30

    .line 714
    .local v25, "_tmpContentUriTriggers":Ljava/util/Set;, "Ljava/util/Set<Landroidx/work/Constraints$ContentUriTrigger;>;"
    :goto_1d
    new-instance v42, Landroidx/work/Constraints;

    move-object/from16 v30, v42

    move-object/from16 v31, v7

    move-object/from16 v32, v5

    move/from16 v33, v8

    move/from16 v34, v9

    move/from16 v35, v10

    move/from16 v36, v11

    move-wide/from16 v37, v79

    move-wide/from16 v39, v81

    move-object/from16 v41, v25

    invoke-direct/range {v30 .. v41}, Landroidx/work/Constraints;-><init>(Landroidx/work/impl/utils/NetworkRequestCompat;Landroidx/work/NetworkType;ZZZZJJLjava/util/Set;)V

    move-object/from16 v40, v42

    .line 717
    .local v40, "_tmpConstraints":Landroidx/work/Constraints;
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v83, v30

    .line 718
    .local v83, "_tmpKey_2":Ljava/lang/String;
    move-object/from16 v12, v83

    .end local v83    # "_tmpKey_2":Ljava/lang/String;
    .local v12, "_tmpKey_2":Ljava/lang/String;
    invoke-virtual {v4, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    move-object/from16 v52, v30

    check-cast v52, Ljava/util/ArrayList;

    .line 721
    .local v52, "_tmpTagsCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v83, v30

    .line 722
    .local v83, "_tmpKey_3":Ljava/lang/String;
    move/from16 v84, v0

    move-object/from16 v0, v83

    .end local v83    # "_tmpKey_3":Ljava/lang/String;
    .local v0, "_tmpKey_3":Ljava/lang/String;
    .local v84, "_cursorIndexOfId":I
    invoke-virtual {v15, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    move-object/from16 v53, v30

    check-cast v53, Ljava/util/ArrayList;

    .line 723
    .local v53, "_tmpProgressCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/work/Data;>;"
    new-instance v83, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;

    move-object/from16 v30, v83

    move-object/from16 v31, v54

    move-object/from16 v32, v14

    move-object/from16 v33, v1

    move-wide/from16 v34, v56

    move-wide/from16 v36, v58

    move-wide/from16 v38, v60

    move/from16 v41, v62

    move-object/from16 v42, v3

    move-wide/from16 v43, v64

    move-wide/from16 v45, v66

    move/from16 v47, v27

    move/from16 v48, v28

    move-wide/from16 v49, v71

    move/from16 v51, v16

    invoke-direct/range {v30 .. v53}, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;-><init>(Ljava/lang/String;Landroidx/work/WorkInfo$State;Landroidx/work/Data;JJJLandroidx/work/Constraints;ILandroidx/work/BackoffPolicy;JJIIJILjava/util/List;Ljava/util/List;)V

    move-object/from16 v30, v83

    .line 724
    .local v30, "_item":Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;
    move-object/from16 v31, v0

    move-object/from16 v0, v30

    .end local v30    # "_item":Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;
    .local v0, "_item":Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;
    .local v31, "_tmpKey_3":Ljava/lang/String;
    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 725
    move-object/from16 v1, p0

    move/from16 v25, v6

    move/from16 v7, v18

    move/from16 v8, v19

    move/from16 v9, v20

    move/from16 v10, v21

    move/from16 v11, v22

    move/from16 v12, v23

    move/from16 v23, v29

    move/from16 v3, v55

    move/from16 v5, v63

    move/from16 v6, v68

    move/from16 v27, v69

    move/from16 v28, v70

    move/from16 v16, v73

    move/from16 v18, v74

    move/from16 v19, v75

    move/from16 v20, v76

    move/from16 v21, v77

    move/from16 v22, v78

    move/from16 v0, v84

    .end local v0    # "_item":Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;
    .end local v1    # "_tmpOutput":Landroidx/work/Data;
    .end local v3    # "_tmpBackoffPolicy":Landroidx/work/BackoffPolicy;
    .end local v5    # "_tmpRequiredNetworkType":Landroidx/work/NetworkType;
    .end local v7    # "_tmpRequiredNetworkRequestCompat":Landroidx/work/impl/utils/NetworkRequestCompat;
    .end local v8    # "_tmpRequiresCharging":Z
    .end local v9    # "_tmpRequiresDeviceIdle":Z
    .end local v10    # "_tmpRequiresBatteryNotLow":Z
    .end local v11    # "_tmpRequiresStorageNotLow":Z
    .end local v12    # "_tmpKey_2":Ljava/lang/String;
    .end local v14    # "_tmpState":Landroidx/work/WorkInfo$State;
    .end local v16    # "_tmpStopReason":I
    .end local v25    # "_tmpContentUriTriggers":Ljava/util/Set;, "Ljava/util/Set<Landroidx/work/Constraints$ContentUriTrigger;>;"
    .end local v27    # "_tmpPeriodCount":I
    .end local v28    # "_tmpGeneration":I
    .end local v31    # "_tmpKey_3":Ljava/lang/String;
    .end local v40    # "_tmpConstraints":Landroidx/work/Constraints;
    .end local v52    # "_tmpTagsCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v53    # "_tmpProgressCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/work/Data;>;"
    .end local v54    # "_tmpId":Ljava/lang/String;
    .end local v56    # "_tmpInitialDelay":J
    .end local v58    # "_tmpIntervalDuration":J
    .end local v60    # "_tmpFlexDuration":J
    .end local v62    # "_tmpRunAttemptCount":I
    .end local v64    # "_tmpBackoffDelayDuration":J
    .end local v66    # "_tmpLastEnqueueTime":J
    .end local v71    # "_tmpNextScheduleTimeOverride":J
    .end local v79    # "_tmpContentTriggerUpdateDelayMillis":J
    .end local v81    # "_tmpContentTriggerMaxDelayMillis":J
    goto/16 :goto_3

    .line 726
    .end local v29    # "_cursorIndexOfContentTriggerUpdateDelayMillis":I
    .end local v55    # "_cursorIndexOfState":I
    .end local v63    # "_cursorIndexOfOutput":I
    .end local v68    # "_cursorIndexOfInitialDelay":I
    .end local v69    # "_cursorIndexOfPeriodCount":I
    .end local v70    # "_cursorIndexOfGeneration":I
    .end local v73    # "_cursorIndexOfStopReason":I
    .end local v74    # "_cursorIndexOfRequiredNetworkRequestCompat":I
    .end local v75    # "_cursorIndexOfRequiresCharging":I
    .end local v76    # "_cursorIndexOfRequiresDeviceIdle":I
    .end local v77    # "_cursorIndexOfRequiresBatteryNotLow":I
    .end local v78    # "_cursorIndexOfRequiresStorageNotLow":I
    .end local v84    # "_cursorIndexOfId":I
    .local v0, "_cursorIndexOfId":I
    .local v3, "_cursorIndexOfState":I
    .local v5, "_cursorIndexOfOutput":I
    .local v6, "_cursorIndexOfInitialDelay":I
    .local v7, "_cursorIndexOfIntervalDuration":I
    .local v8, "_cursorIndexOfFlexDuration":I
    .local v9, "_cursorIndexOfRunAttemptCount":I
    .local v10, "_cursorIndexOfBackoffPolicy":I
    .local v11, "_cursorIndexOfBackoffDelayDuration":I
    .local v12, "_cursorIndexOfLastEnqueueTime":I
    .local v16, "_cursorIndexOfStopReason":I
    .local v18, "_cursorIndexOfRequiredNetworkRequestCompat":I
    .local v19, "_cursorIndexOfRequiresCharging":I
    .local v20, "_cursorIndexOfRequiresDeviceIdle":I
    .local v21, "_cursorIndexOfRequiresBatteryNotLow":I
    .local v22, "_cursorIndexOfRequiresStorageNotLow":I
    .local v23, "_cursorIndexOfContentTriggerUpdateDelayMillis":I
    .local v25, "_cursorIndexOfContentUriTriggers":I
    .local v27, "_cursorIndexOfPeriodCount":I
    .local v28, "_cursorIndexOfGeneration":I
    :cond_1e
    nop

    .line 728
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 726
    return-object v13

    .line 728
    .end local v0    # "_cursorIndexOfId":I
    .end local v3    # "_cursorIndexOfState":I
    .end local v4    # "_collectionTags":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v5    # "_cursorIndexOfOutput":I
    .end local v6    # "_cursorIndexOfInitialDelay":I
    .end local v7    # "_cursorIndexOfIntervalDuration":I
    .end local v8    # "_cursorIndexOfFlexDuration":I
    .end local v9    # "_cursorIndexOfRunAttemptCount":I
    .end local v10    # "_cursorIndexOfBackoffPolicy":I
    .end local v11    # "_cursorIndexOfBackoffDelayDuration":I
    .end local v12    # "_cursorIndexOfLastEnqueueTime":I
    .end local v13    # "_result":Ljava/util/List;, "Ljava/util/List<Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;>;"
    .end local v15    # "_collectionProgress":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Landroidx/work/Data;>;>;"
    .end local v16    # "_cursorIndexOfStopReason":I
    .end local v17    # "_cursorIndexOfRequiredNetworkType":I
    .end local v18    # "_cursorIndexOfRequiredNetworkRequestCompat":I
    .end local v19    # "_cursorIndexOfRequiresCharging":I
    .end local v20    # "_cursorIndexOfRequiresDeviceIdle":I
    .end local v21    # "_cursorIndexOfRequiresBatteryNotLow":I
    .end local v22    # "_cursorIndexOfRequiresStorageNotLow":I
    .end local v23    # "_cursorIndexOfContentTriggerUpdateDelayMillis":I
    .end local v24    # "_cursorIndexOfContentTriggerMaxDelayMillis":I
    .end local v25    # "_cursorIndexOfContentUriTriggers":I
    .end local v26    # "_cursorIndexOfNextScheduleTimeOverride":I
    .end local v27    # "_cursorIndexOfPeriodCount":I
    .end local v28    # "_cursorIndexOfGeneration":I
    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 729
    throw v0
.end method
