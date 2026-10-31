.class public final Lcom/muzk/app/data/YtDlpRepository;
.super Ljava/lang/Object;
.source "YtDlpRepository.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nYtDlpRepository.kt\nKotlin\n*S Kotlin\n*F\n+ 1 YtDlpRepository.kt\ncom/muzk/app/data/YtDlpRepository\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,86:1\n1#2:87\n1557#3:88\n1628#3,3:89\n295#3,2:92\n*S KotlinDebug\n*F\n+ 1 YtDlpRepository.kt\ncom/muzk/app/data/YtDlpRepository\n*L\n66#1:88\n66#1:89,3\n67#1:92,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bJ&\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\r2\u0006\u0010\u000f\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u0011H\u0086@\u00a2\u0006\u0002\u0010\u0012J\u0016\u0010\u0013\u001a\u00020\u000b2\u0006\u0010\u0014\u001a\u00020\u000bH\u0086@\u00a2\u0006\u0002\u0010\u0015J\u0014\u0010\u0016\u001a\u00020\u000b*\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u000bH\u0002J\u0012\u0010\u0019\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u001a\u001a\u00020\u0017H\u0002R\u0014\u0010\u0004\u001a\u00020\u00058BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/muzk/app/data/YtDlpRepository;",
        "",
        "<init>",
        "()V",
        "ytdl",
        "Lcom/yausername/youtubedl_android/YoutubeDL;",
        "getYtdl",
        "()Lcom/yausername/youtubedl_android/YoutubeDL;",
        "isUrl",
        "",
        "text",
        "",
        "search",
        "",
        "Lcom/muzk/app/data/RemoteTrack;",
        "query",
        "limit",
        "",
        "(Ljava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "streamUrl",
        "pageUrl",
        "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "str",
        "Lorg/json/JSONObject;",
        "key",
        "parse",
        "o",
        "app_debug"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/muzk/app/data/YtDlpRepository;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/muzk/app/data/YtDlpRepository;

    invoke-direct {v0}, Lcom/muzk/app/data/YtDlpRepository;-><init>()V

    sput-object v0, Lcom/muzk/app/data/YtDlpRepository;->INSTANCE:Lcom/muzk/app/data/YtDlpRepository;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getYtdl(Lcom/muzk/app/data/YtDlpRepository;)Lcom/yausername/youtubedl_android/YoutubeDL;
    .locals 1
    .param p0, "$this"    # Lcom/muzk/app/data/YtDlpRepository;

    .line 11
    invoke-direct {p0}, Lcom/muzk/app/data/YtDlpRepository;->getYtdl()Lcom/yausername/youtubedl_android/YoutubeDL;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$parse(Lcom/muzk/app/data/YtDlpRepository;Lorg/json/JSONObject;)Lcom/muzk/app/data/RemoteTrack;
    .locals 1
    .param p0, "$this"    # Lcom/muzk/app/data/YtDlpRepository;
    .param p1, "o"    # Lorg/json/JSONObject;

    .line 11
    invoke-direct {p0, p1}, Lcom/muzk/app/data/YtDlpRepository;->parse(Lorg/json/JSONObject;)Lcom/muzk/app/data/RemoteTrack;

    move-result-object v0

    return-object v0
.end method

.method private final getYtdl()Lcom/yausername/youtubedl_android/YoutubeDL;
    .locals 1

    .line 13
    invoke-static {}, Lcom/yausername/youtubedl_android/YoutubeDL;->getInstance()Lcom/yausername/youtubedl_android/YoutubeDL;

    move-result-object v0

    return-object v0
.end method

.method private final parse(Lorg/json/JSONObject;)Lcom/muzk/app/data/RemoteTrack;
    .locals 18
    .param p1, "o"    # Lorg/json/JSONObject;

    .line 56
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "id"

    invoke-direct {v0, v1, v2}, Lcom/muzk/app/data/YtDlpRepository;->str(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 87
    const/4 v2, 0x0

    .line 56
    .local v2, "$i$a$-ifBlank-YtDlpRepository$parse$id$1":I
    return-object v4

    .end local v2    # "$i$a$-ifBlank-YtDlpRepository$parse$id$1":I
    :cond_0
    check-cast v2, Ljava/lang/String;

    .line 57
    .local v2, "id":Ljava/lang/String;
    const-string v3, "ie_key"

    invoke-direct {v0, v1, v3}, Lcom/muzk/app/data/YtDlpRepository;->str(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 87
    const/4 v3, 0x0

    .line 57
    .local v3, "$i$a$-ifBlank-YtDlpRepository$parse$extractor$1":I
    sget-object v5, Lcom/muzk/app/data/YtDlpRepository;->INSTANCE:Lcom/muzk/app/data/YtDlpRepository;

    const-string v6, "extractor_key"

    invoke-direct {v5, v1, v6}, Lcom/muzk/app/data/YtDlpRepository;->str(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .end local v3    # "$i$a$-ifBlank-YtDlpRepository$parse$extractor$1":I
    :cond_1
    check-cast v3, Ljava/lang/String;

    .line 58
    .local v3, "extractor":Ljava/lang/String;
    move-object v5, v3

    check-cast v5, Ljava/lang/CharSequence;

    const-string v6, "youtube"

    check-cast v6, Ljava/lang/CharSequence;

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_3

    .line 59
    move-object v5, v3

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v5}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v8, 0xb

    if-ne v5, v8, :cond_2

    goto :goto_0

    :cond_2
    move v5, v6

    goto :goto_1

    :cond_3
    :goto_0
    move v5, v7

    .line 58
    :goto_1
    move v13, v5

    .line 60
    .local v13, "isYoutube":Z
    const-string v5, "webpage_url"

    invoke-direct {v0, v1, v5}, Lcom/muzk/app/data/YtDlpRepository;->str(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v5}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v8

    const/4 v9, 0x2

    const-string v10, "url"

    if-eqz v8, :cond_7

    const/4 v5, 0x0

    .line 61
    .local v5, "$i$a$-ifBlank-YtDlpRepository$parse$pageUrl$1":I
    sget-object v8, Lcom/muzk/app/data/YtDlpRepository;->INSTANCE:Lcom/muzk/app/data/YtDlpRepository;

    invoke-direct {v8, v1, v10}, Lcom/muzk/app/data/YtDlpRepository;->str(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v11, v8

    .line 87
    .local v11, "it":Ljava/lang/String;
    const/4 v12, 0x0

    .line 61
    .local v12, "$i$a$-takeIf-YtDlpRepository$parse$pageUrl$1$1":I
    const-string v14, "http"

    invoke-static {v11, v14, v6, v9, v4}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v11

    .end local v11    # "it":Ljava/lang/String;
    .end local v12    # "$i$a$-takeIf-YtDlpRepository$parse$pageUrl$1$1":I
    if-eqz v11, :cond_4

    goto :goto_2

    :cond_4
    move-object v8, v4

    :goto_2
    if-nez v8, :cond_6

    .line 62
    if-eqz v13, :cond_5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "https://www.youtube.com/watch?v="

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v5, v8

    goto :goto_3

    :cond_5
    return-object v4

    .line 61
    :cond_6
    move-object v5, v8

    .line 60
    .end local v5    # "$i$a$-ifBlank-YtDlpRepository$parse$pageUrl$1":I
    :cond_7
    :goto_3
    move-object v14, v5

    check-cast v14, Ljava/lang/String;

    .line 64
    .local v14, "pageUrl":Ljava/lang/String;
    const-string v5, "track"

    invoke-direct {v0, v1, v5}, Lcom/muzk/app/data/YtDlpRepository;->str(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v5}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 87
    const/4 v5, 0x0

    .line 64
    .local v5, "$i$a$-ifBlank-YtDlpRepository$parse$title$1":I
    sget-object v8, Lcom/muzk/app/data/YtDlpRepository;->INSTANCE:Lcom/muzk/app/data/YtDlpRepository;

    const-string v11, "title"

    invoke-direct {v8, v1, v11}, Lcom/muzk/app/data/YtDlpRepository;->str(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .end local v5    # "$i$a$-ifBlank-YtDlpRepository$parse$title$1":I
    :cond_8
    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v5}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 87
    const/4 v5, 0x0

    .line 64
    .local v5, "$i$a$-ifBlank-YtDlpRepository$parse$title$2":I
    return-object v4

    .end local v5    # "$i$a$-ifBlank-YtDlpRepository$parse$title$2":I
    :cond_9
    move-object v15, v5

    check-cast v15, Ljava/lang/String;

    .line 65
    .local v15, "title":Ljava/lang/String;
    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/String;

    const-string v8, "artist"

    aput-object v8, v5, v6

    const-string v6, "creator"

    aput-object v6, v5, v7

    const-string v6, "channel"

    aput-object v6, v5, v9

    const/4 v6, 0x3

    const-string v8, "uploader"

    aput-object v8, v5, v6

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    check-cast v5, Ljava/lang/Iterable;

    .line 66
    nop

    .local v5, "$this$map$iv":Ljava/lang/Iterable;
    const/4 v6, 0x0

    .line 88
    .local v6, "$i$f$map":I
    new-instance v8, Ljava/util/ArrayList;

    const/16 v9, 0xa

    invoke-static {v5, v9}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v8, Ljava/util/Collection;

    .local v8, "destination$iv$iv":Ljava/util/Collection;
    move-object v9, v5

    .local v9, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    const/4 v11, 0x0

    .line 89
    .local v11, "$i$f$mapTo":I
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_a

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    .line 90
    .local v16, "item$iv$iv":Ljava/lang/Object;
    move-object/from16 v4, v16

    check-cast v4, Ljava/lang/String;

    .local v4, "it":Ljava/lang/String;
    const/16 v17, 0x0

    .line 66
    .local v17, "$i$a$-map-YtDlpRepository$parse$artist$1":I
    sget-object v7, Lcom/muzk/app/data/YtDlpRepository;->INSTANCE:Lcom/muzk/app/data/YtDlpRepository;

    invoke-direct {v7, v1, v4}, Lcom/muzk/app/data/YtDlpRepository;->str(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 90
    .end local v4    # "it":Ljava/lang/String;
    .end local v17    # "$i$a$-map-YtDlpRepository$parse$artist$1":I
    invoke-interface {v8, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x0

    const/4 v7, 0x1

    goto :goto_4

    .line 91
    .end local v16    # "item$iv$iv":Ljava/lang/Object;
    :cond_a
    nop

    .end local v8    # "destination$iv$iv":Ljava/util/Collection;
    .end local v9    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .end local v11    # "$i$f$mapTo":I
    move-object v4, v8

    check-cast v4, Ljava/util/List;

    .line 88
    nop

    .end local v5    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v6    # "$i$f$map":I
    check-cast v4, Ljava/lang/Iterable;

    .line 67
    nop

    .local v4, "$this$firstOrNull$iv":Ljava/lang/Iterable;
    const/4 v5, 0x0

    .line 92
    .local v5, "$i$f$firstOrNull":I
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .local v7, "element$iv":Ljava/lang/Object;
    move-object v8, v7

    check-cast v8, Ljava/lang/String;

    .local v8, "it":Ljava/lang/String;
    const/4 v9, 0x0

    .line 67
    .local v9, "$i$a$-firstOrNull-YtDlpRepository$parse$artist$2":I
    move-object v11, v8

    check-cast v11, Ljava/lang/CharSequence;

    invoke-static {v11}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v11

    .line 92
    .end local v8    # "it":Ljava/lang/String;
    .end local v9    # "$i$a$-firstOrNull-YtDlpRepository$parse$artist$2":I
    if-nez v11, :cond_b

    goto :goto_5

    .line 93
    .end local v7    # "element$iv":Ljava/lang/Object;
    :cond_c
    const/4 v7, 0x0

    .end local v4    # "$this$firstOrNull$iv":Ljava/lang/Iterable;
    .end local v5    # "$i$f$firstOrNull":I
    :goto_5
    check-cast v7, Ljava/lang/String;

    .line 68
    if-nez v7, :cond_d

    const-string v4, ""

    move-object v9, v4

    goto :goto_6

    :cond_d
    move-object v9, v7

    .line 65
    :goto_6
    nop

    .line 69
    .local v9, "artist":Ljava/lang/String;
    nop

    .line 70
    if-eqz v13, :cond_e

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "https://i.ytimg.com/vi/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/hqdefault.jpg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v10, v4

    goto :goto_8

    .line 71
    :cond_e
    const-string v4, "thumbnail"

    invoke-direct {v0, v1, v4}, Lcom/muzk/app/data/YtDlpRepository;->str(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v5}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_f

    invoke-direct {v0, v1, v4}, Lcom/muzk/app/data/YtDlpRepository;->str(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v10, v4

    goto :goto_8

    .line 72
    :cond_f
    const-string v4, "thumbnails"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    if-eqz v4, :cond_11

    .local v4, "arr":Lorg/json/JSONArray;
    const/4 v5, 0x0

    .line 73
    .local v5, "$i$a$-let-YtDlpRepository$parse$thumb$1":I
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lez v6, :cond_10

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    if-eqz v6, :cond_10

    sget-object v7, Lcom/muzk/app/data/YtDlpRepository;->INSTANCE:Lcom/muzk/app/data/YtDlpRepository;

    invoke-direct {v7, v6, v10}, Lcom/muzk/app/data/YtDlpRepository;->str(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    goto :goto_7

    :cond_10
    const/4 v4, 0x0

    .line 72
    .end local v4    # "arr":Lorg/json/JSONArray;
    .end local v5    # "$i$a$-let-YtDlpRepository$parse$thumb$1":I
    :goto_7
    move-object v10, v4

    goto :goto_8

    :cond_11
    const/4 v10, 0x0

    .line 69
    :goto_8
    nop

    .line 76
    .local v10, "thumb":Ljava/lang/String;
    nop

    .line 77
    nop

    .line 78
    nop

    .line 79
    nop

    .line 80
    nop

    .line 81
    nop

    .line 82
    const-string v4, "duration"

    const-wide/16 v5, 0x0

    invoke-virtual {v1, v4, v5, v6}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    .line 87
    nop

    .local v4, "it":D
    const/4 v6, 0x0

    .line 82
    .local v6, "$i$a$-let-YtDlpRepository$parse$1":I
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v7

    if-eqz v7, :cond_12

    const-wide/16 v7, 0x0

    goto :goto_9

    :cond_12
    double-to-long v7, v4

    :goto_9
    move-wide v11, v7

    .line 76
    .end local v4    # "it":D
    .end local v6    # "$i$a$-let-YtDlpRepository$parse$1":I
    new-instance v4, Lcom/muzk/app/data/RemoteTrack;

    move-object v5, v4

    move-object v6, v2

    move-object v7, v14

    move-object v8, v15

    invoke-direct/range {v5 .. v12}, Lcom/muzk/app/data/RemoteTrack;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-object v4
.end method

.method public static synthetic search$default(Lcom/muzk/app/data/YtDlpRepository;Ljava/lang/String;ILkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 18
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/16 p2, 0x14

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/muzk/app/data/YtDlpRepository;->search(Ljava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final str(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "$this$str"    # Lorg/json/JSONObject;
    .param p2, "key"    # Ljava/lang/String;

    .line 53
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "optString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public final isUrl(Ljava/lang/String;)Z
    .locals 4
    .param p1, "text"    # Ljava/lang/String;

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    const-string v0, "http://"

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "https://"

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public final search(Ljava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "limit"    # I
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Lcom/muzk/app/data/RemoteTrack;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 18
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/muzk/app/data/YtDlpRepository$search$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Lcom/muzk/app/data/YtDlpRepository$search$2;-><init>(Ljava/lang/String;ILkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    .line 33
    return-object v0
.end method

.method public final streamUrl(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1, "pageUrl"    # Ljava/lang/String;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 36
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/muzk/app/data/YtDlpRepository$streamUrl$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/muzk/app/data/YtDlpRepository$streamUrl$2;-><init>(Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    .line 49
    return-object v0
.end method
