.class public Landroidx/navigation/NavDestination;
.super Ljava/lang/Object;
.source "NavDestination.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/navigation/NavDestination$ClassType;,
        Landroidx/navigation/NavDestination$Companion;,
        Landroidx/navigation/NavDestination$DeepLinkMatch;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNavDestination.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NavDestination.kt\nandroidx/navigation/NavDestination\n+ 2 TypedArray.kt\nandroidx/core/content/res/TypedArrayKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Uri.kt\nandroidx/core/net/UriKt\n+ 5 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 6 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n+ 7 Iterators.kt\nkotlin/collections/CollectionsKt__IteratorsKt\n*L\n1#1,859:1\n232#2,3:860\n1#3:863\n29#4:864\n1549#5:865\n1620#5,3:866\n1855#5,2:873\n1855#5,2:876\n1855#5,2:879\n1224#6,2:869\n1224#6,2:871\n32#7:875\n33#7:878\n*S KotlinDebug\n*F\n+ 1 NavDestination.kt\nandroidx/navigation/NavDestination\n*L\n188#1:860,3\n380#1:864\n482#1:865\n482#1:866,3\n722#1:873,2\n730#1:876,2\n734#1:879,2\n703#1:869,2\n707#1:871,2\n727#1:875\n727#1:878\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00a6\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\r\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0015\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u000c\u0008\u0016\u0018\u0000 `2\u00020\u0001:\u0003_`aB\u0017\u0008\u0016\u0012\u000e\u0010\u0002\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00000\u0003\u00a2\u0006\u0002\u0010\u0004B\r\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u0016\u00102\u001a\u0002032\u0006\u00104\u001a\u00020\u00062\u0006\u00105\u001a\u00020\nJ\u000e\u00106\u001a\u0002032\u0006\u00107\u001a\u00020\u0014J\u000e\u00106\u001a\u0002032\u0006\u00108\u001a\u00020\u0006J\u0014\u00109\u001a\u0004\u0018\u00010:2\u0008\u0010;\u001a\u0004\u0018\u00010:H\u0007J\u0014\u0010<\u001a\u00020=2\n\u0008\u0002\u0010>\u001a\u0004\u0018\u00010\u0000H\u0007J\u0013\u0010?\u001a\u00020@2\u0008\u0010A\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\u001a\u0010B\u001a\u0004\u0018\u00010\u00062\u0006\u0010C\u001a\u00020D2\u0008\u0010E\u001a\u0004\u0018\u00010:J\u0012\u0010F\u001a\u0004\u0018\u00010\r2\u0008\u0008\u0001\u0010\u0018\u001a\u00020\u0019J\u0010\u0010G\u001a\u00020@2\u0006\u0010H\u001a\u00020IH\u0016J\u0010\u0010G\u001a\u00020@2\u0006\u0010J\u001a\u00020KH\u0016J.\u0010L\u001a\u00020@2\u0006\u0010H\u001a\u00020\u00142\u0008\u0010M\u001a\u0004\u0018\u00010I2\u0012\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\n0\u000fH\u0002J\u001a\u0010N\u001a\u00020@2\u0006\u0010-\u001a\u00020\u00062\u0008\u0010\u000e\u001a\u0004\u0018\u00010:H\u0007J\u0008\u0010O\u001a\u00020\u0019H\u0016J\u0012\u0010P\u001a\u0004\u0018\u00010Q2\u0006\u0010R\u001a\u00020KH\u0017J\u0012\u0010S\u001a\u0004\u0018\u00010Q2\u0006\u0010-\u001a\u00020\u0006H\u0007J\u0018\u0010T\u001a\u0002032\u0006\u0010C\u001a\u00020D2\u0006\u0010U\u001a\u00020VH\u0017J\u0018\u0010W\u001a\u0002032\u0008\u0008\u0001\u0010X\u001a\u00020\u00192\u0006\u0010Y\u001a\u00020\rJ\u001a\u0010W\u001a\u0002032\u0008\u0008\u0001\u0010X\u001a\u00020\u00192\u0008\u0008\u0001\u0010Z\u001a\u00020\u0019J\u0010\u0010[\u001a\u0002032\u0008\u0008\u0001\u0010X\u001a\u00020\u0019J\u000e\u0010\\\u001a\u0002032\u0006\u00104\u001a\u00020\u0006J\u0008\u0010]\u001a\u00020@H\u0017J\u0008\u0010^\u001a\u00020\u0006H\u0016R\u001a\u0010\u0008\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\n0\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001d\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\n0\u000f8F\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u0011R\u0014\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0015\u001a\u00020\u00068WX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0016\u0010\u0017R(\u0010\u0018\u001a\u00020\u00192\u0008\u0008\u0001\u0010\u0018\u001a\u00020\u00198G@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001dR\u0010\u0010\u001e\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u001f\u001a\u0004\u0018\u00010 X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008!\u0010\"\"\u0004\u0008#\u0010$R\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008%\u0010\u0017R(\u0010(\u001a\u0004\u0018\u00010\'2\u0008\u0010&\u001a\u0004\u0018\u00010\'@GX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008)\u0010*\"\u0004\u0008+\u0010,R(\u0010-\u001a\u0004\u0018\u00010\u00062\u0008\u0010-\u001a\u0004\u0018\u00010\u0006@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008.\u0010\u0017\"\u0004\u0008/\u0010\u0007R\u0016\u00100\u001a\n\u0012\u0004\u0012\u00020\u0014\u0018\u000101X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006b"
    }
    d2 = {
        "Landroidx/navigation/NavDestination;",
        "",
        "navigator",
        "Landroidx/navigation/Navigator;",
        "(Landroidx/navigation/Navigator;)V",
        "navigatorName",
        "",
        "(Ljava/lang/String;)V",
        "_arguments",
        "",
        "Landroidx/navigation/NavArgument;",
        "actions",
        "Landroidx/collection/SparseArrayCompat;",
        "Landroidx/navigation/NavAction;",
        "arguments",
        "",
        "getArguments",
        "()Ljava/util/Map;",
        "deepLinks",
        "",
        "Landroidx/navigation/NavDeepLink;",
        "displayName",
        "getDisplayName",
        "()Ljava/lang/String;",
        "id",
        "",
        "getId",
        "()I",
        "setId",
        "(I)V",
        "idName",
        "label",
        "",
        "getLabel",
        "()Ljava/lang/CharSequence;",
        "setLabel",
        "(Ljava/lang/CharSequence;)V",
        "getNavigatorName",
        "<set-?>",
        "Landroidx/navigation/NavGraph;",
        "parent",
        "getParent",
        "()Landroidx/navigation/NavGraph;",
        "setParent",
        "(Landroidx/navigation/NavGraph;)V",
        "route",
        "getRoute",
        "setRoute",
        "routeDeepLink",
        "Lkotlin/Lazy;",
        "addArgument",
        "",
        "argumentName",
        "argument",
        "addDeepLink",
        "navDeepLink",
        "uriPattern",
        "addInDefaultArgs",
        "Landroid/os/Bundle;",
        "args",
        "buildDeepLinkIds",
        "",
        "previousDestination",
        "equals",
        "",
        "other",
        "fillInLabel",
        "context",
        "Landroid/content/Context;",
        "bundle",
        "getAction",
        "hasDeepLink",
        "deepLink",
        "Landroid/net/Uri;",
        "deepLinkRequest",
        "Landroidx/navigation/NavDeepLinkRequest;",
        "hasRequiredArguments",
        "uri",
        "hasRoute",
        "hashCode",
        "matchDeepLink",
        "Landroidx/navigation/NavDestination$DeepLinkMatch;",
        "navDeepLinkRequest",
        "matchRoute",
        "onInflate",
        "attrs",
        "Landroid/util/AttributeSet;",
        "putAction",
        "actionId",
        "action",
        "destId",
        "removeAction",
        "removeArgument",
        "supportsActions",
        "toString",
        "ClassType",
        "Companion",
        "DeepLinkMatch",
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
.field public static final Companion:Landroidx/navigation/NavDestination$Companion;

.field private static final classes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private _arguments:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/navigation/NavArgument;",
            ">;"
        }
    .end annotation
.end field

.field private final actions:Landroidx/collection/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SparseArrayCompat<",
            "Landroidx/navigation/NavAction;",
            ">;"
        }
    .end annotation
.end field

.field private final deepLinks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/navigation/NavDeepLink;",
            ">;"
        }
    .end annotation
.end field

.field private id:I

.field private idName:Ljava/lang/String;

.field private label:Ljava/lang/CharSequence;

.field private final navigatorName:Ljava/lang/String;

.field private parent:Landroidx/navigation/NavGraph;

.field private route:Ljava/lang/String;

.field private routeDeepLink:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Landroidx/navigation/NavDeepLink;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/navigation/NavDestination$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/navigation/NavDestination$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/navigation/NavDestination;->Companion:Landroidx/navigation/NavDestination$Companion;

    .line 742
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    sput-object v0, Landroidx/navigation/NavDestination;->classes:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroidx/navigation/Navigator;)V
    .locals 2
    .param p1, "navigator"    # Landroidx/navigation/Navigator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/navigation/Navigator<",
            "+",
            "Landroidx/navigation/NavDestination;",
            ">;)V"
        }
    .end annotation

    const-string v0, "navigator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    sget-object v0, Landroidx/navigation/NavigatorProvider;->Companion:Landroidx/navigation/NavigatorProvider$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/navigation/NavigatorProvider$Companion;->getNameForNavigator$navigation_common_release(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/navigation/NavDestination;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "navigatorName"    # Ljava/lang/String;

    const-string v0, "navigatorName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Landroidx/navigation/NavDestination;->navigatorName:Ljava/lang/String;

    .line 154
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Landroidx/navigation/NavDestination;->deepLinks:Ljava/util/List;

    .line 155
    new-instance v0, Landroidx/collection/SparseArrayCompat;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/SparseArrayCompat;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Landroidx/navigation/NavDestination;->actions:Landroidx/collection/SparseArrayCompat;

    .line 157
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Landroidx/navigation/NavDestination;->_arguments:Ljava/util/Map;

    .line 54
    return-void
.end method

.method public static final synthetic access$getClasses$cp()Ljava/util/Map;
    .locals 1

    .line 54
    sget-object v0, Landroidx/navigation/NavDestination;->classes:Ljava/util/Map;

    return-object v0
.end method

.method public static final synthetic access$get_arguments$p(Landroidx/navigation/NavDestination;)Ljava/util/Map;
    .locals 1
    .param p0, "$this"    # Landroidx/navigation/NavDestination;

    .line 54
    iget-object v0, p0, Landroidx/navigation/NavDestination;->_arguments:Ljava/util/Map;

    return-object v0
.end method

.method public static synthetic buildDeepLinkIds$default(Landroidx/navigation/NavDestination;Landroidx/navigation/NavDestination;ILjava/lang/Object;)[I
    .locals 0

    .line 461
    if-nez p3, :cond_1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/navigation/NavDestination;->buildDeepLinkIds(Landroidx/navigation/NavDestination;)[I

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: buildDeepLinkIds"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final getDisplayName(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Landroidx/navigation/NavDestination;->Companion:Landroidx/navigation/NavDestination$Companion;

    invoke-virtual {v0, p0, p1}, Landroidx/navigation/NavDestination$Companion;->getDisplayName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 820
    return-object v0
.end method

.method public static final getHierarchy(Landroidx/navigation/NavDestination;)Lkotlin/sequences/Sequence;
    .locals 1
    .param p0, "$this$getHierarchy"    # Landroidx/navigation/NavDestination;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/navigation/NavDestination;",
            ")",
            "Lkotlin/sequences/Sequence<",
            "Landroidx/navigation/NavDestination;",
            ">;"
        }
    .end annotation

    sget-object v0, Landroidx/navigation/NavDestination;->Companion:Landroidx/navigation/NavDestination$Companion;

    invoke-virtual {v0, p0}, Landroidx/navigation/NavDestination$Companion;->getHierarchy(Landroidx/navigation/NavDestination;)Lkotlin/sequences/Sequence;

    move-result-object v0

    .line 834
    return-object v0
.end method

.method private final hasRequiredArguments(Landroidx/navigation/NavDeepLink;Landroid/net/Uri;Ljava/util/Map;)Z
    .locals 3
    .param p1, "deepLink"    # Landroidx/navigation/NavDeepLink;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "arguments"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/navigation/NavDeepLink;",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/navigation/NavArgument;",
            ">;)Z"
        }
    .end annotation

    .line 446
    invoke-virtual {p1, p2, p3}, Landroidx/navigation/NavDeepLink;->getMatchingPathAndQueryArgs$navigation_common_release(Landroid/net/Uri;Ljava/util/Map;)Landroid/os/Bundle;

    move-result-object v0

    .line 448
    .local v0, "matchingArgs":Landroid/os/Bundle;
    new-instance v1, Landroidx/navigation/NavDestination$hasRequiredArguments$missingRequiredArguments$1;

    invoke-direct {v1, v0}, Landroidx/navigation/NavDestination$hasRequiredArguments$missingRequiredArguments$1;-><init>(Landroid/os/Bundle;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {p3, v1}, Landroidx/navigation/NavArgumentKt;->missingRequiredArguments(Ljava/util/Map;Lkotlin/jvm/functions/Function1;)Ljava/util/List;

    move-result-object v1

    .line 447
    nop

    .line 449
    .local v1, "missingRequiredArguments":Ljava/util/List;
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    return v2
.end method

.method public static final hasRoute(Landroidx/navigation/NavDestination;Lkotlin/reflect/KClass;)Z
    .locals 1
    .param p0, "$this$hasRoute"    # Landroidx/navigation/NavDestination;
    .param p1, "route"    # Lkotlin/reflect/KClass;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/navigation/NavDestination;",
            "Lkotlin/reflect/KClass<",
            "TT;>;)Z"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Landroidx/navigation/NavDestination;->Companion:Landroidx/navigation/NavDestination$Companion;

    invoke-virtual {v0, p0, p1}, Landroidx/navigation/NavDestination$Companion;->hasRoute(Landroidx/navigation/NavDestination;Lkotlin/reflect/KClass;)Z

    move-result v0

    .line 856
    return v0
.end method

.method protected static final parseClassFromName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "expectedClassType"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+TC;>;)",
            "Ljava/lang/Class<",
            "+TC;>;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Landroidx/navigation/NavDestination;->Companion:Landroidx/navigation/NavDestination$Companion;

    invoke-virtual {v0, p0, p1, p2}, Landroidx/navigation/NavDestination$Companion;->parseClassFromName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 786
    return-object v0
.end method

.method public static final parseClassFromNameInternal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "expectedClassType"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+TC;>;)",
            "Ljava/lang/Class<",
            "+TC;>;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Landroidx/navigation/NavDestination;->Companion:Landroidx/navigation/NavDestination$Companion;

    invoke-virtual {v0, p0, p1, p2}, Landroidx/navigation/NavDestination$Companion;->parseClassFromNameInternal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 797
    return-object v0
.end method


# virtual methods
.method public final addArgument(Ljava/lang/String;Landroidx/navigation/NavArgument;)V
    .locals 1
    .param p1, "argumentName"    # Ljava/lang/String;
    .param p2, "argument"    # Landroidx/navigation/NavArgument;

    const-string v0, "argumentName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "argument"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 587
    iget-object v0, p0, Landroidx/navigation/NavDestination;->_arguments:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 588
    return-void
.end method

.method public final addDeepLink(Landroidx/navigation/NavDeepLink;)V
    .locals 4
    .param p1, "navDeepLink"    # Landroidx/navigation/NavDeepLink;

    const-string v0, "navDeepLink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 361
    iget-object v0, p0, Landroidx/navigation/NavDestination;->_arguments:Ljava/util/Map;

    new-instance v1, Landroidx/navigation/NavDestination$addDeepLink$missingRequiredArguments$1;

    invoke-direct {v1, p1}, Landroidx/navigation/NavDestination$addDeepLink$missingRequiredArguments$1;-><init>(Landroidx/navigation/NavDeepLink;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Landroidx/navigation/NavArgumentKt;->missingRequiredArguments(Ljava/util/Map;Lkotlin/jvm/functions/Function1;)Ljava/util/List;

    move-result-object v0

    .line 360
    nop

    .line 362
    .local v0, "missingRequiredArguments":Ljava/util/List;
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 367
    iget-object v1, p0, Landroidx/navigation/NavDestination;->deepLinks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 368
    return-void

    .line 362
    :cond_0
    const/4 v1, 0x0

    .line 363
    .local v1, "$i$a$-require-NavDestination$addDeepLink$1":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Deep link "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroidx/navigation/NavDeepLink;->getUriPattern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " can\'t be used to open destination "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".\nFollowing required arguments are missing: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 364
    nop

    .line 363
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 364
    nop

    .line 362
    .end local v1    # "$i$a$-require-NavDestination$addDeepLink$1":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final addDeepLink(Ljava/lang/String;)V
    .locals 1
    .param p1, "uriPattern"    # Ljava/lang/String;

    const-string/jumbo v0, "uriPattern"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 320
    new-instance v0, Landroidx/navigation/NavDeepLink$Builder;

    invoke-direct {v0}, Landroidx/navigation/NavDeepLink$Builder;-><init>()V

    invoke-virtual {v0, p1}, Landroidx/navigation/NavDeepLink$Builder;->setUriPattern(Ljava/lang/String;)Landroidx/navigation/NavDeepLink$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/navigation/NavDeepLink$Builder;->build()Landroidx/navigation/NavDeepLink;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/navigation/NavDestination;->addDeepLink(Landroidx/navigation/NavDeepLink;)V

    .line 321
    return-void
.end method

.method public final addInDefaultArgs(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 6
    .param p1, "args"    # Landroid/os/Bundle;

    .line 606
    if-nez p1, :cond_0

    iget-object v0, p0, Landroidx/navigation/NavDestination;->_arguments:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 607
    const/4 v0, 0x0

    return-object v0

    .line 609
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 610
    .local v0, "defaultArgs":Landroid/os/Bundle;
    iget-object v1, p0, Landroidx/navigation/NavDestination;->_arguments:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .local v3, "key":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/navigation/NavArgument;

    .line 611
    .local v2, "value":Landroidx/navigation/NavArgument;
    invoke-virtual {v2, v3, v0}, Landroidx/navigation/NavArgument;->putDefaultValue(Ljava/lang/String;Landroid/os/Bundle;)V

    .end local v2    # "value":Landroidx/navigation/NavArgument;
    .end local v3    # "key":Ljava/lang/String;
    goto :goto_0

    .line 613
    :cond_1
    if-eqz p1, :cond_4

    .line 614
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 617
    iget-object v1, p0, Landroidx/navigation/NavDestination;->_arguments:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .restart local v3    # "key":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/navigation/NavArgument;

    .line 618
    .restart local v2    # "value":Landroidx/navigation/NavArgument;
    invoke-virtual {v2}, Landroidx/navigation/NavArgument;->isDefaultValueUnknown$navigation_common_release()Z

    move-result v4

    if-nez v4, :cond_2

    .line 619
    invoke-virtual {v2, v3, v0}, Landroidx/navigation/NavArgument;->verify(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    .line 620
    .local v1, "$i$a$-require-NavDestination$addInDefaultArgs$1":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Wrong argument type for \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' in argument bundle. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroidx/navigation/NavArgument;->getType()Landroidx/navigation/NavType;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/navigation/NavType;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " expected."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 621
    nop

    .line 619
    .end local v1    # "$i$a$-require-NavDestination$addInDefaultArgs$1":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 626
    .end local v2    # "value":Landroidx/navigation/NavArgument;
    .end local v3    # "key":Ljava/lang/String;
    :cond_4
    return-object v0
.end method

.method public final buildDeepLinkIds()[I
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, v0}, Landroidx/navigation/NavDestination;->buildDeepLinkIds$default(Landroidx/navigation/NavDestination;Landroidx/navigation/NavDestination;ILjava/lang/Object;)[I

    move-result-object v0

    .line 483
    return-object v0
.end method

.method public final buildDeepLinkIds(Landroidx/navigation/NavDestination;)[I
    .locals 11
    .param p1, "previousDestination"    # Landroidx/navigation/NavDestination;

    .line 462
    new-instance v0, Lkotlin/collections/ArrayDeque;

    invoke-direct {v0}, Lkotlin/collections/ArrayDeque;-><init>()V

    .line 463
    .local v0, "hierarchy":Lkotlin/collections/ArrayDeque;
    move-object v1, p0

    .line 465
    .local v1, "current":Landroidx/navigation/NavDestination;
    :cond_0
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v2, v1, Landroidx/navigation/NavDestination;->parent:Landroidx/navigation/NavGraph;

    .line 466
    .local v2, "parent":Landroidx/navigation/NavGraph;
    nop

    .line 468
    if-eqz p1, :cond_1

    iget-object v3, p1, Landroidx/navigation/NavDestination;->parent:Landroidx/navigation/NavGraph;

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_2

    .line 469
    iget-object v3, p1, Landroidx/navigation/NavDestination;->parent:Landroidx/navigation/NavGraph;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v4, v1, Landroidx/navigation/NavDestination;->id:I

    invoke-virtual {v3, v4}, Landroidx/navigation/NavGraph;->findNode(I)Landroidx/navigation/NavDestination;

    move-result-object v3

    if-ne v3, v1, :cond_2

    .line 471
    invoke-virtual {v0, v1}, Lkotlin/collections/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 472
    goto :goto_1

    .line 474
    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroidx/navigation/NavGraph;->getStartDestinationId()I

    move-result v3

    iget v4, v1, Landroidx/navigation/NavDestination;->id:I

    if-eq v3, v4, :cond_4

    .line 475
    :cond_3
    invoke-virtual {v0, v1}, Lkotlin/collections/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 477
    :cond_4
    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 478
    goto :goto_1

    .line 480
    :cond_5
    move-object v1, v2

    check-cast v1, Landroidx/navigation/NavDestination;

    .line 481
    .end local v2    # "parent":Landroidx/navigation/NavGraph;
    if-nez v1, :cond_0

    .line 482
    :goto_1
    move-object v2, v0

    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    .local v2, "$this$map$iv":Ljava/lang/Iterable;
    const/4 v3, 0x0

    .line 865
    .local v3, "$i$f$map":I
    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v2, v5}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v4, Ljava/util/Collection;

    .local v4, "destination$iv$iv":Ljava/util/Collection;
    move-object v5, v2

    .local v5, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    const/4 v6, 0x0

    .line 866
    .local v6, "$i$f$mapTo":I
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 867
    .local v8, "item$iv$iv":Ljava/lang/Object;
    move-object v9, v8

    check-cast v9, Landroidx/navigation/NavDestination;

    .local v9, "it":Landroidx/navigation/NavDestination;
    const/4 v10, 0x0

    .line 482
    .local v10, "$i$a$-map-NavDestination$buildDeepLinkIds$1":I
    iget v9, v9, Landroidx/navigation/NavDestination;->id:I

    .end local v9    # "it":Landroidx/navigation/NavDestination;
    .end local v10    # "$i$a$-map-NavDestination$buildDeepLinkIds$1":I
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 867
    invoke-interface {v4, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 868
    .end local v8    # "item$iv$iv":Ljava/lang/Object;
    :cond_6
    nop

    .end local v4    # "destination$iv$iv":Ljava/util/Collection;
    .end local v5    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .end local v6    # "$i$f$mapTo":I
    check-cast v4, Ljava/util/List;

    .line 865
    nop

    .end local v2    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v3    # "$i$f$map":I
    check-cast v4, Ljava/util/Collection;

    .line 482
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->toIntArray(Ljava/util/Collection;)[I

    move-result-object v2

    return-object v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 12
    .param p1, "other"    # Ljava/lang/Object;

    .line 696
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 697
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_a

    instance-of v2, p1, Landroidx/navigation/NavDestination;

    if-nez v2, :cond_1

    goto/16 :goto_6

    .line 699
    :cond_1
    iget-object v2, p0, Landroidx/navigation/NavDestination;->deepLinks:Ljava/util/List;

    move-object v3, p1

    check-cast v3, Landroidx/navigation/NavDestination;

    iget-object v3, v3, Landroidx/navigation/NavDestination;->deepLinks:Ljava/util/List;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    .line 702
    .local v2, "equalDeepLinks":Z
    iget-object v3, p0, Landroidx/navigation/NavDestination;->actions:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v3}, Landroidx/collection/SparseArrayCompat;->size()I

    move-result v3

    move-object v4, p1

    check-cast v4, Landroidx/navigation/NavDestination;

    iget-object v4, v4, Landroidx/navigation/NavDestination;->actions:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v4}, Landroidx/collection/SparseArrayCompat;->size()I

    move-result v4

    if-ne v3, v4, :cond_4

    .line 703
    iget-object v3, p0, Landroidx/navigation/NavDestination;->actions:Landroidx/collection/SparseArrayCompat;

    invoke-static {v3}, Landroidx/collection/SparseArrayKt;->keyIterator(Landroidx/collection/SparseArrayCompat;)Lkotlin/collections/IntIterator;

    move-result-object v3

    check-cast v3, Ljava/util/Iterator;

    invoke-static {v3}, Lkotlin/sequences/SequencesKt;->asSequence(Ljava/util/Iterator;)Lkotlin/sequences/Sequence;

    move-result-object v3

    .local v3, "$this$all$iv":Lkotlin/sequences/Sequence;
    const/4 v4, 0x0

    .line 869
    .local v4, "$i$f$all":I
    invoke-interface {v3}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .local v6, "element$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    .local v7, "it":I
    const/4 v8, 0x0

    .line 703
    .local v8, "$i$a$-all-NavDestination$equals$equalActions$1":I
    iget-object v9, p0, Landroidx/navigation/NavDestination;->actions:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v9, v7}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v9

    move-object v10, p1

    check-cast v10, Landroidx/navigation/NavDestination;

    iget-object v10, v10, Landroidx/navigation/NavDestination;->actions:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v10, v7}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    .line 869
    .end local v7    # "it":I
    .end local v8    # "$i$a$-all-NavDestination$equals$equalActions$1":I
    if-nez v7, :cond_2

    move v3, v1

    goto :goto_0

    .line 870
    .end local v6    # "element$iv":Ljava/lang/Object;
    :cond_3
    move v3, v0

    .line 703
    .end local v3    # "$this$all$iv":Lkotlin/sequences/Sequence;
    .end local v4    # "$i$f$all":I
    :goto_0
    if-eqz v3, :cond_4

    move v3, v0

    goto :goto_1

    :cond_4
    move v3, v1

    .line 701
    :goto_1
    nop

    .line 706
    .local v3, "equalActions":Z
    iget-object v4, p0, Landroidx/navigation/NavDestination;->_arguments:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    move-object v5, p1

    check-cast v5, Landroidx/navigation/NavDestination;

    iget-object v5, v5, Landroidx/navigation/NavDestination;->_arguments:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    if-ne v4, v5, :cond_8

    .line 707
    iget-object v4, p0, Landroidx/navigation/NavDestination;->_arguments:Ljava/util/Map;

    invoke-static {v4}, Lkotlin/collections/MapsKt;->asSequence(Ljava/util/Map;)Lkotlin/sequences/Sequence;

    move-result-object v4

    .local v4, "$this$all$iv":Lkotlin/sequences/Sequence;
    const/4 v5, 0x0

    .line 871
    .local v5, "$i$f$all":I
    invoke-interface {v4}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .local v7, "element$iv":Ljava/lang/Object;
    move-object v8, v7

    check-cast v8, Ljava/util/Map$Entry;

    .local v8, "it":Ljava/util/Map$Entry;
    const/4 v9, 0x0

    .line 708
    .local v9, "$i$a$-all-NavDestination$equals$equalArguments$1":I
    move-object v10, p1

    check-cast v10, Landroidx/navigation/NavDestination;

    iget-object v10, v10, Landroidx/navigation/NavDestination;->_arguments:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    move-object v10, p1

    check-cast v10, Landroidx/navigation/NavDestination;

    iget-object v10, v10, Landroidx/navigation/NavDestination;->_arguments:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    move v8, v0

    goto :goto_2

    :cond_6
    move v8, v1

    .line 871
    .end local v8    # "it":Ljava/util/Map$Entry;
    .end local v9    # "$i$a$-all-NavDestination$equals$equalArguments$1":I
    :goto_2
    if-nez v8, :cond_5

    move v4, v1

    goto :goto_3

    .line 872
    .end local v7    # "element$iv":Ljava/lang/Object;
    :cond_7
    move v4, v0

    .line 707
    .end local v4    # "$this$all$iv":Lkotlin/sequences/Sequence;
    .end local v5    # "$i$f$all":I
    :goto_3
    if-eqz v4, :cond_8

    move v4, v0

    goto :goto_4

    :cond_8
    move v4, v1

    .line 705
    :goto_4
    nop

    .line 711
    .local v4, "equalArguments":Z
    iget v5, p0, Landroidx/navigation/NavDestination;->id:I

    move-object v6, p1

    check-cast v6, Landroidx/navigation/NavDestination;

    iget v6, v6, Landroidx/navigation/NavDestination;->id:I

    if-ne v5, v6, :cond_9

    .line 712
    iget-object v5, p0, Landroidx/navigation/NavDestination;->route:Ljava/lang/String;

    move-object v6, p1

    check-cast v6, Landroidx/navigation/NavDestination;

    iget-object v6, v6, Landroidx/navigation/NavDestination;->route:Ljava/lang/String;

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 713
    if-eqz v2, :cond_9

    .line 714
    if-eqz v3, :cond_9

    .line 715
    if-eqz v4, :cond_9

    goto :goto_5

    :cond_9
    move v0, v1

    .line 711
    :goto_5
    return v0

    .line 697
    .end local v2    # "equalDeepLinks":Z
    .end local v3    # "equalActions":Z
    .end local v4    # "equalArguments":Z
    :cond_a
    :goto_6
    return v1
.end method

.method public final fillInLabel(Landroid/content/Context;Landroid/os/Bundle;)Ljava/lang/String;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 646
    iget-object v0, p0, Landroidx/navigation/NavDestination;->label:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 648
    .local v0, "label":Ljava/lang/CharSequence;
    :cond_0
    const-string v2, "\\{(.+?)\\}"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 649
    .local v2, "fillInPattern":Ljava/util/regex/Pattern;
    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 650
    .local v3, "matcher":Ljava/util/regex/Matcher;
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 652
    .local v4, "builder":Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 653
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 654
    .local v5, "argName":Ljava/lang/String;
    if-eqz p2, :cond_4

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 655
    const-string v6, ""

    invoke-virtual {v3, v4, v6}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    .line 656
    if-eqz v5, :cond_2

    move-object v6, v5

    .line 863
    .local v6, "it":Ljava/lang/String;
    const/4 v7, 0x0

    .line 656
    .local v7, "$i$a$-let-NavDestination$fillInLabel$argType$1":I
    iget-object v8, p0, Landroidx/navigation/NavDestination;->_arguments:Ljava/util/Map;

    invoke-interface {v8, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/navigation/NavArgument;

    if-eqz v8, :cond_1

    invoke-virtual {v8}, Landroidx/navigation/NavArgument;->getType()Landroidx/navigation/NavType;

    move-result-object v8

    goto :goto_1

    :cond_1
    move-object v8, v1

    goto :goto_1

    .end local v6    # "it":Ljava/lang/String;
    .end local v7    # "$i$a$-let-NavDestination$fillInLabel$argType$1":I
    :cond_2
    move-object v8, v1

    :goto_1
    move-object v6, v8

    .line 657
    .local v6, "argType":Landroidx/navigation/NavType;
    sget-object v7, Landroidx/navigation/NavType;->ReferenceType:Landroidx/navigation/NavType;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 658
    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "context.getString(bundle.getInt(argName))"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 659
    .local v7, "value":Ljava/lang/String;
    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 661
    .end local v7    # "value":Ljava/lang/String;
    :cond_3
    invoke-virtual {p2, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 664
    .end local v6    # "argType":Landroidx/navigation/NavType;
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 665
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not find \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\" in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to fill label \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x22

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 664
    invoke-direct {v1, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 669
    .end local v5    # "argName":Ljava/lang/String;
    :cond_5
    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 670
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final getAction(I)Landroidx/navigation/NavAction;
    .locals 3
    .param p1, "id"    # I

    .line 536
    iget-object v0, p0, Landroidx/navigation/NavDestination;->actions:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0}, Landroidx/collection/SparseArrayCompat;->getIsEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/navigation/NavDestination;->actions:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0, p1}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/navigation/NavAction;

    .line 538
    .local v0, "destination":Landroidx/navigation/NavAction;
    :goto_0
    if-nez v0, :cond_1

    iget-object v2, p0, Landroidx/navigation/NavDestination;->parent:Landroidx/navigation/NavGraph;

    if-eqz v2, :cond_2

    move-object v1, v2

    .line 863
    .local v1, "$this$getAction_u24lambda_u245":Landroidx/navigation/NavGraph;
    const/4 v2, 0x0

    .line 538
    .local v2, "$i$a$-run-NavDestination$getAction$1":I
    invoke-virtual {v1, p1}, Landroidx/navigation/NavGraph;->getAction(I)Landroidx/navigation/NavAction;

    move-result-object v1

    .end local v1    # "$this$getAction_u24lambda_u245":Landroidx/navigation/NavGraph;
    .end local v2    # "$i$a$-run-NavDestination$getAction$1":I
    goto :goto_1

    :cond_1
    move-object v1, v0

    :cond_2
    :goto_1
    return-object v1
.end method

.method public final getArguments()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/navigation/NavArgument;",
            ">;"
        }
    .end annotation

    .line 169
    iget-object v0, p0, Landroidx/navigation/NavDestination;->_arguments:Ljava/util/Map;

    invoke-static {v0}, Lkotlin/collections/MapsKt;->toMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .line 257
    iget-object v0, p0, Landroidx/navigation/NavDestination;->idName:Ljava/lang/String;

    if-nez v0, :cond_0

    iget v0, p0, Landroidx/navigation/NavDestination;->id:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final getId()I
    .locals 1

    .line 207
    iget v0, p0, Landroidx/navigation/NavDestination;->id:I

    return v0
.end method

.method public final getLabel()Ljava/lang/CharSequence;
    .locals 1

    .line 153
    iget-object v0, p0, Landroidx/navigation/NavDestination;->label:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getNavigatorName()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Landroidx/navigation/NavDestination;->navigatorName:Ljava/lang/String;

    return-object v0
.end method

.method public final getParent()Landroidx/navigation/NavGraph;
    .locals 1

    .line 147
    iget-object v0, p0, Landroidx/navigation/NavDestination;->parent:Landroidx/navigation/NavGraph;

    return-object v0
.end method

.method public final getRoute()Ljava/lang/String;
    .locals 1

    .line 220
    iget-object v0, p0, Landroidx/navigation/NavDestination;->route:Ljava/lang/String;

    return-object v0
.end method

.method public hasDeepLink(Landroid/net/Uri;)Z
    .locals 2
    .param p1, "deepLink"    # Landroid/net/Uri;

    const-string v0, "deepLink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 274
    new-instance v0, Landroidx/navigation/NavDeepLinkRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, v1}, Landroidx/navigation/NavDeepLinkRequest;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroidx/navigation/NavDestination;->hasDeepLink(Landroidx/navigation/NavDeepLinkRequest;)Z

    move-result v0

    return v0
.end method

.method public hasDeepLink(Landroidx/navigation/NavDeepLinkRequest;)Z
    .locals 1
    .param p1, "deepLinkRequest"    # Landroidx/navigation/NavDeepLinkRequest;

    const-string v0, "deepLinkRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 291
    invoke-virtual {p0, p1}, Landroidx/navigation/NavDestination;->matchDeepLink(Landroidx/navigation/NavDeepLinkRequest;)Landroidx/navigation/NavDestination$DeepLinkMatch;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final hasRoute(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 2
    .param p1, "route"    # Ljava/lang/String;
    .param p2, "arguments"    # Landroid/os/Bundle;

    const-string/jumbo v0, "route"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 504
    iget-object v0, p0, Landroidx/navigation/NavDestination;->route:Ljava/lang/String;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 508
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/navigation/NavDestination;->matchRoute(Ljava/lang/String;)Landroidx/navigation/NavDestination$DeepLinkMatch;

    move-result-object v0

    .line 511
    .local v0, "matchingDeepLink":Landroidx/navigation/NavDestination$DeepLinkMatch;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/navigation/NavDestination$DeepLinkMatch;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    return v1

    .line 515
    :cond_2
    invoke-virtual {v0, p2}, Landroidx/navigation/NavDestination$DeepLinkMatch;->hasMatchingArgs(Landroid/os/Bundle;)Z

    move-result v1

    return v1
.end method

.method public hashCode()I
    .locals 15

    .line 720
    const/4 v0, 0x0

    .local v0, "result":I
    iget v0, p0, Landroidx/navigation/NavDestination;->id:I

    .line 721
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroidx/navigation/NavDestination;->route:Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    add-int/2addr v1, v2

    .line 722
    .end local v0    # "result":I
    .local v1, "result":I
    iget-object v0, p0, Landroidx/navigation/NavDestination;->deepLinks:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 873
    .local v2, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .local v5, "element$iv":Ljava/lang/Object;
    move-object v6, v5

    check-cast v6, Landroidx/navigation/NavDeepLink;

    .local v6, "it":Landroidx/navigation/NavDeepLink;
    const/4 v7, 0x0

    .line 723
    .local v7, "$i$a$-forEach-NavDestination$hashCode$1":I
    mul-int/lit8 v8, v1, 0x1f

    invoke-virtual {v6}, Landroidx/navigation/NavDeepLink;->getUriPattern()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1

    invoke-virtual {v9}, Ljava/lang/Object;->hashCode()I

    move-result v9

    goto :goto_2

    :cond_1
    move v9, v3

    :goto_2
    add-int/2addr v8, v9

    .line 724
    .end local v1    # "result":I
    .local v8, "result":I
    mul-int/lit8 v1, v8, 0x1f

    invoke-virtual {v6}, Landroidx/navigation/NavDeepLink;->getAction()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_2

    invoke-virtual {v9}, Ljava/lang/Object;->hashCode()I

    move-result v9

    goto :goto_3

    :cond_2
    move v9, v3

    :goto_3
    add-int/2addr v1, v9

    .line 725
    .end local v8    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v8, v1, 0x1f

    invoke-virtual {v6}, Landroidx/navigation/NavDeepLink;->getMimeType()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_3

    invoke-virtual {v9}, Ljava/lang/Object;->hashCode()I

    move-result v9

    goto :goto_4

    :cond_3
    move v9, v3

    :goto_4
    add-int v1, v8, v9

    .line 726
    nop

    .line 873
    .end local v6    # "it":Landroidx/navigation/NavDeepLink;
    .end local v7    # "$i$a$-forEach-NavDestination$hashCode$1":I
    nop

    .end local v5    # "element$iv":Ljava/lang/Object;
    goto :goto_1

    .line 874
    :cond_4
    nop

    .line 727
    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$forEach":I
    iget-object v0, p0, Landroidx/navigation/NavDestination;->actions:Landroidx/collection/SparseArrayCompat;

    invoke-static {v0}, Landroidx/collection/SparseArrayKt;->valueIterator(Landroidx/collection/SparseArrayCompat;)Ljava/util/Iterator;

    move-result-object v0

    .local v0, "$this$forEach$iv":Ljava/util/Iterator;
    const/4 v2, 0x0

    .line 875
    .restart local v2    # "$i$f$forEach":I
    nop

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .local v4, "element$iv":Ljava/lang/Object;
    move-object v5, v4

    check-cast v5, Landroidx/navigation/NavAction;

    .local v5, "value":Landroidx/navigation/NavAction;
    const/4 v6, 0x0

    .line 728
    .local v6, "$i$a$-forEach-NavDestination$hashCode$2":I
    mul-int/lit8 v7, v1, 0x1f

    invoke-virtual {v5}, Landroidx/navigation/NavAction;->getDestinationId()I

    move-result v8

    add-int/2addr v7, v8

    .line 729
    .end local v1    # "result":I
    .local v7, "result":I
    mul-int/lit8 v1, v7, 0x1f

    invoke-virtual {v5}, Landroidx/navigation/NavAction;->getNavOptions()Landroidx/navigation/NavOptions;

    move-result-object v8

    if-eqz v8, :cond_5

    invoke-virtual {v8}, Ljava/lang/Object;->hashCode()I

    move-result v8

    goto :goto_6

    :cond_5
    move v8, v3

    :goto_6
    add-int/2addr v1, v8

    .line 730
    .end local v7    # "result":I
    .restart local v1    # "result":I
    invoke-virtual {v5}, Landroidx/navigation/NavAction;->getDefaultArguments()Landroid/os/Bundle;

    move-result-object v7

    if-eqz v7, :cond_8

    invoke-virtual {v7}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v7

    if-eqz v7, :cond_8

    const-string v8, "keySet()"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Ljava/lang/Iterable;

    .local v7, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v8, 0x0

    .line 876
    .local v8, "$i$f$forEach":I
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_7
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .local v10, "element$iv":Ljava/lang/Object;
    move-object v11, v10

    check-cast v11, Ljava/lang/String;

    .local v11, "it":Ljava/lang/String;
    const/4 v12, 0x0

    .line 731
    .local v12, "$i$a$-forEach-NavDestination$hashCode$2$1":I
    mul-int/lit8 v13, v1, 0x1f

    invoke-virtual {v5}, Landroidx/navigation/NavAction;->getDefaultArguments()Landroid/os/Bundle;

    move-result-object v14

    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v14, v11}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    if-eqz v14, :cond_6

    invoke-virtual {v14}, Ljava/lang/Object;->hashCode()I

    move-result v14

    goto :goto_8

    :cond_6
    move v14, v3

    :goto_8
    add-int v1, v13, v14

    .line 732
    nop

    .line 876
    .end local v11    # "it":Ljava/lang/String;
    .end local v12    # "$i$a$-forEach-NavDestination$hashCode$2$1":I
    nop

    .end local v10    # "element$iv":Ljava/lang/Object;
    goto :goto_7

    .line 877
    :cond_7
    nop

    .line 733
    .end local v7    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v8    # "$i$f$forEach":I
    :cond_8
    nop

    .line 875
    .end local v5    # "value":Landroidx/navigation/NavAction;
    .end local v6    # "$i$a$-forEach-NavDestination$hashCode$2":I
    nop

    .end local v4    # "element$iv":Ljava/lang/Object;
    goto :goto_5

    .line 878
    :cond_9
    nop

    .line 734
    .end local v0    # "$this$forEach$iv":Ljava/util/Iterator;
    .end local v2    # "$i$f$forEach":I
    iget-object v0, p0, Landroidx/navigation/NavDestination;->_arguments:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 879
    .restart local v2    # "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .local v5, "element$iv":Ljava/lang/Object;
    move-object v6, v5

    check-cast v6, Ljava/lang/String;

    .local v6, "it":Ljava/lang/String;
    const/4 v7, 0x0

    .line 735
    .local v7, "$i$a$-forEach-NavDestination$hashCode$3":I
    mul-int/lit8 v8, v1, 0x1f

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v9

    add-int/2addr v8, v9

    .line 736
    .end local v1    # "result":I
    .local v8, "result":I
    mul-int/lit8 v1, v8, 0x1f

    iget-object v9, p0, Landroidx/navigation/NavDestination;->_arguments:Ljava/util/Map;

    invoke-interface {v9, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_a

    invoke-virtual {v9}, Ljava/lang/Object;->hashCode()I

    move-result v9

    goto :goto_a

    :cond_a
    move v9, v3

    :goto_a
    add-int/2addr v1, v9

    .line 737
    .end local v8    # "result":I
    .restart local v1    # "result":I
    nop

    .line 879
    .end local v6    # "it":Ljava/lang/String;
    .end local v7    # "$i$a$-forEach-NavDestination$hashCode$3":I
    nop

    .end local v5    # "element$iv":Ljava/lang/Object;
    goto :goto_9

    .line 880
    :cond_b
    nop

    .line 738
    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$forEach":I
    return v1
.end method

.method public matchDeepLink(Landroidx/navigation/NavDeepLinkRequest;)Landroidx/navigation/NavDestination$DeepLinkMatch;
    .locals 21
    .param p1, "navDeepLinkRequest"    # Landroidx/navigation/NavDeepLinkRequest;

    move-object/from16 v7, p0

    const-string v0, "navDeepLinkRequest"

    move-object/from16 v8, p1

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 404
    iget-object v0, v7, Landroidx/navigation/NavDestination;->deepLinks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v9, 0x0

    if-eqz v0, :cond_0

    .line 405
    return-object v9

    .line 407
    :cond_0
    const/4 v0, 0x0

    .line 408
    .local v0, "bestMatch":Landroidx/navigation/NavDestination$DeepLinkMatch;
    iget-object v1, v7, Landroidx/navigation/NavDestination;->deepLinks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move-object v11, v0

    .end local v0    # "bestMatch":Landroidx/navigation/NavDestination$DeepLinkMatch;
    .local v11, "bestMatch":Landroidx/navigation/NavDestination$DeepLinkMatch;
    :cond_1
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroidx/navigation/NavDeepLink;

    .line 409
    .local v12, "deepLink":Landroidx/navigation/NavDeepLink;
    invoke-virtual/range {p1 .. p1}, Landroidx/navigation/NavDeepLinkRequest;->getUri()Landroid/net/Uri;

    move-result-object v13

    .line 412
    .local v13, "uri":Landroid/net/Uri;
    if-eqz v13, :cond_2

    iget-object v0, v7, Landroidx/navigation/NavDestination;->_arguments:Ljava/util/Map;

    invoke-virtual {v12, v13, v0}, Landroidx/navigation/NavDeepLink;->getMatchingArguments(Landroid/net/Uri;Ljava/util/Map;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, v9

    .line 411
    :goto_1
    move-object v14, v0

    .line 413
    .local v14, "matchingArguments":Landroid/os/Bundle;
    invoke-virtual {v12, v13}, Landroidx/navigation/NavDeepLink;->calculateMatchingPathSegments$navigation_common_release(Landroid/net/Uri;)I

    move-result v15

    .line 414
    .local v15, "matchingPathSegments":I
    invoke-virtual/range {p1 .. p1}, Landroidx/navigation/NavDeepLinkRequest;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 415
    .local v6, "requestAction":Ljava/lang/String;
    if-eqz v6, :cond_3

    invoke-virtual {v12}, Landroidx/navigation/NavDeepLink;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    move/from16 v16, v0

    .line 416
    .local v16, "matchingAction":Z
    invoke-virtual/range {p1 .. p1}, Landroidx/navigation/NavDeepLinkRequest;->getMimeType()Ljava/lang/String;

    move-result-object v5

    .line 418
    .local v5, "mimeType":Ljava/lang/String;
    const/4 v0, -0x1

    if-eqz v5, :cond_4

    invoke-virtual {v12, v5}, Landroidx/navigation/NavDeepLink;->getMimeTypeMatchRating(Ljava/lang/String;)I

    move-result v1

    goto :goto_3

    :cond_4
    move v1, v0

    .line 417
    :goto_3
    move v4, v1

    .line 419
    .local v4, "mimeTypeMatchLevel":I
    nop

    .line 420
    if-nez v14, :cond_6

    .line 421
    if-nez v16, :cond_5

    if-le v4, v0, :cond_1

    .line 422
    :cond_5
    iget-object v0, v7, Landroidx/navigation/NavDestination;->_arguments:Ljava/util/Map;

    invoke-direct {v7, v12, v13, v0}, Landroidx/navigation/NavDestination;->hasRequiredArguments(Landroidx/navigation/NavDeepLink;Landroid/net/Uri;Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 425
    :cond_6
    new-instance v17, Landroidx/navigation/NavDestination$DeepLinkMatch;

    .line 426
    nop

    .line 427
    nop

    .line 428
    invoke-virtual {v12}, Landroidx/navigation/NavDeepLink;->isExactDeepLink()Z

    move-result v3

    .line 429
    nop

    .line 430
    nop

    .line 431
    nop

    .line 425
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object v2, v14

    move/from16 v18, v4

    .end local v4    # "mimeTypeMatchLevel":I
    .local v18, "mimeTypeMatchLevel":I
    move v4, v15

    move-object/from16 v19, v5

    .end local v5    # "mimeType":Ljava/lang/String;
    .local v19, "mimeType":Ljava/lang/String;
    move/from16 v5, v16

    move-object/from16 v20, v6

    .end local v6    # "requestAction":Ljava/lang/String;
    .local v20, "requestAction":Ljava/lang/String;
    move/from16 v6, v18

    invoke-direct/range {v0 .. v6}, Landroidx/navigation/NavDestination$DeepLinkMatch;-><init>(Landroidx/navigation/NavDestination;Landroid/os/Bundle;ZIZI)V

    .line 424
    nop

    .line 433
    .local v0, "newMatch":Landroidx/navigation/NavDestination$DeepLinkMatch;
    if-eqz v11, :cond_7

    invoke-virtual {v0, v11}, Landroidx/navigation/NavDestination$DeepLinkMatch;->compareTo(Landroidx/navigation/NavDestination$DeepLinkMatch;)I

    move-result v1

    if-lez v1, :cond_1

    .line 434
    :cond_7
    move-object v11, v0

    .end local v0    # "newMatch":Landroidx/navigation/NavDestination$DeepLinkMatch;
    .end local v12    # "deepLink":Landroidx/navigation/NavDeepLink;
    .end local v13    # "uri":Landroid/net/Uri;
    .end local v14    # "matchingArguments":Landroid/os/Bundle;
    .end local v15    # "matchingPathSegments":I
    .end local v16    # "matchingAction":Z
    .end local v18    # "mimeTypeMatchLevel":I
    .end local v19    # "mimeType":Ljava/lang/String;
    .end local v20    # "requestAction":Ljava/lang/String;
    goto :goto_0

    .line 438
    :cond_8
    return-object v11
.end method

.method public final matchRoute(Ljava/lang/String;)Landroidx/navigation/NavDestination$DeepLinkMatch;
    .locals 11
    .param p1, "route"    # Ljava/lang/String;

    const-string/jumbo v0, "route"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 378
    iget-object v0, p0, Landroidx/navigation/NavDestination;->routeDeepLink:Lkotlin/Lazy;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/navigation/NavDeepLink;

    if-nez v0, :cond_0

    goto :goto_0

    .line 380
    .local v0, "routeDeepLink":Landroidx/navigation/NavDeepLink;
    :cond_0
    sget-object v2, Landroidx/navigation/NavDestination;->Companion:Landroidx/navigation/NavDestination$Companion;

    invoke-virtual {v2, p1}, Landroidx/navigation/NavDestination$Companion;->createRoute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, "$this$toUri$iv":Ljava/lang/String;
    const/4 v3, 0x0

    .line 864
    .local v3, "$i$f$toUri":I
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const-string v5, "Uri.parse(this)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 380
    .end local v2    # "$this$toUri$iv":Ljava/lang/String;
    .end local v3    # "$i$f$toUri":I
    move-object v2, v4

    .line 383
    .local v2, "uri":Landroid/net/Uri;
    iget-object v3, p0, Landroidx/navigation/NavDestination;->_arguments:Ljava/util/Map;

    invoke-virtual {v0, v2, v3}, Landroidx/navigation/NavDeepLink;->getMatchingArguments(Landroid/net/Uri;Ljava/util/Map;)Landroid/os/Bundle;

    move-result-object v6

    if-nez v6, :cond_1

    return-object v1

    .line 384
    .local v6, "matchingArguments":Landroid/os/Bundle;
    :cond_1
    invoke-virtual {v0, v2}, Landroidx/navigation/NavDeepLink;->calculateMatchingPathSegments$navigation_common_release(Landroid/net/Uri;)I

    move-result v1

    .line 385
    .local v1, "matchingPathSegments":I
    new-instance v3, Landroidx/navigation/NavDestination$DeepLinkMatch;

    .line 386
    nop

    .line 387
    nop

    .line 388
    invoke-virtual {v0}, Landroidx/navigation/NavDeepLink;->isExactDeepLink()Z

    move-result v7

    .line 389
    nop

    .line 390
    nop

    .line 391
    nop

    .line 385
    const/4 v9, 0x0

    const/4 v10, -0x1

    move-object v4, v3

    move-object v5, p0

    move v8, v1

    invoke-direct/range {v4 .. v10}, Landroidx/navigation/NavDestination$DeepLinkMatch;-><init>(Landroidx/navigation/NavDestination;Landroid/os/Bundle;ZIZI)V

    return-object v3

    .line 378
    .end local v0    # "routeDeepLink":Landroidx/navigation/NavDeepLink;
    .end local v1    # "matchingPathSegments":I
    .end local v2    # "uri":Landroid/net/Uri;
    .end local v6    # "matchingArguments":Landroid/os/Bundle;
    :cond_2
    :goto_0
    return-object v1
.end method

.method public onInflate(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 188
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Landroidx/navigation/common/R$styleable;->Navigator:[I

    invoke-virtual {v0, p2, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const-string v1, "context.resources.obtain\u2026s, R.styleable.Navigator)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .local v0, "$this$use$iv":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    .line 860
    .local v1, "$i$f$use":I
    move-object v2, v0

    .local v2, "array":Landroid/content/res/TypedArray;
    const/4 v3, 0x0

    .line 189
    .local v3, "$i$a$-use-NavDestination$onInflate$1":I
    sget v4, Landroidx/navigation/common/R$styleable;->Navigator_route:I

    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroidx/navigation/NavDestination;->setRoute(Ljava/lang/String;)V

    .line 191
    sget v4, Landroidx/navigation/common/R$styleable;->Navigator_android_id:I

    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 192
    sget v4, Landroidx/navigation/common/R$styleable;->Navigator_android_id:I

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    invoke-virtual {p0, v4}, Landroidx/navigation/NavDestination;->setId(I)V

    .line 193
    sget-object v4, Landroidx/navigation/NavDestination;->Companion:Landroidx/navigation/NavDestination$Companion;

    iget v5, p0, Landroidx/navigation/NavDestination;->id:I

    invoke-virtual {v4, p1, v5}, Landroidx/navigation/NavDestination$Companion;->getDisplayName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroidx/navigation/NavDestination;->idName:Ljava/lang/String;

    .line 195
    :cond_0
    sget v4, Landroidx/navigation/common/R$styleable;->Navigator_android_label:I

    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Landroidx/navigation/NavDestination;->label:Ljava/lang/CharSequence;

    .line 196
    nop

    .end local v2    # "array":Landroid/content/res/TypedArray;
    .end local v3    # "$i$a$-use-NavDestination$onInflate$1":I
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 860
    nop

    .local v2, "it$iv":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 861
    .local v3, "$i$a$-also-TypedArrayKt$use$1$iv":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 862
    .end local v2    # "it$iv":Ljava/lang/Object;
    .end local v3    # "$i$a$-also-TypedArrayKt$use$1$iv":I
    nop

    .line 860
    nop

    .line 197
    .end local v0    # "$this$use$iv":Landroid/content/res/TypedArray;
    .end local v1    # "$i$f$use":I
    return-void
.end method

.method public final putAction(II)V
    .locals 7
    .param p1, "actionId"    # I
    .param p2, "destId"    # I

    .line 548
    new-instance v6, Landroidx/navigation/NavAction;

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, v6

    move v1, p2

    invoke-direct/range {v0 .. v5}, Landroidx/navigation/NavAction;-><init>(ILandroidx/navigation/NavOptions;Landroid/os/Bundle;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0, p1, v6}, Landroidx/navigation/NavDestination;->putAction(ILandroidx/navigation/NavAction;)V

    .line 549
    return-void
.end method

.method public final putAction(ILandroidx/navigation/NavAction;)V
    .locals 3
    .param p1, "actionId"    # I
    .param p2, "action"    # Landroidx/navigation/NavAction;

    const-string v0, "action"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 560
    invoke-virtual {p0}, Landroidx/navigation/NavDestination;->supportsActions()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 567
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 568
    iget-object v0, p0, Landroidx/navigation/NavDestination;->actions:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0, p1, p2}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 569
    return-void

    .line 863
    :cond_1
    const/4 v0, 0x0

    .line 567
    .local v0, "$i$a$-require-NavDestination$putAction$1":I
    nop

    .end local v0    # "$i$a$-require-NavDestination$putAction$1":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot have an action with actionId 0"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 561
    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 562
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot add action "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " as it does not support actions, indicating that it is a terminal destination in your navigation graph and will never trigger actions."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 561
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final removeAction(I)V
    .locals 1
    .param p1, "actionId"    # I

    .line 577
    iget-object v0, p0, Landroidx/navigation/NavDestination;->actions:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0, p1}, Landroidx/collection/SparseArrayCompat;->remove(I)V

    .line 578
    return-void
.end method

.method public final removeArgument(Ljava/lang/String;)V
    .locals 1
    .param p1, "argumentName"    # Ljava/lang/String;

    const-string v0, "argumentName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 596
    iget-object v0, p0, Landroidx/navigation/NavDestination;->_arguments:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 597
    return-void
.end method

.method public final setId(I)V
    .locals 1
    .param p1, "id"    # I

    .line 209
    iput p1, p0, Landroidx/navigation/NavDestination;->id:I

    .line 210
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/navigation/NavDestination;->idName:Ljava/lang/String;

    .line 211
    return-void
.end method

.method public final setLabel(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "<set-?>"    # Ljava/lang/CharSequence;

    .line 153
    iput-object p1, p0, Landroidx/navigation/NavDestination;->label:Ljava/lang/CharSequence;

    return-void
.end method

.method public final setParent(Landroidx/navigation/NavGraph;)V
    .locals 0
    .param p1, "<set-?>"    # Landroidx/navigation/NavGraph;

    .line 148
    iput-object p1, p0, Landroidx/navigation/NavDestination;->parent:Landroidx/navigation/NavGraph;

    return-void
.end method

.method public final setRoute(Ljava/lang/String;)V
    .locals 6
    .param p1, "route"    # Ljava/lang/String;

    .line 222
    if-nez p1, :cond_0

    .line 223
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/navigation/NavDestination;->setId(I)V

    goto :goto_0

    .line 225
    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 228
    sget-object v0, Landroidx/navigation/NavDestination;->Companion:Landroidx/navigation/NavDestination$Companion;

    invoke-virtual {v0, p1}, Landroidx/navigation/NavDestination$Companion;->createRoute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 229
    .local v0, "tempRoute":Ljava/lang/String;
    new-instance v1, Landroidx/navigation/NavDeepLink$Builder;

    invoke-direct {v1}, Landroidx/navigation/NavDeepLink$Builder;-><init>()V

    invoke-virtual {v1, v0}, Landroidx/navigation/NavDeepLink$Builder;->setUriPattern(Ljava/lang/String;)Landroidx/navigation/NavDeepLink$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/navigation/NavDeepLink$Builder;->build()Landroidx/navigation/NavDeepLink;

    move-result-object v1

    .line 231
    .local v1, "tempDeepLink":Landroidx/navigation/NavDeepLink;
    iget-object v2, p0, Landroidx/navigation/NavDestination;->_arguments:Ljava/util/Map;

    new-instance v3, Landroidx/navigation/NavDestination$route$missingRequiredArguments$1;

    invoke-direct {v3, v1}, Landroidx/navigation/NavDestination$route$missingRequiredArguments$1;-><init>(Landroidx/navigation/NavDeepLink;)V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    invoke-static {v2, v3}, Landroidx/navigation/NavArgumentKt;->missingRequiredArguments(Ljava/util/Map;Lkotlin/jvm/functions/Function1;)Ljava/util/List;

    move-result-object v2

    .line 230
    nop

    .line 234
    .local v2, "missingRequiredArguments":Ljava/util/List;
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 239
    new-instance v3, Landroidx/navigation/NavDestination$route$3;

    invoke-direct {v3, v0}, Landroidx/navigation/NavDestination$route$3;-><init>(Ljava/lang/String;)V

    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-static {v3}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v3

    iput-object v3, p0, Landroidx/navigation/NavDestination;->routeDeepLink:Lkotlin/Lazy;

    .line 240
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-virtual {p0, v3}, Landroidx/navigation/NavDestination;->setId(I)V

    .line 242
    .end local v0    # "tempRoute":Ljava/lang/String;
    .end local v1    # "tempDeepLink":Landroidx/navigation/NavDeepLink;
    .end local v2    # "missingRequiredArguments":Ljava/util/List;
    :goto_0
    iput-object p1, p0, Landroidx/navigation/NavDestination;->route:Ljava/lang/String;

    .line 243
    return-void

    .line 234
    .restart local v0    # "tempRoute":Ljava/lang/String;
    .restart local v1    # "tempDeepLink":Landroidx/navigation/NavDeepLink;
    .restart local v2    # "missingRequiredArguments":Ljava/util/List;
    :cond_1
    const/4 v3, 0x0

    .line 235
    .local v3, "$i$a$-require-NavDestination$route$2":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot set route \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\" for destination "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". Following required arguments are missing: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 236
    nop

    .line 235
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 236
    nop

    .line 234
    .end local v3    # "$i$a$-require-NavDestination$route$2":I
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 863
    .end local v0    # "tempRoute":Ljava/lang/String;
    .end local v1    # "tempDeepLink":Landroidx/navigation/NavDeepLink;
    .end local v2    # "missingRequiredArguments":Ljava/util/List;
    :cond_2
    const/4 v0, 0x0

    .line 225
    .local v0, "$i$a$-require-NavDestination$route$1":I
    nop

    .end local v0    # "$i$a$-require-NavDestination$route$1":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot have an empty route"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public supportsActions()Z
    .locals 1

    .line 524
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 674
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 675
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 676
    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 677
    iget-object v1, p0, Landroidx/navigation/NavDestination;->idName:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 678
    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 679
    iget v1, p0, Landroidx/navigation/NavDestination;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 681
    :cond_0
    iget-object v1, p0, Landroidx/navigation/NavDestination;->idName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 683
    :goto_0
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 684
    iget-object v1, p0, Landroidx/navigation/NavDestination;->route:Ljava/lang/String;

    check-cast v1, Ljava/lang/CharSequence;

    if-eqz v1, :cond_2

    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v1, 0x1

    :goto_2
    if-nez v1, :cond_3

    .line 685
    const-string v1, " route="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 686
    iget-object v1, p0, Landroidx/navigation/NavDestination;->route:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 688
    :cond_3
    iget-object v1, p0, Landroidx/navigation/NavDestination;->label:Ljava/lang/CharSequence;

    if-eqz v1, :cond_4

    .line 689
    const-string v1, " label="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 690
    iget-object v1, p0, Landroidx/navigation/NavDestination;->label:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 692
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "sb.toString()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method
