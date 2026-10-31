.class public final Landroidx/media3/session/CommandButton;
.super Ljava/lang/Object;
.source "CommandButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/session/CommandButton$Builder;,
        Landroidx/media3/session/CommandButton$Slot;,
        Landroidx/media3/session/CommandButton$Icon;
    }
.end annotation


# static fields
.field private static final FIELD_DISPLAY_NAME:Ljava/lang/String;

.field private static final FIELD_ENABLED:Ljava/lang/String;

.field private static final FIELD_EXTRAS:Ljava/lang/String;

.field private static final FIELD_ICON:Ljava/lang/String;

.field private static final FIELD_ICON_RES_ID:Ljava/lang/String;

.field private static final FIELD_ICON_URI:Ljava/lang/String;

.field private static final FIELD_PLAYER_COMMAND:Ljava/lang/String;

.field private static final FIELD_SESSION_COMMAND:Ljava/lang/String;

.field private static final FIELD_SLOTS:Ljava/lang/String;

.field public static final ICON_ALBUM:I = 0xe019

.field public static final ICON_ARTIST:I = 0xe01a

.field public static final ICON_BLOCK:I = 0xe14b

.field public static final ICON_BOOKMARK_FILLED:I = 0xfe866

.field public static final ICON_BOOKMARK_UNFILLED:I = 0xe866

.field public static final ICON_CHECK_CIRCLE_FILLED:I = 0xfe86c

.field public static final ICON_CHECK_CIRCLE_UNFILLED:I = 0xe86c

.field public static final ICON_CLOSED_CAPTIONS:I = 0xe01c

.field public static final ICON_CLOSED_CAPTIONS_OFF:I = 0xf1dc

.field public static final ICON_FAST_FORWARD:I = 0xe01f

.field public static final ICON_FEED:I = 0xe0e5

.field public static final ICON_FLAG_FILLED:I = 0xfe153

.field public static final ICON_FLAG_UNFILLED:I = 0xe153

.field public static final ICON_HEART_FILLED:I = 0xfe87d

.field public static final ICON_HEART_UNFILLED:I = 0xe87d

.field public static final ICON_MINUS:I = 0xe15b

.field public static final ICON_MINUS_CIRCLE_FILLED:I = 0xfe148

.field public static final ICON_MINUS_CIRCLE_UNFILLED:I = 0xfe149

.field public static final ICON_NEXT:I = 0xe044

.field public static final ICON_PAUSE:I = 0xe034

.field public static final ICON_PLAY:I = 0xe037

.field public static final ICON_PLAYBACK_SPEED:I = 0xe068

.field public static final ICON_PLAYBACK_SPEED_0_5:I = 0xf4e2

.field public static final ICON_PLAYBACK_SPEED_0_8:I = 0xff4e2

.field public static final ICON_PLAYBACK_SPEED_1_0:I = 0xefcd

.field public static final ICON_PLAYBACK_SPEED_1_2:I = 0xf4e1

.field public static final ICON_PLAYBACK_SPEED_1_5:I = 0xf4e0

.field public static final ICON_PLAYBACK_SPEED_1_8:I = 0xff4e0

.field public static final ICON_PLAYBACK_SPEED_2_0:I = 0xf4eb

.field public static final ICON_PLAYLIST_ADD:I = 0xe03b

.field public static final ICON_PLAYLIST_REMOVE:I = 0xeb80

.field public static final ICON_PLUS:I = 0xe145

.field public static final ICON_PLUS_CIRCLE_FILLED:I = 0xfe147

.field public static final ICON_PLUS_CIRCLE_UNFILLED:I = 0xe147

.field public static final ICON_PREVIOUS:I = 0xe045

.field public static final ICON_QUALITY:I = 0xe429

.field public static final ICON_QUEUE_ADD:I = 0xe05c

.field public static final ICON_QUEUE_NEXT:I = 0xe066

.field public static final ICON_QUEUE_REMOVE:I = 0xe067

.field public static final ICON_RADIO:I = 0xe51e

.field public static final ICON_REPEAT_ALL:I = 0xe040

.field public static final ICON_REPEAT_OFF:I = 0xfe040

.field public static final ICON_REPEAT_ONE:I = 0xe041

.field public static final ICON_REWIND:I = 0xe020

.field public static final ICON_SETTINGS:I = 0xe8b8

.field public static final ICON_SHARE:I = 0xe80d

.field public static final ICON_SHUFFLE_OFF:I = 0xfe044

.field public static final ICON_SHUFFLE_ON:I = 0xe043

.field public static final ICON_SHUFFLE_STAR:I = 0xfe043

.field public static final ICON_SIGNAL:I = 0xf048

.field public static final ICON_SKIP_BACK:I = 0xe042

.field public static final ICON_SKIP_BACK_10:I = 0xe059

.field public static final ICON_SKIP_BACK_15:I = 0xfe059

.field public static final ICON_SKIP_BACK_30:I = 0xe05a

.field public static final ICON_SKIP_BACK_5:I = 0xe05b

.field public static final ICON_SKIP_FORWARD:I = 0xf6f4

.field public static final ICON_SKIP_FORWARD_10:I = 0xe056

.field public static final ICON_SKIP_FORWARD_15:I = 0xfe056

.field public static final ICON_SKIP_FORWARD_30:I = 0xe057

.field public static final ICON_SKIP_FORWARD_5:I = 0xe058

.field public static final ICON_STAR_FILLED:I = 0xfe838

.field public static final ICON_STAR_UNFILLED:I = 0xe838

.field public static final ICON_STOP:I = 0xe047

.field public static final ICON_SUBTITLES:I = 0xe048

.field public static final ICON_SUBTITLES_OFF:I = 0xef72

.field public static final ICON_SYNC:I = 0xe627

.field public static final ICON_THUMB_DOWN_FILLED:I = 0xfe8db

.field public static final ICON_THUMB_DOWN_UNFILLED:I = 0xe8db

.field public static final ICON_THUMB_UP_FILLED:I = 0xfe8dc

.field public static final ICON_THUMB_UP_UNFILLED:I = 0xe8dc

.field public static final ICON_UNDEFINED:I = 0x0

.field public static final ICON_VOLUME_DOWN:I = 0xe04d

.field public static final ICON_VOLUME_OFF:I = 0xe04f

.field public static final ICON_VOLUME_UP:I = 0xe050

.field public static final SLOT_BACK:I = 0x2

.field public static final SLOT_BACK_SECONDARY:I = 0x4

.field public static final SLOT_CENTRAL:I = 0x1

.field public static final SLOT_FORWARD:I = 0x3

.field public static final SLOT_FORWARD_SECONDARY:I = 0x5

.field public static final SLOT_OVERFLOW:I = 0x6


# instance fields
.field public final displayName:Ljava/lang/CharSequence;

.field public final extras:Landroid/os/Bundle;

.field public final icon:I

.field public final iconResId:I

.field public final iconUri:Landroid/net/Uri;

.field public final isEnabled:Z

.field public final playerCommand:I

.field public final sessionCommand:Landroidx/media3/session/SessionCommand;

.field public final slots:Lcom/google/common/primitives/ImmutableIntArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 877
    const/4 v0, 0x0

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/CommandButton;->FIELD_SESSION_COMMAND:Ljava/lang/String;

    .line 878
    const/4 v0, 0x1

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/CommandButton;->FIELD_PLAYER_COMMAND:Ljava/lang/String;

    .line 879
    const/4 v0, 0x2

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/CommandButton;->FIELD_ICON_RES_ID:Ljava/lang/String;

    .line 880
    const/4 v0, 0x3

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/CommandButton;->FIELD_DISPLAY_NAME:Ljava/lang/String;

    .line 881
    const/4 v0, 0x4

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/CommandButton;->FIELD_EXTRAS:Ljava/lang/String;

    .line 882
    const/4 v0, 0x5

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/CommandButton;->FIELD_ENABLED:Ljava/lang/String;

    .line 883
    const/4 v0, 0x6

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/CommandButton;->FIELD_ICON_URI:Ljava/lang/String;

    .line 884
    const/4 v0, 0x7

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/CommandButton;->FIELD_ICON:Ljava/lang/String;

    .line 885
    const/16 v0, 0x8

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/CommandButton;->FIELD_SLOTS:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroidx/media3/session/SessionCommand;IIILandroid/net/Uri;Ljava/lang/CharSequence;Landroid/os/Bundle;ZLcom/google/common/primitives/ImmutableIntArray;)V
    .locals 1
    .param p1, "sessionCommand"    # Landroidx/media3/session/SessionCommand;
    .param p2, "playerCommand"    # I
    .param p3, "icon"    # I
    .param p4, "iconResId"    # I
    .param p5, "iconUri"    # Landroid/net/Uri;
    .param p6, "displayName"    # Ljava/lang/CharSequence;
    .param p7, "extras"    # Landroid/os/Bundle;
    .param p8, "enabled"    # Z
    .param p9, "slots"    # Lcom/google/common/primitives/ImmutableIntArray;

    .line 782
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 783
    iput-object p1, p0, Landroidx/media3/session/CommandButton;->sessionCommand:Landroidx/media3/session/SessionCommand;

    .line 784
    iput p2, p0, Landroidx/media3/session/CommandButton;->playerCommand:I

    .line 785
    iput p3, p0, Landroidx/media3/session/CommandButton;->icon:I

    .line 786
    iput p4, p0, Landroidx/media3/session/CommandButton;->iconResId:I

    .line 787
    iput-object p5, p0, Landroidx/media3/session/CommandButton;->iconUri:Landroid/net/Uri;

    .line 788
    iput-object p6, p0, Landroidx/media3/session/CommandButton;->displayName:Ljava/lang/CharSequence;

    .line 789
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p7}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Landroidx/media3/session/CommandButton;->extras:Landroid/os/Bundle;

    .line 790
    iput-boolean p8, p0, Landroidx/media3/session/CommandButton;->isEnabled:Z

    .line 791
    iput-object p9, p0, Landroidx/media3/session/CommandButton;->slots:Lcom/google/common/primitives/ImmutableIntArray;

    .line 792
    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/session/SessionCommand;IIILandroid/net/Uri;Ljava/lang/CharSequence;Landroid/os/Bundle;ZLcom/google/common/primitives/ImmutableIntArray;Landroidx/media3/session/CommandButton$1;)V
    .locals 0
    .param p1, "x0"    # Landroidx/media3/session/SessionCommand;
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # Landroid/net/Uri;
    .param p6, "x5"    # Ljava/lang/CharSequence;
    .param p7, "x6"    # Landroid/os/Bundle;
    .param p8, "x7"    # Z
    .param p9, "x8"    # Lcom/google/common/primitives/ImmutableIntArray;
    .param p10, "x9"    # Landroidx/media3/session/CommandButton$1;

    .line 51
    invoke-direct/range {p0 .. p9}, Landroidx/media3/session/CommandButton;-><init>(Landroidx/media3/session/SessionCommand;IIILandroid/net/Uri;Ljava/lang/CharSequence;Landroid/os/Bundle;ZLcom/google/common/primitives/ImmutableIntArray;)V

    return-void
.end method

.method static copyWithUnavailableButtonsDisabled(Ljava/util/List;Landroidx/media3/session/SessionCommands;Landroidx/media3/common/Player$Commands;)Lcom/google/common/collect/ImmutableList;
    .locals 4
    .param p1, "sessionCommands"    # Landroidx/media3/session/SessionCommands;
    .param p2, "playerCommands"    # Landroidx/media3/common/Player$Commands;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/session/CommandButton;",
            ">;",
            "Landroidx/media3/session/SessionCommands;",
            "Landroidx/media3/common/Player$Commands;",
            ")",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/session/CommandButton;",
            ">;"
        }
    .end annotation

    .line 849
    .local p0, "commandButtons":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/session/CommandButton;>;"
    new-instance v0, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    .line 850
    .local v0, "updatedButtons":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Landroidx/media3/session/CommandButton;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 851
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/session/CommandButton;

    .line 852
    .local v2, "button":Landroidx/media3/session/CommandButton;
    invoke-static {v2, p1, p2}, Landroidx/media3/session/CommandButton;->isButtonCommandAvailable(Landroidx/media3/session/CommandButton;Landroidx/media3/session/SessionCommands;Landroidx/media3/common/Player$Commands;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 853
    invoke-virtual {v0, v2}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto :goto_1

    .line 855
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroidx/media3/session/CommandButton;->copyWithIsEnabled(Z)Landroidx/media3/session/CommandButton;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 850
    .end local v2    # "button":Landroidx/media3/session/CommandButton;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 858
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    return-object v1
.end method

.method public static fromBundle(Landroid/os/Bundle;)Landroidx/media3/session/CommandButton;
    .locals 1
    .param p0, "bundle"    # Landroid/os/Bundle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 926
    const/4 v0, 0x4

    invoke-static {p0, v0}, Landroidx/media3/session/CommandButton;->fromBundle(Landroid/os/Bundle;I)Landroidx/media3/session/CommandButton;

    move-result-object v0

    return-object v0
.end method

.method public static fromBundle(Landroid/os/Bundle;I)Landroidx/media3/session/CommandButton;
    .locals 17
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "sessionInterfaceVersion"    # I

    .line 932
    move-object/from16 v0, p0

    sget-object v1, Landroidx/media3/session/CommandButton;->FIELD_SESSION_COMMAND:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 935
    .local v1, "sessionCommandBundle":Landroid/os/Bundle;
    if-nez v1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v1}, Landroidx/media3/session/SessionCommand;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/session/SessionCommand;

    move-result-object v2

    .line 937
    .local v2, "sessionCommand":Landroidx/media3/session/SessionCommand;
    :goto_0
    sget-object v3, Landroidx/media3/session/CommandButton;->FIELD_PLAYER_COMMAND:Ljava/lang/String;

    .line 938
    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 939
    .local v3, "playerCommand":I
    sget-object v5, Landroidx/media3/session/CommandButton;->FIELD_ICON_RES_ID:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 940
    .local v5, "iconResId":I
    sget-object v7, Landroidx/media3/session/CommandButton;->FIELD_DISPLAY_NAME:Ljava/lang/String;

    const-string v8, ""

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 941
    .local v7, "displayName":Ljava/lang/CharSequence;
    sget-object v8, Landroidx/media3/session/CommandButton;->FIELD_EXTRAS:Ljava/lang/String;

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    .line 944
    .local v8, "extras":Landroid/os/Bundle;
    const/4 v9, 0x3

    const/4 v10, 0x1

    move/from16 v11, p1

    if-lt v11, v9, :cond_2

    sget-object v9, Landroidx/media3/session/CommandButton;->FIELD_ENABLED:Ljava/lang/String;

    .line 945
    invoke-virtual {v0, v9, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_1

    goto :goto_1

    :cond_1
    move v9, v6

    goto :goto_2

    :cond_2
    :goto_1
    move v9, v10

    .line 946
    .local v9, "enabled":Z
    :goto_2
    sget-object v12, Landroidx/media3/session/CommandButton;->FIELD_ICON_URI:Ljava/lang/String;

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v12

    check-cast v12, Landroid/net/Uri;

    .line 947
    .local v12, "iconUri":Landroid/net/Uri;
    sget-object v13, Landroidx/media3/session/CommandButton;->FIELD_ICON:Ljava/lang/String;

    invoke-virtual {v0, v13, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v13

    .line 950
    .local v13, "icon":I
    sget-object v14, Landroidx/media3/session/CommandButton;->FIELD_SLOTS:Ljava/lang/String;

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v14

    .line 951
    .local v14, "slots":[I
    new-instance v15, Landroidx/media3/session/CommandButton$Builder;

    invoke-direct {v15, v13, v5}, Landroidx/media3/session/CommandButton$Builder;-><init>(II)V

    .line 952
    .local v15, "builder":Landroidx/media3/session/CommandButton$Builder;
    if-eqz v2, :cond_3

    .line 953
    invoke-virtual {v15, v2}, Landroidx/media3/session/CommandButton$Builder;->setSessionCommand(Landroidx/media3/session/SessionCommand;)Landroidx/media3/session/CommandButton$Builder;

    .line 955
    :cond_3
    if-eq v3, v4, :cond_4

    .line 956
    invoke-virtual {v15, v3}, Landroidx/media3/session/CommandButton$Builder;->setPlayerCommand(I)Landroidx/media3/session/CommandButton$Builder;

    .line 958
    :cond_4
    if-eqz v12, :cond_6

    .line 959
    invoke-virtual {v12}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    const-string v6, "content"

    invoke-static {v4, v6}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 960
    invoke-virtual {v12}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    const-string v6, "android.resource"

    invoke-static {v4, v6}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 961
    :cond_5
    invoke-virtual {v15, v12}, Landroidx/media3/session/CommandButton$Builder;->setIconUri(Landroid/net/Uri;)Landroidx/media3/session/CommandButton$Builder;

    .line 963
    :cond_6
    nop

    .line 964
    invoke-virtual {v15, v7}, Landroidx/media3/session/CommandButton$Builder;->setDisplayName(Ljava/lang/CharSequence;)Landroidx/media3/session/CommandButton$Builder;

    move-result-object v4

    .line 965
    if-nez v8, :cond_7

    sget-object v6, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    goto :goto_3

    :cond_7
    move-object v6, v8

    :goto_3
    invoke-virtual {v4, v6}, Landroidx/media3/session/CommandButton$Builder;->setExtras(Landroid/os/Bundle;)Landroidx/media3/session/CommandButton$Builder;

    move-result-object v4

    .line 966
    invoke-virtual {v4, v9}, Landroidx/media3/session/CommandButton$Builder;->setEnabled(Z)Landroidx/media3/session/CommandButton$Builder;

    move-result-object v4

    .line 967
    if-nez v14, :cond_8

    new-array v6, v10, [I

    const/4 v10, 0x6

    const/16 v16, 0x0

    aput v10, v6, v16

    goto :goto_4

    :cond_8
    move-object v6, v14

    :goto_4
    invoke-virtual {v4, v6}, Landroidx/media3/session/CommandButton$Builder;->setSlots([I)Landroidx/media3/session/CommandButton$Builder;

    move-result-object v4

    .line 968
    invoke-virtual {v4}, Landroidx/media3/session/CommandButton$Builder;->build()Landroidx/media3/session/CommandButton;

    move-result-object v4

    .line 963
    return-object v4
.end method

.method public static getDefaultSlot(II)I
    .locals 2
    .param p0, "playerCommand"    # I
    .param p1, "icon"    # I

    .line 1141
    const/4 v0, 0x1

    if-eq p0, v0, :cond_5

    const v1, 0xe037

    if-eq p1, v1, :cond_5

    const v1, 0xe034

    if-ne p1, v1, :cond_0

    goto :goto_2

    .line 1143
    :cond_0
    const/16 v0, 0xb

    if-eq p0, v0, :cond_4

    const/4 v0, 0x7

    if-eq p0, v0, :cond_4

    const/4 v0, 0x6

    if-eq p0, v0, :cond_4

    const v1, 0xe045

    if-eq p1, v1, :cond_4

    const v1, 0xe020

    if-eq p1, v1, :cond_4

    const v1, 0xe042

    if-eq p1, v1, :cond_4

    const v1, 0xe05b

    if-eq p1, v1, :cond_4

    const v1, 0xe059

    if-eq p1, v1, :cond_4

    const v1, 0xfe059

    if-eq p1, v1, :cond_4

    const v1, 0xe05a

    if-ne p1, v1, :cond_1

    goto :goto_1

    .line 1154
    :cond_1
    const/16 v1, 0xc

    if-eq p0, v1, :cond_3

    const/16 v1, 0x9

    if-eq p0, v1, :cond_3

    const/16 v1, 0x8

    if-eq p0, v1, :cond_3

    const v1, 0xe044

    if-eq p1, v1, :cond_3

    const v1, 0xe01f

    if-eq p1, v1, :cond_3

    const v1, 0xf6f4

    if-eq p1, v1, :cond_3

    const v1, 0xe058

    if-eq p1, v1, :cond_3

    const v1, 0xe056

    if-eq p1, v1, :cond_3

    const v1, 0xfe056

    if-eq p1, v1, :cond_3

    const v1, 0xe057

    if-ne p1, v1, :cond_2

    goto :goto_0

    .line 1166
    :cond_2
    return v0

    .line 1164
    :cond_3
    :goto_0
    const/4 v0, 0x3

    return v0

    .line 1153
    :cond_4
    :goto_1
    const/4 v0, 0x2

    return v0

    .line 1142
    :cond_5
    :goto_2
    return v0
.end method

.method public static getIconResIdForIconConstant(I)I
    .locals 1
    .param p0, "icon"    # I

    .line 980
    sparse-switch p0, :sswitch_data_0

    .line 1128
    const/4 v0, 0x0

    return v0

    .line 1084
    :sswitch_0
    sget v0, Landroidx/media3/session/R$drawable;->media3_icon_playback_speed_0_8:I

    return v0

    .line 1092
    :sswitch_1
    sget v0, Landroidx/media3/session/R$drawable;->media3_icon_playback_speed_1_8:I

    return v0

    .line 1040
    :sswitch_2
    sget v0, Landroidx/media3/session/R$drawable;->media3_icon_thumb_up_filled:I

    return v0

    .line 1044
    :sswitch_3
    sget v0, Landroidx/media3/session/R$drawable;->media3_icon_thumb_down_filled:I

    return v0

    .line 1028
    :sswitch_4
    sget v0, Landroidx/media3/session/R$drawable;->media3_icon_heart_filled:I

    return v0

    .line 1076
    :sswitch_5
    sget v0, Landroidx/media3/session/R$drawable;->media3_icon_check_circle_filled:I

    return v0

    .line 1036
    :sswitch_6
    sget v0, Landroidx/media3/session/R$drawable;->media3_icon_bookmark_filled:I

    return v0

    .line 1032
    :sswitch_7
    sget v0, Landroidx/media3/session/R$drawable;->media3_icon_star_filled:I

    return v0

    .line 1048
    :sswitch_8
    sget v0, Landroidx/media3/session/R$drawable;->media3_icon_flag_filled:I

    return v0

    .line 1074
    :sswitch_9
    sget v0, Landroidx/media3/session/R$drawable;->media3_icon_minus_circle_unfilled:I

    return v0

    .line 1072
    :sswitch_a
    sget v0, Landroidx/media3/session/R$drawable;->media3_icon_minus_circle_filled:I

    return v0

    .line 1068
    :sswitch_b
    sget v0, Landroidx/media3/session/R$drawable;->media3_icon_plus_circle_filled:I

    return v0

    .line 1008
    :sswitch_c
    sget v0, Landroidx/media3/session/R$drawable;->media3_icon_skip_back_15:I

    return v0

    .line 998
    :sswitch_d
    sget v0, Landroidx/media3/session/R$drawable;->media3_icon_skip_forward_15:I

    return v0

    .line 1024
    :sswitch_e
    sget v0, Landroidx/media3/session/R$drawable;->media3_icon_shuffle_off:I

    return v0

    .line 1026
    :sswitch_f
    sget v0, Landroidx/media3/session/R$drawable;->media3_icon_shuffle_star:I

    return v0

    .line 1020
    :sswitch_10
    sget v0, Landroidx/media3/session/R$drawable;->media3_icon_repeat_off:I

    return v0

    .line 992
    :sswitch_11
    sget v0, Landroidx/media3/session/R$drawable;->media3_icon_skip_forward:I

    return v0

    .line 1094
    :sswitch_12
    sget v0, Landroidx/media3/session/R$drawable;->media3_icon_playback_speed_2_0:I

    return v0

    .line 1082
    :sswitch_13
    sget v0, Landroidx/media3/session/R$drawable;->media3_icon_playback_speed_0_5:I

    return v0

    .line 1088
    :sswitch_14
    sget v0, Landroidx/media3/session/R$drawable;->media3_icon_playback_speed_1_2:I

    return v0

    .line 1090
    :sswitch_15
    sget v0, Landroidx/media3/session/R$drawable;->media3_icon_playback_speed_1_5:I

    return v0

    .line 1106
    :sswitch_16
    sget v0, Landroidx/media3/session/R$drawable;->media3_icon_closed_captions_off:I

    return v0

    .line 1124
    :sswitch_17
    sget v0, Landroidx/media3/session/R$drawable;->media3_icon_signal:I

    return v0

    .line 1086
    :sswitch_18
    sget v0, Landroidx/media3/session/R$drawable;->media3_icon_playback_speed_1_0:I

    return v0

    .line 1102
    :sswitch_19
    sget v0, Landroidx/media3/session/R$drawable;->media3_icon_subtitles_off:I

    return v0

    .line 1058
    :sswitch_1a
    sget v0, Landroidx/media3/session/R$drawable;->media3_icon_playlist_remove:I

    return v0

    .line 1042
    :sswitch_1b
    sget v0, Landroidx/media3/session/R$drawable;->media3_icon_thumb_up_unfilled:I

    return v0

    .line 1046
    :sswitch_1c
    sget v0, Landroidx/media3/session/R$drawable;->media3_icon_thumb_down_unfilled:I

    return v0

    .line 1096
    :sswitch_1d
    sget v0, Landroidx/media3/session/R$drawable;->media3_icon_settings:I

    return v0

    .line 1030
    :sswitch_1e
    sget v0, Landroidx/media3/session/R$drawable;->media3_icon_heart_unfilled:I

    return v0

    .line 1078
    :sswitch_1f
    sget v0, Landroidx/media3/session/R$drawable;->media3_icon_check_circle_unfilled:I

    return v0

    .line 1038
    :sswitch_20
    sget v0, Landroidx/media3/session/R$drawable;->media3_icon_bookmark_unfilled:I

    return v0

    .line 1034
    :sswitch_21
    sget v0, Landroidx/media3/session/R$drawable;->media3_icon_star_unfilled:I

    return v0

    .line 1110
    :sswitch_22
    sget v0, Landroidx/media3/session/R$drawable;->media3_icon_share:I

    return v0

    .line 1108
    :sswitch_23
    sget v0, Landroidx/media3/session/R$drawable;->media3_icon_sync:I

    return v0

    .line 1122
    :sswitch_24
    sget v0, Landroidx/media3/session/R$drawable;->media3_icon_radio:I

    return v0

    .line 1098
    :sswitch_25
    sget v0, Landroidx/media3/session/R$drawable;->media3_icon_quality:I

    return v0

    .line 1054
    :sswitch_26
    sget v0, Landroidx/media3/session/R$drawable;->media3_icon_minus:I

    return v0

    .line 1050
    :sswitch_27
    sget v0, Landroidx/media3/session/R$drawable;->media3_icon_flag_unfilled:I

    return v0

    .line 1066
    :sswitch_28
    sget v0, Landroidx/media3/session/R$drawable;->media3_icon_block:I

    return v0

    .line 1070
    :sswitch_29
    sget v0, Landroidx/media3/session/R$drawable;->media3_icon_plus_circle_unfilled:I

    return v0

    .line 1052
    :sswitch_2a
    sget v0, Landroidx/media3/session/R$drawable;->media3_icon_plus:I

    return v0

    .line 1126
    :sswitch_2b
    sget v0, Landroidx/media3/session/R$drawable;->media3_icon_feed:I

    return v0

    .line 1080
    :sswitch_2c
    sget v0, Landroidx/media3/session/R$drawable;->media3_icon_playback_speed:I

    return v0

    .line 1064
    :sswitch_2d
    sget v0, Landroidx/media3/session/R$drawable;->media3_icon_queue_remove:I

    return v0

    .line 1062
    :sswitch_2e
    sget v0, Landroidx/media3/session/R$drawable;->media3_icon_queue_next:I

    return v0

    .line 1060
    :sswitch_2f
    sget v0, Landroidx/media3/session/R$drawable;->media3_icon_queue_add:I

    return v0

    .line 1004
    :sswitch_30
    sget v0, Landroidx/media3/session/R$drawable;->media3_icon_skip_back_5:I

    return v0

    .line 1010
    :sswitch_31
    sget v0, Landroidx/media3/session/R$drawable;->media3_icon_skip_back_30:I

    return v0

    .line 1006
    :sswitch_32
    sget v0, Landroidx/media3/session/R$drawable;->media3_icon_skip_back_10:I

    return v0

    .line 994
    :sswitch_33
    sget v0, Landroidx/media3/session/R$drawable;->media3_icon_skip_forward_5:I

    return v0

    .line 1000
    :sswitch_34
    sget v0, Landroidx/media3/session/R$drawable;->media3_icon_skip_forward_30:I

    return v0

    .line 996
    :sswitch_35
    sget v0, Landroidx/media3/session/R$drawable;->media3_icon_skip_forward_10:I

    return v0

    .line 1112
    :sswitch_36
    sget v0, Landroidx/media3/session/R$drawable;->media3_icon_volume_up:I

    return v0

    .line 1116
    :sswitch_37
    sget v0, Landroidx/media3/session/R$drawable;->media3_icon_volume_off:I

    return v0

    .line 1114
    :sswitch_38
    sget v0, Landroidx/media3/session/R$drawable;->media3_icon_volume_down:I

    return v0

    .line 1100
    :sswitch_39
    sget v0, Landroidx/media3/session/R$drawable;->media3_icon_subtitles:I

    return v0

    .line 986
    :sswitch_3a
    sget v0, Landroidx/media3/session/R$drawable;->media3_icon_stop:I

    return v0

    .line 990
    :sswitch_3b
    sget v0, Landroidx/media3/session/R$drawable;->media3_icon_previous:I

    return v0

    .line 988
    :sswitch_3c
    sget v0, Landroidx/media3/session/R$drawable;->media3_icon_next:I

    return v0

    .line 1022
    :sswitch_3d
    sget v0, Landroidx/media3/session/R$drawable;->media3_icon_shuffle_on:I

    return v0

    .line 1002
    :sswitch_3e
    sget v0, Landroidx/media3/session/R$drawable;->media3_icon_skip_back:I

    return v0

    .line 1018
    :sswitch_3f
    sget v0, Landroidx/media3/session/R$drawable;->media3_icon_repeat_one:I

    return v0

    .line 1016
    :sswitch_40
    sget v0, Landroidx/media3/session/R$drawable;->media3_icon_repeat_all:I

    return v0

    .line 1056
    :sswitch_41
    sget v0, Landroidx/media3/session/R$drawable;->media3_icon_playlist_add:I

    return v0

    .line 982
    :sswitch_42
    sget v0, Landroidx/media3/session/R$drawable;->media3_icon_play:I

    return v0

    .line 984
    :sswitch_43
    sget v0, Landroidx/media3/session/R$drawable;->media3_icon_pause:I

    return v0

    .line 1014
    :sswitch_44
    sget v0, Landroidx/media3/session/R$drawable;->media3_icon_rewind:I

    return v0

    .line 1012
    :sswitch_45
    sget v0, Landroidx/media3/session/R$drawable;->media3_icon_fast_forward:I

    return v0

    .line 1104
    :sswitch_46
    sget v0, Landroidx/media3/session/R$drawable;->media3_icon_closed_captions:I

    return v0

    .line 1118
    :sswitch_47
    sget v0, Landroidx/media3/session/R$drawable;->media3_icon_artist:I

    return v0

    .line 1120
    :sswitch_48
    sget v0, Landroidx/media3/session/R$drawable;->media3_icon_album:I

    return v0

    :sswitch_data_0
    .sparse-switch
        0xe019 -> :sswitch_48
        0xe01a -> :sswitch_47
        0xe01c -> :sswitch_46
        0xe01f -> :sswitch_45
        0xe020 -> :sswitch_44
        0xe034 -> :sswitch_43
        0xe037 -> :sswitch_42
        0xe03b -> :sswitch_41
        0xe040 -> :sswitch_40
        0xe041 -> :sswitch_3f
        0xe042 -> :sswitch_3e
        0xe043 -> :sswitch_3d
        0xe044 -> :sswitch_3c
        0xe045 -> :sswitch_3b
        0xe047 -> :sswitch_3a
        0xe048 -> :sswitch_39
        0xe04d -> :sswitch_38
        0xe04f -> :sswitch_37
        0xe050 -> :sswitch_36
        0xe056 -> :sswitch_35
        0xe057 -> :sswitch_34
        0xe058 -> :sswitch_33
        0xe059 -> :sswitch_32
        0xe05a -> :sswitch_31
        0xe05b -> :sswitch_30
        0xe05c -> :sswitch_2f
        0xe066 -> :sswitch_2e
        0xe067 -> :sswitch_2d
        0xe068 -> :sswitch_2c
        0xe0e5 -> :sswitch_2b
        0xe145 -> :sswitch_2a
        0xe147 -> :sswitch_29
        0xe14b -> :sswitch_28
        0xe153 -> :sswitch_27
        0xe15b -> :sswitch_26
        0xe429 -> :sswitch_25
        0xe51e -> :sswitch_24
        0xe627 -> :sswitch_23
        0xe80d -> :sswitch_22
        0xe838 -> :sswitch_21
        0xe866 -> :sswitch_20
        0xe86c -> :sswitch_1f
        0xe87d -> :sswitch_1e
        0xe8b8 -> :sswitch_1d
        0xe8db -> :sswitch_1c
        0xe8dc -> :sswitch_1b
        0xeb80 -> :sswitch_1a
        0xef72 -> :sswitch_19
        0xefcd -> :sswitch_18
        0xf048 -> :sswitch_17
        0xf1dc -> :sswitch_16
        0xf4e0 -> :sswitch_15
        0xf4e1 -> :sswitch_14
        0xf4e2 -> :sswitch_13
        0xf4eb -> :sswitch_12
        0xf6f4 -> :sswitch_11
        0xfe040 -> :sswitch_10
        0xfe043 -> :sswitch_f
        0xfe044 -> :sswitch_e
        0xfe056 -> :sswitch_d
        0xfe059 -> :sswitch_c
        0xfe147 -> :sswitch_b
        0xfe148 -> :sswitch_a
        0xfe149 -> :sswitch_9
        0xfe153 -> :sswitch_8
        0xfe838 -> :sswitch_7
        0xfe866 -> :sswitch_6
        0xfe86c -> :sswitch_5
        0xfe87d -> :sswitch_4
        0xfe8db -> :sswitch_3
        0xfe8dc -> :sswitch_2
        0xff4e0 -> :sswitch_1
        0xff4e2 -> :sswitch_0
    .end sparse-switch
.end method

.method static isButtonCommandAvailable(Landroidx/media3/session/CommandButton;Landroidx/media3/session/SessionCommands;Landroidx/media3/common/Player$Commands;)Z
    .locals 2
    .param p0, "button"    # Landroidx/media3/session/CommandButton;
    .param p1, "sessionCommands"    # Landroidx/media3/session/SessionCommands;
    .param p2, "playerCommands"    # Landroidx/media3/common/Player$Commands;

    .line 872
    iget-object v0, p0, Landroidx/media3/session/CommandButton;->sessionCommand:Landroidx/media3/session/SessionCommand;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/session/CommandButton;->sessionCommand:Landroidx/media3/session/SessionCommand;

    invoke-virtual {p1, v0}, Landroidx/media3/session/SessionCommands;->contains(Landroidx/media3/session/SessionCommand;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget v0, p0, Landroidx/media3/session/CommandButton;->playerCommand:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget v0, p0, Landroidx/media3/session/CommandButton;->playerCommand:I

    .line 874
    invoke-virtual {p2, v0}, Landroidx/media3/common/Player$Commands;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 872
    :goto_0
    return v0
.end method


# virtual methods
.method copyWithIsEnabled(Z)Landroidx/media3/session/CommandButton;
    .locals 11
    .param p1, "isEnabled"    # Z
    .annotation runtime Lcom/google/errorprone/annotations/CheckReturnValue;
    .end annotation

    .line 800
    iget-boolean v0, p0, Landroidx/media3/session/CommandButton;->isEnabled:Z

    if-ne v0, p1, :cond_0

    .line 801
    return-object p0

    .line 803
    :cond_0
    new-instance v0, Landroidx/media3/session/CommandButton;

    iget-object v2, p0, Landroidx/media3/session/CommandButton;->sessionCommand:Landroidx/media3/session/SessionCommand;

    iget v3, p0, Landroidx/media3/session/CommandButton;->playerCommand:I

    iget v4, p0, Landroidx/media3/session/CommandButton;->icon:I

    iget v5, p0, Landroidx/media3/session/CommandButton;->iconResId:I

    iget-object v6, p0, Landroidx/media3/session/CommandButton;->iconUri:Landroid/net/Uri;

    iget-object v7, p0, Landroidx/media3/session/CommandButton;->displayName:Ljava/lang/CharSequence;

    new-instance v8, Landroid/os/Bundle;

    iget-object v1, p0, Landroidx/media3/session/CommandButton;->extras:Landroid/os/Bundle;

    invoke-direct {v8, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iget-object v10, p0, Landroidx/media3/session/CommandButton;->slots:Lcom/google/common/primitives/ImmutableIntArray;

    move-object v1, v0

    move v9, p1

    invoke-direct/range {v1 .. v10}, Landroidx/media3/session/CommandButton;-><init>(Landroidx/media3/session/SessionCommand;IIILandroid/net/Uri;Ljava/lang/CharSequence;Landroid/os/Bundle;ZLcom/google/common/primitives/ImmutableIntArray;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 818
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 819
    return v0

    .line 821
    :cond_0
    instance-of v1, p1, Landroidx/media3/session/CommandButton;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 822
    return v2

    .line 824
    :cond_1
    move-object v1, p1

    check-cast v1, Landroidx/media3/session/CommandButton;

    .line 825
    .local v1, "button":Landroidx/media3/session/CommandButton;
    iget-object v3, p0, Landroidx/media3/session/CommandButton;->sessionCommand:Landroidx/media3/session/SessionCommand;

    iget-object v4, v1, Landroidx/media3/session/CommandButton;->sessionCommand:Landroidx/media3/session/SessionCommand;

    invoke-static {v3, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Landroidx/media3/session/CommandButton;->playerCommand:I

    iget v4, v1, Landroidx/media3/session/CommandButton;->playerCommand:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroidx/media3/session/CommandButton;->icon:I

    iget v4, v1, Landroidx/media3/session/CommandButton;->icon:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroidx/media3/session/CommandButton;->iconResId:I

    iget v4, v1, Landroidx/media3/session/CommandButton;->iconResId:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroidx/media3/session/CommandButton;->iconUri:Landroid/net/Uri;

    iget-object v4, v1, Landroidx/media3/session/CommandButton;->iconUri:Landroid/net/Uri;

    .line 829
    invoke-static {v3, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroidx/media3/session/CommandButton;->displayName:Ljava/lang/CharSequence;

    iget-object v4, v1, Landroidx/media3/session/CommandButton;->displayName:Ljava/lang/CharSequence;

    .line 830
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Landroidx/media3/session/CommandButton;->isEnabled:Z

    iget-boolean v4, v1, Landroidx/media3/session/CommandButton;->isEnabled:Z

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroidx/media3/session/CommandButton;->slots:Lcom/google/common/primitives/ImmutableIntArray;

    iget-object v4, v1, Landroidx/media3/session/CommandButton;->slots:Lcom/google/common/primitives/ImmutableIntArray;

    .line 832
    invoke-virtual {v3, v4}, Lcom/google/common/primitives/ImmutableIntArray;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 825
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 8

    .line 837
    iget-object v0, p0, Landroidx/media3/session/CommandButton;->sessionCommand:Landroidx/media3/session/SessionCommand;

    iget v1, p0, Landroidx/media3/session/CommandButton;->playerCommand:I

    .line 838
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroidx/media3/session/CommandButton;->icon:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Landroidx/media3/session/CommandButton;->iconResId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Landroidx/media3/session/CommandButton;->displayName:Ljava/lang/CharSequence;

    iget-boolean v5, p0, Landroidx/media3/session/CommandButton;->isEnabled:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iget-object v6, p0, Landroidx/media3/session/CommandButton;->iconUri:Landroid/net/Uri;

    iget-object v7, p0, Landroidx/media3/session/CommandButton;->slots:Lcom/google/common/primitives/ImmutableIntArray;

    filled-new-array/range {v0 .. v7}, [Ljava/lang/Object;

    move-result-object v0

    .line 837
    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 3

    .line 889
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 890
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v1, p0, Landroidx/media3/session/CommandButton;->sessionCommand:Landroidx/media3/session/SessionCommand;

    if-eqz v1, :cond_0

    .line 891
    sget-object v1, Landroidx/media3/session/CommandButton;->FIELD_SESSION_COMMAND:Ljava/lang/String;

    iget-object v2, p0, Landroidx/media3/session/CommandButton;->sessionCommand:Landroidx/media3/session/SessionCommand;

    invoke-virtual {v2}, Landroidx/media3/session/SessionCommand;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 893
    :cond_0
    iget v1, p0, Landroidx/media3/session/CommandButton;->playerCommand:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 894
    sget-object v1, Landroidx/media3/session/CommandButton;->FIELD_PLAYER_COMMAND:Ljava/lang/String;

    iget v2, p0, Landroidx/media3/session/CommandButton;->playerCommand:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 896
    :cond_1
    iget v1, p0, Landroidx/media3/session/CommandButton;->icon:I

    if-eqz v1, :cond_2

    .line 897
    sget-object v1, Landroidx/media3/session/CommandButton;->FIELD_ICON:Ljava/lang/String;

    iget v2, p0, Landroidx/media3/session/CommandButton;->icon:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 899
    :cond_2
    iget v1, p0, Landroidx/media3/session/CommandButton;->iconResId:I

    if-eqz v1, :cond_3

    .line 900
    sget-object v1, Landroidx/media3/session/CommandButton;->FIELD_ICON_RES_ID:Ljava/lang/String;

    iget v2, p0, Landroidx/media3/session/CommandButton;->iconResId:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 902
    :cond_3
    iget-object v1, p0, Landroidx/media3/session/CommandButton;->displayName:Ljava/lang/CharSequence;

    const-string v2, ""

    if-eq v1, v2, :cond_4

    .line 903
    sget-object v1, Landroidx/media3/session/CommandButton;->FIELD_DISPLAY_NAME:Ljava/lang/String;

    iget-object v2, p0, Landroidx/media3/session/CommandButton;->displayName:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 905
    :cond_4
    iget-object v1, p0, Landroidx/media3/session/CommandButton;->extras:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 906
    sget-object v1, Landroidx/media3/session/CommandButton;->FIELD_EXTRAS:Ljava/lang/String;

    iget-object v2, p0, Landroidx/media3/session/CommandButton;->extras:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 908
    :cond_5
    iget-object v1, p0, Landroidx/media3/session/CommandButton;->iconUri:Landroid/net/Uri;

    if-eqz v1, :cond_6

    .line 909
    sget-object v1, Landroidx/media3/session/CommandButton;->FIELD_ICON_URI:Ljava/lang/String;

    iget-object v2, p0, Landroidx/media3/session/CommandButton;->iconUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 911
    :cond_6
    iget-boolean v1, p0, Landroidx/media3/session/CommandButton;->isEnabled:Z

    if-nez v1, :cond_7

    .line 912
    sget-object v1, Landroidx/media3/session/CommandButton;->FIELD_ENABLED:Ljava/lang/String;

    iget-boolean v2, p0, Landroidx/media3/session/CommandButton;->isEnabled:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 914
    :cond_7
    iget-object v1, p0, Landroidx/media3/session/CommandButton;->slots:Lcom/google/common/primitives/ImmutableIntArray;

    invoke-virtual {v1}, Lcom/google/common/primitives/ImmutableIntArray;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_8

    iget-object v1, p0, Landroidx/media3/session/CommandButton;->slots:Lcom/google/common/primitives/ImmutableIntArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/common/primitives/ImmutableIntArray;->get(I)I

    move-result v1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_9

    .line 915
    :cond_8
    sget-object v1, Landroidx/media3/session/CommandButton;->FIELD_SLOTS:Ljava/lang/String;

    iget-object v2, p0, Landroidx/media3/session/CommandButton;->slots:Lcom/google/common/primitives/ImmutableIntArray;

    invoke-virtual {v2}, Lcom/google/common/primitives/ImmutableIntArray;->toArray()[I

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 917
    :cond_9
    return-object v0
.end method
