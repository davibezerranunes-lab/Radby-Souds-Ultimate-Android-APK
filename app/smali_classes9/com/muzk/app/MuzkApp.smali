.class public final Lcom/muzk/app/MuzkApp;
.super Landroid/app/Application;
.source "MuzkApp.kt"

# interfaces
.implements Lcoil/ImageLoaderFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/muzk/app/MuzkApp$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMuzkApp.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MuzkApp.kt\ncom/muzk/app/MuzkApp\n+ 2 ImageLoader.kt\ncoil/ImageLoader$Builder\n+ 3 ComponentRegistry.kt\ncoil/ComponentRegistry$Builder\n*L\n1#1,91:1\n192#2:92\n146#3:93\n154#3:94\n*S KotlinDebug\n*F\n+ 1 MuzkApp.kt\ncom/muzk/app/MuzkApp\n*L\n75#1:92\n76#1:93\n77#1:94\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \u00102\u00020\u00012\u00020\u0002:\u0001\u0010B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0008\u0010\t\u001a\u00020\nH\u0016J\u0008\u0010\u000b\u001a\u00020\u000cH\u0002J\u0008\u0010\r\u001a\u00020\nH\u0002J\u0008\u0010\u000e\u001a\u00020\u000fH\u0016R\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/muzk/app/MuzkApp;",
        "Landroid/app/Application;",
        "Lcoil/ImageLoaderFactory;",
        "<init>",
        "()V",
        "appScope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "getAppScope",
        "()Lkotlinx/coroutines/CoroutineScope;",
        "onCreate",
        "",
        "initYtDlp",
        "Lkotlinx/coroutines/Job;",
        "createNotificationChannels",
        "newImageLoader",
        "Lcoil/ImageLoader;",
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
.field public static final CHANNEL_DOWNLOADS:Ljava/lang/String; = "downloads"

.field public static final Companion:Lcom/muzk/app/MuzkApp$Companion;

.field public static final KEY_LAST_UPDATE:Ljava/lang/String; = "ytdlp_last_update"

.field private static final TAG:Ljava/lang/String; = "Radby Sonds"

.field private static final ytdlReady:Lkotlinx/coroutines/CompletableDeferred;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/CompletableDeferred<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final appScope:Lkotlinx/coroutines/CoroutineScope;


# direct methods
.method public static synthetic $r8$lambda$Q6RlKpcpJW_5z5zzjo2D8N1XPeg(Landroid/app/Activity;I)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/muzk/app/MuzkApp;->onCreate$lambda$0(Landroid/app/Activity;I)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/muzk/app/MuzkApp$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/muzk/app/MuzkApp$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/muzk/app/MuzkApp;->Companion:Lcom/muzk/app/MuzkApp$Companion;

    .line 88
    const/4 v0, 0x1

    invoke-static {v1, v0, v1}, Lkotlinx/coroutines/CompletableDeferredKt;->CompletableDeferred$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableDeferred;

    move-result-object v0

    sput-object v0, Lcom/muzk/app/MuzkApp;->ytdlReady:Lkotlinx/coroutines/CompletableDeferred;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 24
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 26
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v0, v1, v0}, Lkotlinx/coroutines/SupervisorKt;->SupervisorJob$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v0

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    invoke-interface {v0, v1}, Lkotlinx/coroutines/CompletableJob;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    iput-object v0, p0, Lcom/muzk/app/MuzkApp;->appScope:Lkotlinx/coroutines/CoroutineScope;

    .line 24
    return-void
.end method

.method public static final synthetic access$getYtdlReady$cp()Lkotlinx/coroutines/CompletableDeferred;
    .locals 1

    .line 24
    sget-object v0, Lcom/muzk/app/MuzkApp;->ytdlReady:Lkotlinx/coroutines/CompletableDeferred;

    return-object v0
.end method

.method private final createNotificationChannels()V
    .locals 5

    .line 63
    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p0, v0}, Lcom/muzk/app/MuzkApp;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 64
    .local v0, "nm":Landroid/app/NotificationManager;
    nop

    .line 65
    new-instance v1, Landroid/app/NotificationChannel;

    .line 66
    nop

    .line 67
    sget v2, Lcom/muzk/app/R$string;->channel_downloads:I

    invoke-virtual {p0, v2}, Lcom/muzk/app/MuzkApp;->getString(I)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    .line 68
    nop

    .line 65
    const-string v3, "downloads"

    const/4 v4, 0x2

    invoke-direct {v1, v3, v2, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 64
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 71
    return-void
.end method

.method private final initYtDlp()Lkotlinx/coroutines/Job;
    .locals 6

    .line 42
    iget-object v0, p0, Lcom/muzk/app/MuzkApp;->appScope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v1, Lcom/muzk/app/MuzkApp$initYtDlp$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/muzk/app/MuzkApp$initYtDlp$1;-><init>(Lcom/muzk/app/MuzkApp;Lkotlin/coroutines/Continuation;)V

    move-object v3, v1

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v0

    .line 60
    return-object v0
.end method

.method private static final onCreate$lambda$0(Landroid/app/Activity;I)Z
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    const-string p1, "activity"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    sget-object p1, Lcom/muzk/app/ui/AppPalette;->INSTANCE:Lcom/muzk/app/ui/AppPalette;

    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/muzk/app/ui/AppPalette;->current(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "wallpaper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public final getAppScope()Lkotlinx/coroutines/CoroutineScope;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/muzk/app/MuzkApp;->appScope:Lkotlinx/coroutines/CoroutineScope;

    return-object v0
.end method

.method public newImageLoader()Lcoil/ImageLoader;
    .locals 9

    .line 74
    new-instance v0, Lcoil/ImageLoader$Builder;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Lcoil/ImageLoader$Builder;-><init>(Landroid/content/Context;)V

    .line 75
    nop

    .local v0, "this_$iv":Lcoil/ImageLoader$Builder;
    const/4 v1, 0x0

    .line 92
    .local v1, "$i$f$components":I
    new-instance v2, Lcoil/ComponentRegistry$Builder;

    invoke-direct {v2}, Lcoil/ComponentRegistry$Builder;-><init>()V

    move-object v3, v2

    .local v3, "$this$newImageLoader_u24lambda_u241":Lcoil/ComponentRegistry$Builder;
    const/4 v4, 0x0

    .line 76
    .local v4, "$i$a$-components-MuzkApp$newImageLoader$1":I
    new-instance v5, Lcom/muzk/app/data/AudioCoverKeyer;

    invoke-direct {v5}, Lcom/muzk/app/data/AudioCoverKeyer;-><init>()V

    check-cast v5, Lcoil/key/Keyer;

    .local v5, "keyer$iv":Lcoil/key/Keyer;
    move-object v6, v3

    .local v6, "this_$iv":Lcoil/ComponentRegistry$Builder;
    const/4 v7, 0x0

    .line 93
    .local v7, "$i$f$add":I
    const-class v8, Lcom/muzk/app/data/AudioCover;

    invoke-virtual {v6, v5, v8}, Lcoil/ComponentRegistry$Builder;->add(Lcoil/key/Keyer;Ljava/lang/Class;)Lcoil/ComponentRegistry$Builder;

    .line 77
    .end local v5    # "keyer$iv":Lcoil/key/Keyer;
    .end local v6    # "this_$iv":Lcoil/ComponentRegistry$Builder;
    .end local v7    # "$i$f$add":I
    new-instance v5, Lcom/muzk/app/data/AudioCoverFetcher$Factory;

    invoke-direct {v5}, Lcom/muzk/app/data/AudioCoverFetcher$Factory;-><init>()V

    check-cast v5, Lcoil/fetch/Fetcher$Factory;

    .local v5, "factory$iv":Lcoil/fetch/Fetcher$Factory;
    .restart local v6    # "this_$iv":Lcoil/ComponentRegistry$Builder;
    const/4 v7, 0x0

    .line 94
    .restart local v7    # "$i$f$add":I
    const-class v8, Lcom/muzk/app/data/AudioCover;

    invoke-virtual {v6, v5, v8}, Lcoil/ComponentRegistry$Builder;->add(Lcoil/fetch/Fetcher$Factory;Ljava/lang/Class;)Lcoil/ComponentRegistry$Builder;

    .line 78
    .end local v5    # "factory$iv":Lcoil/fetch/Fetcher$Factory;
    .end local v6    # "this_$iv":Lcoil/ComponentRegistry$Builder;
    .end local v7    # "$i$f$add":I
    nop

    .line 92
    .end local v3    # "$this$newImageLoader_u24lambda_u241":Lcoil/ComponentRegistry$Builder;
    .end local v4    # "$i$a$-components-MuzkApp$newImageLoader$1":I
    invoke-virtual {v2}, Lcoil/ComponentRegistry$Builder;->build()Lcoil/ComponentRegistry;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcoil/ImageLoader$Builder;->components(Lcoil/ComponentRegistry;)Lcoil/ImageLoader$Builder;

    move-result-object v0

    .line 79
    .end local v0    # "this_$iv":Lcoil/ImageLoader$Builder;
    .end local v1    # "$i$f$components":I
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcoil/ImageLoader$Builder;->crossfade(Z)Lcoil/ImageLoader$Builder;

    move-result-object v0

    .line 80
    invoke-virtual {v0}, Lcoil/ImageLoader$Builder;->build()Lcoil/ImageLoader;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .line 29
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 32
    move-object v0, p0

    check-cast v0, Landroid/app/Application;

    .line 33
    new-instance v1, Lcom/google/android/material/color/DynamicColorsOptions$Builder;

    invoke-direct {v1}, Lcom/google/android/material/color/DynamicColorsOptions$Builder;-><init>()V

    .line 34
    new-instance v2, Lcom/muzk/app/MuzkApp$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/muzk/app/MuzkApp$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v1, v2}, Lcom/google/android/material/color/DynamicColorsOptions$Builder;->setPrecondition(Lcom/google/android/material/color/DynamicColors$Precondition;)Lcom/google/android/material/color/DynamicColorsOptions$Builder;

    move-result-object v1

    .line 35
    invoke-virtual {v1}, Lcom/google/android/material/color/DynamicColorsOptions$Builder;->build()Lcom/google/android/material/color/DynamicColorsOptions;

    move-result-object v1

    .line 31
    invoke-static {v0, v1}, Lcom/google/android/material/color/DynamicColors;->applyToActivitiesIfAvailable(Landroid/app/Application;Lcom/google/android/material/color/DynamicColorsOptions;)V

    .line 37
    invoke-direct {p0}, Lcom/muzk/app/MuzkApp;->createNotificationChannels()V

    .line 38
    invoke-direct {p0}, Lcom/muzk/app/MuzkApp;->initYtDlp()Lkotlinx/coroutines/Job;

    .line 39
    return-void
.end method
