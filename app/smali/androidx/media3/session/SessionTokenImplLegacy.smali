.class final Landroidx/media3/session/SessionTokenImplLegacy;
.super Ljava/lang/Object;
.source "SessionTokenImplLegacy.java"

# interfaces
.implements Landroidx/media3/session/SessionToken$SessionTokenImpl;


# static fields
.field private static final FIELD_COMPONENT_NAME:Ljava/lang/String;

.field private static final FIELD_EXTRAS:Ljava/lang/String;

.field private static final FIELD_LEGACY_TOKEN:Ljava/lang/String;

.field private static final FIELD_PACKAGE_NAME:Ljava/lang/String;

.field private static final FIELD_TYPE:Ljava/lang/String;

.field private static final FIELD_UID:Ljava/lang/String;


# instance fields
.field private final componentName:Landroid/content/ComponentName;

.field private final extras:Landroid/os/Bundle;

.field private final legacyToken:Landroidx/media3/session/legacy/MediaSessionCompat$Token;

.field private final packageName:Ljava/lang/String;

.field private final type:I

.field private final uid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 178
    const/4 v0, 0x0

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/SessionTokenImplLegacy;->FIELD_LEGACY_TOKEN:Ljava/lang/String;

    .line 179
    const/4 v0, 0x1

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/SessionTokenImplLegacy;->FIELD_UID:Ljava/lang/String;

    .line 180
    const/4 v0, 0x2

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/SessionTokenImplLegacy;->FIELD_TYPE:Ljava/lang/String;

    .line 181
    const/4 v0, 0x3

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/SessionTokenImplLegacy;->FIELD_COMPONENT_NAME:Ljava/lang/String;

    .line 182
    const/4 v0, 0x4

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/SessionTokenImplLegacy;->FIELD_PACKAGE_NAME:Ljava/lang/String;

    .line 183
    const/4 v0, 0x5

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/SessionTokenImplLegacy;->FIELD_EXTRAS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/ComponentName;I)V
    .locals 8
    .param p1, "serviceComponent"    # Landroid/content/ComponentName;
    .param p2, "uid"    # I

    .line 61
    nop

    .line 65
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/content/ComponentName;

    .line 66
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    .line 61
    const/4 v2, 0x0

    const/16 v4, 0x65

    move-object v1, p0

    move v3, p2

    invoke-direct/range {v1 .. v7}, Landroidx/media3/session/SessionTokenImplLegacy;-><init>(Landroidx/media3/session/legacy/MediaSessionCompat$Token;IILandroid/content/ComponentName;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 68
    return-void
.end method

.method private constructor <init>(Landroidx/media3/session/legacy/MediaSessionCompat$Token;IILandroid/content/ComponentName;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "legacyToken"    # Landroidx/media3/session/legacy/MediaSessionCompat$Token;
    .param p2, "uid"    # I
    .param p3, "type"    # I
    .param p4, "componentName"    # Landroid/content/ComponentName;
    .param p5, "packageName"    # Ljava/lang/String;
    .param p6, "extras"    # Landroid/os/Bundle;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Landroidx/media3/session/SessionTokenImplLegacy;->legacyToken:Landroidx/media3/session/legacy/MediaSessionCompat$Token;

    .line 78
    iput p2, p0, Landroidx/media3/session/SessionTokenImplLegacy;->uid:I

    .line 79
    iput p3, p0, Landroidx/media3/session/SessionTokenImplLegacy;->type:I

    .line 80
    iput-object p4, p0, Landroidx/media3/session/SessionTokenImplLegacy;->componentName:Landroid/content/ComponentName;

    .line 81
    iput-object p5, p0, Landroidx/media3/session/SessionTokenImplLegacy;->packageName:Ljava/lang/String;

    .line 82
    iput-object p6, p0, Landroidx/media3/session/SessionTokenImplLegacy;->extras:Landroid/os/Bundle;

    .line 83
    return-void
.end method

.method public constructor <init>(Landroidx/media3/session/legacy/MediaSessionCompat$Token;Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 8
    .param p1, "token"    # Landroidx/media3/session/legacy/MediaSessionCompat$Token;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "extras"    # Landroid/os/Bundle;

    .line 51
    nop

    .line 52
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroidx/media3/session/legacy/MediaSessionCompat$Token;

    .line 56
    invoke-static {p2}, Landroidx/media3/common/util/Assertions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 57
    invoke-static {p4}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/os/Bundle;

    .line 51
    const/16 v4, 0x64

    const/4 v5, 0x0

    move-object v1, p0

    move v3, p3

    invoke-direct/range {v1 .. v7}, Landroidx/media3/session/SessionTokenImplLegacy;-><init>(Landroidx/media3/session/legacy/MediaSessionCompat$Token;IILandroid/content/ComponentName;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 58
    return-void
.end method

.method public static fromBundle(Landroid/os/Bundle;)Landroidx/media3/session/SessionTokenImplLegacy;
    .locals 14
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 199
    sget-object v0, Landroidx/media3/session/SessionTokenImplLegacy;->FIELD_LEGACY_TOKEN:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 202
    .local v0, "legacyTokenBundle":Landroid/os/Bundle;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Landroidx/media3/session/legacy/MediaSessionCompat$Token;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/session/legacy/MediaSessionCompat$Token;

    move-result-object v1

    :goto_0
    move-object v3, v1

    .line 203
    .local v3, "legacyToken":Landroidx/media3/session/legacy/MediaSessionCompat$Token;
    sget-object v1, Landroidx/media3/session/SessionTokenImplLegacy;->FIELD_UID:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    const-string/jumbo v2, "uid should be set."

    invoke-static {v1, v2}, Landroidx/media3/common/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 204
    sget-object v1, Landroidx/media3/session/SessionTokenImplLegacy;->FIELD_UID:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 205
    .local v1, "uid":I
    sget-object v2, Landroidx/media3/session/SessionTokenImplLegacy;->FIELD_TYPE:Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    const-string/jumbo v4, "type should be set."

    invoke-static {v2, v4}, Landroidx/media3/common/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 206
    sget-object v2, Landroidx/media3/session/SessionTokenImplLegacy;->FIELD_TYPE:Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 207
    .local v9, "type":I
    sget-object v2, Landroidx/media3/session/SessionTokenImplLegacy;->FIELD_COMPONENT_NAME:Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/content/ComponentName;

    .line 208
    .local v10, "componentName":Landroid/content/ComponentName;
    sget-object v2, Landroidx/media3/session/SessionTokenImplLegacy;->FIELD_PACKAGE_NAME:Ljava/lang/String;

    .line 209
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "package name should be set."

    invoke-static {v2, v4}, Landroidx/media3/common/util/Assertions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 210
    .local v11, "packageName":Ljava/lang/String;
    sget-object v2, Landroidx/media3/session/SessionTokenImplLegacy;->FIELD_EXTRAS:Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v12

    .line 211
    .local v12, "extras":Landroid/os/Bundle;
    new-instance v13, Landroidx/media3/session/SessionTokenImplLegacy;

    .line 212
    if-nez v12, :cond_1

    sget-object v2, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    move-object v8, v2

    goto :goto_1

    :cond_1
    move-object v8, v12

    :goto_1
    move-object v2, v13

    move v4, v1

    move v5, v9

    move-object v6, v10

    move-object v7, v11

    invoke-direct/range {v2 .. v8}, Landroidx/media3/session/SessionTokenImplLegacy;-><init>(Landroidx/media3/session/legacy/MediaSessionCompat$Token;IILandroid/content/ComponentName;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 211
    return-object v13
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 92
    instance-of v0, p1, Landroidx/media3/session/SessionTokenImplLegacy;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 93
    return v1

    .line 95
    :cond_0
    move-object v0, p1

    check-cast v0, Landroidx/media3/session/SessionTokenImplLegacy;

    .line 96
    .local v0, "other":Landroidx/media3/session/SessionTokenImplLegacy;
    iget v2, p0, Landroidx/media3/session/SessionTokenImplLegacy;->type:I

    iget v3, v0, Landroidx/media3/session/SessionTokenImplLegacy;->type:I

    if-eq v2, v3, :cond_1

    .line 97
    return v1

    .line 99
    :cond_1
    iget v2, p0, Landroidx/media3/session/SessionTokenImplLegacy;->type:I

    packed-switch v2, :pswitch_data_0

    .line 105
    return v1

    .line 103
    :pswitch_0
    iget-object v1, p0, Landroidx/media3/session/SessionTokenImplLegacy;->componentName:Landroid/content/ComponentName;

    iget-object v2, v0, Landroidx/media3/session/SessionTokenImplLegacy;->componentName:Landroid/content/ComponentName;

    invoke-static {v1, v2}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 101
    :pswitch_1
    iget-object v1, p0, Landroidx/media3/session/SessionTokenImplLegacy;->legacyToken:Landroidx/media3/session/legacy/MediaSessionCompat$Token;

    iget-object v2, v0, Landroidx/media3/session/SessionTokenImplLegacy;->legacyToken:Landroidx/media3/session/legacy/MediaSessionCompat$Token;

    invoke-static {v1, v2}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getBinder()Ljava/lang/Object;
    .locals 1

    .line 169
    iget-object v0, p0, Landroidx/media3/session/SessionTokenImplLegacy;->legacyToken:Landroidx/media3/session/legacy/MediaSessionCompat$Token;

    return-object v0
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .locals 1

    .line 136
    iget-object v0, p0, Landroidx/media3/session/SessionTokenImplLegacy;->componentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 2

    .line 163
    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p0, Landroidx/media3/session/SessionTokenImplLegacy;->extras:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public getInterfaceVersion()I
    .locals 1

    .line 158
    const/4 v0, 0x0

    return v0
.end method

.method public getLibraryVersion()I
    .locals 1

    .line 153
    const/4 v0, 0x0

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 125
    iget-object v0, p0, Landroidx/media3/session/SessionTokenImplLegacy;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPlatformToken()Landroid/media/session/MediaSession$Token;
    .locals 1

    .line 175
    iget-object v0, p0, Landroidx/media3/session/SessionTokenImplLegacy;->legacyToken:Landroidx/media3/session/legacy/MediaSessionCompat$Token;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media3/session/SessionTokenImplLegacy;->legacyToken:Landroidx/media3/session/legacy/MediaSessionCompat$Token;

    invoke-virtual {v0}, Landroidx/media3/session/legacy/MediaSessionCompat$Token;->getToken()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession$Token;

    :goto_0
    return-object v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    .line 130
    iget-object v0, p0, Landroidx/media3/session/SessionTokenImplLegacy;->componentName:Landroid/content/ComponentName;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media3/session/SessionTokenImplLegacy;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getType()I
    .locals 2

    .line 142
    iget v0, p0, Landroidx/media3/session/SessionTokenImplLegacy;->type:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 148
    return v1

    .line 146
    :pswitch_0
    const/4 v0, 0x2

    return v0

    .line 144
    :pswitch_1
    return v1

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getUid()I
    .locals 1

    .line 120
    iget v0, p0, Landroidx/media3/session/SessionTokenImplLegacy;->uid:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 87
    iget v0, p0, Landroidx/media3/session/SessionTokenImplLegacy;->type:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/session/SessionTokenImplLegacy;->componentName:Landroid/content/ComponentName;

    iget-object v2, p0, Landroidx/media3/session/SessionTokenImplLegacy;->legacyToken:Landroidx/media3/session/legacy/MediaSessionCompat$Token;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isLegacySession()Z
    .locals 1

    .line 110
    const/4 v0, 0x1

    return v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 3

    .line 187
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 188
    .local v0, "bundle":Landroid/os/Bundle;
    sget-object v1, Landroidx/media3/session/SessionTokenImplLegacy;->FIELD_LEGACY_TOKEN:Ljava/lang/String;

    iget-object v2, p0, Landroidx/media3/session/SessionTokenImplLegacy;->legacyToken:Landroidx/media3/session/legacy/MediaSessionCompat$Token;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Landroidx/media3/session/SessionTokenImplLegacy;->legacyToken:Landroidx/media3/session/legacy/MediaSessionCompat$Token;

    invoke-virtual {v2}, Landroidx/media3/session/legacy/MediaSessionCompat$Token;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 189
    sget-object v1, Landroidx/media3/session/SessionTokenImplLegacy;->FIELD_UID:Ljava/lang/String;

    iget v2, p0, Landroidx/media3/session/SessionTokenImplLegacy;->uid:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 190
    sget-object v1, Landroidx/media3/session/SessionTokenImplLegacy;->FIELD_TYPE:Ljava/lang/String;

    iget v2, p0, Landroidx/media3/session/SessionTokenImplLegacy;->type:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 191
    sget-object v1, Landroidx/media3/session/SessionTokenImplLegacy;->FIELD_COMPONENT_NAME:Ljava/lang/String;

    iget-object v2, p0, Landroidx/media3/session/SessionTokenImplLegacy;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 192
    sget-object v1, Landroidx/media3/session/SessionTokenImplLegacy;->FIELD_PACKAGE_NAME:Ljava/lang/String;

    iget-object v2, p0, Landroidx/media3/session/SessionTokenImplLegacy;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    sget-object v1, Landroidx/media3/session/SessionTokenImplLegacy;->FIELD_EXTRAS:Ljava/lang/String;

    iget-object v2, p0, Landroidx/media3/session/SessionTokenImplLegacy;->extras:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 194
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SessionToken {legacy, uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/media3/session/SessionTokenImplLegacy;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
