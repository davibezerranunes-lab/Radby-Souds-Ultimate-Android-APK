.class public final Lcom/yausername/youtubedl_android/StreamProcessExtractor;
.super Ljava/lang/Thread;
.source "StreamProcessExtractor.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yausername/youtubedl_android/StreamProcessExtractor$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStreamProcessExtractor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StreamProcessExtractor.kt\ncom/yausername/youtubedl_android/StreamProcessExtractor\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,98:1\n1#2:99\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\u0010\t\n\u0002\u0010\u000e\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\t\u0008\u0000\u0018\u0000 \u001d2\u00020\u0001:\u0001\u001dB7\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012 \u0010\u0006\u001a\u001c\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\u000cJ\u001c\u0010\u0014\u001a\u00020\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\n2\u0008\u0010\u0017\u001a\u0004\u0018\u00010\nH\u0002J\u0010\u0010\u0018\u001a\u00020\t2\u0006\u0010\u0019\u001a\u00020\nH\u0002J\u0010\u0010\u001a\u001a\u00020\u00082\u0006\u0010\u0019\u001a\u00020\nH\u0002J\u0010\u0010\u001b\u001a\u00020\u000b2\u0006\u0010\u0019\u001a\u00020\nH\u0002J\u0008\u0010\u001c\u001a\u00020\u000bH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R(\u0010\u0006\u001a\u001c\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000e\u001a\n \u0010*\u0004\u0018\u00010\u000f0\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0011\u001a\n \u0010*\u0004\u0018\u00010\u000f0\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0012\u001a\n \u0010*\u0004\u0018\u00010\u000f0\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/yausername/youtubedl_android/StreamProcessExtractor;",
        "Ljava/lang/Thread;",
        "buffer",
        "Ljava/lang/StringBuffer;",
        "stream",
        "Ljava/io/InputStream;",
        "callback",
        "Lkotlin/Function3;",
        "",
        "",
        "",
        "",
        "(Ljava/lang/StringBuffer;Ljava/io/InputStream;Lkotlin/jvm/functions/Function3;)V",
        "eta",
        "p",
        "Ljava/util/regex/Pattern;",
        "kotlin.jvm.PlatformType",
        "pAria2c",
        "pFFmpeg",
        "progress",
        "convertToSeconds",
        "",
        "minutes",
        "seconds",
        "getEta",
        "line",
        "getProgress",
        "processOutputLine",
        "run",
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
.field public static final Companion:Lcom/yausername/youtubedl_android/StreamProcessExtractor$Companion;

.field private static final ETA:J = -0x1L

.field private static final GROUP_MINUTES:I = 0x2

.field private static final GROUP_PERCENT:I = 0x1

.field private static final GROUP_SECONDS:I = 0x3

.field private static final PERCENT:F = -1.0f

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final buffer:Ljava/lang/StringBuffer;

.field private final callback:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "Ljava/lang/Float;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private eta:J

.field private final p:Ljava/util/regex/Pattern;

.field private final pAria2c:Ljava/util/regex/Pattern;

.field private final pFFmpeg:Ljava/util/regex/Pattern;

.field private progress:F

.field private final stream:Ljava/io/InputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/yausername/youtubedl_android/StreamProcessExtractor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yausername/youtubedl_android/StreamProcessExtractor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/yausername/youtubedl_android/StreamProcessExtractor;->Companion:Lcom/yausername/youtubedl_android/StreamProcessExtractor$Companion;

    .line 91
    const-class v0, Lcom/yausername/youtubedl_android/StreamProcessExtractor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yausername/youtubedl_android/StreamProcessExtractor;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/StringBuffer;Ljava/io/InputStream;Lkotlin/jvm/functions/Function3;)V
    .locals 2
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "stream"    # Ljava/io/InputStream;
    .param p3, "callback"    # Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuffer;",
            "Ljava/io/InputStream;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Ljava/lang/Float;",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "buffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stream"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/yausername/youtubedl_android/StreamProcessExtractor;->buffer:Ljava/lang/StringBuffer;

    .line 13
    iput-object p2, p0, Lcom/yausername/youtubedl_android/StreamProcessExtractor;->stream:Ljava/io/InputStream;

    .line 14
    iput-object p3, p0, Lcom/yausername/youtubedl_android/StreamProcessExtractor;->callback:Lkotlin/jvm/functions/Function3;

    .line 16
    const-string v0, "\\[download\\]\\s+(\\d+\\.\\d)% .* ETA (\\d+):(\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/yausername/youtubedl_android/StreamProcessExtractor;->p:Ljava/util/regex/Pattern;

    .line 18
    const-string v0, "\\[#\\w{6}.*\\((\\d*\\.*\\d+)%\\).*?((\\d+)m)*((\\d+)s)*]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/yausername/youtubedl_android/StreamProcessExtractor;->pAria2c:Ljava/util/regex/Pattern;

    .line 19
    const-string v0, "size=.*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/yausername/youtubedl_android/StreamProcessExtractor;->pFFmpeg:Ljava/util/regex/Pattern;

    .line 20
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/yausername/youtubedl_android/StreamProcessExtractor;->progress:F

    .line 21
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/yausername/youtubedl_android/StreamProcessExtractor;->eta:J

    .line 23
    nop

    .line 24
    invoke-virtual {p0}, Lcom/yausername/youtubedl_android/StreamProcessExtractor;->start()V

    .line 25
    nop

    .line 11
    return-void
.end method

.method private final convertToSeconds(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "minutes"    # Ljava/lang/String;
    .param p2, "seconds"    # Ljava/lang/String;

    .line 86
    if-nez p2, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    if-nez p1, :cond_1

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 87
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x3c

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private final getEta(Ljava/lang/String;)J
    .locals 7
    .param p1, "line"    # Ljava/lang/String;

    .line 71
    iget-object v0, p0, Lcom/yausername/youtubedl_android/StreamProcessExtractor;->p:Ljava/util/regex/Pattern;

    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 72
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    const/4 v2, 0x3

    if-eqz v1, :cond_0

    .line 73
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 74
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 72
    invoke-direct {p0, v1, v2}, Lcom/yausername/youtubedl_android/StreamProcessExtractor;->convertToSeconds(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 75
    move v2, v1

    .line 99
    .local v2, "it":I
    const/4 v3, 0x0

    .line 75
    .local v3, "$i$a$-also-StreamProcessExtractor$getEta$1":I
    int-to-long v4, v2

    iput-wide v4, p0, Lcom/yausername/youtubedl_android/StreamProcessExtractor;->eta:J

    .end local v2    # "it":I
    .end local v3    # "$i$a$-also-StreamProcessExtractor$getEta$1":I
    int-to-long v1, v1

    .line 72
    return-wide v1

    .line 76
    :cond_0
    iget-object v1, p0, Lcom/yausername/youtubedl_android/StreamProcessExtractor;->pAria2c:Ljava/util/regex/Pattern;

    move-object v3, p1

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 77
    .local v1, "mAria2c":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 78
    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 79
    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 77
    invoke-direct {p0, v2, v3}, Lcom/yausername/youtubedl_android/StreamProcessExtractor;->convertToSeconds(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 80
    move v3, v2

    .line 99
    .local v3, "it":I
    const/4 v4, 0x0

    .line 80
    .local v4, "$i$a$-also-StreamProcessExtractor$getEta$2":I
    int-to-long v5, v3

    iput-wide v5, p0, Lcom/yausername/youtubedl_android/StreamProcessExtractor;->eta:J

    .end local v3    # "it":I
    .end local v4    # "$i$a$-also-StreamProcessExtractor$getEta$2":I
    int-to-long v2, v2

    .line 77
    return-wide v2

    .line 82
    .end local v1    # "mAria2c":Ljava/util/regex/Matcher;
    :cond_1
    iget-wide v1, p0, Lcom/yausername/youtubedl_android/StreamProcessExtractor;->eta:J

    return-wide v1
.end method

.method private final getProgress(Ljava/lang/String;)F
    .locals 6
    .param p1, "line"    # Ljava/lang/String;

    .line 52
    iget-object v0, p0, Lcom/yausername/youtubedl_android/StreamProcessExtractor;->p:Ljava/util/regex/Pattern;

    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 53
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 54
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    move v2, v1

    .line 99
    .local v2, "it":F
    const/4 v3, 0x0

    .line 54
    .local v3, "$i$a$-also-StreamProcessExtractor$getProgress$1":I
    iput v2, p0, Lcom/yausername/youtubedl_android/StreamProcessExtractor;->progress:F

    .end local v2    # "it":F
    .end local v3    # "$i$a$-also-StreamProcessExtractor$getProgress$1":I
    return v1

    .line 57
    :cond_0
    iget-object v1, p0, Lcom/yausername/youtubedl_android/StreamProcessExtractor;->pAria2c:Ljava/util/regex/Pattern;

    move-object v3, p1

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 58
    .local v1, "mAria2c":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 59
    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    move v3, v2

    .line 99
    .local v3, "it":F
    const/4 v4, 0x0

    .line 59
    .local v4, "$i$a$-also-StreamProcessExtractor$getProgress$2":I
    iput v3, p0, Lcom/yausername/youtubedl_android/StreamProcessExtractor;->progress:F

    .end local v3    # "it":F
    .end local v4    # "$i$a$-also-StreamProcessExtractor$getProgress$2":I
    return v2

    .line 62
    :cond_1
    iget-object v2, p0, Lcom/yausername/youtubedl_android/StreamProcessExtractor;->pFFmpeg:Ljava/util/regex/Pattern;

    move-object v3, p1

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 63
    .local v2, "mFFmpeg":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 64
    const/high16 v3, 0x42c60000    # 99.0f

    move v4, v3

    .line 99
    .local v4, "it":F
    const/4 v5, 0x0

    .line 64
    .local v5, "$i$a$-also-StreamProcessExtractor$getProgress$3":I
    iput v4, p0, Lcom/yausername/youtubedl_android/StreamProcessExtractor;->progress:F

    .end local v4    # "it":F
    .end local v5    # "$i$a$-also-StreamProcessExtractor$getProgress$3":I
    return v3

    .line 67
    :cond_2
    iget v3, p0, Lcom/yausername/youtubedl_android/StreamProcessExtractor;->progress:F

    return v3
.end method

.method private final processOutputLine(Ljava/lang/String;)V
    .locals 5
    .param p1, "line"    # Ljava/lang/String;

    .line 48
    iget-object v0, p0, Lcom/yausername/youtubedl_android/StreamProcessExtractor;->callback:Lkotlin/jvm/functions/Function3;

    if-eqz v0, :cond_0

    .line 99
    .local v0, "it":Lkotlin/jvm/functions/Function3;
    const/4 v1, 0x0

    .line 48
    .local v1, "$i$a$-let-StreamProcessExtractor$processOutputLine$1":I
    invoke-direct {p0, p1}, Lcom/yausername/youtubedl_android/StreamProcessExtractor;->getProgress(Ljava/lang/String;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/yausername/youtubedl_android/StreamProcessExtractor;->getEta(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v2, v3, p1}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .end local v0    # "it":Lkotlin/jvm/functions/Function3;
    .end local v1    # "$i$a$-let-StreamProcessExtractor$processOutputLine$1":I
    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 28
    nop

    .line 29
    :try_start_0
    new-instance v0, Ljava/io/InputStreamReader;

    iget-object v1, p0, Lcom/yausername/youtubedl_android/StreamProcessExtractor;->stream:Ljava/io/InputStream;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    check-cast v0, Ljava/io/Reader;

    .line 30
    .local v0, "input":Ljava/io/Reader;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .local v1, "currentLine":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 32
    .local v2, "nextChar":I
    :goto_0
    invoke-virtual {v0}, Ljava/io/Reader;->read()I

    move-result v3

    move v4, v3

    .line 99
    .local v4, "it":I
    const/4 v5, 0x0

    .line 32
    .local v5, "$i$a$-also-StreamProcessExtractor$run$1":I
    move v2, v4

    .end local v4    # "it":I
    .end local v5    # "$i$a$-also-StreamProcessExtractor$run$1":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 33
    iget-object v3, p0, Lcom/yausername/youtubedl_android/StreamProcessExtractor;->buffer:Ljava/lang/StringBuffer;

    int-to-char v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 34
    const/16 v3, 0xd

    if-eq v2, v3, :cond_1

    const/16 v3, 0xa

    if-ne v2, v3, :cond_0

    iget-object v3, p0, Lcom/yausername/youtubedl_android/StreamProcessExtractor;->callback:Lkotlin/jvm/functions/Function3;

    if-eqz v3, :cond_0

    goto :goto_1

    .line 40
    :cond_0
    int-to-char v3, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 35
    :cond_1
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "currentLine.toString()"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    .local v3, "line":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/yausername/youtubedl_android/StreamProcessExtractor;->processOutputLine(Ljava/lang/String;)V

    .line 37
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->setLength(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    goto :goto_0

    .line 42
    .end local v0    # "input":Ljava/io/Reader;
    .end local v1    # "currentLine":Ljava/lang/StringBuilder;
    .end local v2    # "nextChar":I
    .end local v3    # "line":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 43
    .local v0, "e":Ljava/io/IOException;
    nop

    .line 45
    .end local v0    # "e":Ljava/io/IOException;
    :cond_2
    return-void
.end method
