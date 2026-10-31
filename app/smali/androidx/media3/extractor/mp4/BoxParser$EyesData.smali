.class final Landroidx/media3/extractor/mp4/BoxParser$EyesData;
.super Ljava/lang/Object;
.source "BoxParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/extractor/mp4/BoxParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EyesData"
.end annotation


# instance fields
.field private final striData:Landroidx/media3/extractor/mp4/BoxParser$StriData;


# direct methods
.method public constructor <init>(Landroidx/media3/extractor/mp4/BoxParser$StriData;)V
    .locals 0
    .param p1, "striData"    # Landroidx/media3/extractor/mp4/BoxParser$StriData;

    .line 2459
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2460
    iput-object p1, p0, Landroidx/media3/extractor/mp4/BoxParser$EyesData;->striData:Landroidx/media3/extractor/mp4/BoxParser$StriData;

    .line 2461
    return-void
.end method

.method static synthetic access$700(Landroidx/media3/extractor/mp4/BoxParser$EyesData;)Landroidx/media3/extractor/mp4/BoxParser$StriData;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/extractor/mp4/BoxParser$EyesData;

    .line 2456
    iget-object v0, p0, Landroidx/media3/extractor/mp4/BoxParser$EyesData;->striData:Landroidx/media3/extractor/mp4/BoxParser$StriData;

    return-object v0
.end method
