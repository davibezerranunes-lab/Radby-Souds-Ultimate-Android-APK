.class final Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;
.super Lcom/fasterxml/jackson/databind/introspect/CollectorBase;
.source "AnnotatedCreatorCollector.java"


# instance fields
.field private final _collectAnnotations:Z

.field private _defaultConstructor:Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

.field private final _typeContext:Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;


# direct methods
.method constructor <init>(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;Z)V
    .locals 0
    .param p1, "intr"    # Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    .param p2, "tc"    # Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;
    .param p3, "collectAnnotations"    # Z

    .line 42
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/introspect/CollectorBase;-><init>(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)V

    .line 43
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->_typeContext:Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;

    .line 44
    iput-boolean p3, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->_collectAnnotations:Z

    .line 45
    return-void
.end method

.method private _findPotentialConstructors(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)Ljava/util/List;
    .locals 13
    .param p1, "type"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/List<",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;",
            ">;"
        }
    .end annotation

    .line 101
    .local p2, "primaryMixIn":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .line 102
    .local v0, "defaultCtor":Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;
    const/4 v1, 0x0

    .line 109
    .local v1, "ctors":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;>;"
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->isEnumType()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_3

    .line 110
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->getConstructors(Ljava/lang/Class;)[Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;

    move-result-object v2

    .line 111
    .local v2, "declaredCtors":[Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;
    array-length v4, v2

    move v5, v3

    :goto_0
    if-ge v5, v4, :cond_3

    aget-object v6, v2, v5

    .line 112
    .local v6, "ctor":Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;
    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;->getConstructor()Ljava/lang/reflect/Constructor;

    move-result-object v7

    invoke-static {v7}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->isIncludableConstructor(Ljava/lang/reflect/Constructor;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 113
    goto :goto_1

    .line 115
    :cond_0
    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;->getParamCount()I

    move-result v7

    if-nez v7, :cond_1

    .line 116
    move-object v0, v6

    goto :goto_1

    .line 118
    :cond_1
    if-nez v1, :cond_2

    .line 119
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v7

    .line 121
    :cond_2
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    .end local v6    # "ctor":Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 127
    .end local v2    # "declaredCtors":[Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;
    :cond_3
    const/4 v2, 0x0

    if-nez v1, :cond_5

    .line 128
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    .line 130
    .local v4, "result":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;>;"
    if-nez v0, :cond_4

    .line 131
    return-object v4

    .line 133
    :cond_4
    const/4 v5, 0x0

    .local v5, "ctorCount":I
    goto :goto_3

    .line 135
    .end local v4    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;>;"
    .end local v5    # "ctorCount":I
    :cond_5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    .line 136
    .restart local v5    # "ctorCount":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 137
    .restart local v4    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    if-ge v6, v5, :cond_6

    .line 138
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 143
    .end local v6    # "i":I
    :cond_6
    :goto_3
    if-eqz p2, :cond_b

    .line 144
    const/4 v6, 0x0

    .line 145
    .local v6, "ctorKeys":[Lcom/fasterxml/jackson/databind/introspect/MemberKey;
    invoke-static {p2}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->getConstructors(Ljava/lang/Class;)[Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;

    move-result-object v7

    array-length v8, v7

    :goto_4
    if-ge v3, v8, :cond_b

    aget-object v9, v7, v3

    .line 146
    .local v9, "mixinCtor":Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;
    invoke-virtual {v9}, Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;->getParamCount()I

    move-result v10

    if-nez v10, :cond_7

    .line 147
    if-eqz v0, :cond_a

    .line 148
    invoke-virtual {p0, v0, v9}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->constructDefaultConstructor(Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    move-result-object v10

    iput-object v10, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->_defaultConstructor:Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    .line 149
    const/4 v0, 0x0

    goto :goto_7

    .line 153
    :cond_7
    if-eqz v1, :cond_a

    .line 154
    if-nez v6, :cond_8

    .line 155
    new-array v6, v5, [Lcom/fasterxml/jackson/databind/introspect/MemberKey;

    .line 156
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_5
    if-ge v10, v5, :cond_8

    .line 157
    new-instance v11, Lcom/fasterxml/jackson/databind/introspect/MemberKey;

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;

    invoke-virtual {v12}, Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;->getConstructor()Ljava/lang/reflect/Constructor;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/fasterxml/jackson/databind/introspect/MemberKey;-><init>(Ljava/lang/reflect/Constructor;)V

    aput-object v11, v6, v10

    .line 156
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 160
    .end local v10    # "i":I
    :cond_8
    new-instance v10, Lcom/fasterxml/jackson/databind/introspect/MemberKey;

    invoke-virtual {v9}, Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;->getConstructor()Ljava/lang/reflect/Constructor;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/fasterxml/jackson/databind/introspect/MemberKey;-><init>(Ljava/lang/reflect/Constructor;)V

    .line 162
    .local v10, "key":Lcom/fasterxml/jackson/databind/introspect/MemberKey;
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_6
    if-ge v11, v5, :cond_a

    .line 163
    aget-object v12, v6, v11

    invoke-virtual {v10, v12}, Lcom/fasterxml/jackson/databind/introspect/MemberKey;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 164
    nop

    .line 165
    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;

    invoke-virtual {p0, v12, v9}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->constructNonDefaultConstructor(Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    move-result-object v12

    .line 164
    invoke-interface {v4, v11, v12}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 166
    goto :goto_7

    .line 162
    :cond_9
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    .line 145
    .end local v9    # "mixinCtor":Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;
    .end local v10    # "key":Lcom/fasterxml/jackson/databind/introspect/MemberKey;
    .end local v11    # "i":I
    :cond_a
    :goto_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 173
    .end local v6    # "ctorKeys":[Lcom/fasterxml/jackson/databind/introspect/MemberKey;
    :cond_b
    if-eqz v0, :cond_c

    .line 174
    invoke-virtual {p0, v0, v2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->constructDefaultConstructor(Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    move-result-object v3

    iput-object v3, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->_defaultConstructor:Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    .line 176
    :cond_c
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_8
    if-ge v3, v5, :cond_e

    .line 177
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    .line 178
    .local v6, "ctor":Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;
    if-nez v6, :cond_d

    .line 179
    nop

    .line 180
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;

    invoke-virtual {p0, v7, v2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->constructNonDefaultConstructor(Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    move-result-object v7

    .line 179
    invoke-interface {v4, v3, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 176
    .end local v6    # "ctor":Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;
    :cond_d
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 183
    .end local v3    # "i":I
    :cond_e
    return-object v4
.end method

.method private _findPotentialFactories(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)Ljava/util/List;
    .locals 12
    .param p1, "type"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/List<",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;",
            ">;"
        }
    .end annotation

    .line 188
    .local p2, "primaryMixIn":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .line 191
    .local v0, "candidates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Method;>;"
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->getClassMethods(Ljava/lang/Class;)[Ljava/lang/reflect/Method;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v1, v4

    .line 192
    .local v5, "m":Ljava/lang/reflect/Method;
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v6

    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 193
    goto :goto_1

    .line 197
    :cond_0
    if-nez v0, :cond_1

    .line 198
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v6

    .line 200
    :cond_1
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    .end local v5    # "m":Ljava/lang/reflect/Method;
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 203
    :cond_2
    if-nez v0, :cond_3

    .line 204
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 206
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 207
    .local v1, "factoryCount":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 208
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    const/4 v5, 0x0

    if-ge v4, v1, :cond_4

    .line 209
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 212
    .end local v4    # "i":I
    :cond_4
    if-eqz p2, :cond_9

    .line 213
    const/4 v4, 0x0

    .line 214
    .local v4, "methodKeys":[Lcom/fasterxml/jackson/databind/introspect/MemberKey;
    invoke-virtual {p2}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v6

    array-length v7, v6

    :goto_3
    if-ge v3, v7, :cond_9

    aget-object v8, v6, v3

    .line 215
    .local v8, "mixinFactory":Ljava/lang/reflect/Method;
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v9

    invoke-static {v9}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v9

    if-nez v9, :cond_5

    .line 216
    goto :goto_6

    .line 218
    :cond_5
    if-nez v4, :cond_6

    .line 219
    new-array v4, v1, [Lcom/fasterxml/jackson/databind/introspect/MemberKey;

    .line 220
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_4
    if-ge v9, v1, :cond_6

    .line 221
    new-instance v10, Lcom/fasterxml/jackson/databind/introspect/MemberKey;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/reflect/Method;

    invoke-direct {v10, v11}, Lcom/fasterxml/jackson/databind/introspect/MemberKey;-><init>(Ljava/lang/reflect/Method;)V

    aput-object v10, v4, v9

    .line 220
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 224
    .end local v9    # "i":I
    :cond_6
    new-instance v9, Lcom/fasterxml/jackson/databind/introspect/MemberKey;

    invoke-direct {v9, v8}, Lcom/fasterxml/jackson/databind/introspect/MemberKey;-><init>(Ljava/lang/reflect/Method;)V

    .line 225
    .local v9, "key":Lcom/fasterxml/jackson/databind/introspect/MemberKey;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_5
    if-ge v10, v1, :cond_8

    .line 226
    aget-object v11, v4, v10

    invoke-virtual {v9, v11}, Lcom/fasterxml/jackson/databind/introspect/MemberKey;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 227
    nop

    .line 228
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/reflect/Method;

    invoke-virtual {p0, v11, v8}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->constructFactoryCreator(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    move-result-object v11

    .line 227
    invoke-interface {v2, v10, v11}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 229
    goto :goto_6

    .line 225
    :cond_7
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 214
    .end local v8    # "mixinFactory":Ljava/lang/reflect/Method;
    .end local v9    # "key":Lcom/fasterxml/jackson/databind/introspect/MemberKey;
    .end local v10    # "i":I
    :cond_8
    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 235
    .end local v4    # "methodKeys":[Lcom/fasterxml/jackson/databind/introspect/MemberKey;
    :cond_9
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_7
    if-ge v3, v1, :cond_b

    .line 236
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    .line 237
    .local v4, "factory":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    if-nez v4, :cond_a

    .line 238
    nop

    .line 239
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/reflect/Method;

    invoke-virtual {p0, v6, v5}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->constructFactoryCreator(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    move-result-object v6

    .line 238
    invoke-interface {v2, v3, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 235
    .end local v4    # "factory":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 242
    .end local v3    # "i":I
    :cond_b
    return-object v2
.end method

.method private collectAnnotations(Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;)Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;
    .locals 2
    .param p1, "main"    # Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;
    .param p2, "mixin"    # Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;

    .line 347
    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->_collectAnnotations:Z

    if-eqz v0, :cond_1

    .line 348
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->collectAnnotations([Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;

    move-result-object v0

    .line 349
    .local v0, "c":Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;
    if-eqz p2, :cond_0

    .line 350
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->collectAnnotations(Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;[Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;

    move-result-object v0

    .line 352
    :cond_0
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;->asAnnotationMap()Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    move-result-object v1

    return-object v1

    .line 354
    .end local v0    # "c":Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;
    :cond_1
    invoke-static {}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->_emptyAnnotationMap()Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    move-result-object v0

    return-object v0
.end method

.method private final collectAnnotations(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/reflect/AnnotatedElement;)Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;
    .locals 2
    .param p1, "main"    # Ljava/lang/reflect/AnnotatedElement;
    .param p2, "mixin"    # Ljava/lang/reflect/AnnotatedElement;

    .line 358
    invoke-interface {p1}, Ljava/lang/reflect/AnnotatedElement;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->collectAnnotations([Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;

    move-result-object v0

    .line 359
    .local v0, "c":Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;
    if-eqz p2, :cond_0

    .line 360
    invoke-interface {p2}, Ljava/lang/reflect/AnnotatedElement;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->collectAnnotations(Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;[Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;

    move-result-object v0

    .line 362
    :cond_0
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;->asAnnotationMap()Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    move-result-object v1

    return-object v1
.end method

.method private collectAnnotations([[Ljava/lang/annotation/Annotation;[[Ljava/lang/annotation/Annotation;)[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;
    .locals 5
    .param p1, "mainAnns"    # [[Ljava/lang/annotation/Annotation;
    .param p2, "mixinAnns"    # [[Ljava/lang/annotation/Annotation;

    .line 328
    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->_collectAnnotations:Z

    if-eqz v0, :cond_2

    .line 329
    array-length v0, p1

    .line 330
    .local v0, "count":I
    new-array v1, v0, [Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    .line 331
    .local v1, "result":[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 332
    invoke-static {}, Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;->emptyCollector()Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;

    move-result-object v3

    aget-object v4, p1, v2

    invoke-virtual {p0, v3, v4}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->collectAnnotations(Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;[Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;

    move-result-object v3

    .line 334
    .local v3, "c":Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;
    if-eqz p2, :cond_0

    .line 335
    aget-object v4, p2, v2

    invoke-virtual {p0, v3, v4}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->collectAnnotations(Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;[Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;

    move-result-object v3

    .line 337
    :cond_0
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;->asAnnotationMap()Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    move-result-object v4

    aput-object v4, v1, v2

    .line 331
    .end local v3    # "c":Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 339
    .end local v2    # "i":I
    :cond_1
    return-object v1

    .line 341
    .end local v0    # "count":I
    .end local v1    # "result":[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;
    :cond_2
    sget-object v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->NO_ANNOTATION_MAPS:[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    return-object v0
.end method

.method public static collectCreators(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;Z)Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass$Creators;
    .locals 2
    .param p0, "intr"    # Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    .param p1, "tc"    # Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;
    .param p2, "type"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p4, "collectAnnotations"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/AnnotationIntrospector;",
            "Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Ljava/lang/Class<",
            "*>;Z)",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass$Creators;"
        }
    .end annotation

    .line 51
    .local p3, "primaryMixIn":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p0, :cond_0

    .line 52
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->isJDKClass(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 55
    .local v0, "checkClassAnnotations":Z
    :goto_0
    new-instance v1, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;

    invoke-direct {v1, p0, p1, v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;-><init>(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;Z)V

    .line 56
    invoke-virtual {v1, p2, p3}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->collect(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass$Creators;

    move-result-object v1

    .line 55
    return-object v1
.end method

.method private static isIncludableConstructor(Ljava/lang/reflect/Constructor;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor<",
            "*>;)Z"
        }
    .end annotation

    .line 367
    .local p0, "c":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->isSynthetic()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method


# virtual methods
.method collect(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass$Creators;
    .locals 5
    .param p1, "type"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass$Creators;"
        }
    .end annotation

    .line 65
    .local p2, "primaryMixIn":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->_findPotentialConstructors(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 66
    .local v0, "constructors":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;>;"
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->_findPotentialFactories(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    .line 72
    .local v1, "factories":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;>;"
    iget-boolean v2, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->_collectAnnotations:Z

    if-eqz v2, :cond_4

    .line 73
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->_defaultConstructor:Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    if-eqz v2, :cond_0

    .line 74
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->_intr:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->_defaultConstructor:Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    invoke-virtual {v2, v3}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->hasIgnoreMarker(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 75
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->_defaultConstructor:Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    .line 79
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "i":I
    :cond_1
    :goto_0
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_2

    .line 80
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->_intr:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    invoke-virtual {v3, v4}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->hasIgnoreMarker(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 81
    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 84
    .end local v2    # "i":I
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .restart local v2    # "i":I
    :cond_3
    :goto_1
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_4

    .line 85
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->_intr:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    invoke-virtual {v3, v4}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->hasIgnoreMarker(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 86
    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 90
    .end local v2    # "i":I
    :cond_4
    new-instance v2, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass$Creators;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->_defaultConstructor:Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    invoke-direct {v2, v3, v0, v1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass$Creators;-><init>(Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;Ljava/util/List;Ljava/util/List;)V

    return-object v2
.end method

.method protected constructDefaultConstructor(Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;
    .locals 5
    .param p1, "ctor"    # Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;
    .param p2, "mixin"    # Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;

    .line 248
    new-instance v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->_typeContext:Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;->getConstructor()Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 249
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->collectAnnotations(Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;)Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    move-result-object v3

    sget-object v4, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->NO_ANNOTATION_MAPS:[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;-><init>(Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;Ljava/lang/reflect/Constructor;Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;)V

    .line 248
    return-object v0
.end method

.method protected constructFactoryCreator(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    .locals 7
    .param p1, "m"    # Ljava/lang/reflect/Method;
    .param p2, "mixin"    # Ljava/lang/reflect/Method;

    .line 313
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    array-length v0, v0

    .line 314
    .local v0, "paramCount":I
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->_intr:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    if-nez v1, :cond_0

    .line 315
    new-instance v1, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->_typeContext:Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;

    invoke-static {}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->_emptyAnnotationMap()Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    move-result-object v3

    .line 316
    invoke-static {v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->_emptyAnnotationMaps(I)[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    move-result-object v4

    invoke-direct {v1, v2, p1, v3, v4}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;-><init>(Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;Ljava/lang/reflect/Method;Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;)V

    .line 315
    return-object v1

    .line 318
    :cond_0
    if-nez v0, :cond_1

    .line 319
    new-instance v1, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->_typeContext:Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;

    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->collectAnnotations(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/reflect/AnnotatedElement;)Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    move-result-object v3

    sget-object v4, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->NO_ANNOTATION_MAPS:[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    invoke-direct {v1, v2, p1, v3, v4}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;-><init>(Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;Ljava/lang/reflect/Method;Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;)V

    return-object v1

    .line 322
    :cond_1
    new-instance v1, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->_typeContext:Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;

    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->collectAnnotations(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/reflect/AnnotatedElement;)Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    move-result-object v3

    .line 323
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v4

    if-nez p2, :cond_2

    const/4 v5, 0x0

    move-object v6, v5

    check-cast v6, [[Ljava/lang/annotation/Annotation;

    goto :goto_0

    .line 324
    :cond_2
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v5

    .line 323
    :goto_0
    invoke-direct {p0, v4, v5}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->collectAnnotations([[Ljava/lang/annotation/Annotation;[[Ljava/lang/annotation/Annotation;)[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    move-result-object v4

    invoke-direct {v1, v2, p1, v3, v4}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;-><init>(Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;Ljava/lang/reflect/Method;Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;)V

    .line 322
    return-object v1
.end method

.method protected constructNonDefaultConstructor(Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;
    .locals 9
    .param p1, "ctor"    # Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;
    .param p2, "mixin"    # Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;

    .line 257
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;->getParamCount()I

    move-result v0

    .line 258
    .local v0, "paramCount":I
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->_intr:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    if-nez v1, :cond_0

    .line 259
    new-instance v1, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->_typeContext:Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;->getConstructor()Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 260
    invoke-static {}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->_emptyAnnotationMap()Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    move-result-object v4

    invoke-static {v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->_emptyAnnotationMaps(I)[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;-><init>(Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;Ljava/lang/reflect/Constructor;Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;)V

    .line 259
    return-object v1

    .line 267
    :cond_0
    if-nez v0, :cond_1

    .line 268
    new-instance v1, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->_typeContext:Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;->getConstructor()Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 269
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->collectAnnotations(Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;)Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    move-result-object v4

    sget-object v5, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->NO_ANNOTATION_MAPS:[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;-><init>(Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;Ljava/lang/reflect/Constructor;Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;)V

    .line 268
    return-object v1

    .line 274
    :cond_1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v1

    .line 275
    .local v1, "paramAnns":[[Ljava/lang/annotation/Annotation;
    array-length v2, v1

    const/4 v3, 0x0

    if-eq v0, v2, :cond_6

    .line 279
    const/4 v2, 0x0

    .line 280
    .local v2, "resolvedAnnotations":[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v4

    .line 282
    .local v4, "dc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v4}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->isEnumType(Ljava/lang/Class;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_3

    array-length v5, v1

    const/4 v7, 0x2

    add-int/2addr v5, v7

    if-ne v0, v5, :cond_3

    .line 283
    move-object v5, v1

    .line 284
    .local v5, "old":[[Ljava/lang/annotation/Annotation;
    array-length v8, v5

    add-int/2addr v8, v7

    new-array v1, v8, [[Ljava/lang/annotation/Annotation;

    .line 285
    array-length v8, v5

    invoke-static {v5, v6, v1, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 286
    move-object v6, v3

    check-cast v6, [[Ljava/lang/annotation/Annotation;

    invoke-direct {p0, v1, v3}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->collectAnnotations([[Ljava/lang/annotation/Annotation;[[Ljava/lang/annotation/Annotation;)[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    move-result-object v2

    .line 287
    .end local v5    # "old":[[Ljava/lang/annotation/Annotation;
    :cond_2
    goto :goto_0

    :cond_3
    invoke-virtual {v4}, Ljava/lang/Class;->isMemberClass()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 289
    array-length v5, v1

    const/4 v7, 0x1

    add-int/2addr v5, v7

    if-ne v0, v5, :cond_4

    .line 291
    move-object v5, v1

    .line 292
    .restart local v5    # "old":[[Ljava/lang/annotation/Annotation;
    array-length v8, v5

    add-int/2addr v8, v7

    new-array v1, v8, [[Ljava/lang/annotation/Annotation;

    .line 293
    array-length v8, v5

    invoke-static {v5, v6, v1, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 294
    sget-object v7, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->NO_ANNOTATIONS:[Ljava/lang/annotation/Annotation;

    aput-object v7, v1, v6

    .line 295
    move-object v6, v3

    check-cast v6, [[Ljava/lang/annotation/Annotation;

    invoke-direct {p0, v1, v3}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->collectAnnotations([[Ljava/lang/annotation/Annotation;[[Ljava/lang/annotation/Annotation;)[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    move-result-object v2

    .line 298
    .end local v5    # "old":[[Ljava/lang/annotation/Annotation;
    :cond_4
    :goto_0
    if-eqz v2, :cond_5

    .line 303
    .end local v4    # "dc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_2

    .line 299
    .restart local v4    # "dc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_5
    new-instance v3, Ljava/lang/IllegalStateException;

    .line 301
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    array-length v7, v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v5, v6, v7}, [Ljava/lang/Object;

    move-result-object v5

    .line 299
    const-string v6, "Internal error: constructor for %s has mismatch: %d parameters; %d sets of annotations"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 304
    .end local v2    # "resolvedAnnotations":[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;
    .end local v4    # "dc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_6
    if-nez p2, :cond_7

    move-object v2, v3

    check-cast v2, [[Ljava/lang/annotation/Annotation;

    goto :goto_1

    .line 305
    :cond_7
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v3

    .line 304
    :goto_1
    invoke-direct {p0, v1, v3}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->collectAnnotations([[Ljava/lang/annotation/Annotation;[[Ljava/lang/annotation/Annotation;)[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    move-result-object v2

    .line 307
    .restart local v2    # "resolvedAnnotations":[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;
    :goto_2
    new-instance v3, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->_typeContext:Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;->getConstructor()Ljava/lang/reflect/Constructor;

    move-result-object v5

    .line 308
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->collectAnnotations(Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;)Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6, v2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;-><init>(Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;Ljava/lang/reflect/Constructor;Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;)V

    .line 307
    return-object v3
.end method
