.class public final Lcom/yausername/youtubedl_android/mapper/VideoInfo;
.super Ljava/lang/Object;
.source "VideoInfo.kt"


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u0008\n\u0002\u0008\t\n\u0002\u0010\t\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010$\n\u0002\u0008\u0017\n\u0002\u0018\u0002\n\u0002\u0008\u0014\u0008\u0007\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R\u0018\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R%\u0010\u0007\u001a\u0016\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0008j\n\u0012\u0004\u0012\u00020\u0004\u0018\u0001`\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0013\u0010\u000c\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u0006R\u0018\u0010\u000e\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0006R\u0018\u0010\u0010\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0006R\u0014\u0010\u0012\u001a\u00020\u0013X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u0013\u0010\u0016\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0006R\u0013\u0010\u0018\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u0006R\u0018\u0010\u001a\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u0006R\u0016\u0010\u001c\u001a\u00020\u001d8\u0006X\u0087D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u001fR\u0016\u0010 \u001a\u00020\u001d8\u0006X\u0087D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008!\u0010\u001fR\u0013\u0010\"\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008#\u0010\u0006R\u0018\u0010$\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008%\u0010\u0006R%\u0010&\u001a\u0016\u0012\u0004\u0012\u00020\'\u0018\u00010\u0008j\n\u0012\u0004\u0012\u00020\'\u0018\u0001`\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008(\u0010\u000bR\u0013\u0010)\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008*\u0010\u0006R\u0014\u0010+\u001a\u00020\u0013X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008,\u0010\u0015R$\u0010-\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010.8\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008/\u00100R\u0013\u00101\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00082\u0010\u0006R\u0013\u00103\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00084\u0010\u0006R\u0018\u00105\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00086\u0010\u0006R\u0018\u00107\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00088\u0010\u0006R\u0018\u00109\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008:\u0010\u0006R\u0018\u0010;\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008<\u0010\u0006R*\u0010=\u001a\u0016\u0012\u0004\u0012\u00020\'\u0018\u00010\u0008j\n\u0012\u0004\u0012\u00020\'\u0018\u0001`\t8\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008>\u0010\u000bR\u0013\u0010?\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008@\u0010\u0006R%\u0010A\u001a\u0016\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0008j\n\u0012\u0004\u0012\u00020\u0004\u0018\u0001`\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008B\u0010\u000bR\u0013\u0010C\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008D\u0010\u0006R%\u0010E\u001a\u0016\u0012\u0004\u0012\u00020F\u0018\u00010\u0008j\n\u0012\u0004\u0012\u00020F\u0018\u0001`\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008G\u0010\u000bR\u0013\u0010H\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008I\u0010\u0006R\u0018\u0010J\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008K\u0010\u0006R\u0013\u0010L\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008M\u0010\u0006R\u0018\u0010N\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008O\u0010\u0006R\u0013\u0010P\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008Q\u0010\u0006R\u0018\u0010R\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008S\u0010\u0006R\u0018\u0010T\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008U\u0010\u0006R\u0018\u0010V\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008W\u0010\u0006R\u0014\u0010X\u001a\u00020\u0013X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008Y\u0010\u0015\u00a8\u0006Z"
    }
    d2 = {
        "Lcom/yausername/youtubedl_android/mapper/VideoInfo;",
        "",
        "()V",
        "averageRating",
        "",
        "getAverageRating",
        "()Ljava/lang/String;",
        "categories",
        "Ljava/util/ArrayList;",
        "Lkotlin/collections/ArrayList;",
        "getCategories",
        "()Ljava/util/ArrayList;",
        "description",
        "getDescription",
        "dislikeCount",
        "getDislikeCount",
        "displayId",
        "getDisplayId",
        "duration",
        "",
        "getDuration",
        "()I",
        "ext",
        "getExt",
        "extractor",
        "getExtractor",
        "extractorKey",
        "getExtractorKey",
        "fileSize",
        "",
        "getFileSize",
        "()J",
        "fileSizeApproximate",
        "getFileSizeApproximate",
        "format",
        "getFormat",
        "formatId",
        "getFormatId",
        "formats",
        "Lcom/yausername/youtubedl_android/mapper/VideoFormat;",
        "getFormats",
        "fulltitle",
        "getFulltitle",
        "height",
        "getHeight",
        "httpHeaders",
        "",
        "getHttpHeaders",
        "()Ljava/util/Map;",
        "id",
        "getId",
        "license",
        "getLicense",
        "likeCount",
        "getLikeCount",
        "manifestUrl",
        "getManifestUrl",
        "playerUrl",
        "getPlayerUrl",
        "repostCount",
        "getRepostCount",
        "requestedFormats",
        "getRequestedFormats",
        "resolution",
        "getResolution",
        "tags",
        "getTags",
        "thumbnail",
        "getThumbnail",
        "thumbnails",
        "Lcom/yausername/youtubedl_android/mapper/VideoThumbnail;",
        "getThumbnails",
        "title",
        "getTitle",
        "uploadDate",
        "getUploadDate",
        "uploader",
        "getUploader",
        "uploaderId",
        "getUploaderId",
        "url",
        "getUrl",
        "viewCount",
        "getViewCount",
        "webpageUrl",
        "getWebpageUrl",
        "webpageUrlBasename",
        "getWebpageUrlBasename",
        "width",
        "getWidth",
        "library_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private final averageRating:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "average_rating"
    .end annotation
.end field

.field private final categories:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final description:Ljava/lang/String;

.field private final dislikeCount:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "dislike_count"
    .end annotation
.end field

.field private final displayId:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "display_id"
    .end annotation
.end field

.field private final duration:I

.field private final ext:Ljava/lang/String;

.field private final extractor:Ljava/lang/String;

.field private final extractorKey:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "extractor_key"
    .end annotation
.end field

.field private final fileSize:J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "filesize"
    .end annotation
.end field

.field private final fileSizeApproximate:J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "filesize_approx"
    .end annotation
.end field

.field private final format:Ljava/lang/String;

.field private final formatId:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "format_id"
    .end annotation
.end field

.field private final formats:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/yausername/youtubedl_android/mapper/VideoFormat;",
            ">;"
        }
    .end annotation
.end field

.field private final fulltitle:Ljava/lang/String;

.field private final height:I

.field private final httpHeaders:Ljava/util/Map;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "http_headers"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final id:Ljava/lang/String;

.field private final license:Ljava/lang/String;

.field private final likeCount:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "like_count"
    .end annotation
.end field

.field private final manifestUrl:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "manifest_url"
    .end annotation
.end field

.field private final playerUrl:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "player_url"
    .end annotation
.end field

.field private final repostCount:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "repost_count"
    .end annotation
.end field

.field private final requestedFormats:Ljava/util/ArrayList;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "requested_formats"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/yausername/youtubedl_android/mapper/VideoFormat;",
            ">;"
        }
    .end annotation
.end field

.field private final resolution:Ljava/lang/String;

.field private final tags:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final thumbnail:Ljava/lang/String;

.field private final thumbnails:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/yausername/youtubedl_android/mapper/VideoThumbnail;",
            ">;"
        }
    .end annotation
.end field

.field private final title:Ljava/lang/String;

.field private final uploadDate:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "upload_date"
    .end annotation
.end field

.field private final uploader:Ljava/lang/String;

.field private final uploaderId:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "uploader_id"
    .end annotation
.end field

.field private final url:Ljava/lang/String;

.field private final viewCount:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "view_count"
    .end annotation
.end field

.field private final webpageUrl:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "webpage_url"
    .end annotation
.end field

.field private final webpageUrlBasename:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "webpage_url_basename"
    .end annotation
.end field

.field private final width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    return-void
.end method


# virtual methods
.method public final getAverageRating()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/yausername/youtubedl_android/mapper/VideoInfo;->averageRating:Ljava/lang/String;

    return-object v0
.end method

.method public final getCategories()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/yausername/youtubedl_android/mapper/VideoInfo;->categories:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getDescription()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/yausername/youtubedl_android/mapper/VideoInfo;->description:Ljava/lang/String;

    return-object v0
.end method

.method public final getDislikeCount()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/yausername/youtubedl_android/mapper/VideoInfo;->dislikeCount:Ljava/lang/String;

    return-object v0
.end method

.method public final getDisplayId()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/yausername/youtubedl_android/mapper/VideoInfo;->displayId:Ljava/lang/String;

    return-object v0
.end method

.method public final getDuration()I
    .locals 1

    .line 17
    iget v0, p0, Lcom/yausername/youtubedl_android/mapper/VideoInfo;->duration:I

    return v0
.end method

.method public final getExt()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/yausername/youtubedl_android/mapper/VideoInfo;->ext:Ljava/lang/String;

    return-object v0
.end method

.method public final getExtractor()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/yausername/youtubedl_android/mapper/VideoInfo;->extractor:Ljava/lang/String;

    return-object v0
.end method

.method public final getExtractorKey()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/yausername/youtubedl_android/mapper/VideoInfo;->extractorKey:Ljava/lang/String;

    return-object v0
.end method

.method public final getFileSize()J
    .locals 2

    .line 63
    iget-wide v0, p0, Lcom/yausername/youtubedl_android/mapper/VideoInfo;->fileSize:J

    return-wide v0
.end method

.method public final getFileSizeApproximate()J
    .locals 2

    .line 66
    iget-wide v0, p0, Lcom/yausername/youtubedl_android/mapper/VideoInfo;->fileSizeApproximate:J

    return-wide v0
.end method

.method public final getFormat()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/yausername/youtubedl_android/mapper/VideoInfo;->format:Ljava/lang/String;

    return-object v0
.end method

.method public final getFormatId()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/yausername/youtubedl_android/mapper/VideoInfo;->formatId:Ljava/lang/String;

    return-object v0
.end method

.method public final getFormats()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/yausername/youtubedl_android/mapper/VideoFormat;",
            ">;"
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/yausername/youtubedl_android/mapper/VideoInfo;->formats:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getFulltitle()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/yausername/youtubedl_android/mapper/VideoInfo;->fulltitle:Ljava/lang/String;

    return-object v0
.end method

.method public final getHeight()I
    .locals 1

    .line 55
    iget v0, p0, Lcom/yausername/youtubedl_android/mapper/VideoInfo;->height:I

    return v0
.end method

.method public final getHttpHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/yausername/youtubedl_android/mapper/VideoInfo;->httpHeaders:Ljava/util/Map;

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/yausername/youtubedl_android/mapper/VideoInfo;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getLicense()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/yausername/youtubedl_android/mapper/VideoInfo;->license:Ljava/lang/String;

    return-object v0
.end method

.method public final getLikeCount()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/yausername/youtubedl_android/mapper/VideoInfo;->likeCount:Ljava/lang/String;

    return-object v0
.end method

.method public final getManifestUrl()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/yausername/youtubedl_android/mapper/VideoInfo;->manifestUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getPlayerUrl()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/yausername/youtubedl_android/mapper/VideoInfo;->playerUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getRepostCount()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/yausername/youtubedl_android/mapper/VideoInfo;->repostCount:Ljava/lang/String;

    return-object v0
.end method

.method public final getRequestedFormats()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/yausername/youtubedl_android/mapper/VideoFormat;",
            ">;"
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/yausername/youtubedl_android/mapper/VideoInfo;->requestedFormats:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getResolution()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/yausername/youtubedl_android/mapper/VideoInfo;->resolution:Ljava/lang/String;

    return-object v0
.end method

.method public final getTags()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/yausername/youtubedl_android/mapper/VideoInfo;->tags:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getThumbnail()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/yausername/youtubedl_android/mapper/VideoInfo;->thumbnail:Ljava/lang/String;

    return-object v0
.end method

.method public final getThumbnails()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/yausername/youtubedl_android/mapper/VideoThumbnail;",
            ">;"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/yausername/youtubedl_android/mapper/VideoInfo;->thumbnails:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/yausername/youtubedl_android/mapper/VideoInfo;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final getUploadDate()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/yausername/youtubedl_android/mapper/VideoInfo;->uploadDate:Ljava/lang/String;

    return-object v0
.end method

.method public final getUploader()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/yausername/youtubedl_android/mapper/VideoInfo;->uploader:Ljava/lang/String;

    return-object v0
.end method

.method public final getUploaderId()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/yausername/youtubedl_android/mapper/VideoInfo;->uploaderId:Ljava/lang/String;

    return-object v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/yausername/youtubedl_android/mapper/VideoInfo;->url:Ljava/lang/String;

    return-object v0
.end method

.method public final getViewCount()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/yausername/youtubedl_android/mapper/VideoInfo;->viewCount:Ljava/lang/String;

    return-object v0
.end method

.method public final getWebpageUrl()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/yausername/youtubedl_android/mapper/VideoInfo;->webpageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getWebpageUrlBasename()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/yausername/youtubedl_android/mapper/VideoInfo;->webpageUrlBasename:Ljava/lang/String;

    return-object v0
.end method

.method public final getWidth()I
    .locals 1

    .line 54
    iget v0, p0, Lcom/yausername/youtubedl_android/mapper/VideoInfo;->width:I

    return v0
.end method
