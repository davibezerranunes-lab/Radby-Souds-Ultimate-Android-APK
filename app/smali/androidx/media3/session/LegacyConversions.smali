.class Landroidx/media3/session/LegacyConversions;
.super Ljava/lang/Object;
.source "LegacyConversions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/session/LegacyConversions$ConversionException;
    }
.end annotation


# static fields
.field public static final KNOWN_METADATA_COMPAT_KEYS:Lcom/google/common/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "LegacyConversions"

.field public static final defaultBrowserRoot:Landroidx/media3/session/legacy/MediaBrowserServiceCompat$BrowserRoot;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 109
    new-instance v0, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$BrowserRoot;

    const-string v1, "androidx.media3.session.MediaLibraryService"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$BrowserRoot;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    sput-object v0, Landroidx/media3/session/LegacyConversions;->defaultBrowserRoot:Landroidx/media3/session/legacy/MediaBrowserServiceCompat$BrowserRoot;

    .line 112
    const/16 v0, 0x1a

    new-array v7, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "android.media.metadata.COMPOSER"

    aput-object v1, v7, v0

    const/4 v0, 0x1

    const-string v1, "android.media.metadata.COMPILATION"

    aput-object v1, v7, v0

    const/4 v0, 0x2

    const-string v1, "android.media.metadata.DATE"

    aput-object v1, v7, v0

    const/4 v0, 0x3

    const-string v1, "android.media.metadata.YEAR"

    aput-object v1, v7, v0

    const/4 v0, 0x4

    const-string v1, "android.media.metadata.GENRE"

    aput-object v1, v7, v0

    const/4 v0, 0x5

    const-string v1, "android.media.metadata.TRACK_NUMBER"

    aput-object v1, v7, v0

    const/4 v0, 0x6

    const-string v1, "android.media.metadata.NUM_TRACKS"

    aput-object v1, v7, v0

    const/4 v0, 0x7

    const-string v1, "android.media.metadata.DISC_NUMBER"

    aput-object v1, v7, v0

    const/16 v0, 0x8

    const-string v1, "android.media.metadata.ALBUM_ARTIST"

    aput-object v1, v7, v0

    const/16 v0, 0x9

    const-string v1, "android.media.metadata.ART"

    aput-object v1, v7, v0

    const/16 v0, 0xa

    const-string v1, "android.media.metadata.ART_URI"

    aput-object v1, v7, v0

    const/16 v0, 0xb

    const-string v1, "android.media.metadata.ALBUM_ART"

    aput-object v1, v7, v0

    const/16 v0, 0xc

    const-string v1, "android.media.metadata.ALBUM_ART_URI"

    aput-object v1, v7, v0

    const/16 v0, 0xd

    const-string v1, "android.media.metadata.USER_RATING"

    aput-object v1, v7, v0

    const/16 v0, 0xe

    const-string v1, "android.media.metadata.RATING"

    aput-object v1, v7, v0

    const/16 v0, 0xf

    const-string v1, "android.media.metadata.DISPLAY_TITLE"

    aput-object v1, v7, v0

    const/16 v0, 0x10

    const-string v1, "android.media.metadata.DISPLAY_SUBTITLE"

    aput-object v1, v7, v0

    const/16 v0, 0x11

    const-string v1, "android.media.metadata.DISPLAY_DESCRIPTION"

    aput-object v1, v7, v0

    const/16 v0, 0x12

    const-string v1, "android.media.metadata.DISPLAY_ICON"

    aput-object v1, v7, v0

    const/16 v0, 0x13

    const-string v1, "android.media.metadata.DISPLAY_ICON_URI"

    aput-object v1, v7, v0

    const/16 v0, 0x14

    const-string v1, "android.media.metadata.MEDIA_ID"

    aput-object v1, v7, v0

    const/16 v0, 0x15

    const-string v1, "android.media.metadata.MEDIA_URI"

    aput-object v1, v7, v0

    const/16 v0, 0x16

    const-string v1, "android.media.metadata.BT_FOLDER_TYPE"

    aput-object v1, v7, v0

    const/16 v0, 0x17

    const-string v1, "android.media.metadata.ADVERTISEMENT"

    aput-object v1, v7, v0

    const/16 v0, 0x18

    const-string v1, "android.media.metadata.DOWNLOAD_STATUS"

    aput-object v1, v7, v0

    const/16 v0, 0x19

    const-string v1, "androidx.media3.session.EXTRAS_KEY_MEDIA_TYPE_COMPAT"

    aput-object v1, v7, v0

    .line 113
    const-string v1, "android.media.metadata.TITLE"

    const-string v2, "android.media.metadata.ARTIST"

    const-string v3, "android.media.metadata.DURATION"

    const-string v4, "android.media.metadata.ALBUM"

    const-string v5, "android.media.metadata.AUTHOR"

    const-string v6, "android.media.metadata.WRITER"

    invoke-static/range {v1 .. v7}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/LegacyConversions;->KNOWN_METADATA_COMPAT_KEYS:Lcom/google/common/collect/ImmutableSet;

    .line 112
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1754
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertBrowserItemListToMediaItemList(Ljava/util/List;)Lcom/google/common/collect/ImmutableList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/session/legacy/MediaBrowserCompat$MediaItem;",
            ">;)",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/common/MediaItem;",
            ">;"
        }
    .end annotation

    .line 412
    .local p0, "items":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/session/legacy/MediaBrowserCompat$MediaItem;>;"
    new-instance v0, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    .line 413
    .local v0, "builder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Landroidx/media3/common/MediaItem;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 414
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/session/legacy/MediaBrowserCompat$MediaItem;

    invoke-static {v2}, Landroidx/media3/session/LegacyConversions;->convertToMediaItem(Landroidx/media3/session/legacy/MediaBrowserCompat$MediaItem;)Landroidx/media3/common/MediaItem;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 413
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 416
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    return-object v1
.end method

.method public static convertCustomBrowseActionToCommandButton(Landroid/os/Bundle;)Landroidx/media3/session/CommandButton;
    .locals 7
    .param p0, "browseActionBundle"    # Landroid/os/Bundle;

    .line 1661
    nop

    .line 1662
    const-string v0, "androidx.media.utils.extras.KEY_CUSTOM_BROWSER_ACTION_ID"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1664
    .local v0, "commandAction":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1665
    const/4 v1, 0x0

    return-object v1

    .line 1668
    :cond_0
    new-instance v1, Landroidx/media3/session/CommandButton$Builder;

    invoke-direct {v1}, Landroidx/media3/session/CommandButton$Builder;-><init>()V

    new-instance v2, Landroidx/media3/session/SessionCommand;

    sget-object v3, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-direct {v2, v0, v3}, Landroidx/media3/session/SessionCommand;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1670
    invoke-virtual {v1, v2}, Landroidx/media3/session/CommandButton$Builder;->setSessionCommand(Landroidx/media3/session/SessionCommand;)Landroidx/media3/session/CommandButton$Builder;

    move-result-object v1

    .line 1671
    .local v1, "commandButton":Landroidx/media3/session/CommandButton$Builder;
    nop

    .line 1672
    const-string v2, "androidx.media.utils.extras.KEY_CUSTOM_BROWSER_ACTION_LABEL"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1674
    .local v2, "label":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 1675
    invoke-virtual {v1, v2}, Landroidx/media3/session/CommandButton$Builder;->setDisplayName(Ljava/lang/CharSequence;)Landroidx/media3/session/CommandButton$Builder;

    .line 1677
    :cond_1
    nop

    .line 1678
    const-string v3, "androidx.media.utils.extras.KEY_CUSTOM_BROWSER_ACTION_ICON_URI"

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1681
    .local v3, "iconUri":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 1683
    :try_start_0
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroidx/media3/session/CommandButton$Builder;->setIconUri(Landroid/net/Uri;)Landroidx/media3/session/CommandButton$Builder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1686
    goto :goto_0

    .line 1684
    :catchall_0
    move-exception v4

    .line 1685
    .local v4, "t":Ljava/lang/Throwable;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "error parsing icon URI of legacy browser action "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "LegacyConversions"

    invoke-static {v6, v5, v4}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1688
    .end local v4    # "t":Ljava/lang/Throwable;
    :cond_2
    :goto_0
    nop

    .line 1689
    const-string v4, "androidx.media.utils.extras.KEY_CUSTOM_BROWSER_ACTION_EXTRAS"

    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 1691
    .local v4, "actionExtras":Landroid/os/Bundle;
    if-eqz v4, :cond_3

    .line 1692
    invoke-virtual {v1, v4}, Landroidx/media3/session/CommandButton$Builder;->setExtras(Landroid/os/Bundle;)Landroidx/media3/session/CommandButton$Builder;

    .line 1694
    :cond_3
    invoke-virtual {v1}, Landroidx/media3/session/CommandButton$Builder;->build()Landroidx/media3/session/CommandButton;

    move-result-object v5

    return-object v5
.end method

.method public static convertToAudioAttributes(Landroidx/media3/session/legacy/AudioAttributesCompat;)Landroidx/media3/common/AudioAttributes;
    .locals 2
    .param p0, "audioAttributesCompat"    # Landroidx/media3/session/legacy/AudioAttributesCompat;

    .line 1542
    if-nez p0, :cond_0

    .line 1543
    sget-object v0, Landroidx/media3/common/AudioAttributes;->DEFAULT:Landroidx/media3/common/AudioAttributes;

    return-object v0

    .line 1545
    :cond_0
    new-instance v0, Landroidx/media3/common/AudioAttributes$Builder;

    invoke-direct {v0}, Landroidx/media3/common/AudioAttributes$Builder;-><init>()V

    .line 1546
    invoke-virtual {p0}, Landroidx/media3/session/legacy/AudioAttributesCompat;->getContentType()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/media3/common/AudioAttributes$Builder;->setContentType(I)Landroidx/media3/common/AudioAttributes$Builder;

    move-result-object v0

    .line 1547
    invoke-virtual {p0}, Landroidx/media3/session/legacy/AudioAttributesCompat;->getFlags()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/media3/common/AudioAttributes$Builder;->setFlags(I)Landroidx/media3/common/AudioAttributes$Builder;

    move-result-object v0

    .line 1548
    invoke-virtual {p0}, Landroidx/media3/session/legacy/AudioAttributesCompat;->getUsage()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/media3/common/AudioAttributes$Builder;->setUsage(I)Landroidx/media3/common/AudioAttributes$Builder;

    move-result-object v0

    .line 1549
    invoke-virtual {v0}, Landroidx/media3/common/AudioAttributes$Builder;->build()Landroidx/media3/common/AudioAttributes;

    move-result-object v0

    .line 1545
    return-object v0
.end method

.method public static convertToAudioAttributes(Landroidx/media3/session/legacy/MediaControllerCompat$PlaybackInfo;)Landroidx/media3/common/AudioAttributes;
    .locals 1
    .param p0, "playbackInfoCompat"    # Landroidx/media3/session/legacy/MediaControllerCompat$PlaybackInfo;

    .line 1555
    if-nez p0, :cond_0

    .line 1556
    sget-object v0, Landroidx/media3/common/AudioAttributes;->DEFAULT:Landroidx/media3/common/AudioAttributes;

    return-object v0

    .line 1558
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/session/legacy/MediaControllerCompat$PlaybackInfo;->getAudioAttributes()Landroidx/media3/session/legacy/AudioAttributesCompat;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/session/LegacyConversions;->convertToAudioAttributes(Landroidx/media3/session/legacy/AudioAttributesCompat;)Landroidx/media3/common/AudioAttributes;

    move-result-object v0

    return-object v0
.end method

.method public static convertToAudioAttributesCompat(Landroidx/media3/common/AudioAttributes;)Landroidx/media3/session/legacy/AudioAttributesCompat;
    .locals 2
    .param p0, "audioAttributes"    # Landroidx/media3/common/AudioAttributes;

    .line 1564
    new-instance v0, Landroidx/media3/session/legacy/AudioAttributesCompat$Builder;

    invoke-direct {v0}, Landroidx/media3/session/legacy/AudioAttributesCompat$Builder;-><init>()V

    iget v1, p0, Landroidx/media3/common/AudioAttributes;->contentType:I

    .line 1565
    invoke-virtual {v0, v1}, Landroidx/media3/session/legacy/AudioAttributesCompat$Builder;->setContentType(I)Landroidx/media3/session/legacy/AudioAttributesCompat$Builder;

    move-result-object v0

    iget v1, p0, Landroidx/media3/common/AudioAttributes;->flags:I

    .line 1566
    invoke-virtual {v0, v1}, Landroidx/media3/session/legacy/AudioAttributesCompat$Builder;->setFlags(I)Landroidx/media3/session/legacy/AudioAttributesCompat$Builder;

    move-result-object v0

    iget v1, p0, Landroidx/media3/common/AudioAttributes;->usage:I

    .line 1567
    invoke-virtual {v0, v1}, Landroidx/media3/session/legacy/AudioAttributesCompat$Builder;->setUsage(I)Landroidx/media3/session/legacy/AudioAttributesCompat$Builder;

    move-result-object v0

    .line 1568
    invoke-virtual {v0}, Landroidx/media3/session/legacy/AudioAttributesCompat$Builder;->build()Landroidx/media3/session/legacy/AudioAttributesCompat;

    move-result-object v0

    .line 1564
    return-object v0
.end method

.method public static convertToBrowserItem(Landroidx/media3/common/MediaItem;Landroid/graphics/Bitmap;)Landroidx/media3/session/legacy/MediaBrowserCompat$MediaItem;
    .locals 4
    .param p0, "item"    # Landroidx/media3/common/MediaItem;
    .param p1, "artworkBitmap"    # Landroid/graphics/Bitmap;

    .line 338
    invoke-static {p0, p1}, Landroidx/media3/session/LegacyConversions;->convertToMediaDescriptionCompat(Landroidx/media3/common/MediaItem;Landroid/graphics/Bitmap;)Landroidx/media3/session/legacy/MediaDescriptionCompat;

    move-result-object v0

    .line 339
    .local v0, "description":Landroidx/media3/session/legacy/MediaDescriptionCompat;
    iget-object v1, p0, Landroidx/media3/common/MediaItem;->mediaMetadata:Landroidx/media3/common/MediaMetadata;

    .line 340
    .local v1, "metadata":Landroidx/media3/common/MediaMetadata;
    const/4 v2, 0x0

    .line 341
    .local v2, "flags":I
    iget-object v3, v1, Landroidx/media3/common/MediaMetadata;->isBrowsable:Ljava/lang/Boolean;

    if-eqz v3, :cond_0

    iget-object v3, v1, Landroidx/media3/common/MediaMetadata;->isBrowsable:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 342
    or-int/lit8 v2, v2, 0x1

    .line 344
    :cond_0
    iget-object v3, v1, Landroidx/media3/common/MediaMetadata;->isPlayable:Ljava/lang/Boolean;

    if-eqz v3, :cond_1

    iget-object v3, v1, Landroidx/media3/common/MediaMetadata;->isPlayable:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 345
    or-int/lit8 v2, v2, 0x2

    .line 347
    :cond_1
    new-instance v3, Landroidx/media3/session/legacy/MediaBrowserCompat$MediaItem;

    invoke-direct {v3, v0, v2}, Landroidx/media3/session/legacy/MediaBrowserCompat$MediaItem;-><init>(Landroidx/media3/session/legacy/MediaDescriptionCompat;I)V

    return-object v3
.end method

.method public static convertToBufferedPercentage(Landroidx/media3/session/legacy/PlaybackStateCompat;Landroidx/media3/session/legacy/MediaMetadataCompat;J)I
    .locals 5
    .param p0, "playbackStateCompat"    # Landroidx/media3/session/legacy/PlaybackStateCompat;
    .param p1, "mediaMetadataCompat"    # Landroidx/media3/session/legacy/MediaMetadataCompat;
    .param p2, "timeDiffMs"    # J

    .line 1209
    nop

    .line 1210
    invoke-static {p0, p1, p2, p3}, Landroidx/media3/session/LegacyConversions;->convertToBufferedPositionMs(Landroidx/media3/session/legacy/PlaybackStateCompat;Landroidx/media3/session/legacy/MediaMetadataCompat;J)J

    move-result-wide v0

    .line 1211
    .local v0, "bufferedPositionMs":J
    invoke-static {p1}, Landroidx/media3/session/LegacyConversions;->convertToDurationMs(Landroidx/media3/session/legacy/MediaMetadataCompat;)J

    move-result-wide v2

    .line 1212
    .local v2, "durationMs":J
    invoke-static {v0, v1, v2, v3}, Landroidx/media3/session/MediaUtils;->calculateBufferedPercentage(JJ)I

    move-result v4

    return v4
.end method

.method public static convertToBufferedPositionMs(Landroidx/media3/session/legacy/PlaybackStateCompat;Landroidx/media3/session/legacy/MediaMetadataCompat;J)J
    .locals 12
    .param p0, "playbackStateCompat"    # Landroidx/media3/session/legacy/PlaybackStateCompat;
    .param p1, "metadataCompat"    # Landroidx/media3/session/legacy/MediaMetadataCompat;
    .param p2, "timeDiffMs"    # J

    .line 1183
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/media3/session/legacy/PlaybackStateCompat;->getBufferedPosition()J

    move-result-wide v0

    .line 1184
    .local v0, "legacyBufferedPositionMs":J
    :goto_0
    nop

    .line 1185
    invoke-static {p0, p1, p2, p3}, Landroidx/media3/session/LegacyConversions;->convertToCurrentPositionMs(Landroidx/media3/session/legacy/PlaybackStateCompat;Landroidx/media3/session/legacy/MediaMetadataCompat;J)J

    move-result-wide v8

    .line 1186
    .local v8, "currentPositionMs":J
    invoke-static {p1}, Landroidx/media3/session/LegacyConversions;->convertToDurationMs(Landroidx/media3/session/legacy/MediaMetadataCompat;)J

    move-result-wide v10

    .line 1187
    .local v10, "durationMs":J
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v10, v2

    if-nez v2, :cond_1

    .line 1188
    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    goto :goto_1

    .line 1189
    :cond_1
    move-wide v2, v0

    move-wide v4, v8

    move-wide v6, v10

    invoke-static/range {v2 .. v7}, Landroidx/media3/common/util/Util;->constrainValue(JJJ)J

    move-result-wide v2

    .line 1187
    :goto_1
    return-wide v2
.end method

.method public static convertToBundle(Landroidx/media3/session/CommandButton;)Landroid/os/Bundle;
    .locals 3
    .param p0, "commandButton"    # Landroidx/media3/session/CommandButton;

    .line 1708
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1709
    .local v0, "buttonBundle":Landroid/os/Bundle;
    iget-object v1, p0, Landroidx/media3/session/CommandButton;->sessionCommand:Landroidx/media3/session/SessionCommand;

    if-eqz v1, :cond_0

    .line 1710
    iget-object v1, p0, Landroidx/media3/session/CommandButton;->sessionCommand:Landroidx/media3/session/SessionCommand;

    iget-object v1, v1, Landroidx/media3/session/SessionCommand;->customAction:Ljava/lang/String;

    const-string v2, "androidx.media.utils.extras.KEY_CUSTOM_BROWSER_ACTION_ID"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1714
    :cond_0
    iget-object v1, p0, Landroidx/media3/session/CommandButton;->displayName:Ljava/lang/CharSequence;

    .line 1716
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1714
    const-string v2, "androidx.media.utils.extras.KEY_CUSTOM_BROWSER_ACTION_LABEL"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1717
    iget-object v1, p0, Landroidx/media3/session/CommandButton;->iconUri:Landroid/net/Uri;

    if-eqz v1, :cond_1

    .line 1718
    iget-object v1, p0, Landroidx/media3/session/CommandButton;->iconUri:Landroid/net/Uri;

    .line 1720
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1718
    const-string v2, "androidx.media.utils.extras.KEY_CUSTOM_BROWSER_ACTION_ICON_URI"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1722
    :cond_1
    iget-object v1, p0, Landroidx/media3/session/CommandButton;->extras:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1723
    const-string v1, "androidx.media.utils.extras.KEY_CUSTOM_BROWSER_ACTION_EXTRAS"

    iget-object v2, p0, Landroidx/media3/session/CommandButton;->extras:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1727
    :cond_2
    return-object v0
.end method

.method private static convertToByteArray(Landroid/graphics/Bitmap;)[B
    .locals 3
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1748
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1749
    .local v0, "stream":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1750
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1751
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 1750
    return-object v1

    .line 1748
    :catchall_0
    move-exception v1

    :try_start_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
.end method

.method public static convertToCurrentPositionMs(Landroidx/media3/session/legacy/PlaybackStateCompat;Landroidx/media3/session/legacy/MediaMetadataCompat;J)J
    .locals 12
    .param p0, "playbackStateCompat"    # Landroidx/media3/session/legacy/PlaybackStateCompat;
    .param p1, "metadataCompat"    # Landroidx/media3/session/legacy/MediaMetadataCompat;
    .param p2, "timeDiffMs"    # J

    .line 1149
    const-wide/16 v0, 0x0

    if-nez p0, :cond_0

    .line 1150
    return-wide v0

    .line 1153
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/session/legacy/PlaybackStateCompat;->getState()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 1154
    invoke-static {p0, p2, p3}, Landroidx/media3/session/LegacyConversions;->getCurrentPosition(Landroidx/media3/session/legacy/PlaybackStateCompat;J)J

    move-result-wide v2

    goto :goto_0

    .line 1155
    :cond_1
    invoke-virtual {p0}, Landroidx/media3/session/legacy/PlaybackStateCompat;->getPosition()J

    move-result-wide v2

    :goto_0
    nop

    .line 1156
    .local v2, "positionMs":J
    invoke-static {p1}, Landroidx/media3/session/LegacyConversions;->convertToDurationMs(Landroidx/media3/session/legacy/MediaMetadataCompat;)J

    move-result-wide v10

    .line 1157
    .local v10, "durationMs":J
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v10, v4

    if-nez v4, :cond_2

    .line 1158
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    goto :goto_1

    .line 1159
    :cond_2
    const-wide/16 v6, 0x0

    move-wide v4, v2

    move-wide v8, v10

    invoke-static/range {v4 .. v9}, Landroidx/media3/common/util/Util;->constrainValue(JJJ)J

    move-result-wide v0

    .line 1157
    :goto_1
    return-wide v0
.end method

.method public static convertToDeviceInfo(Landroidx/media3/session/legacy/MediaControllerCompat$PlaybackInfo;Ljava/lang/String;)Landroidx/media3/common/DeviceInfo;
    .locals 3
    .param p0, "playbackInfoCompat"    # Landroidx/media3/session/legacy/MediaControllerCompat$PlaybackInfo;
    .param p1, "routingControllerId"    # Ljava/lang/String;

    .line 1618
    if-nez p0, :cond_0

    .line 1619
    sget-object v0, Landroidx/media3/common/DeviceInfo;->UNKNOWN:Landroidx/media3/common/DeviceInfo;

    return-object v0

    .line 1621
    :cond_0
    new-instance v0, Landroidx/media3/common/DeviceInfo$Builder;

    .line 1623
    nop

    .line 1622
    invoke-virtual {p0}, Landroidx/media3/session/legacy/MediaControllerCompat$PlaybackInfo;->getPlaybackType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 1624
    const/4 v1, 0x1

    goto :goto_0

    .line 1625
    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-direct {v0, v1}, Landroidx/media3/common/DeviceInfo$Builder;-><init>(I)V

    .line 1626
    invoke-virtual {p0}, Landroidx/media3/session/legacy/MediaControllerCompat$PlaybackInfo;->getMaxVolume()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/media3/common/DeviceInfo$Builder;->setMaxVolume(I)Landroidx/media3/common/DeviceInfo$Builder;

    move-result-object v0

    .line 1627
    invoke-virtual {v0, p1}, Landroidx/media3/common/DeviceInfo$Builder;->setRoutingControllerId(Ljava/lang/String;)Landroidx/media3/common/DeviceInfo$Builder;

    move-result-object v0

    .line 1628
    invoke-virtual {v0}, Landroidx/media3/common/DeviceInfo$Builder;->build()Landroidx/media3/common/DeviceInfo;

    move-result-object v0

    .line 1621
    return-object v0
.end method

.method public static convertToDeviceVolume(Landroidx/media3/session/legacy/MediaControllerCompat$PlaybackInfo;)I
    .locals 1
    .param p0, "playbackInfoCompat"    # Landroidx/media3/session/legacy/MediaControllerCompat$PlaybackInfo;

    .line 1634
    if-nez p0, :cond_0

    .line 1635
    const/4 v0, 0x0

    return v0

    .line 1637
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/session/legacy/MediaControllerCompat$PlaybackInfo;->getCurrentVolume()I

    move-result v0

    return v0
.end method

.method public static convertToDurationMs(Landroidx/media3/session/legacy/MediaMetadataCompat;)J
    .locals 6
    .param p0, "metadataCompat"    # Landroidx/media3/session/legacy/MediaMetadataCompat;

    .line 1169
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz p0, :cond_2

    .line 1170
    const-string v2, "android.media.metadata.DURATION"

    invoke-virtual {p0, v2}, Landroidx/media3/session/legacy/MediaMetadataCompat;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 1173
    :cond_0
    invoke-virtual {p0, v2}, Landroidx/media3/session/legacy/MediaMetadataCompat;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 1174
    .local v2, "legacyDurationMs":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gtz v4, :cond_1

    goto :goto_0

    :cond_1
    move-wide v0, v2

    :goto_0
    return-wide v0

    .line 1171
    .end local v2    # "legacyDurationMs":J
    :cond_2
    :goto_1
    return-wide v0
.end method

.method private static convertToExtraBtFolderType(I)J
    .locals 3
    .param p0, "folderType"    # I

    .line 931
    packed-switch p0, :pswitch_data_0

    .line 948
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized FolderType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 945
    :pswitch_0
    const-wide/16 v0, 0x6

    return-wide v0

    .line 943
    :pswitch_1
    const-wide/16 v0, 0x5

    return-wide v0

    .line 941
    :pswitch_2
    const-wide/16 v0, 0x4

    return-wide v0

    .line 939
    :pswitch_3
    const-wide/16 v0, 0x3

    return-wide v0

    .line 937
    :pswitch_4
    const-wide/16 v0, 0x2

    return-wide v0

    .line 935
    :pswitch_5
    const-wide/16 v0, 0x1

    return-wide v0

    .line 933
    :pswitch_6
    const-wide/16 v0, 0x0

    return-wide v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static convertToFolderType(J)I
    .locals 4
    .param p0, "extraBtFolderType"    # J

    .line 910
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 911
    return v1

    .line 912
    :cond_0
    const-wide/16 v2, 0x1

    cmp-long v0, p0, v2

    if-nez v0, :cond_1

    .line 913
    const/4 v0, 0x1

    return v0

    .line 914
    :cond_1
    const-wide/16 v2, 0x2

    cmp-long v0, p0, v2

    if-nez v0, :cond_2

    .line 915
    const/4 v0, 0x2

    return v0

    .line 916
    :cond_2
    const-wide/16 v2, 0x3

    cmp-long v0, p0, v2

    if-nez v0, :cond_3

    .line 917
    const/4 v0, 0x3

    return v0

    .line 918
    :cond_3
    const-wide/16 v2, 0x4

    cmp-long v0, p0, v2

    if-nez v0, :cond_4

    .line 919
    const/4 v0, 0x4

    return v0

    .line 920
    :cond_4
    const-wide/16 v2, 0x5

    cmp-long v0, p0, v2

    if-nez v0, :cond_5

    .line 921
    const/4 v0, 0x5

    return v0

    .line 922
    :cond_5
    const-wide/16 v2, 0x6

    cmp-long v0, p0, v2

    if-nez v0, :cond_6

    .line 923
    const/4 v0, 0x6

    return v0

    .line 925
    :cond_6
    return v1
.end method

.method public static convertToIsDeviceMuted(Landroidx/media3/session/legacy/MediaControllerCompat$PlaybackInfo;)Z
    .locals 2
    .param p0, "playbackInfoCompat"    # Landroidx/media3/session/legacy/MediaControllerCompat$PlaybackInfo;

    .line 1643
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 1644
    return v0

    .line 1646
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/session/legacy/MediaControllerCompat$PlaybackInfo;->getCurrentVolume()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static convertToIsPlaying(Landroidx/media3/session/legacy/PlaybackStateCompat;)Z
    .locals 3
    .param p0, "playbackStateCompat"    # Landroidx/media3/session/legacy/PlaybackStateCompat;

    .line 1130
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 1131
    return v0

    .line 1133
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/session/legacy/PlaybackStateCompat;->getState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static convertToIsPlayingAd(Landroidx/media3/session/legacy/MediaMetadataCompat;)Z
    .locals 5
    .param p0, "metadataCompat"    # Landroidx/media3/session/legacy/MediaMetadataCompat;

    .line 1138
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 1139
    return v0

    .line 1141
    :cond_0
    const-string v1, "android.media.metadata.ADVERTISEMENT"

    invoke-virtual {p0, v1}, Landroidx/media3/session/legacy/MediaMetadataCompat;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static convertToLegacyErrorCode(I)I
    .locals 1
    .param p0, "errorCode"    # I

    .line 301
    sparse-switch p0, :sswitch_data_0

    .line 326
    const/4 v0, 0x0

    return v0

    .line 303
    :sswitch_0
    const/16 v0, 0xa

    return v0

    .line 305
    :sswitch_1
    const/4 v0, 0x1

    return v0

    .line 317
    :sswitch_2
    const/4 v0, 0x2

    return v0

    .line 307
    :sswitch_3
    const/4 v0, 0x3

    return v0

    .line 321
    :sswitch_4
    const/4 v0, 0x4

    return v0

    .line 311
    :sswitch_5
    const/4 v0, 0x5

    return v0

    .line 319
    :sswitch_6
    const/4 v0, 0x6

    return v0

    .line 315
    :sswitch_7
    const/4 v0, 0x7

    return v0

    .line 323
    :sswitch_8
    const/16 v0, 0x9

    return v0

    .line 313
    :sswitch_9
    const/16 v0, 0xb

    return v0

    .line 309
    :sswitch_a
    const/16 v0, 0x8

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6e -> :sswitch_a
        -0x6d -> :sswitch_9
        -0x6b -> :sswitch_8
        -0x6a -> :sswitch_7
        -0x69 -> :sswitch_6
        -0x68 -> :sswitch_5
        -0x67 -> :sswitch_4
        -0x66 -> :sswitch_3
        -0x6 -> :sswitch_2
        -0x2 -> :sswitch_1
        0x1 -> :sswitch_0
    .end sparse-switch
.end method

.method public static convertToLegacyErrorCode(Landroidx/media3/common/PlaybackException;)I
    .locals 1
    .param p0, "playbackException"    # Landroidx/media3/common/PlaybackException;

    .line 333
    iget v0, p0, Landroidx/media3/common/PlaybackException;->errorCode:I

    invoke-static {v0}, Landroidx/media3/session/LegacyConversions;->convertToLegacyErrorCode(I)I

    move-result v0

    return v0
.end method

.method public static convertToLibraryParams(Landroid/content/Context;Landroid/os/Bundle;)Landroidx/media3/session/MediaLibraryService$LibraryParams;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "legacyBundle"    # Landroid/os/Bundle;

    .line 1305
    const-string v0, "androidx.media.MediaBrowserCompat.Extras.KEY_ROOT_CHILDREN_SUPPORTED_FLAGS"

    if-nez p1, :cond_0

    .line 1306
    const/4 v0, 0x0

    return-object v0

    .line 1309
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 1310
    nop

    .line 1311
    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1313
    .local v1, "supportedChildrenFlags":I
    if-ltz v1, :cond_2

    .line 1314
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1315
    const-string v0, "androidx.media3.session.LibraryParams.Extras.KEY_ROOT_CHILDREN_BROWSABLE_ONLY"

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1319
    :cond_2
    new-instance v0, Landroidx/media3/session/MediaLibraryService$LibraryParams$Builder;

    invoke-direct {v0}, Landroidx/media3/session/MediaLibraryService$LibraryParams$Builder;-><init>()V

    .line 1320
    invoke-virtual {v0, p1}, Landroidx/media3/session/MediaLibraryService$LibraryParams$Builder;->setExtras(Landroid/os/Bundle;)Landroidx/media3/session/MediaLibraryService$LibraryParams$Builder;

    move-result-object v0

    const-string v2, "android.service.media.extra.RECENT"

    .line 1321
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/media3/session/MediaLibraryService$LibraryParams$Builder;->setRecent(Z)Landroidx/media3/session/MediaLibraryService$LibraryParams$Builder;

    move-result-object v0

    const-string v2, "android.service.media.extra.OFFLINE"

    .line 1322
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/media3/session/MediaLibraryService$LibraryParams$Builder;->setOffline(Z)Landroidx/media3/session/MediaLibraryService$LibraryParams$Builder;

    move-result-object v0

    const-string v2, "android.service.media.extra.SUGGESTED"

    .line 1323
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/media3/session/MediaLibraryService$LibraryParams$Builder;->setSuggested(Z)Landroidx/media3/session/MediaLibraryService$LibraryParams$Builder;

    move-result-object v0

    .line 1324
    invoke-virtual {v0}, Landroidx/media3/session/MediaLibraryService$LibraryParams$Builder;->build()Landroidx/media3/session/MediaLibraryService$LibraryParams;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1319
    return-object v0

    .line 1325
    .end local v1    # "supportedChildrenFlags":I
    :catch_0
    move-exception v0

    .line 1327
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Landroidx/media3/session/MediaLibraryService$LibraryParams$Builder;

    invoke-direct {v1}, Landroidx/media3/session/MediaLibraryService$LibraryParams$Builder;-><init>()V

    invoke-virtual {v1, p1}, Landroidx/media3/session/MediaLibraryService$LibraryParams$Builder;->setExtras(Landroid/os/Bundle;)Landroidx/media3/session/MediaLibraryService$LibraryParams$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media3/session/MediaLibraryService$LibraryParams$Builder;->build()Landroidx/media3/session/MediaLibraryService$LibraryParams;

    move-result-object v1

    return-object v1
.end method

.method public static convertToMediaButtonPreferences(Landroidx/media3/session/legacy/PlaybackStateCompat;)Lcom/google/common/collect/ImmutableList;
    .locals 10
    .param p0, "state"    # Landroidx/media3/session/legacy/PlaybackStateCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/session/legacy/PlaybackStateCompat;",
            ")",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/session/CommandButton;",
            ">;"
        }
    .end annotation

    .line 1504
    if-nez p0, :cond_0

    .line 1505
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0

    .line 1507
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/session/legacy/PlaybackStateCompat;->getCustomActions()Ljava/util/List;

    move-result-object v0

    .line 1508
    .local v0, "customActions":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/session/legacy/PlaybackStateCompat$CustomAction;>;"
    if-nez v0, :cond_1

    .line 1509
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    return-object v1

    .line 1511
    :cond_1
    new-instance v1, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v1}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    .line 1512
    .local v1, "mediaButtonPreferences":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Landroidx/media3/session/CommandButton;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/session/legacy/PlaybackStateCompat$CustomAction;

    .line 1513
    .local v3, "customAction":Landroidx/media3/session/legacy/PlaybackStateCompat$CustomAction;
    invoke-virtual {v3}, Landroidx/media3/session/legacy/PlaybackStateCompat$CustomAction;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 1514
    .local v4, "action":Ljava/lang/String;
    invoke-virtual {v3}, Landroidx/media3/session/legacy/PlaybackStateCompat$CustomAction;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    .line 1517
    .local v5, "extras":Landroid/os/Bundle;
    const/4 v6, 0x0

    if-eqz v5, :cond_2

    .line 1518
    const-string v7, "androidx.media3.session.EXTRAS_KEY_COMMAND_BUTTON_ICON_COMPAT"

    invoke-virtual {v5, v7, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    goto :goto_1

    .line 1521
    :cond_2
    nop

    :goto_1
    nop

    .line 1523
    .local v6, "icon":I
    new-instance v7, Landroidx/media3/session/CommandButton$Builder;

    .line 1524
    invoke-virtual {v3}, Landroidx/media3/session/legacy/PlaybackStateCompat$CustomAction;->getIcon()I

    move-result v8

    invoke-direct {v7, v6, v8}, Landroidx/media3/session/CommandButton$Builder;-><init>(II)V

    new-instance v8, Landroidx/media3/session/SessionCommand;

    .line 1525
    if-nez v5, :cond_3

    sget-object v9, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    goto :goto_2

    :cond_3
    move-object v9, v5

    :goto_2
    invoke-direct {v8, v4, v9}, Landroidx/media3/session/SessionCommand;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v7, v8}, Landroidx/media3/session/CommandButton$Builder;->setSessionCommand(Landroidx/media3/session/SessionCommand;)Landroidx/media3/session/CommandButton$Builder;

    move-result-object v7

    .line 1526
    invoke-virtual {v3}, Landroidx/media3/session/legacy/PlaybackStateCompat$CustomAction;->getName()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroidx/media3/session/CommandButton$Builder;->setDisplayName(Ljava/lang/CharSequence;)Landroidx/media3/session/CommandButton$Builder;

    move-result-object v7

    .line 1527
    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroidx/media3/session/CommandButton$Builder;->setEnabled(Z)Landroidx/media3/session/CommandButton$Builder;

    move-result-object v7

    .line 1528
    invoke-virtual {v7}, Landroidx/media3/session/CommandButton$Builder;->build()Landroidx/media3/session/CommandButton;

    move-result-object v7

    .line 1529
    .local v7, "button":Landroidx/media3/session/CommandButton;
    invoke-virtual {v1, v7}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 1530
    .end local v3    # "customAction":Landroidx/media3/session/legacy/PlaybackStateCompat$CustomAction;
    .end local v4    # "action":Ljava/lang/String;
    .end local v5    # "extras":Landroid/os/Bundle;
    .end local v6    # "icon":I
    .end local v7    # "button":Landroidx/media3/session/CommandButton;
    goto :goto_0

    .line 1531
    :cond_4
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    return-object v2
.end method

.method public static convertToMediaDescriptionCompat(Landroidx/media3/common/MediaItem;Landroid/graphics/Bitmap;)Landroidx/media3/session/legacy/MediaDescriptionCompat;
    .locals 12
    .param p0, "item"    # Landroidx/media3/common/MediaItem;
    .param p1, "artworkBitmap"    # Landroid/graphics/Bitmap;

    .line 810
    new-instance v0, Landroidx/media3/session/legacy/MediaDescriptionCompat$Builder;

    invoke-direct {v0}, Landroidx/media3/session/legacy/MediaDescriptionCompat$Builder;-><init>()V

    .line 812
    iget-object v1, p0, Landroidx/media3/common/MediaItem;->mediaId:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroidx/media3/common/MediaItem;->mediaId:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v1}, Landroidx/media3/session/legacy/MediaDescriptionCompat$Builder;->setMediaId(Ljava/lang/String;)Landroidx/media3/session/legacy/MediaDescriptionCompat$Builder;

    move-result-object v0

    .line 813
    .local v0, "builder":Landroidx/media3/session/legacy/MediaDescriptionCompat$Builder;
    iget-object v1, p0, Landroidx/media3/common/MediaItem;->mediaMetadata:Landroidx/media3/common/MediaMetadata;

    .line 814
    .local v1, "metadata":Landroidx/media3/common/MediaMetadata;
    if-eqz p1, :cond_1

    .line 815
    invoke-virtual {v0, p1}, Landroidx/media3/session/legacy/MediaDescriptionCompat$Builder;->setIconBitmap(Landroid/graphics/Bitmap;)Landroidx/media3/session/legacy/MediaDescriptionCompat$Builder;

    .line 817
    :cond_1
    iget-object v2, v1, Landroidx/media3/common/MediaMetadata;->extras:Landroid/os/Bundle;

    .line 818
    .local v2, "extras":Landroid/os/Bundle;
    if-eqz v2, :cond_2

    .line 819
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object v2, v3

    .line 821
    :cond_2
    iget-object v3, v1, Landroidx/media3/common/MediaMetadata;->folderType:Ljava/lang/Integer;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_3

    iget-object v3, v1, Landroidx/media3/common/MediaMetadata;->folderType:Ljava/lang/Integer;

    .line 822
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v6, -0x1

    if-eq v3, v6, :cond_3

    move v3, v5

    goto :goto_1

    :cond_3
    move v3, v4

    .line 823
    .local v3, "hasFolderType":Z
    :goto_1
    iget-object v6, v1, Landroidx/media3/common/MediaMetadata;->mediaType:Ljava/lang/Integer;

    if-eqz v6, :cond_4

    move v6, v5

    goto :goto_2

    :cond_4
    move v6, v4

    .line 824
    .local v6, "hasMediaType":Z
    :goto_2
    if-nez v3, :cond_5

    if-eqz v6, :cond_8

    .line 825
    :cond_5
    if-nez v2, :cond_6

    .line 826
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    move-object v2, v7

    .line 828
    :cond_6
    if-eqz v3, :cond_7

    .line 829
    iget-object v7, v1, Landroidx/media3/common/MediaMetadata;->folderType:Ljava/lang/Integer;

    .line 831
    invoke-static {v7}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Landroidx/media3/session/LegacyConversions;->convertToExtraBtFolderType(I)J

    move-result-wide v7

    .line 829
    const-string v9, "android.media.extra.BT_FOLDER_TYPE"

    invoke-virtual {v2, v9, v7, v8}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 833
    :cond_7
    if-eqz v6, :cond_8

    .line 834
    iget-object v7, v1, Landroidx/media3/common/MediaMetadata;->mediaType:Ljava/lang/Integer;

    .line 835
    invoke-static {v7}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-long v7, v7

    .line 834
    const-string v9, "androidx.media3.session.EXTRAS_KEY_MEDIA_TYPE_COMPAT"

    invoke-virtual {v2, v9, v7, v8}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 838
    :cond_8
    iget-object v7, v1, Landroidx/media3/common/MediaMetadata;->supportedCommands:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v7}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_a

    .line 839
    if-nez v2, :cond_9

    .line 840
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    move-object v2, v7

    .line 842
    :cond_9
    new-instance v7, Ljava/util/ArrayList;

    iget-object v8, v1, Landroidx/media3/common/MediaMetadata;->supportedCommands:Lcom/google/common/collect/ImmutableList;

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v8, "androidx.media.utils.extras.CUSTOM_BROWSER_ACTION_ID_LIST"

    invoke-virtual {v2, v8, v7}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 849
    :cond_a
    iget-object v7, v1, Landroidx/media3/common/MediaMetadata;->displayTitle:Ljava/lang/CharSequence;

    if-eqz v7, :cond_c

    .line 850
    iget-object v4, v1, Landroidx/media3/common/MediaMetadata;->displayTitle:Ljava/lang/CharSequence;

    .line 851
    .local v4, "title":Ljava/lang/CharSequence;
    iget-object v5, v1, Landroidx/media3/common/MediaMetadata;->subtitle:Ljava/lang/CharSequence;

    .line 852
    .local v5, "subtitle":Ljava/lang/CharSequence;
    iget-object v7, v1, Landroidx/media3/common/MediaMetadata;->description:Ljava/lang/CharSequence;

    .line 853
    .local v7, "description":Ljava/lang/CharSequence;
    if-nez v2, :cond_b

    .line 854
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    move-object v2, v8

    .line 856
    :cond_b
    const-string v8, "androidx.media3.mediadescriptioncompat.title"

    iget-object v9, v1, Landroidx/media3/common/MediaMetadata;->title:Ljava/lang/CharSequence;

    invoke-virtual {v2, v8, v9}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 863
    .end local v4    # "title":Ljava/lang/CharSequence;
    .end local v5    # "subtitle":Ljava/lang/CharSequence;
    .end local v7    # "description":Ljava/lang/CharSequence;
    :cond_c
    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/CharSequence;

    .line 864
    .local v7, "texts":[Ljava/lang/CharSequence;
    const/4 v8, 0x0

    .line 865
    .local v8, "textIndex":I
    const/4 v9, 0x0

    .line 866
    .local v9, "keyIndex":I
    :goto_3
    array-length v10, v7

    if-ge v8, v10, :cond_e

    sget-object v10, Landroidx/media3/session/legacy/MediaMetadataCompat;->PREFERRED_DESCRIPTION_ORDER:[Ljava/lang/String;

    array-length v10, v10

    if-ge v9, v10, :cond_e

    .line 867
    sget-object v10, Landroidx/media3/session/legacy/MediaMetadataCompat;->PREFERRED_DESCRIPTION_ORDER:[Ljava/lang/String;

    add-int/lit8 v11, v9, 0x1

    .end local v9    # "keyIndex":I
    .local v11, "keyIndex":I
    aget-object v9, v10, v9

    invoke-static {v9, v1}, Landroidx/media3/session/LegacyConversions;->getText(Ljava/lang/String;Landroidx/media3/common/MediaMetadata;)Ljava/lang/CharSequence;

    move-result-object v9

    .line 868
    .local v9, "next":Ljava/lang/CharSequence;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_d

    .line 870
    add-int/lit8 v10, v8, 0x1

    .end local v8    # "textIndex":I
    .local v10, "textIndex":I
    aput-object v9, v7, v8

    move v8, v10

    .line 872
    .end local v9    # "next":Ljava/lang/CharSequence;
    .end local v10    # "textIndex":I
    .restart local v8    # "textIndex":I
    :cond_d
    move v9, v11

    goto :goto_3

    .line 873
    .end local v11    # "keyIndex":I
    .local v9, "keyIndex":I
    :cond_e
    aget-object v4, v7, v4

    .line 874
    .restart local v4    # "title":Ljava/lang/CharSequence;
    aget-object v5, v7, v5

    .line 875
    .restart local v5    # "subtitle":Ljava/lang/CharSequence;
    const/4 v10, 0x2

    aget-object v10, v7, v10

    move-object v7, v10

    .line 877
    .end local v8    # "textIndex":I
    .end local v9    # "keyIndex":I
    .local v7, "description":Ljava/lang/CharSequence;
    :goto_4
    nop

    .line 878
    invoke-virtual {v0, v4}, Landroidx/media3/session/legacy/MediaDescriptionCompat$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/media3/session/legacy/MediaDescriptionCompat$Builder;

    move-result-object v8

    .line 879
    invoke-virtual {v8, v5}, Landroidx/media3/session/legacy/MediaDescriptionCompat$Builder;->setSubtitle(Ljava/lang/CharSequence;)Landroidx/media3/session/legacy/MediaDescriptionCompat$Builder;

    move-result-object v8

    .line 880
    invoke-virtual {v8, v7}, Landroidx/media3/session/legacy/MediaDescriptionCompat$Builder;->setDescription(Ljava/lang/CharSequence;)Landroidx/media3/session/legacy/MediaDescriptionCompat$Builder;

    move-result-object v8

    iget-object v9, v1, Landroidx/media3/common/MediaMetadata;->artworkUri:Landroid/net/Uri;

    .line 881
    invoke-virtual {v8, v9}, Landroidx/media3/session/legacy/MediaDescriptionCompat$Builder;->setIconUri(Landroid/net/Uri;)Landroidx/media3/session/legacy/MediaDescriptionCompat$Builder;

    move-result-object v8

    iget-object v9, p0, Landroidx/media3/common/MediaItem;->requestMetadata:Landroidx/media3/common/MediaItem$RequestMetadata;

    iget-object v9, v9, Landroidx/media3/common/MediaItem$RequestMetadata;->mediaUri:Landroid/net/Uri;

    .line 882
    invoke-virtual {v8, v9}, Landroidx/media3/session/legacy/MediaDescriptionCompat$Builder;->setMediaUri(Landroid/net/Uri;)Landroidx/media3/session/legacy/MediaDescriptionCompat$Builder;

    move-result-object v8

    .line 883
    invoke-virtual {v8, v2}, Landroidx/media3/session/legacy/MediaDescriptionCompat$Builder;->setExtras(Landroid/os/Bundle;)Landroidx/media3/session/legacy/MediaDescriptionCompat$Builder;

    move-result-object v8

    .line 884
    invoke-virtual {v8}, Landroidx/media3/session/legacy/MediaDescriptionCompat$Builder;->build()Landroidx/media3/session/legacy/MediaDescriptionCompat;

    move-result-object v8

    .line 877
    return-object v8
.end method

.method public static convertToMediaItem(Landroidx/media3/session/legacy/MediaBrowserCompat$MediaItem;)Landroidx/media3/common/MediaItem;
    .locals 3
    .param p0, "item"    # Landroidx/media3/session/legacy/MediaBrowserCompat$MediaItem;

    .line 352
    invoke-virtual {p0}, Landroidx/media3/session/legacy/MediaBrowserCompat$MediaItem;->getDescription()Landroidx/media3/session/legacy/MediaDescriptionCompat;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/media3/session/legacy/MediaBrowserCompat$MediaItem;->isBrowsable()Z

    move-result v1

    invoke-virtual {p0}, Landroidx/media3/session/legacy/MediaBrowserCompat$MediaItem;->isPlayable()Z

    move-result v2

    invoke-static {v0, v1, v2}, Landroidx/media3/session/LegacyConversions;->convertToMediaItem(Landroidx/media3/session/legacy/MediaDescriptionCompat;ZZ)Landroidx/media3/common/MediaItem;

    move-result-object v0

    return-object v0
.end method

.method public static convertToMediaItem(Landroidx/media3/session/legacy/MediaDescriptionCompat;)Landroidx/media3/common/MediaItem;
    .locals 2
    .param p0, "description"    # Landroidx/media3/session/legacy/MediaDescriptionCompat;

    .line 362
    invoke-static {p0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroidx/media3/session/LegacyConversions;->convertToMediaItem(Landroidx/media3/session/legacy/MediaDescriptionCompat;ZZ)Landroidx/media3/common/MediaItem;

    move-result-object v0

    return-object v0
.end method

.method private static convertToMediaItem(Landroidx/media3/session/legacy/MediaDescriptionCompat;ZZ)Landroidx/media3/common/MediaItem;
    .locals 4
    .param p0, "descriptionCompat"    # Landroidx/media3/session/legacy/MediaDescriptionCompat;
    .param p1, "browsable"    # Z
    .param p2, "playable"    # Z

    .line 396
    invoke-virtual {p0}, Landroidx/media3/session/legacy/MediaDescriptionCompat;->getMediaId()Ljava/lang/String;

    move-result-object v0

    .line 397
    .local v0, "mediaId":Ljava/lang/String;
    new-instance v1, Landroidx/media3/common/MediaItem$Builder;

    invoke-direct {v1}, Landroidx/media3/common/MediaItem$Builder;-><init>()V

    .line 398
    if-nez v0, :cond_0

    const-string v2, ""

    goto :goto_0

    :cond_0
    move-object v2, v0

    :goto_0
    invoke-virtual {v1, v2}, Landroidx/media3/common/MediaItem$Builder;->setMediaId(Ljava/lang/String;)Landroidx/media3/common/MediaItem$Builder;

    move-result-object v1

    new-instance v2, Landroidx/media3/common/MediaItem$RequestMetadata$Builder;

    invoke-direct {v2}, Landroidx/media3/common/MediaItem$RequestMetadata$Builder;-><init>()V

    .line 401
    invoke-virtual {p0}, Landroidx/media3/session/legacy/MediaDescriptionCompat;->getMediaUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/media3/common/MediaItem$RequestMetadata$Builder;->setMediaUri(Landroid/net/Uri;)Landroidx/media3/common/MediaItem$RequestMetadata$Builder;

    move-result-object v2

    .line 402
    invoke-virtual {v2}, Landroidx/media3/common/MediaItem$RequestMetadata$Builder;->build()Landroidx/media3/common/MediaItem$RequestMetadata;

    move-result-object v2

    .line 399
    invoke-virtual {v1, v2}, Landroidx/media3/common/MediaItem$Builder;->setRequestMetadata(Landroidx/media3/common/MediaItem$RequestMetadata;)Landroidx/media3/common/MediaItem$Builder;

    move-result-object v1

    .line 404
    const/4 v2, 0x0

    invoke-static {p0, v2, p1, p2}, Landroidx/media3/session/LegacyConversions;->convertToMediaMetadata(Landroidx/media3/session/legacy/MediaDescriptionCompat;IZZ)Landroidx/media3/common/MediaMetadata;

    move-result-object v2

    .line 403
    invoke-virtual {v1, v2}, Landroidx/media3/common/MediaItem$Builder;->setMediaMetadata(Landroidx/media3/common/MediaMetadata;)Landroidx/media3/common/MediaItem$Builder;

    move-result-object v1

    .line 406
    invoke-virtual {v1}, Landroidx/media3/common/MediaItem$Builder;->build()Landroidx/media3/common/MediaItem;

    move-result-object v1

    .line 397
    return-object v1
.end method

.method public static convertToMediaItem(Landroidx/media3/session/legacy/MediaMetadataCompat;I)Landroidx/media3/common/MediaItem;
    .locals 1
    .param p0, "metadataCompat"    # Landroidx/media3/session/legacy/MediaMetadataCompat;
    .param p1, "ratingType"    # I

    .line 369
    nop

    .line 370
    const-string v0, "android.media.metadata.MEDIA_ID"

    invoke-virtual {p0, v0}, Landroidx/media3/session/legacy/MediaMetadataCompat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 369
    invoke-static {v0, p0, p1}, Landroidx/media3/session/LegacyConversions;->convertToMediaItem(Ljava/lang/String;Landroidx/media3/session/legacy/MediaMetadataCompat;I)Landroidx/media3/common/MediaItem;

    move-result-object v0

    return-object v0
.end method

.method public static convertToMediaItem(Landroidx/media3/session/legacy/MediaSessionCompat$QueueItem;)Landroidx/media3/common/MediaItem;
    .locals 1
    .param p0, "item"    # Landroidx/media3/session/legacy/MediaSessionCompat$QueueItem;

    .line 357
    invoke-virtual {p0}, Landroidx/media3/session/legacy/MediaSessionCompat$QueueItem;->getDescription()Landroidx/media3/session/legacy/MediaDescriptionCompat;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/session/LegacyConversions;->convertToMediaItem(Landroidx/media3/session/legacy/MediaDescriptionCompat;)Landroidx/media3/common/MediaItem;

    move-result-object v0

    return-object v0
.end method

.method public static convertToMediaItem(Ljava/lang/String;Landroidx/media3/session/legacy/MediaMetadataCompat;I)Landroidx/media3/common/MediaItem;
    .locals 4
    .param p0, "mediaId"    # Ljava/lang/String;
    .param p1, "metadataCompat"    # Landroidx/media3/session/legacy/MediaMetadataCompat;
    .param p2, "ratingType"    # I

    .line 380
    new-instance v0, Landroidx/media3/common/MediaItem$Builder;

    invoke-direct {v0}, Landroidx/media3/common/MediaItem$Builder;-><init>()V

    .line 381
    .local v0, "builder":Landroidx/media3/common/MediaItem$Builder;
    if-eqz p0, :cond_0

    .line 382
    invoke-virtual {v0, p0}, Landroidx/media3/common/MediaItem$Builder;->setMediaId(Ljava/lang/String;)Landroidx/media3/common/MediaItem$Builder;

    .line 385
    :cond_0
    const-string v1, "android.media.metadata.MEDIA_URI"

    invoke-virtual {p1, v1}, Landroidx/media3/session/legacy/MediaMetadataCompat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 386
    .local v1, "mediaUriString":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 387
    new-instance v2, Landroidx/media3/common/MediaItem$RequestMetadata$Builder;

    invoke-direct {v2}, Landroidx/media3/common/MediaItem$RequestMetadata$Builder;-><init>()V

    .line 388
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/media3/common/MediaItem$RequestMetadata$Builder;->setMediaUri(Landroid/net/Uri;)Landroidx/media3/common/MediaItem$RequestMetadata$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/media3/common/MediaItem$RequestMetadata$Builder;->build()Landroidx/media3/common/MediaItem$RequestMetadata;

    move-result-object v2

    .line 387
    invoke-virtual {v0, v2}, Landroidx/media3/common/MediaItem$Builder;->setRequestMetadata(Landroidx/media3/common/MediaItem$RequestMetadata;)Landroidx/media3/common/MediaItem$Builder;

    .line 390
    :cond_1
    invoke-static {p1, p2}, Landroidx/media3/session/LegacyConversions;->convertToMediaMetadata(Landroidx/media3/session/legacy/MediaMetadataCompat;I)Landroidx/media3/common/MediaMetadata;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/media3/common/MediaItem$Builder;->setMediaMetadata(Landroidx/media3/common/MediaMetadata;)Landroidx/media3/common/MediaItem$Builder;

    .line 391
    invoke-virtual {v0}, Landroidx/media3/common/MediaItem$Builder;->build()Landroidx/media3/common/MediaItem;

    move-result-object v2

    return-object v2
.end method

.method public static convertToMediaItemList(Landroidx/media3/common/Timeline;)Ljava/util/List;
    .locals 4
    .param p0, "timeline"    # Landroidx/media3/common/Timeline;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/Timeline;",
            ")",
            "Ljava/util/List<",
            "Landroidx/media3/common/MediaItem;",
            ">;"
        }
    .end annotation

    .line 421
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 422
    .local v0, "mediaItems":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/MediaItem;>;"
    new-instance v1, Landroidx/media3/common/Timeline$Window;

    invoke-direct {v1}, Landroidx/media3/common/Timeline$Window;-><init>()V

    .line 423
    .local v1, "window":Landroidx/media3/common/Timeline$Window;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Landroidx/media3/common/Timeline;->getWindowCount()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 424
    invoke-virtual {p0, v2, v1}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object v3

    iget-object v3, v3, Landroidx/media3/common/Timeline$Window;->mediaItem:Landroidx/media3/common/MediaItem;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 423
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 426
    .end local v2    # "i":I
    :cond_0
    return-object v0
.end method

.method public static convertToMediaMetadata(Landroidx/media3/session/legacy/MediaDescriptionCompat;I)Landroidx/media3/common/MediaMetadata;
    .locals 2
    .param p0, "descriptionCompat"    # Landroidx/media3/session/legacy/MediaDescriptionCompat;
    .param p1, "ratingType"    # I

    .line 491
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Landroidx/media3/session/LegacyConversions;->convertToMediaMetadata(Landroidx/media3/session/legacy/MediaDescriptionCompat;IZZ)Landroidx/media3/common/MediaMetadata;

    move-result-object v0

    return-object v0
.end method

.method private static convertToMediaMetadata(Landroidx/media3/session/legacy/MediaDescriptionCompat;IZZ)Landroidx/media3/common/MediaMetadata;
    .locals 7
    .param p0, "descriptionCompat"    # Landroidx/media3/session/legacy/MediaDescriptionCompat;
    .param p1, "ratingType"    # I
    .param p2, "browsable"    # Z
    .param p3, "playable"    # Z

    .line 501
    if-nez p0, :cond_0

    .line 502
    sget-object v0, Landroidx/media3/common/MediaMetadata;->EMPTY:Landroidx/media3/common/MediaMetadata;

    return-object v0

    .line 505
    :cond_0
    new-instance v0, Landroidx/media3/common/MediaMetadata$Builder;

    invoke-direct {v0}, Landroidx/media3/common/MediaMetadata$Builder;-><init>()V

    .line 507
    .local v0, "builder":Landroidx/media3/common/MediaMetadata$Builder;
    nop

    .line 508
    invoke-virtual {p0}, Landroidx/media3/session/legacy/MediaDescriptionCompat;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/media3/common/MediaMetadata$Builder;->setSubtitle(Ljava/lang/CharSequence;)Landroidx/media3/common/MediaMetadata$Builder;

    move-result-object v1

    .line 509
    invoke-virtual {p0}, Landroidx/media3/session/legacy/MediaDescriptionCompat;->getDescription()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/media3/common/MediaMetadata$Builder;->setDescription(Ljava/lang/CharSequence;)Landroidx/media3/common/MediaMetadata$Builder;

    move-result-object v1

    .line 510
    invoke-virtual {p0}, Landroidx/media3/session/legacy/MediaDescriptionCompat;->getIconUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/media3/common/MediaMetadata$Builder;->setArtworkUri(Landroid/net/Uri;)Landroidx/media3/common/MediaMetadata$Builder;

    move-result-object v1

    .line 511
    invoke-static {p1}, Landroidx/media3/session/legacy/RatingCompat;->newUnratedRating(I)Landroidx/media3/session/legacy/RatingCompat;

    move-result-object v2

    invoke-static {v2}, Landroidx/media3/session/LegacyConversions;->convertToRating(Landroidx/media3/session/legacy/RatingCompat;)Landroidx/media3/common/Rating;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/media3/common/MediaMetadata$Builder;->setUserRating(Landroidx/media3/common/Rating;)Landroidx/media3/common/MediaMetadata$Builder;

    .line 513
    invoke-virtual {p0}, Landroidx/media3/session/legacy/MediaDescriptionCompat;->getIconBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 514
    .local v1, "iconBitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_1

    .line 515
    const/4 v2, 0x0

    .line 517
    .local v2, "artworkData":[B
    :try_start_0
    invoke-static {v1}, Landroidx/media3/session/LegacyConversions;->convertToByteArray(Landroid/graphics/Bitmap;)[B

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    .line 520
    goto :goto_0

    .line 518
    :catch_0
    move-exception v3

    .line 519
    .local v3, "e":Ljava/io/IOException;
    const-string v4, "LegacyConversions"

    const-string v5, "Failed to convert iconBitmap to artworkData"

    invoke-static {v4, v5, v3}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 521
    .end local v3    # "e":Ljava/io/IOException;
    :goto_0
    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroidx/media3/common/MediaMetadata$Builder;->setArtworkData([BLjava/lang/Integer;)Landroidx/media3/common/MediaMetadata$Builder;

    .line 524
    .end local v2    # "artworkData":[B
    :cond_1
    invoke-virtual {p0}, Landroidx/media3/session/legacy/MediaDescriptionCompat;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 525
    .local v2, "compatExtras":Landroid/os/Bundle;
    if-nez v2, :cond_2

    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 527
    .local v3, "extras":Landroid/os/Bundle;
    :goto_1
    if-eqz v3, :cond_3

    const-string v4, "android.media.extra.BT_FOLDER_TYPE"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 528
    nop

    .line 529
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v5, v6}, Landroidx/media3/session/LegacyConversions;->convertToFolderType(J)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 528
    invoke-virtual {v0, v5}, Landroidx/media3/common/MediaMetadata$Builder;->setFolderType(Ljava/lang/Integer;)Landroidx/media3/common/MediaMetadata$Builder;

    .line 530
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 532
    :cond_3
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroidx/media3/common/MediaMetadata$Builder;->setIsBrowsable(Ljava/lang/Boolean;)Landroidx/media3/common/MediaMetadata$Builder;

    .line 534
    if-eqz v3, :cond_4

    const-string v4, "androidx.media3.session.EXTRAS_KEY_MEDIA_TYPE_COMPAT"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 535
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    long-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroidx/media3/common/MediaMetadata$Builder;->setMediaType(Ljava/lang/Integer;)Landroidx/media3/common/MediaMetadata$Builder;

    .line 536
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 539
    :cond_4
    if-eqz v3, :cond_5

    .line 540
    const-string v4, "androidx.media.utils.extras.CUSTOM_BROWSER_ACTION_ID_LIST"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 541
    nop

    .line 544
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 543
    invoke-static {v4}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    .line 542
    invoke-static {v4}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    .line 541
    invoke-virtual {v0, v4}, Landroidx/media3/common/MediaMetadata$Builder;->setSupportedCommands(Ljava/util/List;)Landroidx/media3/common/MediaMetadata$Builder;

    .line 548
    :cond_5
    if-eqz v3, :cond_6

    .line 549
    const-string v4, "androidx.media3.mediadescriptioncompat.title"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 550
    nop

    .line 551
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 550
    invoke-virtual {v0, v5}, Landroidx/media3/common/MediaMetadata$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/media3/common/MediaMetadata$Builder;

    .line 552
    invoke-virtual {p0}, Landroidx/media3/session/legacy/MediaDescriptionCompat;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroidx/media3/common/MediaMetadata$Builder;->setDisplayTitle(Ljava/lang/CharSequence;)Landroidx/media3/common/MediaMetadata$Builder;

    .line 553
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_2

    .line 555
    :cond_6
    invoke-virtual {p0}, Landroidx/media3/session/legacy/MediaDescriptionCompat;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroidx/media3/common/MediaMetadata$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/media3/common/MediaMetadata$Builder;

    .line 558
    :goto_2
    if-eqz v3, :cond_7

    invoke-virtual {v3}, Landroid/os/Bundle;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7

    .line 559
    invoke-virtual {v0, v3}, Landroidx/media3/common/MediaMetadata$Builder;->setExtras(Landroid/os/Bundle;)Landroidx/media3/common/MediaMetadata$Builder;

    .line 562
    :cond_7
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroidx/media3/common/MediaMetadata$Builder;->setIsPlayable(Ljava/lang/Boolean;)Landroidx/media3/common/MediaMetadata$Builder;

    .line 564
    invoke-virtual {v0}, Landroidx/media3/common/MediaMetadata$Builder;->build()Landroidx/media3/common/MediaMetadata;

    move-result-object v4

    return-object v4
.end method

.method public static convertToMediaMetadata(Landroidx/media3/session/legacy/MediaMetadataCompat;I)Landroidx/media3/common/MediaMetadata;
    .locals 11
    .param p0, "metadataCompat"    # Landroidx/media3/session/legacy/MediaMetadataCompat;
    .param p1, "ratingType"    # I

    .line 571
    if-nez p0, :cond_0

    .line 572
    sget-object v0, Landroidx/media3/common/MediaMetadata;->EMPTY:Landroidx/media3/common/MediaMetadata;

    return-object v0

    .line 575
    :cond_0
    new-instance v0, Landroidx/media3/common/MediaMetadata$Builder;

    invoke-direct {v0}, Landroidx/media3/common/MediaMetadata$Builder;-><init>()V

    .line 577
    .local v0, "builder":Landroidx/media3/common/MediaMetadata$Builder;
    const-string v1, "android.media.metadata.TITLE"

    invoke-virtual {p0, v1}, Landroidx/media3/session/legacy/MediaMetadataCompat;->getText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 578
    .local v1, "title":Ljava/lang/CharSequence;
    nop

    .line 579
    const-string v2, "android.media.metadata.DISPLAY_TITLE"

    invoke-virtual {p0, v2}, Landroidx/media3/session/legacy/MediaMetadataCompat;->getText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 580
    .local v2, "displayTitle":Ljava/lang/CharSequence;
    nop

    .line 581
    if-eqz v1, :cond_1

    move-object v3, v1

    goto :goto_0

    :cond_1
    move-object v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroidx/media3/common/MediaMetadata$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/media3/common/MediaMetadata$Builder;

    move-result-object v3

    .line 582
    if-eqz v1, :cond_2

    move-object v4, v2

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v3, v4}, Landroidx/media3/common/MediaMetadata$Builder;->setDisplayTitle(Ljava/lang/CharSequence;)Landroidx/media3/common/MediaMetadata$Builder;

    move-result-object v3

    .line 583
    const-string v4, "android.media.metadata.DISPLAY_SUBTITLE"

    invoke-virtual {p0, v4}, Landroidx/media3/session/legacy/MediaMetadataCompat;->getText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/media3/common/MediaMetadata$Builder;->setSubtitle(Ljava/lang/CharSequence;)Landroidx/media3/common/MediaMetadata$Builder;

    move-result-object v3

    .line 585
    const-string v4, "android.media.metadata.DISPLAY_DESCRIPTION"

    invoke-virtual {p0, v4}, Landroidx/media3/session/legacy/MediaMetadataCompat;->getText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 584
    invoke-virtual {v3, v4}, Landroidx/media3/common/MediaMetadata$Builder;->setDescription(Ljava/lang/CharSequence;)Landroidx/media3/common/MediaMetadata$Builder;

    move-result-object v3

    .line 586
    const-string v4, "android.media.metadata.ARTIST"

    invoke-virtual {p0, v4}, Landroidx/media3/session/legacy/MediaMetadataCompat;->getText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/media3/common/MediaMetadata$Builder;->setArtist(Ljava/lang/CharSequence;)Landroidx/media3/common/MediaMetadata$Builder;

    move-result-object v3

    .line 587
    const-string v4, "android.media.metadata.ALBUM"

    invoke-virtual {p0, v4}, Landroidx/media3/session/legacy/MediaMetadataCompat;->getText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/media3/common/MediaMetadata$Builder;->setAlbumTitle(Ljava/lang/CharSequence;)Landroidx/media3/common/MediaMetadata$Builder;

    move-result-object v3

    .line 588
    const-string v4, "android.media.metadata.ALBUM_ARTIST"

    invoke-virtual {p0, v4}, Landroidx/media3/session/legacy/MediaMetadataCompat;->getText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/media3/common/MediaMetadata$Builder;->setAlbumArtist(Ljava/lang/CharSequence;)Landroidx/media3/common/MediaMetadata$Builder;

    move-result-object v3

    .line 590
    const-string v4, "android.media.metadata.RATING"

    invoke-virtual {p0, v4}, Landroidx/media3/session/legacy/MediaMetadataCompat;->getRating(Ljava/lang/String;)Landroidx/media3/session/legacy/RatingCompat;

    move-result-object v4

    invoke-static {v4}, Landroidx/media3/session/LegacyConversions;->convertToRating(Landroidx/media3/session/legacy/RatingCompat;)Landroidx/media3/common/Rating;

    move-result-object v4

    .line 589
    invoke-virtual {v3, v4}, Landroidx/media3/common/MediaMetadata$Builder;->setOverallRating(Landroidx/media3/common/Rating;)Landroidx/media3/common/MediaMetadata$Builder;

    .line 592
    const-string v3, "android.media.metadata.DURATION"

    invoke-virtual {p0, v3}, Landroidx/media3/session/legacy/MediaMetadataCompat;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 593
    invoke-virtual {p0, v3}, Landroidx/media3/session/legacy/MediaMetadataCompat;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 594
    .local v3, "durationMs":J
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-ltz v5, :cond_3

    .line 597
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroidx/media3/common/MediaMetadata$Builder;->setDurationMs(Ljava/lang/Long;)Landroidx/media3/common/MediaMetadata$Builder;

    .line 602
    .end local v3    # "durationMs":J
    :cond_3
    nop

    .line 603
    const-string v3, "android.media.metadata.USER_RATING"

    invoke-virtual {p0, v3}, Landroidx/media3/session/legacy/MediaMetadataCompat;->getRating(Ljava/lang/String;)Landroidx/media3/session/legacy/RatingCompat;

    move-result-object v3

    invoke-static {v3}, Landroidx/media3/session/LegacyConversions;->convertToRating(Landroidx/media3/session/legacy/RatingCompat;)Landroidx/media3/common/Rating;

    move-result-object v3

    .line 604
    .local v3, "userRating":Landroidx/media3/common/Rating;
    if-eqz v3, :cond_4

    .line 605
    invoke-virtual {v0, v3}, Landroidx/media3/common/MediaMetadata$Builder;->setUserRating(Landroidx/media3/common/Rating;)Landroidx/media3/common/MediaMetadata$Builder;

    goto :goto_2

    .line 607
    :cond_4
    invoke-static {p1}, Landroidx/media3/session/legacy/RatingCompat;->newUnratedRating(I)Landroidx/media3/session/legacy/RatingCompat;

    move-result-object v4

    invoke-static {v4}, Landroidx/media3/session/LegacyConversions;->convertToRating(Landroidx/media3/session/legacy/RatingCompat;)Landroidx/media3/common/Rating;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroidx/media3/common/MediaMetadata$Builder;->setUserRating(Landroidx/media3/common/Rating;)Landroidx/media3/common/MediaMetadata$Builder;

    .line 610
    :goto_2
    const-string v4, "android.media.metadata.YEAR"

    invoke-virtual {p0, v4}, Landroidx/media3/session/legacy/MediaMetadataCompat;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 611
    invoke-virtual {p0, v4}, Landroidx/media3/session/legacy/MediaMetadataCompat;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 612
    .local v4, "year":J
    long-to-int v6, v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroidx/media3/common/MediaMetadata$Builder;->setRecordingYear(Ljava/lang/Integer;)Landroidx/media3/common/MediaMetadata$Builder;

    .line 616
    .end local v4    # "year":J
    :cond_5
    const/4 v4, 0x3

    new-array v5, v4, [Ljava/lang/String;

    const-string v6, "android.media.metadata.DISPLAY_ICON_URI"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const-string v6, "android.media.metadata.ALBUM_ART_URI"

    const/4 v8, 0x1

    aput-object v6, v5, v8

    const-string v6, "android.media.metadata.ART_URI"

    const/4 v9, 0x2

    aput-object v6, v5, v9

    .line 617
    invoke-static {p0, v5}, Landroidx/media3/session/LegacyConversions;->getFirstString(Landroidx/media3/session/legacy/MediaMetadataCompat;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 622
    .local v5, "artworkUriString":Ljava/lang/String;
    if-eqz v5, :cond_6

    .line 623
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroidx/media3/common/MediaMetadata$Builder;->setArtworkUri(Landroid/net/Uri;)Landroidx/media3/common/MediaMetadata$Builder;

    .line 627
    :cond_6
    new-array v6, v4, [Ljava/lang/String;

    const-string v10, "android.media.metadata.DISPLAY_ICON"

    aput-object v10, v6, v7

    const-string v7, "android.media.metadata.ALBUM_ART"

    aput-object v7, v6, v8

    const-string v7, "android.media.metadata.ART"

    aput-object v7, v6, v9

    .line 628
    invoke-static {p0, v6}, Landroidx/media3/session/LegacyConversions;->getFirstBitmap(Landroidx/media3/session/legacy/MediaMetadataCompat;[Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 633
    .local v6, "artworkBitmap":Landroid/graphics/Bitmap;
    if-eqz v6, :cond_7

    .line 635
    :try_start_0
    invoke-static {v6}, Landroidx/media3/session/LegacyConversions;->convertToByteArray(Landroid/graphics/Bitmap;)[B

    move-result-object v7

    .line 636
    .local v7, "artworkData":[B
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v7, v4}, Landroidx/media3/common/MediaMetadata$Builder;->setArtworkData([BLjava/lang/Integer;)Landroidx/media3/common/MediaMetadata$Builder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 639
    nop

    .end local v7    # "artworkData":[B
    goto :goto_3

    .line 637
    :catch_0
    move-exception v4

    .line 638
    .local v4, "e":Ljava/io/IOException;
    const-string v7, "LegacyConversions"

    const-string v9, "Failed to convert artworkBitmap to artworkData"

    invoke-static {v7, v9, v4}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 642
    .end local v4    # "e":Ljava/io/IOException;
    :cond_7
    :goto_3
    nop

    .line 643
    const-string v4, "android.media.metadata.BT_FOLDER_TYPE"

    invoke-virtual {p0, v4}, Landroidx/media3/session/legacy/MediaMetadataCompat;->containsKey(Ljava/lang/String;)Z

    move-result v7

    .line 644
    .local v7, "isBrowsable":Z
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroidx/media3/common/MediaMetadata$Builder;->setIsBrowsable(Ljava/lang/Boolean;)Landroidx/media3/common/MediaMetadata$Builder;

    .line 645
    if-eqz v7, :cond_8

    .line 646
    nop

    .line 648
    invoke-virtual {p0, v4}, Landroidx/media3/session/legacy/MediaMetadataCompat;->getLong(Ljava/lang/String;)J

    move-result-wide v9

    .line 647
    invoke-static {v9, v10}, Landroidx/media3/session/LegacyConversions;->convertToFolderType(J)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 646
    invoke-virtual {v0, v4}, Landroidx/media3/common/MediaMetadata$Builder;->setFolderType(Ljava/lang/Integer;)Landroidx/media3/common/MediaMetadata$Builder;

    .line 651
    :cond_8
    const-string v4, "androidx.media3.session.EXTRAS_KEY_MEDIA_TYPE_COMPAT"

    invoke-virtual {p0, v4}, Landroidx/media3/session/legacy/MediaMetadataCompat;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 652
    nop

    .line 653
    invoke-virtual {p0, v4}, Landroidx/media3/session/legacy/MediaMetadataCompat;->getLong(Ljava/lang/String;)J

    move-result-wide v9

    long-to-int v4, v9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 652
    invoke-virtual {v0, v4}, Landroidx/media3/common/MediaMetadata$Builder;->setMediaType(Ljava/lang/Integer;)Landroidx/media3/common/MediaMetadata$Builder;

    .line 656
    :cond_9
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroidx/media3/common/MediaMetadata$Builder;->setIsPlayable(Ljava/lang/Boolean;)Landroidx/media3/common/MediaMetadata$Builder;

    .line 658
    invoke-virtual {p0}, Landroidx/media3/session/legacy/MediaMetadataCompat;->getBundle()Landroid/os/Bundle;

    move-result-object v4

    .line 659
    .local v4, "extras":Landroid/os/Bundle;
    sget-object v8, Landroidx/media3/session/LegacyConversions;->KNOWN_METADATA_COMPAT_KEYS:Lcom/google/common/collect/ImmutableSet;

    invoke-virtual {v8}, Lcom/google/common/collect/ImmutableSet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v8

    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 660
    .local v9, "key":Ljava/lang/String;
    invoke-virtual {v4, v9}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 661
    .end local v9    # "key":Ljava/lang/String;
    goto :goto_4

    .line 662
    :cond_a
    invoke-virtual {v4}, Landroid/os/Bundle;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_b

    .line 663
    invoke-virtual {v0, v4}, Landroidx/media3/common/MediaMetadata$Builder;->setExtras(Landroid/os/Bundle;)Landroidx/media3/common/MediaMetadata$Builder;

    .line 666
    :cond_b
    invoke-virtual {v0}, Landroidx/media3/common/MediaMetadata$Builder;->build()Landroidx/media3/common/MediaMetadata;

    move-result-object v8

    return-object v8
.end method

.method public static convertToMediaMetadata(Ljava/lang/CharSequence;)Landroidx/media3/common/MediaMetadata;
    .locals 1
    .param p0, "queueTitle"    # Ljava/lang/CharSequence;

    .line 483
    if-nez p0, :cond_0

    .line 484
    sget-object v0, Landroidx/media3/common/MediaMetadata;->EMPTY:Landroidx/media3/common/MediaMetadata;

    return-object v0

    .line 486
    :cond_0
    new-instance v0, Landroidx/media3/common/MediaMetadata$Builder;

    invoke-direct {v0}, Landroidx/media3/common/MediaMetadata$Builder;-><init>()V

    invoke-virtual {v0, p0}, Landroidx/media3/common/MediaMetadata$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/media3/common/MediaMetadata$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/MediaMetadata$Builder;->build()Landroidx/media3/common/MediaMetadata;

    move-result-object v0

    return-object v0
.end method

.method public static convertToMediaMetadataCompat(Landroidx/media3/common/MediaMetadata;Ljava/lang/String;Landroid/net/Uri;JLandroid/graphics/Bitmap;)Landroidx/media3/session/legacy/MediaMetadataCompat;
    .locals 8
    .param p0, "metadata"    # Landroidx/media3/common/MediaMetadata;
    .param p1, "mediaId"    # Ljava/lang/String;
    .param p2, "mediaUri"    # Landroid/net/Uri;
    .param p3, "durationMs"    # J
    .param p5, "artworkBitmap"    # Landroid/graphics/Bitmap;

    .line 708
    new-instance v0, Landroidx/media3/session/legacy/MediaMetadataCompat$Builder;

    invoke-direct {v0}, Landroidx/media3/session/legacy/MediaMetadataCompat$Builder;-><init>()V

    .line 710
    const-string v1, "android.media.metadata.MEDIA_ID"

    invoke-virtual {v0, v1, p1}, Landroidx/media3/session/legacy/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroidx/media3/session/legacy/MediaMetadataCompat$Builder;

    move-result-object v0

    .line 712
    .local v0, "builder":Landroidx/media3/session/legacy/MediaMetadataCompat$Builder;
    iget-object v1, p0, Landroidx/media3/common/MediaMetadata;->title:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    .line 713
    const-string v1, "android.media.metadata.TITLE"

    iget-object v2, p0, Landroidx/media3/common/MediaMetadata;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroidx/media3/session/legacy/MediaMetadataCompat$Builder;->putText(Ljava/lang/String;Ljava/lang/CharSequence;)Landroidx/media3/session/legacy/MediaMetadataCompat$Builder;

    .line 716
    :cond_0
    iget-object v1, p0, Landroidx/media3/common/MediaMetadata;->displayTitle:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    .line 717
    const-string v1, "android.media.metadata.DISPLAY_TITLE"

    iget-object v2, p0, Landroidx/media3/common/MediaMetadata;->displayTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroidx/media3/session/legacy/MediaMetadataCompat$Builder;->putText(Ljava/lang/String;Ljava/lang/CharSequence;)Landroidx/media3/session/legacy/MediaMetadataCompat$Builder;

    .line 720
    :cond_1
    iget-object v1, p0, Landroidx/media3/common/MediaMetadata;->subtitle:Ljava/lang/CharSequence;

    if-eqz v1, :cond_2

    .line 721
    const-string v1, "android.media.metadata.DISPLAY_SUBTITLE"

    iget-object v2, p0, Landroidx/media3/common/MediaMetadata;->subtitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroidx/media3/session/legacy/MediaMetadataCompat$Builder;->putText(Ljava/lang/String;Ljava/lang/CharSequence;)Landroidx/media3/session/legacy/MediaMetadataCompat$Builder;

    .line 724
    :cond_2
    iget-object v1, p0, Landroidx/media3/common/MediaMetadata;->description:Ljava/lang/CharSequence;

    if-eqz v1, :cond_3

    .line 725
    const-string v1, "android.media.metadata.DISPLAY_DESCRIPTION"

    iget-object v2, p0, Landroidx/media3/common/MediaMetadata;->description:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroidx/media3/session/legacy/MediaMetadataCompat$Builder;->putText(Ljava/lang/String;Ljava/lang/CharSequence;)Landroidx/media3/session/legacy/MediaMetadataCompat$Builder;

    .line 728
    :cond_3
    iget-object v1, p0, Landroidx/media3/common/MediaMetadata;->artist:Ljava/lang/CharSequence;

    if-eqz v1, :cond_4

    .line 729
    const-string v1, "android.media.metadata.ARTIST"

    iget-object v2, p0, Landroidx/media3/common/MediaMetadata;->artist:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroidx/media3/session/legacy/MediaMetadataCompat$Builder;->putText(Ljava/lang/String;Ljava/lang/CharSequence;)Landroidx/media3/session/legacy/MediaMetadataCompat$Builder;

    .line 732
    :cond_4
    iget-object v1, p0, Landroidx/media3/common/MediaMetadata;->albumTitle:Ljava/lang/CharSequence;

    if-eqz v1, :cond_5

    .line 733
    const-string v1, "android.media.metadata.ALBUM"

    iget-object v2, p0, Landroidx/media3/common/MediaMetadata;->albumTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroidx/media3/session/legacy/MediaMetadataCompat$Builder;->putText(Ljava/lang/String;Ljava/lang/CharSequence;)Landroidx/media3/session/legacy/MediaMetadataCompat$Builder;

    .line 736
    :cond_5
    iget-object v1, p0, Landroidx/media3/common/MediaMetadata;->albumArtist:Ljava/lang/CharSequence;

    if-eqz v1, :cond_6

    .line 737
    const-string v1, "android.media.metadata.ALBUM_ARTIST"

    iget-object v2, p0, Landroidx/media3/common/MediaMetadata;->albumArtist:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroidx/media3/session/legacy/MediaMetadataCompat$Builder;->putText(Ljava/lang/String;Ljava/lang/CharSequence;)Landroidx/media3/session/legacy/MediaMetadataCompat$Builder;

    .line 740
    :cond_6
    iget-object v1, p0, Landroidx/media3/common/MediaMetadata;->recordingYear:Ljava/lang/Integer;

    if-eqz v1, :cond_7

    .line 741
    iget-object v1, p0, Landroidx/media3/common/MediaMetadata;->recordingYear:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v1, v1

    const-string v3, "android.media.metadata.YEAR"

    invoke-virtual {v0, v3, v1, v2}, Landroidx/media3/session/legacy/MediaMetadataCompat$Builder;->putLong(Ljava/lang/String;J)Landroidx/media3/session/legacy/MediaMetadataCompat$Builder;

    .line 744
    :cond_7
    if-eqz p2, :cond_8

    .line 745
    const-string v1, "android.media.metadata.MEDIA_URI"

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/media3/session/legacy/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroidx/media3/session/legacy/MediaMetadataCompat$Builder;

    .line 748
    :cond_8
    iget-object v1, p0, Landroidx/media3/common/MediaMetadata;->artworkUri:Landroid/net/Uri;

    if-eqz v1, :cond_9

    .line 749
    iget-object v1, p0, Landroidx/media3/common/MediaMetadata;->artworkUri:Landroid/net/Uri;

    .line 750
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 749
    const-string v2, "android.media.metadata.DISPLAY_ICON_URI"

    invoke-virtual {v0, v2, v1}, Landroidx/media3/session/legacy/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroidx/media3/session/legacy/MediaMetadataCompat$Builder;

    .line 751
    iget-object v1, p0, Landroidx/media3/common/MediaMetadata;->artworkUri:Landroid/net/Uri;

    .line 752
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 751
    const-string v2, "android.media.metadata.ALBUM_ART_URI"

    invoke-virtual {v0, v2, v1}, Landroidx/media3/session/legacy/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroidx/media3/session/legacy/MediaMetadataCompat$Builder;

    .line 753
    iget-object v1, p0, Landroidx/media3/common/MediaMetadata;->artworkUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.media.metadata.ART_URI"

    invoke-virtual {v0, v2, v1}, Landroidx/media3/session/legacy/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroidx/media3/session/legacy/MediaMetadataCompat$Builder;

    .line 756
    :cond_9
    if-eqz p5, :cond_a

    .line 757
    const-string v1, "android.media.metadata.DISPLAY_ICON"

    invoke-virtual {v0, v1, p5}, Landroidx/media3/session/legacy/MediaMetadataCompat$Builder;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroidx/media3/session/legacy/MediaMetadataCompat$Builder;

    .line 758
    const-string v1, "android.media.metadata.ALBUM_ART"

    invoke-virtual {v0, v1, p5}, Landroidx/media3/session/legacy/MediaMetadataCompat$Builder;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroidx/media3/session/legacy/MediaMetadataCompat$Builder;

    .line 761
    :cond_a
    iget-object v1, p0, Landroidx/media3/common/MediaMetadata;->folderType:Ljava/lang/Integer;

    if-eqz v1, :cond_b

    iget-object v1, p0, Landroidx/media3/common/MediaMetadata;->folderType:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_b

    .line 762
    iget-object v1, p0, Landroidx/media3/common/MediaMetadata;->folderType:Ljava/lang/Integer;

    .line 764
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Landroidx/media3/session/LegacyConversions;->convertToExtraBtFolderType(I)J

    move-result-wide v1

    .line 762
    const-string v3, "android.media.metadata.BT_FOLDER_TYPE"

    invoke-virtual {v0, v3, v1, v2}, Landroidx/media3/session/legacy/MediaMetadataCompat$Builder;->putLong(Ljava/lang/String;J)Landroidx/media3/session/legacy/MediaMetadataCompat$Builder;

    .line 767
    :cond_b
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, p3, v1

    if-nez v3, :cond_c

    iget-object v3, p0, Landroidx/media3/common/MediaMetadata;->durationMs:Ljava/lang/Long;

    if-eqz v3, :cond_c

    .line 769
    iget-object v3, p0, Landroidx/media3/common/MediaMetadata;->durationMs:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide p3

    .line 771
    :cond_c
    cmp-long v1, p3, v1

    if-eqz v1, :cond_d

    .line 772
    const-string v1, "android.media.metadata.DURATION"

    invoke-virtual {v0, v1, p3, p4}, Landroidx/media3/session/legacy/MediaMetadataCompat$Builder;->putLong(Ljava/lang/String;J)Landroidx/media3/session/legacy/MediaMetadataCompat$Builder;

    .line 775
    :cond_d
    iget-object v1, p0, Landroidx/media3/common/MediaMetadata;->userRating:Landroidx/media3/common/Rating;

    invoke-static {v1}, Landroidx/media3/session/LegacyConversions;->convertToRatingCompat(Landroidx/media3/common/Rating;)Landroidx/media3/session/legacy/RatingCompat;

    move-result-object v1

    .line 776
    .local v1, "userRatingCompat":Landroidx/media3/session/legacy/RatingCompat;
    if-eqz v1, :cond_e

    .line 777
    const-string v2, "android.media.metadata.USER_RATING"

    invoke-virtual {v0, v2, v1}, Landroidx/media3/session/legacy/MediaMetadataCompat$Builder;->putRating(Ljava/lang/String;Landroidx/media3/session/legacy/RatingCompat;)Landroidx/media3/session/legacy/MediaMetadataCompat$Builder;

    .line 780
    :cond_e
    iget-object v2, p0, Landroidx/media3/common/MediaMetadata;->overallRating:Landroidx/media3/common/Rating;

    invoke-static {v2}, Landroidx/media3/session/LegacyConversions;->convertToRatingCompat(Landroidx/media3/common/Rating;)Landroidx/media3/session/legacy/RatingCompat;

    move-result-object v2

    .line 781
    .local v2, "overallRatingCompat":Landroidx/media3/session/legacy/RatingCompat;
    if-eqz v2, :cond_f

    .line 782
    const-string v3, "android.media.metadata.RATING"

    invoke-virtual {v0, v3, v2}, Landroidx/media3/session/legacy/MediaMetadataCompat$Builder;->putRating(Ljava/lang/String;Landroidx/media3/session/legacy/RatingCompat;)Landroidx/media3/session/legacy/MediaMetadataCompat$Builder;

    .line 785
    :cond_f
    iget-object v3, p0, Landroidx/media3/common/MediaMetadata;->mediaType:Ljava/lang/Integer;

    if-eqz v3, :cond_10

    .line 786
    iget-object v3, p0, Landroidx/media3/common/MediaMetadata;->mediaType:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v3, v3

    const-string v5, "androidx.media3.session.EXTRAS_KEY_MEDIA_TYPE_COMPAT"

    invoke-virtual {v0, v5, v3, v4}, Landroidx/media3/session/legacy/MediaMetadataCompat$Builder;->putLong(Ljava/lang/String;J)Landroidx/media3/session/legacy/MediaMetadataCompat$Builder;

    .line 789
    :cond_10
    iget-object v3, p0, Landroidx/media3/common/MediaMetadata;->extras:Landroid/os/Bundle;

    if-eqz v3, :cond_15

    .line 790
    iget-object v3, p0, Landroidx/media3/common/MediaMetadata;->extras:Landroid/os/Bundle;

    invoke-virtual {v3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_15

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 791
    .local v4, "customKey":Ljava/lang/String;
    iget-object v5, p0, Landroidx/media3/common/MediaMetadata;->extras:Landroid/os/Bundle;

    invoke-virtual {v5, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 792
    .local v5, "customValue":Ljava/lang/Object;
    if-eqz v5, :cond_13

    instance-of v6, v5, Ljava/lang/CharSequence;

    if-eqz v6, :cond_11

    goto :goto_1

    .line 794
    :cond_11
    instance-of v6, v5, Ljava/lang/Byte;

    if-nez v6, :cond_12

    instance-of v6, v5, Ljava/lang/Short;

    if-nez v6, :cond_12

    instance-of v6, v5, Ljava/lang/Integer;

    if-nez v6, :cond_12

    instance-of v6, v5, Ljava/lang/Long;

    if-eqz v6, :cond_14

    .line 798
    :cond_12
    move-object v6, v5

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    invoke-virtual {v0, v4, v6, v7}, Landroidx/media3/session/legacy/MediaMetadataCompat$Builder;->putLong(Ljava/lang/String;J)Landroidx/media3/session/legacy/MediaMetadataCompat$Builder;

    goto :goto_2

    .line 793
    :cond_13
    :goto_1
    move-object v6, v5

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v0, v4, v6}, Landroidx/media3/session/legacy/MediaMetadataCompat$Builder;->putText(Ljava/lang/String;Ljava/lang/CharSequence;)Landroidx/media3/session/legacy/MediaMetadataCompat$Builder;

    .line 800
    .end local v4    # "customKey":Ljava/lang/String;
    .end local v5    # "customValue":Ljava/lang/Object;
    :cond_14
    :goto_2
    goto :goto_0

    .line 803
    :cond_15
    invoke-virtual {v0}, Landroidx/media3/session/legacy/MediaMetadataCompat$Builder;->build()Landroidx/media3/session/legacy/MediaMetadataCompat;

    move-result-object v3

    return-object v3
.end method

.method public static convertToPeriod(I)Landroidx/media3/common/Timeline$Period;
    .locals 11
    .param p0, "windowIndex"    # I

    .line 469
    new-instance v0, Landroidx/media3/common/Timeline$Period;

    invoke-direct {v0}, Landroidx/media3/common/Timeline$Period;-><init>()V

    .line 470
    .local v0, "period":Landroidx/media3/common/Timeline$Period;
    sget-object v9, Landroidx/media3/common/AdPlaybackState;->NONE:Landroidx/media3/common/AdPlaybackState;

    const/4 v10, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v7, 0x0

    move-object v1, v0

    move v4, p0

    invoke-virtual/range {v1 .. v10}, Landroidx/media3/common/Timeline$Period;->set(Ljava/lang/Object;Ljava/lang/Object;IJJLandroidx/media3/common/AdPlaybackState;Z)Landroidx/media3/common/Timeline$Period;

    .line 478
    return-object v0
.end method

.method public static convertToPlayWhenReady(Landroidx/media3/session/legacy/PlaybackStateCompat;)Z
    .locals 2
    .param p0, "playbackState"    # Landroidx/media3/session/legacy/PlaybackStateCompat;

    .line 1064
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 1065
    return v0

    .line 1067
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/session/legacy/PlaybackStateCompat;->getState()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1083
    return v0

    .line 1075
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 1081
    :pswitch_1
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static convertToPlaybackException(Landroidx/media3/session/legacy/PlaybackStateCompat;)Landroidx/media3/common/PlaybackException;
    .locals 7
    .param p0, "playbackStateCompat"    # Landroidx/media3/session/legacy/PlaybackStateCompat;

    .line 158
    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 159
    invoke-virtual {p0}, Landroidx/media3/session/legacy/PlaybackStateCompat;->getState()I

    move-result v1

    const/4 v2, 0x7

    if-eq v1, v2, :cond_0

    goto :goto_2

    .line 162
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/session/legacy/PlaybackStateCompat;->getErrorMessage()Ljava/lang/CharSequence;

    move-result-object v1

    .line 163
    .local v1, "errorMessage":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Landroidx/media3/session/legacy/PlaybackStateCompat;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 164
    .local v2, "playbackStateCompatExtras":Landroid/os/Bundle;
    new-instance v3, Landroidx/media3/common/PlaybackException;

    .line 165
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_1
    move-object v4, v0

    .line 167
    :goto_0
    invoke-virtual {p0}, Landroidx/media3/session/legacy/PlaybackStateCompat;->getErrorCode()I

    move-result v5

    invoke-static {v5}, Landroidx/media3/session/LegacyConversions;->convertToPlaybackExceptionErrorCode(I)I

    move-result v5

    .line 168
    if-eqz v2, :cond_2

    move-object v6, v2

    goto :goto_1

    :cond_2
    sget-object v6, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    :goto_1
    invoke-direct {v3, v4, v0, v5, v6}, Landroidx/media3/common/PlaybackException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILandroid/os/Bundle;)V

    .line 164
    return-object v3

    .line 160
    .end local v1    # "errorMessage":Ljava/lang/CharSequence;
    .end local v2    # "playbackStateCompatExtras":Landroid/os/Bundle;
    :cond_3
    :goto_2
    return-object v0
.end method

.method private static convertToPlaybackExceptionErrorCode(I)I
    .locals 2
    .param p0, "errorCode"    # I

    .line 287
    invoke-static {p0}, Landroidx/media3/session/LegacyConversions;->convertToSessionErrorCode(I)I

    move-result v0

    .line 288
    .local v0, "playbackExceptionErrorCode":I
    sparse-switch v0, :sswitch_data_0

    .line 294
    return v0

    .line 290
    :sswitch_0
    const/16 v1, 0x3e8

    return v1

    .line 292
    :sswitch_1
    const/16 v1, 0x7d0

    return v1

    :sswitch_data_0
    .sparse-switch
        -0x5 -> :sswitch_1
        -0x1 -> :sswitch_0
    .end sparse-switch
.end method

.method public static convertToPlaybackParameters(Landroidx/media3/session/legacy/PlaybackStateCompat;)Landroidx/media3/common/PlaybackParameters;
    .locals 2
    .param p0, "playbackStateCompat"    # Landroidx/media3/session/legacy/PlaybackStateCompat;

    .line 1057
    if-nez p0, :cond_0

    .line 1058
    sget-object v0, Landroidx/media3/common/PlaybackParameters;->DEFAULT:Landroidx/media3/common/PlaybackParameters;

    goto :goto_0

    .line 1059
    :cond_0
    new-instance v0, Landroidx/media3/common/PlaybackParameters;

    invoke-virtual {p0}, Landroidx/media3/session/legacy/PlaybackStateCompat;->getPlaybackSpeed()F

    move-result v1

    invoke-direct {v0, v1}, Landroidx/media3/common/PlaybackParameters;-><init>(F)V

    .line 1057
    :goto_0
    return-object v0
.end method

.method public static convertToPlaybackState(Landroidx/media3/session/legacy/PlaybackStateCompat;Landroidx/media3/session/legacy/MediaMetadataCompat;J)I
    .locals 6
    .param p0, "playbackStateCompat"    # Landroidx/media3/session/legacy/PlaybackStateCompat;
    .param p1, "currentMediaMetadata"    # Landroidx/media3/session/legacy/MediaMetadataCompat;
    .param p2, "timeDiffMs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/session/LegacyConversions$ConversionException;
        }
    .end annotation

    .line 1096
    const/4 v0, 0x1

    if-nez p0, :cond_0

    .line 1097
    return v0

    .line 1099
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/session/legacy/PlaybackStateCompat;->getState()I

    move-result v1

    const/4 v2, 0x3

    packed-switch v1, :pswitch_data_0

    .line 1123
    new-instance v0, Landroidx/media3/session/LegacyConversions$ConversionException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid state of PlaybackStateCompat: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1124
    invoke-virtual {p0}, Landroidx/media3/session/legacy/PlaybackStateCompat;->getState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/media3/session/LegacyConversions$ConversionException;-><init>(Ljava/lang/String;Landroidx/media3/session/LegacyConversions$1;)V

    throw v0

    .line 1111
    :pswitch_0
    const/4 v0, 0x2

    return v0

    .line 1113
    :pswitch_1
    return v2

    .line 1115
    :pswitch_2
    invoke-static {p1}, Landroidx/media3/session/LegacyConversions;->convertToDurationMs(Landroidx/media3/session/legacy/MediaMetadataCompat;)J

    move-result-wide v0

    .line 1116
    .local v0, "duration":J
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v0, v3

    if-nez v3, :cond_1

    .line 1117
    return v2

    .line 1119
    :cond_1
    nop

    .line 1120
    invoke-static {p0, p1, p2, p3}, Landroidx/media3/session/LegacyConversions;->convertToCurrentPositionMs(Landroidx/media3/session/legacy/PlaybackStateCompat;Landroidx/media3/session/legacy/MediaMetadataCompat;J)J

    move-result-wide v3

    .line 1121
    .local v3, "currentPosition":J
    cmp-long v5, v3, v0

    if-gez v5, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x4

    :goto_0
    return v2

    .line 1104
    .end local v0    # "duration":J
    .end local v3    # "currentPosition":J
    :pswitch_3
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static convertToPlaybackStateCompatRepeatMode(I)I
    .locals 3
    .param p0, "repeatMode"    # I

    .line 1260
    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    .line 1268
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized RepeatMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " was converted to `PlaybackStateCompat.REPEAT_MODE_NONE`"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LegacyConversions"

    invoke-static {v2, v1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1273
    return v0

    .line 1266
    :pswitch_0
    const/4 v0, 0x2

    return v0

    .line 1264
    :pswitch_1
    const/4 v0, 0x1

    return v0

    .line 1262
    :pswitch_2
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static convertToPlaybackStateCompatShuffleMode(Z)I
    .locals 1
    .param p0, "shuffleModeEnabled"    # Z

    .line 1296
    if-eqz p0, :cond_0

    .line 1297
    const/4 v0, 0x1

    goto :goto_0

    .line 1298
    :cond_0
    const/4 v0, 0x0

    .line 1296
    :goto_0
    return v0
.end method

.method public static convertToPlaybackStateCompatState(Landroidx/media3/common/Player;Z)I
    .locals 5
    .param p0, "player"    # Landroidx/media3/common/Player;
    .param p1, "playIfSuppressed"    # Z

    .line 1031
    invoke-interface {p0}, Landroidx/media3/common/Player;->getPlayerError()Landroidx/media3/common/PlaybackException;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1032
    const/4 v0, 0x7

    return v0

    .line 1034
    :cond_0
    invoke-interface {p0}, Landroidx/media3/common/Player;->getPlaybackState()I

    move-result v0

    .line 1035
    .local v0, "playbackState":I
    invoke-static {p0, p1}, Landroidx/media3/common/util/Util;->shouldShowPlayButton(Landroidx/media3/common/Player;Z)Z

    move-result v1

    .line 1036
    .local v1, "shouldShowPlayButton":Z
    const/4 v2, 0x2

    packed-switch v0, :pswitch_data_0

    .line 1050
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unrecognized State: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1044
    :pswitch_0
    const/4 v2, 0x1

    return v2

    .line 1040
    :pswitch_1
    if-eqz v1, :cond_1

    .line 1041
    goto :goto_0

    .line 1042
    :cond_1
    const/4 v2, 0x3

    .line 1040
    :goto_0
    return v2

    .line 1046
    :pswitch_2
    if-eqz v1, :cond_2

    .line 1047
    goto :goto_1

    .line 1048
    :cond_2
    const/4 v2, 0x6

    .line 1046
    :goto_1
    return v2

    .line 1038
    :pswitch_3
    const/4 v2, 0x0

    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static convertToPlayerCommands(Landroidx/media3/session/legacy/PlaybackStateCompat;IJZ)Landroidx/media3/common/Player$Commands;
    .locals 14
    .param p0, "playbackStateCompat"    # Landroidx/media3/session/legacy/PlaybackStateCompat;
    .param p1, "volumeControlType"    # I
    .param p2, "sessionFlags"    # J
    .param p4, "isSessionReady"    # Z

    .line 1375
    move v0, p1

    new-instance v1, Landroidx/media3/common/Player$Commands$Builder;

    invoke-direct {v1}, Landroidx/media3/common/Player$Commands$Builder;-><init>()V

    .line 1376
    .local v1, "playerCommandsBuilder":Landroidx/media3/common/Player$Commands$Builder;
    const-wide/16 v2, 0x0

    if-nez p0, :cond_0

    move-wide v4, v2

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/media3/session/legacy/PlaybackStateCompat;->getActions()J

    move-result-wide v4

    .line 1377
    .local v4, "actions":J
    :goto_0
    const-wide/16 v6, 0x4

    invoke-static {v4, v5, v6, v7}, Landroidx/media3/session/LegacyConversions;->hasAction(JJ)Z

    move-result v8

    const/4 v9, 0x1

    if-eqz v8, :cond_1

    .line 1378
    const-wide/16 v10, 0x2

    invoke-static {v4, v5, v10, v11}, Landroidx/media3/session/LegacyConversions;->hasAction(JJ)Z

    move-result v8

    if-nez v8, :cond_2

    :cond_1
    nop

    .line 1379
    const-wide/16 v10, 0x200

    invoke-static {v4, v5, v10, v11}, Landroidx/media3/session/LegacyConversions;->hasAction(JJ)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1380
    :cond_2
    invoke-virtual {v1, v9}, Landroidx/media3/common/Player$Commands$Builder;->add(I)Landroidx/media3/common/Player$Commands$Builder;

    .line 1382
    :cond_3
    const-wide/16 v10, 0x4000

    invoke-static {v4, v5, v10, v11}, Landroidx/media3/session/LegacyConversions;->hasAction(JJ)Z

    move-result v8

    const/4 v10, 0x2

    if-eqz v8, :cond_4

    .line 1383
    invoke-virtual {v1, v10}, Landroidx/media3/common/Player$Commands$Builder;->add(I)Landroidx/media3/common/Player$Commands$Builder;

    .line 1385
    :cond_4
    const-wide/32 v11, 0x8000

    invoke-static {v4, v5, v11, v12}, Landroidx/media3/session/LegacyConversions;->hasAction(JJ)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1386
    const-wide/16 v11, 0x400

    invoke-static {v4, v5, v11, v12}, Landroidx/media3/session/LegacyConversions;->hasAction(JJ)Z

    move-result v8

    if-nez v8, :cond_7

    :cond_5
    nop

    .line 1387
    const-wide/32 v11, 0x10000

    invoke-static {v4, v5, v11, v12}, Landroidx/media3/session/LegacyConversions;->hasAction(JJ)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1388
    const-wide/16 v11, 0x800

    invoke-static {v4, v5, v11, v12}, Landroidx/media3/session/LegacyConversions;->hasAction(JJ)Z

    move-result v8

    if-nez v8, :cond_7

    :cond_6
    nop

    .line 1389
    const-wide/32 v11, 0x20000

    invoke-static {v4, v5, v11, v12}, Landroidx/media3/session/LegacyConversions;->hasAction(JJ)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 1390
    const-wide/16 v11, 0x2000

    invoke-static {v4, v5, v11, v12}, Landroidx/media3/session/LegacyConversions;->hasAction(JJ)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 1392
    :cond_7
    const/16 v8, 0x1f

    filled-new-array {v8, v10}, [I

    move-result-object v8

    invoke-virtual {v1, v8}, Landroidx/media3/common/Player$Commands$Builder;->addAll([I)Landroidx/media3/common/Player$Commands$Builder;

    .line 1394
    :cond_8
    const-wide/16 v11, 0x8

    invoke-static {v4, v5, v11, v12}, Landroidx/media3/session/LegacyConversions;->hasAction(JJ)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 1395
    const/16 v8, 0xb

    invoke-virtual {v1, v8}, Landroidx/media3/common/Player$Commands$Builder;->add(I)Landroidx/media3/common/Player$Commands$Builder;

    .line 1397
    :cond_9
    const-wide/16 v11, 0x40

    invoke-static {v4, v5, v11, v12}, Landroidx/media3/session/LegacyConversions;->hasAction(JJ)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 1398
    const/16 v8, 0xc

    invoke-virtual {v1, v8}, Landroidx/media3/common/Player$Commands$Builder;->add(I)Landroidx/media3/common/Player$Commands$Builder;

    .line 1400
    :cond_a
    const-wide/16 v11, 0x100

    invoke-static {v4, v5, v11, v12}, Landroidx/media3/session/LegacyConversions;->hasAction(JJ)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 1401
    const/4 v8, 0x5

    const/4 v11, 0x4

    filled-new-array {v8, v11}, [I

    move-result-object v8

    invoke-virtual {v1, v8}, Landroidx/media3/common/Player$Commands$Builder;->addAll([I)Landroidx/media3/common/Player$Commands$Builder;

    .line 1404
    :cond_b
    const-wide/16 v11, 0x20

    invoke-static {v4, v5, v11, v12}, Landroidx/media3/session/LegacyConversions;->hasAction(JJ)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 1405
    const/16 v8, 0x9

    const/16 v11, 0x8

    filled-new-array {v8, v11}, [I

    move-result-object v8

    invoke-virtual {v1, v8}, Landroidx/media3/common/Player$Commands$Builder;->addAll([I)Landroidx/media3/common/Player$Commands$Builder;

    .line 1407
    :cond_c
    const-wide/16 v11, 0x10

    invoke-static {v4, v5, v11, v12}, Landroidx/media3/session/LegacyConversions;->hasAction(JJ)Z

    move-result v8

    const/4 v11, 0x6

    if-eqz v8, :cond_d

    .line 1408
    const/4 v8, 0x7

    filled-new-array {v8, v11}, [I

    move-result-object v8

    invoke-virtual {v1, v8}, Landroidx/media3/common/Player$Commands$Builder;->addAll([I)Landroidx/media3/common/Player$Commands$Builder;

    .line 1410
    :cond_d
    const-wide/32 v12, 0x400000

    invoke-static {v4, v5, v12, v13}, Landroidx/media3/session/LegacyConversions;->hasAction(JJ)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 1411
    const/16 v8, 0xd

    invoke-virtual {v1, v8}, Landroidx/media3/common/Player$Commands$Builder;->add(I)Landroidx/media3/common/Player$Commands$Builder;

    .line 1413
    :cond_e
    const-wide/16 v12, 0x1

    invoke-static {v4, v5, v12, v13}, Landroidx/media3/session/LegacyConversions;->hasAction(JJ)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 1414
    const/4 v8, 0x3

    invoke-virtual {v1, v8}, Landroidx/media3/common/Player$Commands$Builder;->add(I)Landroidx/media3/common/Player$Commands$Builder;

    .line 1416
    :cond_f
    const/16 v8, 0x22

    const/16 v12, 0x1a

    if-ne v0, v9, :cond_10

    .line 1417
    filled-new-array {v12, v8}, [I

    move-result-object v8

    invoke-virtual {v1, v8}, Landroidx/media3/common/Player$Commands$Builder;->addAll([I)Landroidx/media3/common/Player$Commands$Builder;

    goto :goto_1

    .line 1419
    :cond_10
    if-ne v0, v10, :cond_11

    .line 1420
    const/16 v9, 0x19

    const/16 v10, 0x21

    filled-new-array {v12, v8, v9, v10}, [I

    move-result-object v8

    invoke-virtual {v1, v8}, Landroidx/media3/common/Player$Commands$Builder;->addAll([I)Landroidx/media3/common/Player$Commands$Builder;

    .line 1426
    :cond_11
    :goto_1
    new-array v8, v11, [I

    fill-array-data v8, :array_0

    invoke-virtual {v1, v8}, Landroidx/media3/common/Player$Commands$Builder;->addAll([I)Landroidx/media3/common/Player$Commands$Builder;

    .line 1433
    and-long v6, p2, v6

    cmp-long v2, v6, v2

    if-eqz v2, :cond_12

    .line 1434
    const/16 v2, 0x14

    invoke-virtual {v1, v2}, Landroidx/media3/common/Player$Commands$Builder;->add(I)Landroidx/media3/common/Player$Commands$Builder;

    .line 1435
    const-wide/16 v2, 0x1000

    invoke-static {v4, v5, v2, v3}, Landroidx/media3/session/LegacyConversions;->hasAction(JJ)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1436
    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroidx/media3/common/Player$Commands$Builder;->add(I)Landroidx/media3/common/Player$Commands$Builder;

    .line 1439
    :cond_12
    if-eqz p4, :cond_14

    .line 1440
    const-wide/32 v2, 0x40000

    invoke-static {v4, v5, v2, v3}, Landroidx/media3/session/LegacyConversions;->hasAction(JJ)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1441
    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Landroidx/media3/common/Player$Commands$Builder;->add(I)Landroidx/media3/common/Player$Commands$Builder;

    .line 1443
    :cond_13
    const-wide/32 v2, 0x200000

    invoke-static {v4, v5, v2, v3}, Landroidx/media3/session/LegacyConversions;->hasAction(JJ)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 1444
    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Landroidx/media3/common/Player$Commands$Builder;->add(I)Landroidx/media3/common/Player$Commands$Builder;

    .line 1447
    :cond_14
    invoke-virtual {v1}, Landroidx/media3/common/Player$Commands$Builder;->build()Landroidx/media3/common/Player$Commands;

    move-result-object v2

    return-object v2

    :array_0
    .array-data 4
        0x17
        0x11
        0x12
        0x10
        0x15
        0x20
    .end array-data
.end method

.method public static convertToQueueItem(Landroidx/media3/common/MediaItem;ILandroid/graphics/Bitmap;)Landroidx/media3/session/legacy/MediaSessionCompat$QueueItem;
    .locals 4
    .param p0, "item"    # Landroidx/media3/common/MediaItem;
    .param p1, "mediaItemIndex"    # I
    .param p2, "artworkBitmap"    # Landroid/graphics/Bitmap;

    .line 435
    invoke-static {p0, p2}, Landroidx/media3/session/LegacyConversions;->convertToMediaDescriptionCompat(Landroidx/media3/common/MediaItem;Landroid/graphics/Bitmap;)Landroidx/media3/session/legacy/MediaDescriptionCompat;

    move-result-object v0

    .line 436
    .local v0, "description":Landroidx/media3/session/legacy/MediaDescriptionCompat;
    invoke-static {p1}, Landroidx/media3/session/LegacyConversions;->convertToQueueItemId(I)J

    move-result-wide v1

    .line 437
    .local v1, "id":J
    new-instance v3, Landroidx/media3/session/legacy/MediaSessionCompat$QueueItem;

    invoke-direct {v3, v0, v1, v2}, Landroidx/media3/session/legacy/MediaSessionCompat$QueueItem;-><init>(Landroidx/media3/session/legacy/MediaDescriptionCompat;J)V

    return-object v3
.end method

.method public static convertToQueueItemId(I)J
    .locals 2
    .param p0, "mediaItemIndex"    # I

    .line 442
    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    .line 443
    const-wide/16 v0, -0x1

    return-wide v0

    .line 445
    :cond_0
    int-to-long v0, p0

    return-wide v0
.end method

.method public static convertToRating(Landroidx/media3/session/legacy/RatingCompat;)Landroidx/media3/common/Rating;
    .locals 3
    .param p0, "ratingCompat"    # Landroidx/media3/session/legacy/RatingCompat;

    .line 960
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 961
    return-object v0

    .line 963
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/session/legacy/RatingCompat;->getRatingStyle()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 990
    return-object v0

    .line 985
    :pswitch_0
    invoke-virtual {p0}, Landroidx/media3/session/legacy/RatingCompat;->isRated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 986
    new-instance v0, Landroidx/media3/common/PercentageRating;

    invoke-virtual {p0}, Landroidx/media3/session/legacy/RatingCompat;->getPercentRating()F

    move-result v1

    invoke-direct {v0, v1}, Landroidx/media3/common/PercentageRating;-><init>(F)V

    goto :goto_0

    .line 987
    :cond_1
    new-instance v0, Landroidx/media3/common/PercentageRating;

    invoke-direct {v0}, Landroidx/media3/common/PercentageRating;-><init>()V

    .line 985
    :goto_0
    return-object v0

    .line 973
    :pswitch_1
    invoke-virtual {p0}, Landroidx/media3/session/legacy/RatingCompat;->isRated()Z

    move-result v0

    const/4 v1, 0x5

    if-eqz v0, :cond_2

    .line 974
    new-instance v0, Landroidx/media3/common/StarRating;

    invoke-virtual {p0}, Landroidx/media3/session/legacy/RatingCompat;->getStarRating()F

    move-result v2

    invoke-direct {v0, v1, v2}, Landroidx/media3/common/StarRating;-><init>(IF)V

    goto :goto_1

    .line 975
    :cond_2
    new-instance v0, Landroidx/media3/common/StarRating;

    invoke-direct {v0, v1}, Landroidx/media3/common/StarRating;-><init>(I)V

    .line 973
    :goto_1
    return-object v0

    .line 969
    :pswitch_2
    invoke-virtual {p0}, Landroidx/media3/session/legacy/RatingCompat;->isRated()Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_3

    .line 970
    new-instance v0, Landroidx/media3/common/StarRating;

    invoke-virtual {p0}, Landroidx/media3/session/legacy/RatingCompat;->getStarRating()F

    move-result v2

    invoke-direct {v0, v1, v2}, Landroidx/media3/common/StarRating;-><init>(IF)V

    goto :goto_2

    .line 971
    :cond_3
    new-instance v0, Landroidx/media3/common/StarRating;

    invoke-direct {v0, v1}, Landroidx/media3/common/StarRating;-><init>(I)V

    .line 969
    :goto_2
    return-object v0

    .line 965
    :pswitch_3
    invoke-virtual {p0}, Landroidx/media3/session/legacy/RatingCompat;->isRated()Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_4

    .line 966
    new-instance v0, Landroidx/media3/common/StarRating;

    invoke-virtual {p0}, Landroidx/media3/session/legacy/RatingCompat;->getStarRating()F

    move-result v2

    invoke-direct {v0, v1, v2}, Landroidx/media3/common/StarRating;-><init>(IF)V

    goto :goto_3

    .line 967
    :cond_4
    new-instance v0, Landroidx/media3/common/StarRating;

    invoke-direct {v0, v1}, Landroidx/media3/common/StarRating;-><init>(I)V

    .line 965
    :goto_3
    return-object v0

    .line 981
    :pswitch_4
    invoke-virtual {p0}, Landroidx/media3/session/legacy/RatingCompat;->isRated()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 982
    new-instance v0, Landroidx/media3/common/ThumbRating;

    invoke-virtual {p0}, Landroidx/media3/session/legacy/RatingCompat;->isThumbUp()Z

    move-result v1

    invoke-direct {v0, v1}, Landroidx/media3/common/ThumbRating;-><init>(Z)V

    goto :goto_4

    .line 983
    :cond_5
    new-instance v0, Landroidx/media3/common/ThumbRating;

    invoke-direct {v0}, Landroidx/media3/common/ThumbRating;-><init>()V

    .line 981
    :goto_4
    return-object v0

    .line 977
    :pswitch_5
    invoke-virtual {p0}, Landroidx/media3/session/legacy/RatingCompat;->isRated()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 978
    new-instance v0, Landroidx/media3/common/HeartRating;

    invoke-virtual {p0}, Landroidx/media3/session/legacy/RatingCompat;->hasHeart()Z

    move-result v1

    invoke-direct {v0, v1}, Landroidx/media3/common/HeartRating;-><init>(Z)V

    goto :goto_5

    .line 979
    :cond_6
    new-instance v0, Landroidx/media3/common/HeartRating;

    invoke-direct {v0}, Landroidx/media3/common/HeartRating;-><init>()V

    .line 977
    :goto_5
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static convertToRatingCompat(Landroidx/media3/common/Rating;)Landroidx/media3/session/legacy/RatingCompat;
    .locals 3
    .param p0, "rating"    # Landroidx/media3/common/Rating;

    .line 1003
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 1004
    return-object v0

    .line 1006
    :cond_0
    invoke-static {p0}, Landroidx/media3/session/LegacyConversions;->getRatingCompatStyle(Landroidx/media3/common/Rating;)I

    move-result v1

    .line 1007
    .local v1, "ratingCompatStyle":I
    invoke-virtual {p0}, Landroidx/media3/common/Rating;->isRated()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1008
    invoke-static {v1}, Landroidx/media3/session/legacy/RatingCompat;->newUnratedRating(I)Landroidx/media3/session/legacy/RatingCompat;

    move-result-object v0

    return-object v0

    .line 1011
    :cond_1
    packed-switch v1, :pswitch_data_0

    .line 1024
    return-object v0

    .line 1021
    :pswitch_0
    move-object v0, p0

    check-cast v0, Landroidx/media3/common/PercentageRating;

    invoke-virtual {v0}, Landroidx/media3/common/PercentageRating;->getPercent()F

    move-result v0

    invoke-static {v0}, Landroidx/media3/session/legacy/RatingCompat;->newPercentageRating(F)Landroidx/media3/session/legacy/RatingCompat;

    move-result-object v0

    return-object v0

    .line 1015
    :pswitch_1
    move-object v0, p0

    check-cast v0, Landroidx/media3/common/StarRating;

    invoke-virtual {v0}, Landroidx/media3/common/StarRating;->getStarRating()F

    move-result v0

    invoke-static {v1, v0}, Landroidx/media3/session/legacy/RatingCompat;->newStarRating(IF)Landroidx/media3/session/legacy/RatingCompat;

    move-result-object v0

    return-object v0

    .line 1019
    :pswitch_2
    move-object v0, p0

    check-cast v0, Landroidx/media3/common/ThumbRating;

    invoke-virtual {v0}, Landroidx/media3/common/ThumbRating;->isThumbsUp()Z

    move-result v0

    invoke-static {v0}, Landroidx/media3/session/legacy/RatingCompat;->newThumbRating(Z)Landroidx/media3/session/legacy/RatingCompat;

    move-result-object v0

    return-object v0

    .line 1017
    :pswitch_3
    move-object v0, p0

    check-cast v0, Landroidx/media3/common/HeartRating;

    invoke-virtual {v0}, Landroidx/media3/common/HeartRating;->isHeart()Z

    move-result v0

    invoke-static {v0}, Landroidx/media3/session/legacy/RatingCompat;->newHeartRating(Z)Landroidx/media3/session/legacy/RatingCompat;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static convertToRepeatMode(I)I
    .locals 3
    .param p0, "playbackStateCompatRepeatMode"    # I

    .line 1238
    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    .line 1248
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized PlaybackStateCompat.RepeatMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " was converted to `Player.REPEAT_MODE_OFF`"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LegacyConversions"

    invoke-static {v2, v1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1253
    return v0

    .line 1246
    :pswitch_0
    const/4 v0, 0x2

    return v0

    .line 1243
    :pswitch_1
    const/4 v0, 0x1

    return v0

    .line 1241
    :pswitch_2
    return v0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static convertToRootHints(Landroidx/media3/session/MediaLibraryService$LibraryParams;)Landroid/os/Bundle;
    .locals 4
    .param p0, "params"    # Landroidx/media3/session/MediaLibraryService$LibraryParams;

    .line 1334
    if-nez p0, :cond_0

    .line 1335
    const/4 v0, 0x0

    return-object v0

    .line 1337
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p0, Landroidx/media3/session/MediaLibraryService$LibraryParams;->extras:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 1338
    .local v0, "rootHints":Landroid/os/Bundle;
    iget-object v1, p0, Landroidx/media3/session/MediaLibraryService$LibraryParams;->extras:Landroid/os/Bundle;

    const-string v2, "androidx.media3.session.LibraryParams.Extras.KEY_ROOT_CHILDREN_BROWSABLE_ONLY"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1339
    iget-object v1, p0, Landroidx/media3/session/MediaLibraryService$LibraryParams;->extras:Landroid/os/Bundle;

    .line 1340
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1342
    .local v1, "browsableChildrenSupported":Z
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1343
    nop

    .line 1345
    if-eqz v1, :cond_1

    .line 1346
    const/4 v2, 0x1

    goto :goto_0

    .line 1348
    :cond_1
    const/4 v2, 0x3

    .line 1343
    :goto_0
    const-string v3, "androidx.media.MediaBrowserCompat.Extras.KEY_ROOT_CHILDREN_SUPPORTED_FLAGS"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1350
    .end local v1    # "browsableChildrenSupported":Z
    :cond_2
    const-string v1, "android.service.media.extra.RECENT"

    iget-boolean v2, p0, Landroidx/media3/session/MediaLibraryService$LibraryParams;->isRecent:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1351
    const-string v1, "android.service.media.extra.OFFLINE"

    iget-boolean v2, p0, Landroidx/media3/session/MediaLibraryService$LibraryParams;->isOffline:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1352
    const-string v1, "android.service.media.extra.SUGGESTED"

    iget-boolean v2, p0, Landroidx/media3/session/MediaLibraryService$LibraryParams;->isSuggested:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1353
    return-object v0
.end method

.method public static convertToSessionCommands(Landroidx/media3/session/legacy/PlaybackStateCompat;Z)Landroidx/media3/session/SessionCommands;
    .locals 8
    .param p0, "state"    # Landroidx/media3/session/legacy/PlaybackStateCompat;
    .param p1, "isSessionReady"    # Z

    .line 1474
    new-instance v0, Landroidx/media3/session/SessionCommands$Builder;

    invoke-direct {v0}, Landroidx/media3/session/SessionCommands$Builder;-><init>()V

    .line 1475
    .local v0, "sessionCommandsBuilder":Landroidx/media3/session/SessionCommands$Builder;
    invoke-virtual {v0}, Landroidx/media3/session/SessionCommands$Builder;->addAllSessionCommands()Landroidx/media3/session/SessionCommands$Builder;

    .line 1476
    if-nez p1, :cond_0

    .line 1479
    const v1, 0x9c4a

    invoke-virtual {v0, v1}, Landroidx/media3/session/SessionCommands$Builder;->remove(I)Landroidx/media3/session/SessionCommands$Builder;

    .line 1482
    :cond_0
    if-eqz p0, :cond_2

    .line 1483
    invoke-virtual {p0}, Landroidx/media3/session/legacy/PlaybackStateCompat;->getCustomActions()Ljava/util/List;

    move-result-object v1

    .line 1484
    .local v1, "customActions":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/session/legacy/PlaybackStateCompat$CustomAction;>;"
    if-eqz v1, :cond_2

    .line 1485
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/session/legacy/PlaybackStateCompat$CustomAction;

    .line 1486
    .local v3, "customAction":Landroidx/media3/session/legacy/PlaybackStateCompat$CustomAction;
    invoke-virtual {v3}, Landroidx/media3/session/legacy/PlaybackStateCompat$CustomAction;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 1487
    .local v4, "action":Ljava/lang/String;
    invoke-virtual {v3}, Landroidx/media3/session/legacy/PlaybackStateCompat$CustomAction;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    .line 1488
    .local v5, "extras":Landroid/os/Bundle;
    new-instance v6, Landroidx/media3/session/SessionCommand;

    .line 1489
    if-nez v5, :cond_1

    sget-object v7, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    goto :goto_1

    :cond_1
    move-object v7, v5

    :goto_1
    invoke-direct {v6, v4, v7}, Landroidx/media3/session/SessionCommand;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1488
    invoke-virtual {v0, v6}, Landroidx/media3/session/SessionCommands$Builder;->add(Landroidx/media3/session/SessionCommand;)Landroidx/media3/session/SessionCommands$Builder;

    .line 1490
    .end local v3    # "customAction":Landroidx/media3/session/legacy/PlaybackStateCompat$CustomAction;
    .end local v4    # "action":Ljava/lang/String;
    .end local v5    # "extras":Landroid/os/Bundle;
    goto :goto_0

    .line 1493
    .end local v1    # "customActions":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/session/legacy/PlaybackStateCompat$CustomAction;>;"
    :cond_2
    invoke-virtual {v0}, Landroidx/media3/session/SessionCommands$Builder;->build()Landroidx/media3/session/SessionCommands;

    move-result-object v1

    return-object v1
.end method

.method static convertToSessionError(IILjava/lang/CharSequence;Landroid/os/Bundle;Landroid/content/Context;)Landroidx/media3/session/SessionError;
    .locals 4
    .param p0, "state"    # I
    .param p1, "errorCode"    # I
    .param p2, "errorMessage"    # Ljava/lang/CharSequence;
    .param p3, "extras"    # Landroid/os/Bundle;
    .param p4, "context"    # Landroid/content/Context;

    .line 200
    const/4 v0, 0x7

    if-eq p0, v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_2

    .line 204
    :cond_0
    invoke-static {p1}, Landroidx/media3/session/LegacyConversions;->convertToSessionErrorCode(I)I

    move-result v0

    .line 205
    .local v0, "sessionErrorCode":I
    new-instance v1, Landroidx/media3/session/SessionError;

    .line 207
    if-eqz p2, :cond_1

    .line 208
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 209
    :cond_1
    invoke-static {v0, p4}, Landroidx/media3/session/LegacyConversions;->getSessionErrorMessage(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 210
    :goto_0
    if-eqz p3, :cond_2

    move-object v3, p3

    goto :goto_1

    :cond_2
    sget-object v3, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    :goto_1
    invoke-direct {v1, v0, v2, v3}, Landroidx/media3/session/SessionError;-><init>(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 205
    return-object v1

    .line 202
    .end local v0    # "sessionErrorCode":I
    :cond_3
    :goto_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public static convertToSessionError(Landroidx/media3/session/legacy/PlaybackStateCompat;Landroid/content/Context;)Landroidx/media3/session/SessionError;
    .locals 4
    .param p0, "playbackStateCompat"    # Landroidx/media3/session/legacy/PlaybackStateCompat;
    .param p1, "context"    # Landroid/content/Context;

    .line 181
    if-nez p0, :cond_0

    .line 182
    const/4 v0, 0x0

    return-object v0

    .line 184
    :cond_0
    nop

    .line 185
    invoke-virtual {p0}, Landroidx/media3/session/legacy/PlaybackStateCompat;->getState()I

    move-result v0

    .line 186
    invoke-virtual {p0}, Landroidx/media3/session/legacy/PlaybackStateCompat;->getErrorCode()I

    move-result v1

    .line 187
    invoke-virtual {p0}, Landroidx/media3/session/legacy/PlaybackStateCompat;->getErrorMessage()Ljava/lang/CharSequence;

    move-result-object v2

    .line 188
    invoke-virtual {p0}, Landroidx/media3/session/legacy/PlaybackStateCompat;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 184
    invoke-static {v0, v1, v2, v3, p1}, Landroidx/media3/session/LegacyConversions;->convertToSessionError(IILjava/lang/CharSequence;Landroid/os/Bundle;Landroid/content/Context;)Landroidx/media3/session/SessionError;

    move-result-object v0

    return-object v0
.end method

.method private static convertToSessionErrorCode(I)I
    .locals 1
    .param p0, "errorCode"    # I

    .line 256
    packed-switch p0, :pswitch_data_0

    .line 280
    const/4 v0, -0x1

    return v0

    .line 268
    :pswitch_0
    const/16 v0, -0x6d

    return v0

    .line 258
    :pswitch_1
    const/4 v0, 0x1

    return v0

    .line 278
    :pswitch_2
    const/16 v0, -0x6b

    return v0

    .line 264
    :pswitch_3
    const/16 v0, -0x6e

    return v0

    .line 270
    :pswitch_4
    const/16 v0, -0x6a

    return v0

    .line 274
    :pswitch_5
    const/16 v0, -0x69

    return v0

    .line 266
    :pswitch_6
    const/16 v0, -0x68

    return v0

    .line 276
    :pswitch_7
    const/16 v0, -0x67

    return v0

    .line 262
    :pswitch_8
    const/16 v0, -0x66

    return v0

    .line 272
    :pswitch_9
    const/4 v0, -0x6

    return v0

    .line 260
    :pswitch_a
    const/4 v0, -0x2

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static convertToShuffleModeEnabled(I)Z
    .locals 3
    .param p0, "playbackStateCompatShuffleMode"    # I

    .line 1280
    packed-switch p0, :pswitch_data_0

    .line 1288
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized ShuffleMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1286
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 1283
    :pswitch_1
    const/4 v0, 0x0

    return v0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static convertToTotalBufferedDurationMs(Landroidx/media3/session/legacy/PlaybackStateCompat;Landroidx/media3/session/legacy/MediaMetadataCompat;J)J
    .locals 6
    .param p0, "playbackStateCompat"    # Landroidx/media3/session/legacy/PlaybackStateCompat;
    .param p1, "metadataCompat"    # Landroidx/media3/session/legacy/MediaMetadataCompat;
    .param p2, "timeDiffMs"    # J

    .line 1197
    nop

    .line 1198
    invoke-static {p0, p1, p2, p3}, Landroidx/media3/session/LegacyConversions;->convertToBufferedPositionMs(Landroidx/media3/session/legacy/PlaybackStateCompat;Landroidx/media3/session/legacy/MediaMetadataCompat;J)J

    move-result-wide v0

    .line 1199
    .local v0, "bufferedPositionMs":J
    nop

    .line 1200
    invoke-static {p0, p1, p2, p3}, Landroidx/media3/session/LegacyConversions;->convertToCurrentPositionMs(Landroidx/media3/session/legacy/PlaybackStateCompat;Landroidx/media3/session/legacy/MediaMetadataCompat;J)J

    move-result-wide v2

    .line 1201
    .local v2, "currentPositionMs":J
    sub-long v4, v0, v2

    return-wide v4
.end method

.method public static convertToWindow(Landroidx/media3/common/MediaItem;I)Landroidx/media3/common/Timeline$Window;
    .locals 22
    .param p0, "mediaItem"    # Landroidx/media3/common/MediaItem;
    .param p1, "periodIndex"    # I

    move-object/from16 v2, p0

    move/from16 v17, p1

    move/from16 v18, p1

    .line 449
    new-instance v0, Landroidx/media3/common/Timeline$Window;

    invoke-direct {v0}, Landroidx/media3/common/Timeline$Window;-><init>()V

    move-object/from16 v21, v0

    .line 450
    .local v21, "window":Landroidx/media3/common/Timeline$Window;
    nop

    .line 451
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 450
    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    const-wide v15, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v19, 0x0

    invoke-virtual/range {v0 .. v20}, Landroidx/media3/common/Timeline$Window;->set(Ljava/lang/Object;Landroidx/media3/common/MediaItem;Ljava/lang/Object;JJJZZLandroidx/media3/common/MediaItem$LiveConfiguration;JJIIJ)Landroidx/media3/common/Timeline$Window;

    .line 465
    return-object v21
.end method

.method public static extractMaxCommandsForMediaItemFromRootHints(Landroid/os/Bundle;)I
    .locals 2
    .param p0, "rootHints"    # Landroid/os/Bundle;

    .line 1739
    nop

    .line 1741
    const-string v0, "androidx.media.utils.MediaBrowserCompat.extras.CUSTOM_BROWSER_ACTION_LIMIT"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1739
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private static getCurrentPosition(Landroidx/media3/session/legacy/PlaybackStateCompat;J)J
    .locals 2
    .param p0, "playbackStateCompat"    # Landroidx/media3/session/legacy/PlaybackStateCompat;
    .param p1, "timeDiffMs"    # J

    .line 1164
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Landroidx/media3/session/legacy/PlaybackStateCompat;->getCurrentPosition(Ljava/lang/Long;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static varargs getFirstBitmap(Landroidx/media3/session/legacy/MediaMetadataCompat;[Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "mediaMetadataCompat"    # Landroidx/media3/session/legacy/MediaMetadataCompat;
    .param p1, "keys"    # [Ljava/lang/String;

    .line 671
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 672
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroidx/media3/session/legacy/MediaMetadataCompat;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 673
    invoke-virtual {p0, v2}, Landroidx/media3/session/legacy/MediaMetadataCompat;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 671
    .end local v2    # "key":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 676
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private static varargs getFirstString(Landroidx/media3/session/legacy/MediaMetadataCompat;[Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "mediaMetadataCompat"    # Landroidx/media3/session/legacy/MediaMetadataCompat;
    .param p1, "keys"    # [Ljava/lang/String;

    .line 681
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 682
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroidx/media3/session/legacy/MediaMetadataCompat;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 683
    invoke-virtual {p0, v2}, Landroidx/media3/session/legacy/MediaMetadataCompat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 681
    .end local v2    # "key":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 686
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getFutureResult(Ljava/util/concurrent/Future;J)Ljava/lang/Object;
    .locals 9
    .param p1, "timeoutMs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "TT;>;J)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 1591
    .local p0, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1592
    .local v0, "initialTimeMs":J
    move-wide v2, p1

    .line 1593
    .local v2, "remainingTimeMs":J
    const/4 v4, 0x0

    .line 1597
    .local v4, "interrupted":Z
    :goto_0
    :try_start_0
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p0, v2, v3, v5}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1608
    if-eqz v4, :cond_0

    .line 1609
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->interrupt()V

    .line 1597
    :cond_0
    return-object v5

    .line 1608
    :catchall_0
    move-exception v5

    goto :goto_1

    .line 1598
    :catch_0
    move-exception v5

    .line 1599
    .local v5, "e":Ljava/lang/InterruptedException;
    const/4 v4, 0x1

    .line 1600
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v6, v0

    .line 1601
    .local v6, "elapsedTimeMs":J
    cmp-long v8, v6, p1

    if-gez v8, :cond_1

    .line 1604
    sub-long v2, p1, v6

    .line 1605
    .end local v5    # "e":Ljava/lang/InterruptedException;
    .end local v6    # "elapsedTimeMs":J
    goto :goto_0

    .line 1602
    .restart local v5    # "e":Ljava/lang/InterruptedException;
    .restart local v6    # "elapsedTimeMs":J
    :cond_1
    new-instance v8, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v8}, Ljava/util/concurrent/TimeoutException;-><init>()V

    .end local v0    # "initialTimeMs":J
    .end local v2    # "remainingTimeMs":J
    .end local v4    # "interrupted":Z
    .end local p0    # "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    .end local p1    # "timeoutMs":J
    throw v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1608
    .end local v5    # "e":Ljava/lang/InterruptedException;
    .end local v6    # "elapsedTimeMs":J
    .restart local v0    # "initialTimeMs":J
    .restart local v2    # "remainingTimeMs":J
    .restart local v4    # "interrupted":Z
    .restart local p0    # "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    .restart local p1    # "timeoutMs":J
    :goto_1
    if-eqz v4, :cond_2

    .line 1609
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->interrupt()V

    .line 1611
    :cond_2
    throw v5
.end method

.method public static getLegacyStreamType(Landroidx/media3/common/AudioAttributes;)I
    .locals 2
    .param p0, "audioAttributes"    # Landroidx/media3/common/AudioAttributes;

    .line 1578
    invoke-static {p0}, Landroidx/media3/session/LegacyConversions;->convertToAudioAttributesCompat(Landroidx/media3/common/AudioAttributes;)Landroidx/media3/session/legacy/AudioAttributesCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/session/legacy/AudioAttributesCompat;->getLegacyStreamType()I

    move-result v0

    .line 1579
    .local v0, "legacyStreamType":I
    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    .line 1584
    const/4 v1, 0x3

    return v1

    .line 1586
    :cond_0
    return v0
.end method

.method public static getRatingCompatStyle(Landroidx/media3/common/Rating;)I
    .locals 1
    .param p0, "rating"    # Landroidx/media3/common/Rating;

    .line 1216
    instance-of v0, p0, Landroidx/media3/common/HeartRating;

    if-eqz v0, :cond_0

    .line 1217
    const/4 v0, 0x1

    return v0

    .line 1218
    :cond_0
    instance-of v0, p0, Landroidx/media3/common/ThumbRating;

    if-eqz v0, :cond_1

    .line 1219
    const/4 v0, 0x2

    return v0

    .line 1220
    :cond_1
    instance-of v0, p0, Landroidx/media3/common/StarRating;

    if-eqz v0, :cond_2

    .line 1221
    move-object v0, p0

    check-cast v0, Landroidx/media3/common/StarRating;

    invoke-virtual {v0}, Landroidx/media3/common/StarRating;->getMaxStars()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1227
    goto :goto_0

    :pswitch_0
    const/4 v0, 0x5

    return v0

    .line 1225
    :pswitch_1
    const/4 v0, 0x4

    return v0

    .line 1223
    :pswitch_2
    const/4 v0, 0x3

    return v0

    .line 1229
    :cond_2
    instance-of v0, p0, Landroidx/media3/common/PercentageRating;

    if-eqz v0, :cond_3

    .line 1230
    const/4 v0, 0x6

    return v0

    .line 1232
    :cond_3
    :goto_0
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getSessionErrorMessage(ILandroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "sessionErrorCode"    # I
    .param p1, "context"    # Landroid/content/Context;

    .line 215
    sparse-switch p0, :sswitch_data_0

    .line 250
    sget v0, Landroidx/media3/session/R$string;->error_message_fallback:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 217
    :sswitch_0
    sget v0, Landroidx/media3/session/R$string;->error_message_info_cancelled:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 221
    :sswitch_1
    sget v0, Landroidx/media3/session/R$string;->error_message_invalid_state:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 219
    :sswitch_2
    sget v0, Landroidx/media3/session/R$string;->error_message_bad_value:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 227
    :sswitch_3
    sget v0, Landroidx/media3/session/R$string;->error_message_permission_denied:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 223
    :sswitch_4
    sget v0, Landroidx/media3/session/R$string;->error_message_io:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 225
    :sswitch_5
    sget v0, Landroidx/media3/session/R$string;->error_message_not_supported:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 235
    :sswitch_6
    sget v0, Landroidx/media3/session/R$string;->error_message_disconnected:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 229
    :sswitch_7
    sget v0, Landroidx/media3/session/R$string;->error_message_authentication_expired:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 243
    :sswitch_8
    sget v0, Landroidx/media3/session/R$string;->error_message_premium_account_required:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 233
    :sswitch_9
    sget v0, Landroidx/media3/session/R$string;->error_message_concurrent_stream_limit:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 241
    :sswitch_a
    sget v0, Landroidx/media3/session/R$string;->error_message_parental_control_restricted:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 239
    :sswitch_b
    sget v0, Landroidx/media3/session/R$string;->error_message_not_available_in_region:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 247
    :sswitch_c
    sget v0, Landroidx/media3/session/R$string;->error_message_skip_limit_reached:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 245
    :sswitch_d
    sget v0, Landroidx/media3/session/R$string;->error_message_setup_required:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 237
    :sswitch_e
    sget v0, Landroidx/media3/session/R$string;->error_message_end_of_playlist:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 231
    :sswitch_f
    sget v0, Landroidx/media3/session/R$string;->error_message_content_already_playing:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x6e -> :sswitch_f
        -0x6d -> :sswitch_e
        -0x6c -> :sswitch_d
        -0x6b -> :sswitch_c
        -0x6a -> :sswitch_b
        -0x69 -> :sswitch_a
        -0x68 -> :sswitch_9
        -0x67 -> :sswitch_8
        -0x66 -> :sswitch_7
        -0x64 -> :sswitch_6
        -0x6 -> :sswitch_5
        -0x5 -> :sswitch_4
        -0x4 -> :sswitch_3
        -0x3 -> :sswitch_2
        -0x2 -> :sswitch_1
        0x1 -> :sswitch_0
    .end sparse-switch
.end method

.method private static getText(Ljava/lang/String;Landroidx/media3/common/MediaMetadata;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "metadata"    # Landroidx/media3/common/MediaMetadata;

    .line 889
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v0, "android.media.metadata.ALBUM_ARTIST"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_1
    const-string v0, "android.media.metadata.TITLE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_2
    const-string v0, "android.media.metadata.ALBUM"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_3
    const-string v0, "android.media.metadata.COMPOSER"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_4
    const-string v0, "android.media.metadata.WRITER"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_5
    const-string v0, "android.media.metadata.ARTIST"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 903
    const/4 v0, 0x0

    return-object v0

    .line 901
    :pswitch_0
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->composer:Ljava/lang/CharSequence;

    return-object v0

    .line 899
    :pswitch_1
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->writer:Ljava/lang/CharSequence;

    return-object v0

    .line 897
    :pswitch_2
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->albumArtist:Ljava/lang/CharSequence;

    return-object v0

    .line 895
    :pswitch_3
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->albumTitle:Ljava/lang/CharSequence;

    return-object v0

    .line 893
    :pswitch_4
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->artist:Ljava/lang/CharSequence;

    return-object v0

    .line 891
    :pswitch_5
    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->title:Ljava/lang/CharSequence;

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x6e7c6d63 -> :sswitch_5
        -0x48f6a837 -> :sswitch_4
        0x6467f2f6 -> :sswitch_3
        0x70098439 -> :sswitch_2
        0x71142822 -> :sswitch_1
        0x7522ca0d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static hasAction(JJ)Z
    .locals 4
    .param p0, "actions"    # J
    .param p2, "action"    # J

    .line 1458
    and-long v0, p0, p2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
