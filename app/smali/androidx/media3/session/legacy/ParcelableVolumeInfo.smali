.class public Landroidx/media3/session/legacy/ParcelableVolumeInfo;
.super Ljava/lang/Object;
.source "ParcelableVolumeInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/media3/session/legacy/ParcelableVolumeInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public audioStream:I

.field public controlType:I

.field public currentVolume:I

.field public maxVolume:I

.field public volumeType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 71
    new-instance v0, Landroidx/media3/session/legacy/ParcelableVolumeInfo$1;

    invoke-direct {v0}, Landroidx/media3/session/legacy/ParcelableVolumeInfo$1;-><init>()V

    sput-object v0, Landroidx/media3/session/legacy/ParcelableVolumeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 0
    .param p1, "volumeType"    # I
    .param p2, "audioStream"    # I
    .param p3, "controlType"    # I
    .param p4, "maxVolume"    # I
    .param p5, "currentVolume"    # I

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput p1, p0, Landroidx/media3/session/legacy/ParcelableVolumeInfo;->volumeType:I

    .line 43
    iput p2, p0, Landroidx/media3/session/legacy/ParcelableVolumeInfo;->audioStream:I

    .line 44
    iput p3, p0, Landroidx/media3/session/legacy/ParcelableVolumeInfo;->controlType:I

    .line 45
    iput p4, p0, Landroidx/media3/session/legacy/ParcelableVolumeInfo;->maxVolume:I

    .line 46
    iput p5, p0, Landroidx/media3/session/legacy/ParcelableVolumeInfo;->currentVolume:I

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "from"    # Landroid/os/Parcel;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/media3/session/legacy/ParcelableVolumeInfo;->volumeType:I

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/media3/session/legacy/ParcelableVolumeInfo;->controlType:I

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/media3/session/legacy/ParcelableVolumeInfo;->maxVolume:I

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/media3/session/legacy/ParcelableVolumeInfo;->currentVolume:I

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/media3/session/legacy/ParcelableVolumeInfo;->audioStream:I

    .line 55
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 64
    iget v0, p0, Landroidx/media3/session/legacy/ParcelableVolumeInfo;->volumeType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 65
    iget v0, p0, Landroidx/media3/session/legacy/ParcelableVolumeInfo;->controlType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    iget v0, p0, Landroidx/media3/session/legacy/ParcelableVolumeInfo;->maxVolume:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 67
    iget v0, p0, Landroidx/media3/session/legacy/ParcelableVolumeInfo;->currentVolume:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 68
    iget v0, p0, Landroidx/media3/session/legacy/ParcelableVolumeInfo;->audioStream:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 69
    return-void
.end method
