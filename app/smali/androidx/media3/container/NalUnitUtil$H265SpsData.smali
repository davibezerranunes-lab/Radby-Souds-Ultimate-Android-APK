.class public final Landroidx/media3/container/NalUnitUtil$H265SpsData;
.super Ljava/lang/Object;
.source "NalUnitUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/container/NalUnitUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "H265SpsData"
.end annotation


# instance fields
.field public final bitDepthChromaMinus8:I

.field public final bitDepthLumaMinus8:I

.field public final chromaFormatIdc:I

.field public final colorRange:I

.field public final colorSpace:I

.field public final colorTransfer:I

.field public final height:I

.field public final maxNumReorderPics:I

.field public final nalHeader:Landroidx/media3/container/NalUnitUtil$H265NalHeader;

.field public final pixelWidthHeightRatio:F

.field public final profileTierLevel:Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;

.field public final seqParameterSetId:I

.field public final width:I


# direct methods
.method public constructor <init>(Landroidx/media3/container/NalUnitUtil$H265NalHeader;Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;IIIIIIFIIII)V
    .locals 0
    .param p1, "nalHeader"    # Landroidx/media3/container/NalUnitUtil$H265NalHeader;
    .param p2, "profileTierLevel"    # Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;
    .param p3, "chromaFormatIdc"    # I
    .param p4, "bitDepthLumaMinus8"    # I
    .param p5, "bitDepthChromaMinus8"    # I
    .param p6, "seqParameterSetId"    # I
    .param p7, "width"    # I
    .param p8, "height"    # I
    .param p9, "pixelWidthHeightRatio"    # F
    .param p10, "maxNumReorderPics"    # I
    .param p11, "colorSpace"    # I
    .param p12, "colorRange"    # I
    .param p13, "colorTransfer"    # I

    .line 413
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 414
    iput-object p1, p0, Landroidx/media3/container/NalUnitUtil$H265SpsData;->nalHeader:Landroidx/media3/container/NalUnitUtil$H265NalHeader;

    .line 415
    iput-object p2, p0, Landroidx/media3/container/NalUnitUtil$H265SpsData;->profileTierLevel:Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;

    .line 416
    iput p3, p0, Landroidx/media3/container/NalUnitUtil$H265SpsData;->chromaFormatIdc:I

    .line 417
    iput p4, p0, Landroidx/media3/container/NalUnitUtil$H265SpsData;->bitDepthLumaMinus8:I

    .line 418
    iput p5, p0, Landroidx/media3/container/NalUnitUtil$H265SpsData;->bitDepthChromaMinus8:I

    .line 419
    iput p6, p0, Landroidx/media3/container/NalUnitUtil$H265SpsData;->seqParameterSetId:I

    .line 420
    iput p7, p0, Landroidx/media3/container/NalUnitUtil$H265SpsData;->width:I

    .line 421
    iput p8, p0, Landroidx/media3/container/NalUnitUtil$H265SpsData;->height:I

    .line 422
    iput p9, p0, Landroidx/media3/container/NalUnitUtil$H265SpsData;->pixelWidthHeightRatio:F

    .line 423
    iput p10, p0, Landroidx/media3/container/NalUnitUtil$H265SpsData;->maxNumReorderPics:I

    .line 424
    iput p11, p0, Landroidx/media3/container/NalUnitUtil$H265SpsData;->colorSpace:I

    .line 425
    iput p12, p0, Landroidx/media3/container/NalUnitUtil$H265SpsData;->colorRange:I

    .line 426
    iput p13, p0, Landroidx/media3/container/NalUnitUtil$H265SpsData;->colorTransfer:I

    .line 427
    return-void
.end method
