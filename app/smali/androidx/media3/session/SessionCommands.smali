.class public final Landroidx/media3/session/SessionCommands;
.super Ljava/lang/Object;
.source "SessionCommands.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/session/SessionCommands$Builder;
    }
.end annotation


# static fields
.field public static final EMPTY:Landroidx/media3/session/SessionCommands;

.field private static final FIELD_SESSION_COMMANDS:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "SessionCommands"


# instance fields
.field public final commands:Lcom/google/common/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableSet<",
            "Landroidx/media3/session/SessionCommand;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 173
    new-instance v0, Landroidx/media3/session/SessionCommands$Builder;

    invoke-direct {v0}, Landroidx/media3/session/SessionCommands$Builder;-><init>()V

    invoke-virtual {v0}, Landroidx/media3/session/SessionCommands$Builder;->build()Landroidx/media3/session/SessionCommands;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/SessionCommands;->EMPTY:Landroidx/media3/session/SessionCommands;

    .line 242
    const/4 v0, 0x0

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/SessionCommands;->FIELD_SESSION_COMMANDS:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroidx/media3/session/SessionCommand;",
            ">;)V"
        }
    .end annotation

    .line 183
    .local p1, "sessionCommands":Ljava/util/Collection;, "Ljava/util/Collection<Landroidx/media3/session/SessionCommand;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    invoke-static {p1}, Lcom/google/common/collect/ImmutableSet;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/session/SessionCommands;->commands:Lcom/google/common/collect/ImmutableSet;

    .line 185
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Collection;Landroidx/media3/session/SessionCommands$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/util/Collection;
    .param p2, "x1"    # Landroidx/media3/session/SessionCommands$1;

    .line 38
    invoke-direct {p0, p1}, Landroidx/media3/session/SessionCommands;-><init>(Ljava/util/Collection;)V

    return-void
.end method

.method private static containsCommandCode(Ljava/util/Collection;I)Z
    .locals 3
    .param p1, "commandCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroidx/media3/session/SessionCommand;",
            ">;I)Z"
        }
    .end annotation

    .line 234
    .local p0, "commands":Ljava/util/Collection;, "Ljava/util/Collection<Landroidx/media3/session/SessionCommand;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/session/SessionCommand;

    .line 235
    .local v1, "command":Landroidx/media3/session/SessionCommand;
    iget v2, v1, Landroidx/media3/session/SessionCommand;->commandCode:I

    if-ne v2, p1, :cond_0

    .line 236
    const/4 v0, 0x1

    return v0

    .line 238
    .end local v1    # "command":Landroidx/media3/session/SessionCommand;
    :cond_0
    goto :goto_0

    .line 239
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static fromBundle(Landroid/os/Bundle;)Landroidx/media3/session/SessionCommands;
    .locals 4
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 259
    sget-object v0, Landroidx/media3/session/SessionCommands;->FIELD_SESSION_COMMANDS:Ljava/lang/String;

    .line 260
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 261
    .local v0, "sessionCommandBundleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    if-nez v0, :cond_0

    .line 262
    const-string v1, "SessionCommands"

    const-string v2, "Missing commands. Creating an empty SessionCommands"

    invoke-static {v1, v2}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    sget-object v1, Landroidx/media3/session/SessionCommands;->EMPTY:Landroidx/media3/session/SessionCommands;

    return-object v1

    .line 266
    :cond_0
    new-instance v1, Landroidx/media3/session/SessionCommands$Builder;

    invoke-direct {v1}, Landroidx/media3/session/SessionCommands$Builder;-><init>()V

    .line 267
    .local v1, "builder":Landroidx/media3/session/SessionCommands$Builder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 268
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    invoke-static {v3}, Landroidx/media3/session/SessionCommand;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/session/SessionCommand;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroidx/media3/session/SessionCommands$Builder;->add(Landroidx/media3/session/SessionCommand;)Landroidx/media3/session/SessionCommands$Builder;

    .line 267
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 270
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {v1}, Landroidx/media3/session/SessionCommands$Builder;->build()Landroidx/media3/session/SessionCommands;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public buildUpon()Landroidx/media3/session/SessionCommands$Builder;
    .locals 2

    .line 211
    new-instance v0, Landroidx/media3/session/SessionCommands$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/media3/session/SessionCommands$Builder;-><init>(Landroidx/media3/session/SessionCommands;Landroidx/media3/session/SessionCommands$1;)V

    return-object v0
.end method

.method public contains(I)Z
    .locals 2
    .param p1, "commandCode"    # I

    .line 205
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Use contains(Command) for custom command"

    invoke-static {v0, v1}, Landroidx/media3/common/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 206
    iget-object v0, p0, Landroidx/media3/session/SessionCommands;->commands:Lcom/google/common/collect/ImmutableSet;

    invoke-static {v0, p1}, Landroidx/media3/session/SessionCommands;->containsCommandCode(Ljava/util/Collection;I)Z

    move-result v0

    return v0
.end method

.method public contains(Landroidx/media3/session/SessionCommand;)Z
    .locals 2
    .param p1, "command"    # Landroidx/media3/session/SessionCommand;

    .line 194
    iget-object v0, p0, Landroidx/media3/session/SessionCommands;->commands:Lcom/google/common/collect/ImmutableSet;

    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 216
    if-ne p0, p1, :cond_0

    .line 217
    const/4 v0, 0x1

    return v0

    .line 219
    :cond_0
    instance-of v0, p1, Landroidx/media3/session/SessionCommands;

    if-nez v0, :cond_1

    .line 220
    const/4 v0, 0x0

    return v0

    .line 223
    :cond_1
    move-object v0, p1

    check-cast v0, Landroidx/media3/session/SessionCommands;

    .line 224
    .local v0, "that":Landroidx/media3/session/SessionCommands;
    iget-object v1, p0, Landroidx/media3/session/SessionCommands;->commands:Lcom/google/common/collect/ImmutableSet;

    iget-object v2, v0, Landroidx/media3/session/SessionCommands;->commands:Lcom/google/common/collect/ImmutableSet;

    invoke-virtual {v1, v2}, Lcom/google/common/collect/ImmutableSet;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public hashCode()I
    .locals 1

    .line 229
    iget-object v0, p0, Landroidx/media3/session/SessionCommands;->commands:Lcom/google/common/collect/ImmutableSet;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/util/ObjectsCompat;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 5

    .line 246
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 247
    .local v0, "bundle":Landroid/os/Bundle;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 248
    .local v1, "sessionCommandBundleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    iget-object v2, p0, Landroidx/media3/session/SessionCommands;->commands:Lcom/google/common/collect/ImmutableSet;

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableSet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/session/SessionCommand;

    .line 249
    .local v3, "command":Landroidx/media3/session/SessionCommand;
    invoke-virtual {v3}, Landroidx/media3/session/SessionCommand;->toBundle()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    .end local v3    # "command":Landroidx/media3/session/SessionCommand;
    goto :goto_0

    .line 251
    :cond_0
    sget-object v2, Landroidx/media3/session/SessionCommands;->FIELD_SESSION_COMMANDS:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 252
    return-object v0
.end method
