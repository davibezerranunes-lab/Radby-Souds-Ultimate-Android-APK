.class public final Lcom/muzk/app/data/SearchHistory$Companion;
.super Ljava/lang/Object;
.source "SearchHistory.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/muzk/app/data/SearchHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSearchHistory.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SearchHistory.kt\ncom/muzk/app/data/SearchHistory$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,48:1\n1#2:49\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\u000cR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/muzk/app/data/SearchHistory$Companion;",
        "",
        "<init>",
        "()V",
        "KEY",
        "",
        "MAX",
        "",
        "instance",
        "Lcom/muzk/app/data/SearchHistory;",
        "get",
        "context",
        "Landroid/content/Context;",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/muzk/app/data/SearchHistory$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final get(Landroid/content/Context;)Lcom/muzk/app/data/SearchHistory;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-static {}, Lcom/muzk/app/data/SearchHistory;->access$getInstance$cp()Lcom/muzk/app/data/SearchHistory;

    move-result-object v0

    if-nez v0, :cond_1

    monitor-enter p0

    const/4 v0, 0x0

    .line 44
    .local v0, "$i$a$-synchronized-SearchHistory$Companion$get$1":I
    :try_start_0
    invoke-static {}, Lcom/muzk/app/data/SearchHistory;->access$getInstance$cp()Lcom/muzk/app/data/SearchHistory;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/muzk/app/data/SearchHistory;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "getApplicationContext(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/muzk/app/data/SearchHistory;-><init>(Landroid/content/Context;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v2, v1

    .line 49
    .local v2, "it":Lcom/muzk/app/data/SearchHistory;
    const/4 v3, 0x0

    .line 44
    .local v3, "$i$a$-also-SearchHistory$Companion$get$1$1":I
    sget-object v4, Lcom/muzk/app/data/SearchHistory;->Companion:Lcom/muzk/app/data/SearchHistory$Companion;

    invoke-static {v2}, Lcom/muzk/app/data/SearchHistory;->access$setInstance$cp(Lcom/muzk/app/data/SearchHistory;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    .end local v0    # "$i$a$-synchronized-SearchHistory$Companion$get$1":I
    .end local v2    # "it":Lcom/muzk/app/data/SearchHistory;
    .end local v3    # "$i$a$-also-SearchHistory$Companion$get$1$1":I
    :cond_0
    monitor-exit p0

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 45
    :cond_1
    :goto_0
    return-object v0
.end method
