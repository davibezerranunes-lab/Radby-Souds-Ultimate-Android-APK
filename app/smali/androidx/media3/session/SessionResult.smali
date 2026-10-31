.class public final Landroidx/media3/session/SessionResult;
.super Ljava/lang/Object;
.source "SessionResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/session/SessionResult$Code;
    }
.end annotation


# static fields
.field private static final FIELD_COMPLETION_TIME_MS:Ljava/lang/String;

.field private static final FIELD_EXTRAS:Ljava/lang/String;

.field private static final FIELD_RESULT_CODE:Ljava/lang/String;

.field private static final FIELD_SESSION_ERROR:Ljava/lang/String;

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

.field public static final RESULT_SUCCESS:I


# instance fields
.field public final completionTimeMs:J

.field public final extras:Landroid/os/Bundle;

.field public final resultCode:I

.field public final sessionError:Landroidx/media3/session/SessionError;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 237
    const/4 v0, 0x0

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/SessionResult;->FIELD_RESULT_CODE:Ljava/lang/String;

    .line 238
    const/4 v0, 0x1

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/SessionResult;->FIELD_EXTRAS:Ljava/lang/String;

    .line 239
    const/4 v0, 0x2

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/SessionResult;->FIELD_COMPLETION_TIME_MS:Ljava/lang/String;

    .line 240
    const/4 v0, 0x3

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/SessionResult;->FIELD_SESSION_ERROR:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "resultCode"    # I

    .line 171
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-direct {p0, p1, v0}, Landroidx/media3/session/SessionResult;-><init>(ILandroid/os/Bundle;)V

    .line 172
    return-void
.end method

.method public constructor <init>(ILandroid/os/Bundle;)V
    .locals 6
    .param p1, "resultCode"    # I
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 184
    nop

    .line 187
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 184
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Landroidx/media3/session/SessionResult;-><init>(ILandroid/os/Bundle;JLandroidx/media3/session/SessionError;)V

    .line 189
    return-void
.end method

.method private constructor <init>(ILandroid/os/Bundle;JLandroidx/media3/session/SessionError;)V
    .locals 2
    .param p1, "resultCode"    # I
    .param p2, "extras"    # Landroid/os/Bundle;
    .param p3, "completionTimeMs"    # J
    .param p5, "sessionError"    # Landroidx/media3/session/SessionError;

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 227
    if-eqz p5, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    .line 228
    iput p1, p0, Landroidx/media3/session/SessionResult;->resultCode:I

    .line 229
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Landroidx/media3/session/SessionResult;->extras:Landroid/os/Bundle;

    .line 230
    iput-wide p3, p0, Landroidx/media3/session/SessionResult;->completionTimeMs:J

    .line 231
    nop

    .line 232
    if-nez p5, :cond_2

    if-gez p1, :cond_2

    .line 233
    new-instance v0, Landroidx/media3/session/SessionError;

    const-string v1, "no error message provided"

    invoke-direct {v0, p1, v1}, Landroidx/media3/session/SessionError;-><init>(ILjava/lang/String;)V

    goto :goto_2

    .line 234
    :cond_2
    move-object v0, p5

    :goto_2
    iput-object v0, p0, Landroidx/media3/session/SessionResult;->sessionError:Landroidx/media3/session/SessionError;

    .line 235
    return-void
.end method

.method public constructor <init>(Landroidx/media3/session/SessionError;)V
    .locals 6
    .param p1, "sessionError"    # Landroidx/media3/session/SessionError;

    .line 199
    iget v1, p1, Landroidx/media3/session/SessionError;->code:I

    sget-object v2, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    .line 202
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 199
    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Landroidx/media3/session/SessionResult;-><init>(ILandroid/os/Bundle;JLandroidx/media3/session/SessionError;)V

    .line 204
    return-void
.end method

.method public constructor <init>(Landroidx/media3/session/SessionError;Landroid/os/Bundle;)V
    .locals 6
    .param p1, "sessionError"    # Landroidx/media3/session/SessionError;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 215
    iget v1, p1, Landroidx/media3/session/SessionError;->code:I

    .line 218
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 215
    move-object v0, p0

    move-object v2, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Landroidx/media3/session/SessionResult;-><init>(ILandroid/os/Bundle;JLandroidx/media3/session/SessionError;)V

    .line 220
    return-void
.end method

.method public static fromBundle(Landroid/os/Bundle;)Landroidx/media3/session/SessionResult;
    .locals 13
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 257
    sget-object v0, Landroidx/media3/session/SessionResult;->FIELD_RESULT_CODE:Ljava/lang/String;

    .line 258
    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 259
    .local v0, "resultCode":I
    sget-object v1, Landroidx/media3/session/SessionResult;->FIELD_EXTRAS:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 260
    .local v1, "extras":Landroid/os/Bundle;
    sget-object v2, Landroidx/media3/session/SessionResult;->FIELD_COMPLETION_TIME_MS:Ljava/lang/String;

    .line 261
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-virtual {p0, v2, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    .line 262
    .local v8, "completionTimeMs":J
    const/4 v2, 0x0

    .line 263
    .local v2, "sessionError":Landroidx/media3/session/SessionError;
    sget-object v3, Landroidx/media3/session/SessionResult;->FIELD_SESSION_ERROR:Ljava/lang/String;

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v10

    .line 264
    .local v10, "sessionErrorBundle":Landroid/os/Bundle;
    if-eqz v10, :cond_0

    .line 265
    invoke-static {v10}, Landroidx/media3/session/SessionError;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/session/SessionError;

    move-result-object v2

    move-object v11, v2

    goto :goto_0

    .line 266
    :cond_0
    if-eqz v0, :cond_1

    .line 269
    new-instance v3, Landroidx/media3/session/SessionError;

    const-string v4, "no error message provided"

    invoke-direct {v3, v0, v4}, Landroidx/media3/session/SessionError;-><init>(ILjava/lang/String;)V

    move-object v2, v3

    move-object v11, v2

    goto :goto_0

    .line 266
    :cond_1
    move-object v11, v2

    .line 271
    .end local v2    # "sessionError":Landroidx/media3/session/SessionError;
    .local v11, "sessionError":Landroidx/media3/session/SessionError;
    :goto_0
    new-instance v12, Landroidx/media3/session/SessionResult;

    .line 272
    if-nez v1, :cond_2

    sget-object v2, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    move-object v4, v2

    goto :goto_1

    :cond_2
    move-object v4, v1

    :goto_1
    move-object v2, v12

    move v3, v0

    move-wide v5, v8

    move-object v7, v11

    invoke-direct/range {v2 .. v7}, Landroidx/media3/session/SessionResult;-><init>(ILandroid/os/Bundle;JLandroidx/media3/session/SessionError;)V

    .line 271
    return-object v12
.end method


# virtual methods
.method public toBundle()Landroid/os/Bundle;
    .locals 4

    .line 244
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 245
    .local v0, "bundle":Landroid/os/Bundle;
    sget-object v1, Landroidx/media3/session/SessionResult;->FIELD_RESULT_CODE:Ljava/lang/String;

    iget v2, p0, Landroidx/media3/session/SessionResult;->resultCode:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 246
    sget-object v1, Landroidx/media3/session/SessionResult;->FIELD_EXTRAS:Ljava/lang/String;

    iget-object v2, p0, Landroidx/media3/session/SessionResult;->extras:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 247
    sget-object v1, Landroidx/media3/session/SessionResult;->FIELD_COMPLETION_TIME_MS:Ljava/lang/String;

    iget-wide v2, p0, Landroidx/media3/session/SessionResult;->completionTimeMs:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 248
    iget-object v1, p0, Landroidx/media3/session/SessionResult;->sessionError:Landroidx/media3/session/SessionError;

    if-eqz v1, :cond_0

    .line 249
    sget-object v1, Landroidx/media3/session/SessionResult;->FIELD_SESSION_ERROR:Ljava/lang/String;

    iget-object v2, p0, Landroidx/media3/session/SessionResult;->sessionError:Landroidx/media3/session/SessionError;

    invoke-virtual {v2}, Landroidx/media3/session/SessionError;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 251
    :cond_0
    return-object v0
.end method
