.class public Landroidx/navigation/NavDestinationBuilder;
.super Ljava/lang/Object;
.source "NavDestinationBuilder.kt"


# annotations
.annotation runtime Landroidx/navigation/NavDestinationDsl;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Landroidx/navigation/NavDestination;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNavDestinationBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NavDestinationBuilder.kt\nandroidx/navigation/NavDestinationBuilder\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,398:1\n1855#2,2:399\n1855#2,2:401\n1855#2,2:405\n215#3,2:403\n215#3,2:407\n*S KotlinDebug\n*F\n+ 1 NavDestinationBuilder.kt\nandroidx/navigation/NavDestinationBuilder\n*L\n95#1:399,2\n238#1:401,2\n295#1:405,2\n294#1:403,2\n296#1:407,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u008a\u0001\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\r\n\u0002\u0008\t\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0017\u0018\u0000*\n\u0008\u0000\u0010\u0001 \u0001*\u00020\u00022\u00020\u0003B!\u0008\u0017\u0012\u000e\u0010\u0004\u001a\n\u0012\u0006\u0008\u0001\u0012\u00028\u00000\u0005\u0012\u0008\u0008\u0001\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008B!\u0008\u0016\u0012\u000e\u0010\u0004\u001a\n\u0012\u0006\u0008\u0001\u0012\u00028\u00000\u0005\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0002\u0010\u000bBB\u0008\u0016\u0012\u000e\u0010\u0004\u001a\n\u0012\u0006\u0008\u0001\u0012\u00028\u00000\u0005\u0012\u000c\u0010\t\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u000c\u0012\u001b\u0010\r\u001a\u0017\u0012\u0004\u0012\u00020\u000f\u0012\r\u0012\u000b\u0012\u0002\u0008\u00030\u0010\u00a2\u0006\u0002\u0008\u00110\u000e\u00a2\u0006\u0002\u0010\u0012B+\u0008\u0000\u0012\u000e\u0010\u0004\u001a\n\u0012\u0006\u0008\u0001\u0012\u00028\u00000\u0005\u0012\u0008\u0008\u0001\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0002\u0010\u0013J)\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020\u00072\u0017\u0010+\u001a\u0013\u0012\u0004\u0012\u00020-\u0012\u0004\u0012\u00020)0,\u00a2\u0006\u0002\u0008.H\u0007J\u0016\u0010/\u001a\u00020)2\u0006\u00100\u001a\u00020\n2\u0006\u0010/\u001a\u00020\u0018J\'\u0010/\u001a\u00020)2\u0006\u00100\u001a\u00020\n2\u0017\u00101\u001a\u0013\u0012\u0004\u0012\u000202\u0012\u0004\u0012\u00020)0,\u00a2\u0006\u0002\u0008.J\r\u00103\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u00104J\u000e\u00105\u001a\u00020)2\u0006\u00106\u001a\u00020\u001bJ\u001f\u00105\u001a\u00020)2\u0017\u00106\u001a\u0013\u0012\u0004\u0012\u000207\u0012\u0004\u0012\u00020)0,\u00a2\u0006\u0002\u0008.J\u000e\u00105\u001a\u00020)2\u0006\u00108\u001a\u00020\nJ\"\u00105\u001a\u00020)\"\n\u0008\u0001\u00109\u0018\u0001*\u00020\u00032\u0006\u0010:\u001a\u00020\nH\u0087\u0008\u00a2\u0006\u0002\u0008;J;\u00105\u001a\u00020)\"\n\u0008\u0001\u00109\u0018\u0001*\u00020\u00032\u0006\u0010:\u001a\u00020\n2\u0019\u0008\u0008\u00106\u001a\u0013\u0012\u0004\u0012\u000207\u0012\u0004\u0012\u00020)0,\u00a2\u0006\u0002\u0008.H\u0086\u0008\u00f8\u0001\u0000JA\u00105\u001a\u00020)\"\u0008\u0008\u0001\u00109*\u00020\u00032\u0006\u0010:\u001a\u00020\n2\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u0002H90\u000c2\u0017\u00106\u001a\u0013\u0012\u0004\u0012\u000207\u0012\u0004\u0012\u00020)0,\u00a2\u0006\u0002\u0008.H\u0007J\r\u0010<\u001a\u00028\u0000H\u0014\u00a2\u0006\u0002\u00104R\u001a\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00160\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0017\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u00180\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u001b0\u001aX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u001dR\u001c\u0010\u001e\u001a\u0004\u0018\u00010\u001fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008 \u0010!\"\u0004\u0008\"\u0010#R\u001c\u0010\u0004\u001a\n\u0012\u0006\u0008\u0001\u0012\u00028\u00000\u0005X\u0084\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008$\u0010%R\u0013\u0010\t\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008&\u0010\'R\u001e\u0010\r\u001a\u0012\u0012\u0004\u0012\u00020\u000f\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u00100\u000eX\u0082.\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u0006="
    }
    d2 = {
        "Landroidx/navigation/NavDestinationBuilder;",
        "D",
        "Landroidx/navigation/NavDestination;",
        "",
        "navigator",
        "Landroidx/navigation/Navigator;",
        "id",
        "",
        "(Landroidx/navigation/Navigator;I)V",
        "route",
        "",
        "(Landroidx/navigation/Navigator;Ljava/lang/String;)V",
        "Lkotlin/reflect/KClass;",
        "typeMap",
        "",
        "Lkotlin/reflect/KType;",
        "Landroidx/navigation/NavType;",
        "Lkotlin/jvm/JvmSuppressWildcards;",
        "(Landroidx/navigation/Navigator;Lkotlin/reflect/KClass;Ljava/util/Map;)V",
        "(Landroidx/navigation/Navigator;ILjava/lang/String;)V",
        "actions",
        "",
        "Landroidx/navigation/NavAction;",
        "arguments",
        "Landroidx/navigation/NavArgument;",
        "deepLinks",
        "",
        "Landroidx/navigation/NavDeepLink;",
        "getId",
        "()I",
        "label",
        "",
        "getLabel",
        "()Ljava/lang/CharSequence;",
        "setLabel",
        "(Ljava/lang/CharSequence;)V",
        "getNavigator",
        "()Landroidx/navigation/Navigator;",
        "getRoute",
        "()Ljava/lang/String;",
        "action",
        "",
        "actionId",
        "actionBuilder",
        "Lkotlin/Function1;",
        "Landroidx/navigation/NavActionBuilder;",
        "Lkotlin/ExtensionFunctionType;",
        "argument",
        "name",
        "argumentBuilder",
        "Landroidx/navigation/NavArgumentBuilder;",
        "build",
        "()Landroidx/navigation/NavDestination;",
        "deepLink",
        "navDeepLink",
        "Landroidx/navigation/NavDeepLinkDslBuilder;",
        "uriPattern",
        "T",
        "basePath",
        "deepLinkSafeArgs",
        "instantiateDestination",
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


# instance fields
.field private actions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroidx/navigation/NavAction;",
            ">;"
        }
    .end annotation
.end field

.field private arguments:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/navigation/NavArgument;",
            ">;"
        }
    .end annotation
.end field

.field private deepLinks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/navigation/NavDeepLink;",
            ">;"
        }
    .end annotation
.end field

.field private final id:I

.field private label:Ljava/lang/CharSequence;

.field private final navigator:Landroidx/navigation/Navigator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/navigation/Navigator<",
            "+TD;>;"
        }
    .end annotation
.end field

.field private final route:Ljava/lang/String;

.field private typeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lkotlin/reflect/KType;",
            "+",
            "Landroidx/navigation/NavType<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/navigation/Navigator;I)V
    .locals 1
    .param p1, "navigator"    # Landroidx/navigation/Navigator;
    .param p2, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/navigation/Navigator<",
            "+TD;>;I)V"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        message = "Use routes to build your NavDestination instead"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "NavDestinationBuilder(navigator, route = id.toString())"
            imports = {}
        .end subannotation
    .end annotation

    const-string v0, "navigator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/navigation/NavDestinationBuilder;-><init>(Landroidx/navigation/Navigator;ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroidx/navigation/Navigator;ILjava/lang/String;)V
    .locals 1
    .param p1, "navigator"    # Landroidx/navigation/Navigator;
    .param p2, "id"    # I
    .param p3, "route"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/navigation/Navigator<",
            "+TD;>;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "navigator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Landroidx/navigation/NavDestinationBuilder;->navigator:Landroidx/navigation/Navigator;

    .line 42
    iput p2, p0, Landroidx/navigation/NavDestinationBuilder;->id:I

    .line 44
    iput-object p3, p0, Landroidx/navigation/NavDestinationBuilder;->route:Ljava/lang/String;

    .line 105
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Landroidx/navigation/NavDestinationBuilder;->arguments:Ljava/util/Map;

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Landroidx/navigation/NavDestinationBuilder;->deepLinks:Ljava/util/List;

    .line 270
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Landroidx/navigation/NavDestinationBuilder;->actions:Ljava/util/Map;

    .line 35
    return-void
.end method

.method public constructor <init>(Landroidx/navigation/Navigator;Ljava/lang/String;)V
    .locals 1
    .param p1, "navigator"    # Landroidx/navigation/Navigator;
    .param p2, "route"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/navigation/Navigator<",
            "+TD;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "navigator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0, p2}, Landroidx/navigation/NavDestinationBuilder;-><init>(Landroidx/navigation/Navigator;ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroidx/navigation/Navigator;Lkotlin/reflect/KClass;Ljava/util/Map;)V
    .locals 11
    .param p1, "navigator"    # Landroidx/navigation/Navigator;
    .param p2, "route"    # Lkotlin/reflect/KClass;
    .param p3, "typeMap"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/navigation/Navigator<",
            "+TD;>;",
            "Lkotlin/reflect/KClass<",
            "*>;",
            "Ljava/util/Map<",
            "Lkotlin/reflect/KType;",
            "Landroidx/navigation/NavType<",
            "*>;>;)V"
        }
    .end annotation

    const-string v0, "navigator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "typeMap"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    nop

    .line 90
    nop

    .line 91
    if-eqz p2, :cond_0

    invoke-static {p2}, Lkotlinx/serialization/SerializersKt;->serializer(Lkotlin/reflect/KClass;)Lkotlinx/serialization/KSerializer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroidx/navigation/serialization/RouteSerializerKt;->generateHashCode(Lkotlinx/serialization/KSerializer;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 92
    :goto_0
    const/4 v1, 0x0

    if-eqz p2, :cond_1

    invoke-static {p2}, Lkotlinx/serialization/SerializersKt;->serializer(Lkotlin/reflect/KClass;)Lkotlinx/serialization/KSerializer;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v3, 0x2

    invoke-static {v2, p3, v1, v3, v1}, Landroidx/navigation/serialization/RouteSerializerKt;->generateRoutePattern$default(Lkotlinx/serialization/KSerializer;Ljava/util/Map;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 89
    :cond_1
    invoke-direct {p0, p1, v0, v1}, Landroidx/navigation/NavDestinationBuilder;-><init>(Landroidx/navigation/Navigator;ILjava/lang/String;)V

    .line 94
    if-eqz p2, :cond_3

    move-object v0, p2

    .local v0, "$this$_init__u24lambda_u241":Lkotlin/reflect/KClass;
    const/4 v1, 0x0

    .line 95
    .local v1, "$i$a$-apply-NavDestinationBuilder$1":I
    invoke-static {v0}, Lkotlinx/serialization/SerializersKt;->serializer(Lkotlin/reflect/KClass;)Lkotlinx/serialization/KSerializer;

    move-result-object v2

    invoke-static {v2, p3}, Landroidx/navigation/serialization/RouteSerializerKt;->generateNavArguments(Lkotlinx/serialization/KSerializer;Ljava/util/Map;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    .local v2, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v3, 0x0

    .line 399
    .local v3, "$i$f$forEach":I
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .local v5, "element$iv":Ljava/lang/Object;
    move-object v6, v5

    check-cast v6, Landroidx/navigation/NamedNavArgument;

    .local v6, "it":Landroidx/navigation/NamedNavArgument;
    const/4 v7, 0x0

    .line 95
    .local v7, "$i$a$-forEach-NavDestinationBuilder$1$1":I
    iget-object v8, p0, Landroidx/navigation/NavDestinationBuilder;->arguments:Ljava/util/Map;

    invoke-virtual {v6}, Landroidx/navigation/NamedNavArgument;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6}, Landroidx/navigation/NamedNavArgument;->getArgument()Landroidx/navigation/NavArgument;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    .end local v6    # "it":Landroidx/navigation/NamedNavArgument;
    .end local v7    # "$i$a$-forEach-NavDestinationBuilder$1$1":I
    nop

    .end local v5    # "element$iv":Ljava/lang/Object;
    goto :goto_1

    .line 400
    :cond_2
    nop

    .line 96
    .end local v2    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v3    # "$i$f$forEach":I
    nop

    .line 94
    .end local v0    # "$this$_init__u24lambda_u241":Lkotlin/reflect/KClass;
    .end local v1    # "$i$a$-apply-NavDestinationBuilder$1":I
    nop

    .line 97
    :cond_3
    iput-object p3, p0, Landroidx/navigation/NavDestinationBuilder;->typeMap:Ljava/util/Map;

    .line 98
    return-void
.end method


# virtual methods
.method public final action(ILkotlin/jvm/functions/Function1;)V
    .locals 3
    .param p1, "actionId"    # I
    .param p2, "actionBuilder"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/navigation/NavActionBuilder;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        message = "Building NavDestinations using IDs with the Kotlin DSL has been deprecated in favor of using routes. When using routes there is no need for actions."
    .end annotation

    const-string v0, "actionBuilder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 278
    iget-object v0, p0, Landroidx/navigation/NavDestinationBuilder;->actions:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroidx/navigation/NavActionBuilder;

    invoke-direct {v2}, Landroidx/navigation/NavActionBuilder;-><init>()V

    invoke-interface {p2, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Landroidx/navigation/NavActionBuilder;->build$navigation_common_release()Landroidx/navigation/NavAction;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    return-void
.end method

.method public final argument(Ljava/lang/String;Landroidx/navigation/NavArgument;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "argument"    # Landroidx/navigation/NavArgument;

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "argument"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Landroidx/navigation/NavDestinationBuilder;->arguments:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    return-void
.end method

.method public final argument(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "argumentBuilder"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/navigation/NavArgumentBuilder;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "argumentBuilder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Landroidx/navigation/NavDestinationBuilder;->arguments:Ljava/util/Map;

    new-instance v1, Landroidx/navigation/NavArgumentBuilder;

    invoke-direct {v1}, Landroidx/navigation/NavArgumentBuilder;-><init>()V

    invoke-interface {p2, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Landroidx/navigation/NavArgumentBuilder;->build()Landroidx/navigation/NavArgument;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    return-void
.end method

.method public build()Landroidx/navigation/NavDestination;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation

    .line 292
    invoke-virtual {p0}, Landroidx/navigation/NavDestinationBuilder;->instantiateDestination()Landroidx/navigation/NavDestination;

    move-result-object v0

    move-object v1, v0

    .local v1, "destination":Landroidx/navigation/NavDestination;
    const/4 v2, 0x0

    .line 293
    .local v2, "$i$a$-also-NavDestinationBuilder$build$1":I
    iget-object v3, p0, Landroidx/navigation/NavDestinationBuilder;->label:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroidx/navigation/NavDestination;->setLabel(Ljava/lang/CharSequence;)V

    .line 294
    iget-object v3, p0, Landroidx/navigation/NavDestinationBuilder;->arguments:Ljava/util/Map;

    .local v3, "$this$forEach$iv":Ljava/util/Map;
    const/4 v4, 0x0

    .line 403
    .local v4, "$i$f$forEach":I
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .local v6, "element$iv":Ljava/util/Map$Entry;
    const/4 v7, 0x0

    .line 294
    .local v7, "$i$a$-forEach-NavDestinationBuilder$build$1$1":I
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .local v8, "name":Ljava/lang/String;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/navigation/NavArgument;

    .local v9, "argument":Landroidx/navigation/NavArgument;
    invoke-virtual {v1, v8, v9}, Landroidx/navigation/NavDestination;->addArgument(Ljava/lang/String;Landroidx/navigation/NavArgument;)V

    .line 403
    .end local v7    # "$i$a$-forEach-NavDestinationBuilder$build$1$1":I
    .end local v8    # "name":Ljava/lang/String;
    .end local v9    # "argument":Landroidx/navigation/NavArgument;
    nop

    .end local v6    # "element$iv":Ljava/util/Map$Entry;
    goto :goto_0

    .line 404
    :cond_0
    nop

    .line 295
    .end local v3    # "$this$forEach$iv":Ljava/util/Map;
    .end local v4    # "$i$f$forEach":I
    iget-object v3, p0, Landroidx/navigation/NavDestinationBuilder;->deepLinks:Ljava/util/List;

    check-cast v3, Ljava/lang/Iterable;

    .local v3, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 405
    .restart local v4    # "$i$f$forEach":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .local v6, "element$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Landroidx/navigation/NavDeepLink;

    .local v7, "deepLink":Landroidx/navigation/NavDeepLink;
    const/4 v8, 0x0

    .line 295
    .local v8, "$i$a$-forEach-NavDestinationBuilder$build$1$2":I
    invoke-virtual {v1, v7}, Landroidx/navigation/NavDestination;->addDeepLink(Landroidx/navigation/NavDeepLink;)V

    .line 405
    .end local v7    # "deepLink":Landroidx/navigation/NavDeepLink;
    .end local v8    # "$i$a$-forEach-NavDestinationBuilder$build$1$2":I
    nop

    .end local v6    # "element$iv":Ljava/lang/Object;
    goto :goto_1

    .line 406
    :cond_1
    nop

    .line 296
    .end local v3    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$forEach":I
    iget-object v3, p0, Landroidx/navigation/NavDestinationBuilder;->actions:Ljava/util/Map;

    .local v3, "$this$forEach$iv":Ljava/util/Map;
    const/4 v4, 0x0

    .line 407
    .restart local v4    # "$i$f$forEach":I
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .local v6, "element$iv":Ljava/util/Map$Entry;
    const/4 v7, 0x0

    .line 296
    .local v7, "$i$a$-forEach-NavDestinationBuilder$build$1$3":I
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    .local v8, "actionId":I
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/navigation/NavAction;

    .local v9, "action":Landroidx/navigation/NavAction;
    invoke-virtual {v1, v8, v9}, Landroidx/navigation/NavDestination;->putAction(ILandroidx/navigation/NavAction;)V

    .line 407
    .end local v7    # "$i$a$-forEach-NavDestinationBuilder$build$1$3":I
    .end local v8    # "actionId":I
    .end local v9    # "action":Landroidx/navigation/NavAction;
    nop

    .end local v6    # "element$iv":Ljava/util/Map$Entry;
    goto :goto_2

    .line 408
    :cond_2
    nop

    .line 297
    .end local v3    # "$this$forEach$iv":Ljava/util/Map;
    .end local v4    # "$i$f$forEach":I
    iget-object v3, p0, Landroidx/navigation/NavDestinationBuilder;->route:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 298
    iget-object v3, p0, Landroidx/navigation/NavDestinationBuilder;->route:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroidx/navigation/NavDestination;->setRoute(Ljava/lang/String;)V

    .line 300
    :cond_3
    iget v3, p0, Landroidx/navigation/NavDestinationBuilder;->id:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_4

    .line 301
    iget v3, p0, Landroidx/navigation/NavDestinationBuilder;->id:I

    invoke-virtual {v1, v3}, Landroidx/navigation/NavDestination;->setId(I)V

    .line 303
    :cond_4
    nop

    .line 292
    .end local v1    # "destination":Landroidx/navigation/NavDestination;
    .end local v2    # "$i$a$-also-NavDestinationBuilder$build$1":I
    return-object v0
.end method

.method public final deepLink(Landroidx/navigation/NavDeepLink;)V
    .locals 1
    .param p1, "navDeepLink"    # Landroidx/navigation/NavDeepLink;

    const-string v0, "navDeepLink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 267
    iget-object v0, p0, Landroidx/navigation/NavDestinationBuilder;->deepLinks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 268
    return-void
.end method

.method public final deepLink(Ljava/lang/String;)V
    .locals 2
    .param p1, "uriPattern"    # Ljava/lang/String;

    const-string/jumbo v0, "uriPattern"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Landroidx/navigation/NavDestinationBuilder;->deepLinks:Ljava/util/List;

    new-instance v1, Landroidx/navigation/NavDeepLink;

    invoke-direct {v1, p1}, Landroidx/navigation/NavDeepLink;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    return-void
.end method

.method public final synthetic deepLink(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 3
    .param p1, "basePath"    # Ljava/lang/String;
    .param p2, "navDeepLink"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/navigation/NavDeepLinkDslBuilder;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "basePath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "navDeepLink"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 207
    .local v0, "$i$f$deepLink":I
    const/4 v1, 0x4

    const-string v2, "T"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v1, Ljava/lang/Object;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-virtual {p0, p1, v1, p2}, Landroidx/navigation/NavDestinationBuilder;->deepLink(Ljava/lang/String;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function1;)V

    .line 208
    return-void
.end method

.method public final deepLink(Ljava/lang/String;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function1;)V
    .locals 17
    .param p1, "basePath"    # Ljava/lang/String;
    .param p2, "route"    # Lkotlin/reflect/KClass;
    .param p3, "navDeepLink"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lkotlin/reflect/KClass<",
            "TT;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/navigation/NavDeepLinkDslBuilder;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-string v4, "basePath"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v4, "route"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "navDeepLink"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 233
    iget-object v4, v0, Landroidx/navigation/NavDestinationBuilder;->typeMap:Ljava/util/Map;

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    const-string v7, "Cannot add deeplink from KClass ["

    if-eqz v4, :cond_6

    .line 237
    invoke-static/range {p2 .. p2}, Lkotlinx/serialization/SerializersKt;->serializer(Lkotlin/reflect/KClass;)Lkotlinx/serialization/KSerializer;

    move-result-object v4

    iget-object v8, v0, Landroidx/navigation/NavDestinationBuilder;->typeMap:Ljava/util/Map;

    const-string/jumbo v10, "typeMap"

    if-nez v8, :cond_1

    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v8, 0x0

    :cond_1
    invoke-static {v4, v8}, Landroidx/navigation/serialization/RouteSerializerKt;->generateNavArguments(Lkotlinx/serialization/KSerializer;Ljava/util/Map;)Ljava/util/List;

    move-result-object v4

    .line 238
    .local v4, "deepLinkArgs":Ljava/util/List;
    move-object v8, v4

    check-cast v8, Ljava/lang/Iterable;

    .local v8, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v11, 0x0

    .line 401
    .local v11, "$i$f$forEach":I
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    .local v13, "element$iv":Ljava/lang/Object;
    move-object v14, v13

    check-cast v14, Landroidx/navigation/NamedNavArgument;

    .local v14, "it":Landroidx/navigation/NamedNavArgument;
    const/4 v15, 0x0

    .line 239
    .local v15, "$i$a$-forEach-NavDestinationBuilder$deepLink$3":I
    iget-object v5, v0, Landroidx/navigation/NavDestinationBuilder;->arguments:Ljava/util/Map;

    invoke-virtual {v14}, Landroidx/navigation/NamedNavArgument;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/navigation/NavArgument;

    .line 242
    .local v5, "arg":Landroidx/navigation/NavArgument;
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Landroidx/navigation/NavArgument;->getType()Landroidx/navigation/NavType;

    move-result-object v6

    invoke-virtual {v14}, Landroidx/navigation/NamedNavArgument;->getArgument()Landroidx/navigation/NavArgument;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroidx/navigation/NavArgument;->getType()Landroidx/navigation/NavType;

    move-result-object v9

    invoke-static {v6, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v6, 0x1

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    :goto_2
    if-eqz v6, :cond_3

    .line 247
    nop

    .line 401
    .end local v5    # "arg":Landroidx/navigation/NavArgument;
    .end local v14    # "it":Landroidx/navigation/NamedNavArgument;
    .end local v15    # "$i$a$-forEach-NavDestinationBuilder$deepLink$3":I
    nop

    .end local v13    # "element$iv":Ljava/lang/Object;
    goto :goto_1

    .line 242
    .restart local v5    # "arg":Landroidx/navigation/NavArgument;
    .restart local v13    # "element$iv":Ljava/lang/Object;
    .restart local v14    # "it":Landroidx/navigation/NamedNavArgument;
    .restart local v15    # "$i$a$-forEach-NavDestinationBuilder$deepLink$3":I
    :cond_3
    const/4 v6, 0x0

    .line 243
    .local v6, "$i$a$-require-NavDestinationBuilder$deepLink$3$1":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "]. DeepLink contains unknown argument ["

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 244
    invoke-virtual {v14}, Landroidx/navigation/NamedNavArgument;->getName()Ljava/lang/String;

    move-result-object v9

    .line 243
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 244
    nop

    .line 243
    const-string v9, "]. Ensure deeplink arguments matches the destination\'s route from KClass"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 245
    nop

    .line 242
    .end local v6    # "$i$a$-require-NavDestinationBuilder$deepLink$3$1":I
    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 402
    .end local v5    # "arg":Landroidx/navigation/NavArgument;
    .end local v13    # "element$iv":Ljava/lang/Object;
    .end local v14    # "it":Landroidx/navigation/NamedNavArgument;
    .end local v15    # "$i$a$-forEach-NavDestinationBuilder$deepLink$3":I
    :cond_4
    nop

    .line 248
    .end local v8    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v11    # "$i$f$forEach":I
    iget-object v5, v0, Landroidx/navigation/NavDestinationBuilder;->typeMap:Ljava/util/Map;

    if-nez v5, :cond_5

    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v9, 0x0

    goto :goto_3

    :cond_5
    move-object v9, v5

    :goto_3
    invoke-static {v1, v2, v9, v3}, Landroidx/navigation/NavDeepLinkDslBuilderKt;->navDeepLink(Ljava/lang/String;Lkotlin/reflect/KClass;Ljava/util/Map;Lkotlin/jvm/functions/Function1;)Landroidx/navigation/NavDeepLink;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroidx/navigation/NavDestinationBuilder;->deepLink(Landroidx/navigation/NavDeepLink;)V

    .line 249
    return-void

    .line 233
    .end local v4    # "deepLinkArgs":Ljava/util/List;
    :cond_6
    const/4 v4, 0x0

    .line 234
    .local v4, "$i$a$-check-NavDestinationBuilder$deepLink$2":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]. Use the NavDestinationBuilder constructor that takes a KClass with the same arguments."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 235
    nop

    .line 233
    .end local v4    # "$i$a$-check-NavDestinationBuilder$deepLink$2":I
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public final deepLink(Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .param p1, "navDeepLink"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/navigation/NavDeepLinkDslBuilder;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "navDeepLink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Landroidx/navigation/NavDestinationBuilder;->deepLinks:Ljava/util/List;

    new-instance v1, Landroidx/navigation/NavDeepLinkDslBuilder;

    invoke-direct {v1}, Landroidx/navigation/NavDeepLinkDslBuilder;-><init>()V

    invoke-interface {p1, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Landroidx/navigation/NavDeepLinkDslBuilder;->build$navigation_common_release()Landroidx/navigation/NavDeepLink;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    return-void
.end method

.method public final synthetic deepLinkSafeArgs(Ljava/lang/String;)V
    .locals 3
    .param p1, "basePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "basePath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 162
    .local v0, "$i$f$deepLinkSafeArgs":I
    const/4 v1, 0x4

    const-string v2, "T"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v1, Ljava/lang/Object;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    sget-object v2, Landroidx/navigation/NavDestinationBuilder$deepLink$1;->INSTANCE:Landroidx/navigation/NavDestinationBuilder$deepLink$1;

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p0, p1, v1, v2}, Landroidx/navigation/NavDestinationBuilder;->deepLink(Ljava/lang/String;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function1;)V

    .line 163
    return-void
.end method

.method public final getId()I
    .locals 1

    .line 42
    iget v0, p0, Landroidx/navigation/NavDestinationBuilder;->id:I

    return v0
.end method

.method public final getLabel()Ljava/lang/CharSequence;
    .locals 1

    .line 103
    iget-object v0, p0, Landroidx/navigation/NavDestinationBuilder;->label:Ljava/lang/CharSequence;

    return-object v0
.end method

.method protected final getNavigator()Landroidx/navigation/Navigator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/navigation/Navigator<",
            "+TD;>;"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Landroidx/navigation/NavDestinationBuilder;->navigator:Landroidx/navigation/Navigator;

    return-object v0
.end method

.method public final getRoute()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Landroidx/navigation/NavDestinationBuilder;->route:Ljava/lang/String;

    return-object v0
.end method

.method protected instantiateDestination()Landroidx/navigation/NavDestination;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation

    .line 288
    iget-object v0, p0, Landroidx/navigation/NavDestinationBuilder;->navigator:Landroidx/navigation/Navigator;

    invoke-virtual {v0}, Landroidx/navigation/Navigator;->createDestination()Landroidx/navigation/NavDestination;

    move-result-object v0

    return-object v0
.end method

.method public final setLabel(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "<set-?>"    # Ljava/lang/CharSequence;

    .line 103
    iput-object p1, p0, Landroidx/navigation/NavDestinationBuilder;->label:Ljava/lang/CharSequence;

    return-void
.end method
