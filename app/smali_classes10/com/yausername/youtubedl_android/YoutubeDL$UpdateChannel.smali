.class public Lcom/yausername/youtubedl_android/YoutubeDL$UpdateChannel;
.super Ljava/lang/Object;
.source "YoutubeDL.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yausername/youtubedl_android/YoutubeDL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UpdateChannel"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yausername/youtubedl_android/YoutubeDL$UpdateChannel$STABLE;,
        Lcom/yausername/youtubedl_android/YoutubeDL$UpdateChannel$NIGHTLY;,
        Lcom/yausername/youtubedl_android/YoutubeDL$UpdateChannel$MASTER;,
        Lcom/yausername/youtubedl_android/YoutubeDL$UpdateChannel$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0008\u0008\u0016\u0018\u0000 \u00072\u00020\u0001:\u0004\u0007\u0008\t\nB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/yausername/youtubedl_android/YoutubeDL$UpdateChannel;",
        "",
        "apiUrl",
        "",
        "(Ljava/lang/String;)V",
        "getApiUrl",
        "()Ljava/lang/String;",
        "Companion",
        "MASTER",
        "NIGHTLY",
        "STABLE",
        "library_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/yausername/youtubedl_android/YoutubeDL$UpdateChannel$Companion;

.field public static final _MASTER:Lcom/yausername/youtubedl_android/YoutubeDL$UpdateChannel$MASTER;

.field public static final _NIGHTLY:Lcom/yausername/youtubedl_android/YoutubeDL$UpdateChannel$NIGHTLY;

.field public static final _STABLE:Lcom/yausername/youtubedl_android/YoutubeDL$UpdateChannel$STABLE;


# instance fields
.field private final apiUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/yausername/youtubedl_android/YoutubeDL$UpdateChannel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yausername/youtubedl_android/YoutubeDL$UpdateChannel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/yausername/youtubedl_android/YoutubeDL$UpdateChannel;->Companion:Lcom/yausername/youtubedl_android/YoutubeDL$UpdateChannel$Companion;

    .line 294
    sget-object v0, Lcom/yausername/youtubedl_android/YoutubeDL$UpdateChannel$STABLE;->INSTANCE:Lcom/yausername/youtubedl_android/YoutubeDL$UpdateChannel$STABLE;

    sput-object v0, Lcom/yausername/youtubedl_android/YoutubeDL$UpdateChannel;->_STABLE:Lcom/yausername/youtubedl_android/YoutubeDL$UpdateChannel$STABLE;

    .line 297
    sget-object v0, Lcom/yausername/youtubedl_android/YoutubeDL$UpdateChannel$NIGHTLY;->INSTANCE:Lcom/yausername/youtubedl_android/YoutubeDL$UpdateChannel$NIGHTLY;

    sput-object v0, Lcom/yausername/youtubedl_android/YoutubeDL$UpdateChannel;->_NIGHTLY:Lcom/yausername/youtubedl_android/YoutubeDL$UpdateChannel$NIGHTLY;

    .line 300
    sget-object v0, Lcom/yausername/youtubedl_android/YoutubeDL$UpdateChannel$MASTER;->INSTANCE:Lcom/yausername/youtubedl_android/YoutubeDL$UpdateChannel$MASTER;

    sput-object v0, Lcom/yausername/youtubedl_android/YoutubeDL$UpdateChannel;->_MASTER:Lcom/yausername/youtubedl_android/YoutubeDL$UpdateChannel$MASTER;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "apiUrl"    # Ljava/lang/String;

    const-string v0, "apiUrl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yausername/youtubedl_android/YoutubeDL$UpdateChannel;->apiUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getApiUrl()Ljava/lang/String;
    .locals 1

    .line 285
    iget-object v0, p0, Lcom/yausername/youtubedl_android/YoutubeDL$UpdateChannel;->apiUrl:Ljava/lang/String;

    return-object v0
.end method
