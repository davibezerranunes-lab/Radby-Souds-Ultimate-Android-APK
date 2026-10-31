.class public final Landroidx/navigation/serialization/RouteSerializerKt;
.super Ljava/lang/Object;
.source "RouteSerializer.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRouteSerializer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RouteSerializer.kt\nandroidx/navigation/serialization/RouteSerializerKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,225:1\n1#2:226\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Z\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\u001a;\u0010\u0000\u001a\u00020\u0001\"\u0008\u0008\u0000\u0010\u0002*\u00020\u00032\u0006\u0010\u0004\u001a\u0002H\u00022\u001a\u0010\u0005\u001a\u0016\u0012\u0004\u0012\u00020\u0001\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u00070\u0006H\u0007\u00a2\u0006\u0002\u0010\u0008\u001a(\u0010\t\u001a\u00020\u00012\u0006\u0010\n\u001a\u00020\u00012\u0006\u0010\u000b\u001a\u00020\u00012\u0006\u0010\u000c\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0002\u001a&\u0010\r\u001a\u00020\u000e\"\u0004\u0008\u0000\u0010\u0002*\u0008\u0012\u0004\u0012\u0002H\u00020\u000f2\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u0011H\u0002\u001a.\u0010\u0012\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0018\u00010\u0007*\u00020\u00132\u0016\u0010\u0005\u001a\u0012\u0012\u0004\u0012\u00020\u0014\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u00070\u0006H\u0002\u001a\u008e\u0001\u0010\u0015\u001a\u00020\u000e\"\u0004\u0008\u0000\u0010\u0002*\u0008\u0012\u0004\u0012\u0002H\u00020\u000f2\u001a\u0010\u0005\u001a\u0016\u0012\u0004\u0012\u00020\u0001\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u00070\u00062S\u0010\u0016\u001aO\u0012\u0013\u0012\u00110\u0018\u00a2\u0006\u000c\u0008\u0019\u0012\u0008\u0008\u001a\u0012\u0004\u0008\u0008(\u001b\u0012\u0013\u0012\u00110\u0001\u00a2\u0006\u000c\u0008\u0019\u0012\u0008\u0008\u001a\u0012\u0004\u0008\u0008(\u001c\u0012\u001b\u0012\u0019\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0007\u00a2\u0006\u000c\u0008\u0019\u0012\u0008\u0008\u001a\u0012\u0004\u0008\u0008(\u001d\u0012\u0004\u0012\u00020\u000e0\u0017H\u0003\u00a2\u0006\u0002\u0008\u001e\u001a\u008c\u0001\u0010\u0015\u001a\u00020\u000e\"\u0004\u0008\u0000\u0010\u0002*\u0008\u0012\u0004\u0012\u0002H\u00020\u000f2\u0018\u0008\u0002\u0010\u0005\u001a\u0012\u0012\u0004\u0012\u00020\u0014\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u00070\u00062S\u0010\u0016\u001aO\u0012\u0013\u0012\u00110\u0018\u00a2\u0006\u000c\u0008\u0019\u0012\u0008\u0008\u001a\u0012\u0004\u0008\u0008(\u001b\u0012\u0013\u0012\u00110\u0001\u00a2\u0006\u000c\u0008\u0019\u0012\u0008\u0008\u001a\u0012\u0004\u0008\u0008(\u001c\u0012\u001b\u0012\u0019\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0007\u00a2\u0006\u000c\u0008\u0019\u0012\u0008\u0008\u001a\u0012\u0004\u0008\u0008(\u001d\u0012\u0004\u0012\u00020\u000e0\u0017H\u0003\u00a2\u0006\u0002\u0008\u001f\u001a\u0018\u0010 \u001a\u00020\u0018\"\u0004\u0008\u0000\u0010\u0002*\u0008\u0012\u0004\u0012\u0002H\u00020\u000fH\u0007\u001a8\u0010!\u001a\u0008\u0012\u0004\u0012\u00020#0\"\"\u0004\u0008\u0000\u0010\u0002*\u0008\u0012\u0004\u0012\u0002H\u00020\u000f2\u0018\u0008\u0002\u0010\u0005\u001a\u0012\u0012\u0004\u0012\u00020\u0014\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u00070\u0006H\u0007\u001a>\u0010$\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002*\u0008\u0012\u0004\u0012\u0002H\u00020\u000f2\u0018\u0008\u0002\u0010\u0005\u001a\u0012\u0012\u0004\u0012\u00020\u0014\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u00070\u00062\n\u0008\u0002\u0010%\u001a\u0004\u0018\u00010\u0001H\u0000\u001a\u000c\u0010&\u001a\u00020\'*\u00020\u0013H\u0000\u00a8\u0006("
    }
    d2 = {
        "generateRouteWithArgs",
        "",
        "T",
        "",
        "route",
        "typeMap",
        "",
        "Landroidx/navigation/NavType;",
        "(Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/String;",
        "unknownNavTypeErrorMessage",
        "fieldName",
        "fieldType",
        "className",
        "assertNotAbstractClass",
        "",
        "Lkotlinx/serialization/KSerializer;",
        "handler",
        "Lkotlin/Function0;",
        "computeNavType",
        "Lkotlinx/serialization/descriptors/SerialDescriptor;",
        "Lkotlin/reflect/KType;",
        "forEachIndexed",
        "operation",
        "Lkotlin/Function3;",
        "",
        "Lkotlin/ParameterName;",
        "name",
        "index",
        "argName",
        "navType",
        "forEachIndexedName",
        "forEachIndexedKType",
        "generateHashCode",
        "generateNavArguments",
        "",
        "Landroidx/navigation/NamedNavArgument;",
        "generateRoutePattern",
        "path",
        "isValueClass",
        "",
        "navigation-common_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final synthetic access$computeNavType(Lkotlinx/serialization/descriptors/SerialDescriptor;Ljava/util/Map;)Landroidx/navigation/NavType;
    .locals 1
    .param p0, "$receiver"    # Lkotlinx/serialization/descriptors/SerialDescriptor;
    .param p1, "typeMap"    # Ljava/util/Map;

    .line 1
    invoke-static {p0, p1}, Landroidx/navigation/serialization/RouteSerializerKt;->computeNavType(Lkotlinx/serialization/descriptors/SerialDescriptor;Ljava/util/Map;)Landroidx/navigation/NavType;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$unknownNavTypeErrorMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "fieldName"    # Ljava/lang/String;
    .param p1, "fieldType"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "typeMap"    # Ljava/lang/String;

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroidx/navigation/serialization/RouteSerializerKt;->unknownNavTypeErrorMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static final assertNotAbstractClass(Lkotlinx/serialization/KSerializer;Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .param p0, "$this$assertNotAbstractClass"    # Lkotlinx/serialization/KSerializer;
    .param p1, "handler"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/serialization/KSerializer<",
            "TT;>;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 150
    instance-of v0, p0, Lkotlinx/serialization/PolymorphicSerializer;

    if-eqz v0, :cond_0

    .line 151
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 153
    :cond_0
    return-void
.end method

.method private static final computeNavType(Lkotlinx/serialization/descriptors/SerialDescriptor;Ljava/util/Map;)Landroidx/navigation/NavType;
    .locals 5
    .param p0, "$this$computeNavType"    # Lkotlinx/serialization/descriptors/SerialDescriptor;
    .param p1, "typeMap"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/descriptors/SerialDescriptor;",
            "Ljava/util/Map<",
            "Lkotlin/reflect/KType;",
            "+",
            "Landroidx/navigation/NavType<",
            "*>;>;)",
            "Landroidx/navigation/NavType<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 165
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lkotlin/reflect/KType;

    .line 226
    .local v3, "kType":Lkotlin/reflect/KType;
    const/4 v4, 0x0

    .line 165
    .local v4, "$i$a$-find-RouteSerializerKt$computeNavType$customType$1":I
    invoke-static {p0, v3}, Landroidx/navigation/serialization/NavTypeConverterKt;->matchKType(Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlin/reflect/KType;)Z

    move-result v3

    .end local v3    # "kType":Lkotlin/reflect/KType;
    .end local v4    # "$i$a$-find-RouteSerializerKt$computeNavType$customType$1":I
    if-eqz v3, :cond_0

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    check-cast v1, Lkotlin/reflect/KType;

    if-eqz v1, :cond_2

    move-object v0, v1

    .line 226
    .local v0, "it":Lkotlin/reflect/KType;
    const/4 v1, 0x0

    .line 165
    .local v1, "$i$a$-let-RouteSerializerKt$computeNavType$customType$2":I
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/navigation/NavType;

    .end local v0    # "it":Lkotlin/reflect/KType;
    .end local v1    # "$i$a$-let-RouteSerializerKt$computeNavType$customType$2":I
    goto :goto_1

    :cond_2
    move-object v3, v2

    :goto_1
    instance-of v0, v3, Landroidx/navigation/NavType;

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    move-object v3, v2

    .line 164
    :goto_2
    move-object v0, v3

    .line 166
    .local v0, "customType":Landroidx/navigation/NavType;
    if-nez v0, :cond_4

    invoke-static {p0}, Landroidx/navigation/serialization/NavTypeConverterKt;->getNavType(Lkotlinx/serialization/descriptors/SerialDescriptor;)Landroidx/navigation/NavType;

    move-result-object v1

    goto :goto_3

    :cond_4
    move-object v1, v0

    .line 167
    .local v1, "result":Landroidx/navigation/NavType;
    :goto_3
    sget-object v3, Landroidx/navigation/serialization/UNKNOWN;->INSTANCE:Landroidx/navigation/serialization/UNKNOWN;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_4

    :cond_5
    const-string v2, "null cannot be cast to non-null type androidx.navigation.NavType<kotlin.Any?>"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v1

    :goto_4
    return-object v2
.end method

.method private static final forEachIndexedKType(Lkotlinx/serialization/KSerializer;Ljava/util/Map;Lkotlin/jvm/functions/Function3;)V
    .locals 6
    .param p0, "$this$forEachIndexed"    # Lkotlinx/serialization/KSerializer;
    .param p1, "typeMap"    # Ljava/util/Map;
    .param p2, "operation"    # Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/serialization/KSerializer<",
            "TT;>;",
            "Ljava/util/Map<",
            "Lkotlin/reflect/KType;",
            "+",
            "Landroidx/navigation/NavType<",
            "*>;>;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/String;",
            "-",
            "Landroidx/navigation/NavType<",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 184
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-interface {p0}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v1

    invoke-interface {v1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getElementsCount()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    .line 185
    invoke-interface {p0}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v2

    invoke-interface {v2, v0}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getElementName(I)Ljava/lang/String;

    move-result-object v2

    .line 188
    .local v2, "argName":Ljava/lang/String;
    invoke-interface {p0}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v3

    invoke-interface {v3, v0}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getElementDescriptor(I)Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v3

    invoke-static {v3, p1}, Landroidx/navigation/serialization/RouteSerializerKt;->computeNavType(Lkotlinx/serialization/descriptors/SerialDescriptor;Ljava/util/Map;)Landroidx/navigation/NavType;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 187
    nop

    .line 197
    .local v3, "navType":Landroidx/navigation/NavType;
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p2, v4, v2, v3}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    .end local v2    # "argName":Ljava/lang/String;
    .end local v3    # "navType":Landroidx/navigation/NavType;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 189
    .restart local v2    # "argName":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 191
    nop

    .line 192
    invoke-interface {p0}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v3

    invoke-interface {v3, v0}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getElementDescriptor(I)Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v3

    invoke-interface {v3}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getSerialName()Ljava/lang/String;

    move-result-object v3

    .line 193
    invoke-interface {p0}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v4

    invoke-interface {v4}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getSerialName()Ljava/lang/String;

    move-result-object v4

    .line 194
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 190
    invoke-static {v2, v3, v4, v5}, Landroidx/navigation/serialization/RouteSerializerKt;->unknownNavTypeErrorMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 189
    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 199
    .end local v0    # "i":I
    .end local v2    # "argName":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method static synthetic forEachIndexedKType$default(Lkotlinx/serialization/KSerializer;Ljava/util/Map;Lkotlin/jvm/functions/Function3;ILjava/lang/Object;)V
    .locals 0

    .line 180
    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    .line 181
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p1

    .line 180
    :cond_0
    invoke-static {p0, p1, p2}, Landroidx/navigation/serialization/RouteSerializerKt;->forEachIndexedKType(Lkotlinx/serialization/KSerializer;Ljava/util/Map;Lkotlin/jvm/functions/Function3;)V

    return-void
.end method

.method private static final forEachIndexedName(Lkotlinx/serialization/KSerializer;Ljava/util/Map;Lkotlin/jvm/functions/Function3;)V
    .locals 6
    .param p0, "$this$forEachIndexed"    # Lkotlinx/serialization/KSerializer;
    .param p1, "typeMap"    # Ljava/util/Map;
    .param p2, "operation"    # Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/serialization/KSerializer<",
            "TT;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Landroidx/navigation/NavType<",
            "Ljava/lang/Object;",
            ">;>;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/String;",
            "-",
            "Landroidx/navigation/NavType<",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 206
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-interface {p0}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v1

    invoke-interface {v1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getElementsCount()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    .line 207
    invoke-interface {p0}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v2

    invoke-interface {v2, v0}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getElementName(I)Ljava/lang/String;

    move-result-object v2

    .line 208
    .local v2, "argName":Ljava/lang/String;
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/navigation/NavType;

    .line 209
    .local v3, "navType":Landroidx/navigation/NavType;
    if-eqz v3, :cond_0

    .line 210
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p2, v4, v2, v3}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    .end local v2    # "argName":Ljava/lang/String;
    .end local v3    # "navType":Landroidx/navigation/NavType;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 226
    .restart local v2    # "argName":Ljava/lang/String;
    .restart local v3    # "navType":Landroidx/navigation/NavType;
    :cond_0
    const/4 v1, 0x0

    .line 209
    .local v1, "$i$a$-checkNotNull-RouteSerializerKt$forEachIndexed$1":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot locate NavType for argument ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x5d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .end local v1    # "$i$a$-checkNotNull-RouteSerializerKt$forEachIndexed$1":I
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 212
    .end local v0    # "i":I
    .end local v2    # "argName":Ljava/lang/String;
    .end local v3    # "navType":Landroidx/navigation/NavType;
    :cond_1
    return-void
.end method

.method public static final generateHashCode(Lkotlinx/serialization/KSerializer;)I
    .locals 5
    .param p0, "$this$generateHashCode"    # Lkotlinx/serialization/KSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/serialization/KSerializer<",
            "TT;>;)I"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 172
    invoke-interface {p0}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getSerialName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 173
    .local v0, "hash":I
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {p0}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v2

    invoke-interface {v2}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getElementsCount()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_0

    .line 174
    mul-int/lit8 v3, v0, 0x1f

    invoke-interface {p0}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v4

    invoke-interface {v4, v1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getElementName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    add-int v0, v3, v4

    .line 173
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 176
    .end local v1    # "i":I
    :cond_0
    return v0
.end method

.method public static final generateNavArguments(Lkotlinx/serialization/KSerializer;Ljava/util/Map;)Ljava/util/List;
    .locals 7
    .param p0, "$this$generateNavArguments"    # Lkotlinx/serialization/KSerializer;
    .param p1, "typeMap"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/serialization/KSerializer<",
            "TT;>;",
            "Ljava/util/Map<",
            "Lkotlin/reflect/KType;",
            "+",
            "Landroidx/navigation/NavType<",
            "*>;>;)",
            "Ljava/util/List<",
            "Landroidx/navigation/NamedNavArgument;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "typeMap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    new-instance v0, Landroidx/navigation/serialization/RouteSerializerKt$generateNavArguments$1;

    invoke-direct {v0, p0}, Landroidx/navigation/serialization/RouteSerializerKt$generateNavArguments$1;-><init>(Lkotlinx/serialization/KSerializer;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {p0, v0}, Landroidx/navigation/serialization/RouteSerializerKt;->assertNotAbstractClass(Lkotlinx/serialization/KSerializer;Lkotlin/jvm/functions/Function0;)V

    .line 101
    invoke-interface {p0}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getElementsCount()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    move v3, v2

    .local v3, "index":I
    const/4 v4, 0x0

    .line 102
    .local v4, "$i$a$-List-RouteSerializerKt$generateNavArguments$2":I
    invoke-interface {p0}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v5

    invoke-interface {v5, v3}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getElementName(I)Ljava/lang/String;

    move-result-object v5

    .line 103
    .local v5, "name":Ljava/lang/String;
    new-instance v6, Landroidx/navigation/serialization/RouteSerializerKt$generateNavArguments$2$1;

    invoke-direct {v6, p0, v3, p1, v5}, Landroidx/navigation/serialization/RouteSerializerKt$generateNavArguments$2$1;-><init>(Lkotlinx/serialization/KSerializer;ILjava/util/Map;Ljava/lang/String;)V

    check-cast v6, Lkotlin/jvm/functions/Function1;

    invoke-static {v5, v6}, Landroidx/navigation/NamedNavArgumentKt;->navArgument(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Landroidx/navigation/NamedNavArgument;

    move-result-object v6

    .line 124
    nop

    .line 101
    .end local v3    # "index":I
    .end local v4    # "$i$a$-List-RouteSerializerKt$generateNavArguments$2":I
    .end local v5    # "name":Ljava/lang/String;
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    check-cast v1, Ljava/util/List;

    return-object v1
.end method

.method public static synthetic generateNavArguments$default(Lkotlinx/serialization/KSerializer;Ljava/util/Map;ILjava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 91
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 92
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p1

    .line 91
    :cond_0
    invoke-static {p0, p1}, Landroidx/navigation/serialization/RouteSerializerKt;->generateNavArguments(Lkotlinx/serialization/KSerializer;Ljava/util/Map;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final generateRoutePattern(Lkotlinx/serialization/KSerializer;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "$this$generateRoutePattern"    # Lkotlinx/serialization/KSerializer;
    .param p1, "typeMap"    # Ljava/util/Map;
    .param p2, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/serialization/KSerializer<",
            "TT;>;",
            "Ljava/util/Map<",
            "Lkotlin/reflect/KType;",
            "+",
            "Landroidx/navigation/NavType<",
            "*>;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "typeMap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    new-instance v0, Landroidx/navigation/serialization/RouteSerializerKt$generateRoutePattern$1;

    invoke-direct {v0, p0}, Landroidx/navigation/serialization/RouteSerializerKt$generateRoutePattern$1;-><init>(Lkotlinx/serialization/KSerializer;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {p0, v0}, Landroidx/navigation/serialization/RouteSerializerKt;->assertNotAbstractClass(Lkotlinx/serialization/KSerializer;Lkotlin/jvm/functions/Function0;)V

    .line 58
    if-eqz p2, :cond_0

    .line 59
    new-instance v0, Landroidx/navigation/serialization/RouteBuilder;

    invoke-direct {v0, p2, p0}, Landroidx/navigation/serialization/RouteBuilder;-><init>(Ljava/lang/String;Lkotlinx/serialization/KSerializer;)V

    goto :goto_0

    .line 61
    :cond_0
    new-instance v0, Landroidx/navigation/serialization/RouteBuilder;

    invoke-direct {v0, p0}, Landroidx/navigation/serialization/RouteBuilder;-><init>(Lkotlinx/serialization/KSerializer;)V

    .line 58
    :goto_0
    nop

    .line 57
    nop

    .line 63
    .local v0, "builder":Landroidx/navigation/serialization/RouteBuilder;
    new-instance v1, Landroidx/navigation/serialization/RouteSerializerKt$generateRoutePattern$2;

    invoke-direct {v1, v0}, Landroidx/navigation/serialization/RouteSerializerKt$generateRoutePattern$2;-><init>(Landroidx/navigation/serialization/RouteBuilder;)V

    check-cast v1, Lkotlin/jvm/functions/Function3;

    invoke-static {p0, p1, v1}, Landroidx/navigation/serialization/RouteSerializerKt;->forEachIndexedKType(Lkotlinx/serialization/KSerializer;Ljava/util/Map;Lkotlin/jvm/functions/Function3;)V

    .line 66
    invoke-virtual {v0}, Landroidx/navigation/serialization/RouteBuilder;->build()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static synthetic generateRoutePattern$default(Lkotlinx/serialization/KSerializer;Ljava/util/Map;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 46
    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    .line 47
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p1

    .line 46
    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    .line 48
    const/4 p2, 0x0

    .line 46
    :cond_1
    invoke-static {p0, p1, p2}, Landroidx/navigation/serialization/RouteSerializerKt;->generateRoutePattern(Lkotlinx/serialization/KSerializer;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final generateRouteWithArgs(Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/String;
    .locals 4
    .param p0, "route"    # Ljava/lang/Object;
    .param p1, "typeMap"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Landroidx/navigation/NavType<",
            "Ljava/lang/Object;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string/jumbo v0, "route"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "typeMap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/serialization/SerializersKt;->serializer(Lkotlin/reflect/KClass;)Lkotlinx/serialization/KSerializer;

    move-result-object v0

    .line 139
    .local v0, "serializer":Lkotlinx/serialization/KSerializer;
    new-instance v1, Landroidx/navigation/serialization/RouteEncoder;

    invoke-direct {v1, v0, p1}, Landroidx/navigation/serialization/RouteEncoder;-><init>(Lkotlinx/serialization/KSerializer;Ljava/util/Map;)V

    invoke-virtual {v1, p0}, Landroidx/navigation/serialization/RouteEncoder;->encodeToArgMap(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    .line 140
    .local v1, "argMap":Ljava/util/Map;
    new-instance v2, Landroidx/navigation/serialization/RouteBuilder;

    invoke-direct {v2, v0}, Landroidx/navigation/serialization/RouteBuilder;-><init>(Lkotlinx/serialization/KSerializer;)V

    .line 141
    .local v2, "builder":Landroidx/navigation/serialization/RouteBuilder;
    new-instance v3, Landroidx/navigation/serialization/RouteSerializerKt$generateRouteWithArgs$1;

    invoke-direct {v3, v1, v2}, Landroidx/navigation/serialization/RouteSerializerKt$generateRouteWithArgs$1;-><init>(Ljava/util/Map;Landroidx/navigation/serialization/RouteBuilder;)V

    check-cast v3, Lkotlin/jvm/functions/Function3;

    invoke-static {v0, p1, v3}, Landroidx/navigation/serialization/RouteSerializerKt;->forEachIndexedName(Lkotlinx/serialization/KSerializer;Ljava/util/Map;Lkotlin/jvm/functions/Function3;)V

    .line 145
    invoke-virtual {v2}, Landroidx/navigation/serialization/RouteBuilder;->build()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static final isValueClass(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z
    .locals 2
    .param p0, "$this$isValueClass"    # Lkotlinx/serialization/descriptors/SerialDescriptor;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 224
    invoke-interface {p0}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getKind()Lkotlinx/serialization/descriptors/SerialKind;

    move-result-object v0

    sget-object v1, Lkotlinx/serialization/descriptors/StructureKind$CLASS;->INSTANCE:Lkotlinx/serialization/descriptors/StructureKind$CLASS;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lkotlinx/serialization/descriptors/SerialDescriptor;->isInline()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getElementsCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private static final unknownNavTypeErrorMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "fieldName"    # Ljava/lang/String;
    .param p1, "fieldType"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "typeMap"    # Ljava/lang/String;

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Route "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " could not find any NavType for argument "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " of type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 221
    nop

    .line 220
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 221
    nop

    .line 220
    const-string v1, " - typeMap received was "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 221
    nop

    .line 220
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 221
    return-object v0
.end method
