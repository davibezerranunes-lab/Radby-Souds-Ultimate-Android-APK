.class public final Lcom/muzk/app/data/PlayStats;
.super Ljava/lang/Object;
.source "PlayStats.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/muzk/app/data/PlayStats$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPlayStats.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PlayStats.kt\ncom/muzk/app/data/PlayStats\n+ 2 SharedPreferences.kt\nandroidx/core/content/SharedPreferencesKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,37:1\n41#2,12:38\n136#3,9:50\n216#3:59\n217#3:62\n145#3:63\n1#4:60\n1#4:61\n*S KotlinDebug\n*F\n+ 1 PlayStats.kt\ncom/muzk/app/data/PlayStats\n*L\n23#1:38,12\n27#1:50,9\n27#1:59\n27#1:62\n27#1:63\n27#1:61\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\u0010\t\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0018\u0000 \u00182\u00020\u0001:\u0001\u0018B\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000e\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016J\u0014\u0010\u0017\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000e0\u000cH\u0002R\u0018\u0010\u0006\u001a\n \u0008*\u0004\u0018\u00010\u00070\u0007X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\tR \u0010\n\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000e0\u000c0\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R#\u0010\u000f\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000e0\u000c0\u0010\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/muzk/app/data/PlayStats;",
        "",
        "context",
        "Landroid/content/Context;",
        "<init>",
        "(Landroid/content/Context;)V",
        "prefs",
        "Landroid/content/SharedPreferences;",
        "kotlin.jvm.PlatformType",
        "Landroid/content/SharedPreferences;",
        "_counts",
        "Lkotlinx/coroutines/flow/MutableStateFlow;",
        "",
        "",
        "",
        "counts",
        "Lkotlinx/coroutines/flow/StateFlow;",
        "getCounts",
        "()Lkotlinx/coroutines/flow/StateFlow;",
        "record",
        "",
        "mediaId",
        "",
        "read",
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
.field public static final Companion:Lcom/muzk/app/data/PlayStats$Companion;

.field private static volatile instance:Lcom/muzk/app/data/PlayStats;


# instance fields
.field private final _counts:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final counts:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final prefs:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/muzk/app/data/PlayStats$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/muzk/app/data/PlayStats$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/muzk/app/data/PlayStats;->Companion:Lcom/muzk/app/data/PlayStats$Companion;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-string v0, "play_stats"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/muzk/app/data/PlayStats;->prefs:Landroid/content/SharedPreferences;

    .line 13
    invoke-direct {p0}, Lcom/muzk/app/data/PlayStats;->read()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/muzk/app/data/PlayStats;->_counts:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 14
    iget-object v0, p0, Lcom/muzk/app/data/PlayStats;->_counts:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/muzk/app/data/PlayStats;->counts:Lkotlinx/coroutines/flow/StateFlow;

    .line 10
    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/muzk/app/data/PlayStats;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static final synthetic access$getInstance$cp()Lcom/muzk/app/data/PlayStats;
    .locals 1

    .line 10
    sget-object v0, Lcom/muzk/app/data/PlayStats;->instance:Lcom/muzk/app/data/PlayStats;

    return-object v0
.end method

.method public static final synthetic access$setInstance$cp(Lcom/muzk/app/data/PlayStats;)V
    .locals 0
    .param p0, "<set-?>"    # Lcom/muzk/app/data/PlayStats;

    .line 10
    sput-object p0, Lcom/muzk/app/data/PlayStats;->instance:Lcom/muzk/app/data/PlayStats;

    return-void
.end method

.method private final read()Ljava/util/Map;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 27
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/muzk/app/data/PlayStats;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    const-string v2, "getAll(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .local v1, "$this$mapNotNull$iv":Ljava/util/Map;
    const/4 v2, 0x0

    .line 50
    .local v2, "$i$f$mapNotNull":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/Collection;

    .local v3, "destination$iv$iv":Ljava/util/Collection;
    move-object v4, v1

    .local v4, "$this$mapNotNullTo$iv$iv":Ljava/util/Map;
    const/4 v5, 0x0

    .line 58
    .local v5, "$i$f$mapNotNullTo":I
    move-object v6, v4

    .local v6, "$this$forEach$iv$iv$iv":Ljava/util/Map;
    const/4 v7, 0x0

    .line 59
    .local v7, "$i$f$forEach":I
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .local v9, "element$iv$iv$iv":Ljava/util/Map$Entry;
    move-object v10, v9

    .local v10, "element$iv$iv":Ljava/util/Map$Entry;
    const/4 v11, 0x0

    .line 58
    .local v11, "$i$a$-forEach-MapsKt___MapsKt$mapNotNullTo$1$iv$iv":I
    const/4 v12, 0x0

    .line 27
    .local v12, "$i$a$-mapNotNull-PlayStats$read$1":I
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .local v13, "k":Ljava/lang/String;
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    .local v14, "v":Ljava/lang/Object;
    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v13}, Lkotlin/text/StringsKt;->toLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v15

    const/16 v16, 0x0

    if-eqz v15, :cond_2

    check-cast v15, Ljava/lang/Number;

    invoke-virtual {v15}, Ljava/lang/Number;->longValue()J

    move-result-wide v17

    .line 60
    .local v17, "id":J
    const/4 v15, 0x0

    .line 27
    .local v15, "$i$a$-let-PlayStats$read$1$1":I
    instance-of v0, v14, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    move-object v0, v14

    check-cast v0, Ljava/lang/Integer;

    goto :goto_1

    :cond_0
    move-object/from16 v0, v16

    :goto_1
    if-eqz v0, :cond_1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 60
    .local v0, "it":I
    const/16 v16, 0x0

    .line 27
    .local v16, "$i$a$-let-PlayStats$read$1$1$1":I
    move-object/from16 v19, v1

    .end local v1    # "$this$mapNotNull$iv":Ljava/util/Map;
    .local v19, "$this$mapNotNull$iv":Ljava/util/Map;
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move/from16 v20, v2

    .end local v2    # "$i$f$mapNotNull":I
    .local v20, "$i$f$mapNotNull":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    move-object/from16 v16, v0

    .end local v0    # "it":I
    .end local v16    # "$i$a$-let-PlayStats$read$1$1$1":I
    goto :goto_2

    .end local v19    # "$this$mapNotNull$iv":Ljava/util/Map;
    .end local v20    # "$i$f$mapNotNull":I
    .restart local v1    # "$this$mapNotNull$iv":Ljava/util/Map;
    .restart local v2    # "$i$f$mapNotNull":I
    :cond_1
    move-object/from16 v19, v1

    move/from16 v20, v2

    .end local v1    # "$this$mapNotNull$iv":Ljava/util/Map;
    .end local v2    # "$i$f$mapNotNull":I
    .restart local v19    # "$this$mapNotNull$iv":Ljava/util/Map;
    .restart local v20    # "$i$f$mapNotNull":I
    goto :goto_2

    .end local v15    # "$i$a$-let-PlayStats$read$1$1":I
    .end local v17    # "id":J
    .end local v19    # "$this$mapNotNull$iv":Ljava/util/Map;
    .end local v20    # "$i$f$mapNotNull":I
    .restart local v1    # "$this$mapNotNull$iv":Ljava/util/Map;
    .restart local v2    # "$i$f$mapNotNull":I
    :cond_2
    move-object/from16 v19, v1

    move/from16 v20, v2

    .line 58
    .end local v1    # "$this$mapNotNull$iv":Ljava/util/Map;
    .end local v2    # "$i$f$mapNotNull":I
    .end local v12    # "$i$a$-mapNotNull-PlayStats$read$1":I
    .end local v13    # "k":Ljava/lang/String;
    .end local v14    # "v":Ljava/lang/Object;
    .restart local v19    # "$this$mapNotNull$iv":Ljava/util/Map;
    .restart local v20    # "$i$f$mapNotNull":I
    :goto_2
    if-eqz v16, :cond_3

    move-object/from16 v0, v16

    .line 61
    .local v0, "it$iv$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 58
    .local v1, "$i$a$-let-MapsKt___MapsKt$mapNotNullTo$1$1$iv$iv":I
    invoke-interface {v3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 59
    .end local v0    # "it$iv$iv":Ljava/lang/Object;
    .end local v1    # "$i$a$-let-MapsKt___MapsKt$mapNotNullTo$1$1$iv$iv":I
    .end local v10    # "element$iv$iv":Ljava/util/Map$Entry;
    .end local v11    # "$i$a$-forEach-MapsKt___MapsKt$mapNotNullTo$1$iv$iv":I
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    .end local v9    # "element$iv$iv$iv":Ljava/util/Map$Entry;
    goto :goto_0

    .line 62
    .end local v19    # "$this$mapNotNull$iv":Ljava/util/Map;
    .end local v20    # "$i$f$mapNotNull":I
    .local v1, "$this$mapNotNull$iv":Ljava/util/Map;
    .restart local v2    # "$i$f$mapNotNull":I
    :cond_4
    nop

    .line 63
    .end local v6    # "$this$forEach$iv$iv$iv":Ljava/util/Map;
    .end local v7    # "$i$f$forEach":I
    nop

    .end local v3    # "destination$iv$iv":Ljava/util/Collection;
    .end local v4    # "$this$mapNotNullTo$iv$iv":Ljava/util/Map;
    .end local v5    # "$i$f$mapNotNullTo":I
    move-object v0, v3

    check-cast v0, Ljava/util/List;

    .line 50
    nop

    .end local v1    # "$this$mapNotNull$iv":Ljava/util/Map;
    .end local v2    # "$i$f$mapNotNull":I
    check-cast v0, Ljava/lang/Iterable;

    .line 27
    invoke-static {v0}, Lkotlin/collections/MapsKt;->toMap(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final getCounts()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lcom/muzk/app/data/PlayStats;->counts:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public final declared-synchronized record(Ljava/lang/String;)V
    .locals 11
    .param p1, "mediaId"    # Ljava/lang/String;

    monitor-enter p0

    :try_start_0
    const-string v0, "mediaId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    const-string v0, "content://"

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p1, v0, v2, v1, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 20
    :cond_0
    const/16 v0, 0x2f

    :try_start_1
    invoke-static {p1, v0, v3, v1, v3}, Lkotlin/text/StringsKt;->substringAfterLast$default(Ljava/lang/String;CLjava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/text/StringsKt;->toLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 21
    .local v0, "id":J
    iget-object v3, p0, Lcom/muzk/app/data/PlayStats;->_counts:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-object v5, p0, Lcom/muzk/app/data/PlayStats;->_counts:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v5}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .end local p0    # "this":Lcom/muzk/app/data/PlayStats;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v4, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    invoke-static {v3, v2}, Lkotlin/collections/MapsKt;->plus(Ljava/util/Map;Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v2

    .line 22
    .local v2, "updated":Ljava/util/Map;
    iget-object v3, p0, Lcom/muzk/app/data/PlayStats;->_counts:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v3, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 23
    iget-object v3, p0, Lcom/muzk/app/data/PlayStats;->prefs:Landroid/content/SharedPreferences;

    const-string v4, "prefs"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    .local v3, "$this$edit_u24default$iv":Landroid/content/SharedPreferences;
    nop

    .line 39
    const/4 v4, 0x0

    .line 38
    .local v4, "commit$iv":Z
    const/4 v5, 0x0

    .line 42
    .local v5, "$i$f$edit":I
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 43
    .local v6, "editor$iv":Landroid/content/SharedPreferences$Editor;
    move-object v7, v6

    .local v7, "$this$record_u24lambda_u240":Landroid/content/SharedPreferences$Editor;
    const/4 v8, 0x0

    .line 23
    .local v8, "$i$a$-edit$default-PlayStats$record$1":I
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-static {v2, v10}, Lkotlin/collections/MapsKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    move-result v10

    invoke-interface {v7, v9, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 43
    nop

    .line 44
    .end local v7    # "$this$record_u24lambda_u240":Landroid/content/SharedPreferences$Editor;
    .end local v8    # "$i$a$-edit$default-PlayStats$record$1":I
    nop

    .line 47
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    nop

    .line 24
    .end local v3    # "$this$edit_u24default$iv":Landroid/content/SharedPreferences;
    .end local v4    # "commit$iv":Z
    .end local v5    # "$i$f$edit":I
    .end local v6    # "editor$iv":Landroid/content/SharedPreferences$Editor;
    monitor-exit p0

    return-void

    .line 20
    .end local v0    # "id":J
    .end local v2    # "updated":Ljava/util/Map;
    :cond_2
    monitor-exit p0

    return-void

    .line 18
    .end local p1    # "mediaId":Ljava/lang/String;
    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
