.class public final Landroidx/media3/session/SessionError;
.super Ljava/lang/Object;
.source "SessionError.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/session/SessionError$Code;
    }
.end annotation


# static fields
.field static final DEFAULT_ERROR_MESSAGE:Ljava/lang/String; = "no error message provided"

.field public static final ERROR_BAD_VALUE:I = -0x3

.field public static final ERROR_INVALID_STATE:I = -0x2

.field public static final ERROR_IO:I = -0x5

.field public static final ERROR_NOT_SUPPORTED:I = -0x6

.field public static final ERROR_PERMISSION_DENIED:I = -0x4

.field public static final ERROR_SESSION_AUTHENTICATION_EXPIRED:I = -0x66

.field public static final ERROR_SESSION_CONCURRENT_STREAM_LIMIT:I = -0x68

.field public static final ERROR_SESSION_CONTENT_ALREADY_PLAYING:I = -0x6e

.field public static final ERROR_SESSION_DISCONNECTED:I = -0x64

.field public static final ERROR_SESSION_END_OF_PLAYLIST:I = -0x6d

.field public static final ERROR_SESSION_NOT_AVAILABLE_IN_REGION:I = -0x6a

.field public static final ERROR_SESSION_PARENTAL_CONTROL_RESTRICTED:I = -0x69

.field public static final ERROR_SESSION_PREMIUM_ACCOUNT_REQUIRED:I = -0x67

.field public static final ERROR_SESSION_SETUP_REQUIRED:I = -0x6c

.field public static final ERROR_SESSION_SKIP_LIMIT_REACHED:I = -0x6b

.field public static final ERROR_UNKNOWN:I = -0x1

.field private static final FIELD_CODE:Ljava/lang/String;

.field private static final FIELD_EXTRAS:Ljava/lang/String;

.field private static final FIELD_MESSAGE:Ljava/lang/String;

.field public static final INFO_CANCELLED:I = 0x1


# instance fields
.field public code:I

.field public extras:Landroid/os/Bundle;

.field public message:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 234
    const/4 v0, 0x0

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/SessionError;->FIELD_CODE:Ljava/lang/String;

    .line 235
    const/4 v0, 0x1

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/SessionError;->FIELD_MESSAGE:Ljava/lang/String;

    .line 236
    const/4 v0, 0x2

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/SessionError;->FIELD_EXTRAS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "code"    # I
    .param p2, "message"    # Ljava/lang/String;

    .line 196
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-direct {p0, p1, p2, v0}, Landroidx/media3/session/SessionError;-><init>(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 197
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "code"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    const/4 v0, 0x1

    if-ltz p1, :cond_1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    .line 209
    iput p1, p0, Landroidx/media3/session/SessionError;->code:I

    .line 210
    iput-object p2, p0, Landroidx/media3/session/SessionError;->message:Ljava/lang/String;

    .line 211
    iput-object p3, p0, Landroidx/media3/session/SessionError;->extras:Landroid/os/Bundle;

    .line 212
    return-void
.end method

.method public static fromBundle(Landroid/os/Bundle;)Landroidx/media3/session/SessionError;
    .locals 5
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 251
    sget-object v0, Landroidx/media3/session/SessionError;->FIELD_CODE:Ljava/lang/String;

    .line 252
    const/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 253
    .local v0, "code":I
    sget-object v1, Landroidx/media3/session/SessionError;->FIELD_MESSAGE:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 254
    .local v1, "message":Ljava/lang/String;
    sget-object v2, Landroidx/media3/session/SessionError;->FIELD_EXTRAS:Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 255
    .local v2, "extras":Landroid/os/Bundle;
    new-instance v3, Landroidx/media3/session/SessionError;

    if-nez v2, :cond_0

    sget-object v4, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    goto :goto_0

    :cond_0
    move-object v4, v2

    :goto_0
    invoke-direct {v3, v0, v1, v4}, Landroidx/media3/session/SessionError;-><init>(ILjava/lang/String;Landroid/os/Bundle;)V

    return-object v3
.end method

.method public static getErrorCodeName(I)Ljava/lang/String;
    .locals 1
    .param p0, "errorCode"    # I

    .line 144
    sparse-switch p0, :sswitch_data_0

    .line 180
    const-string v0, "invalid error code"

    return-object v0

    .line 178
    :sswitch_0
    const-string v0, "INFO_CANCELLED"

    return-object v0

    .line 146
    :sswitch_1
    const-string v0, "ERROR_UNKNOWN"

    return-object v0

    .line 148
    :sswitch_2
    const-string v0, "ERROR_INVALID_STATE"

    return-object v0

    .line 150
    :sswitch_3
    const-string v0, "ERROR_BAD_VALUE"

    return-object v0

    .line 152
    :sswitch_4
    const-string v0, "ERROR_PERMISSION_DENIED"

    return-object v0

    .line 154
    :sswitch_5
    const-string v0, "ERROR_IO"

    return-object v0

    .line 156
    :sswitch_6
    const-string v0, "ERROR_NOT_SUPPORTED"

    return-object v0

    .line 158
    :sswitch_7
    const-string v0, "ERROR_SESSION_DISCONNECTED"

    return-object v0

    .line 160
    :sswitch_8
    const-string v0, "ERROR_SESSION_AUTHENTICATION_EXPIRED"

    return-object v0

    .line 162
    :sswitch_9
    const-string v0, "ERROR_SESSION_PREMIUM_ACCOUNT_REQUIRED"

    return-object v0

    .line 164
    :sswitch_a
    const-string v0, "ERROR_SESSION_CONCURRENT_STREAM_LIMIT"

    return-object v0

    .line 170
    :sswitch_b
    const-string v0, "ERROR_SESSION_PARENTAL_CONTROL_RESTRICTED"

    return-object v0

    .line 172
    :sswitch_c
    const-string v0, "ERROR_SESSION_NOT_AVAILABLE_IN_REGION"

    return-object v0

    .line 174
    :sswitch_d
    const-string v0, "ERROR_SESSION_SKIP_LIMIT_REACHED"

    return-object v0

    .line 176
    :sswitch_e
    const-string v0, "ERROR_SESSION_SETUP_REQUIRED"

    return-object v0

    .line 168
    :sswitch_f
    const-string v0, "ERROR_SESSION_END_OF_PLAYLIST"

    return-object v0

    .line 166
    :sswitch_10
    const-string v0, "ERROR_SESSION_CONTENT_ALREADY_PLAYING"

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6e -> :sswitch_10
        -0x6d -> :sswitch_f
        -0x6c -> :sswitch_e
        -0x6b -> :sswitch_d
        -0x6a -> :sswitch_c
        -0x69 -> :sswitch_b
        -0x68 -> :sswitch_a
        -0x67 -> :sswitch_9
        -0x66 -> :sswitch_8
        -0x64 -> :sswitch_7
        -0x6 -> :sswitch_6
        -0x5 -> :sswitch_5
        -0x4 -> :sswitch_4
        -0x3 -> :sswitch_3
        -0x2 -> :sswitch_2
        -0x1 -> :sswitch_1
        0x1 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 217
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 218
    return v0

    .line 220
    :cond_0
    instance-of v1, p1, Landroidx/media3/session/SessionError;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 221
    return v2

    .line 223
    :cond_1
    move-object v1, p1

    check-cast v1, Landroidx/media3/session/SessionError;

    .line 224
    .local v1, "that":Landroidx/media3/session/SessionError;
    iget v3, p0, Landroidx/media3/session/SessionError;->code:I

    iget v4, v1, Landroidx/media3/session/SessionError;->code:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroidx/media3/session/SessionError;->message:Ljava/lang/String;

    iget-object v4, v1, Landroidx/media3/session/SessionError;->message:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 229
    iget v0, p0, Landroidx/media3/session/SessionError;->code:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/session/SessionError;->message:Ljava/lang/String;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 3

    .line 240
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 241
    .local v0, "bundle":Landroid/os/Bundle;
    sget-object v1, Landroidx/media3/session/SessionError;->FIELD_CODE:Ljava/lang/String;

    iget v2, p0, Landroidx/media3/session/SessionError;->code:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 242
    sget-object v1, Landroidx/media3/session/SessionError;->FIELD_MESSAGE:Ljava/lang/String;

    iget-object v2, p0, Landroidx/media3/session/SessionError;->message:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    iget-object v1, p0, Landroidx/media3/session/SessionError;->extras:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 244
    sget-object v1, Landroidx/media3/session/SessionError;->FIELD_EXTRAS:Ljava/lang/String;

    iget-object v2, p0, Landroidx/media3/session/SessionError;->extras:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 246
    :cond_0
    return-object v0
.end method
