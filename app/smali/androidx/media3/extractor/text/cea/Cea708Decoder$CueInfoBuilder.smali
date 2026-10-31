.class final Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;
.super Ljava/lang/Object;
.source "Cea708Decoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/extractor/text/cea/Cea708Decoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CueInfoBuilder"
.end annotation


# static fields
.field private static final BORDER_AND_EDGE_TYPE_NONE:I = 0x0

.field private static final BORDER_AND_EDGE_TYPE_UNIFORM:I = 0x3

.field public static final COLOR_SOLID_BLACK:I

.field public static final COLOR_SOLID_WHITE:I

.field public static final COLOR_TRANSPARENT:I

.field private static final DEFAULT_PRIORITY:I = 0x4

.field private static final DIRECTION_BOTTOM_TO_TOP:I = 0x3

.field private static final DIRECTION_LEFT_TO_RIGHT:I = 0x0

.field private static final DIRECTION_RIGHT_TO_LEFT:I = 0x1

.field private static final DIRECTION_TOP_TO_BOTTOM:I = 0x2

.field private static final HORIZONTAL_SIZE:I = 0xd1

.field private static final JUSTIFICATION_CENTER:I = 0x2

.field private static final JUSTIFICATION_FULL:I = 0x3

.field private static final JUSTIFICATION_LEFT:I = 0x0

.field private static final JUSTIFICATION_RIGHT:I = 0x1

.field private static final MAXIMUM_ROW_COUNT:I = 0xf

.field private static final PEN_FONT_STYLE_DEFAULT:I = 0x0

.field private static final PEN_FONT_STYLE_MONOSPACED_WITHOUT_SERIFS:I = 0x3

.field private static final PEN_FONT_STYLE_MONOSPACED_WITH_SERIFS:I = 0x1

.field private static final PEN_FONT_STYLE_PROPORTIONALLY_SPACED_WITHOUT_SERIFS:I = 0x4

.field private static final PEN_FONT_STYLE_PROPORTIONALLY_SPACED_WITH_SERIFS:I = 0x2

.field private static final PEN_OFFSET_NORMAL:I = 0x1

.field private static final PEN_SIZE_STANDARD:I = 0x1

.field private static final PEN_STYLE_BACKGROUND:[I

.field private static final PEN_STYLE_EDGE_TYPE:[I

.field private static final PEN_STYLE_FONT_STYLE:[I

.field private static final RELATIVE_CUE_SIZE:I = 0x63

.field private static final VERTICAL_SIZE:I = 0x4a

.field private static final WINDOW_STYLE_FILL:[I

.field private static final WINDOW_STYLE_JUSTIFICATION:[I

.field private static final WINDOW_STYLE_PRINT_DIRECTION:[I

.field private static final WINDOW_STYLE_SCROLL_DIRECTION:[I

.field private static final WINDOW_STYLE_WORD_WRAP:[Z


# instance fields
.field private anchorId:I

.field private backgroundColor:I

.field private backgroundColorStartPosition:I

.field private final captionStringBuilder:Landroid/text/SpannableStringBuilder;

.field private defined:Z

.field private foregroundColor:I

.field private foregroundColorStartPosition:I

.field private horizontalAnchor:I

.field private italicsStartPosition:I

.field private justification:I

.field private penStyleId:I

.field private priority:I

.field private relativePositioning:Z

.field private final rolledUpCaptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/text/SpannableString;",
            ">;"
        }
    .end annotation
.end field

.field private row:I

.field private rowCount:I

.field private underlineStartPosition:I

.field private verticalAnchor:I

.field private visible:Z

.field private windowFillColor:I

.field private windowStyleId:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 880
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {v0, v0, v0, v1}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->getArgbColorFromCeaColor(IIII)I

    move-result v0

    sput v0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->COLOR_SOLID_WHITE:I

    .line 881
    invoke-static {v1, v1, v1, v1}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->getArgbColorFromCeaColor(IIII)I

    move-result v0

    sput v0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->COLOR_SOLID_BLACK:I

    .line 882
    const/4 v0, 0x3

    invoke-static {v1, v1, v1, v0}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->getArgbColorFromCeaColor(IIII)I

    move-result v0

    sput v0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->COLOR_TRANSPARENT:I

    .line 898
    const/4 v0, 0x7

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->WINDOW_STYLE_JUSTIFICATION:[I

    .line 904
    new-array v1, v0, [I

    fill-array-data v1, :array_1

    sput-object v1, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->WINDOW_STYLE_PRINT_DIRECTION:[I

    .line 910
    new-array v1, v0, [I

    fill-array-data v1, :array_2

    sput-object v1, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->WINDOW_STYLE_SCROLL_DIRECTION:[I

    .line 916
    new-array v1, v0, [Z

    fill-array-data v1, :array_3

    sput-object v1, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->WINDOW_STYLE_WORD_WRAP:[Z

    .line 918
    sget v2, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->COLOR_SOLID_BLACK:I

    sget v3, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->COLOR_TRANSPARENT:I

    sget v4, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->COLOR_SOLID_BLACK:I

    sget v5, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->COLOR_SOLID_BLACK:I

    sget v6, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->COLOR_TRANSPARENT:I

    sget v7, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->COLOR_SOLID_BLACK:I

    sget v8, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->COLOR_SOLID_BLACK:I

    filled-new-array/range {v2 .. v8}, [I

    move-result-object v1

    sput-object v1, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->WINDOW_STYLE_FILL:[I

    .line 930
    new-array v1, v0, [I

    fill-array-data v1, :array_4

    sput-object v1, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->PEN_STYLE_FONT_STYLE:[I

    .line 940
    new-array v0, v0, [I

    fill-array-data v0, :array_5

    sput-object v0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->PEN_STYLE_EDGE_TYPE:[I

    .line 946
    sget v1, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->COLOR_SOLID_BLACK:I

    sget v2, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->COLOR_SOLID_BLACK:I

    sget v3, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->COLOR_SOLID_BLACK:I

    sget v4, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->COLOR_SOLID_BLACK:I

    sget v5, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->COLOR_SOLID_BLACK:I

    sget v6, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->COLOR_TRANSPARENT:I

    sget v7, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->COLOR_TRANSPARENT:I

    filled-new-array/range {v1 .. v7}, [I

    move-result-object v0

    sput-object v0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->PEN_STYLE_BACKGROUND:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x2
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x2
    .end array-data

    :array_2
    .array-data 4
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x1
    .end array-data

    :array_3
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x0t
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x3
        0x4
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3
        0x3
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 983
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 984
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->rolledUpCaptions:Ljava/util/List;

    .line 985
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->captionStringBuilder:Landroid/text/SpannableStringBuilder;

    .line 986
    invoke-virtual {p0}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->reset()V

    .line 987
    return-void
.end method

.method public static getArgbColorFromCeaColor(III)I
    .locals 1
    .param p0, "red"    # I
    .param p1, "green"    # I
    .param p2, "blue"    # I

    .line 1369
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->getArgbColorFromCeaColor(IIII)I

    move-result v0

    return v0
.end method

.method public static getArgbColorFromCeaColor(IIII)I
    .locals 6
    .param p0, "red"    # I
    .param p1, "green"    # I
    .param p2, "blue"    # I
    .param p3, "opacity"    # I

    .line 1373
    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Landroidx/media3/common/util/Assertions;->checkIndex(III)I

    .line 1374
    invoke-static {p1, v0, v1}, Landroidx/media3/common/util/Assertions;->checkIndex(III)I

    .line 1375
    invoke-static {p2, v0, v1}, Landroidx/media3/common/util/Assertions;->checkIndex(III)I

    .line 1376
    invoke-static {p3, v0, v1}, Landroidx/media3/common/util/Assertions;->checkIndex(III)I

    .line 1379
    packed-switch p3, :pswitch_data_0

    .line 1392
    const/16 v1, 0xff

    .local v1, "alpha":I
    goto :goto_0

    .line 1389
    .end local v1    # "alpha":I
    :pswitch_0
    const/4 v1, 0x0

    .line 1390
    .restart local v1    # "alpha":I
    goto :goto_0

    .line 1386
    .end local v1    # "alpha":I
    :pswitch_1
    const/16 v1, 0x7f

    .line 1387
    .restart local v1    # "alpha":I
    goto :goto_0

    .line 1383
    .end local v1    # "alpha":I
    :pswitch_2
    const/16 v1, 0xff

    .line 1384
    .restart local v1    # "alpha":I
    nop

    .line 1398
    :goto_0
    const/16 v2, 0xff

    const/4 v3, 0x1

    if-le p0, v3, :cond_0

    move v4, v2

    goto :goto_1

    :cond_0
    move v4, v0

    :goto_1
    if-le p1, v3, :cond_1

    move v5, v2

    goto :goto_2

    :cond_1
    move v5, v0

    :goto_2
    if-le p2, v3, :cond_2

    move v0, v2

    :cond_2
    invoke-static {v1, v4, v5, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public append(C)V
    .locals 3
    .param p1, "text"    # C

    .line 1208
    const/16 v0, 0xa

    if-ne p1, v0, :cond_6

    .line 1209
    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->rolledUpCaptions:Ljava/util/List;

    invoke-virtual {p0}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->buildSpannableString()Landroid/text/SpannableString;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1210
    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->captionStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 1212
    iget v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->italicsStartPosition:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 1213
    iput v2, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->italicsStartPosition:I

    .line 1215
    :cond_0
    iget v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->underlineStartPosition:I

    if-eq v0, v1, :cond_1

    .line 1216
    iput v2, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->underlineStartPosition:I

    .line 1218
    :cond_1
    iget v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->foregroundColorStartPosition:I

    if-eq v0, v1, :cond_2

    .line 1219
    iput v2, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->foregroundColorStartPosition:I

    .line 1221
    :cond_2
    iget v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->backgroundColorStartPosition:I

    if-eq v0, v1, :cond_3

    .line 1222
    iput v2, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->backgroundColorStartPosition:I

    .line 1225
    :cond_3
    :goto_0
    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->rolledUpCaptions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->rowCount:I

    if-ge v0, v1, :cond_5

    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->rolledUpCaptions:Ljava/util/List;

    .line 1226
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0xf

    if-lt v0, v1, :cond_4

    goto :goto_1

    .line 1230
    :cond_4
    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->rolledUpCaptions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->row:I

    goto :goto_2

    .line 1227
    :cond_5
    :goto_1
    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->rolledUpCaptions:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 1232
    :cond_6
    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->captionStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 1234
    :goto_2
    return-void
.end method

.method public backspace()V
    .locals 3

    .line 1201
    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->captionStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 1202
    .local v0, "length":I
    if-lez v0, :cond_0

    .line 1203
    iget-object v1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->captionStringBuilder:Landroid/text/SpannableStringBuilder;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2, v0}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 1205
    :cond_0
    return-void
.end method

.method public build()Landroidx/media3/extractor/text/cea/Cea708Decoder$Cea708CueInfo;
    .locals 20

    .line 1280
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1282
    const/4 v1, 0x0

    return-object v1

    .line 1285
    :cond_0
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 1288
    .local v1, "cueString":Landroid/text/SpannableStringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, v0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->rolledUpCaptions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 1289
    iget-object v3, v0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->rolledUpCaptions:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1290
    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 1288
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1293
    .end local v2    # "i":I
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->buildSpannableString()Landroid/text/SpannableString;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1298
    iget v2, v0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->justification:I

    packed-switch v2, :pswitch_data_0

    .line 1311
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected justification value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->justification:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1308
    :pswitch_0
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .line 1309
    .local v2, "alignment":Landroid/text/Layout$Alignment;
    move-object v14, v2

    goto :goto_1

    .line 1305
    .end local v2    # "alignment":Landroid/text/Layout$Alignment;
    :pswitch_1
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    .line 1306
    .restart local v2    # "alignment":Landroid/text/Layout$Alignment;
    move-object v14, v2

    goto :goto_1

    .line 1302
    .end local v2    # "alignment":Landroid/text/Layout$Alignment;
    :pswitch_2
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 1303
    .restart local v2    # "alignment":Landroid/text/Layout$Alignment;
    move-object v14, v2

    .line 1316
    .end local v2    # "alignment":Landroid/text/Layout$Alignment;
    .local v14, "alignment":Landroid/text/Layout$Alignment;
    :goto_1
    iget-boolean v2, v0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->relativePositioning:Z

    if-eqz v2, :cond_2

    .line 1317
    iget v2, v0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->horizontalAnchor:I

    int-to-float v2, v2

    const/high16 v3, 0x42c60000    # 99.0f

    div-float/2addr v2, v3

    .line 1318
    .local v2, "position":F
    iget v4, v0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->verticalAnchor:I

    int-to-float v4, v4

    div-float/2addr v4, v3

    .local v4, "line":F
    goto :goto_2

    .line 1320
    .end local v2    # "position":F
    .end local v4    # "line":F
    :cond_2
    iget v2, v0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->horizontalAnchor:I

    int-to-float v2, v2

    const/high16 v3, 0x43510000    # 209.0f

    div-float/2addr v2, v3

    .line 1321
    .restart local v2    # "position":F
    iget v3, v0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->verticalAnchor:I

    int-to-float v3, v3

    const/high16 v4, 0x42940000    # 74.0f

    div-float v4, v3, v4

    .line 1324
    .restart local v4    # "line":F
    :goto_2
    const v3, 0x3f666666    # 0.9f

    mul-float v5, v2, v3

    const v6, 0x3d4ccccd    # 0.05f

    add-float v15, v5, v6

    .line 1325
    .end local v2    # "position":F
    .local v15, "position":F
    mul-float/2addr v3, v4

    add-float v16, v3, v6

    .line 1335
    .end local v4    # "line":F
    .local v16, "line":F
    iget v2, v0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->anchorId:I

    div-int/lit8 v2, v2, 0x3

    const/4 v3, 0x1

    if-nez v2, :cond_3

    .line 1336
    const/4 v2, 0x0

    move/from16 v17, v2

    .local v2, "verticalAnchorType":I
    goto :goto_3

    .line 1337
    .end local v2    # "verticalAnchorType":I
    :cond_3
    iget v2, v0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->anchorId:I

    div-int/lit8 v2, v2, 0x3

    if-ne v2, v3, :cond_4

    .line 1338
    const/4 v2, 0x1

    move/from16 v17, v2

    .restart local v2    # "verticalAnchorType":I
    goto :goto_3

    .line 1340
    .end local v2    # "verticalAnchorType":I
    :cond_4
    const/4 v2, 0x2

    move/from16 v17, v2

    .line 1344
    .local v17, "verticalAnchorType":I
    :goto_3
    iget v2, v0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->anchorId:I

    rem-int/lit8 v2, v2, 0x3

    if-nez v2, :cond_5

    .line 1345
    const/4 v2, 0x0

    move/from16 v18, v2

    .local v2, "horizontalAnchorType":I
    goto :goto_4

    .line 1346
    .end local v2    # "horizontalAnchorType":I
    :cond_5
    iget v2, v0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->anchorId:I

    rem-int/lit8 v2, v2, 0x3

    if-ne v2, v3, :cond_6

    .line 1347
    const/4 v2, 0x1

    move/from16 v18, v2

    .restart local v2    # "horizontalAnchorType":I
    goto :goto_4

    .line 1349
    .end local v2    # "horizontalAnchorType":I
    :cond_6
    const/4 v2, 0x2

    move/from16 v18, v2

    .line 1352
    .local v18, "horizontalAnchorType":I
    :goto_4
    iget v2, v0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->windowFillColor:I

    sget v4, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->COLOR_SOLID_BLACK:I

    if-eq v2, v4, :cond_7

    move v11, v3

    goto :goto_5

    :cond_7
    const/4 v2, 0x0

    move v11, v2

    .line 1354
    .local v11, "windowColorSet":Z
    :goto_5
    new-instance v19, Landroidx/media3/extractor/text/cea/Cea708Decoder$Cea708CueInfo;

    iget v12, v0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->windowFillColor:I

    iget v13, v0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->priority:I

    const/4 v6, 0x0

    const v10, -0x800001

    move-object/from16 v2, v19

    move-object v3, v1

    move-object v4, v14

    move/from16 v5, v16

    move/from16 v7, v17

    move v8, v15

    move/from16 v9, v18

    invoke-direct/range {v2 .. v13}, Landroidx/media3/extractor/text/cea/Cea708Decoder$Cea708CueInfo;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;FIIFIFZII)V

    return-object v19

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public buildSpannableString()Landroid/text/SpannableString;
    .locals 6

    .line 1237
    new-instance v0, Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->captionStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1239
    .local v0, "spannableStringBuilder":Landroid/text/SpannableStringBuilder;
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    .line 1241
    .local v1, "length":I
    if-lez v1, :cond_3

    .line 1242
    iget v2, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->italicsStartPosition:I

    const/16 v3, 0x21

    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    .line 1243
    new-instance v2, Landroid/text/style/StyleSpan;

    const/4 v5, 0x2

    invoke-direct {v2, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    iget v5, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->italicsStartPosition:I

    invoke-virtual {v0, v2, v5, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1250
    :cond_0
    iget v2, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->underlineStartPosition:I

    if-eq v2, v4, :cond_1

    .line 1251
    new-instance v2, Landroid/text/style/UnderlineSpan;

    invoke-direct {v2}, Landroid/text/style/UnderlineSpan;-><init>()V

    iget v5, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->underlineStartPosition:I

    invoke-virtual {v0, v2, v5, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1258
    :cond_1
    iget v2, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->foregroundColorStartPosition:I

    if-eq v2, v4, :cond_2

    .line 1259
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    iget v5, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->foregroundColor:I

    invoke-direct {v2, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iget v5, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->foregroundColorStartPosition:I

    invoke-virtual {v0, v2, v5, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1266
    :cond_2
    iget v2, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->backgroundColorStartPosition:I

    if-eq v2, v4, :cond_3

    .line 1267
    new-instance v2, Landroid/text/style/BackgroundColorSpan;

    iget v4, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->backgroundColor:I

    invoke-direct {v2, v4}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    iget v4, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->backgroundColorStartPosition:I

    invoke-virtual {v0, v2, v4, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1275
    :cond_3
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    return-object v2
.end method

.method public clear()V
    .locals 1

    .line 1014
    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->rolledUpCaptions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1015
    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->captionStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 1016
    const/4 v0, -0x1

    iput v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->italicsStartPosition:I

    .line 1017
    iput v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->underlineStartPosition:I

    .line 1018
    iput v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->foregroundColorStartPosition:I

    .line 1019
    iput v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->backgroundColorStartPosition:I

    .line 1020
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->row:I

    .line 1021
    return-void
.end method

.method public defineWindow(ZIZIIIIII)V
    .locals 18
    .param p1, "visible"    # Z
    .param p2, "priority"    # I
    .param p3, "relativePositioning"    # Z
    .param p4, "verticalAnchor"    # I
    .param p5, "horizontalAnchor"    # I
    .param p6, "rowCount"    # I
    .param p7, "anchorId"    # I
    .param p8, "windowStyleId"    # I
    .param p9, "penStyleId"    # I

    .line 1045
    move-object/from16 v8, p0

    move/from16 v9, p8

    move/from16 v10, p9

    const/4 v0, 0x1

    iput-boolean v0, v8, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->defined:Z

    .line 1046
    move/from16 v11, p1

    iput-boolean v11, v8, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->visible:Z

    .line 1047
    move/from16 v12, p2

    iput v12, v8, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->priority:I

    .line 1048
    move/from16 v13, p3

    iput-boolean v13, v8, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->relativePositioning:Z

    .line 1049
    move/from16 v14, p4

    iput v14, v8, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->verticalAnchor:I

    .line 1050
    move/from16 v15, p5

    iput v15, v8, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->horizontalAnchor:I

    .line 1051
    move/from16 v7, p7

    iput v7, v8, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->anchorId:I

    .line 1054
    iget v0, v8, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->rowCount:I

    add-int/lit8 v1, p6, 0x1

    if-eq v0, v1, :cond_1

    .line 1055
    add-int/lit8 v0, p6, 0x1

    iput v0, v8, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->rowCount:I

    .line 1058
    :goto_0
    iget-object v0, v8, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->rolledUpCaptions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, v8, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->rowCount:I

    if-ge v0, v1, :cond_0

    iget-object v0, v8, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->rolledUpCaptions:Ljava/util/List;

    .line 1059
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0xf

    if-lt v0, v1, :cond_1

    .line 1060
    :cond_0
    iget-object v0, v8, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->rolledUpCaptions:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 1064
    :cond_1
    if-eqz v9, :cond_2

    iget v0, v8, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->windowStyleId:I

    if-eq v0, v9, :cond_2

    .line 1065
    iput v9, v8, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->windowStyleId:I

    .line 1067
    add-int/lit8 v16, v9, -0x1

    .line 1069
    .local v16, "windowStyleIdIndex":I
    sget-object v0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->WINDOW_STYLE_FILL:[I

    aget v1, v0, v16

    sget v2, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->COLOR_TRANSPARENT:I

    sget-object v0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->WINDOW_STYLE_WORD_WRAP:[Z

    aget-boolean v3, v0, v16

    sget-object v0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->WINDOW_STYLE_PRINT_DIRECTION:[I

    aget v5, v0, v16

    sget-object v0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->WINDOW_STYLE_SCROLL_DIRECTION:[I

    aget v6, v0, v16

    sget-object v0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->WINDOW_STYLE_JUSTIFICATION:[I

    aget v17, v0, v16

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v7, v17

    invoke-virtual/range {v0 .. v7}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->setWindowAttributes(IIZIIII)V

    .line 1079
    .end local v16    # "windowStyleIdIndex":I
    :cond_2
    if-eqz v10, :cond_3

    iget v0, v8, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->penStyleId:I

    if-eq v0, v10, :cond_3

    .line 1080
    iput v10, v8, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->penStyleId:I

    .line 1082
    add-int/lit8 v16, v10, -0x1

    .line 1085
    .local v16, "penStyleIdIndex":I
    sget-object v0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->PEN_STYLE_EDGE_TYPE:[I

    aget v6, v0, v16

    sget-object v0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->PEN_STYLE_FONT_STYLE:[I

    aget v7, v0, v16

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v7}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->setPenAttributes(IIIZZII)V

    .line 1093
    sget v0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->COLOR_SOLID_WHITE:I

    sget-object v1, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->PEN_STYLE_BACKGROUND:[I

    aget v1, v1, v16

    sget v2, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->COLOR_SOLID_BLACK:I

    invoke-virtual {v8, v0, v1, v2}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->setPenColor(III)V

    .line 1095
    .end local v16    # "penStyleIdIndex":I
    :cond_3
    return-void
.end method

.method public isDefined()Z
    .locals 1

    .line 1024
    iget-boolean v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->defined:Z

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 990
    invoke-virtual {p0}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->isDefined()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->rolledUpCaptions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->captionStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isVisible()Z
    .locals 1

    .line 1032
    iget-boolean v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->visible:Z

    return v0
.end method

.method public reset()V
    .locals 2

    .line 994
    invoke-virtual {p0}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->clear()V

    .line 996
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->defined:Z

    .line 997
    iput-boolean v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->visible:Z

    .line 998
    const/4 v1, 0x4

    iput v1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->priority:I

    .line 999
    iput-boolean v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->relativePositioning:Z

    .line 1000
    iput v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->verticalAnchor:I

    .line 1001
    iput v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->horizontalAnchor:I

    .line 1002
    iput v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->anchorId:I

    .line 1003
    const/16 v1, 0xf

    iput v1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->rowCount:I

    .line 1004
    iput v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->justification:I

    .line 1005
    iput v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->windowStyleId:I

    .line 1006
    iput v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->penStyleId:I

    .line 1007
    sget v0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->COLOR_SOLID_BLACK:I

    iput v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->windowFillColor:I

    .line 1009
    sget v0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->COLOR_SOLID_WHITE:I

    iput v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->foregroundColor:I

    .line 1010
    sget v0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->COLOR_SOLID_BLACK:I

    iput v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->backgroundColor:I

    .line 1011
    return-void
.end method

.method public setPenAttributes(IIIZZII)V
    .locals 6
    .param p1, "textTag"    # I
    .param p2, "offset"    # I
    .param p3, "penSize"    # I
    .param p4, "italicsToggle"    # Z
    .param p5, "underlineToggle"    # Z
    .param p6, "edgeType"    # I
    .param p7, "fontStyle"    # I

    .line 1125
    iget v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->italicsStartPosition:I

    const/16 v1, 0x21

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 1126
    if-nez p4, :cond_1

    .line 1127
    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->captionStringBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v3, Landroid/text/style/StyleSpan;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    iget v4, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->italicsStartPosition:I

    iget-object v5, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->captionStringBuilder:Landroid/text/SpannableStringBuilder;

    .line 1130
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    .line 1127
    invoke-virtual {v0, v3, v4, v5, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1132
    iput v2, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->italicsStartPosition:I

    goto :goto_0

    .line 1134
    :cond_0
    if-eqz p4, :cond_1

    .line 1135
    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->captionStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    iput v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->italicsStartPosition:I

    .line 1138
    :cond_1
    :goto_0
    iget v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->underlineStartPosition:I

    if-eq v0, v2, :cond_2

    .line 1139
    if-nez p5, :cond_3

    .line 1140
    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->captionStringBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v3, Landroid/text/style/UnderlineSpan;

    invoke-direct {v3}, Landroid/text/style/UnderlineSpan;-><init>()V

    iget v4, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->underlineStartPosition:I

    iget-object v5, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->captionStringBuilder:Landroid/text/SpannableStringBuilder;

    .line 1143
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    .line 1140
    invoke-virtual {v0, v3, v4, v5, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1145
    iput v2, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->underlineStartPosition:I

    goto :goto_1

    .line 1147
    :cond_2
    if-eqz p5, :cond_3

    .line 1148
    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->captionStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    iput v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->underlineStartPosition:I

    .line 1153
    :cond_3
    :goto_1
    return-void
.end method

.method public setPenColor(III)V
    .locals 6
    .param p1, "foregroundColor"    # I
    .param p2, "backgroundColor"    # I
    .param p3, "edgeColor"    # I

    .line 1156
    iget v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->foregroundColorStartPosition:I

    const/16 v1, 0x21

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 1157
    iget v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->foregroundColor:I

    if-eq v0, p1, :cond_0

    .line 1158
    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->captionStringBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    iget v4, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->foregroundColor:I

    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iget v4, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->foregroundColorStartPosition:I

    iget-object v5, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->captionStringBuilder:Landroid/text/SpannableStringBuilder;

    .line 1161
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    .line 1158
    invoke-virtual {v0, v3, v4, v5, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1165
    :cond_0
    sget v0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->COLOR_SOLID_WHITE:I

    if-eq p1, v0, :cond_1

    .line 1166
    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->captionStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    iput v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->foregroundColorStartPosition:I

    .line 1167
    iput p1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->foregroundColor:I

    .line 1170
    :cond_1
    iget v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->backgroundColorStartPosition:I

    if-eq v0, v2, :cond_2

    .line 1171
    iget v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->backgroundColor:I

    if-eq v0, p2, :cond_2

    .line 1172
    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->captionStringBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v2, Landroid/text/style/BackgroundColorSpan;

    iget v3, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->backgroundColor:I

    invoke-direct {v2, v3}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    iget v3, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->backgroundColorStartPosition:I

    iget-object v4, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->captionStringBuilder:Landroid/text/SpannableStringBuilder;

    .line 1175
    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    .line 1172
    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1179
    :cond_2
    sget v0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->COLOR_SOLID_BLACK:I

    if-eq p2, v0, :cond_3

    .line 1180
    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->captionStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    iput v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->backgroundColorStartPosition:I

    .line 1181
    iput p2, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->backgroundColor:I

    .line 1185
    :cond_3
    return-void
.end method

.method public setPenLocation(II)V
    .locals 1
    .param p1, "row"    # I
    .param p2, "column"    # I

    .line 1194
    iget v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->row:I

    if-eq v0, p1, :cond_0

    .line 1195
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    .line 1197
    :cond_0
    iput p1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->row:I

    .line 1198
    return-void
.end method

.method public setVisibility(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .line 1028
    iput-boolean p1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->visible:Z

    .line 1029
    return-void
.end method

.method public setWindowAttributes(IIZIIII)V
    .locals 0
    .param p1, "fillColor"    # I
    .param p2, "borderColor"    # I
    .param p3, "wordWrapToggle"    # Z
    .param p4, "borderType"    # I
    .param p5, "printDirection"    # I
    .param p6, "scrollDirection"    # I
    .param p7, "justification"    # I

    .line 1105
    iput p1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->windowFillColor:I

    .line 1110
    iput p7, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->justification:I

    .line 1111
    return-void
.end method
