.class public final Landroidx/media3/session/LibraryResult;
.super Ljava/lang/Object;
.source "LibraryResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/session/LibraryResult$Code;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final FIELD_COMPLETION_TIME_MS:Ljava/lang/String;

.field private static final FIELD_PARAMS:Ljava/lang/String;

.field private static final FIELD_RESULT_CODE:Ljava/lang/String;

.field private static final FIELD_SESSION_ERROR:Ljava/lang/String;

.field private static final FIELD_VALUE:Ljava/lang/String;

.field private static final FIELD_VALUE_TYPE:Ljava/lang/String;

.field public static final RESULT_ERROR_BAD_VALUE:I = -0x3

.field public static final RESULT_ERROR_INVALID_STATE:I = -0x2

.field public static final RESULT_ERROR_IO:I = -0x5

.field public static final RESULT_ERROR_NOT_SUPPORTED:I = -0x6

.field public static final RESULT_ERROR_PERMISSION_DENIED:I = -0x4

.field public static final RESULT_ERROR_SESSION_AUTHENTICATION_EXPIRED:I = -0x66

.field public static final RESULT_ERROR_SESSION_CONCURRENT_STREAM_LIMIT:I = -0x68

.field public static final RESULT_ERROR_SESSION_DISCONNECTED:I = -0x64

.field public static final RESULT_ERROR_SESSION_NOT_AVAILABLE_IN_REGION:I = -0x6a

.field public static final RESULT_ERROR_SESSION_PARENTAL_CONTROL_RESTRICTED:I = -0x69

.field public static final RESULT_ERROR_SESSION_PREMIUM_ACCOUNT_REQUIRED:I = -0x67

.field public static final RESULT_ERROR_SESSION_SETUP_REQUIRED:I = -0x6c

.field public static final RESULT_ERROR_SESSION_SKIP_LIMIT_REACHED:I = -0x6b

.field public static final RESULT_ERROR_UNKNOWN:I = -0x1

.field public static final RESULT_INFO_SKIPPED:I = 0x1

.field public static final RESULT_SUCCESS:I = 0x0

.field private static final VALUE_TYPE_ERROR:I = 0x4

.field private static final VALUE_TYPE_ITEM:I = 0x2

.field private static final VALUE_TYPE_ITEM_LIST:I = 0x3

.field private static final VALUE_TYPE_VOID:I = 0x1


# instance fields
.field public final completionTimeMs:J

.field public final params:Landroidx/media3/session/MediaLibraryService$LibraryParams;

.field public final resultCode:I

.field public final sessionError:Landroidx/media3/session/SessionError;

.field public final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field private final valueType:I


# direct methods
.method public static synthetic $r8$lambda$3gNk6WdWluwULgaxKQoRHUHPGh0(Landroid/os/Bundle;)Landroidx/media3/common/MediaItem;
    .locals 0

    invoke-static {p0}, Landroidx/media3/common/MediaItem;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/MediaItem;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$mdLRMNfKFNGtuMsiyfTvdB1f5pw(Landroidx/media3/common/MediaItem;)Landroid/os/Bundle;
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/common/MediaItem;->toBundle()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 328
    const/4 v0, 0x0

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/LibraryResult;->FIELD_RESULT_CODE:Ljava/lang/String;

    .line 329
    const/4 v0, 0x1

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/LibraryResult;->FIELD_COMPLETION_TIME_MS:Ljava/lang/String;

    .line 330
    const/4 v0, 0x2

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/LibraryResult;->FIELD_PARAMS:Ljava/lang/String;

    .line 331
    const/4 v0, 0x3

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/LibraryResult;->FIELD_VALUE:Ljava/lang/String;

    .line 332
    const/4 v0, 0x4

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/LibraryResult;->FIELD_VALUE_TYPE:Ljava/lang/String;

    .line 333
    const/4 v0, 0x5

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/LibraryResult;->FIELD_SESSION_ERROR:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(IJLandroidx/media3/session/MediaLibraryService$LibraryParams;Landroidx/media3/session/SessionError;Ljava/lang/Object;I)V
    .locals 0
    .param p1, "resultCode"    # I
    .param p2, "completionTimeMs"    # J
    .param p4, "params"    # Landroidx/media3/session/MediaLibraryService$LibraryParams;
    .param p5, "sessionError"    # Landroidx/media3/session/SessionError;
    .param p7, "valueType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Landroidx/media3/session/MediaLibraryService$LibraryParams;",
            "Landroidx/media3/session/SessionError;",
            "TV;I)V"
        }
    .end annotation

    .line 313
    .local p0, "this":Landroidx/media3/session/LibraryResult;, "Landroidx/media3/session/LibraryResult<TV;>;"
    .local p6, "value":Ljava/lang/Object;, "TV;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 314
    iput p1, p0, Landroidx/media3/session/LibraryResult;->resultCode:I

    .line 315
    iput-wide p2, p0, Landroidx/media3/session/LibraryResult;->completionTimeMs:J

    .line 316
    iput-object p4, p0, Landroidx/media3/session/LibraryResult;->params:Landroidx/media3/session/MediaLibraryService$LibraryParams;

    .line 317
    iput-object p5, p0, Landroidx/media3/session/LibraryResult;->sessionError:Landroidx/media3/session/SessionError;

    .line 318
    iput-object p6, p0, Landroidx/media3/session/LibraryResult;->value:Ljava/lang/Object;

    .line 319
    iput p7, p0, Landroidx/media3/session/LibraryResult;->valueType:I

    .line 320
    return-void
.end method

.method private static fromBundle(Landroid/os/Bundle;Ljava/lang/Integer;)Landroidx/media3/session/LibraryResult;
    .locals 18
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "expectedType"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/lang/Integer;",
            ")",
            "Landroidx/media3/session/LibraryResult<",
            "*>;"
        }
    .end annotation

    .line 411
    move-object/from16 v0, p0

    sget-object v1, Landroidx/media3/session/LibraryResult;->FIELD_RESULT_CODE:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 412
    .local v1, "resultCode":I
    sget-object v3, Landroidx/media3/session/LibraryResult;->FIELD_COMPLETION_TIME_MS:Ljava/lang/String;

    .line 413
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v11

    .line 414
    .local v11, "completionTimeMs":J
    sget-object v3, Landroidx/media3/session/LibraryResult;->FIELD_PARAMS:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v13

    .line 417
    .local v13, "paramsBundle":Landroid/os/Bundle;
    const/4 v3, 0x0

    if-nez v13, :cond_0

    move-object v7, v3

    goto :goto_0

    :cond_0
    invoke-static {v13}, Landroidx/media3/session/MediaLibraryService$LibraryParams;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/session/MediaLibraryService$LibraryParams;

    move-result-object v4

    move-object v7, v4

    .line 418
    .local v7, "params":Landroidx/media3/session/MediaLibraryService$LibraryParams;
    :goto_0
    const/4 v4, 0x0

    .line 419
    .local v4, "sessionError":Landroidx/media3/session/SessionError;
    sget-object v5, Landroidx/media3/session/LibraryResult;->FIELD_SESSION_ERROR:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v14

    .line 420
    .local v14, "sessionErrorBundle":Landroid/os/Bundle;
    if-eqz v14, :cond_1

    .line 421
    invoke-static {v14}, Landroidx/media3/session/SessionError;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/session/SessionError;

    move-result-object v4

    move-object v15, v4

    goto :goto_1

    .line 422
    :cond_1
    if-eqz v1, :cond_2

    .line 424
    new-instance v5, Landroidx/media3/session/SessionError;

    const-string v6, "no error message provided"

    invoke-direct {v5, v1, v6}, Landroidx/media3/session/SessionError;-><init>(ILjava/lang/String;)V

    move-object v4, v5

    move-object v15, v4

    goto :goto_1

    .line 422
    :cond_2
    move-object v15, v4

    .line 426
    .end local v4    # "sessionError":Landroidx/media3/session/SessionError;
    .local v15, "sessionError":Landroidx/media3/session/SessionError;
    :goto_1
    sget-object v4, Landroidx/media3/session/LibraryResult;->FIELD_VALUE_TYPE:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v16

    .line 428
    .local v16, "valueType":I
    const/4 v4, 0x1

    packed-switch v16, :pswitch_data_0

    .line 448
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2

    .line 435
    :pswitch_0
    if-eqz p1, :cond_3

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_4

    :cond_3
    move v2, v4

    :cond_4
    invoke-static {v2}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 436
    sget-object v2, Landroidx/media3/session/LibraryResult;->FIELD_VALUE:Ljava/lang/String;

    invoke-static {v0, v2}, Landroidx/core/app/BundleCompat;->getBinder(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 438
    .local v2, "valueRetriever":Landroid/os/IBinder;
    if-nez v2, :cond_5

    .line 439
    goto :goto_2

    .line 440
    :cond_5
    new-instance v3, Landroidx/media3/session/LibraryResult$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Landroidx/media3/session/LibraryResult$$ExternalSyntheticLambda1;-><init>()V

    .line 441
    invoke-static {v2}, Landroidx/media3/common/BundleListRetriever;->getList(Landroid/os/IBinder;)Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    .line 440
    invoke-static {v3, v4}, Landroidx/media3/common/util/BundleCollectionUtil;->fromBundleList(Lcom/google/common/base/Function;Ljava/util/List;)Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    :goto_2
    nop

    .line 442
    .local v3, "value":Ljava/lang/Object;
    move-object v2, v3

    goto :goto_4

    .line 430
    .end local v2    # "valueRetriever":Landroid/os/IBinder;
    .end local v3    # "value":Ljava/lang/Object;
    :pswitch_1
    if-eqz p1, :cond_6

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_7

    :cond_6
    move v2, v4

    :cond_7
    invoke-static {v2}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 431
    sget-object v2, Landroidx/media3/session/LibraryResult;->FIELD_VALUE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 432
    .local v2, "valueBundle":Landroid/os/Bundle;
    if-nez v2, :cond_8

    goto :goto_3

    :cond_8
    invoke-static {v2}, Landroidx/media3/common/MediaItem;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/MediaItem;

    move-result-object v3

    .line 433
    .restart local v3    # "value":Ljava/lang/Object;
    :goto_3
    move-object v2, v3

    goto :goto_4

    .line 445
    .end local v2    # "valueBundle":Landroid/os/Bundle;
    .end local v3    # "value":Ljava/lang/Object;
    :pswitch_2
    const/4 v3, 0x0

    .line 446
    .restart local v3    # "value":Ljava/lang/Object;
    move-object v2, v3

    .line 451
    .end local v3    # "value":Ljava/lang/Object;
    .local v2, "value":Ljava/lang/Object;
    :goto_4
    new-instance v17, Landroidx/media3/session/LibraryResult;

    move-object/from16 v3, v17

    move v4, v1

    move-wide v5, v11

    move-object v8, v15

    move-object v9, v2

    move/from16 v10, v16

    invoke-direct/range {v3 .. v10}, Landroidx/media3/session/LibraryResult;-><init>(IJLandroidx/media3/session/MediaLibraryService$LibraryParams;Landroidx/media3/session/SessionError;Ljava/lang/Object;I)V

    return-object v17

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static fromItemBundle(Landroid/os/Bundle;)Landroidx/media3/session/LibraryResult;
    .locals 1
    .param p0, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Landroidx/media3/session/LibraryResult<",
            "Landroidx/media3/common/MediaItem;",
            ">;"
        }
    .end annotation

    .line 386
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, v0}, Landroidx/media3/session/LibraryResult;->fromBundle(Landroid/os/Bundle;Ljava/lang/Integer;)Landroidx/media3/session/LibraryResult;

    move-result-object v0

    return-object v0
.end method

.method public static fromItemListBundle(Landroid/os/Bundle;)Landroidx/media3/session/LibraryResult;
    .locals 1
    .param p0, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Landroidx/media3/session/LibraryResult<",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/common/MediaItem;",
            ">;>;"
        }
    .end annotation

    .line 394
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, v0}, Landroidx/media3/session/LibraryResult;->fromBundle(Landroid/os/Bundle;Ljava/lang/Integer;)Landroidx/media3/session/LibraryResult;

    move-result-object v0

    return-object v0
.end method

.method public static fromUnknownBundle(Landroid/os/Bundle;)Landroidx/media3/session/LibraryResult;
    .locals 1
    .param p0, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Landroidx/media3/session/LibraryResult<",
            "*>;"
        }
    .end annotation

    .line 400
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroidx/media3/session/LibraryResult;->fromBundle(Landroid/os/Bundle;Ljava/lang/Integer;)Landroidx/media3/session/LibraryResult;

    move-result-object v0

    return-object v0
.end method

.method public static fromVoidBundle(Landroid/os/Bundle;)Landroidx/media3/session/LibraryResult;
    .locals 1
    .param p0, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Landroidx/media3/session/LibraryResult<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 378
    invoke-static {p0}, Landroidx/media3/session/LibraryResult;->fromUnknownBundle(Landroid/os/Bundle;)Landroidx/media3/session/LibraryResult;

    move-result-object v0

    return-object v0
.end method

.method public static ofError(I)Landroidx/media3/session/LibraryResult;
    .locals 3
    .param p0, "errorCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(I)",
            "Landroidx/media3/session/LibraryResult<",
            "TV;>;"
        }
    .end annotation

    .line 246
    new-instance v0, Landroidx/media3/session/SessionError;

    const-string v1, "no error message provided"

    sget-object v2, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-direct {v0, p0, v1, v2}, Landroidx/media3/session/SessionError;-><init>(ILjava/lang/String;Landroid/os/Bundle;)V

    invoke-static {v0}, Landroidx/media3/session/LibraryResult;->ofError(Landroidx/media3/session/SessionError;)Landroidx/media3/session/LibraryResult;

    move-result-object v0

    return-object v0
.end method

.method public static ofError(ILandroidx/media3/session/MediaLibraryService$LibraryParams;)Landroidx/media3/session/LibraryResult;
    .locals 9
    .param p0, "errorCode"    # I
    .param p1, "params"    # Landroidx/media3/session/MediaLibraryService$LibraryParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(I",
            "Landroidx/media3/session/MediaLibraryService$LibraryParams;",
            ")",
            "Landroidx/media3/session/LibraryResult<",
            "TV;>;"
        }
    .end annotation

    .line 262
    new-instance v8, Landroidx/media3/session/LibraryResult;

    .line 264
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    new-instance v5, Landroidx/media3/session/SessionError;

    const-string v0, "no error message provided"

    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-direct {v5, p0, v0, v1}, Landroidx/media3/session/SessionError;-><init>(ILjava/lang/String;Landroid/os/Bundle;)V

    const/4 v6, 0x0

    const/4 v7, 0x4

    move-object v0, v8

    move v1, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v7}, Landroidx/media3/session/LibraryResult;-><init>(IJLandroidx/media3/session/MediaLibraryService$LibraryParams;Landroidx/media3/session/SessionError;Ljava/lang/Object;I)V

    .line 262
    return-object v8
.end method

.method public static ofError(Landroidx/media3/session/SessionError;)Landroidx/media3/session/LibraryResult;
    .locals 9
    .param p0, "sessionError"    # Landroidx/media3/session/SessionError;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/media3/session/SessionError;",
            ")",
            "Landroidx/media3/session/LibraryResult<",
            "TV;>;"
        }
    .end annotation

    .line 279
    new-instance v8, Landroidx/media3/session/LibraryResult;

    iget v1, p0, Landroidx/media3/session/SessionError;->code:I

    .line 281
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v4, 0x0

    move-object v0, v8

    move-object v5, p0

    invoke-direct/range {v0 .. v7}, Landroidx/media3/session/LibraryResult;-><init>(IJLandroidx/media3/session/MediaLibraryService$LibraryParams;Landroidx/media3/session/SessionError;Ljava/lang/Object;I)V

    .line 279
    return-object v8
.end method

.method public static ofError(Landroidx/media3/session/SessionError;Landroidx/media3/session/MediaLibraryService$LibraryParams;)Landroidx/media3/session/LibraryResult;
    .locals 9
    .param p0, "sessionError"    # Landroidx/media3/session/SessionError;
    .param p1, "params"    # Landroidx/media3/session/MediaLibraryService$LibraryParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/media3/session/SessionError;",
            "Landroidx/media3/session/MediaLibraryService$LibraryParams;",
            ")",
            "Landroidx/media3/session/LibraryResult<",
            "TV;>;"
        }
    .end annotation

    .line 298
    new-instance v8, Landroidx/media3/session/LibraryResult;

    iget v1, p0, Landroidx/media3/session/SessionError;->code:I

    .line 300
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const/4 v6, 0x0

    const/4 v7, 0x4

    move-object v0, v8

    move-object v4, p1

    move-object v5, p0

    invoke-direct/range {v0 .. v7}, Landroidx/media3/session/LibraryResult;-><init>(IJLandroidx/media3/session/MediaLibraryService$LibraryParams;Landroidx/media3/session/SessionError;Ljava/lang/Object;I)V

    .line 298
    return-object v8
.end method

.method public static ofItem(Landroidx/media3/common/MediaItem;Landroidx/media3/session/MediaLibraryService$LibraryParams;)Landroidx/media3/session/LibraryResult;
    .locals 9
    .param p0, "item"    # Landroidx/media3/common/MediaItem;
    .param p1, "params"    # Landroidx/media3/session/MediaLibraryService$LibraryParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/MediaItem;",
            "Landroidx/media3/session/MediaLibraryService$LibraryParams;",
            ")",
            "Landroidx/media3/session/LibraryResult<",
            "Landroidx/media3/common/MediaItem;",
            ">;"
        }
    .end annotation

    .line 201
    invoke-static {p0}, Landroidx/media3/session/LibraryResult;->verifyMediaItem(Landroidx/media3/common/MediaItem;)V

    .line 202
    new-instance v8, Landroidx/media3/session/LibraryResult;

    .line 204
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const/4 v5, 0x0

    const/4 v7, 0x2

    const/4 v1, 0x0

    move-object v0, v8

    move-object v4, p1

    move-object v6, p0

    invoke-direct/range {v0 .. v7}, Landroidx/media3/session/LibraryResult;-><init>(IJLandroidx/media3/session/MediaLibraryService$LibraryParams;Landroidx/media3/session/SessionError;Ljava/lang/Object;I)V

    .line 202
    return-object v8
.end method

.method public static ofItemList(Ljava/util/List;Landroidx/media3/session/MediaLibraryService$LibraryParams;)Landroidx/media3/session/LibraryResult;
    .locals 10
    .param p1, "params"    # Landroidx/media3/session/MediaLibraryService$LibraryParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/common/MediaItem;",
            ">;",
            "Landroidx/media3/session/MediaLibraryService$LibraryParams;",
            ")",
            "Landroidx/media3/session/LibraryResult<",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/common/MediaItem;",
            ">;>;"
        }
    .end annotation

    .line 223
    .local p0, "items":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/MediaItem;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/common/MediaItem;

    .line 224
    .local v1, "item":Landroidx/media3/common/MediaItem;
    invoke-static {v1}, Landroidx/media3/session/LibraryResult;->verifyMediaItem(Landroidx/media3/common/MediaItem;)V

    .line 225
    .end local v1    # "item":Landroidx/media3/common/MediaItem;
    goto :goto_0

    .line 226
    :cond_0
    new-instance v0, Landroidx/media3/session/LibraryResult;

    .line 228
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 231
    invoke-static {p0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v8

    const/4 v9, 0x3

    const/4 v3, 0x0

    const/4 v7, 0x0

    move-object v2, v0

    move-object v6, p1

    invoke-direct/range {v2 .. v9}, Landroidx/media3/session/LibraryResult;-><init>(IJLandroidx/media3/session/MediaLibraryService$LibraryParams;Landroidx/media3/session/SessionError;Ljava/lang/Object;I)V

    .line 226
    return-object v0
.end method

.method public static ofVoid()Landroidx/media3/session/LibraryResult;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/media3/session/LibraryResult<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 168
    new-instance v8, Landroidx/media3/session/LibraryResult;

    .line 170
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Landroidx/media3/session/LibraryResult;-><init>(IJLandroidx/media3/session/MediaLibraryService$LibraryParams;Landroidx/media3/session/SessionError;Ljava/lang/Object;I)V

    .line 168
    return-object v8
.end method

.method public static ofVoid(Landroidx/media3/session/MediaLibraryService$LibraryParams;)Landroidx/media3/session/LibraryResult;
    .locals 9
    .param p0, "params"    # Landroidx/media3/session/MediaLibraryService$LibraryParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/session/MediaLibraryService$LibraryParams;",
            ")",
            "Landroidx/media3/session/LibraryResult<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 182
    new-instance v8, Landroidx/media3/session/LibraryResult;

    .line 184
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v1, 0x0

    const/4 v5, 0x0

    move-object v0, v8

    move-object v4, p0

    invoke-direct/range {v0 .. v7}, Landroidx/media3/session/LibraryResult;-><init>(IJLandroidx/media3/session/MediaLibraryService$LibraryParams;Landroidx/media3/session/SessionError;Ljava/lang/Object;I)V

    .line 182
    return-object v8
.end method

.method private static verifyMediaItem(Landroidx/media3/common/MediaItem;)V
    .locals 4
    .param p0, "item"    # Landroidx/media3/common/MediaItem;

    .line 323
    iget-object v0, p0, Landroidx/media3/common/MediaItem;->mediaId:Ljava/lang/String;

    const-string v1, "mediaId must not be empty"

    invoke-static {v0, v1}, Landroidx/media3/common/util/Assertions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 324
    iget-object v0, p0, Landroidx/media3/common/MediaItem;->mediaMetadata:Landroidx/media3/common/MediaMetadata;

    iget-object v0, v0, Landroidx/media3/common/MediaMetadata;->isBrowsable:Ljava/lang/Boolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-string v3, "mediaMetadata must specify isBrowsable"

    invoke-static {v0, v3}, Landroidx/media3/common/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 325
    iget-object v0, p0, Landroidx/media3/common/MediaItem;->mediaMetadata:Landroidx/media3/common/MediaMetadata;

    iget-object v0, v0, Landroidx/media3/common/MediaMetadata;->isPlayable:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    const-string v0, "mediaMetadata must specify isPlayable"

    invoke-static {v1, v0}, Landroidx/media3/common/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 326
    return-void
.end method


# virtual methods
.method public toBundle()Landroid/os/Bundle;
    .locals 5

    .line 339
    .local p0, "this":Landroidx/media3/session/LibraryResult;, "Landroidx/media3/session/LibraryResult<TV;>;"
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 340
    .local v0, "bundle":Landroid/os/Bundle;
    sget-object v1, Landroidx/media3/session/LibraryResult;->FIELD_RESULT_CODE:Ljava/lang/String;

    iget v2, p0, Landroidx/media3/session/LibraryResult;->resultCode:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 341
    sget-object v1, Landroidx/media3/session/LibraryResult;->FIELD_COMPLETION_TIME_MS:Ljava/lang/String;

    iget-wide v2, p0, Landroidx/media3/session/LibraryResult;->completionTimeMs:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 342
    iget-object v1, p0, Landroidx/media3/session/LibraryResult;->params:Landroidx/media3/session/MediaLibraryService$LibraryParams;

    if-eqz v1, :cond_0

    .line 343
    sget-object v1, Landroidx/media3/session/LibraryResult;->FIELD_PARAMS:Ljava/lang/String;

    iget-object v2, p0, Landroidx/media3/session/LibraryResult;->params:Landroidx/media3/session/MediaLibraryService$LibraryParams;

    invoke-virtual {v2}, Landroidx/media3/session/MediaLibraryService$LibraryParams;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 345
    :cond_0
    iget-object v1, p0, Landroidx/media3/session/LibraryResult;->sessionError:Landroidx/media3/session/SessionError;

    if-eqz v1, :cond_1

    .line 346
    sget-object v1, Landroidx/media3/session/LibraryResult;->FIELD_SESSION_ERROR:Ljava/lang/String;

    iget-object v2, p0, Landroidx/media3/session/LibraryResult;->sessionError:Landroidx/media3/session/SessionError;

    invoke-virtual {v2}, Landroidx/media3/session/SessionError;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 348
    :cond_1
    sget-object v1, Landroidx/media3/session/LibraryResult;->FIELD_VALUE_TYPE:Ljava/lang/String;

    iget v2, p0, Landroidx/media3/session/LibraryResult;->valueType:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 350
    iget-object v1, p0, Landroidx/media3/session/LibraryResult;->value:Ljava/lang/Object;

    if-nez v1, :cond_2

    .line 351
    return-object v0

    .line 353
    :cond_2
    iget v1, p0, Landroidx/media3/session/LibraryResult;->valueType:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 358
    :pswitch_0
    sget-object v1, Landroidx/media3/session/LibraryResult;->FIELD_VALUE:Ljava/lang/String;

    new-instance v2, Landroidx/media3/common/BundleListRetriever;

    iget-object v3, p0, Landroidx/media3/session/LibraryResult;->value:Ljava/lang/Object;

    check-cast v3, Lcom/google/common/collect/ImmutableList;

    new-instance v4, Landroidx/media3/session/LibraryResult$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Landroidx/media3/session/LibraryResult$$ExternalSyntheticLambda0;-><init>()V

    .line 362
    invoke-static {v3, v4}, Landroidx/media3/common/util/BundleCollectionUtil;->toBundleList(Ljava/util/List;Lcom/google/common/base/Function;)Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/media3/common/BundleListRetriever;-><init>(Ljava/util/List;)V

    .line 358
    invoke-static {v0, v1, v2}, Landroidx/core/app/BundleCompat;->putBinder(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/IBinder;)V

    .line 364
    goto :goto_0

    .line 355
    :pswitch_1
    sget-object v1, Landroidx/media3/session/LibraryResult;->FIELD_VALUE:Ljava/lang/String;

    iget-object v2, p0, Landroidx/media3/session/LibraryResult;->value:Ljava/lang/Object;

    check-cast v2, Landroidx/media3/common/MediaItem;

    invoke-virtual {v2}, Landroidx/media3/common/MediaItem;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 356
    goto :goto_0

    .line 368
    :pswitch_2
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 370
    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
