.class public final Lkotlinx/serialization/internal/EnumDescriptor;
.super Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;
.source "Enums.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEnums.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Enums.kt\nkotlinx/serialization/internal/EnumDescriptor\n+ 2 Platform.kt\nkotlinx/serialization/internal/PlatformKt\n+ 3 Platform.common.kt\nkotlinx/serialization/internal/Platform_commonKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,151:1\n13#2:152\n159#3:153\n1789#4,3:154\n*S KotlinDebug\n*F\n+ 1 Enums.kt\nkotlinx/serialization/internal/EnumDescriptor\n*L\n28#1:152\n46#1:153\n46#1:154,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0005\u0008\u0001\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0013\u0010\u0012\u001a\u00020\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0096\u0002J\u0010\u0010\u0016\u001a\u00020\t2\u0006\u0010\u0017\u001a\u00020\u0005H\u0016J\u0008\u0010\u0018\u001a\u00020\u0005H\u0016J\u0008\u0010\u0019\u001a\u00020\u0003H\u0016R!\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00088BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\n\u0010\u000bR\u0014\u0010\u000e\u001a\u00020\u000fX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u001a"
    }
    d2 = {
        "Lkotlinx/serialization/internal/EnumDescriptor;",
        "Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;",
        "name",
        "",
        "elementsCount",
        "",
        "(Ljava/lang/String;I)V",
        "elementDescriptors",
        "",
        "Lkotlinx/serialization/descriptors/SerialDescriptor;",
        "getElementDescriptors",
        "()[Lkotlinx/serialization/descriptors/SerialDescriptor;",
        "elementDescriptors$delegate",
        "Lkotlin/Lazy;",
        "kind",
        "Lkotlinx/serialization/descriptors/SerialKind;",
        "getKind",
        "()Lkotlinx/serialization/descriptors/SerialKind;",
        "equals",
        "",
        "other",
        "",
        "getElementDescriptor",
        "index",
        "hashCode",
        "toString",
        "kotlinx-serialization-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final elementDescriptors$delegate:Lkotlin/Lazy;

.field private final kind:Lkotlinx/serialization/descriptors/SerialKind;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "elementsCount"    # I

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    move v4, p2

    invoke-direct/range {v1 .. v6}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;-><init>(Ljava/lang/String;Lkotlinx/serialization/internal/GeneratedSerializer;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 23
    sget-object v0, Lkotlinx/serialization/descriptors/SerialKind$ENUM;->INSTANCE:Lkotlinx/serialization/descriptors/SerialKind$ENUM;

    check-cast v0, Lkotlinx/serialization/descriptors/SerialKind;

    iput-object v0, p0, Lkotlinx/serialization/internal/EnumDescriptor;->kind:Lkotlinx/serialization/descriptors/SerialKind;

    .line 24
    new-instance v0, Lkotlinx/serialization/internal/EnumDescriptor$elementDescriptors$2;

    invoke-direct {v0, p2, p1, p0}, Lkotlinx/serialization/internal/EnumDescriptor$elementDescriptors$2;-><init>(ILjava/lang/String;Lkotlinx/serialization/internal/EnumDescriptor;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lkotlinx/serialization/internal/EnumDescriptor;->elementDescriptors$delegate:Lkotlin/Lazy;

    .line 18
    return-void
.end method

.method private final getElementDescriptors()[Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 1

    .line 24
    iget-object v0, p0, Lkotlinx/serialization/internal/EnumDescriptor;->elementDescriptors$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .line 31
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 32
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 33
    :cond_1
    instance-of v2, p1, Lkotlinx/serialization/descriptors/SerialDescriptor;

    if-nez v2, :cond_2

    return v1

    .line 34
    :cond_2
    move-object v2, p1

    check-cast v2, Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-interface {v2}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getKind()Lkotlinx/serialization/descriptors/SerialKind;

    move-result-object v2

    sget-object v3, Lkotlinx/serialization/descriptors/SerialKind$ENUM;->INSTANCE:Lkotlinx/serialization/descriptors/SerialKind$ENUM;

    if-eq v2, v3, :cond_3

    return v1

    .line 35
    :cond_3
    invoke-virtual {p0}, Lkotlinx/serialization/internal/EnumDescriptor;->getSerialName()Ljava/lang/String;

    move-result-object v2

    move-object v3, p1

    check-cast v3, Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-interface {v3}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getSerialName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 36
    :cond_4
    move-object v2, p0

    check-cast v2, Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-static {v2}, Lkotlinx/serialization/internal/Platform_commonKt;->cachedSerialNames(Lkotlinx/serialization/descriptors/SerialDescriptor;)Ljava/util/Set;

    move-result-object v2

    move-object v3, p1

    check-cast v3, Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-static {v3}, Lkotlinx/serialization/internal/Platform_commonKt;->cachedSerialNames(Lkotlinx/serialization/descriptors/SerialDescriptor;)Ljava/util/Set;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    .line 37
    :cond_5
    return v0
.end method

.method public getElementDescriptor(I)Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 2
    .param p1, "index"    # I

    .line 28
    invoke-direct {p0}, Lkotlinx/serialization/internal/EnumDescriptor;->getElementDescriptors()[Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v0

    .local v0, "$this$getChecked$iv":[Ljava/lang/Object;
    const/4 v1, 0x0

    .line 152
    .local v1, "$i$f$getChecked":I
    aget-object v0, v0, p1

    .line 28
    .end local v0    # "$this$getChecked$iv":[Ljava/lang/Object;
    .end local v1    # "$i$f$getChecked":I
    return-object v0
.end method

.method public getKind()Lkotlinx/serialization/descriptors/SerialKind;
    .locals 1

    .line 23
    iget-object v0, p0, Lkotlinx/serialization/internal/EnumDescriptor;->kind:Lkotlinx/serialization/descriptors/SerialKind;

    return-object v0
.end method

.method public hashCode()I
    .locals 15

    .line 45
    invoke-virtual {p0}, Lkotlinx/serialization/internal/EnumDescriptor;->getSerialName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 46
    .local v0, "result":I
    move-object v1, p0

    check-cast v1, Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-static {v1}, Lkotlinx/serialization/descriptors/SerialDescriptorKt;->getElementNames(Lkotlinx/serialization/descriptors/SerialDescriptor;)Ljava/lang/Iterable;

    move-result-object v1

    .local v1, "$this$elementsHashCodeBy$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 153
    .local v2, "$i$f$elementsHashCodeBy":I
    const/4 v3, 0x1

    .local v3, "initial$iv$iv":I
    move-object v4, v1

    .local v4, "$this$fold$iv$iv":Ljava/lang/Iterable;
    const/4 v5, 0x0

    .line 154
    .local v5, "$i$f$fold":I
    move v6, v3

    .line 155
    .local v6, "accumulator$iv$iv":I
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .local v8, "element$iv$iv":Ljava/lang/Object;
    move v9, v6

    .local v9, "hash$iv":I
    move-object v10, v8

    .local v10, "element$iv":Ljava/lang/Object;
    const/4 v11, 0x0

    .line 153
    .local v11, "$i$a$-fold-Platform_commonKt$elementsHashCodeBy$1$iv":I
    mul-int/lit8 v12, v9, 0x1f

    move-object v13, v10

    check-cast v13, Ljava/lang/String;

    .local v13, "it":Ljava/lang/String;
    const/4 v14, 0x0

    .line 46
    .local v14, "$i$a$-elementsHashCodeBy-EnumDescriptor$hashCode$elementsHashCode$1":I
    nop

    .line 153
    .end local v13    # "it":Ljava/lang/String;
    .end local v14    # "$i$a$-elementsHashCodeBy-EnumDescriptor$hashCode$elementsHashCode$1":I
    if-eqz v13, :cond_0

    invoke-virtual {v13}, Ljava/lang/Object;->hashCode()I

    move-result v13

    goto :goto_1

    :cond_0
    const/4 v13, 0x0

    :goto_1
    add-int/2addr v12, v13

    .line 155
    .end local v9    # "hash$iv":I
    .end local v10    # "element$iv":Ljava/lang/Object;
    .end local v11    # "$i$a$-fold-Platform_commonKt$elementsHashCodeBy$1$iv":I
    move v6, v12

    .end local v8    # "element$iv$iv":Ljava/lang/Object;
    goto :goto_0

    .line 156
    :cond_1
    nop

    .line 153
    .end local v3    # "initial$iv$iv":I
    .end local v4    # "$this$fold$iv$iv":Ljava/lang/Iterable;
    .end local v5    # "$i$f$fold":I
    .end local v6    # "accumulator$iv$iv":I
    nop

    .line 46
    .end local v1    # "$this$elementsHashCodeBy$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$elementsHashCodeBy":I
    move v1, v6

    .line 47
    .local v1, "elementsHashCode":I
    mul-int/lit8 v2, v0, 0x1f

    add-int/2addr v2, v1

    .line 48
    .end local v0    # "result":I
    .local v2, "result":I
    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    .line 41
    move-object v0, p0

    check-cast v0, Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-static {v0}, Lkotlinx/serialization/descriptors/SerialDescriptorKt;->getElementNames(Lkotlinx/serialization/descriptors/SerialDescriptor;)Ljava/lang/Iterable;

    move-result-object v1

    const-string v0, ", "

    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lkotlinx/serialization/internal/EnumDescriptor;->getSerialName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0x28

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/CharSequence;

    const-string v0, ")"

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const/16 v8, 0x38

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v9}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
