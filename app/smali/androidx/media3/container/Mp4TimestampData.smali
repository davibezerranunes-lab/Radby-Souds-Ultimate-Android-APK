.class public final Landroidx/media3/container/Mp4TimestampData;
.super Ljava/lang/Object;
.source "Mp4TimestampData.java"

# interfaces
.implements Landroidx/media3/common/Metadata$Entry;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/media3/container/Mp4TimestampData;",
            ">;"
        }
    .end annotation
.end field

.field public static final TIMESCALE_UNSET:I = -0x1

.field private static final UNIX_EPOCH_TO_MP4_TIME_DELTA_SECONDS:I = 0x7c25b080


# instance fields
.field public final creationTimestampSeconds:J

.field public final modificationTimestampSeconds:J

.field public final timescale:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 142
    new-instance v0, Landroidx/media3/container/Mp4TimestampData$1;

    invoke-direct {v0}, Landroidx/media3/container/Mp4TimestampData$1;-><init>()V

    sput-object v0, Landroidx/media3/container/Mp4TimestampData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 2
    .param p1, "creationTimestampSeconds"    # J
    .param p3, "modificationTimestampSeconds"    # J

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-wide p1, p0, Landroidx/media3/container/Mp4TimestampData;->creationTimestampSeconds:J

    .line 59
    iput-wide p3, p0, Landroidx/media3/container/Mp4TimestampData;->modificationTimestampSeconds:J

    .line 60
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroidx/media3/container/Mp4TimestampData;->timescale:J

    .line 61
    return-void
.end method

.method public constructor <init>(JJJ)V
    .locals 0
    .param p1, "creationTimestampSeconds"    # J
    .param p3, "modificationTimestampSeconds"    # J
    .param p5, "timescale"    # J

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-wide p1, p0, Landroidx/media3/container/Mp4TimestampData;->creationTimestampSeconds:J

    .line 75
    iput-wide p3, p0, Landroidx/media3/container/Mp4TimestampData;->modificationTimestampSeconds:J

    .line 76
    iput-wide p5, p0, Landroidx/media3/container/Mp4TimestampData;->timescale:J

    .line 77
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/container/Mp4TimestampData;->creationTimestampSeconds:J

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/container/Mp4TimestampData;->modificationTimestampSeconds:J

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/container/Mp4TimestampData;->timescale:J

    .line 83
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroidx/media3/container/Mp4TimestampData$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroidx/media3/container/Mp4TimestampData$1;

    .line 27
    invoke-direct {p0, p1}, Landroidx/media3/container/Mp4TimestampData;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static unixTimeToMp4TimeSeconds(J)J
    .locals 4
    .param p0, "unixTimestampMs"    # J

    .line 90
    const-wide/16 v0, 0x3e8

    div-long v0, p0, v0

    const-wide/32 v2, 0x7c25b080

    add-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 132
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 95
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 96
    return v0

    .line 98
    :cond_0
    instance-of v1, p1, Landroidx/media3/container/Mp4TimestampData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 99
    return v2

    .line 102
    :cond_1
    move-object v1, p1

    check-cast v1, Landroidx/media3/container/Mp4TimestampData;

    .line 104
    .local v1, "other":Landroidx/media3/container/Mp4TimestampData;
    iget-wide v3, p0, Landroidx/media3/container/Mp4TimestampData;->creationTimestampSeconds:J

    iget-wide v5, v1, Landroidx/media3/container/Mp4TimestampData;->creationTimestampSeconds:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget-wide v3, p0, Landroidx/media3/container/Mp4TimestampData;->modificationTimestampSeconds:J

    iget-wide v5, v1, Landroidx/media3/container/Mp4TimestampData;->modificationTimestampSeconds:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget-wide v3, p0, Landroidx/media3/container/Mp4TimestampData;->timescale:J

    iget-wide v5, v1, Landroidx/media3/container/Mp4TimestampData;->timescale:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 111
    const/16 v0, 0x11

    .line 112
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Landroidx/media3/container/Mp4TimestampData;->creationTimestampSeconds:J

    invoke-static {v2, v3}, Lcom/google/common/primitives/Longs;->hashCode(J)I

    move-result v2

    add-int/2addr v1, v2

    .line 113
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-wide v2, p0, Landroidx/media3/container/Mp4TimestampData;->modificationTimestampSeconds:J

    invoke-static {v2, v3}, Lcom/google/common/primitives/Longs;->hashCode(J)I

    move-result v2

    add-int/2addr v0, v2

    .line 114
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Landroidx/media3/container/Mp4TimestampData;->timescale:J

    invoke-static {v2, v3}, Lcom/google/common/primitives/Longs;->hashCode(J)I

    move-result v2

    add-int/2addr v1, v2

    .line 115
    .end local v0    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Mp4Timestamp: creation time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroidx/media3/container/Mp4TimestampData;->creationTimestampSeconds:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", modification time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroidx/media3/container/Mp4TimestampData;->modificationTimestampSeconds:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", timescale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroidx/media3/container/Mp4TimestampData;->timescale:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 137
    iget-wide v0, p0, Landroidx/media3/container/Mp4TimestampData;->creationTimestampSeconds:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 138
    iget-wide v0, p0, Landroidx/media3/container/Mp4TimestampData;->modificationTimestampSeconds:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 139
    iget-wide v0, p0, Landroidx/media3/container/Mp4TimestampData;->timescale:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 140
    return-void
.end method
