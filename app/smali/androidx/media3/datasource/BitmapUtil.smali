.class public final Landroidx/media3/datasource/BitmapUtil;
.super Ljava/lang/Object;
.source "BitmapUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode([BILandroid/graphics/BitmapFactory$Options;I)Landroid/graphics/Bitmap;
    .locals 11
    .param p0, "data"    # [B
    .param p1, "length"    # I
    .param p2, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p3, "maximumOutputDimension"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    const/4 v0, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p3, v0, :cond_1

    .line 55
    if-nez p2, :cond_0

    .line 56
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    move-object p2, v0

    .line 58
    :cond_0
    iput-boolean v1, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 59
    invoke-static {p0, v2, p1, p2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 60
    iget v0, p2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v3, p2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 62
    .local v0, "largerDimensions":I
    iput-boolean v2, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 63
    iput v1, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 65
    :goto_0
    if-le v0, p3, :cond_1

    .line 66
    iget v3, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    mul-int/lit8 v3, v3, 0x2

    iput v3, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 67
    div-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 71
    .end local v0    # "largerDimensions":I
    :cond_1
    invoke-static {p0, v2, p1, p2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 72
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz p2, :cond_2

    .line 73
    iput v1, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 75
    :cond_2
    if-eqz v0, :cond_4

    .line 82
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 83
    .local v1, "inputStream":Ljava/io/InputStream;
    :try_start_0
    new-instance v2, Landroidx/exifinterface/media/ExifInterface;

    invoke-direct {v2, v1}, Landroidx/exifinterface/media/ExifInterface;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    .local v2, "exifInterface":Landroidx/exifinterface/media/ExifInterface;
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 85
    .end local v1    # "inputStream":Ljava/io/InputStream;
    invoke-virtual {v2}, Landroidx/exifinterface/media/ExifInterface;->getRotationDegrees()I

    move-result v1

    .line 86
    .local v1, "rotationDegrees":I
    if-eqz v1, :cond_3

    .line 87
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    move-object v10, v3

    .line 88
    .local v10, "matrix":Landroid/graphics/Matrix;
    int-to-float v3, v1

    invoke-virtual {v10, v3}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 89
    nop

    .line 94
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 95
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 90
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v9, 0x0

    move-object v3, v0

    move-object v8, v10

    invoke-static/range {v3 .. v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 99
    .end local v10    # "matrix":Landroid/graphics/Matrix;
    :cond_3
    return-object v0

    .line 82
    .end local v2    # "exifInterface":Landroidx/exifinterface/media/ExifInterface;
    .local v1, "inputStream":Ljava/io/InputStream;
    :catchall_0
    move-exception v2

    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v2

    .line 76
    .end local v1    # "inputStream":Ljava/io/InputStream;
    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    const-string v2, "Could not decode image data"

    invoke-static {v2, v1}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v1

    throw v1
.end method
