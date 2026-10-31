.class public final Landroidx/media3/container/NalUnitUtil$H265RepFormat;
.super Ljava/lang/Object;
.source "NalUnitUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/container/NalUnitUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "H265RepFormat"
.end annotation


# instance fields
.field public final bitDepthChromaMinus8:I

.field public final bitDepthLumaMinus8:I

.field public final chromaFormatIdc:I

.field public final height:I

.field public final width:I


# direct methods
.method public constructor <init>(IIIII)V
    .locals 0
    .param p1, "chromaFormatIdc"    # I
    .param p2, "bitDepthLumaMinus8"    # I
    .param p3, "bitDepthChromaMinus8"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 291
    iput p1, p0, Landroidx/media3/container/NalUnitUtil$H265RepFormat;->chromaFormatIdc:I

    .line 292
    iput p2, p0, Landroidx/media3/container/NalUnitUtil$H265RepFormat;->bitDepthLumaMinus8:I

    .line 293
    iput p3, p0, Landroidx/media3/container/NalUnitUtil$H265RepFormat;->bitDepthChromaMinus8:I

    .line 294
    iput p4, p0, Landroidx/media3/container/NalUnitUtil$H265RepFormat;->width:I

    .line 295
    iput p5, p0, Landroidx/media3/container/NalUnitUtil$H265RepFormat;->height:I

    .line 296
    return-void
.end method
