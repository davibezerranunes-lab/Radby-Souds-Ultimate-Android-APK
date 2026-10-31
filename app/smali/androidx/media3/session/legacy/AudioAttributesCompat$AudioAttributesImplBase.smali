.class public Landroidx/media3/session/legacy/AudioAttributesCompat$AudioAttributesImplBase;
.super Ljava/lang/Object;
.source "AudioAttributesCompat.java"

# interfaces
.implements Landroidx/media3/session/legacy/AudioAttributesCompat$AudioAttributesImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/session/legacy/AudioAttributesCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AudioAttributesImplBase"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/session/legacy/AudioAttributesCompat$AudioAttributesImplBase$Builder;
    }
.end annotation


# instance fields
.field public mContentType:I

.field public mFlags:I

.field public mLegacyStream:I

.field public mUsage:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 697
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 689
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/session/legacy/AudioAttributesCompat$AudioAttributesImplBase;->mUsage:I

    .line 691
    iput v0, p0, Landroidx/media3/session/legacy/AudioAttributesCompat$AudioAttributesImplBase;->mContentType:I

    .line 693
    iput v0, p0, Landroidx/media3/session/legacy/AudioAttributesCompat$AudioAttributesImplBase;->mFlags:I

    .line 695
    const/4 v0, -0x1

    iput v0, p0, Landroidx/media3/session/legacy/AudioAttributesCompat$AudioAttributesImplBase;->mLegacyStream:I

    .line 697
    return-void
.end method

.method constructor <init>(IIII)V
    .locals 1
    .param p1, "contentType"    # I
    .param p2, "flags"    # I
    .param p3, "usage"    # I
    .param p4, "legacyStream"    # I

    .line 699
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 689
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/session/legacy/AudioAttributesCompat$AudioAttributesImplBase;->mUsage:I

    .line 691
    iput v0, p0, Landroidx/media3/session/legacy/AudioAttributesCompat$AudioAttributesImplBase;->mContentType:I

    .line 693
    iput v0, p0, Landroidx/media3/session/legacy/AudioAttributesCompat$AudioAttributesImplBase;->mFlags:I

    .line 695
    const/4 v0, -0x1

    iput v0, p0, Landroidx/media3/session/legacy/AudioAttributesCompat$AudioAttributesImplBase;->mLegacyStream:I

    .line 700
    iput p1, p0, Landroidx/media3/session/legacy/AudioAttributesCompat$AudioAttributesImplBase;->mContentType:I

    .line 701
    iput p2, p0, Landroidx/media3/session/legacy/AudioAttributesCompat$AudioAttributesImplBase;->mFlags:I

    .line 702
    iput p3, p0, Landroidx/media3/session/legacy/AudioAttributesCompat$AudioAttributesImplBase;->mUsage:I

    .line 703
    iput p4, p0, Landroidx/media3/session/legacy/AudioAttributesCompat$AudioAttributesImplBase;->mLegacyStream:I

    .line 704
    return-void
.end method

.method static usageForStreamType(I)I
    .locals 1
    .param p0, "streamType"    # I

    .line 919
    const/4 v0, 0x2

    packed-switch p0, :pswitch_data_0

    .line 941
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 938
    :pswitch_1
    const/16 v0, 0xb

    return v0

    .line 936
    :pswitch_2
    const/4 v0, 0x3

    return v0

    .line 934
    :pswitch_3
    return v0

    .line 932
    :pswitch_4
    const/4 v0, 0x5

    return v0

    .line 930
    :pswitch_5
    const/4 v0, 0x4

    return v0

    .line 928
    :pswitch_6
    const/4 v0, 0x1

    return v0

    .line 926
    :pswitch_7
    const/4 v0, 0x6

    return v0

    .line 924
    :pswitch_8
    const/16 v0, 0xd

    return v0

    .line 921
    :pswitch_9
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_8
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 762
    instance-of v0, p1, Landroidx/media3/session/legacy/AudioAttributesCompat$AudioAttributesImplBase;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 763
    return v1

    .line 765
    :cond_0
    move-object v0, p1

    check-cast v0, Landroidx/media3/session/legacy/AudioAttributesCompat$AudioAttributesImplBase;

    .line 766
    .local v0, "that":Landroidx/media3/session/legacy/AudioAttributesCompat$AudioAttributesImplBase;
    iget v2, p0, Landroidx/media3/session/legacy/AudioAttributesCompat$AudioAttributesImplBase;->mContentType:I

    invoke-virtual {v0}, Landroidx/media3/session/legacy/AudioAttributesCompat$AudioAttributesImplBase;->getContentType()I

    move-result v3

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroidx/media3/session/legacy/AudioAttributesCompat$AudioAttributesImplBase;->mFlags:I

    .line 767
    invoke-virtual {v0}, Landroidx/media3/session/legacy/AudioAttributesCompat$AudioAttributesImplBase;->getFlags()I

    move-result v3

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroidx/media3/session/legacy/AudioAttributesCompat$AudioAttributesImplBase;->mUsage:I

    .line 768
    invoke-virtual {v0}, Landroidx/media3/session/legacy/AudioAttributesCompat$AudioAttributesImplBase;->getUsage()I

    move-result v3

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroidx/media3/session/legacy/AudioAttributesCompat$AudioAttributesImplBase;->mLegacyStream:I

    iget v3, v0, Landroidx/media3/session/legacy/AudioAttributesCompat$AudioAttributesImplBase;->mLegacyStream:I

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 766
    :goto_0
    return v1
.end method

.method public getAudioAttributes()Ljava/lang/Object;
    .locals 1

    .line 709
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentType()I
    .locals 1

    .line 732
    iget v0, p0, Landroidx/media3/session/legacy/AudioAttributesCompat$AudioAttributesImplBase;->mContentType:I

    return v0
.end method

.method public getFlags()I
    .locals 3

    .line 742
    iget v0, p0, Landroidx/media3/session/legacy/AudioAttributesCompat$AudioAttributesImplBase;->mFlags:I

    .line 743
    .local v0, "flags":I
    invoke-virtual {p0}, Landroidx/media3/session/legacy/AudioAttributesCompat$AudioAttributesImplBase;->getLegacyStreamType()I

    move-result v1

    .line 744
    .local v1, "legacyStream":I
    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    .line 745
    or-int/lit8 v0, v0, 0x4

    goto :goto_0

    .line 746
    :cond_0
    const/4 v2, 0x7

    if-ne v1, v2, :cond_1

    .line 747
    or-int/lit8 v0, v0, 0x1

    .line 749
    :cond_1
    :goto_0
    and-int/lit16 v2, v0, 0x111

    return v2
.end method

.method public getLegacyStreamType()I
    .locals 3

    .line 719
    iget v0, p0, Landroidx/media3/session/legacy/AudioAttributesCompat$AudioAttributesImplBase;->mLegacyStream:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 720
    iget v0, p0, Landroidx/media3/session/legacy/AudioAttributesCompat$AudioAttributesImplBase;->mLegacyStream:I

    return v0

    .line 722
    :cond_0
    iget v0, p0, Landroidx/media3/session/legacy/AudioAttributesCompat$AudioAttributesImplBase;->mFlags:I

    iget v1, p0, Landroidx/media3/session/legacy/AudioAttributesCompat$AudioAttributesImplBase;->mUsage:I

    const/4 v2, 0x0

    invoke-static {v2, v0, v1}, Landroidx/media3/session/legacy/AudioAttributesCompat;->toVolumeStreamType(ZII)I

    move-result v0

    return v0
.end method

.method public getRawLegacyStreamType()I
    .locals 1

    .line 727
    iget v0, p0, Landroidx/media3/session/legacy/AudioAttributesCompat$AudioAttributesImplBase;->mLegacyStream:I

    return v0
.end method

.method public getUsage()I
    .locals 1

    .line 737
    iget v0, p0, Landroidx/media3/session/legacy/AudioAttributesCompat$AudioAttributesImplBase;->mUsage:I

    return v0
.end method

.method public getVolumeControlStream()I
    .locals 3

    .line 714
    iget v0, p0, Landroidx/media3/session/legacy/AudioAttributesCompat$AudioAttributesImplBase;->mFlags:I

    iget v1, p0, Landroidx/media3/session/legacy/AudioAttributesCompat$AudioAttributesImplBase;->mUsage:I

    const/4 v2, 0x1

    invoke-static {v2, v0, v1}, Landroidx/media3/session/legacy/AudioAttributesCompat;->toVolumeStreamType(ZII)I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 757
    iget v0, p0, Landroidx/media3/session/legacy/AudioAttributesCompat$AudioAttributesImplBase;->mContentType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroidx/media3/session/legacy/AudioAttributesCompat$AudioAttributesImplBase;->mFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroidx/media3/session/legacy/AudioAttributesCompat$AudioAttributesImplBase;->mUsage:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Landroidx/media3/session/legacy/AudioAttributesCompat$AudioAttributesImplBase;->mLegacyStream:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 774
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AudioAttributesCompat:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 775
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget v1, p0, Landroidx/media3/session/legacy/AudioAttributesCompat$AudioAttributesImplBase;->mLegacyStream:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 776
    const-string v1, " stream="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroidx/media3/session/legacy/AudioAttributesCompat$AudioAttributesImplBase;->mLegacyStream:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 777
    const-string v1, " derived"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 779
    :cond_0
    const-string v1, " usage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroidx/media3/session/legacy/AudioAttributesCompat$AudioAttributesImplBase;->mUsage:I

    .line 780
    invoke-static {v2}, Landroidx/media3/session/legacy/AudioAttributesCompat;->usageToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 781
    const-string v2, " content="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroidx/media3/session/legacy/AudioAttributesCompat$AudioAttributesImplBase;->mContentType:I

    .line 782
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 783
    const-string v2, " flags=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroidx/media3/session/legacy/AudioAttributesCompat$AudioAttributesImplBase;->mFlags:I

    .line 784
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 785
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
