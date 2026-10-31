.class final Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;
.super Ljava/lang/Object;
.source "FragmentedMp4Extractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TrackBundle"
.end annotation


# static fields
.field private static final SINGLE_SUBSAMPLE_ENCRYPTION_DATA_LENGTH:I = 0x8


# instance fields
.field public currentSampleInTrackRun:I

.field public currentSampleIndex:I

.field public currentTrackRunIndex:I

.field private currentlyInFragment:Z

.field private final defaultInitializationVector:Landroidx/media3/common/util/ParsableByteArray;

.field public defaultSampleValues:Landroidx/media3/extractor/mp4/DefaultSampleValues;

.field private final encryptionSignalByte:Landroidx/media3/common/util/ParsableByteArray;

.field public firstSampleToOutputIndex:I

.field public final fragment:Landroidx/media3/extractor/mp4/TrackFragment;

.field public moovSampleTable:Landroidx/media3/extractor/mp4/TrackSampleTable;

.field public final output:Landroidx/media3/extractor/TrackOutput;

.field public final scratch:Landroidx/media3/common/util/ParsableByteArray;


# direct methods
.method public constructor <init>(Landroidx/media3/extractor/TrackOutput;Landroidx/media3/extractor/mp4/TrackSampleTable;Landroidx/media3/extractor/mp4/DefaultSampleValues;)V
    .locals 2
    .param p1, "output"    # Landroidx/media3/extractor/TrackOutput;
    .param p2, "moovSampleTable"    # Landroidx/media3/extractor/mp4/TrackSampleTable;
    .param p3, "defaultSampleValues"    # Landroidx/media3/extractor/mp4/DefaultSampleValues;

    .line 1855
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1856
    iput-object p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->output:Landroidx/media3/extractor/TrackOutput;

    .line 1857
    iput-object p2, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->moovSampleTable:Landroidx/media3/extractor/mp4/TrackSampleTable;

    .line 1858
    iput-object p3, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->defaultSampleValues:Landroidx/media3/extractor/mp4/DefaultSampleValues;

    .line 1859
    new-instance v0, Landroidx/media3/extractor/mp4/TrackFragment;

    invoke-direct {v0}, Landroidx/media3/extractor/mp4/TrackFragment;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroidx/media3/extractor/mp4/TrackFragment;

    .line 1860
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {v0}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    .line 1861
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->encryptionSignalByte:Landroidx/media3/common/util/ParsableByteArray;

    .line 1862
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {v0}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->defaultInitializationVector:Landroidx/media3/common/util/ParsableByteArray;

    .line 1863
    invoke-virtual {p0, p2, p3}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->reset(Landroidx/media3/extractor/mp4/TrackSampleTable;Landroidx/media3/extractor/mp4/DefaultSampleValues;)V

    .line 1864
    return-void
.end method

.method static synthetic access$000(Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;)Z
    .locals 1
    .param p0, "x0"    # Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    .line 1832
    iget-boolean v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentlyInFragment:Z

    return v0
.end method

.method static synthetic access$002(Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;Z)Z
    .locals 0
    .param p0, "x0"    # Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;
    .param p1, "x1"    # Z

    .line 1832
    iput-boolean p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentlyInFragment:Z

    return p1
.end method


# virtual methods
.method public getCurrentSampleFlags()I
    .locals 2

    .line 1936
    iget-boolean v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentlyInFragment:Z

    if-nez v0, :cond_0

    .line 1937
    iget-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->moovSampleTable:Landroidx/media3/extractor/mp4/TrackSampleTable;

    iget-object v0, v0, Landroidx/media3/extractor/mp4/TrackSampleTable;->flags:[I

    iget v1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    aget v0, v0, v1

    goto :goto_0

    .line 1938
    :cond_0
    iget-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroidx/media3/extractor/mp4/TrackFragment;

    iget-object v0, v0, Landroidx/media3/extractor/mp4/TrackFragment;->sampleIsSyncFrameTable:[Z

    iget v1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    nop

    .line 1939
    .local v0, "flags":I
    invoke-virtual {p0}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->getEncryptionBoxIfEncrypted()Landroidx/media3/extractor/mp4/TrackEncryptionBox;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1940
    const/high16 v1, 0x40000000    # 2.0f

    or-int/2addr v0, v1

    .line 1942
    :cond_2
    return v0
.end method

.method public getCurrentSampleOffset()J
    .locals 3

    .line 1921
    iget-boolean v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentlyInFragment:Z

    if-nez v0, :cond_0

    .line 1922
    iget-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->moovSampleTable:Landroidx/media3/extractor/mp4/TrackSampleTable;

    iget-object v0, v0, Landroidx/media3/extractor/mp4/TrackSampleTable;->offsets:[J

    iget v1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    aget-wide v1, v0, v1

    goto :goto_0

    .line 1923
    :cond_0
    iget-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroidx/media3/extractor/mp4/TrackFragment;

    iget-object v0, v0, Landroidx/media3/extractor/mp4/TrackFragment;->trunDataPosition:[J

    iget v1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentTrackRunIndex:I

    aget-wide v1, v0, v1

    .line 1921
    :goto_0
    return-wide v1
.end method

.method public getCurrentSamplePresentationTimeUs()J
    .locals 3

    .line 1914
    iget-boolean v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentlyInFragment:Z

    if-nez v0, :cond_0

    .line 1915
    iget-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->moovSampleTable:Landroidx/media3/extractor/mp4/TrackSampleTable;

    iget-object v0, v0, Landroidx/media3/extractor/mp4/TrackSampleTable;->timestampsUs:[J

    iget v1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    aget-wide v1, v0, v1

    goto :goto_0

    .line 1916
    :cond_0
    iget-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroidx/media3/extractor/mp4/TrackFragment;

    iget v1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    invoke-virtual {v0, v1}, Landroidx/media3/extractor/mp4/TrackFragment;->getSamplePresentationTimeUs(I)J

    move-result-wide v1

    .line 1914
    :goto_0
    return-wide v1
.end method

.method public getCurrentSampleSize()I
    .locals 2

    .line 1928
    iget-boolean v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentlyInFragment:Z

    if-nez v0, :cond_0

    .line 1929
    iget-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->moovSampleTable:Landroidx/media3/extractor/mp4/TrackSampleTable;

    iget-object v0, v0, Landroidx/media3/extractor/mp4/TrackSampleTable;->sizes:[I

    iget v1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    aget v0, v0, v1

    goto :goto_0

    .line 1930
    :cond_0
    iget-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroidx/media3/extractor/mp4/TrackFragment;

    iget-object v0, v0, Landroidx/media3/extractor/mp4/TrackFragment;->sampleSizeTable:[I

    iget v1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    aget v0, v0, v1

    .line 1928
    :goto_0
    return v0
.end method

.method public getEncryptionBoxIfEncrypted()Landroidx/media3/extractor/mp4/TrackEncryptionBox;
    .locals 4

    .line 2089
    iget-boolean v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentlyInFragment:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2091
    return-object v1

    .line 2093
    :cond_0
    iget-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroidx/media3/extractor/mp4/TrackFragment;

    iget-object v0, v0, Landroidx/media3/extractor/mp4/TrackFragment;->header:Landroidx/media3/extractor/mp4/DefaultSampleValues;

    invoke-static {v0}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/extractor/mp4/DefaultSampleValues;

    iget v0, v0, Landroidx/media3/extractor/mp4/DefaultSampleValues;->sampleDescriptionIndex:I

    .line 2096
    .local v0, "sampleDescriptionIndex":I
    iget-object v2, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroidx/media3/extractor/mp4/TrackFragment;

    iget-object v2, v2, Landroidx/media3/extractor/mp4/TrackFragment;->trackEncryptionBox:Landroidx/media3/extractor/mp4/TrackEncryptionBox;

    if-eqz v2, :cond_1

    .line 2097
    iget-object v2, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroidx/media3/extractor/mp4/TrackFragment;

    iget-object v2, v2, Landroidx/media3/extractor/mp4/TrackFragment;->trackEncryptionBox:Landroidx/media3/extractor/mp4/TrackEncryptionBox;

    goto :goto_0

    .line 2098
    :cond_1
    iget-object v2, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->moovSampleTable:Landroidx/media3/extractor/mp4/TrackSampleTable;

    iget-object v2, v2, Landroidx/media3/extractor/mp4/TrackSampleTable;->track:Landroidx/media3/extractor/mp4/Track;

    invoke-virtual {v2, v0}, Landroidx/media3/extractor/mp4/Track;->getSampleDescriptionEncryptionBox(I)Landroidx/media3/extractor/mp4/TrackEncryptionBox;

    move-result-object v2

    :goto_0
    nop

    .line 2099
    .local v2, "encryptionBox":Landroidx/media3/extractor/mp4/TrackEncryptionBox;
    if-eqz v2, :cond_2

    iget-boolean v3, v2, Landroidx/media3/extractor/mp4/TrackEncryptionBox;->isEncrypted:Z

    if-eqz v3, :cond_2

    move-object v1, v2

    :cond_2
    return-object v1
.end method

.method public next()Z
    .locals 5

    .line 1959
    iget v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    .line 1960
    iget-boolean v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentlyInFragment:Z

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 1961
    return v2

    .line 1963
    :cond_0
    iget v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleInTrackRun:I

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleInTrackRun:I

    .line 1964
    iget v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleInTrackRun:I

    iget-object v3, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroidx/media3/extractor/mp4/TrackFragment;

    iget-object v3, v3, Landroidx/media3/extractor/mp4/TrackFragment;->trunLength:[I

    iget v4, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentTrackRunIndex:I

    aget v3, v3, v4

    if-ne v0, v3, :cond_1

    .line 1965
    iget v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentTrackRunIndex:I

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentTrackRunIndex:I

    .line 1966
    iput v2, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleInTrackRun:I

    .line 1967
    return v2

    .line 1969
    :cond_1
    return v1
.end method

.method public outputSampleEncryptionData(II)I
    .locals 16
    .param p1, "sampleSize"    # I
    .param p2, "clearHeaderSize"    # I

    .line 1984
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->getEncryptionBoxIfEncrypted()Landroidx/media3/extractor/mp4/TrackEncryptionBox;

    move-result-object v3

    .line 1985
    .local v3, "encryptionBox":Landroidx/media3/extractor/mp4/TrackEncryptionBox;
    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 1986
    return v4

    .line 1991
    :cond_0
    iget v5, v3, Landroidx/media3/extractor/mp4/TrackEncryptionBox;->perSampleIvSize:I

    if-eqz v5, :cond_1

    .line 1992
    iget-object v5, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroidx/media3/extractor/mp4/TrackFragment;

    iget-object v5, v5, Landroidx/media3/extractor/mp4/TrackFragment;->sampleEncryptionData:Landroidx/media3/common/util/ParsableByteArray;

    .line 1993
    .local v5, "initializationVectorData":Landroidx/media3/common/util/ParsableByteArray;
    iget v6, v3, Landroidx/media3/extractor/mp4/TrackEncryptionBox;->perSampleIvSize:I

    .local v6, "vectorSize":I
    goto :goto_0

    .line 1996
    .end local v5    # "initializationVectorData":Landroidx/media3/common/util/ParsableByteArray;
    .end local v6    # "vectorSize":I
    :cond_1
    iget-object v5, v3, Landroidx/media3/extractor/mp4/TrackEncryptionBox;->defaultInitializationVector:[B

    invoke-static {v5}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    .line 1997
    .local v5, "initVectorData":[B
    iget-object v6, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->defaultInitializationVector:Landroidx/media3/common/util/ParsableByteArray;

    array-length v7, v5

    invoke-virtual {v6, v5, v7}, Landroidx/media3/common/util/ParsableByteArray;->reset([BI)V

    .line 1998
    iget-object v6, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->defaultInitializationVector:Landroidx/media3/common/util/ParsableByteArray;

    .line 1999
    .local v6, "initializationVectorData":Landroidx/media3/common/util/ParsableByteArray;
    array-length v7, v5

    move-object v5, v6

    move v6, v7

    .line 2002
    .local v5, "initializationVectorData":Landroidx/media3/common/util/ParsableByteArray;
    .local v6, "vectorSize":I
    :goto_0
    iget-object v7, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroidx/media3/extractor/mp4/TrackFragment;

    iget v8, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    .line 2003
    invoke-virtual {v7, v8}, Landroidx/media3/extractor/mp4/TrackFragment;->sampleHasSubsampleEncryptionTable(I)Z

    move-result v7

    .line 2004
    .local v7, "haveSubsampleEncryptionTable":Z
    const/4 v8, 0x1

    if-nez v7, :cond_3

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    move v9, v4

    goto :goto_2

    :cond_3
    :goto_1
    move v9, v8

    .line 2007
    .local v9, "writeSubsampleEncryptionData":Z
    :goto_2
    iget-object v10, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->encryptionSignalByte:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v10}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v10

    .line 2008
    if-eqz v9, :cond_4

    const/16 v11, 0x80

    goto :goto_3

    :cond_4
    move v11, v4

    :goto_3
    or-int/2addr v11, v6

    int-to-byte v11, v11

    aput-byte v11, v10, v4

    .line 2009
    iget-object v10, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->encryptionSignalByte:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v10, v4}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 2010
    iget-object v10, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->output:Landroidx/media3/extractor/TrackOutput;

    iget-object v11, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->encryptionSignalByte:Landroidx/media3/common/util/ParsableByteArray;

    invoke-interface {v10, v11, v8, v8}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/util/ParsableByteArray;II)V

    .line 2012
    iget-object v10, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->output:Landroidx/media3/extractor/TrackOutput;

    invoke-interface {v10, v5, v6, v8}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/util/ParsableByteArray;II)V

    .line 2015
    if-nez v9, :cond_5

    .line 2016
    add-int/lit8 v4, v6, 0x1

    return v4

    .line 2019
    :cond_5
    const/4 v10, 0x3

    const/4 v11, 0x2

    const/16 v12, 0x8

    if-nez v7, :cond_6

    .line 2023
    iget-object v13, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v13, v12}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    .line 2025
    iget-object v13, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v13}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v13

    .line 2026
    .local v13, "data":[B
    aput-byte v4, v13, v4

    .line 2027
    aput-byte v8, v13, v8

    .line 2029
    shr-int/lit8 v4, v2, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v13, v11

    .line 2030
    and-int/lit16 v4, v2, 0xff

    int-to-byte v4, v4

    aput-byte v4, v13, v10

    .line 2032
    shr-int/lit8 v4, v1, 0x18

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    const/4 v10, 0x4

    aput-byte v4, v13, v10

    .line 2033
    shr-int/lit8 v4, v1, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    const/4 v10, 0x5

    aput-byte v4, v13, v10

    .line 2034
    shr-int/lit8 v4, v1, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    const/4 v10, 0x6

    aput-byte v4, v13, v10

    .line 2035
    and-int/lit16 v4, v1, 0xff

    int-to-byte v4, v4

    const/4 v10, 0x7

    aput-byte v4, v13, v10

    .line 2036
    iget-object v4, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->output:Landroidx/media3/extractor/TrackOutput;

    iget-object v10, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    invoke-interface {v4, v10, v12, v8}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/util/ParsableByteArray;II)V

    .line 2040
    add-int/lit8 v4, v6, 0x1

    add-int/2addr v4, v12

    return v4

    .line 2043
    .end local v13    # "data":[B
    :cond_6
    iget-object v13, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroidx/media3/extractor/mp4/TrackFragment;

    iget-object v13, v13, Landroidx/media3/extractor/mp4/TrackFragment;->sampleEncryptionData:Landroidx/media3/common/util/ParsableByteArray;

    .line 2044
    .local v13, "subsampleEncryptionData":Landroidx/media3/common/util/ParsableByteArray;
    invoke-virtual {v13}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v14

    .line 2045
    .local v14, "subsampleCount":I
    const/4 v15, -0x2

    invoke-virtual {v13, v15}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 2046
    mul-int/lit8 v15, v14, 0x6

    add-int/2addr v15, v11

    .line 2048
    .local v15, "subsampleDataLength":I
    if-eqz v2, :cond_7

    .line 2051
    iget-object v8, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v8, v15}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    .line 2052
    iget-object v8, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v8}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v8

    .line 2053
    .local v8, "scratchData":[B
    invoke-virtual {v13, v8, v4, v15}, Landroidx/media3/common/util/ParsableByteArray;->readBytes([BII)V

    .line 2055
    aget-byte v4, v8, v11

    and-int/lit16 v4, v4, 0xff

    shl-int/2addr v4, v12

    aget-byte v12, v8, v10

    and-int/lit16 v12, v12, 0xff

    or-int/2addr v4, v12

    .line 2056
    .local v4, "clearDataSize":I
    add-int v12, v4, v2

    .line 2057
    .local v12, "adjustedClearDataSize":I
    shr-int/lit8 v10, v12, 0x8

    and-int/lit16 v10, v10, 0xff

    int-to-byte v10, v10

    aput-byte v10, v8, v11

    .line 2058
    and-int/lit16 v10, v12, 0xff

    int-to-byte v10, v10

    const/4 v11, 0x3

    aput-byte v10, v8, v11

    .line 2059
    iget-object v13, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    .line 2062
    .end local v4    # "clearDataSize":I
    .end local v8    # "scratchData":[B
    .end local v12    # "adjustedClearDataSize":I
    :cond_7
    iget-object v4, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->output:Landroidx/media3/extractor/TrackOutput;

    const/4 v8, 0x1

    invoke-interface {v4, v13, v15, v8}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/util/ParsableByteArray;II)V

    .line 2064
    add-int/lit8 v4, v6, 0x1

    add-int/2addr v4, v15

    return v4
.end method

.method public reset(Landroidx/media3/extractor/mp4/TrackSampleTable;Landroidx/media3/extractor/mp4/DefaultSampleValues;)V
    .locals 2
    .param p1, "moovSampleTable"    # Landroidx/media3/extractor/mp4/TrackSampleTable;
    .param p2, "defaultSampleValues"    # Landroidx/media3/extractor/mp4/DefaultSampleValues;

    .line 1867
    iput-object p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->moovSampleTable:Landroidx/media3/extractor/mp4/TrackSampleTable;

    .line 1868
    iput-object p2, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->defaultSampleValues:Landroidx/media3/extractor/mp4/DefaultSampleValues;

    .line 1869
    iget-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->output:Landroidx/media3/extractor/TrackOutput;

    iget-object v1, p1, Landroidx/media3/extractor/mp4/TrackSampleTable;->track:Landroidx/media3/extractor/mp4/Track;

    iget-object v1, v1, Landroidx/media3/extractor/mp4/Track;->format:Landroidx/media3/common/Format;

    invoke-interface {v0, v1}, Landroidx/media3/extractor/TrackOutput;->format(Landroidx/media3/common/Format;)V

    .line 1870
    invoke-virtual {p0}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->resetFragmentInfo()V

    .line 1871
    return-void
.end method

.method public resetFragmentInfo()V
    .locals 1

    .line 1887
    iget-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroidx/media3/extractor/mp4/TrackFragment;

    invoke-virtual {v0}, Landroidx/media3/extractor/mp4/TrackFragment;->reset()V

    .line 1888
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    .line 1889
    iput v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentTrackRunIndex:I

    .line 1890
    iput v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleInTrackRun:I

    .line 1891
    iput v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->firstSampleToOutputIndex:I

    .line 1892
    iput-boolean v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentlyInFragment:Z

    .line 1893
    return-void
.end method

.method public seek(J)V
    .locals 3
    .param p1, "timeUs"    # J

    .line 1902
    iget v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    .line 1903
    .local v0, "searchIndex":I
    :goto_0
    iget-object v1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroidx/media3/extractor/mp4/TrackFragment;

    iget v1, v1, Landroidx/media3/extractor/mp4/TrackFragment;->sampleCount:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroidx/media3/extractor/mp4/TrackFragment;

    .line 1904
    invoke-virtual {v1, v0}, Landroidx/media3/extractor/mp4/TrackFragment;->getSamplePresentationTimeUs(I)J

    move-result-wide v1

    cmp-long v1, v1, p1

    if-gtz v1, :cond_1

    .line 1905
    iget-object v1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroidx/media3/extractor/mp4/TrackFragment;

    iget-object v1, v1, Landroidx/media3/extractor/mp4/TrackFragment;->sampleIsSyncFrameTable:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_0

    .line 1906
    iput v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->firstSampleToOutputIndex:I

    .line 1908
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1910
    :cond_1
    return-void
.end method

.method public skipSampleEncryptionData()V
    .locals 4

    .line 2073
    invoke-virtual {p0}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->getEncryptionBoxIfEncrypted()Landroidx/media3/extractor/mp4/TrackEncryptionBox;

    move-result-object v0

    .line 2074
    .local v0, "encryptionBox":Landroidx/media3/extractor/mp4/TrackEncryptionBox;
    if-nez v0, :cond_0

    .line 2075
    return-void

    .line 2078
    :cond_0
    iget-object v1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroidx/media3/extractor/mp4/TrackFragment;

    iget-object v1, v1, Landroidx/media3/extractor/mp4/TrackFragment;->sampleEncryptionData:Landroidx/media3/common/util/ParsableByteArray;

    .line 2079
    .local v1, "sampleEncryptionData":Landroidx/media3/common/util/ParsableByteArray;
    iget v2, v0, Landroidx/media3/extractor/mp4/TrackEncryptionBox;->perSampleIvSize:I

    if-eqz v2, :cond_1

    .line 2080
    iget v2, v0, Landroidx/media3/extractor/mp4/TrackEncryptionBox;->perSampleIvSize:I

    invoke-virtual {v1, v2}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 2082
    :cond_1
    iget-object v2, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroidx/media3/extractor/mp4/TrackFragment;

    iget v3, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    invoke-virtual {v2, v3}, Landroidx/media3/extractor/mp4/TrackFragment;->sampleHasSubsampleEncryptionTable(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2083
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v2

    mul-int/lit8 v2, v2, 0x6

    invoke-virtual {v1, v2}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 2085
    :cond_2
    return-void
.end method

.method public updateDrmInitData(Landroidx/media3/common/DrmInitData;)V
    .locals 5
    .param p1, "drmInitData"    # Landroidx/media3/common/DrmInitData;

    .line 1875
    iget-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->moovSampleTable:Landroidx/media3/extractor/mp4/TrackSampleTable;

    iget-object v0, v0, Landroidx/media3/extractor/mp4/TrackSampleTable;->track:Landroidx/media3/extractor/mp4/Track;

    iget-object v1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroidx/media3/extractor/mp4/TrackFragment;

    iget-object v1, v1, Landroidx/media3/extractor/mp4/TrackFragment;->header:Landroidx/media3/extractor/mp4/DefaultSampleValues;

    .line 1877
    invoke-static {v1}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/extractor/mp4/DefaultSampleValues;

    iget v1, v1, Landroidx/media3/extractor/mp4/DefaultSampleValues;->sampleDescriptionIndex:I

    .line 1876
    invoke-virtual {v0, v1}, Landroidx/media3/extractor/mp4/Track;->getSampleDescriptionEncryptionBox(I)Landroidx/media3/extractor/mp4/TrackEncryptionBox;

    move-result-object v0

    .line 1878
    .local v0, "encryptionBox":Landroidx/media3/extractor/mp4/TrackEncryptionBox;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroidx/media3/extractor/mp4/TrackEncryptionBox;->schemeType:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1879
    .local v1, "schemeType":Ljava/lang/String;
    :goto_0
    invoke-virtual {p1, v1}, Landroidx/media3/common/DrmInitData;->copyWithSchemeType(Ljava/lang/String;)Landroidx/media3/common/DrmInitData;

    move-result-object v2

    .line 1880
    .local v2, "updatedDrmInitData":Landroidx/media3/common/DrmInitData;
    iget-object v3, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->moovSampleTable:Landroidx/media3/extractor/mp4/TrackSampleTable;

    iget-object v3, v3, Landroidx/media3/extractor/mp4/TrackSampleTable;->track:Landroidx/media3/extractor/mp4/Track;

    iget-object v3, v3, Landroidx/media3/extractor/mp4/Track;->format:Landroidx/media3/common/Format;

    .line 1881
    invoke-virtual {v3}, Landroidx/media3/common/Format;->buildUpon()Landroidx/media3/common/Format$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroidx/media3/common/Format$Builder;->setDrmInitData(Landroidx/media3/common/DrmInitData;)Landroidx/media3/common/Format$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v3

    .line 1882
    .local v3, "format":Landroidx/media3/common/Format;
    iget-object v4, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->output:Landroidx/media3/extractor/TrackOutput;

    invoke-interface {v4, v3}, Landroidx/media3/extractor/TrackOutput;->format(Landroidx/media3/common/Format;)V

    .line 1883
    return-void
.end method
