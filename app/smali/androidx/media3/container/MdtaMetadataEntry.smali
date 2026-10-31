.class public final Landroidx/media3/container/MdtaMetadataEntry;
.super Ljava/lang/Object;
.source "MdtaMetadataEntry.java"

# interfaces
.implements Landroidx/media3/common/Metadata$Entry;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/media3/container/MdtaMetadataEntry;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_LOCALE_INDICATOR:I = 0x0

.field public static final EDITABLE_TRACKS_SAMPLES_LOCATION_INTERLEAVED:B = 0x1t

.field public static final EDITABLE_TRACKS_SAMPLES_LOCATION_IN_EDIT_DATA_MP4:B = 0x0t

.field public static final KEY_ANDROID_CAPTURE_FPS:Ljava/lang/String; = "com.android.capture.fps"

.field public static final KEY_EDITABLE_TRACKS_LENGTH:Ljava/lang/String; = "editable.tracks.length"

.field public static final KEY_EDITABLE_TRACKS_MAP:Ljava/lang/String; = "editable.tracks.map"

.field public static final KEY_EDITABLE_TRACKS_OFFSET:Ljava/lang/String; = "editable.tracks.offset"

.field public static final KEY_EDITABLE_TRACKS_SAMPLES_LOCATION:Ljava/lang/String; = "editable.tracks.samples.location"

.field public static final TYPE_INDICATOR_8_BIT_UNSIGNED_INT:I = 0x4b

.field public static final TYPE_INDICATOR_FLOAT32:I = 0x17

.field public static final TYPE_INDICATOR_INT32:I = 0x43

.field public static final TYPE_INDICATOR_RESERVED:I = 0x0

.field public static final TYPE_INDICATOR_STRING:I = 0x1

.field public static final TYPE_INDICATOR_UNSIGNED_INT64:I = 0x4e


# instance fields
.field public final key:Ljava/lang/String;

.field public final localeIndicator:I

.field public final typeIndicator:I

.field public final value:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 209
    new-instance v0, Landroidx/media3/container/MdtaMetadataEntry$1;

    invoke-direct {v0}, Landroidx/media3/container/MdtaMetadataEntry$1;-><init>()V

    sput-object v0, Landroidx/media3/container/MdtaMetadataEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroidx/media3/container/MdtaMetadataEntry;->key:Ljava/lang/String;

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Landroidx/media3/container/MdtaMetadataEntry;->value:[B

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/media3/container/MdtaMetadataEntry;->localeIndicator:I

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/media3/container/MdtaMetadataEntry;->typeIndicator:I

    .line 119
    iget-object v0, p0, Landroidx/media3/container/MdtaMetadataEntry;->key:Ljava/lang/String;

    iget-object v1, p0, Landroidx/media3/container/MdtaMetadataEntry;->value:[B

    iget v2, p0, Landroidx/media3/container/MdtaMetadataEntry;->typeIndicator:I

    invoke-static {v0, v1, v2}, Landroidx/media3/container/MdtaMetadataEntry;->validateData(Ljava/lang/String;[BI)V

    .line 120
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroidx/media3/container/MdtaMetadataEntry$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroidx/media3/container/MdtaMetadataEntry$1;

    .line 39
    invoke-direct {p0, p1}, Landroidx/media3/container/MdtaMetadataEntry;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[BI)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [B
    .param p3, "typeIndicator"    # I

    .line 102
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Landroidx/media3/container/MdtaMetadataEntry;-><init>(Ljava/lang/String;[BII)V

    .line 103
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[BII)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [B
    .param p3, "localeIndicator"    # I
    .param p4, "typeIndicator"    # I

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    invoke-static {p1, p2, p4}, Landroidx/media3/container/MdtaMetadataEntry;->validateData(Ljava/lang/String;[BI)V

    .line 108
    iput-object p1, p0, Landroidx/media3/container/MdtaMetadataEntry;->key:Ljava/lang/String;

    .line 109
    iput-object p2, p0, Landroidx/media3/container/MdtaMetadataEntry;->value:[B

    .line 110
    iput p3, p0, Landroidx/media3/container/MdtaMetadataEntry;->localeIndicator:I

    .line 111
    iput p4, p0, Landroidx/media3/container/MdtaMetadataEntry;->typeIndicator:I

    .line 112
    return-void
.end method

.method private static getFormattedValueForEditableTracksMap(Ljava/util/List;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 248
    .local p0, "trackTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 249
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "track types = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    const/16 v1, 0x2c

    invoke-static {v1}, Lcom/google/common/base/Joiner;->on(C)Lcom/google/common/base/Joiner;

    move-result-object v1

    invoke-virtual {v1, v0, p0}, Lcom/google/common/base/Joiner;->appendTo(Ljava/lang/StringBuilder;Ljava/lang/Iterable;)Ljava/lang/StringBuilder;

    .line 251
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static validateData(Ljava/lang/String;[BI)V
    .locals 4
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # [B
    .param p2, "typeIndicator"    # I

    .line 224
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v0, "editable.tracks.map"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_1
    const-string v0, "editable.tracks.offset"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :sswitch_2
    const-string v0, "editable.tracks.length"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_3
    const-string v0, "editable.tracks.samples.location"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_1

    :sswitch_4
    const-string v0, "com.android.capture.fps"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_6

    .line 236
    :pswitch_0
    const/16 v0, 0x4b

    if-ne p2, v0, :cond_2

    array-length v0, p1

    if-ne v0, v2, :cond_2

    aget-byte v0, p1, v3

    if-eqz v0, :cond_1

    aget-byte v0, p1, v3

    if-ne v0, v2, :cond_2

    :cond_1
    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    invoke-static {v2}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    .line 241
    goto :goto_6

    .line 233
    :pswitch_1
    if-nez p2, :cond_3

    goto :goto_3

    :cond_3
    move v2, v3

    :goto_3
    invoke-static {v2}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    .line 234
    goto :goto_6

    .line 230
    :pswitch_2
    const/16 v0, 0x4e

    if-ne p2, v0, :cond_4

    array-length v0, p1

    const/16 v1, 0x8

    if-ne v0, v1, :cond_4

    goto :goto_4

    :cond_4
    move v2, v3

    :goto_4
    invoke-static {v2}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    .line 231
    goto :goto_6

    .line 226
    :pswitch_3
    const/16 v0, 0x17

    if-ne p2, v0, :cond_5

    array-length v0, p1

    if-ne v0, v1, :cond_5

    goto :goto_5

    :cond_5
    move v2, v3

    :goto_5
    invoke-static {v2}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    .line 227
    nop

    .line 245
    :goto_6
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7438daab -> :sswitch_4
        -0x5cb938ea -> :sswitch_3
        0x611a902 -> :sswitch_2
        0xb3ad2af -> :sswitch_1
        0x6b964cc0 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 206
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 139
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 140
    return v0

    .line 142
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 145
    :cond_1
    move-object v2, p1

    check-cast v2, Landroidx/media3/container/MdtaMetadataEntry;

    .line 146
    .local v2, "other":Landroidx/media3/container/MdtaMetadataEntry;
    iget-object v3, p0, Landroidx/media3/container/MdtaMetadataEntry;->key:Ljava/lang/String;

    iget-object v4, v2, Landroidx/media3/container/MdtaMetadataEntry;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroidx/media3/container/MdtaMetadataEntry;->value:[B

    iget-object v4, v2, Landroidx/media3/container/MdtaMetadataEntry;->value:[B

    .line 147
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Landroidx/media3/container/MdtaMetadataEntry;->localeIndicator:I

    iget v4, v2, Landroidx/media3/container/MdtaMetadataEntry;->localeIndicator:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroidx/media3/container/MdtaMetadataEntry;->typeIndicator:I

    iget v4, v2, Landroidx/media3/container/MdtaMetadataEntry;->typeIndicator:I

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 146
    :goto_0
    return v0

    .line 143
    .end local v2    # "other":Landroidx/media3/container/MdtaMetadataEntry;
    :cond_3
    :goto_1
    return v1
.end method

.method public getEditableTrackTypesFromMap()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 127
    iget-object v0, p0, Landroidx/media3/container/MdtaMetadataEntry;->key:Ljava/lang/String;

    const-string v1, "editable.tracks.map"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "Metadata is not an editable tracks map"

    invoke-static {v0, v1}, Landroidx/media3/common/util/Assertions;->checkState(ZLjava/lang/Object;)V

    .line 129
    iget-object v0, p0, Landroidx/media3/container/MdtaMetadataEntry;->value:[B

    const/4 v1, 0x1

    aget-byte v0, v0, v1

    .line 130
    .local v0, "numberOfTracks":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 131
    .local v1, "trackTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 132
    iget-object v3, p0, Landroidx/media3/container/MdtaMetadataEntry;->value:[B

    add-int/lit8 v4, v2, 0x2

    aget-byte v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 134
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method public hashCode()I
    .locals 3

    .line 154
    const/16 v0, 0x11

    .line 155
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroidx/media3/container/MdtaMetadataEntry;->key:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 156
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroidx/media3/container/MdtaMetadataEntry;->value:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int/2addr v0, v2

    .line 157
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroidx/media3/container/MdtaMetadataEntry;->localeIndicator:I

    add-int/2addr v1, v2

    .line 158
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroidx/media3/container/MdtaMetadataEntry;->typeIndicator:I

    add-int/2addr v0, v2

    .line 159
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 165
    iget v0, p0, Landroidx/media3/container/MdtaMetadataEntry;->typeIndicator:I

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 179
    :sswitch_0
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    iget-object v1, p0, Landroidx/media3/container/MdtaMetadataEntry;->value:[B

    invoke-direct {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;-><init>([B)V

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 180
    .local v0, "formattedValue":Ljava/lang/String;
    goto :goto_1

    .line 176
    .end local v0    # "formattedValue":Ljava/lang/String;
    :sswitch_1
    iget-object v0, p0, Landroidx/media3/container/MdtaMetadataEntry;->value:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    invoke-static {v0}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 177
    .restart local v0    # "formattedValue":Ljava/lang/String;
    goto :goto_1

    .line 173
    .end local v0    # "formattedValue":Ljava/lang/String;
    :sswitch_2
    iget-object v0, p0, Landroidx/media3/container/MdtaMetadataEntry;->value:[B

    invoke-static {v0}, Lcom/google/common/primitives/Ints;->fromByteArray([B)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 174
    .restart local v0    # "formattedValue":Ljava/lang/String;
    goto :goto_1

    .line 170
    .end local v0    # "formattedValue":Ljava/lang/String;
    :sswitch_3
    iget-object v0, p0, Landroidx/media3/container/MdtaMetadataEntry;->value:[B

    invoke-static {v0}, Lcom/google/common/primitives/Ints;->fromByteArray([B)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    .line 171
    .restart local v0    # "formattedValue":Ljava/lang/String;
    goto :goto_1

    .line 167
    .end local v0    # "formattedValue":Ljava/lang/String;
    :sswitch_4
    iget-object v0, p0, Landroidx/media3/container/MdtaMetadataEntry;->value:[B

    invoke-static {v0}, Landroidx/media3/common/util/Util;->fromUtf8Bytes([B)Ljava/lang/String;

    move-result-object v0

    .line 168
    .restart local v0    # "formattedValue":Ljava/lang/String;
    goto :goto_1

    .line 182
    .end local v0    # "formattedValue":Ljava/lang/String;
    :sswitch_5
    iget-object v0, p0, Landroidx/media3/container/MdtaMetadataEntry;->key:Ljava/lang/String;

    const-string v1, "editable.tracks.map"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    invoke-virtual {p0}, Landroidx/media3/container/MdtaMetadataEntry;->getEditableTrackTypesFromMap()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/container/MdtaMetadataEntry;->getFormattedValueForEditableTracksMap(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 184
    .restart local v0    # "formattedValue":Ljava/lang/String;
    goto :goto_1

    .line 188
    .end local v0    # "formattedValue":Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v0, p0, Landroidx/media3/container/MdtaMetadataEntry;->value:[B

    invoke-static {v0}, Landroidx/media3/common/util/Util;->toHexString([B)Ljava/lang/String;

    move-result-object v0

    .line 191
    .restart local v0    # "formattedValue":Ljava/lang/String;
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mdta: key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroidx/media3/container/MdtaMetadataEntry;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_5
        0x1 -> :sswitch_4
        0x17 -> :sswitch_3
        0x43 -> :sswitch_2
        0x4b -> :sswitch_1
        0x4e -> :sswitch_0
    .end sparse-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 198
    iget-object v0, p0, Landroidx/media3/container/MdtaMetadataEntry;->key:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 199
    iget-object v0, p0, Landroidx/media3/container/MdtaMetadataEntry;->value:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 200
    iget v0, p0, Landroidx/media3/container/MdtaMetadataEntry;->localeIndicator:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 201
    iget v0, p0, Landroidx/media3/container/MdtaMetadataEntry;->typeIndicator:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 202
    return-void
.end method
