.class public final Lcom/muzk/app/download/Downloads;
.super Ljava/lang/Object;
.source "Downloads.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/muzk/app/download/Downloads$Enqueued;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDownloads.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Downloads.kt\ncom/muzk/app/download/Downloads\n+ 2 OneTimeWorkRequest.kt\nandroidx/work/OneTimeWorkRequestKt\n+ 3 Data.kt\nandroidx/work/DataKt\n*L\n1#1,58:1\n105#2:59\n31#3,5:60\n*S KotlinDebug\n*F\n+ 1 Downloads.kt\ncom/muzk/app/download/Downloads\n*L\n27#1:59\n29#1:60,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0001\u0011B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0016\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cJ\u000e\u0010\r\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\u0005J\u0010\u0010\u000f\u001a\u00020\u00102\u0006\u0010\t\u001a\u00020\nH\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/muzk/app/download/Downloads;",
        "",
        "<init>",
        "()V",
        "TAG",
        "",
        "PREF_WIFI_ONLY",
        "enqueue",
        "Lcom/muzk/app/download/Downloads$Enqueued;",
        "context",
        "Landroid/content/Context;",
        "track",
        "Lcom/muzk/app/data/RemoteTrack;",
        "tagFor",
        "pageUrl",
        "isOnUnmetered",
        "",
        "Enqueued",
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
.field public static final INSTANCE:Lcom/muzk/app/download/Downloads;

.field public static final PREF_WIFI_ONLY:Ljava/lang/String; = "wifi_only"

.field public static final TAG:Ljava/lang/String; = "muzk_download"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/muzk/app/download/Downloads;

    invoke-direct {v0}, Lcom/muzk/app/download/Downloads;-><init>()V

    sput-object v0, Lcom/muzk/app/download/Downloads;->INSTANCE:Lcom/muzk/app/download/Downloads;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final isOnUnmetered(Landroid/content/Context;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 53
    const-class v0, Landroid/net/ConnectivityManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 54
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return v1

    .line 55
    .local v1, "caps":Landroid/net/NetworkCapabilities;
    :cond_0
    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v2

    return v2
.end method


# virtual methods
.method public final enqueue(Landroid/content/Context;Lcom/muzk/app/data/RemoteTrack;)Lcom/muzk/app/download/Downloads$Enqueued;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "track"    # Lcom/muzk/app/data/RemoteTrack;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "track"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-static {p1}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 25
    const-string v1, "wifi_only"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 24
    nop

    .line 27
    .local v0, "wifiOnly":Z
    const/4 v1, 0x0

    .line 59
    .local v1, "$i$f$OneTimeWorkRequestBuilder":I
    new-instance v3, Landroidx/work/OneTimeWorkRequest$Builder;

    const-class v4, Lcom/muzk/app/download/DownloadWorker;

    invoke-direct {v3, v4}, Landroidx/work/OneTimeWorkRequest$Builder;-><init>(Ljava/lang/Class;)V

    .line 30
    .end local v1    # "$i$f$OneTimeWorkRequestBuilder":I
    const/4 v1, 0x3

    new-array v1, v1, [Lkotlin/Pair;

    const-string v4, "url"

    invoke-virtual {p2}, Lcom/muzk/app/data/RemoteTrack;->getPageUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    aput-object v4, v1, v2

    .line 31
    const-string v4, "title"

    invoke-virtual {p2}, Lcom/muzk/app/data/RemoteTrack;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v1, v5

    .line 30
    nop

    .line 32
    invoke-virtual {p2}, Lcom/muzk/app/data/RemoteTrack;->getPageUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, 0x7fffffff

    and-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "notification_id"

    invoke-static {v5, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v1, v5

    .line 30
    nop

    .line 29
    nop

    .local v1, "pairs$iv":[Lkotlin/Pair;
    const/4 v4, 0x0

    .line 60
    .local v4, "$i$f$workDataOf":I
    new-instance v5, Landroidx/work/Data$Builder;

    invoke-direct {v5}, Landroidx/work/Data$Builder;-><init>()V

    .line 61
    .local v5, "dataBuilder$iv":Landroidx/work/Data$Builder;
    array-length v6, v1

    :goto_0
    if-ge v2, v6, :cond_0

    aget-object v7, v1, v2

    .line 62
    .local v7, "pair$iv":Lkotlin/Pair;
    invoke-virtual {v7}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroidx/work/Data$Builder;->put(Ljava/lang/String;Ljava/lang/Object;)Landroidx/work/Data$Builder;

    .line 61
    .end local v7    # "pair$iv":Lkotlin/Pair;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 64
    :cond_0
    invoke-virtual {v5}, Landroidx/work/Data$Builder;->build()Landroidx/work/Data;

    move-result-object v1

    .line 28
    .end local v1    # "pairs$iv":[Lkotlin/Pair;
    .end local v4    # "$i$f$workDataOf":I
    .end local v5    # "dataBuilder$iv":Landroidx/work/Data$Builder;
    invoke-virtual {v3, v1}, Landroidx/work/OneTimeWorkRequest$Builder;->setInputData(Landroidx/work/Data;)Landroidx/work/WorkRequest$Builder;

    move-result-object v1

    check-cast v1, Landroidx/work/OneTimeWorkRequest$Builder;

    .line 36
    new-instance v2, Landroidx/work/Constraints$Builder;

    invoke-direct {v2}, Landroidx/work/Constraints$Builder;-><init>()V

    .line 37
    if-eqz v0, :cond_1

    sget-object v3, Landroidx/work/NetworkType;->UNMETERED:Landroidx/work/NetworkType;

    goto :goto_1

    :cond_1
    sget-object v3, Landroidx/work/NetworkType;->CONNECTED:Landroidx/work/NetworkType;

    :goto_1
    invoke-virtual {v2, v3}, Landroidx/work/Constraints$Builder;->setRequiredNetworkType(Landroidx/work/NetworkType;)Landroidx/work/Constraints$Builder;

    move-result-object v2

    .line 38
    invoke-virtual {v2}, Landroidx/work/Constraints$Builder;->build()Landroidx/work/Constraints;

    move-result-object v2

    .line 35
    invoke-virtual {v1, v2}, Landroidx/work/OneTimeWorkRequest$Builder;->setConstraints(Landroidx/work/Constraints;)Landroidx/work/WorkRequest$Builder;

    move-result-object v1

    check-cast v1, Landroidx/work/OneTimeWorkRequest$Builder;

    .line 40
    const-string v2, "muzk_download"

    invoke-virtual {v1, v2}, Landroidx/work/OneTimeWorkRequest$Builder;->addTag(Ljava/lang/String;)Landroidx/work/WorkRequest$Builder;

    move-result-object v1

    check-cast v1, Landroidx/work/OneTimeWorkRequest$Builder;

    .line 41
    invoke-virtual {p2}, Lcom/muzk/app/data/RemoteTrack;->getPageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/muzk/app/download/Downloads;->tagFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/work/OneTimeWorkRequest$Builder;->addTag(Ljava/lang/String;)Landroidx/work/WorkRequest$Builder;

    move-result-object v1

    check-cast v1, Landroidx/work/OneTimeWorkRequest$Builder;

    .line 42
    invoke-virtual {v1}, Landroidx/work/OneTimeWorkRequest$Builder;->build()Landroidx/work/WorkRequest;

    move-result-object v1

    check-cast v1, Landroidx/work/OneTimeWorkRequest;

    .line 27
    nop

    .line 44
    .local v1, "request":Landroidx/work/OneTimeWorkRequest;
    sget-object v2, Landroidx/work/WorkManager;->Companion:Landroidx/work/WorkManager$Companion;

    invoke-virtual {v2, p1}, Landroidx/work/WorkManager$Companion;->getInstance(Landroid/content/Context;)Landroidx/work/WorkManager;

    move-result-object v2

    .line 45
    invoke-virtual {p2}, Lcom/muzk/app/data/RemoteTrack;->getPageUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/muzk/app/download/Downloads;->tagFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Landroidx/work/ExistingWorkPolicy;->KEEP:Landroidx/work/ExistingWorkPolicy;

    invoke-virtual {v2, v3, v4, v1}, Landroidx/work/WorkManager;->enqueueUniqueWork(Ljava/lang/String;Landroidx/work/ExistingWorkPolicy;Landroidx/work/OneTimeWorkRequest;)Landroidx/work/Operation;

    .line 47
    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/muzk/app/download/Downloads;->isOnUnmetered(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/muzk/app/download/Downloads$Enqueued;->WAITING_WIFI:Lcom/muzk/app/download/Downloads$Enqueued;

    goto :goto_2

    :cond_2
    sget-object v2, Lcom/muzk/app/download/Downloads$Enqueued;->STARTED:Lcom/muzk/app/download/Downloads$Enqueued;

    :goto_2
    return-object v2
.end method

.method public final tagFor(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "pageUrl"    # Ljava/lang/String;

    const-string v0, "pageUrl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dl_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
