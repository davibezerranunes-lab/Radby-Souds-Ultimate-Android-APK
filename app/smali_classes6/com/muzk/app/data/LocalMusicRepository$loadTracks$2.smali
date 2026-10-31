.class final Lcom/muzk/app/data/LocalMusicRepository$loadTracks$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "LocalMusicRepository.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muzk/app/data/LocalMusicRepository;->loadTracks(Landroid/content/Context;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Ljava/util/List<",
        "Lcom/muzk/app/data/LocalTrack;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLocalMusicRepository.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LocalMusicRepository.kt\ncom/muzk/app/data/LocalMusicRepository$loadTracks$2\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,69:1\n37#2,2:70\n1#3:72\n*S KotlinDebug\n*F\n+ 1 LocalMusicRepository.kt\ncom/muzk/app/data/LocalMusicRepository$loadTracks$2\n*L\n30#1:70,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lcom/muzk/app/data/LocalTrack;",
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
    c = "com.muzk.app.data.LocalMusicRepository$loadTracks$2"
    f = "LocalMusicRepository.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field label:I


# direct methods
.method constructor <init>(Landroid/content/Context;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/muzk/app/data/LocalMusicRepository$loadTracks$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/muzk/app/data/LocalMusicRepository$loadTracks$2;->$context:Landroid/content/Context;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
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

    new-instance v0, Lcom/muzk/app/data/LocalMusicRepository$loadTracks$2;

    iget-object v1, p0, Lcom/muzk/app/data/LocalMusicRepository$loadTracks$2;->$context:Landroid/content/Context;

    invoke-direct {v0, v1, p2}, Lcom/muzk/app/data/LocalMusicRepository$loadTracks$2;-><init>(Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/muzk/app/data/LocalMusicRepository$loadTracks$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Ljava/util/List<",
            "Lcom/muzk/app/data/LocalTrack;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/muzk/app/data/LocalMusicRepository$loadTracks$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lcom/muzk/app/data/LocalMusicRepository$loadTracks$2;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/muzk/app/data/LocalMusicRepository$loadTracks$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 38

    move-object/from16 v1, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 14
    iget v0, v1, Lcom/muzk/app/data/LocalMusicRepository$loadTracks$2;->label:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v2, p1

    .line 15
    .local v2, "$result":Ljava/lang/Object;
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 17
    .local v0, "collection":Landroid/net/Uri;
    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "_id"

    aput-object v10, v3, v9

    .line 18
    const/4 v11, 0x1

    const-string v12, "title"

    aput-object v12, v3, v11

    .line 17
    nop

    .line 19
    const/4 v13, 0x2

    const-string v14, "artist"

    aput-object v14, v3, v13

    .line 17
    nop

    .line 20
    const/4 v4, 0x3

    const-string v15, "album"

    aput-object v15, v3, v4

    .line 17
    nop

    .line 21
    const/4 v4, 0x4

    const-string v8, "duration"

    aput-object v8, v3, v4

    .line 17
    nop

    .line 22
    const/4 v4, 0x5

    const-string v7, "date_added"

    aput-object v7, v3, v4

    .line 17
    nop

    .line 23
    const/4 v4, 0x6

    const-string v6, "_data"

    aput-object v6, v3, v4

    .line 17
    nop

    .line 16
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 25
    .local v3, "projection":Ljava/util/List;
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v5, "relative_path"

    const/16 v13, 0x1d

    if-lt v4, v13, :cond_0

    move-object v4, v3

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 27
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v16, v4

    check-cast v16, Ljava/util/List;

    .line 34
    .local v16, "tracks":Ljava/util/List;
    nop

    .line 28
    iget-object v4, v1, Lcom/muzk/app/data/LocalMusicRepository$loadTracks$2;->$context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 29
    nop

    .line 30
    check-cast v3, Ljava/util/Collection;

    .local v3, "$this$toTypedArray$iv":Ljava/util/Collection;
    const/16 v17, 0x0

    .line 70
    .local v17, "$i$f$toTypedArray":I
    move-object/from16 v18, v3

    .line 71
    .local v18, "thisCollection$iv":Ljava/util/Collection;
    new-array v11, v9, [Ljava/lang/String;

    move-object/from16 v9, v18

    .end local v18    # "thisCollection$iv":Ljava/util/Collection;
    .local v9, "thisCollection$iv":Ljava/util/Collection;
    invoke-interface {v9, v11}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    .line 30
    .end local v3    # "$this$toTypedArray$iv":Ljava/util/Collection;
    .end local v9    # "thisCollection$iv":Ljava/util/Collection;
    .end local v17    # "$i$f$toTypedArray":I
    move-object v9, v3

    check-cast v9, [Ljava/lang/String;

    .line 31
    nop

    .line 32
    nop

    .line 33
    nop

    .line 28
    const-string v11, "is_music != 0"

    const/16 v17, 0x0

    const-string v18, "date_added DESC"

    move-object v3, v4

    move-object v4, v0

    move-object/from16 v21, v5

    move-object v5, v9

    move-object v9, v6

    move-object v6, v11

    move-object v11, v7

    move-object/from16 v7, v17

    move-object v13, v8

    move-object/from16 v8, v18

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 34
    if-eqz v3, :cond_f

    .line 28
    check-cast v3, Ljava/io/Closeable;

    .line 34
    :try_start_0
    move-object v4, v3

    check-cast v4, Landroid/database/Cursor;

    .local v4, "c":Landroid/database/Cursor;
    const/4 v5, 0x0

    .line 35
    .local v5, "$i$a$-use-LocalMusicRepository$loadTracks$2$1":I
    invoke-interface {v4, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 36
    .local v6, "idCol":I
    invoke-interface {v4, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 37
    .local v7, "titleCol":I
    invoke-interface {v4, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 38
    .local v8, "artistCol":I
    invoke-interface {v4, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 39
    .local v10, "albumCol":I
    invoke-interface {v4, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 40
    .local v12, "durCol":I
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 42
    .local v11, "dateCol":I
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 41
    nop

    .line 43
    .local v9, "dataCol":I
    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/16 v14, 0x1d

    if-lt v13, v14, :cond_1

    .line 44
    move-object/from16 v13, v21

    :try_start_1
    invoke-interface {v4, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 34
    .end local v0    # "collection":Landroid/net/Uri;
    .end local v4    # "c":Landroid/database/Cursor;
    .end local v5    # "$i$a$-use-LocalMusicRepository$loadTracks$2$1":I
    .end local v6    # "idCol":I
    .end local v7    # "titleCol":I
    .end local v8    # "artistCol":I
    .end local v9    # "dataCol":I
    .end local v10    # "albumCol":I
    .end local v11    # "dateCol":I
    .end local v12    # "durCol":I
    .end local v16    # "tracks":Ljava/util/List;
    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object/from16 v36, v2

    goto/16 :goto_a

    .line 44
    .restart local v0    # "collection":Landroid/net/Uri;
    .restart local v4    # "c":Landroid/database/Cursor;
    .restart local v5    # "$i$a$-use-LocalMusicRepository$loadTracks$2$1":I
    .restart local v6    # "idCol":I
    .restart local v7    # "titleCol":I
    .restart local v8    # "artistCol":I
    .restart local v9    # "dataCol":I
    .restart local v10    # "albumCol":I
    .restart local v11    # "dateCol":I
    .restart local v12    # "durCol":I
    .restart local v16    # "tracks":Ljava/util/List;
    :cond_1
    const/4 v13, -0x1

    .line 43
    :goto_0
    nop

    .line 46
    .local v13, "relCol":I
    :goto_1
    :try_start_2
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v14

    if-eqz v14, :cond_e

    .line 47
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-wide/from16 v22, v17

    .line 48
    .local v22, "id":J
    if-ltz v13, :cond_2

    :try_start_3
    invoke-interface {v4, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :cond_2
    const/4 v14, 0x0

    .line 49
    :goto_2
    const-string v17, ""

    if-eqz v14, :cond_3

    .line 48
    nop

    .line 49
    const/4 v15, 0x1

    :try_start_4
    new-array v1, v15, [C

    const/16 v19, 0x2f

    const/16 v20, 0x0

    aput-char v19, v1, v20

    invoke-static {v14, v1}, Lkotlin/text/StringsKt;->trimEnd(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 48
    if-eqz v1, :cond_4

    goto :goto_4

    .line 49
    :cond_3
    const/4 v15, 0x1

    const/16 v20, 0x0

    .line 50
    :cond_4
    :try_start_5
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v1, :cond_5

    .line 72
    .local v1, "it":Ljava/lang/String;
    const/4 v14, 0x0

    .line 50
    .local v14, "$i$a$-let-LocalMusicRepository$loadTracks$2$1$folderPath$1":I
    :try_start_6
    new-instance v15, Ljava/io/File;

    invoke-direct {v15, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v15
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .end local v1    # "it":Ljava/lang/String;
    .end local v14    # "$i$a$-let-LocalMusicRepository$loadTracks$2$1$folderPath$1":I
    goto :goto_3

    :cond_5
    const/4 v15, 0x0

    .line 48
    :goto_3
    if-nez v15, :cond_6

    .line 51
    move-object/from16 v1, v17

    goto :goto_4

    .line 48
    :cond_6
    move-object v1, v15

    :goto_4
    nop

    .line 52
    .local v1, "folderPath":Ljava/lang/String;
    :try_start_7
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 53
    .local v14, "artist":Ljava/lang/String;
    move-object/from16 v15, v16

    check-cast v15, Ljava/util/Collection;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 54
    nop

    .line 55
    move-object/from16 v36, v2

    move/from16 v34, v5

    move/from16 v35, v6

    move-wide/from16 v5, v22

    .end local v2    # "$result":Ljava/lang/Object;
    .end local v6    # "idCol":I
    .end local v22    # "id":J
    .local v5, "id":J
    .local v34, "$i$a$-use-LocalMusicRepository$loadTracks$2$1":I
    .local v35, "idCol":I
    .local v36, "$result":Ljava/lang/Object;
    :try_start_8
    invoke-static {v0, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v37, v0

    .end local v0    # "collection":Landroid/net/Uri;
    .local v37, "collection":Landroid/net/Uri;
    const-string v0, "withAppendedId(...)"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    .end local v5    # "id":J
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    const-string v0, "Sem t\u00edtulo"

    :cond_7
    move-object/from16 v25, v0

    .line 57
    move-object v0, v14

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_9

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_5

    :cond_8
    move/from16 v0, v20

    goto :goto_6

    :cond_9
    :goto_5
    const/4 v0, 0x1

    :goto_6
    if-nez v0, :cond_b

    const-string v0, "<unknown>"

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_7

    :cond_a
    move-object/from16 v26, v14

    goto :goto_8

    .end local v14    # "artist":Ljava/lang/String;
    :cond_b
    :goto_7
    const-string v0, "Artista desconhecido"

    move-object/from16 v26, v0

    .line 58
    :goto_8
    invoke-interface {v4, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_c

    move-object/from16 v27, v17

    goto :goto_9

    :cond_c
    move-object/from16 v27, v0

    .line 59
    :goto_9
    invoke-interface {v4, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v28

    .line 60
    nop

    .line 61
    move/from16 p1, v7

    const/16 v0, 0x2f

    const/4 v7, 0x0

    const/4 v14, 0x2

    .end local v7    # "titleCol":I
    .local p1, "titleCol":I
    invoke-static {v1, v0, v7, v14, v7}, Lkotlin/text/StringsKt;->substringAfterLast$default(Ljava/lang/String;CLjava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 72
    .end local v1    # "folderPath":Ljava/lang/String;
    const/4 v0, 0x0

    .line 61
    .local v0, "$i$a$-ifBlank-LocalMusicRepository$loadTracks$2$1$1":I
    const-string v7, "Raiz"

    move-object v0, v7

    .end local v0    # "$i$a$-ifBlank-LocalMusicRepository$loadTracks$2$1$1":I
    nop

    :cond_d
    move-object/from16 v31, v0

    check-cast v31, Ljava/lang/String;

    .line 62
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v32

    .line 53
    new-instance v0, Lcom/muzk/app/data/LocalTrack;

    move-object/from16 v21, v0

    move-wide/from16 v22, v5

    move-object/from16 v24, v2

    move-object/from16 v30, v1

    invoke-direct/range {v21 .. v33}, Lcom/muzk/app/data/LocalTrack;-><init>(JLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;J)V

    invoke-interface {v15, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, p0

    move/from16 v7, p1

    move/from16 v5, v34

    move/from16 v6, v35

    move-object/from16 v2, v36

    move-object/from16 v0, v37

    goto/16 :goto_1

    .line 46
    .end local v34    # "$i$a$-use-LocalMusicRepository$loadTracks$2$1":I
    .end local v35    # "idCol":I
    .end local v36    # "$result":Ljava/lang/Object;
    .end local v37    # "collection":Landroid/net/Uri;
    .end local p1    # "titleCol":I
    .local v0, "collection":Landroid/net/Uri;
    .restart local v2    # "$result":Ljava/lang/Object;
    .local v5, "$i$a$-use-LocalMusicRepository$loadTracks$2$1":I
    .restart local v6    # "idCol":I
    .restart local v7    # "titleCol":I
    :cond_e
    move-object/from16 v37, v0

    move-object/from16 v36, v2

    move/from16 v34, v5

    move/from16 v35, v6

    move/from16 p1, v7

    .line 65
    .end local v0    # "collection":Landroid/net/Uri;
    .end local v2    # "$result":Ljava/lang/Object;
    .end local v5    # "$i$a$-use-LocalMusicRepository$loadTracks$2$1":I
    .end local v6    # "idCol":I
    .end local v7    # "titleCol":I
    .restart local v34    # "$i$a$-use-LocalMusicRepository$loadTracks$2$1":I
    .restart local v35    # "idCol":I
    .restart local v36    # "$result":Ljava/lang/Object;
    .restart local p1    # "titleCol":I
    nop

    .end local v4    # "c":Landroid/database/Cursor;
    .end local v8    # "artistCol":I
    .end local v9    # "dataCol":I
    .end local v10    # "albumCol":I
    .end local v11    # "dateCol":I
    .end local v12    # "durCol":I
    .end local v13    # "relCol":I
    .end local v34    # "$i$a$-use-LocalMusicRepository$loadTracks$2$1":I
    .end local v35    # "idCol":I
    .end local p1    # "titleCol":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 34
    const/4 v0, 0x0

    invoke-static {v3, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_b

    .end local v16    # "tracks":Ljava/util/List;
    :catchall_1
    move-exception v0

    move-object v1, v0

    goto :goto_a

    .end local v36    # "$result":Ljava/lang/Object;
    .restart local v2    # "$result":Ljava/lang/Object;
    :catchall_2
    move-exception v0

    move-object/from16 v36, v2

    move-object v1, v0

    .end local v2    # "$result":Ljava/lang/Object;
    :goto_a
    :try_start_9
    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .restart local v36    # "$result":Ljava/lang/Object;
    :catchall_3
    move-exception v0

    move-object v2, v0

    invoke-static {v3, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2

    .end local v36    # "$result":Ljava/lang/Object;
    .restart local v0    # "collection":Landroid/net/Uri;
    .restart local v2    # "$result":Ljava/lang/Object;
    .restart local v16    # "tracks":Ljava/util/List;
    :cond_f
    move-object/from16 v37, v0

    move-object/from16 v36, v2

    .line 66
    .end local v0    # "collection":Landroid/net/Uri;
    .end local v2    # "$result":Ljava/lang/Object;
    .restart local v36    # "$result":Ljava/lang/Object;
    :goto_b
    return-object v16

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
