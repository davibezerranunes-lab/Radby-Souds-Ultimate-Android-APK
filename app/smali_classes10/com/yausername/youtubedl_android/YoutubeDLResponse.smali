.class public final Lcom/yausername/youtubedl_android/YoutubeDLResponse;
.super Ljava/lang/Object;
.source "YoutubeDLResponse.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0002\u0008\r\u0018\u00002\u00020\u0001B5\u0012\u000e\u0010\u0002\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\u0004\u0012\u0006\u0010\n\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u000bR\u0019\u0010\u0002\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\n\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u0011\u0010\t\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0011\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/yausername/youtubedl_android/YoutubeDLResponse;",
        "",
        "command",
        "",
        "",
        "exitCode",
        "",
        "elapsedTime",
        "",
        "out",
        "err",
        "(Ljava/util/List;IJLjava/lang/String;Ljava/lang/String;)V",
        "getCommand",
        "()Ljava/util/List;",
        "getElapsedTime",
        "()J",
        "getErr",
        "()Ljava/lang/String;",
        "getExitCode",
        "()I",
        "getOut",
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


# instance fields
.field private final command:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final elapsedTime:J

.field private final err:Ljava/lang/String;

.field private final exitCode:I

.field private final out:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/List;IJLjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "command"    # Ljava/util/List;
    .param p2, "exitCode"    # I
    .param p3, "elapsedTime"    # J
    .param p5, "out"    # Ljava/lang/String;
    .param p6, "err"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;IJ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "command"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "out"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "err"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/yausername/youtubedl_android/YoutubeDLResponse;->command:Ljava/util/List;

    .line 5
    iput p2, p0, Lcom/yausername/youtubedl_android/YoutubeDLResponse;->exitCode:I

    .line 6
    iput-wide p3, p0, Lcom/yausername/youtubedl_android/YoutubeDLResponse;->elapsedTime:J

    .line 7
    iput-object p5, p0, Lcom/yausername/youtubedl_android/YoutubeDLResponse;->out:Ljava/lang/String;

    .line 8
    iput-object p6, p0, Lcom/yausername/youtubedl_android/YoutubeDLResponse;->err:Ljava/lang/String;

    .line 3
    return-void
.end method


# virtual methods
.method public final getCommand()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/yausername/youtubedl_android/YoutubeDLResponse;->command:Ljava/util/List;

    return-object v0
.end method

.method public final getElapsedTime()J
    .locals 2

    .line 6
    iget-wide v0, p0, Lcom/yausername/youtubedl_android/YoutubeDLResponse;->elapsedTime:J

    return-wide v0
.end method

.method public final getErr()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/yausername/youtubedl_android/YoutubeDLResponse;->err:Ljava/lang/String;

    return-object v0
.end method

.method public final getExitCode()I
    .locals 1

    .line 5
    iget v0, p0, Lcom/yausername/youtubedl_android/YoutubeDLResponse;->exitCode:I

    return v0
.end method

.method public final getOut()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/yausername/youtubedl_android/YoutubeDLResponse;->out:Ljava/lang/String;

    return-object v0
.end method
