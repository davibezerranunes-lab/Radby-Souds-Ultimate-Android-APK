.class public final Landroidx/media3/session/CommandButton$Builder;
.super Ljava/lang/Object;
.source "CommandButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/session/CommandButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private displayName:Ljava/lang/CharSequence;

.field private enabled:Z

.field private extras:Landroid/os/Bundle;

.field private final icon:I

.field private iconResId:I

.field private iconUri:Landroid/net/Uri;

.field private playerCommand:I

.field private sessionCommand:Landroidx/media3/session/SessionCommand;

.field private slots:Lcom/google/common/primitives/ImmutableIntArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 484
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/media3/session/CommandButton$Builder;-><init>(I)V

    .line 485
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "icon"    # I

    .line 494
    invoke-static {p1}, Landroidx/media3/session/CommandButton;->getIconResIdForIconConstant(I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroidx/media3/session/CommandButton$Builder;-><init>(II)V

    .line 495
    return-void
.end method

.method constructor <init>(II)V
    .locals 1
    .param p1, "icon"    # I
    .param p2, "iconResId"    # I

    .line 500
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 501
    iput p1, p0, Landroidx/media3/session/CommandButton$Builder;->icon:I

    .line 502
    iput p2, p0, Landroidx/media3/session/CommandButton$Builder;->iconResId:I

    .line 503
    const-string v0, ""

    iput-object v0, p0, Landroidx/media3/session/CommandButton$Builder;->displayName:Ljava/lang/CharSequence;

    .line 504
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    iput-object v0, p0, Landroidx/media3/session/CommandButton$Builder;->extras:Landroid/os/Bundle;

    .line 505
    const/4 v0, -0x1

    iput v0, p0, Landroidx/media3/session/CommandButton$Builder;->playerCommand:I

    .line 506
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/session/CommandButton$Builder;->enabled:Z

    .line 507
    return-void
.end method


# virtual methods
.method public build()Landroidx/media3/session/CommandButton;
    .locals 12

    .line 684
    iget-object v0, p0, Landroidx/media3/session/CommandButton$Builder;->sessionCommand:Landroidx/media3/session/SessionCommand;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget v3, p0, Landroidx/media3/session/CommandButton$Builder;->playerCommand:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    if-eq v0, v3, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    const-string v0, "Exactly one of sessionCommand and playerCommand should be set"

    invoke-static {v1, v0}, Landroidx/media3/common/util/Assertions;->checkState(ZLjava/lang/Object;)V

    .line 687
    iget-object v0, p0, Landroidx/media3/session/CommandButton$Builder;->slots:Lcom/google/common/primitives/ImmutableIntArray;

    if-nez v0, :cond_3

    .line 688
    iget v0, p0, Landroidx/media3/session/CommandButton$Builder;->playerCommand:I

    iget v1, p0, Landroidx/media3/session/CommandButton$Builder;->icon:I

    invoke-static {v0, v1}, Landroidx/media3/session/CommandButton;->getDefaultSlot(II)I

    move-result v0

    invoke-static {v0}, Lcom/google/common/primitives/ImmutableIntArray;->of(I)Lcom/google/common/primitives/ImmutableIntArray;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/session/CommandButton$Builder;->slots:Lcom/google/common/primitives/ImmutableIntArray;

    .line 690
    :cond_3
    new-instance v0, Landroidx/media3/session/CommandButton;

    iget-object v2, p0, Landroidx/media3/session/CommandButton$Builder;->sessionCommand:Landroidx/media3/session/SessionCommand;

    iget v3, p0, Landroidx/media3/session/CommandButton$Builder;->playerCommand:I

    iget v4, p0, Landroidx/media3/session/CommandButton$Builder;->icon:I

    iget v5, p0, Landroidx/media3/session/CommandButton$Builder;->iconResId:I

    iget-object v6, p0, Landroidx/media3/session/CommandButton$Builder;->iconUri:Landroid/net/Uri;

    iget-object v7, p0, Landroidx/media3/session/CommandButton$Builder;->displayName:Ljava/lang/CharSequence;

    iget-object v8, p0, Landroidx/media3/session/CommandButton$Builder;->extras:Landroid/os/Bundle;

    iget-boolean v9, p0, Landroidx/media3/session/CommandButton$Builder;->enabled:Z

    iget-object v10, p0, Landroidx/media3/session/CommandButton$Builder;->slots:Lcom/google/common/primitives/ImmutableIntArray;

    const/4 v11, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v11}, Landroidx/media3/session/CommandButton;-><init>(Landroidx/media3/session/SessionCommand;IIILandroid/net/Uri;Ljava/lang/CharSequence;Landroid/os/Bundle;ZLcom/google/common/primitives/ImmutableIntArray;Landroidx/media3/session/CommandButton$1;)V

    return-object v0
.end method

.method public setCustomIconResId(I)Landroidx/media3/session/CommandButton$Builder;
    .locals 0
    .param p1, "resId"    # I

    .line 574
    iput p1, p0, Landroidx/media3/session/CommandButton$Builder;->iconResId:I

    .line 575
    return-object p0
.end method

.method public setDisplayName(Ljava/lang/CharSequence;)Landroidx/media3/session/CommandButton$Builder;
    .locals 0
    .param p1, "displayName"    # Ljava/lang/CharSequence;

    .line 609
    iput-object p1, p0, Landroidx/media3/session/CommandButton$Builder;->displayName:Ljava/lang/CharSequence;

    .line 610
    return-object p0
.end method

.method public setEnabled(Z)Landroidx/media3/session/CommandButton$Builder;
    .locals 0
    .param p1, "enabled"    # Z

    .line 627
    iput-boolean p1, p0, Landroidx/media3/session/CommandButton$Builder;->enabled:Z

    .line 628
    return-object p0
.end method

.method public setExtras(Landroid/os/Bundle;)Landroidx/media3/session/CommandButton$Builder;
    .locals 1
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 639
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Landroidx/media3/session/CommandButton$Builder;->extras:Landroid/os/Bundle;

    .line 640
    return-object p0
.end method

.method public setIconResId(I)Landroidx/media3/session/CommandButton$Builder;
    .locals 1
    .param p1, "resId"    # I

    .line 559
    invoke-virtual {p0, p1}, Landroidx/media3/session/CommandButton$Builder;->setCustomIconResId(I)Landroidx/media3/session/CommandButton$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setIconUri(Landroid/net/Uri;)Landroidx/media3/session/CommandButton$Builder;
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .line 593
    nop

    .line 594
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 595
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.resource"

    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 593
    :goto_1
    const-string v1, "Only content or resource Uris are supported for CommandButton"

    invoke-static {v0, v1}, Landroidx/media3/common/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 597
    iput-object p1, p0, Landroidx/media3/session/CommandButton$Builder;->iconUri:Landroid/net/Uri;

    .line 598
    return-object p0
.end method

.method public setPlayerCommand(I)Landroidx/media3/session/CommandButton$Builder;
    .locals 2
    .param p1, "playerCommand"    # I

    .line 541
    iget-object v0, p0, Landroidx/media3/session/CommandButton$Builder;->sessionCommand:Landroidx/media3/session/SessionCommand;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string/jumbo v1, "sessionCommand is already set. Only one of sessionCommand and playerCommand should be set."

    invoke-static {v0, v1}, Landroidx/media3/common/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 545
    iput p1, p0, Landroidx/media3/session/CommandButton$Builder;->playerCommand:I

    .line 546
    return-object p0
.end method

.method public setSessionCommand(Landroidx/media3/session/SessionCommand;)Landroidx/media3/session/CommandButton$Builder;
    .locals 2
    .param p1, "sessionCommand"    # Landroidx/media3/session/SessionCommand;

    .line 520
    const-string/jumbo v0, "sessionCommand should not be null."

    invoke-static {p1, v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    iget v0, p0, Landroidx/media3/session/CommandButton$Builder;->playerCommand:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string/jumbo v1, "playerCommands is already set. Only one of sessionCommand and playerCommand should be set."

    invoke-static {v0, v1}, Landroidx/media3/common/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 525
    iput-object p1, p0, Landroidx/media3/session/CommandButton$Builder;->sessionCommand:Landroidx/media3/session/SessionCommand;

    .line 526
    return-object p0
.end method

.method public varargs setSlots([I)Landroidx/media3/session/CommandButton$Builder;
    .locals 1
    .param p1, "slots"    # [I

    .line 677
    array-length v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    .line 678
    invoke-static {p1}, Lcom/google/common/primitives/ImmutableIntArray;->copyOf([I)Lcom/google/common/primitives/ImmutableIntArray;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/session/CommandButton$Builder;->slots:Lcom/google/common/primitives/ImmutableIntArray;

    .line 679
    return-object p0
.end method
