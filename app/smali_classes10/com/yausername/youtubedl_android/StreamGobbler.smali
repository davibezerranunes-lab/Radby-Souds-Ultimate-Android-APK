.class public final Lcom/yausername/youtubedl_android/StreamGobbler;
.super Ljava/lang/Thread;
.source "StreamGobbler.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yausername/youtubedl_android/StreamGobbler$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStreamGobbler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StreamGobbler.kt\ncom/yausername/youtubedl_android/StreamGobbler\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,31:1\n1#2:32\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u0000\u0018\u0000 \t2\u00020\u0001:\u0001\tB\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\u0007\u001a\u00020\u0008H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/yausername/youtubedl_android/StreamGobbler;",
        "Ljava/lang/Thread;",
        "buffer",
        "Ljava/lang/StringBuffer;",
        "stream",
        "Ljava/io/InputStream;",
        "(Ljava/lang/StringBuffer;Ljava/io/InputStream;)V",
        "run",
        "",
        "Companion",
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
.field public static final Companion:Lcom/yausername/youtubedl_android/StreamGobbler$Companion;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final buffer:Ljava/lang/StringBuffer;

.field private final stream:Ljava/io/InputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/yausername/youtubedl_android/StreamGobbler$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yausername/youtubedl_android/StreamGobbler$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/yausername/youtubedl_android/StreamGobbler;->Companion:Lcom/yausername/youtubedl_android/StreamGobbler$Companion;

    .line 29
    const-class v0, Lcom/yausername/youtubedl_android/StreamGobbler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yausername/youtubedl_android/StreamGobbler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/StringBuffer;Ljava/io/InputStream;)V
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "stream"    # Ljava/io/InputStream;

    const-string v0, "buffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stream"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/yausername/youtubedl_android/StreamGobbler;->buffer:Ljava/lang/StringBuffer;

    iput-object p2, p0, Lcom/yausername/youtubedl_android/StreamGobbler;->stream:Ljava/io/InputStream;

    .line 12
    nop

    .line 13
    invoke-virtual {p0}, Lcom/yausername/youtubedl_android/StreamGobbler;->start()V

    .line 14
    nop

    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 17
    nop

    .line 18
    :try_start_0
    new-instance v0, Ljava/io/InputStreamReader;

    iget-object v1, p0, Lcom/yausername/youtubedl_android/StreamGobbler;->stream:Ljava/io/InputStream;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    check-cast v0, Ljava/io/Reader;

    .line 19
    .local v0, "in":Ljava/io/Reader;
    const/4 v1, 0x0

    .line 20
    .local v1, "nextChar":I
    :goto_0
    invoke-virtual {v0}, Ljava/io/Reader;->read()I

    move-result v2

    move v3, v2

    .line 32
    .local v3, "it":I
    const/4 v4, 0x0

    .line 20
    .local v4, "$i$a$-also-StreamGobbler$run$1":I
    move v1, v3

    .end local v3    # "it":I
    .end local v4    # "$i$a$-also-StreamGobbler$run$1":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 21
    iget-object v2, p0, Lcom/yausername/youtubedl_android/StreamGobbler;->buffer:Ljava/lang/StringBuffer;

    int-to-char v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 23
    .end local v0    # "in":Ljava/io/Reader;
    .end local v1    # "nextChar":I
    :catch_0
    move-exception v0

    .line 24
    .local v0, "e":Ljava/io/IOException;
    nop

    .line 26
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    return-void
.end method
