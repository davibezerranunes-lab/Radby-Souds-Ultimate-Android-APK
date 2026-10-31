.class public final Lcom/yausername/youtubedl_common/utils/ZipUtils;
.super Ljava/lang/Object;
.source "ZipUtils.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nZipUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ZipUtils.kt\ncom/yausername/youtubedl_common/utils/ZipUtils\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,65:1\n1#2:66\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\u0006J\u0018\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0007\u001a\u00020\u0006\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/yausername/youtubedl_common/utils/ZipUtils;",
        "",
        "()V",
        "unzip",
        "",
        "sourceFile",
        "Ljava/io/File;",
        "targetDirectory",
        "inputStream",
        "Ljava/io/InputStream;",
        "common_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/yausername/youtubedl_common/utils/ZipUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/yausername/youtubedl_common/utils/ZipUtils;

    invoke-direct {v0}, Lcom/yausername/youtubedl_common/utils/ZipUtils;-><init>()V

    sput-object v0, Lcom/yausername/youtubedl_common/utils/ZipUtils;->INSTANCE:Lcom/yausername/youtubedl_common/utils/ZipUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final unzip(Ljava/io/File;Ljava/io/File;)V
    .locals 16
    .param p1, "sourceFile"    # Ljava/io/File;
    .param p2, "targetDirectory"    # Ljava/io/File;

    move-object/from16 v1, p2

    const-string v0, "targetDirectory"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipFile;

    move-object/from16 v2, p1

    invoke-direct {v0, v2}, Lorg/apache/commons/compress/archivers/zip/ZipFile;-><init>(Ljava/io/File;)V

    move-object v3, v0

    check-cast v3, Ljava/io/Closeable;

    :try_start_0
    move-object v0, v3

    check-cast v0, Lorg/apache/commons/compress/archivers/zip/ZipFile;

    move-object v4, v0

    .local v4, "zipFile":Lorg/apache/commons/compress/archivers/zip/ZipFile;
    const/4 v5, 0x0

    .line 17
    .local v5, "$i$a$-use-ZipUtils$unzip$1":I
    invoke-virtual {v4}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->getEntries()Ljava/util/Enumeration;

    move-result-object v0

    move-object v6, v0

    .line 18
    .local v6, "entries":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v6}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    const/4 v7, 0x0

    if-eqz v0, :cond_4

    .line 19
    invoke-interface {v6}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-object v8, v0

    .line 20
    .local v8, "entry":Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    new-instance v0, Ljava/io/File;

    invoke-virtual {v8}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v1, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v9, v0

    .line 22
    .local v9, "entryDestination":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    const-string v10, "entryDestination.canonicalPath"

    invoke-static {v0, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x2

    invoke-static {v0, v10, v11, v12, v7}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 25
    invoke-virtual {v8}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {v8}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->isUnixSymlink()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 28
    invoke-virtual {v4, v8}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->getInputStream(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Ljava/io/InputStream;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Ljava/io/Closeable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    :try_start_1
    move-object v0, v10

    check-cast v0, Ljava/io/InputStream;

    .local v0, "in":Ljava/io/InputStream;
    const/4 v11, 0x0

    .line 29
    .local v11, "$i$a$-use-ZipUtils$unzip$1$1":I
    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {v0, v12}, Lorg/apache/commons/io/IOUtils;->toString(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v12

    .line 30
    .local v12, "symlink":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/system/Os;->symlink(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    nop

    .end local v0    # "in":Ljava/io/InputStream;
    .end local v11    # "$i$a$-use-ZipUtils$unzip$1$1":I
    .end local v12    # "symlink":Ljava/lang/String;
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    :try_start_2
    invoke-static {v10, v7}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v7, v0

    .end local v4    # "zipFile":Lorg/apache/commons/compress/archivers/zip/ZipFile;
    .end local v5    # "$i$a$-use-ZipUtils$unzip$1":I
    .end local v6    # "entries":Ljava/util/Enumeration;
    .end local v8    # "entry":Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    .end local v9    # "entryDestination":Ljava/io/File;
    .end local p1    # "sourceFile":Ljava/io/File;
    .end local p2    # "targetDirectory":Ljava/io/File;
    :try_start_3
    throw v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .restart local v4    # "zipFile":Lorg/apache/commons/compress/archivers/zip/ZipFile;
    .restart local v5    # "$i$a$-use-ZipUtils$unzip$1":I
    .restart local v6    # "entries":Ljava/util/Enumeration;
    .restart local v8    # "entry":Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    .restart local v9    # "entryDestination":Ljava/io/File;
    .restart local p1    # "sourceFile":Ljava/io/File;
    .restart local p2    # "targetDirectory":Ljava/io/File;
    :catchall_1
    move-exception v0

    move-object v11, v0

    :try_start_4
    invoke-static {v10, v7}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .end local p1    # "sourceFile":Ljava/io/File;
    .end local p2    # "targetDirectory":Ljava/io/File;
    throw v11

    .line 33
    .restart local p1    # "sourceFile":Ljava/io/File;
    .restart local p2    # "targetDirectory":Ljava/io/File;
    :cond_1
    invoke-virtual {v9}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 34
    :cond_2
    invoke-virtual {v4, v8}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->getInputStream(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Ljava/io/InputStream;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Ljava/io/Closeable;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    :try_start_5
    move-object v0, v10

    check-cast v0, Ljava/io/InputStream;

    move-object v11, v0

    .local v11, "in":Ljava/io/InputStream;
    const/4 v12, 0x0

    .line 35
    .local v12, "$i$a$-use-ZipUtils$unzip$1$2":I
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v13, v0

    check-cast v13, Ljava/io/Closeable;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :try_start_6
    move-object v0, v13

    check-cast v0, Ljava/io/FileOutputStream;

    .local v0, "out":Ljava/io/FileOutputStream;
    const/4 v14, 0x0

    .line 37
    .local v14, "$i$a$-use-ZipUtils$unzip$1$2$1":I
    nop

    .line 38
    move-object v15, v0

    check-cast v15, Ljava/io/OutputStream;

    .line 36
    invoke-static {v11, v15}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 35
    .end local v0    # "out":Ljava/io/FileOutputStream;
    .end local v14    # "$i$a$-use-ZipUtils$unzip$1$2$1":I
    :try_start_7
    invoke-static {v13, v7}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 34
    .end local v11    # "in":Ljava/io/InputStream;
    .end local v12    # "$i$a$-use-ZipUtils$unzip$1$2":I
    :try_start_8
    invoke-static {v10, v7}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    goto/16 :goto_0

    .line 35
    .restart local v11    # "in":Ljava/io/InputStream;
    .restart local v12    # "$i$a$-use-ZipUtils$unzip$1$2":I
    :catchall_2
    move-exception v0

    move-object v7, v0

    .end local v4    # "zipFile":Lorg/apache/commons/compress/archivers/zip/ZipFile;
    .end local v5    # "$i$a$-use-ZipUtils$unzip$1":I
    .end local v6    # "entries":Ljava/util/Enumeration;
    .end local v8    # "entry":Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    .end local v9    # "entryDestination":Ljava/io/File;
    .end local v11    # "in":Ljava/io/InputStream;
    .end local v12    # "$i$a$-use-ZipUtils$unzip$1$2":I
    .end local p1    # "sourceFile":Ljava/io/File;
    .end local p2    # "targetDirectory":Ljava/io/File;
    :try_start_9
    throw v7
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .restart local v4    # "zipFile":Lorg/apache/commons/compress/archivers/zip/ZipFile;
    .restart local v5    # "$i$a$-use-ZipUtils$unzip$1":I
    .restart local v6    # "entries":Ljava/util/Enumeration;
    .restart local v8    # "entry":Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    .restart local v9    # "entryDestination":Ljava/io/File;
    .restart local v11    # "in":Ljava/io/InputStream;
    .restart local v12    # "$i$a$-use-ZipUtils$unzip$1$2":I
    .restart local p1    # "sourceFile":Ljava/io/File;
    .restart local p2    # "targetDirectory":Ljava/io/File;
    :catchall_3
    move-exception v0

    move-object v14, v0

    :try_start_a
    invoke-static {v13, v7}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .end local v4    # "zipFile":Lorg/apache/commons/compress/archivers/zip/ZipFile;
    .end local v5    # "$i$a$-use-ZipUtils$unzip$1":I
    .end local v6    # "entries":Ljava/util/Enumeration;
    .end local v8    # "entry":Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    .end local v9    # "entryDestination":Ljava/io/File;
    .end local p1    # "sourceFile":Ljava/io/File;
    .end local p2    # "targetDirectory":Ljava/io/File;
    throw v14
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 34
    .end local v11    # "in":Ljava/io/InputStream;
    .end local v12    # "$i$a$-use-ZipUtils$unzip$1$2":I
    .restart local v4    # "zipFile":Lorg/apache/commons/compress/archivers/zip/ZipFile;
    .restart local v5    # "$i$a$-use-ZipUtils$unzip$1":I
    .restart local v6    # "entries":Ljava/util/Enumeration;
    .restart local v8    # "entry":Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    .restart local v9    # "entryDestination":Ljava/io/File;
    .restart local p1    # "sourceFile":Ljava/io/File;
    .restart local p2    # "targetDirectory":Ljava/io/File;
    :catchall_4
    move-exception v0

    move-object v7, v0

    .end local v4    # "zipFile":Lorg/apache/commons/compress/archivers/zip/ZipFile;
    .end local v5    # "$i$a$-use-ZipUtils$unzip$1":I
    .end local v6    # "entries":Ljava/util/Enumeration;
    .end local v8    # "entry":Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    .end local v9    # "entryDestination":Ljava/io/File;
    .end local p1    # "sourceFile":Ljava/io/File;
    .end local p2    # "targetDirectory":Ljava/io/File;
    :try_start_b
    throw v7
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .restart local v4    # "zipFile":Lorg/apache/commons/compress/archivers/zip/ZipFile;
    .restart local v5    # "$i$a$-use-ZipUtils$unzip$1":I
    .restart local v6    # "entries":Ljava/util/Enumeration;
    .restart local v8    # "entry":Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    .restart local v9    # "entryDestination":Ljava/io/File;
    .restart local p1    # "sourceFile":Ljava/io/File;
    .restart local p2    # "targetDirectory":Ljava/io/File;
    :catchall_5
    move-exception v0

    move-object v11, v0

    :try_start_c
    invoke-static {v10, v7}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .end local p1    # "sourceFile":Ljava/io/File;
    .end local p2    # "targetDirectory":Ljava/io/File;
    throw v11

    .line 23
    .restart local p1    # "sourceFile":Ljava/io/File;
    .restart local p2    # "targetDirectory":Ljava/io/File;
    :cond_3
    new-instance v0, Ljava/lang/IllegalAccessException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Entry is outside of the target dir: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v8}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    .end local p1    # "sourceFile":Ljava/io/File;
    .end local p2    # "targetDirectory":Ljava/io/File;
    throw v0

    .line 44
    .end local v8    # "entry":Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    .end local v9    # "entryDestination":Ljava/io/File;
    .restart local p1    # "sourceFile":Ljava/io/File;
    .restart local p2    # "targetDirectory":Ljava/io/File;
    :cond_4
    nop

    .end local v4    # "zipFile":Lorg/apache/commons/compress/archivers/zip/ZipFile;
    .end local v5    # "$i$a$-use-ZipUtils$unzip$1":I
    .end local v6    # "entries":Ljava/util/Enumeration;
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    .line 16
    invoke-static {v3, v7}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 45
    return-void

    .line 16
    :catchall_6
    move-exception v0

    move-object v4, v0

    .end local p1    # "sourceFile":Ljava/io/File;
    .end local p2    # "targetDirectory":Ljava/io/File;
    :try_start_d
    throw v4
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    .restart local p1    # "sourceFile":Ljava/io/File;
    .restart local p2    # "targetDirectory":Ljava/io/File;
    :catchall_7
    move-exception v0

    move-object v5, v0

    invoke-static {v3, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v5
.end method

.method public final unzip(Ljava/io/InputStream;Ljava/io/File;)V
    .locals 11
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "targetDirectory"    # Ljava/io/File;

    const-string v0, "targetDirectory"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;

    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    check-cast v1, Ljava/io/InputStream;

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;-><init>(Ljava/io/InputStream;)V

    check-cast v0, Ljava/io/Closeable;

    :try_start_0
    move-object v1, v0

    check-cast v1, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;

    .local v1, "zis":Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;
    const/4 v2, 0x0

    .line 49
    .local v2, "$i$a$-use-ZipUtils$unzip$2":I
    const/4 v3, 0x0

    .line 50
    .local v3, "entry":Ljava/lang/Object;
    :goto_0
    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->getNextZipEntry()Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v4

    move-object v5, v4

    .line 66
    .local v5, "it":Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    const/4 v6, 0x0

    .line 50
    .local v6, "$i$a$-also-ZipUtils$unzip$2$1":I
    move-object v3, v5

    .end local v5    # "it":Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    .end local v6    # "$i$a$-also-ZipUtils$unzip$2$1":I
    const/4 v5, 0x0

    if-eqz v4, :cond_2

    .line 51
    new-instance v4, Ljava/io/File;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, p2, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 53
    .local v4, "entryDestination":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v6

    const-string v7, "entryDestination.canonicalPath"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x2

    invoke-static {v6, v7, v8, v9, v5}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 56
    invoke-virtual {v3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 57
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    goto :goto_0

    .line 59
    :cond_0
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 60
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    check-cast v6, Ljava/io/Closeable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    move-object v7, v6

    check-cast v7, Ljava/io/FileOutputStream;

    .line 66
    .local v7, "out":Ljava/io/FileOutputStream;
    const/4 v8, 0x0

    .line 60
    .local v8, "$i$a$-use-ZipUtils$unzip$2$2":I
    move-object v9, v1

    check-cast v9, Ljava/io/InputStream;

    move-object v10, v7

    check-cast v10, Ljava/io/OutputStream;

    invoke-static {v9, v10}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v7    # "out":Ljava/io/FileOutputStream;
    .end local v8    # "$i$a$-use-ZipUtils$unzip$2$2":I
    :try_start_2
    invoke-static {v6, v5}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_0
    move-exception v5

    .end local v1    # "zis":Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;
    .end local v2    # "$i$a$-use-ZipUtils$unzip$2":I
    .end local v3    # "entry":Ljava/lang/Object;
    .end local v4    # "entryDestination":Ljava/io/File;
    .end local p1    # "inputStream":Ljava/io/InputStream;
    .end local p2    # "targetDirectory":Ljava/io/File;
    :try_start_3
    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .restart local v1    # "zis":Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;
    .restart local v2    # "$i$a$-use-ZipUtils$unzip$2":I
    .restart local v3    # "entry":Ljava/lang/Object;
    .restart local v4    # "entryDestination":Ljava/io/File;
    .restart local p1    # "inputStream":Ljava/io/InputStream;
    .restart local p2    # "targetDirectory":Ljava/io/File;
    :catchall_1
    move-exception v7

    :try_start_4
    invoke-static {v6, v5}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .end local p1    # "inputStream":Ljava/io/InputStream;
    .end local p2    # "targetDirectory":Ljava/io/File;
    throw v7

    .line 54
    .restart local p1    # "inputStream":Ljava/io/InputStream;
    .restart local p2    # "targetDirectory":Ljava/io/File;
    :cond_1
    new-instance v5, Ljava/lang/IllegalAccessException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Entry is outside of the target dir: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    .end local p1    # "inputStream":Ljava/io/InputStream;
    .end local p2    # "targetDirectory":Ljava/io/File;
    throw v5

    .line 63
    .end local v4    # "entryDestination":Ljava/io/File;
    .restart local p1    # "inputStream":Ljava/io/InputStream;
    .restart local p2    # "targetDirectory":Ljava/io/File;
    :cond_2
    nop

    .end local v1    # "zis":Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;
    .end local v2    # "$i$a$-use-ZipUtils$unzip$2":I
    .end local v3    # "entry":Ljava/lang/Object;
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 48
    invoke-static {v0, v5}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 64
    return-void

    .line 48
    :catchall_2
    move-exception v1

    .end local p1    # "inputStream":Ljava/io/InputStream;
    .end local p2    # "targetDirectory":Ljava/io/File;
    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .restart local p1    # "inputStream":Ljava/io/InputStream;
    .restart local p2    # "targetDirectory":Ljava/io/File;
    :catchall_3
    move-exception v2

    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
.end method
