.class public final Lcom/yausername/youtubedl_android/YoutubeDLRequest;
.super Ljava/lang/Object;
.source "YoutubeDLRequest.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0010!\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0004\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0000\u0018\u00002\u00020\u0001B\u000f\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004B\u0015\u0008\u0016\u0012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0006\u00a2\u0006\u0002\u0010\u0007J\u0014\u0010\u000c\u001a\u00020\u00002\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0006J\u000e\u0010\u000e\u001a\u00020\u00002\u0006\u0010\u000f\u001a\u00020\u0003J\u0016\u0010\u000e\u001a\u00020\u00002\u0006\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u0011J\u0016\u0010\u000e\u001a\u00020\u00002\u0006\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u0003J\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0006J\u0018\u0010\u0013\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0018\u00010\u00062\u0006\u0010\u000f\u001a\u00020\u0003J\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u000f\u001a\u00020\u0003J\u000e\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u000f\u001a\u00020\u0003R\u0014\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00030\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/yausername/youtubedl_android/YoutubeDLRequest;",
        "",
        "url",
        "",
        "(Ljava/lang/String;)V",
        "urls",
        "",
        "(Ljava/util/List;)V",
        "customCommandList",
        "",
        "options",
        "Lcom/yausername/youtubedl_android/YoutubeDLOptions;",
        "addCommands",
        "commands",
        "addOption",
        "option",
        "argument",
        "",
        "buildCommand",
        "getArguments",
        "getOption",
        "hasOption",
        "",
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
.field private final customCommandList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final options:Lcom/yausername/youtubedl_android/YoutubeDLOptions;

.field private final urls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Lcom/yausername/youtubedl_android/YoutubeDLOptions;

    invoke-direct {v0}, Lcom/yausername/youtubedl_android/YoutubeDLOptions;-><init>()V

    iput-object v0, p0, Lcom/yausername/youtubedl_android/YoutubeDLRequest;->options:Lcom/yausername/youtubedl_android/YoutubeDLOptions;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/yausername/youtubedl_android/YoutubeDLRequest;->customCommandList:Ljava/util/List;

    .line 9
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/yausername/youtubedl_android/YoutubeDLRequest;->urls:Ljava/util/List;

    .line 10
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .param p1, "urls"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "urls"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Lcom/yausername/youtubedl_android/YoutubeDLOptions;

    invoke-direct {v0}, Lcom/yausername/youtubedl_android/YoutubeDLOptions;-><init>()V

    iput-object v0, p0, Lcom/yausername/youtubedl_android/YoutubeDLRequest;->options:Lcom/yausername/youtubedl_android/YoutubeDLOptions;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/yausername/youtubedl_android/YoutubeDLRequest;->customCommandList:Ljava/util/List;

    .line 13
    iput-object p1, p0, Lcom/yausername/youtubedl_android/YoutubeDLRequest;->urls:Ljava/util/List;

    .line 14
    return-void
.end method


# virtual methods
.method public final addCommands(Ljava/util/List;)Lcom/yausername/youtubedl_android/YoutubeDLRequest;
    .locals 2
    .param p1, "commands"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/yausername/youtubedl_android/YoutubeDLRequest;"
        }
    .end annotation

    const-string v0, "commands"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iget-object v0, p0, Lcom/yausername/youtubedl_android/YoutubeDLRequest;->customCommandList:Ljava/util/List;

    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 33
    return-object p0
.end method

.method public final addOption(Ljava/lang/String;)Lcom/yausername/youtubedl_android/YoutubeDLRequest;
    .locals 1
    .param p1, "option"    # Ljava/lang/String;

    const-string v0, "option"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    iget-object v0, p0, Lcom/yausername/youtubedl_android/YoutubeDLRequest;->options:Lcom/yausername/youtubedl_android/YoutubeDLOptions;

    invoke-virtual {v0, p1}, Lcom/yausername/youtubedl_android/YoutubeDLOptions;->addOption(Ljava/lang/String;)Lcom/yausername/youtubedl_android/YoutubeDLOptions;

    .line 28
    return-object p0
.end method

.method public final addOption(Ljava/lang/String;Ljava/lang/Number;)Lcom/yausername/youtubedl_android/YoutubeDLRequest;
    .locals 1
    .param p1, "option"    # Ljava/lang/String;
    .param p2, "argument"    # Ljava/lang/Number;

    const-string v0, "option"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "argument"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    iget-object v0, p0, Lcom/yausername/youtubedl_android/YoutubeDLRequest;->options:Lcom/yausername/youtubedl_android/YoutubeDLOptions;

    invoke-virtual {v0, p1, p2}, Lcom/yausername/youtubedl_android/YoutubeDLOptions;->addOption(Ljava/lang/String;Ljava/lang/Number;)Lcom/yausername/youtubedl_android/YoutubeDLOptions;

    .line 23
    return-object p0
.end method

.method public final addOption(Ljava/lang/String;Ljava/lang/String;)Lcom/yausername/youtubedl_android/YoutubeDLRequest;
    .locals 1
    .param p1, "option"    # Ljava/lang/String;
    .param p2, "argument"    # Ljava/lang/String;

    const-string v0, "option"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "argument"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    iget-object v0, p0, Lcom/yausername/youtubedl_android/YoutubeDLRequest;->options:Lcom/yausername/youtubedl_android/YoutubeDLOptions;

    invoke-virtual {v0, p1, p2}, Lcom/yausername/youtubedl_android/YoutubeDLOptions;->addOption(Ljava/lang/String;Ljava/lang/String;)Lcom/yausername/youtubedl_android/YoutubeDLOptions;

    .line 18
    return-object p0
.end method

.method public final buildCommand()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 50
    .local v0, "commandList":Ljava/util/List;
    iget-object v1, p0, Lcom/yausername/youtubedl_android/YoutubeDLRequest;->options:Lcom/yausername/youtubedl_android/YoutubeDLOptions;

    invoke-virtual {v1}, Lcom/yausername/youtubedl_android/YoutubeDLOptions;->buildOptions()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 51
    iget-object v1, p0, Lcom/yausername/youtubedl_android/YoutubeDLRequest;->customCommandList:Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 52
    iget-object v1, p0, Lcom/yausername/youtubedl_android/YoutubeDLRequest;->urls:Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 53
    return-object v0
.end method

.method public final getArguments(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "option"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "option"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/yausername/youtubedl_android/YoutubeDLRequest;->options:Lcom/yausername/youtubedl_android/YoutubeDLOptions;

    invoke-virtual {v0, p1}, Lcom/yausername/youtubedl_android/YoutubeDLOptions;->getArguments(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getOption(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "option"    # Ljava/lang/String;

    const-string v0, "option"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/yausername/youtubedl_android/YoutubeDLRequest;->options:Lcom/yausername/youtubedl_android/YoutubeDLOptions;

    invoke-virtual {v0, p1}, Lcom/yausername/youtubedl_android/YoutubeDLOptions;->getArgument(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final hasOption(Ljava/lang/String;)Z
    .locals 1
    .param p1, "option"    # Ljava/lang/String;

    const-string v0, "option"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/yausername/youtubedl_android/YoutubeDLRequest;->options:Lcom/yausername/youtubedl_android/YoutubeDLOptions;

    invoke-virtual {v0, p1}, Lcom/yausername/youtubedl_android/YoutubeDLOptions;->hasOption(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
