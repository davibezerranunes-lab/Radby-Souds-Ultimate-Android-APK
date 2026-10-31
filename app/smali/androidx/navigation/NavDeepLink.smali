.class public final Landroidx/navigation/NavDeepLink;
.super Ljava/lang/Object;
.source "NavDeepLink.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/navigation/NavDeepLink$Builder;,
        Landroidx/navigation/NavDeepLink$Companion;,
        Landroidx/navigation/NavDeepLink$MimeType;,
        Landroidx/navigation/NavDeepLink$ParamQuery;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNavDeepLink.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NavDeepLink.kt\nandroidx/navigation/NavDeepLink\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,761:1\n1360#2:762\n1446#2,5:763\n1559#2:768\n1590#2,4:769\n1559#2:773\n1590#2,4:774\n1855#2,2:780\n1855#2:782\n1559#2:783\n1590#2,4:784\n1856#2:788\n215#3,2:778\n1#4:789\n*S KotlinDebug\n*F\n+ 1 NavDeepLink.kt\nandroidx/navigation/NavDeepLink\n*L\n86#1:762\n86#1:763,5\n232#1:768\n232#1:769,4\n249#1:773\n249#1:774,4\n310#1:780,2\n319#1:782\n331#1:783\n331#1:784,4\n319#1:788\n271#1:778,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u008a\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0010!\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u0012\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0011\u0018\u0000 m2\u00020\u0001:\u0004lmnoB\u000f\u0008\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004B%\u0008\u0000\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0008J*\u0010;\u001a\u00020<2\u0006\u0010\u0002\u001a\u00020\u00032\u000c\u0010=\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00102\n\u0010>\u001a\u00060?j\u0002`@H\u0002J\u0017\u0010A\u001a\u00020B2\u0008\u0010C\u001a\u0004\u0018\u00010DH\u0000\u00a2\u0006\u0002\u0008EJ\u0013\u0010F\u001a\u00020\"2\u0008\u0010G\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J(\u0010H\u001a\u0004\u0018\u00010I2\u0006\u0010J\u001a\u00020D2\u0014\u0010K\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010M0LH\u0007J-\u0010N\u001a\u00020I2\u0008\u0010J\u001a\u0004\u0018\u00010D2\u0014\u0010K\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010M0LH\u0000\u00a2\u0006\u0002\u0008OJ.\u0010P\u001a\u00020\"2\u0006\u0010Q\u001a\u00020R2\u0006\u0010S\u001a\u00020I2\u0014\u0010K\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010M0LH\u0002J.\u0010T\u001a\u00020\"2\u0006\u0010J\u001a\u00020D2\u0006\u0010S\u001a\u00020I2\u0014\u0010K\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010M0LH\u0002J0\u0010U\u001a\u00020<2\u0008\u0010V\u001a\u0004\u0018\u00010\u00032\u0006\u0010S\u001a\u00020I2\u0014\u0010K\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010M0LH\u0002J\u0010\u0010W\u001a\u00020B2\u0006\u0010\u0007\u001a\u00020\u0003H\u0007J\u0008\u0010X\u001a\u00020BH\u0016J\u0012\u0010Y\u001a\u00020\"2\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0003H\u0002J\u0012\u0010Z\u001a\u00020\"2\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0003H\u0002J\u0012\u0010[\u001a\u00020\"2\u0008\u0010\u0002\u001a\u0004\u0018\u00010DH\u0002J\u0015\u0010\\\u001a\u00020\"2\u0006\u0010\u0002\u001a\u00020DH\u0000\u00a2\u0006\u0002\u0008]J\u0015\u0010\\\u001a\u00020\"2\u0006\u0010^\u001a\u00020_H\u0000\u00a2\u0006\u0002\u0008]J*\u0010`\u001a\u00020<2\u0006\u0010S\u001a\u00020I2\u0006\u0010a\u001a\u00020\u00032\u0006\u0010b\u001a\u00020\u00032\u0008\u0010c\u001a\u0004\u0018\u00010MH\u0002J,\u0010d\u001a\u00020\"2\u0006\u0010S\u001a\u00020I2\u0006\u0010a\u001a\u00020\u00032\u0008\u0010b\u001a\u0004\u0018\u00010\u00032\u0008\u0010c\u001a\u0004\u0018\u00010MH\u0002J\u001c\u0010e\u001a\u0016\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u0010\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0015H\u0002J<\u0010f\u001a\u00020\"2\u000c\u0010g\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u000c2\u0006\u0010h\u001a\u0002062\u0006\u0010S\u001a\u00020I2\u0014\u0010K\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010M0LH\u0002J\u0008\u0010i\u001a\u00020<H\u0002J\u0008\u0010j\u001a\u00020<H\u0002J\u0014\u0010k\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020605H\u0002R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u001a\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u000c8@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000eR!\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00108BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\u0013\u001a\u0004\u0008\u0011\u0010\u000eR/\u0010\u0014\u001a\u0016\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u0010\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00158BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0018\u0010\u0013\u001a\u0004\u0008\u0016\u0010\u0017R\u001d\u0010\u0019\u001a\u0004\u0018\u00010\u001a8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001d\u0010\u0013\u001a\u0004\u0008\u001b\u0010\u001cR\u001d\u0010\u001e\u001a\u0004\u0018\u00010\u00038BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008 \u0010\u0013\u001a\u0004\u0008\u001f\u0010\nR&\u0010#\u001a\u00020\"2\u0006\u0010!\u001a\u00020\"8G@@X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008#\u0010$\"\u0004\u0008%\u0010&R\u001b\u0010\'\u001a\u00020\"8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008(\u0010\u0013\u001a\u0004\u0008\'\u0010$R\u000e\u0010)\u001a\u00020\"X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008*\u0010\nR\u001d\u0010+\u001a\u0004\u0018\u00010\u001a8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008-\u0010\u0013\u001a\u0004\u0008,\u0010\u001cR\u0010\u0010.\u001a\u0004\u0018\u00010\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010/\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001d\u00100\u001a\u0004\u0018\u00010\u001a8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00082\u0010\u0013\u001a\u0004\u00081\u0010\u001cR\u0010\u00103\u001a\u0004\u0018\u00010\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\'\u00104\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u000206058BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00089\u0010\u0013\u001a\u0004\u00087\u00108R\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008:\u0010\n\u00a8\u0006p"
    }
    d2 = {
        "Landroidx/navigation/NavDeepLink;",
        "",
        "uri",
        "",
        "(Ljava/lang/String;)V",
        "uriPattern",
        "action",
        "mimeType",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "getAction",
        "()Ljava/lang/String;",
        "argumentsNames",
        "",
        "getArgumentsNames$navigation_common_release",
        "()Ljava/util/List;",
        "fragArgs",
        "",
        "getFragArgs",
        "fragArgs$delegate",
        "Lkotlin/Lazy;",
        "fragArgsAndRegex",
        "Lkotlin/Pair;",
        "getFragArgsAndRegex",
        "()Lkotlin/Pair;",
        "fragArgsAndRegex$delegate",
        "fragPattern",
        "Ljava/util/regex/Pattern;",
        "getFragPattern",
        "()Ljava/util/regex/Pattern;",
        "fragPattern$delegate",
        "fragRegex",
        "getFragRegex",
        "fragRegex$delegate",
        "<set-?>",
        "",
        "isExactDeepLink",
        "()Z",
        "setExactDeepLink$navigation_common_release",
        "(Z)V",
        "isParameterizedQuery",
        "isParameterizedQuery$delegate",
        "isSingleQueryParamValueOnly",
        "getMimeType",
        "mimeTypePattern",
        "getMimeTypePattern",
        "mimeTypePattern$delegate",
        "mimeTypeRegex",
        "pathArgs",
        "pathPattern",
        "getPathPattern",
        "pathPattern$delegate",
        "pathRegex",
        "queryArgsMap",
        "",
        "Landroidx/navigation/NavDeepLink$ParamQuery;",
        "getQueryArgsMap",
        "()Ljava/util/Map;",
        "queryArgsMap$delegate",
        "getUriPattern",
        "buildRegex",
        "",
        "args",
        "uriRegex",
        "Ljava/lang/StringBuilder;",
        "Lkotlin/text/StringBuilder;",
        "calculateMatchingPathSegments",
        "",
        "requestedLink",
        "Landroid/net/Uri;",
        "calculateMatchingPathSegments$navigation_common_release",
        "equals",
        "other",
        "getMatchingArguments",
        "Landroid/os/Bundle;",
        "deepLink",
        "arguments",
        "",
        "Landroidx/navigation/NavArgument;",
        "getMatchingPathAndQueryArgs",
        "getMatchingPathAndQueryArgs$navigation_common_release",
        "getMatchingPathArguments",
        "matcher",
        "Ljava/util/regex/Matcher;",
        "bundle",
        "getMatchingQueryArguments",
        "getMatchingUriFragment",
        "fragment",
        "getMimeTypeMatchRating",
        "hashCode",
        "matchAction",
        "matchMimeType",
        "matchUri",
        "matches",
        "matches$navigation_common_release",
        "deepLinkRequest",
        "Landroidx/navigation/NavDeepLinkRequest;",
        "parseArgument",
        "name",
        "value",
        "argument",
        "parseArgumentForRepeatedParam",
        "parseFragment",
        "parseInputParams",
        "inputParams",
        "storedParam",
        "parseMime",
        "parsePath",
        "parseQuery",
        "Builder",
        "Companion",
        "MimeType",
        "ParamQuery",
        "navigation-common_release"
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
.field private static final Companion:Landroidx/navigation/NavDeepLink$Companion;

.field private static final FILL_IN_PATTERN:Ljava/util/regex/Pattern;

.field private static final SCHEME_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private final action:Ljava/lang/String;

.field private final fragArgs$delegate:Lkotlin/Lazy;

.field private final fragArgsAndRegex$delegate:Lkotlin/Lazy;

.field private final fragPattern$delegate:Lkotlin/Lazy;

.field private final fragRegex$delegate:Lkotlin/Lazy;

.field private isExactDeepLink:Z

.field private final isParameterizedQuery$delegate:Lkotlin/Lazy;

.field private isSingleQueryParamValueOnly:Z

.field private final mimeType:Ljava/lang/String;

.field private final mimeTypePattern$delegate:Lkotlin/Lazy;

.field private mimeTypeRegex:Ljava/lang/String;

.field private final pathArgs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final pathPattern$delegate:Lkotlin/Lazy;

.field private pathRegex:Ljava/lang/String;

.field private final queryArgsMap$delegate:Lkotlin/Lazy;

.field private final uriPattern:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/navigation/NavDeepLink$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/navigation/NavDeepLink$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/navigation/NavDeepLink;->Companion:Landroidx/navigation/NavDeepLink$Companion;

    .line 660
    const-string v0, "^[a-zA-Z]+[+\\w\\-.]*:"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/navigation/NavDeepLink;->SCHEME_PATTERN:Ljava/util/regex/Pattern;

    .line 661
    const-string v0, "\\{(.+?)\\}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/navigation/NavDeepLink;->FILL_IN_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;

    const-string/jumbo v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Landroidx/navigation/NavDeepLink;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "uriPattern"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "mimeType"    # Ljava/lang/String;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Landroidx/navigation/NavDeepLink;->uriPattern:Ljava/lang/String;

    .line 48
    iput-object p2, p0, Landroidx/navigation/NavDeepLink;->action:Ljava/lang/String;

    .line 54
    iput-object p3, p0, Landroidx/navigation/NavDeepLink;->mimeType:Ljava/lang/String;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Landroidx/navigation/NavDeepLink;->pathArgs:Ljava/util/List;

    .line 59
    new-instance v0, Landroidx/navigation/NavDeepLink$pathPattern$2;

    invoke-direct {v0, p0}, Landroidx/navigation/NavDeepLink$pathPattern$2;-><init>(Landroidx/navigation/NavDeepLink;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Landroidx/navigation/NavDeepLink;->pathPattern$delegate:Lkotlin/Lazy;

    .line 64
    new-instance v0, Landroidx/navigation/NavDeepLink$isParameterizedQuery$2;

    invoke-direct {v0, p0}, Landroidx/navigation/NavDeepLink$isParameterizedQuery$2;-><init>(Landroidx/navigation/NavDeepLink;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Landroidx/navigation/NavDeepLink;->isParameterizedQuery$delegate:Lkotlin/Lazy;

    .line 67
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Landroidx/navigation/NavDeepLink$queryArgsMap$2;

    invoke-direct {v1, p0}, Landroidx/navigation/NavDeepLink$queryArgsMap$2;-><init>(Landroidx/navigation/NavDeepLink;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Landroidx/navigation/NavDeepLink;->queryArgsMap$delegate:Lkotlin/Lazy;

    .line 72
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Landroidx/navigation/NavDeepLink$fragArgsAndRegex$2;

    invoke-direct {v1, p0}, Landroidx/navigation/NavDeepLink$fragArgsAndRegex$2;-><init>(Landroidx/navigation/NavDeepLink;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Landroidx/navigation/NavDeepLink;->fragArgsAndRegex$delegate:Lkotlin/Lazy;

    .line 74
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Landroidx/navigation/NavDeepLink$fragArgs$2;

    invoke-direct {v1, p0}, Landroidx/navigation/NavDeepLink$fragArgs$2;-><init>(Landroidx/navigation/NavDeepLink;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Landroidx/navigation/NavDeepLink;->fragArgs$delegate:Lkotlin/Lazy;

    .line 75
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Landroidx/navigation/NavDeepLink$fragRegex$2;

    invoke-direct {v1, p0}, Landroidx/navigation/NavDeepLink$fragRegex$2;-><init>(Landroidx/navigation/NavDeepLink;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Landroidx/navigation/NavDeepLink;->fragRegex$delegate:Lkotlin/Lazy;

    .line 76
    new-instance v0, Landroidx/navigation/NavDeepLink$fragPattern$2;

    invoke-direct {v0, p0}, Landroidx/navigation/NavDeepLink$fragPattern$2;-><init>(Landroidx/navigation/NavDeepLink;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Landroidx/navigation/NavDeepLink;->fragPattern$delegate:Lkotlin/Lazy;

    .line 82
    new-instance v0, Landroidx/navigation/NavDeepLink$mimeTypePattern$2;

    invoke-direct {v0, p0}, Landroidx/navigation/NavDeepLink$mimeTypePattern$2;-><init>(Landroidx/navigation/NavDeepLink;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Landroidx/navigation/NavDeepLink;->mimeTypePattern$delegate:Lkotlin/Lazy;

    .line 756
    nop

    .line 757
    invoke-direct {p0}, Landroidx/navigation/NavDeepLink;->parsePath()V

    .line 758
    invoke-direct {p0}, Landroidx/navigation/NavDeepLink;->parseMime()V

    .line 759
    nop

    .line 36
    return-void
.end method

.method public static final synthetic access$getFragArgsAndRegex(Landroidx/navigation/NavDeepLink;)Lkotlin/Pair;
    .locals 1
    .param p0, "$this"    # Landroidx/navigation/NavDeepLink;

    .line 35
    invoke-direct {p0}, Landroidx/navigation/NavDeepLink;->getFragArgsAndRegex()Lkotlin/Pair;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getFragRegex(Landroidx/navigation/NavDeepLink;)Ljava/lang/String;
    .locals 1
    .param p0, "$this"    # Landroidx/navigation/NavDeepLink;

    .line 35
    invoke-direct {p0}, Landroidx/navigation/NavDeepLink;->getFragRegex()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getMimeTypeRegex$p(Landroidx/navigation/NavDeepLink;)Ljava/lang/String;
    .locals 1
    .param p0, "$this"    # Landroidx/navigation/NavDeepLink;

    .line 35
    iget-object v0, p0, Landroidx/navigation/NavDeepLink;->mimeTypeRegex:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getPathRegex$p(Landroidx/navigation/NavDeepLink;)Ljava/lang/String;
    .locals 1
    .param p0, "$this"    # Landroidx/navigation/NavDeepLink;

    .line 35
    iget-object v0, p0, Landroidx/navigation/NavDeepLink;->pathRegex:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$parseFragment(Landroidx/navigation/NavDeepLink;)Lkotlin/Pair;
    .locals 1
    .param p0, "$this"    # Landroidx/navigation/NavDeepLink;

    .line 35
    invoke-direct {p0}, Landroidx/navigation/NavDeepLink;->parseFragment()Lkotlin/Pair;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$parseQuery(Landroidx/navigation/NavDeepLink;)Ljava/util/Map;
    .locals 1
    .param p0, "$this"    # Landroidx/navigation/NavDeepLink;

    .line 35
    invoke-direct {p0}, Landroidx/navigation/NavDeepLink;->parseQuery()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private final buildRegex(Ljava/lang/String;Ljava/util/List;Ljava/lang/StringBuilder;)V
    .locals 5
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "args"    # Ljava/util/List;
    .param p3, "uriRegex"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/StringBuilder;",
            ")V"
        }
    .end annotation

    .line 100
    sget-object v0, Landroidx/navigation/NavDeepLink;->FILL_IN_PATTERN:Ljava/util/regex/Pattern;

    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 101
    .local v0, "matcher":Ljava/util/regex/Matcher;
    const/4 v1, 0x0

    .line 102
    .local v1, "appendPos":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    const-string/jumbo v3, "substring(...)"

    if-eqz v2, :cond_1

    .line 103
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "null cannot be cast to non-null type kotlin.String"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    .local v2, "argName":Ljava/lang/String;
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v4

    if-le v4, v1, :cond_0

    .line 107
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v4

    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    :cond_0
    const-string v3, "([^/]*?|)"

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    .end local v2    # "argName":Ljava/lang/String;
    goto :goto_0

    .line 113
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 115
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    :cond_2
    return-void
.end method

.method private final getFragArgs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Landroidx/navigation/NavDeepLink;->fragArgs$delegate:Lkotlin/Lazy;

    .line 74
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method private final getFragArgsAndRegex()Lkotlin/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Pair<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Landroidx/navigation/NavDeepLink;->fragArgsAndRegex$delegate:Lkotlin/Lazy;

    .line 72
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/Pair;

    return-object v0
.end method

.method private final getFragPattern()Ljava/util/regex/Pattern;
    .locals 1

    .line 76
    iget-object v0, p0, Landroidx/navigation/NavDeepLink;->fragPattern$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/regex/Pattern;

    return-object v0
.end method

.method private final getFragRegex()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Landroidx/navigation/NavDeepLink;->fragRegex$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private final getMatchingPathArguments(Ljava/util/regex/Matcher;Landroid/os/Bundle;Ljava/util/Map;)Z
    .locals 18
    .param p1, "matcher"    # Ljava/util/regex/Matcher;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "arguments"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/regex/Matcher;",
            "Landroid/os/Bundle;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/navigation/NavArgument;",
            ">;)Z"
        }
    .end annotation

    .line 249
    move-object/from16 v1, p0

    iget-object v0, v1, Landroidx/navigation/NavDeepLink;->pathArgs:Ljava/util/List;

    move-object v2, v0

    check-cast v2, Ljava/lang/Iterable;

    .local v2, "$this$mapIndexed$iv":Ljava/lang/Iterable;
    const/4 v3, 0x0

    .line 773
    .local v3, "$i$f$mapIndexed":I
    new-instance v0, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v2, v4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .local v0, "destination$iv$iv":Ljava/util/Collection;
    move-object v4, v2

    .local v4, "$this$mapIndexedTo$iv$iv":Ljava/lang/Iterable;
    move-object v5, v0

    .end local v0    # "destination$iv$iv":Ljava/util/Collection;
    .local v5, "destination$iv$iv":Ljava/util/Collection;
    const/4 v6, 0x0

    .line 774
    .local v6, "$i$f$mapIndexedTo":I
    const/4 v0, 0x0

    .line 775
    .local v0, "index$iv$iv":I
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 776
    .local v8, "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v9, v0, 0x1

    .end local v0    # "index$iv$iv":I
    .local v9, "index$iv$iv":I
    if-gez v0, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_0
    move-object v10, v8

    check-cast v10, Ljava/lang/String;

    .local v10, "argumentName":Ljava/lang/String;
    move v11, v0

    .local v11, "index":I
    const/4 v12, 0x0

    .line 250
    .local v12, "$i$a$-mapIndexed-NavDeepLink$getMatchingPathArguments$1":I
    add-int/lit8 v0, v11, 0x1

    move-object/from16 v13, p1

    invoke-virtual {v13, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 251
    .local v14, "value":Ljava/lang/String;
    move-object/from16 v15, p3

    invoke-interface {v15, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v2

    .end local v2    # "$this$mapIndexed$iv":Ljava/lang/Iterable;
    .local v16, "$this$mapIndexed$iv":Ljava/lang/Iterable;
    move-object v2, v0

    check-cast v2, Landroidx/navigation/NavArgument;

    .line 252
    .local v2, "argument":Landroidx/navigation/NavArgument;
    nop

    .line 253
    :try_start_0
    const-string/jumbo v0, "value"

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move/from16 v17, v3

    move-object/from16 v3, p2

    .end local v3    # "$i$f$mapIndexed":I
    .local v17, "$i$f$mapIndexed":I
    :try_start_1
    invoke-direct {v1, v3, v10, v14, v2}, Landroidx/navigation/NavDeepLink;->parseArgument(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroidx/navigation/NavArgument;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 260
    nop

    .end local v2    # "argument":Landroidx/navigation/NavArgument;
    .end local v10    # "argumentName":Ljava/lang/String;
    .end local v11    # "index":I
    .end local v12    # "$i$a$-mapIndexed-NavDeepLink$getMatchingPathArguments$1":I
    .end local v14    # "value":Ljava/lang/String;
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 776
    invoke-interface {v5, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move v0, v9

    move-object/from16 v2, v16

    move/from16 v3, v17

    goto :goto_0

    .line 254
    .restart local v2    # "argument":Landroidx/navigation/NavArgument;
    .restart local v10    # "argumentName":Ljava/lang/String;
    .restart local v11    # "index":I
    .restart local v12    # "$i$a$-mapIndexed-NavDeepLink$getMatchingPathArguments$1":I
    .restart local v14    # "value":Ljava/lang/String;
    :catch_0
    move-exception v0

    goto :goto_1

    .end local v17    # "$i$f$mapIndexed":I
    .restart local v3    # "$i$f$mapIndexed":I
    :catch_1
    move-exception v0

    move/from16 v17, v3

    move-object/from16 v3, p2

    .line 258
    .end local v3    # "$i$f$mapIndexed":I
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    .restart local v17    # "$i$f$mapIndexed":I
    :goto_1
    const/4 v7, 0x0

    return v7

    .line 777
    .end local v8    # "item$iv$iv":Ljava/lang/Object;
    .end local v9    # "index$iv$iv":I
    .end local v10    # "argumentName":Ljava/lang/String;
    .end local v11    # "index":I
    .end local v12    # "$i$a$-mapIndexed-NavDeepLink$getMatchingPathArguments$1":I
    .end local v14    # "value":Ljava/lang/String;
    .end local v16    # "$this$mapIndexed$iv":Ljava/lang/Iterable;
    .end local v17    # "$i$f$mapIndexed":I
    .local v0, "index$iv$iv":I
    .local v2, "$this$mapIndexed$iv":Ljava/lang/Iterable;
    .restart local v3    # "$i$f$mapIndexed":I
    :cond_1
    nop

    .end local v0    # "index$iv$iv":I
    .end local v4    # "$this$mapIndexedTo$iv$iv":Ljava/lang/Iterable;
    .end local v5    # "destination$iv$iv":Ljava/util/Collection;
    .end local v6    # "$i$f$mapIndexedTo":I
    move-object v0, v5

    check-cast v0, Ljava/util/List;

    .line 773
    nop

    .line 262
    .end local v2    # "$this$mapIndexed$iv":Ljava/lang/Iterable;
    .end local v3    # "$i$f$mapIndexed":I
    const/4 v0, 0x1

    return v0
.end method

.method private final getMatchingQueryArguments(Landroid/net/Uri;Landroid/os/Bundle;Ljava/util/Map;)Z
    .locals 11
    .param p1, "deepLink"    # Landroid/net/Uri;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "arguments"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Landroid/os/Bundle;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/navigation/NavArgument;",
            ">;)Z"
        }
    .end annotation

    .line 271
    invoke-direct {p0}, Landroidx/navigation/NavDeepLink;->getQueryArgsMap()Ljava/util/Map;

    move-result-object v0

    .local v0, "$this$forEach$iv":Ljava/util/Map;
    const/4 v1, 0x0

    .line 778
    .local v1, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .local v3, "element$iv":Ljava/util/Map$Entry;
    move-object v4, v3

    .local v4, "entry":Ljava/util/Map$Entry;
    const/4 v5, 0x0

    .line 272
    .local v5, "$i$a$-forEach-NavDeepLink$getMatchingQueryArguments$1":I
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 273
    .local v6, "paramName":Ljava/lang/String;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/navigation/NavDeepLink$ParamQuery;

    .line 279
    .local v7, "storedParam":Landroidx/navigation/NavDeepLink$ParamQuery;
    invoke-virtual {p1, v6}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    .line 280
    .local v8, "inputParams":Ljava/util/List;
    iget-boolean v9, p0, Landroidx/navigation/NavDeepLink;->isSingleQueryParamValueOnly:Z

    if-eqz v9, :cond_0

    .line 283
    invoke-virtual {p1}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v9

    .line 284
    .local v9, "argValue":Ljava/lang/String;
    if-eqz v9, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 285
    invoke-static {v9}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    .line 288
    .end local v9    # "argValue":Ljava/lang/String;
    :cond_0
    const-string v9, "inputParams"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v8, v7, p2, p3}, Landroidx/navigation/NavDeepLink;->parseInputParams(Ljava/util/List;Landroidx/navigation/NavDeepLink$ParamQuery;Landroid/os/Bundle;Ljava/util/Map;)Z

    move-result v9

    .line 289
    .local v9, "parseSuccess":Z
    if-nez v9, :cond_1

    const/4 v2, 0x0

    return v2

    .line 290
    :cond_1
    nop

    .line 778
    .end local v4    # "entry":Ljava/util/Map$Entry;
    .end local v5    # "$i$a$-forEach-NavDeepLink$getMatchingQueryArguments$1":I
    .end local v6    # "paramName":Ljava/lang/String;
    .end local v7    # "storedParam":Landroidx/navigation/NavDeepLink$ParamQuery;
    .end local v8    # "inputParams":Ljava/util/List;
    .end local v9    # "parseSuccess":Z
    nop

    .end local v3    # "element$iv":Ljava/util/Map$Entry;
    goto :goto_0

    .line 779
    :cond_2
    nop

    .line 292
    .end local v0    # "$this$forEach$iv":Ljava/util/Map;
    .end local v1    # "$i$f$forEach":I
    const/4 v0, 0x1

    return v0
.end method

.method private final getMatchingUriFragment(Ljava/lang/String;Landroid/os/Bundle;Ljava/util/Map;)V
    .locals 18
    .param p1, "fragment"    # Ljava/lang/String;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "arguments"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/navigation/NavArgument;",
            ">;)V"
        }
    .end annotation

    .line 229
    invoke-direct/range {p0 .. p0}, Landroidx/navigation/NavDeepLink;->getFragPattern()Ljava/util/regex/Pattern;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    move-object v1, v0

    .line 230
    .local v1, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 232
    :cond_2
    invoke-direct/range {p0 .. p0}, Landroidx/navigation/NavDeepLink;->getFragArgs()Ljava/util/List;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/Iterable;

    .local v2, "$this$mapIndexed$iv":Ljava/lang/Iterable;
    const/4 v3, 0x0

    .line 768
    .local v3, "$i$f$mapIndexed":I
    new-instance v0, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v2, v4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    move-object v4, v0

    check-cast v4, Ljava/util/Collection;

    .local v4, "destination$iv$iv":Ljava/util/Collection;
    move-object v5, v2

    .local v5, "$this$mapIndexedTo$iv$iv":Ljava/lang/Iterable;
    const/4 v6, 0x0

    .line 769
    .local v6, "$i$f$mapIndexedTo":I
    const/4 v0, 0x0

    .line 770
    .local v0, "index$iv$iv":I
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 771
    .local v8, "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v9, v0, 0x1

    .end local v0    # "index$iv$iv":I
    .local v9, "index$iv$iv":I
    if-gez v0, :cond_3

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_3
    move-object v10, v8

    check-cast v10, Ljava/lang/String;

    .local v10, "argumentName":Ljava/lang/String;
    move v11, v0

    .local v11, "index":I
    const/4 v12, 0x0

    .line 233
    .local v12, "$i$a$-mapIndexed-NavDeepLink$getMatchingUriFragment$1":I
    add-int/lit8 v0, v11, 0x1

    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 234
    .local v13, "value":Ljava/lang/String;
    move-object/from16 v14, p3

    invoke-interface {v14, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroidx/navigation/NavArgument;

    .line 235
    .local v15, "argument":Landroidx/navigation/NavArgument;
    nop

    .line 236
    :try_start_0
    const-string/jumbo v0, "value"

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    .end local v1    # "matcher":Ljava/util/regex/Matcher;
    .end local v2    # "$this$mapIndexed$iv":Ljava/lang/Iterable;
    .local v16, "matcher":Ljava/util/regex/Matcher;
    .local v17, "$this$mapIndexed$iv":Ljava/lang/Iterable;
    :try_start_1
    invoke-direct {v1, v2, v10, v13, v15}, Landroidx/navigation/NavDeepLink;->parseArgument(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroidx/navigation/NavArgument;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 241
    nop

    .end local v10    # "argumentName":Ljava/lang/String;
    .end local v11    # "index":I
    .end local v12    # "$i$a$-mapIndexed-NavDeepLink$getMatchingUriFragment$1":I
    .end local v13    # "value":Ljava/lang/String;
    .end local v15    # "argument":Landroidx/navigation/NavArgument;
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 771
    invoke-interface {v4, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move v0, v9

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    goto :goto_1

    .line 237
    .restart local v10    # "argumentName":Ljava/lang/String;
    .restart local v11    # "index":I
    .restart local v12    # "$i$a$-mapIndexed-NavDeepLink$getMatchingUriFragment$1":I
    .restart local v13    # "value":Ljava/lang/String;
    .restart local v15    # "argument":Landroidx/navigation/NavArgument;
    :catch_0
    move-exception v0

    goto :goto_2

    .end local v16    # "matcher":Ljava/util/regex/Matcher;
    .end local v17    # "$this$mapIndexed$iv":Ljava/lang/Iterable;
    .restart local v1    # "matcher":Ljava/util/regex/Matcher;
    .restart local v2    # "$this$mapIndexed$iv":Ljava/lang/Iterable;
    :catch_1
    move-exception v0

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    .line 239
    .end local v1    # "matcher":Ljava/util/regex/Matcher;
    .end local v2    # "$this$mapIndexed$iv":Ljava/lang/Iterable;
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    .restart local v16    # "matcher":Ljava/util/regex/Matcher;
    .restart local v17    # "$this$mapIndexed$iv":Ljava/lang/Iterable;
    :goto_2
    return-void

    .line 772
    .end local v8    # "item$iv$iv":Ljava/lang/Object;
    .end local v9    # "index$iv$iv":I
    .end local v10    # "argumentName":Ljava/lang/String;
    .end local v11    # "index":I
    .end local v12    # "$i$a$-mapIndexed-NavDeepLink$getMatchingUriFragment$1":I
    .end local v13    # "value":Ljava/lang/String;
    .end local v15    # "argument":Landroidx/navigation/NavArgument;
    .end local v16    # "matcher":Ljava/util/regex/Matcher;
    .end local v17    # "$this$mapIndexed$iv":Ljava/lang/Iterable;
    .local v0, "index$iv$iv":I
    .restart local v1    # "matcher":Ljava/util/regex/Matcher;
    .restart local v2    # "$this$mapIndexed$iv":Ljava/lang/Iterable;
    :cond_4
    nop

    .end local v0    # "index$iv$iv":I
    .end local v4    # "destination$iv$iv":Ljava/util/Collection;
    .end local v5    # "$this$mapIndexedTo$iv$iv":Ljava/lang/Iterable;
    .end local v6    # "$i$f$mapIndexedTo":I
    move-object v0, v4

    check-cast v0, Ljava/util/List;

    .line 768
    nop

    .line 242
    .end local v2    # "$this$mapIndexed$iv":Ljava/lang/Iterable;
    .end local v3    # "$i$f$mapIndexed":I
    return-void
.end method

.method private final getMimeTypePattern()Ljava/util/regex/Pattern;
    .locals 1

    .line 82
    iget-object v0, p0, Landroidx/navigation/NavDeepLink;->mimeTypePattern$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/regex/Pattern;

    return-object v0
.end method

.method private final getPathPattern()Ljava/util/regex/Pattern;
    .locals 1

    .line 59
    iget-object v0, p0, Landroidx/navigation/NavDeepLink;->pathPattern$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/regex/Pattern;

    return-object v0
.end method

.method private final getQueryArgsMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/navigation/NavDeepLink$ParamQuery;",
            ">;"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Landroidx/navigation/NavDeepLink;->queryArgsMap$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method private final isParameterizedQuery()Z
    .locals 1

    .line 64
    iget-object v0, p0, Landroidx/navigation/NavDeepLink;->isParameterizedQuery$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private final matchAction(Ljava/lang/String;)Z
    .locals 4
    .param p1, "action"    # Ljava/lang/String;

    .line 142
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iget-object v3, p0, Landroidx/navigation/NavDeepLink;->action:Ljava/lang/String;

    if-eqz v3, :cond_1

    move v3, v0

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    if-ne v2, v3, :cond_2

    .line 143
    move v0, v1

    goto :goto_2

    .line 144
    :cond_2
    if-eqz p1, :cond_4

    iget-object v2, p0, Landroidx/navigation/NavDeepLink;->action:Ljava/lang/String;

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    move v0, v1

    .line 142
    :cond_4
    :goto_2
    return v0
.end method

.method private final matchMimeType(Ljava/lang/String;)Z
    .locals 4
    .param p1, "mimeType"    # Ljava/lang/String;

    .line 150
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iget-object v3, p0, Landroidx/navigation/NavDeepLink;->mimeType:Ljava/lang/String;

    if-eqz v3, :cond_1

    move v3, v0

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    if-ne v2, v3, :cond_2

    .line 151
    move v0, v1

    goto :goto_2

    .line 152
    :cond_2
    if-eqz p1, :cond_4

    invoke-direct {p0}, Landroidx/navigation/NavDeepLink;->getMimeTypePattern()Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v3, p1

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    move v0, v1

    .line 150
    :cond_4
    :goto_2
    return v0
.end method

.method private final matchUri(Landroid/net/Uri;)Z
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;

    .line 134
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-direct {p0}, Landroidx/navigation/NavDeepLink;->getPathPattern()Ljava/util/regex/Pattern;

    move-result-object v3

    if-eqz v3, :cond_1

    move v3, v0

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    if-ne v2, v3, :cond_2

    .line 135
    move v0, v1

    goto :goto_2

    .line 136
    :cond_2
    if-eqz p1, :cond_4

    invoke-direct {p0}, Landroidx/navigation/NavDeepLink;->getPathPattern()Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    move v0, v1

    .line 134
    :cond_4
    :goto_2
    return v0
.end method

.method private final parseArgument(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroidx/navigation/NavArgument;)V
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "argument"    # Landroidx/navigation/NavArgument;

    .line 377
    if-eqz p4, :cond_0

    .line 378
    invoke-virtual {p4}, Landroidx/navigation/NavArgument;->getType()Landroidx/navigation/NavType;

    move-result-object v0

    .line 379
    .local v0, "type":Landroidx/navigation/NavType;
    invoke-virtual {v0, p1, p2, p3}, Landroidx/navigation/NavType;->parseAndPut(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_0

    .line 381
    .end local v0    # "type":Landroidx/navigation/NavType;
    :cond_0
    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    :goto_0
    return-void
.end method

.method private final parseArgumentForRepeatedParam(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroidx/navigation/NavArgument;)Z
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "argument"    # Landroidx/navigation/NavArgument;

    .line 398
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 399
    const/4 v0, 0x1

    return v0

    .line 401
    :cond_0
    if-eqz p4, :cond_1

    .line 402
    invoke-virtual {p4}, Landroidx/navigation/NavArgument;->getType()Landroidx/navigation/NavType;

    move-result-object v0

    .line 403
    .local v0, "type":Landroidx/navigation/NavType;
    invoke-virtual {v0, p1, p2}, Landroidx/navigation/NavType;->get(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 404
    .local v1, "previousValue":Ljava/lang/Object;
    invoke-virtual {v0, p1, p2, p3, v1}, Landroidx/navigation/NavType;->parseAndPut(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    .end local v0    # "type":Landroidx/navigation/NavType;
    .end local v1    # "previousValue":Ljava/lang/Object;
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private final parseFragment()Lkotlin/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Pair<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 728
    iget-object v0, p0, Landroidx/navigation/NavDeepLink;->uriPattern:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/navigation/NavDeepLink;->uriPattern:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 730
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 731
    .local v0, "fragArgs":Ljava/util/List;
    iget-object v1, p0, Landroidx/navigation/NavDeepLink;->uriPattern:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v1

    .line 732
    .local v1, "fragment":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 733
    .local v2, "fragRegex":Ljava/lang/StringBuilder;
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, v1, v0, v2}, Landroidx/navigation/NavDeepLink;->buildRegex(Ljava/lang/String;Ljava/util/List;Ljava/lang/StringBuilder;)V

    .line 734
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "fragRegex.toString()"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    return-object v3

    .line 728
    .end local v0    # "fragArgs":Ljava/util/List;
    .end local v1    # "fragment":Ljava/lang/String;
    .end local v2    # "fragRegex":Ljava/lang/StringBuilder;
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private final parseInputParams(Ljava/util/List;Landroidx/navigation/NavDeepLink$ParamQuery;Landroid/os/Bundle;Ljava/util/Map;)Z
    .locals 24
    .param p1, "inputParams"    # Ljava/util/List;
    .param p2, "storedParam"    # Landroidx/navigation/NavDeepLink$ParamQuery;
    .param p3, "bundle"    # Landroid/os/Bundle;
    .param p4, "arguments"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroidx/navigation/NavDeepLink$ParamQuery;",
            "Landroid/os/Bundle;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/navigation/NavArgument;",
            ">;)Z"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p4

    const/4 v3, 0x0

    new-array v0, v3, [Lkotlin/Pair;

    .line 308
    invoke-static {v0}, Landroidx/core/os/BundleKt;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    move-result-object v4

    .line 310
    .local v4, "tempBundle":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroidx/navigation/NavDeepLink$ParamQuery;->getArguments()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v5, 0x0

    .line 780
    .local v5, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .local v7, "element$iv":Ljava/lang/Object;
    move-object v9, v7

    check-cast v9, Ljava/lang/String;

    .local v9, "argName":Ljava/lang/String;
    const/4 v10, 0x0

    .line 311
    .local v10, "$i$a$-forEach-NavDeepLink$parseInputParams$1":I
    invoke-interface {v2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/navigation/NavArgument;

    .line 312
    .local v11, "argument":Landroidx/navigation/NavArgument;
    if-eqz v11, :cond_0

    invoke-virtual {v11}, Landroidx/navigation/NavArgument;->getType()Landroidx/navigation/NavType;

    move-result-object v8

    goto :goto_1

    :cond_0
    const/4 v8, 0x0

    .line 315
    .local v8, "navType":Landroidx/navigation/NavType;
    :goto_1
    instance-of v12, v8, Landroidx/navigation/CollectionNavType;

    if-eqz v12, :cond_1

    invoke-virtual {v11}, Landroidx/navigation/NavArgument;->isDefaultValuePresent()Z

    move-result v12

    if-nez v12, :cond_1

    .line 316
    move-object v12, v8

    check-cast v12, Landroidx/navigation/CollectionNavType;

    invoke-virtual {v12}, Landroidx/navigation/CollectionNavType;->emptyCollection()Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v8, v4, v9, v12}, Landroidx/navigation/NavType;->put(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    .line 318
    :cond_1
    nop

    .line 780
    .end local v8    # "navType":Landroidx/navigation/NavType;
    .end local v9    # "argName":Ljava/lang/String;
    .end local v10    # "$i$a$-forEach-NavDeepLink$parseInputParams$1":I
    .end local v11    # "argument":Landroidx/navigation/NavArgument;
    nop

    .end local v7    # "element$iv":Ljava/lang/Object;
    goto :goto_0

    .line 781
    :cond_2
    nop

    .line 319
    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v5    # "$i$f$forEach":I
    move-object/from16 v5, p1

    check-cast v5, Ljava/lang/Iterable;

    .local v5, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v6, 0x0

    .line 782
    .local v6, "$i$f$forEach":I
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .local v9, "element$iv":Ljava/lang/Object;
    move-object v10, v9

    check-cast v10, Ljava/lang/String;

    .local v10, "inputParam":Ljava/lang/String;
    const/4 v11, 0x0

    .line 321
    .local v11, "$i$a$-forEach-NavDeepLink$parseInputParams$2":I
    invoke-virtual/range {p2 .. p2}, Landroidx/navigation/NavDeepLink$ParamQuery;->getParamRegex()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .local v0, "it":Ljava/lang/String;
    const/4 v12, 0x0

    .line 322
    .local v12, "$i$a$-let-NavDeepLink$parseInputParams$2$argMatcher$1":I
    const/16 v13, 0x20

    invoke-static {v0, v13}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v13

    move-object v14, v10

    check-cast v14, Ljava/lang/CharSequence;

    invoke-virtual {v13, v14}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 321
    .end local v0    # "it":Ljava/lang/String;
    .end local v12    # "$i$a$-let-NavDeepLink$parseInputParams$2$argMatcher$1":I
    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    .line 320
    :goto_3
    move-object v12, v0

    .line 327
    .local v12, "argMatcher":Ljava/util/regex/Matcher;
    if-eqz v12, :cond_9

    invoke-virtual {v12}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_8

    .line 331
    :cond_4
    invoke-virtual/range {p2 .. p2}, Landroidx/navigation/NavDeepLink$ParamQuery;->getArguments()Ljava/util/List;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Ljava/lang/Iterable;

    .local v13, "$this$mapIndexed$iv":Ljava/lang/Iterable;
    const/4 v14, 0x0

    .line 783
    .local v14, "$i$f$mapIndexed":I
    new-instance v0, Ljava/util/ArrayList;

    const/16 v15, 0xa

    invoke-static {v13, v15}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v15

    invoke-direct {v0, v15}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .local v0, "destination$iv$iv":Ljava/util/Collection;
    move-object v15, v13

    .local v15, "$this$mapIndexedTo$iv$iv":Ljava/lang/Iterable;
    move-object/from16 v16, v0

    .end local v0    # "destination$iv$iv":Ljava/util/Collection;
    .local v16, "destination$iv$iv":Ljava/util/Collection;
    const/16 v17, 0x0

    .line 784
    .local v17, "$i$f$mapIndexedTo":I
    const/4 v0, 0x0

    .line 785
    .local v0, "index$iv$iv":I
    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_4
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_8

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    .line 786
    .local v19, "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v20, v0, 0x1

    .end local v0    # "index$iv$iv":I
    .local v20, "index$iv$iv":I
    if-gez v0, :cond_5

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_5
    move-object/from16 v8, v19

    check-cast v8, Ljava/lang/String;

    .local v8, "argName":Ljava/lang/String;
    move/from16 v21, v0

    .local v21, "index":I
    const/16 v22, 0x0

    .line 337
    .local v22, "$i$a$-mapIndexed-NavDeepLink$parseInputParams$2$1":I
    add-int/lit8 v0, v21, 0x1

    invoke-virtual {v12, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    const-string v0, ""

    goto :goto_5

    :cond_6
    const-string v3, "argMatcher.group(index + 1) ?: \"\""

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_5
    move-object v3, v0

    .line 338
    .local v3, "value":Ljava/lang/String;
    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroidx/navigation/NavArgument;

    .line 340
    .local v2, "argument":Landroidx/navigation/NavArgument;
    nop

    .line 341
    :try_start_0
    invoke-virtual {v4, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 345
    invoke-direct {v1, v4, v8, v3, v2}, Landroidx/navigation/NavDeepLink;->parseArgument(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroidx/navigation/NavArgument;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_6

    .line 347
    :cond_7
    invoke-direct {v1, v4, v8, v3, v2}, Landroidx/navigation/NavDeepLink;->parseArgumentForRepeatedParam(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroidx/navigation/NavArgument;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_6
    goto :goto_7

    .line 349
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/IllegalArgumentException;
    sget-object v23, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v0, v23

    .line 354
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_7
    nop

    .line 786
    .end local v2    # "argument":Landroidx/navigation/NavArgument;
    .end local v3    # "value":Ljava/lang/String;
    .end local v8    # "argName":Ljava/lang/String;
    .end local v21    # "index":I
    .end local v22    # "$i$a$-mapIndexed-NavDeepLink$parseInputParams$2$1":I
    move-object/from16 v2, v16

    .end local v16    # "destination$iv$iv":Ljava/util/Collection;
    .local v2, "destination$iv$iv":Ljava/util/Collection;
    invoke-interface {v2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move/from16 v0, v20

    const/4 v3, 0x0

    move-object/from16 v2, p4

    goto :goto_4

    .line 787
    .end local v2    # "destination$iv$iv":Ljava/util/Collection;
    .end local v19    # "item$iv$iv":Ljava/lang/Object;
    .end local v20    # "index$iv$iv":I
    .local v0, "index$iv$iv":I
    .restart local v16    # "destination$iv$iv":Ljava/util/Collection;
    :cond_8
    move-object/from16 v2, v16

    .end local v0    # "index$iv$iv":I
    .end local v15    # "$this$mapIndexedTo$iv$iv":Ljava/lang/Iterable;
    .end local v16    # "destination$iv$iv":Ljava/util/Collection;
    .end local v17    # "$i$f$mapIndexedTo":I
    move-object v0, v2

    check-cast v0, Ljava/util/List;

    .line 783
    nop

    .line 356
    .end local v13    # "$this$mapIndexed$iv":Ljava/lang/Iterable;
    .end local v14    # "$i$f$mapIndexed":I
    nop

    .line 782
    .end local v10    # "inputParam":Ljava/lang/String;
    .end local v11    # "$i$a$-forEach-NavDeepLink$parseInputParams$2":I
    .end local v12    # "argMatcher":Ljava/util/regex/Matcher;
    move-object/from16 v2, p4

    const/4 v3, 0x0

    .end local v9    # "element$iv":Ljava/lang/Object;
    goto/16 :goto_2

    .line 328
    .restart local v9    # "element$iv":Ljava/lang/Object;
    .restart local v10    # "inputParam":Ljava/lang/String;
    .restart local v11    # "$i$a$-forEach-NavDeepLink$parseInputParams$2":I
    .restart local v12    # "argMatcher":Ljava/util/regex/Matcher;
    :cond_9
    :goto_8
    const/4 v2, 0x0

    return v2

    .line 788
    .end local v9    # "element$iv":Ljava/lang/Object;
    .end local v10    # "inputParam":Ljava/lang/String;
    .end local v11    # "$i$a$-forEach-NavDeepLink$parseInputParams$2":I
    .end local v12    # "argMatcher":Ljava/util/regex/Matcher;
    :cond_a
    nop

    .line 357
    .end local v5    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v6    # "$i$f$forEach":I
    move-object/from16 v2, p3

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 359
    const/4 v0, 0x1

    return v0
.end method

.method private final parseMime()V
    .locals 10

    .line 738
    iget-object v0, p0, Landroidx/navigation/NavDeepLink;->mimeType:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    .line 740
    :cond_0
    const-string v0, "^[\\s\\S]+/[\\s\\S]+$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 741
    .local v0, "mimeTypePattern":Ljava/util/regex/Pattern;
    iget-object v1, p0, Landroidx/navigation/NavDeepLink;->mimeType:Ljava/lang/String;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 742
    .local v1, "mimeTypeMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 747
    new-instance v2, Landroidx/navigation/NavDeepLink$MimeType;

    iget-object v3, p0, Landroidx/navigation/NavDeepLink;->mimeType:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroidx/navigation/NavDeepLink$MimeType;-><init>(Ljava/lang/String;)V

    .line 750
    .local v2, "splitMimeType":Landroidx/navigation/NavDeepLink$MimeType;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "^("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroidx/navigation/NavDeepLink$MimeType;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "|[*]+)/("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroidx/navigation/NavDeepLink$MimeType;->getSubType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "|[*]+)$"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 753
    .local v3, "regex":Ljava/lang/String;
    const/4 v8, 0x4

    const/4 v9, 0x0

    const-string v5, "*|[*]"

    const-string v6, "[\\s\\S]"

    const/4 v7, 0x0

    move-object v4, v3

    invoke-static/range {v4 .. v9}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroidx/navigation/NavDeepLink;->mimeTypeRegex:Ljava/lang/String;

    .line 754
    return-void

    .line 742
    .end local v2    # "splitMimeType":Landroidx/navigation/NavDeepLink$MimeType;
    .end local v3    # "regex":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    .line 743
    .local v2, "$i$a$-require-NavDeepLink$parseMime$1":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The given mimeType "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroidx/navigation/NavDeepLink;->mimeType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " does not match to required \"type/subtype\" format"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 742
    .end local v2    # "$i$a$-require-NavDeepLink$parseMime$1":I
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private final parsePath()V
    .locals 11

    .line 665
    iget-object v0, p0, Landroidx/navigation/NavDeepLink;->uriPattern:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    .line 667
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "^"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 669
    .local v0, "uriRegex":Ljava/lang/StringBuilder;
    sget-object v1, Landroidx/navigation/NavDeepLink;->SCHEME_PATTERN:Ljava/util/regex/Pattern;

    iget-object v2, p0, Landroidx/navigation/NavDeepLink;->uriPattern:Ljava/lang/String;

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-nez v1, :cond_1

    .line 670
    const-string v1, "http[s]?://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 674
    :cond_1
    const/4 v1, 0x0

    .local v1, "matcher":Ljava/lang/Object;
    const-string v2, "(\\?|\\#|$)"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    iget-object v3, p0, Landroidx/navigation/NavDeepLink;->uriPattern:Ljava/lang/String;

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 675
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    .local v2, "it":Z
    const/4 v3, 0x0

    .line 676
    .local v3, "$i$a$-let-NavDeepLink$parsePath$1":I
    iget-object v4, p0, Landroidx/navigation/NavDeepLink;->uriPattern:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "substring(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, p0, Landroidx/navigation/NavDeepLink;->pathArgs:Ljava/util/List;

    invoke-direct {p0, v4, v5, v0}, Landroidx/navigation/NavDeepLink;->buildRegex(Ljava/lang/String;Ljava/util/List;Ljava/lang/StringBuilder;)V

    .line 677
    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const-string v5, ".*"

    check-cast v5, Ljava/lang/CharSequence;

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static {v4, v5, v6, v7, v8}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const-string v5, "([^/]+?)"

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v4, v5, v6, v7, v8}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v6, 0x1

    :cond_2
    iput-boolean v6, p0, Landroidx/navigation/NavDeepLink;->isExactDeepLink:Z

    .line 680
    const-string v4, "($|(\\?(.)*)|(\\#(.)*))"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 675
    .end local v2    # "it":Z
    .end local v3    # "$i$a$-let-NavDeepLink$parsePath$1":I
    nop

    .line 684
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v2, "uriRegex.toString()"

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v9, 0x4

    const/4 v10, 0x0

    const-string v6, ".*"

    const-string v7, "\\E.*\\Q"

    const/4 v8, 0x0

    invoke-static/range {v5 .. v10}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroidx/navigation/NavDeepLink;->pathRegex:Ljava/lang/String;

    .line 685
    return-void
.end method

.method private final parseQuery()Ljava/util/Map;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/navigation/NavDeepLink$ParamQuery;",
            ">;"
        }
    .end annotation

    .line 688
    move-object/from16 v0, p0

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v1, Ljava/util/Map;

    .line 689
    .local v1, "paramArgMap":Ljava/util/Map;
    invoke-direct/range {p0 .. p0}, Landroidx/navigation/NavDeepLink;->isParameterizedQuery()Z

    move-result v2

    if-nez v2, :cond_0

    return-object v1

    .line 690
    :cond_0
    iget-object v2, v0, Landroidx/navigation/NavDeepLink;->uriPattern:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 692
    .local v2, "uri":Landroid/net/Uri;
    invoke-virtual {v2}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 693
    .local v4, "paramName":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 694
    .local v5, "argRegex":Ljava/lang/StringBuilder;
    invoke-virtual {v2, v4}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 695
    .local v6, "queryParams":Ljava/util/List;
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    if-gt v7, v8, :cond_1

    move v7, v8

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    :goto_1
    if-eqz v7, :cond_5

    .line 703
    const-string/jumbo v7, "queryParams"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-nez v7, :cond_2

    move-object v7, v4

    .line 789
    .local v7, "$this$parseQuery_u24lambda_u2410":Ljava/lang/String;
    const/4 v9, 0x0

    .line 703
    .local v9, "$i$a$-apply-NavDeepLink$parseQuery$queryParam$1":I
    iput-boolean v8, v0, Landroidx/navigation/NavDeepLink;->isSingleQueryParamValueOnly:Z

    .line 702
    .end local v7    # "$this$parseQuery_u24lambda_u2410":Ljava/lang/String;
    .end local v9    # "$i$a$-apply-NavDeepLink$parseQuery$queryParam$1":I
    :cond_2
    nop

    .line 704
    .local v7, "queryParam":Ljava/lang/String;
    sget-object v9, Landroidx/navigation/NavDeepLink;->FILL_IN_PATTERN:Ljava/util/regex/Pattern;

    move-object v10, v7

    check-cast v10, Ljava/lang/CharSequence;

    invoke-virtual {v9, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    .line 705
    .local v9, "matcher":Ljava/util/regex/Matcher;
    const/4 v10, 0x0

    .line 706
    .local v10, "appendPos":I
    new-instance v11, Landroidx/navigation/NavDeepLink$ParamQuery;

    invoke-direct {v11}, Landroidx/navigation/NavDeepLink$ParamQuery;-><init>()V

    .line 708
    .local v11, "param":Landroidx/navigation/NavDeepLink$ParamQuery;
    :goto_2
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->find()Z

    move-result v12

    const-string/jumbo v13, "substring(...)"

    const-string/jumbo v14, "queryParam"

    if-eqz v12, :cond_3

    .line 710
    invoke-virtual {v9, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v12

    const-string v15, "null cannot be cast to non-null type kotlin.String"

    invoke-static {v12, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v11, v12}, Landroidx/navigation/NavDeepLink$ParamQuery;->addArgumentName(Ljava/lang/String;)V

    .line 711
    invoke-static {v7, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/util/regex/Matcher;->start()I

    move-result v12

    invoke-virtual {v7, v10, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v12}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 712
    const-string v12, "(.+?)?"

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 713
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->end()I

    move-result v10

    goto :goto_2

    .line 715
    :cond_3
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v10, v8, :cond_4

    .line 716
    invoke-static {v7, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v8}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 721
    :cond_4
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v8, "argRegex.toString()"

    invoke-static {v12, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v16, 0x4

    const/16 v17, 0x0

    const-string v13, ".*"

    const-string v14, "\\E.*\\Q"

    const/4 v15, 0x0

    invoke-static/range {v12 .. v17}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v11, v8}, Landroidx/navigation/NavDeepLink$ParamQuery;->setParamRegex(Ljava/lang/String;)V

    .line 722
    const-string/jumbo v8, "paramName"

    invoke-static {v4, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v4, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 695
    .end local v7    # "queryParam":Ljava/lang/String;
    .end local v9    # "matcher":Ljava/util/regex/Matcher;
    .end local v10    # "appendPos":I
    .end local v11    # "param":Landroidx/navigation/NavDeepLink$ParamQuery;
    :cond_5
    const/4 v3, 0x0

    .line 696
    .local v3, "$i$a$-require-NavDeepLink$parseQuery$1":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Query parameter "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " must only be present once in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Landroidx/navigation/NavDeepLink;->uriPattern:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ". To support repeated query parameters, use an array type for your argument and the pattern provided in your URI will be used to parse each query parameter instance."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 699
    nop

    .line 695
    .end local v3    # "$i$a$-require-NavDeepLink$parseQuery$1":I
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 724
    .end local v4    # "paramName":Ljava/lang/String;
    .end local v5    # "argRegex":Ljava/lang/StringBuilder;
    .end local v6    # "queryParams":Ljava/util/List;
    :cond_6
    return-object v1
.end method


# virtual methods
.method public final calculateMatchingPathSegments$navigation_common_release(Landroid/net/Uri;)I
    .locals 4
    .param p1, "requestedLink"    # Landroid/net/Uri;

    .line 363
    if-eqz p1, :cond_1

    iget-object v0, p0, Landroidx/navigation/NavDeepLink;->uriPattern:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    .line 365
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    .line 366
    .local v0, "requestedPathSegments":Ljava/util/List;
    iget-object v1, p0, Landroidx/navigation/NavDeepLink;->uriPattern:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    .line 368
    .local v1, "uriPathSegments":Ljava/util/List;
    const-string/jumbo v2, "requestedPathSegments"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v0

    check-cast v2, Ljava/lang/Iterable;

    const-string/jumbo v3, "uriPathSegments"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v1

    check-cast v3, Ljava/lang/Iterable;

    invoke-static {v2, v3}, Lkotlin/collections/CollectionsKt;->intersect(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v2

    .line 369
    .local v2, "matches":Ljava/util/Set;
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v3

    return v3

    .line 363
    .end local v0    # "requestedPathSegments":Ljava/util/List;
    .end local v1    # "uriPathSegments":Ljava/util/List;
    .end local v2    # "matches":Ljava/util/Set;
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "other"    # Ljava/lang/Object;

    .line 455
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    instance-of v1, p1, Landroidx/navigation/NavDeepLink;

    if-nez v1, :cond_0

    goto :goto_1

    .line 456
    :cond_0
    iget-object v1, p0, Landroidx/navigation/NavDeepLink;->uriPattern:Ljava/lang/String;

    move-object v2, p1

    check-cast v2, Landroidx/navigation/NavDeepLink;

    iget-object v2, v2, Landroidx/navigation/NavDeepLink;->uriPattern:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 457
    iget-object v1, p0, Landroidx/navigation/NavDeepLink;->action:Ljava/lang/String;

    move-object v2, p1

    check-cast v2, Landroidx/navigation/NavDeepLink;

    iget-object v2, v2, Landroidx/navigation/NavDeepLink;->action:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 458
    iget-object v1, p0, Landroidx/navigation/NavDeepLink;->mimeType:Ljava/lang/String;

    move-object v2, p1

    check-cast v2, Landroidx/navigation/NavDeepLink;

    iget-object v2, v2, Landroidx/navigation/NavDeepLink;->mimeType:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 456
    :goto_0
    return v0

    .line 455
    :cond_2
    :goto_1
    return v0
.end method

.method public final getAction()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Landroidx/navigation/NavDeepLink;->action:Ljava/lang/String;

    return-object v0
.end method

.method public final getArgumentsNames$navigation_common_release()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Landroidx/navigation/NavDeepLink;->pathArgs:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-direct {p0}, Landroidx/navigation/NavDeepLink;->getQueryArgsMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .local v1, "$this$flatMap$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 762
    .local v2, "$i$f$flatMap":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/Collection;

    .local v3, "destination$iv$iv":Ljava/util/Collection;
    move-object v4, v1

    .local v4, "$this$flatMapTo$iv$iv":Ljava/lang/Iterable;
    const/4 v5, 0x0

    .line 763
    .local v5, "$i$f$flatMapTo":I
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 764
    .local v7, "element$iv$iv":Ljava/lang/Object;
    move-object v8, v7

    check-cast v8, Landroidx/navigation/NavDeepLink$ParamQuery;

    .local v8, "it":Landroidx/navigation/NavDeepLink$ParamQuery;
    const/4 v9, 0x0

    .line 86
    .local v9, "$i$a$-flatMap-NavDeepLink$argumentsNames$1":I
    invoke-virtual {v8}, Landroidx/navigation/NavDeepLink$ParamQuery;->getArguments()Ljava/util/List;

    move-result-object v8

    .line 764
    .end local v8    # "it":Landroidx/navigation/NavDeepLink$ParamQuery;
    .end local v9    # "$i$a$-flatMap-NavDeepLink$argumentsNames$1":I
    check-cast v8, Ljava/lang/Iterable;

    .line 765
    .local v8, "list$iv$iv":Ljava/lang/Iterable;
    invoke-static {v3, v8}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_0

    .line 767
    .end local v7    # "element$iv$iv":Ljava/lang/Object;
    .end local v8    # "list$iv$iv":Ljava/lang/Iterable;
    :cond_0
    nop

    .end local v3    # "destination$iv$iv":Ljava/util/Collection;
    .end local v4    # "$this$flatMapTo$iv$iv":Ljava/lang/Iterable;
    .end local v5    # "$i$f$flatMapTo":I
    check-cast v3, Ljava/util/List;

    .line 762
    nop

    .end local v1    # "$this$flatMap$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$flatMap":I
    check-cast v3, Ljava/lang/Iterable;

    .line 86
    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-direct {p0}, Landroidx/navigation/NavDeepLink;->getFragArgs()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getMatchingArguments(Landroid/net/Uri;Ljava/util/Map;)Landroid/os/Bundle;
    .locals 5
    .param p1, "deepLink"    # Landroid/net/Uri;
    .param p2, "arguments"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/navigation/NavArgument;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    const-string v0, "deepLink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "arguments"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 181
    invoke-direct {p0}, Landroidx/navigation/NavDeepLink;->getPathPattern()Ljava/util/regex/Pattern;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1

    return-object v1

    .line 182
    .local v0, "matcher":Ljava/util/regex/Matcher;
    :cond_1
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_2

    .line 183
    return-object v1

    .line 186
    :cond_2
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 187
    .local v2, "bundle":Landroid/os/Bundle;
    invoke-direct {p0, v0, v2, p2}, Landroidx/navigation/NavDeepLink;->getMatchingPathArguments(Ljava/util/regex/Matcher;Landroid/os/Bundle;Ljava/util/Map;)Z

    move-result v3

    if-nez v3, :cond_3

    return-object v1

    .line 188
    :cond_3
    invoke-direct {p0}, Landroidx/navigation/NavDeepLink;->isParameterizedQuery()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-direct {p0, p1, v2, p2}, Landroidx/navigation/NavDeepLink;->getMatchingQueryArguments(Landroid/net/Uri;Landroid/os/Bundle;Ljava/util/Map;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 189
    return-object v1

    .line 192
    :cond_4
    invoke-virtual {p1}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v2, p2}, Landroidx/navigation/NavDeepLink;->getMatchingUriFragment(Ljava/lang/String;Landroid/os/Bundle;Ljava/util/Map;)V

    .line 196
    new-instance v3, Landroidx/navigation/NavDeepLink$getMatchingArguments$missingRequiredArguments$1;

    invoke-direct {v3, v2}, Landroidx/navigation/NavDeepLink$getMatchingArguments$missingRequiredArguments$1;-><init>(Landroid/os/Bundle;)V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    invoke-static {p2, v3}, Landroidx/navigation/NavArgumentKt;->missingRequiredArguments(Ljava/util/Map;Lkotlin/jvm/functions/Function1;)Ljava/util/List;

    move-result-object v3

    .line 195
    nop

    .line 197
    .local v3, "missingRequiredArguments":Ljava/util/List;
    move-object v4, v3

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    return-object v1

    .line 199
    :cond_5
    return-object v2
.end method

.method public final getMatchingPathAndQueryArgs$navigation_common_release(Landroid/net/Uri;Ljava/util/Map;)Landroid/os/Bundle;
    .locals 3
    .param p1, "deepLink"    # Landroid/net/Uri;
    .param p2, "arguments"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/navigation/NavArgument;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    const-string v0, "arguments"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 210
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 211
    .local v0, "bundle":Landroid/os/Bundle;
    if-nez p1, :cond_0

    return-object v0

    .line 212
    :cond_0
    invoke-direct {p0}, Landroidx/navigation/NavDeepLink;->getPathPattern()Ljava/util/regex/Pattern;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_2

    return-object v0

    .line 213
    .local v1, "matcher":Ljava/util/regex/Matcher;
    :cond_2
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_3

    .line 214
    return-object v0

    .line 216
    :cond_3
    invoke-direct {p0, v1, v0, p2}, Landroidx/navigation/NavDeepLink;->getMatchingPathArguments(Ljava/util/regex/Matcher;Landroid/os/Bundle;Ljava/util/Map;)Z

    .line 217
    invoke-direct {p0}, Landroidx/navigation/NavDeepLink;->isParameterizedQuery()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-direct {p0, p1, v0, p2}, Landroidx/navigation/NavDeepLink;->getMatchingQueryArguments(Landroid/net/Uri;Landroid/os/Bundle;Ljava/util/Map;)Z

    .line 218
    :cond_4
    return-object v0
.end method

.method public final getMimeType()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Landroidx/navigation/NavDeepLink;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public final getMimeTypeMatchRating(Ljava/lang/String;)I
    .locals 2
    .param p1, "mimeType"    # Ljava/lang/String;

    const-string v0, "mimeType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Landroidx/navigation/NavDeepLink;->mimeType:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroidx/navigation/NavDeepLink;->getMimeTypePattern()Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 161
    :cond_0
    new-instance v0, Landroidx/navigation/NavDeepLink$MimeType;

    iget-object v1, p0, Landroidx/navigation/NavDeepLink;->mimeType:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroidx/navigation/NavDeepLink$MimeType;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroidx/navigation/NavDeepLink$MimeType;

    invoke-direct {v1, p1}, Landroidx/navigation/NavDeepLink$MimeType;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroidx/navigation/NavDeepLink$MimeType;->compareTo(Landroidx/navigation/NavDeepLink$MimeType;)I

    move-result v0

    goto :goto_1

    .line 160
    :cond_1
    :goto_0
    const/4 v0, -0x1

    .line 159
    :goto_1
    return v0
.end method

.method public final getUriPattern()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Landroidx/navigation/NavDeepLink;->uriPattern:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 462
    const/4 v0, 0x0

    .line 463
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroidx/navigation/NavDeepLink;->uriPattern:Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    add-int/2addr v1, v2

    .line 464
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroidx/navigation/NavDeepLink;->action:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    add-int/2addr v0, v2

    .line 465
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroidx/navigation/NavDeepLink;->mimeType:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :cond_2
    add-int/2addr v1, v3

    .line 466
    .end local v0    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public final isExactDeepLink()Z
    .locals 1

    .line 89
    iget-boolean v0, p0, Landroidx/navigation/NavDeepLink;->isExactDeepLink:Z

    return v0
.end method

.method public final matches$navigation_common_release(Landroid/net/Uri;)Z
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    const-string/jumbo v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    new-instance v0, Landroidx/navigation/NavDeepLinkRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, v1}, Landroidx/navigation/NavDeepLinkRequest;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroidx/navigation/NavDeepLink;->matches$navigation_common_release(Landroidx/navigation/NavDeepLinkRequest;)Z

    move-result v0

    return v0
.end method

.method public final matches$navigation_common_release(Landroidx/navigation/NavDeepLinkRequest;)Z
    .locals 2
    .param p1, "deepLinkRequest"    # Landroidx/navigation/NavDeepLinkRequest;

    const-string v0, "deepLinkRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    invoke-virtual {p1}, Landroidx/navigation/NavDeepLinkRequest;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/navigation/NavDeepLink;->matchUri(Landroid/net/Uri;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 125
    return v1

    .line 127
    :cond_0
    invoke-virtual {p1}, Landroidx/navigation/NavDeepLinkRequest;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/navigation/NavDeepLink;->matchAction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 128
    goto :goto_0

    .line 129
    :cond_1
    invoke-virtual {p1}, Landroidx/navigation/NavDeepLinkRequest;->getMimeType()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/navigation/NavDeepLink;->matchMimeType(Ljava/lang/String;)Z

    move-result v1

    .line 127
    :goto_0
    return v1
.end method

.method public final setExactDeepLink$navigation_common_release(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 90
    iput-boolean p1, p0, Landroidx/navigation/NavDeepLink;->isExactDeepLink:Z

    return-void
.end method
