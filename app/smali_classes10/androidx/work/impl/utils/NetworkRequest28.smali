.class public final Landroidx/work/impl/utils/NetworkRequest28;
.super Ljava/lang/Object;
.source "NetworkRequestCompat.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNetworkRequestCompat.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NetworkRequestCompat.kt\nandroidx/work/impl/utils/NetworkRequest28\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,145:1\n13600#2,2:146\n13600#2,2:148\n*S KotlinDebug\n*F\n+ 1 NetworkRequestCompat.kt\nandroidx/work/impl/utils/NetworkRequest28\n*L\n109#1:146,2\n122#1:148,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0015\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006H\u0007J\u001d\u0010\u0008\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006H\u0000\u00a2\u0006\u0002\u0008\nJ\u001d\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u000fH\u0000\u00a2\u0006\u0002\u0008\u0010J\u001d\u0010\u0011\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u000fH\u0000\u00a2\u0006\u0002\u0008\u0013\u00a8\u0006\u0014"
    }
    d2 = {
        "Landroidx/work/impl/utils/NetworkRequest28;",
        "",
        "()V",
        "createNetworkRequest",
        "Landroid/net/NetworkRequest;",
        "capabilities",
        "",
        "transports",
        "createNetworkRequestCompat",
        "Landroidx/work/impl/utils/NetworkRequestCompat;",
        "createNetworkRequestCompat$work_runtime_release",
        "hasCapability",
        "",
        "request",
        "capability",
        "",
        "hasCapability$work_runtime_release",
        "hasTransport",
        "transport",
        "hasTransport$work_runtime_release",
        "work-runtime_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/work/impl/utils/NetworkRequest28;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/work/impl/utils/NetworkRequest28;

    invoke-direct {v0}, Landroidx/work/impl/utils/NetworkRequest28;-><init>()V

    sput-object v0, Landroidx/work/impl/utils/NetworkRequest28;->INSTANCE:Landroidx/work/impl/utils/NetworkRequest28;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final createNetworkRequest([I[I)Landroid/net/NetworkRequest;
    .locals 14
    .param p0, "capabilities"    # [I
    .param p1, "transports"    # [I
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "capabilities"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transports"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 109
    .local v0, "networkRequest":Landroid/net/NetworkRequest$Builder;
    move-object v1, p0

    .local v1, "$this$forEach$iv":[I
    const/4 v2, 0x0

    .line 146
    .local v2, "$i$f$forEach":I
    array-length v3, v1

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_0

    aget v6, v1, v5

    .local v6, "element$iv":I
    move v7, v6

    .local v7, "it":I
    const/4 v8, 0x0

    .line 110
    .local v8, "$i$a$-forEach-NetworkRequest28$createNetworkRequest$1":I
    nop

    .line 111
    :try_start_0
    invoke-virtual {v0, v7}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 112
    :catch_0
    move-exception v9

    .line 118
    .local v9, "ex":Ljava/lang/IllegalArgumentException;
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object v10

    .line 119
    sget-object v11, Landroidx/work/impl/utils/NetworkRequestCompat;->Companion:Landroidx/work/impl/utils/NetworkRequestCompat$Companion;

    invoke-virtual {v11}, Landroidx/work/impl/utils/NetworkRequestCompat$Companion;->getTAG()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Ignoring adding capability \'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const/16 v13, 0x27

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object v13, v9

    check-cast v13, Ljava/lang/Throwable;

    invoke-virtual {v10, v11, v12, v13}, Landroidx/work/Logger;->warning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 121
    .end local v9    # "ex":Ljava/lang/IllegalArgumentException;
    :goto_1
    nop

    .line 146
    .end local v7    # "it":I
    .end local v8    # "$i$a$-forEach-NetworkRequest28$createNetworkRequest$1":I
    nop

    .end local v6    # "element$iv":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 147
    :cond_0
    nop

    .line 122
    .end local v1    # "$this$forEach$iv":[I
    .end local v2    # "$i$f$forEach":I
    move-object v1, p1

    .restart local v1    # "$this$forEach$iv":[I
    const/4 v2, 0x0

    .line 148
    .restart local v2    # "$i$f$forEach":I
    array-length v3, v1

    :goto_2
    if-ge v4, v3, :cond_1

    aget v5, v1, v4

    .local v5, "element$iv":I
    move v6, v5

    .local v6, "it":I
    const/4 v7, 0x0

    .line 122
    .local v7, "$i$a$-forEach-NetworkRequest28$createNetworkRequest$2":I
    invoke-virtual {v0, v6}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    .line 148
    .end local v6    # "it":I
    .end local v7    # "$i$a$-forEach-NetworkRequest28$createNetworkRequest$2":I
    nop

    .end local v5    # "element$iv":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 149
    :cond_1
    nop

    .line 123
    .end local v1    # "$this$forEach$iv":[I
    .end local v2    # "$i$f$forEach":I
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v1

    const-string v2, "networkRequest.build()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public final createNetworkRequestCompat$work_runtime_release([I[I)Landroidx/work/impl/utils/NetworkRequestCompat;
    .locals 2
    .param p1, "capabilities"    # [I
    .param p2, "transports"    # [I

    const-string v0, "capabilities"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transports"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    new-instance v0, Landroidx/work/impl/utils/NetworkRequestCompat;

    invoke-static {p1, p2}, Landroidx/work/impl/utils/NetworkRequest28;->createNetworkRequest([I[I)Landroid/net/NetworkRequest;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/work/impl/utils/NetworkRequestCompat;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final hasCapability$work_runtime_release(Landroid/net/NetworkRequest;I)Z
    .locals 1
    .param p1, "request"    # Landroid/net/NetworkRequest;
    .param p2, "capability"    # I

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    invoke-virtual {p1, p2}, Landroid/net/NetworkRequest;->hasCapability(I)Z

    move-result v0

    return v0
.end method

.method public final hasTransport$work_runtime_release(Landroid/net/NetworkRequest;I)Z
    .locals 1
    .param p1, "request"    # Landroid/net/NetworkRequest;
    .param p2, "transport"    # I

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    invoke-virtual {p1, p2}, Landroid/net/NetworkRequest;->hasTransport(I)Z

    move-result v0

    return v0
.end method
