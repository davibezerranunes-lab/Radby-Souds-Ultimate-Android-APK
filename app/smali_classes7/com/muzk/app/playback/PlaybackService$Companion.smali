.class public final Lcom/muzk/app/playback/PlaybackService$Companion;
.super Ljava/lang/Object;
.source "PlaybackService.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/muzk/app/playback/PlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPlaybackService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PlaybackService.kt\ncom/muzk/app/playback/PlaybackService$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 SharedPreferences.kt\nandroidx/core/content/SharedPreferencesKt\n*L\n1#1,136:1\n1#2:137\n1#2:148\n1611#3,9:138\n1863#3:147\n1864#3:149\n1620#3:150\n1872#3,3:151\n41#4,12:154\n*S KotlinDebug\n*F\n+ 1 PlaybackService.kt\ncom/muzk/app/playback/PlaybackService$Companion\n*L\n117#1:148\n117#1:138,9\n117#1:147\n117#1:149\n117#1:150\n118#1:151,3\n129#1:154,12\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\u0011\u001a\u00020\u0012J\u000e\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0011\u001a\u00020\u0012R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u001e\u0010\t\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0008@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\"\u0010\r\u001a\u0004\u0018\u00010\u000c2\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u000c@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/muzk/app/playback/PlaybackService$Companion;",
        "",
        "<init>",
        "()V",
        "PREF_EQ_ENABLED",
        "",
        "PREF_EQ_BANDS",
        "value",
        "",
        "audioSessionId",
        "getAudioSessionId",
        "()I",
        "Landroid/media/audiofx/Equalizer;",
        "equalizer",
        "getEqualizer",
        "()Landroid/media/audiofx/Equalizer;",
        "obtainEqualizer",
        "context",
        "Landroid/content/Context;",
        "saveEqualizer",
        "",
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


# direct methods
.method public static synthetic $r8$lambda$QKEu1jVyNO3UeXRikiSbCKYaemM(Landroid/media/audiofx/Equalizer;I)Ljava/lang/CharSequence;
    .locals 0

    invoke-static {p0, p1}, Lcom/muzk/app/playback/PlaybackService$Companion;->saveEqualizer$lambda$6(Landroid/media/audiofx/Equalizer;I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method private constructor <init>()V
    .locals 0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/muzk/app/playback/PlaybackService$Companion;-><init>()V

    return-void
.end method

.method private static final saveEqualizer$lambda$6(Landroid/media/audiofx/Equalizer;I)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "$eq"    # Landroid/media/audiofx/Equalizer;
    .param p1, "it"    # I

    .line 128
    int-to-short v0, p1

    invoke-virtual {p0, v0}, Landroid/media/audiofx/Equalizer;->getBandLevel(S)S

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    return-object v0
.end method


# virtual methods
.method public final getAudioSessionId()I
    .locals 1

    .line 102
    invoke-static {}, Lcom/muzk/app/playback/PlaybackService;->access$getAudioSessionId$cp()I

    move-result v0

    return v0
.end method

.method public final getEqualizer()Landroid/media/audiofx/Equalizer;
    .locals 1

    .line 106
    invoke-static {}, Lcom/muzk/app/playback/PlaybackService;->access$getEqualizer$cp()Landroid/media/audiofx/Equalizer;

    move-result-object v0

    return-object v0
.end method

.method public final obtainEqualizer(Landroid/content/Context;)Landroid/media/audiofx/Equalizer;
    .locals 22
    .param p1, "context"    # Landroid/content/Context;

    const-string v0, "context"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    invoke-virtual/range {p0 .. p0}, Lcom/muzk/app/playback/PlaybackService$Companion;->getAudioSessionId()I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return-object v2

    .line 113
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/muzk/app/playback/PlaybackService$Companion;->getEqualizer()Landroid/media/audiofx/Equalizer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 137
    .local v0, "it":Landroid/media/audiofx/Equalizer;
    const/4 v2, 0x0

    .line 113
    .local v2, "$i$a$-let-PlaybackService$Companion$obtainEqualizer$1":I
    return-object v0

    .line 114
    .end local v0    # "it":Landroid/media/audiofx/Equalizer;
    .end local v2    # "$i$a$-let-PlaybackService$Companion$obtainEqualizer$1":I
    :cond_1
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object/from16 v0, p0

    check-cast v0, Lcom/muzk/app/playback/PlaybackService$Companion;

    .local v0, "$this$obtainEqualizer_u24lambda_u244":Lcom/muzk/app/playback/PlaybackService$Companion;
    const/4 v3, 0x0

    .line 115
    .local v3, "$i$a$-runCatching-PlaybackService$Companion$obtainEqualizer$2":I
    new-instance v4, Landroid/media/audiofx/Equalizer;

    invoke-virtual {v0}, Lcom/muzk/app/playback/PlaybackService$Companion;->getAudioSessionId()I

    move-result v5

    const/4 v6, 0x0

    invoke-direct {v4, v6, v5}, Landroid/media/audiofx/Equalizer;-><init>(II)V

    move-object v5, v4

    .local v5, "$this$obtainEqualizer_u24lambda_u244_u24lambda_u243":Landroid/media/audiofx/Equalizer;
    const/4 v7, 0x0

    .line 117
    .local v7, "$i$a$-apply-PlaybackService$Companion$obtainEqualizer$2$1":I
    nop

    .line 116
    invoke-static/range {p1 .. p1}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 117
    const-string v9, "eq_bands"

    invoke-interface {v8, v9, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    if-eqz v8, :cond_4

    .line 116
    move-object v10, v8

    check-cast v10, Ljava/lang/CharSequence;

    .line 117
    new-array v11, v9, [Ljava/lang/String;

    const-string v8, ","

    aput-object v8, v11, v6

    const/4 v14, 0x6

    const/4 v15, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v10 .. v15}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 116
    check-cast v6, Ljava/lang/Iterable;

    .line 117
    nop

    .local v6, "$this$mapNotNull$iv":Ljava/lang/Iterable;
    const/4 v8, 0x0

    .line 138
    .local v8, "$i$f$mapNotNull":I
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    check-cast v10, Ljava/util/Collection;

    .local v10, "destination$iv$iv":Ljava/util/Collection;
    move-object v11, v6

    .local v11, "$this$mapNotNullTo$iv$iv":Ljava/lang/Iterable;
    const/4 v12, 0x0

    .line 146
    .local v12, "$i$f$mapNotNullTo":I
    move-object v13, v11

    .local v13, "$this$forEach$iv$iv$iv":Ljava/lang/Iterable;
    const/4 v14, 0x0

    .line 147
    .local v14, "$i$f$forEach":I
    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_3

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    .local v16, "element$iv$iv$iv":Ljava/lang/Object;
    move-object/from16 v17, v16

    .local v17, "element$iv$iv":Ljava/lang/Object;
    const/16 v18, 0x0

    .line 146
    .local v18, "$i$a$-forEach-CollectionsKt___CollectionsKt$mapNotNullTo$1$iv$iv":I
    move-object/from16 v19, v17

    check-cast v19, Ljava/lang/String;

    .local v19, "it":Ljava/lang/String;
    const/16 v20, 0x0

    .line 117
    .local v20, "$i$a$-mapNotNull-PlaybackService$Companion$obtainEqualizer$2$1$saved$1":I
    invoke-static/range {v19 .. v19}, Lkotlin/text/StringsKt;->toShortOrNull(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v21

    .line 146
    .end local v19    # "it":Ljava/lang/String;
    .end local v20    # "$i$a$-mapNotNull-PlaybackService$Companion$obtainEqualizer$2$1$saved$1":I
    if-eqz v21, :cond_2

    move-object/from16 v19, v21

    .line 148
    .local v19, "it$iv$iv":Ljava/lang/Object;
    const/16 v20, 0x0

    .line 146
    .local v20, "$i$a$-let-CollectionsKt___CollectionsKt$mapNotNullTo$1$1$iv$iv":I
    move-object/from16 v2, v19

    .end local v19    # "it$iv$iv":Ljava/lang/Object;
    .local v2, "it$iv$iv":Ljava/lang/Object;
    invoke-interface {v10, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 147
    .end local v2    # "it$iv$iv":Ljava/lang/Object;
    .end local v17    # "element$iv$iv":Ljava/lang/Object;
    .end local v18    # "$i$a$-forEach-CollectionsKt___CollectionsKt$mapNotNullTo$1$iv$iv":I
    .end local v20    # "$i$a$-let-CollectionsKt___CollectionsKt$mapNotNullTo$1$1$iv$iv":I
    :cond_2
    const/4 v2, 0x0

    .end local v16    # "element$iv$iv$iv":Ljava/lang/Object;
    goto :goto_0

    .line 149
    :cond_3
    nop

    .line 150
    .end local v13    # "$this$forEach$iv$iv$iv":Ljava/lang/Iterable;
    .end local v14    # "$i$f$forEach":I
    nop

    .end local v10    # "destination$iv$iv":Ljava/util/Collection;
    .end local v11    # "$this$mapNotNullTo$iv$iv":Ljava/lang/Iterable;
    .end local v12    # "$i$f$mapNotNullTo":I
    move-object v2, v10

    check-cast v2, Ljava/util/List;

    .line 138
    nop

    .end local v6    # "$this$mapNotNull$iv":Ljava/lang/Iterable;
    .end local v8    # "$i$f$mapNotNull":I
    goto :goto_1

    .line 117
    :cond_4
    const/4 v2, 0x0

    .line 116
    :goto_1
    nop

    .line 118
    .local v2, "saved":Ljava/util/List;
    if-eqz v2, :cond_8

    move-object v6, v2

    check-cast v6, Ljava/lang/Iterable;

    .local v6, "$this$forEachIndexed$iv":Ljava/lang/Iterable;
    const/4 v8, 0x0

    .line 151
    .local v8, "$i$f$forEachIndexed":I
    const/4 v10, 0x0

    .line 152
    .local v10, "index$iv":I
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    .local v12, "item$iv":Ljava/lang/Object;
    add-int/lit8 v13, v10, 0x1

    .end local v10    # "index$iv":I
    .local v13, "index$iv":I
    if-gez v10, :cond_5

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_5
    move-object v14, v12

    check-cast v14, Ljava/lang/Number;

    invoke-virtual {v14}, Ljava/lang/Number;->shortValue()S

    move-result v14

    .local v10, "band":I
    .local v14, "level":S
    const/4 v15, 0x0

    .line 119
    .local v15, "$i$a$-forEachIndexed-PlaybackService$Companion$obtainEqualizer$2$1$1":I
    invoke-virtual {v5}, Landroid/media/audiofx/Equalizer;->getNumberOfBands()S

    move-result v9

    if-ge v10, v9, :cond_6

    int-to-short v9, v10

    invoke-virtual {v5, v9, v14}, Landroid/media/audiofx/Equalizer;->setBandLevel(SS)V

    .line 120
    :cond_6
    nop

    .line 152
    .end local v10    # "band":I
    .end local v14    # "level":S
    .end local v15    # "$i$a$-forEachIndexed-PlaybackService$Companion$obtainEqualizer$2$1$1":I
    move v10, v13

    const/4 v9, 0x1

    .end local v12    # "item$iv":Ljava/lang/Object;
    goto :goto_2

    .line 153
    .end local v13    # "index$iv":I
    .local v10, "index$iv":I
    :cond_7
    nop

    .line 121
    .end local v6    # "$this$forEachIndexed$iv":Ljava/lang/Iterable;
    .end local v8    # "$i$f$forEachIndexed":I
    .end local v10    # "index$iv":I
    :cond_8
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/media/audiofx/Equalizer;->setEnabled(Z)I

    .line 122
    nop

    .line 115
    .end local v2    # "saved":Ljava/util/List;
    .end local v5    # "$this$obtainEqualizer_u24lambda_u244_u24lambda_u243":Landroid/media/audiofx/Equalizer;
    .end local v7    # "$i$a$-apply-PlaybackService$Companion$obtainEqualizer$2$1":I
    nop

    .line 122
    nop

    .line 114
    .end local v0    # "$this$obtainEqualizer_u24lambda_u244":Lcom/muzk/app/playback/PlaybackService$Companion;
    .end local v3    # "$i$a$-runCatching-PlaybackService$Companion$obtainEqualizer$2":I
    invoke-static {v4}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 123
    :goto_3
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    const/4 v2, 0x0

    goto :goto_4

    :cond_9
    move-object v2, v0

    :goto_4
    move-object v0, v2

    check-cast v0, Landroid/media/audiofx/Equalizer;

    .line 137
    .local v0, "it":Landroid/media/audiofx/Equalizer;
    const/4 v3, 0x0

    .line 123
    .local v3, "$i$a$-also-PlaybackService$Companion$obtainEqualizer$3":I
    sget-object v4, Lcom/muzk/app/playback/PlaybackService;->Companion:Lcom/muzk/app/playback/PlaybackService$Companion;

    invoke-static {v0}, Lcom/muzk/app/playback/PlaybackService;->access$setEqualizer$cp(Landroid/media/audiofx/Equalizer;)V

    .end local v0    # "it":Landroid/media/audiofx/Equalizer;
    .end local v3    # "$i$a$-also-PlaybackService$Companion$obtainEqualizer$3":I
    check-cast v2, Landroid/media/audiofx/Equalizer;

    .line 114
    return-object v2
.end method

.method public final saveEqualizer(Landroid/content/Context;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    invoke-virtual {p0}, Lcom/muzk/app/playback/PlaybackService$Companion;->getEqualizer()Landroid/media/audiofx/Equalizer;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 128
    .local v0, "eq":Landroid/media/audiofx/Equalizer;
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0}, Landroid/media/audiofx/Equalizer;->getNumberOfBands()S

    move-result v2

    invoke-static {v1, v2}, Lkotlin/ranges/RangesKt;->until(IS)Lkotlin/ranges/IntRange;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/Iterable;

    const-string v1, ","

    move-object v3, v1

    check-cast v3, Ljava/lang/CharSequence;

    new-instance v8, Lcom/muzk/app/playback/PlaybackService$Companion$$ExternalSyntheticLambda0;

    invoke-direct {v8, v0}, Lcom/muzk/app/playback/PlaybackService$Companion$$ExternalSyntheticLambda0;-><init>(Landroid/media/audiofx/Equalizer;)V

    const/16 v9, 0x1e

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v10}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 129
    .local v1, "levels":Ljava/lang/String;
    invoke-static {p1}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "getDefaultSharedPreferences(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    .local v2, "$this$edit_u24default$iv":Landroid/content/SharedPreferences;
    nop

    .line 155
    const/4 v3, 0x0

    .line 154
    .local v3, "commit$iv":Z
    const/4 v4, 0x0

    .line 158
    .local v4, "$i$f$edit":I
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 159
    .local v5, "editor$iv":Landroid/content/SharedPreferences$Editor;
    move-object v6, v5

    .local v6, "$this$saveEqualizer_u24lambda_u247":Landroid/content/SharedPreferences$Editor;
    const/4 v7, 0x0

    .line 130
    .local v7, "$i$a$-edit$default-PlaybackService$Companion$saveEqualizer$1":I
    const-string v8, "eq_bands"

    invoke-interface {v6, v8, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 131
    const-string v8, "eq_enabled"

    invoke-virtual {v0}, Landroid/media/audiofx/Equalizer;->getEnabled()Z

    move-result v9

    invoke-interface {v6, v8, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 132
    nop

    .line 159
    .end local v6    # "$this$saveEqualizer_u24lambda_u247":Landroid/content/SharedPreferences$Editor;
    .end local v7    # "$i$a$-edit$default-PlaybackService$Companion$saveEqualizer$1":I
    nop

    .line 160
    nop

    .line 163
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 165
    nop

    .line 133
    .end local v2    # "$this$edit_u24default$iv":Landroid/content/SharedPreferences;
    .end local v3    # "commit$iv":Z
    .end local v4    # "$i$f$edit":I
    .end local v5    # "editor$iv":Landroid/content/SharedPreferences$Editor;
    return-void
.end method
