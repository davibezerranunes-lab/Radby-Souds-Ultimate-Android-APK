.class public final Landroidx/media3/session/SessionCommand;
.super Ljava/lang/Object;
.source "SessionCommand.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/session/SessionCommand$CommandCode;
    }
.end annotation


# static fields
.field public static final COMMAND_CODE_CUSTOM:I = 0x0

.field public static final COMMAND_CODE_LIBRARY_GET_CHILDREN:I = 0xc353

.field public static final COMMAND_CODE_LIBRARY_GET_ITEM:I = 0xc354

.field public static final COMMAND_CODE_LIBRARY_GET_LIBRARY_ROOT:I = 0xc350

.field public static final COMMAND_CODE_LIBRARY_GET_SEARCH_RESULT:I = 0xc356

.field public static final COMMAND_CODE_LIBRARY_SEARCH:I = 0xc355

.field public static final COMMAND_CODE_LIBRARY_SUBSCRIBE:I = 0xc351

.field public static final COMMAND_CODE_LIBRARY_UNSUBSCRIBE:I = 0xc352

.field public static final COMMAND_CODE_SESSION_SET_RATING:I = 0x9c4a

.field private static final FIELD_COMMAND_CODE:Ljava/lang/String;

.field private static final FIELD_CUSTOM_ACTION:Ljava/lang/String;

.field private static final FIELD_CUSTOM_EXTRAS:Ljava/lang/String;

.field static final LIBRARY_COMMANDS:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static final SESSION_COMMANDS:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final commandCode:I

.field public final customAction:Ljava/lang/String;

.field public final customExtras:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 76
    nop

    .line 77
    const v0, 0x9c4a

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/SessionCommand;->SESSION_COMMANDS:Lcom/google/common/collect/ImmutableList;

    .line 104
    nop

    .line 106
    const v0, 0xc350

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 107
    const v0, 0xc351

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 108
    const v0, 0xc352

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 109
    const v0, 0xc353

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 110
    const v0, 0xc354

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 111
    const v0, 0xc355

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 112
    const v0, 0xc356

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 105
    invoke-static/range {v1 .. v7}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/SessionCommand;->LIBRARY_COMMANDS:Lcom/google/common/collect/ImmutableList;

    .line 174
    const/4 v0, 0x0

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/SessionCommand;->FIELD_COMMAND_CODE:Ljava/lang/String;

    .line 175
    const/4 v0, 0x1

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/SessionCommand;->FIELD_CUSTOM_ACTION:Ljava/lang/String;

    .line 176
    const/4 v0, 0x2

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/SessionCommand;->FIELD_CUSTOM_EXTRAS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "commandCode"    # I

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "commandCode shouldn\'t be COMMAND_CODE_CUSTOM"

    invoke-static {v0, v1}, Landroidx/media3/common/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 140
    iput p1, p0, Landroidx/media3/session/SessionCommand;->commandCode:I

    .line 141
    const-string v0, ""

    iput-object v0, p0, Landroidx/media3/session/SessionCommand;->customAction:Ljava/lang/String;

    .line 142
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    iput-object v0, p0, Landroidx/media3/session/SessionCommand;->customExtras:Landroid/os/Bundle;

    .line 143
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/session/SessionCommand;->commandCode:I

    .line 155
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroidx/media3/session/SessionCommand;->customAction:Ljava/lang/String;

    .line 156
    new-instance v0, Landroid/os/Bundle;

    invoke-static {p2}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Landroidx/media3/session/SessionCommand;->customExtras:Landroid/os/Bundle;

    .line 157
    return-void
.end method

.method public static fromBundle(Landroid/os/Bundle;)Landroidx/media3/session/SessionCommand;
    .locals 5
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 190
    sget-object v0, Landroidx/media3/session/SessionCommand;->FIELD_COMMAND_CODE:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 191
    .local v0, "commandCode":I
    if-eqz v0, :cond_0

    .line 192
    new-instance v1, Landroidx/media3/session/SessionCommand;

    invoke-direct {v1, v0}, Landroidx/media3/session/SessionCommand;-><init>(I)V

    return-object v1

    .line 194
    :cond_0
    sget-object v1, Landroidx/media3/session/SessionCommand;->FIELD_CUSTOM_ACTION:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 195
    .local v1, "customAction":Ljava/lang/String;
    sget-object v2, Landroidx/media3/session/SessionCommand;->FIELD_CUSTOM_EXTRAS:Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 196
    .local v2, "customExtras":Landroid/os/Bundle;
    new-instance v3, Landroidx/media3/session/SessionCommand;

    if-nez v2, :cond_1

    sget-object v4, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    goto :goto_0

    :cond_1
    move-object v4, v2

    :goto_0
    invoke-direct {v3, v1, v4}, Landroidx/media3/session/SessionCommand;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object v3
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 162
    instance-of v0, p1, Landroidx/media3/session/SessionCommand;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 163
    return v1

    .line 165
    :cond_0
    move-object v0, p1

    check-cast v0, Landroidx/media3/session/SessionCommand;

    .line 166
    .local v0, "other":Landroidx/media3/session/SessionCommand;
    iget v2, p0, Landroidx/media3/session/SessionCommand;->commandCode:I

    iget v3, v0, Landroidx/media3/session/SessionCommand;->commandCode:I

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Landroidx/media3/session/SessionCommand;->customAction:Ljava/lang/String;

    iget-object v3, v0, Landroidx/media3/session/SessionCommand;->customAction:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 171
    iget-object v0, p0, Landroidx/media3/session/SessionCommand;->customAction:Ljava/lang/String;

    iget v1, p0, Landroidx/media3/session/SessionCommand;->commandCode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 3

    .line 180
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 181
    .local v0, "bundle":Landroid/os/Bundle;
    sget-object v1, Landroidx/media3/session/SessionCommand;->FIELD_COMMAND_CODE:Ljava/lang/String;

    iget v2, p0, Landroidx/media3/session/SessionCommand;->commandCode:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 182
    sget-object v1, Landroidx/media3/session/SessionCommand;->FIELD_CUSTOM_ACTION:Ljava/lang/String;

    iget-object v2, p0, Landroidx/media3/session/SessionCommand;->customAction:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    sget-object v1, Landroidx/media3/session/SessionCommand;->FIELD_CUSTOM_EXTRAS:Ljava/lang/String;

    iget-object v2, p0, Landroidx/media3/session/SessionCommand;->customExtras:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 184
    return-object v0
.end method
