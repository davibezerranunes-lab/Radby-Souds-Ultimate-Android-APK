.class public final Landroidx/media3/exoplayer/trackselection/TrackSelectionUtil;
.super Ljava/lang/Object;
.source "TrackSelectionUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/trackselection/TrackSelectionUtil$AdaptiveTrackSelectionFactory;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildTracks(Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;[Landroidx/media3/exoplayer/trackselection/TrackSelection;)Landroidx/media3/common/Tracks;
    .locals 4
    .param p0, "mappedTrackInfo"    # Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;
    .param p1, "selections"    # [Landroidx/media3/exoplayer/trackselection/TrackSelection;

    .line 146
    array-length v0, p1

    new-array v0, v0, [Ljava/util/List;

    .line 147
    .local v0, "listSelections":[Ljava/util/List;, "[Ljava/util/List<+Landroidx/media3/exoplayer/trackselection/TrackSelection;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 148
    aget-object v2, p1, v1

    .line 149
    .local v2, "selection":Landroidx/media3/exoplayer/trackselection/TrackSelection;
    if-eqz v2, :cond_0

    invoke-static {v2}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    :goto_1
    aput-object v3, v0, v1

    .line 147
    .end local v2    # "selection":Landroidx/media3/exoplayer/trackselection/TrackSelection;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 151
    .end local v1    # "i":I
    :cond_1
    invoke-static {p0, v0}, Landroidx/media3/exoplayer/trackselection/TrackSelectionUtil;->buildTracks(Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;[Ljava/util/List;)Landroidx/media3/common/Tracks;

    move-result-object v1

    return-object v1
.end method

.method public static buildTracks(Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;[Ljava/util/List;)Landroidx/media3/common/Tracks;
    .locals 16
    .param p0, "mappedTrackInfo"    # Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;",
            "[",
            "Ljava/util/List<",
            "+",
            "Landroidx/media3/exoplayer/trackselection/TrackSelection;",
            ">;)",
            "Landroidx/media3/common/Tracks;"
        }
    .end annotation

    .line 166
    .local p1, "selections":[Ljava/util/List;, "[Ljava/util/List<+Landroidx/media3/exoplayer/trackselection/TrackSelection;>;"
    move-object/from16 v0, p0

    new-instance v1, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v1}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    .line 167
    .local v1, "trackGroups":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Landroidx/media3/common/Tracks$Group;>;"
    const/4 v2, 0x0

    .line 168
    .local v2, "rendererIndex":I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererCount()I

    move-result v3

    const/4 v4, 0x0

    if-ge v2, v3, :cond_5

    .line 170
    invoke-virtual {v0, v2}, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Landroidx/media3/exoplayer/source/TrackGroupArray;

    move-result-object v3

    .line 171
    .local v3, "trackGroupArray":Landroidx/media3/exoplayer/source/TrackGroupArray;
    aget-object v5, p1, v2

    .line 172
    .local v5, "rendererTrackSelections":Ljava/util/List;, "Ljava/util/List<+Landroidx/media3/exoplayer/trackselection/TrackSelection;>;"
    const/4 v6, 0x0

    .local v6, "groupIndex":I
    :goto_1
    iget v7, v3, Landroidx/media3/exoplayer/source/TrackGroupArray;->length:I

    if-ge v6, v7, :cond_4

    .line 173
    invoke-virtual {v3, v6}, Landroidx/media3/exoplayer/source/TrackGroupArray;->get(I)Landroidx/media3/common/TrackGroup;

    move-result-object v7

    .line 174
    .local v7, "trackGroup":Landroidx/media3/common/TrackGroup;
    nop

    .line 175
    invoke-virtual {v0, v2, v6, v4}, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->getAdaptiveSupport(IIZ)I

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x1

    goto :goto_2

    :cond_0
    move v8, v4

    .line 178
    .local v8, "adaptiveSupported":Z
    :goto_2
    iget v9, v7, Landroidx/media3/common/TrackGroup;->length:I

    new-array v9, v9, [I

    .line 179
    .local v9, "trackSupport":[I
    iget v10, v7, Landroidx/media3/common/TrackGroup;->length:I

    new-array v10, v10, [Z

    .line 180
    .local v10, "selected":[Z
    const/4 v11, 0x0

    .local v11, "trackIndex":I
    :goto_3
    iget v12, v7, Landroidx/media3/common/TrackGroup;->length:I

    if-ge v11, v12, :cond_3

    .line 181
    nop

    .line 182
    invoke-virtual {v0, v2, v6, v11}, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackSupport(III)I

    move-result v12

    aput v12, v9, v11

    .line 183
    const/4 v12, 0x0

    .line 184
    .local v12, "isTrackSelected":Z
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_4
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v14

    if-ge v13, v14, :cond_2

    .line 185
    invoke-interface {v5, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/media3/exoplayer/trackselection/TrackSelection;

    .line 186
    .local v14, "trackSelection":Landroidx/media3/exoplayer/trackselection/TrackSelection;
    invoke-interface {v14}, Landroidx/media3/exoplayer/trackselection/TrackSelection;->getTrackGroup()Landroidx/media3/common/TrackGroup;

    move-result-object v15

    invoke-virtual {v15, v7}, Landroidx/media3/common/TrackGroup;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 187
    invoke-interface {v14, v11}, Landroidx/media3/exoplayer/trackselection/TrackSelection;->indexOf(I)I

    move-result v15

    const/4 v4, -0x1

    if-eq v15, v4, :cond_1

    .line 188
    const/4 v12, 0x1

    .line 189
    goto :goto_5

    .line 184
    .end local v14    # "trackSelection":Landroidx/media3/exoplayer/trackselection/TrackSelection;
    :cond_1
    add-int/lit8 v13, v13, 0x1

    const/4 v4, 0x0

    goto :goto_4

    .line 192
    .end local v13    # "i":I
    :cond_2
    :goto_5
    aput-boolean v12, v10, v11

    .line 180
    .end local v12    # "isTrackSelected":Z
    add-int/lit8 v11, v11, 0x1

    const/4 v4, 0x0

    goto :goto_3

    .line 194
    .end local v11    # "trackIndex":I
    :cond_3
    new-instance v4, Landroidx/media3/common/Tracks$Group;

    invoke-direct {v4, v7, v8, v9, v10}, Landroidx/media3/common/Tracks$Group;-><init>(Landroidx/media3/common/TrackGroup;Z[I[Z)V

    invoke-virtual {v1, v4}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 172
    .end local v7    # "trackGroup":Landroidx/media3/common/TrackGroup;
    .end local v8    # "adaptiveSupported":Z
    .end local v9    # "trackSupport":[I
    .end local v10    # "selected":[Z
    add-int/lit8 v6, v6, 0x1

    const/4 v4, 0x0

    goto :goto_1

    .line 169
    .end local v3    # "trackGroupArray":Landroidx/media3/exoplayer/source/TrackGroupArray;
    .end local v5    # "rendererTrackSelections":Ljava/util/List;, "Ljava/util/List<+Landroidx/media3/exoplayer/trackselection/TrackSelection;>;"
    .end local v6    # "groupIndex":I
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 197
    .end local v2    # "rendererIndex":I
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->getUnmappedTrackGroups()Landroidx/media3/exoplayer/source/TrackGroupArray;

    move-result-object v2

    .line 198
    .local v2, "unmappedTrackGroups":Landroidx/media3/exoplayer/source/TrackGroupArray;
    const/4 v3, 0x0

    .local v3, "groupIndex":I
    :goto_6
    iget v4, v2, Landroidx/media3/exoplayer/source/TrackGroupArray;->length:I

    if-ge v3, v4, :cond_6

    .line 199
    invoke-virtual {v2, v3}, Landroidx/media3/exoplayer/source/TrackGroupArray;->get(I)Landroidx/media3/common/TrackGroup;

    move-result-object v4

    .line 200
    .local v4, "trackGroup":Landroidx/media3/common/TrackGroup;
    iget v5, v4, Landroidx/media3/common/TrackGroup;->length:I

    new-array v5, v5, [I

    .line 201
    .local v5, "trackSupport":[I
    const/4 v6, 0x0

    invoke-static {v5, v6}, Ljava/util/Arrays;->fill([II)V

    .line 202
    iget v7, v4, Landroidx/media3/common/TrackGroup;->length:I

    new-array v7, v7, [Z

    .line 203
    .local v7, "selected":[Z
    new-instance v8, Landroidx/media3/common/Tracks$Group;

    invoke-direct {v8, v4, v6, v5, v7}, Landroidx/media3/common/Tracks$Group;-><init>(Landroidx/media3/common/TrackGroup;Z[I[Z)V

    invoke-virtual {v1, v8}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 198
    .end local v4    # "trackGroup":Landroidx/media3/common/TrackGroup;
    .end local v5    # "trackSupport":[I
    .end local v7    # "selected":[Z
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 206
    .end local v3    # "groupIndex":I
    :cond_6
    new-instance v3, Landroidx/media3/common/Tracks;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    invoke-direct {v3, v4}, Landroidx/media3/common/Tracks;-><init>(Ljava/util/List;)V

    return-object v3
.end method

.method public static createFallbackOptions(Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;)Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy$FallbackOptions;
    .locals 7
    .param p0, "trackSelection"    # Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    .line 118
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 119
    .local v0, "nowMs":J
    invoke-interface {p0}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->length()I

    move-result v2

    .line 120
    .local v2, "numberOfTracks":I
    const/4 v3, 0x0

    .line 121
    .local v3, "numberOfExcludedTracks":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_1

    .line 122
    invoke-interface {p0, v4, v0, v1}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->isTrackExcluded(IJ)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 123
    add-int/lit8 v3, v3, 0x1

    .line 121
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 126
    .end local v4    # "i":I
    :cond_1
    new-instance v4, Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy$FallbackOptions;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct {v4, v6, v5, v2, v3}, Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy$FallbackOptions;-><init>(IIII)V

    return-object v4
.end method

.method public static createTrackSelectionsForDefinitions([Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;Landroidx/media3/exoplayer/trackselection/TrackSelectionUtil$AdaptiveTrackSelectionFactory;)[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;
    .locals 8
    .param p0, "definitions"    # [Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;
    .param p1, "adaptiveTrackSelectionFactory"    # Landroidx/media3/exoplayer/trackselection/TrackSelectionUtil$AdaptiveTrackSelectionFactory;

    .line 67
    array-length v0, p0

    new-array v0, v0, [Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    .line 68
    .local v0, "selections":[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;
    const/4 v1, 0x0

    .line 69
    .local v1, "createdAdaptiveTrackSelection":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_2

    .line 70
    aget-object v3, p0, v2

    .line 71
    .local v3, "definition":Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;
    if-nez v3, :cond_0

    .line 72
    goto :goto_1

    .line 74
    :cond_0
    iget-object v4, v3, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;->tracks:[I

    array-length v4, v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_1

    if-nez v1, :cond_1

    .line 75
    const/4 v1, 0x1

    .line 76
    invoke-interface {p1, v3}, Landroidx/media3/exoplayer/trackselection/TrackSelectionUtil$AdaptiveTrackSelectionFactory;->createAdaptiveTrackSelection(Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;)Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    move-result-object v4

    aput-object v4, v0, v2

    goto :goto_1

    .line 78
    :cond_1
    new-instance v4, Landroidx/media3/exoplayer/trackselection/FixedTrackSelection;

    iget-object v5, v3, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;->group:Landroidx/media3/common/TrackGroup;

    iget-object v6, v3, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;->tracks:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    iget v7, v3, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;->type:I

    invoke-direct {v4, v5, v6, v7}, Landroidx/media3/exoplayer/trackselection/FixedTrackSelection;-><init>(Landroidx/media3/common/TrackGroup;II)V

    aput-object v4, v0, v2

    .line 69
    .end local v3    # "definition":Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 83
    .end local v2    # "i":I
    :cond_2
    return-object v0
.end method

.method public static getMaxVideoSizeInViewport(ZIIII)Landroid/graphics/Point;
    .locals 3
    .param p0, "orientationMayChange"    # Z
    .param p1, "viewportWidth"    # I
    .param p2, "viewportHeight"    # I
    .param p3, "videoWidth"    # I
    .param p4, "videoHeight"    # I

    .line 219
    if-eqz p0, :cond_2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-le p3, p4, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-le p1, p2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    if-eq v2, v0, :cond_2

    .line 221
    move v0, p1

    .line 222
    .local v0, "tempViewportWidth":I
    move p1, p2

    .line 223
    move p2, v0

    .line 226
    .end local v0    # "tempViewportWidth":I
    :cond_2
    mul-int v0, p3, p2

    mul-int v1, p4, p1

    if-lt v0, v1, :cond_3

    .line 228
    new-instance v0, Landroid/graphics/Point;

    mul-int v1, p1, p4

    invoke-static {v1, p3}, Landroidx/media3/common/util/Util;->ceilDivide(II)I

    move-result v1

    invoke-direct {v0, p1, v1}, Landroid/graphics/Point;-><init>(II)V

    return-object v0

    .line 231
    :cond_3
    new-instance v0, Landroid/graphics/Point;

    mul-int v1, p2, p3

    invoke-static {v1, p4}, Landroidx/media3/common/util/Util;->ceilDivide(II)I

    move-result v1

    invoke-direct {v0, v1, p2}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method public static updateParametersWithOverride(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;ILandroidx/media3/exoplayer/source/TrackGroupArray;ZLandroidx/media3/exoplayer/trackselection/DefaultTrackSelector$SelectionOverride;)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;
    .locals 2
    .param p0, "parameters"    # Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;
    .param p1, "rendererIndex"    # I
    .param p2, "trackGroupArray"    # Landroidx/media3/exoplayer/source/TrackGroupArray;
    .param p3, "isDisabled"    # Z
    .param p4, "override"    # Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$SelectionOverride;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 97
    nop

    .line 99
    invoke-virtual {p0}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->buildUpon()Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    move-result-object v0

    .line 100
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->clearSelectionOverrides(I)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    move-result-object v0

    .line 101
    invoke-virtual {v0, p1, p3}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->setRendererDisabled(IZ)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    move-result-object v0

    .line 102
    .local v0, "builder":Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;
    if-eqz p4, :cond_0

    .line 103
    invoke-virtual {v0, p1, p2, p4}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->setSelectionOverride(ILandroidx/media3/exoplayer/source/TrackGroupArray;Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$SelectionOverride;)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    .line 105
    :cond_0
    invoke-virtual {v0}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->build()Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    move-result-object v1

    return-object v1
.end method
