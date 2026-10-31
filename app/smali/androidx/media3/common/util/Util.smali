.class public final Landroidx/media3/common/util/Util;
.super Ljava/lang/Object;
.source "Util.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/common/util/Util$Api29;
    }
.end annotation


# static fields
.field private static final CRC16_BYTES_MSBF:[I

.field private static final CRC32_BYTES_MSBF:[I

.field private static final CRC8_BYTES_MSBF:[I

.field public static final DEVICE:Ljava/lang/String;

.field public static final DEVICE_DEBUG_INFO:Ljava/lang/String;

.field public static final EMPTY_BYTE_ARRAY:[B

.field public static final EMPTY_LONG_ARRAY:[J

.field private static final ESCAPED_CHARACTER_PATTERN:Ljava/util/regex/Pattern;

.field private static final ISM_DASH_FORMAT_EXTENSION:Ljava/lang/String; = "format=mpd-time-csf"

.field private static final ISM_HLS_FORMAT_EXTENSION:Ljava/lang/String; = "format=m3u8-aapl"

.field private static final ISM_PATH_PATTERN:Ljava/util/regex/Pattern;

.field public static final MANUFACTURER:Ljava/lang/String;

.field public static final MODEL:Ljava/lang/String;

.field public static final SDK_INT:I

.field private static final TAG:Ljava/lang/String; = "Util"

.field private static final XS_DATE_TIME_PATTERN:Ljava/util/regex/Pattern;

.field private static final XS_DURATION_PATTERN:Ljava/util/regex/Pattern;

.field private static final additionalIsoLanguageReplacements:[Ljava/lang/String;

.field private static final isoLegacyTagReplacements:[Ljava/lang/String;

.field private static languageTagReplacementMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 22

    .line 158
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sput v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    .line 164
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    sput-object v0, Landroidx/media3/common/util/Util;->DEVICE:Ljava/lang/String;

    .line 170
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sput-object v0, Landroidx/media3/common/util/Util;->MANUFACTURER:Ljava/lang/String;

    .line 176
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v0, Landroidx/media3/common/util/Util;->MODEL:Ljava/lang/String;

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroidx/media3/common/util/Util;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Landroidx/media3/common/util/Util;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Landroidx/media3/common/util/Util;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Landroidx/media3/common/util/Util;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/util/Util;->DEVICE_DEBUG_INFO:Ljava/lang/String;

    .line 184
    const/4 v0, 0x0

    new-array v1, v0, [B

    sput-object v1, Landroidx/media3/common/util/Util;->EMPTY_BYTE_ARRAY:[B

    .line 187
    new-array v1, v0, [J

    sput-object v1, Landroidx/media3/common/util/Util;->EMPTY_LONG_ARRAY:[J

    .line 190
    nop

    .line 191
    const-string v1, "(\\d\\d\\d\\d)\\-(\\d\\d)\\-(\\d\\d)[Tt](\\d\\d):(\\d\\d):(\\d\\d)([\\.,](\\d+))?([Zz]|((\\+|\\-)(\\d?\\d):?(\\d\\d)))?"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Landroidx/media3/common/util/Util;->XS_DATE_TIME_PATTERN:Ljava/util/regex/Pattern;

    .line 195
    nop

    .line 196
    const-string v1, "^(-)?P(([0-9]*)Y)?(([0-9]*)M)?(([0-9]*)D)?(T(([0-9]*)H)?(([0-9]*)M)?(([0-9.]*)S)?)?$"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Landroidx/media3/common/util/Util;->XS_DURATION_PATTERN:Ljava/util/regex/Pattern;

    .line 199
    const-string v1, "%([A-Fa-f0-9]{2})"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Landroidx/media3/common/util/Util;->ESCAPED_CHARACTER_PATTERN:Ljava/util/regex/Pattern;

    .line 202
    nop

    .line 203
    const-string v1, "(?:.*\\.)?isml?(?:/(manifest(.*))?)?"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Landroidx/media3/common/util/Util;->ISM_PATH_PATTERN:Ljava/util/regex/Pattern;

    .line 3789
    const/16 v1, 0x58

    new-array v1, v1, [Ljava/lang/String;

    const-string v3, "alb"

    aput-object v3, v1, v0

    const-string/jumbo v3, "sq"

    const/4 v4, 0x1

    aput-object v3, v1, v4

    const-string v3, "arm"

    aput-object v3, v1, v2

    const-string v3, "hy"

    const/4 v5, 0x3

    aput-object v3, v1, v5

    const-string v3, "baq"

    const/4 v6, 0x4

    aput-object v3, v1, v6

    const-string v3, "eu"

    const/4 v7, 0x5

    aput-object v3, v1, v7

    const-string v3, "bur"

    const/4 v8, 0x6

    aput-object v3, v1, v8

    const-string v3, "my"

    const/4 v9, 0x7

    aput-object v3, v1, v9

    const-string/jumbo v3, "tib"

    const/16 v10, 0x8

    aput-object v3, v1, v10

    const-string v3, "bo"

    const/16 v11, 0x9

    aput-object v3, v1, v11

    const-string v3, "chi"

    const/16 v12, 0xa

    aput-object v3, v1, v12

    const-string/jumbo v3, "zh"

    const/16 v13, 0xb

    aput-object v3, v1, v13

    const-string v3, "cze"

    const/16 v14, 0xc

    aput-object v3, v1, v14

    const-string v3, "cs"

    const/16 v15, 0xd

    aput-object v3, v1, v15

    const-string v3, "dut"

    const/16 v16, 0xe

    aput-object v3, v1, v16

    const-string v3, "nl"

    const/16 v17, 0xf

    aput-object v3, v1, v17

    const-string v3, "ger"

    const/16 v15, 0x10

    aput-object v3, v1, v15

    const-string v3, "de"

    const/16 v18, 0x11

    aput-object v3, v1, v18

    const-string v3, "gre"

    const/16 v15, 0x12

    aput-object v3, v1, v15

    const/16 v3, 0x13

    const-string v19, "el"

    aput-object v19, v1, v3

    const/16 v3, 0x14

    const-string v19, "fre"

    aput-object v19, v1, v3

    const/16 v3, 0x15

    const-string v19, "fr"

    aput-object v19, v1, v3

    const/16 v3, 0x16

    const-string v19, "geo"

    aput-object v19, v1, v3

    const/16 v3, 0x17

    const-string v19, "ka"

    aput-object v19, v1, v3

    const/16 v3, 0x18

    const-string v19, "ice"

    aput-object v19, v1, v3

    const/16 v3, 0x19

    const-string v19, "is"

    aput-object v19, v1, v3

    const/16 v3, 0x1a

    const-string v19, "mac"

    aput-object v19, v1, v3

    const/16 v3, 0x1b

    const-string v19, "mk"

    aput-object v19, v1, v3

    const/16 v3, 0x1c

    const-string v19, "mao"

    aput-object v19, v1, v3

    const/16 v3, 0x1d

    const-string v19, "mi"

    aput-object v19, v1, v3

    const/16 v3, 0x1e

    const-string v19, "may"

    aput-object v19, v1, v3

    const/16 v3, 0x1f

    const-string v19, "ms"

    aput-object v19, v1, v3

    const/16 v3, 0x20

    const-string/jumbo v19, "per"

    aput-object v19, v1, v3

    const/16 v3, 0x21

    const-string v19, "fa"

    aput-object v19, v1, v3

    const/16 v3, 0x22

    const-string/jumbo v19, "rum"

    aput-object v19, v1, v3

    const/16 v3, 0x23

    const-string/jumbo v19, "ro"

    aput-object v19, v1, v3

    const/16 v3, 0x24

    const-string/jumbo v19, "scc"

    aput-object v19, v1, v3

    const/16 v3, 0x25

    const-string v19, "hbs-srp"

    aput-object v19, v1, v3

    const/16 v3, 0x26

    const-string/jumbo v20, "slo"

    aput-object v20, v1, v3

    const/16 v3, 0x27

    const-string/jumbo v20, "sk"

    aput-object v20, v1, v3

    const/16 v3, 0x28

    const-string/jumbo v20, "wel"

    aput-object v20, v1, v3

    const/16 v3, 0x29

    const-string v20, "cy"

    aput-object v20, v1, v3

    const/16 v3, 0x2a

    const-string v20, "id"

    aput-object v20, v1, v3

    const/16 v3, 0x2b

    const-string v20, "ms-ind"

    aput-object v20, v1, v3

    const/16 v3, 0x2c

    const-string v21, "iw"

    aput-object v21, v1, v3

    const/16 v3, 0x2d

    const-string v21, "he"

    aput-object v21, v1, v3

    const/16 v3, 0x2e

    const-string v21, "heb"

    aput-object v21, v1, v3

    const/16 v3, 0x2f

    const-string v21, "he"

    aput-object v21, v1, v3

    const/16 v3, 0x30

    const-string v21, "ji"

    aput-object v21, v1, v3

    const/16 v3, 0x31

    const-string/jumbo v21, "yi"

    aput-object v21, v1, v3

    const/16 v3, 0x32

    const-string v21, "arb"

    aput-object v21, v1, v3

    const/16 v3, 0x33

    const-string v21, "ar-arb"

    aput-object v21, v1, v3

    const/16 v3, 0x34

    const-string v21, "in"

    aput-object v21, v1, v3

    const/16 v3, 0x35

    aput-object v20, v1, v3

    const/16 v3, 0x36

    const-string v21, "ind"

    aput-object v21, v1, v3

    const/16 v3, 0x37

    aput-object v20, v1, v3

    const/16 v3, 0x38

    const-string v20, "nb"

    aput-object v20, v1, v3

    const/16 v3, 0x39

    const-string v20, "no-nob"

    aput-object v20, v1, v3

    const/16 v3, 0x3a

    const-string v20, "nob"

    aput-object v20, v1, v3

    const/16 v3, 0x3b

    const-string v20, "no-nob"

    aput-object v20, v1, v3

    const/16 v3, 0x3c

    const-string v20, "nn"

    aput-object v20, v1, v3

    const/16 v3, 0x3d

    const-string v20, "no-nno"

    aput-object v20, v1, v3

    const/16 v3, 0x3e

    const-string v20, "nno"

    aput-object v20, v1, v3

    const/16 v3, 0x3f

    const-string v20, "no-nno"

    aput-object v20, v1, v3

    const/16 v3, 0x40

    const-string/jumbo v20, "tw"

    aput-object v20, v1, v3

    const/16 v3, 0x41

    const-string v20, "ak-twi"

    aput-object v20, v1, v3

    const/16 v3, 0x42

    const-string/jumbo v20, "twi"

    aput-object v20, v1, v3

    const/16 v3, 0x43

    const-string v20, "ak-twi"

    aput-object v20, v1, v3

    const/16 v3, 0x44

    const-string v20, "bs"

    aput-object v20, v1, v3

    const/16 v3, 0x45

    const-string v20, "hbs-bos"

    aput-object v20, v1, v3

    const/16 v3, 0x46

    const-string v20, "bos"

    aput-object v20, v1, v3

    const/16 v3, 0x47

    const-string v20, "hbs-bos"

    aput-object v20, v1, v3

    const/16 v3, 0x48

    const-string v20, "hr"

    aput-object v20, v1, v3

    const/16 v3, 0x49

    const-string v20, "hbs-hrv"

    aput-object v20, v1, v3

    const/16 v3, 0x4a

    const-string v20, "hrv"

    aput-object v20, v1, v3

    const/16 v3, 0x4b

    const-string v20, "hbs-hrv"

    aput-object v20, v1, v3

    const/16 v3, 0x4c

    const-string/jumbo v20, "sr"

    aput-object v20, v1, v3

    const/16 v3, 0x4d

    aput-object v19, v1, v3

    const/16 v3, 0x4e

    const-string/jumbo v20, "srp"

    aput-object v20, v1, v3

    const/16 v3, 0x4f

    aput-object v19, v1, v3

    const/16 v3, 0x50

    const-string v19, "cmn"

    aput-object v19, v1, v3

    const/16 v3, 0x51

    const-string/jumbo v19, "zh-cmn"

    aput-object v19, v1, v3

    const/16 v3, 0x52

    const-string v19, "hak"

    aput-object v19, v1, v3

    const/16 v3, 0x53

    const-string/jumbo v19, "zh-hak"

    aput-object v19, v1, v3

    const/16 v3, 0x54

    const-string v19, "nan"

    aput-object v19, v1, v3

    const/16 v3, 0x55

    const-string/jumbo v19, "zh-nan"

    aput-object v19, v1, v3

    const/16 v3, 0x56

    const-string v19, "hsn"

    aput-object v19, v1, v3

    const/16 v3, 0x57

    const-string/jumbo v19, "zh-hsn"

    aput-object v19, v1, v3

    sput-object v1, Landroidx/media3/common/util/Util;->additionalIsoLanguageReplacements:[Ljava/lang/String;

    .line 3845
    new-array v1, v15, [Ljava/lang/String;

    const-string v3, "i-lux"

    aput-object v3, v1, v0

    const-string v0, "lb"

    aput-object v0, v1, v4

    const-string v0, "i-hak"

    aput-object v0, v1, v2

    const-string/jumbo v0, "zh-hak"

    aput-object v0, v1, v5

    const-string v0, "i-navajo"

    aput-object v0, v1, v6

    const-string v0, "nv"

    aput-object v0, v1, v7

    const-string v0, "no-bok"

    aput-object v0, v1, v8

    const-string v0, "no-nob"

    aput-object v0, v1, v9

    const-string v0, "no-nyn"

    aput-object v0, v1, v10

    const-string v0, "no-nno"

    aput-object v0, v1, v11

    const-string/jumbo v0, "zh-guoyu"

    aput-object v0, v1, v12

    const-string/jumbo v0, "zh-cmn"

    aput-object v0, v1, v13

    const-string/jumbo v0, "zh-hakka"

    aput-object v0, v1, v14

    const-string/jumbo v0, "zh-hak"

    const/16 v2, 0xd

    aput-object v0, v1, v2

    const-string/jumbo v0, "zh-min-nan"

    aput-object v0, v1, v16

    const-string/jumbo v0, "zh-nan"

    aput-object v0, v1, v17

    const-string/jumbo v0, "zh-xiang"

    const/16 v2, 0x10

    aput-object v0, v1, v2

    const-string/jumbo v0, "zh-hsn"

    aput-object v0, v1, v18

    sput-object v1, Landroidx/media3/common/util/Util;->isoLegacyTagReplacements:[Ljava/lang/String;

    .line 3862
    const/16 v0, 0x100

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroidx/media3/common/util/Util;->CRC32_BYTES_MSBF:[I

    .line 3906
    new-array v0, v2, [I

    fill-array-data v0, :array_1

    sput-object v0, Landroidx/media3/common/util/Util;->CRC16_BYTES_MSBF:[I

    .line 3916
    const/16 v0, 0x100

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Landroidx/media3/common/util/Util;->CRC8_BYTES_MSBF:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x4c11db7
        0x9823b6e
        0xd4326d9
        0x130476dc
        0x17c56b6b
        0x1a864db2
        0x1e475005
        0x2608edb8
        0x22c9f00f
        0x2f8ad6d6
        0x2b4bcb61
        0x350c9b64
        0x31cd86d3
        0x3c8ea00a
        0x384fbdbd
        0x4c11db70    # 3.8235584E7f
        0x48d0c6c7
        0x4593e01e
        0x4152fda9
        0x5f15adac
        0x5bd4b01b
        0x569796c2
        0x52568b75
        0x6a1936c8
        0x6ed82b7f
        0x639b0da6
        0x675a1011
        0x791d4014
        0x7ddc5da3
        0x709f7b7a
        0x745e66cd
        -0x67dc4920
        -0x631d54a9    # -1.4999716E-21f
        -0x6e5e7272
        -0x6a9f6fc7
        -0x74d83fc4
        -0x70192275
        -0x7d5a04ae
        -0x799b191b
        -0x41d4a4a8
        -0x4515b911
        -0x48569fca
        -0x4c97827f
        -0x52d0d27c
        -0x5611cfcd
        -0x5b52e916
        -0x5f93f4a3    # -1.9993737E-19f
        -0x2bcd9270
        -0x2f0c8fd9
        -0x224fa902
        -0x268eb4b7
        -0x38c9e4b4
        -0x3c08f905
        -0x314bdfde
        -0x358ac26b
        -0xdc57fd8
        -0x9046261
        -0x44744ba
        -0x86590f
        -0x1ec1090c
        -0x1a0014bd
        -0x17433266
        -0x13822fd3
        0x34867077
        0x30476dc0
        0x3d044b19
        0x39c556ae
        0x278206ab
        0x23431b1c
        0x2e003dc5
        0x2ac12072
        0x128e9dcf    # 9.000363E-28f
        0x164f8078
        0x1b0ca6a1
        0x1fcdbb16
        0x18aeb13
        0x54bf6a4
        0x808d07d
        0xcc9cdca
        0x7897ab07
        0x7c56b6b0
        0x71159069
        0x75d48dde
        0x6b93dddb
        0x6f52c06c
        0x6211e6b5
        0x66d0fb02
        0x5e9f46bf
        0x5a5e5b08
        0x571d7dd1
        0x53dc6066
        0x4d9b3063    # 3.25454944E8f
        0x495a2dd4    # 893661.25f
        0x44190b0d
        0x40d816ba
        -0x535a3969
        -0x579b24e0
        -0x5ad80207
        -0x5e191fb2
        -0x405e4fb5
        -0x449f5204
        -0x49dc74db
        -0x4d1d696e
        -0x7552d4d1
        -0x7193c968
        -0x7cd0efbf
        -0x7811f20a
        -0x6656a20d
        -0x6297bfbc
        -0x6fd49963
        -0x6b1584d6
        -0x1f4be219
        -0x1b8affb0
        -0x16c9d977
        -0x1208c4c2
        -0xc4f94c5
        -0x88e8974
        -0x5cdafab
        -0x10cb21e
        -0x39430fa1
        -0x3d821218
        -0x30c134cf
        -0x3400297a
        -0x2a47797d
        -0x2e8664cc
        -0x23c54213
        -0x27045fa6
        0x690ce0ee
        0x6dcdfd59
        0x608edb80
        0x644fc637
        0x7a089632
        0x7ec98b85
        0x738aad5c
        0x774bb0eb
        0x4f040d56
        0x4bc510e1    # 2.5829826E7f
        0x46863638
        0x42472b8f
        0x5c007b8a
        0x58c1663d
        0x558240e4
        0x51435d53
        0x251d3b9e
        0x21dc2629
        0x2c9f00f0
        0x285e1d47
        0x36194d42
        0x32d850f5
        0x3f9b762c
        0x3b5a6b9b
        0x315d626
        0x7d4cb91
        0xa97ed48
        0xe56f0ff
        0x1011a0fa
        0x14d0bd4d
        0x19939b94
        0x1d528623
        -0xed0a9f2
        -0xa11b447
        -0x75292a0
        -0x3938f29
        -0x1dd4df2e
        -0x1915c29b
        -0x1456e444
        -0x1097f9f5
        -0x28d8444a
        -0x2c1959ff
        -0x215a7f28
        -0x259b6291
        -0x3bdc3296
        -0x3f1d2f23
        -0x325e09fc
        -0x369f144d
        -0x42c17282
        -0x46006f37
        -0x4b4349f0
        -0x4f825459
        -0x51c5045e
        -0x550419eb
        -0x58473f34
        -0x5c862285
        -0x64c99f3a
        -0x6008828f
        -0x6d4ba458
        -0x698ab9e1
        -0x77cde9e6
        -0x730cf453
        -0x7e4fd28c
        -0x7a8ecf3d
        0x5d8a9099
        0x594b8d2e
        0x5408abf7
        0x50c9b640
        0x4e8ee645
        0x4a4ffbf2    # 3407612.5f
        0x470cdd2b
        0x43cdc09c
        0x7b827d21
        0x7f436096
        0x7200464f
        0x76c15bf8
        0x68860bfd
        0x6c47164a
        0x61043093
        0x65c52d24
        0x119b4be9
        0x155a565e
        0x18197087
        0x1cd86d30
        0x29f3d35
        0x65e2082
        0xb1d065b
        0xfdc1bec
        0x3793a651
        0x3352bbe6
        0x3e119d3f
        0x3ad08088
        0x2497d08d
        0x2056cd3a
        0x2d15ebe3
        0x29d4f654
        -0x3a56d987
        -0x3e97c432
        -0x33d4e2e9    # -4.4856412E7f
        -0x3715ff60    # -479237.0f
        -0x2952af5b
        -0x2d93b2ee
        -0x20d09435
        -0x24118984
        -0x1c5e343f
        -0x189f298a
        -0x15dc0f51
        -0x111d12e8
        -0xf5a42e3
        -0xb9b5f56
        -0x6d8798d
        -0x219643c
        -0x764702f7
        -0x72861f42    # -7.6999573E-31f
        -0x7fc53999
        -0x7b042430
        -0x6543742b
        -0x6182699e
        -0x6cc14f45
        -0x680052f4
        -0x504fef4f
        -0x548ef2fa
        -0x59cdd421
        -0x5d0cc998
        -0x434b9993
        -0x478a8426
        -0x4ac9a2fd
        -0x4e08bf4c
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x1021
        0x2042
        0x3063
        0x4084
        0x50a5
        0x60c6
        0x70e7
        0x8108
        0x9129
        0xa14a
        0xb16b
        0xc18c
        0xd1ad
        0xe1ce
        0xf1ef
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x7
        0xe
        0x9
        0x1c
        0x1b
        0x12
        0x15
        0x38
        0x3f
        0x36
        0x31
        0x24
        0x23
        0x2a
        0x2d
        0x70
        0x77
        0x7e
        0x79
        0x6c
        0x6b
        0x62
        0x65
        0x48
        0x4f
        0x46
        0x41
        0x54
        0x53
        0x5a
        0x5d
        0xe0
        0xe7
        0xee
        0xe9
        0xfc
        0xfb
        0xf2
        0xf5
        0xd8
        0xdf
        0xd6
        0xd1
        0xc4
        0xc3
        0xca
        0xcd
        0x90
        0x97
        0x9e
        0x99
        0x8c
        0x8b
        0x82
        0x85
        0xa8
        0xaf
        0xa6
        0xa1
        0xb4
        0xb3
        0xba
        0xbd
        0xc7
        0xc0
        0xc9
        0xce
        0xdb
        0xdc
        0xd5
        0xd2
        0xff
        0xf8
        0xf1
        0xf6
        0xe3
        0xe4
        0xed
        0xea
        0xb7
        0xb0
        0xb9
        0xbe
        0xab
        0xac
        0xa5
        0xa2
        0x8f
        0x88
        0x81
        0x86
        0x93
        0x94
        0x9d
        0x9a
        0x27
        0x20
        0x29
        0x2e
        0x3b
        0x3c
        0x35
        0x32
        0x1f
        0x18
        0x11
        0x16
        0x3
        0x4
        0xd
        0xa
        0x57
        0x50
        0x59
        0x5e
        0x4b
        0x4c
        0x45
        0x42
        0x6f
        0x68
        0x61
        0x66
        0x73
        0x74
        0x7d
        0x7a
        0x89
        0x8e
        0x87
        0x80
        0x95
        0x92
        0x9b
        0x9c
        0xb1
        0xb6
        0xbf
        0xb8
        0xad
        0xaa
        0xa3
        0xa4
        0xf9
        0xfe
        0xf7
        0xf0
        0xe5
        0xe2
        0xeb
        0xec
        0xc1
        0xc6
        0xcf
        0xc8
        0xdd
        0xda
        0xd3
        0xd4
        0x69
        0x6e
        0x67
        0x60
        0x75
        0x72
        0x7b
        0x7c
        0x51
        0x56
        0x5f
        0x58
        0x4d
        0x4a
        0x43
        0x44
        0x19
        0x1e
        0x17
        0x10
        0x5
        0x2
        0xb
        0xc
        0x21
        0x26
        0x2f
        0x28
        0x3d
        0x3a
        0x33
        0x34
        0x4e
        0x49
        0x40
        0x47
        0x52
        0x55
        0x5c
        0x5b
        0x76
        0x71
        0x78
        0x7f
        0x6a
        0x6d
        0x64
        0x63
        0x3e
        0x39
        0x30
        0x37
        0x22
        0x25
        0x2c
        0x2b
        0x6
        0x1
        0x8
        0xf
        0x1a
        0x1d
        0x14
        0x13
        0xae
        0xa9
        0xa0
        0xa7
        0xb2
        0xb5
        0xbc
        0xbb
        0x96
        0x91
        0x98
        0x9f
        0x8a
        0x8d
        0x84
        0x83
        0xde
        0xd9
        0xd0
        0xd7
        0xc2
        0xc5
        0xcc
        0xcb
        0xe6
        0xe1
        0xe8
        0xef
        0xfa
        0xfd
        0xf4
        0xf3
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addWithOverflowDefault(JJJ)J
    .locals 6
    .param p0, "x"    # J
    .param p2, "y"    # J
    .param p4, "overflowResult"    # J

    .line 1198
    add-long v0, p0, p2

    .line 1200
    .local v0, "result":J
    xor-long v2, p0, v0

    xor-long v4, p2, v0

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 1201
    return-wide p4

    .line 1203
    :cond_0
    return-wide v0
.end method

.method public static areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "o1"    # Ljava/lang/Object;
    .param p1, "o2"    # Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 491
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static binarySearchCeil(Ljava/util/List;Ljava/lang/Comparable;ZZ)I
    .locals 3
    .param p2, "inclusive"    # Z
    .param p3, "stayInBounds"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "-TT;>;>(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Comparable<",
            "-TT;>;>;TT;ZZ)I"
        }
    .end annotation

    .line 1501
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<+Ljava/lang/Comparable<-TT;>;>;"
    .local p1, "value":Ljava/lang/Comparable;, "TT;"
    invoke-static {p0, p1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    .line 1502
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 1503
    not-int v0, v0

    goto :goto_1

    .line 1505
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    .line 1506
    .local v1, "listSize":I
    :goto_0
    add-int/lit8 v0, v0, 0x1

    if-ge v0, v1, :cond_1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Comparable;

    invoke-interface {v2, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 1507
    :cond_1
    if-eqz p2, :cond_2

    .line 1508
    add-int/lit8 v0, v0, -0x1

    .line 1511
    .end local v1    # "listSize":I
    :cond_2
    :goto_1
    if-eqz p3, :cond_3

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_2

    :cond_3
    move v1, v0

    :goto_2
    return v1
.end method

.method public static binarySearchCeil([IIZZ)I
    .locals 2
    .param p0, "array"    # [I
    .param p1, "value"    # I
    .param p2, "inclusive"    # Z
    .param p3, "stayInBounds"    # Z

    .line 1429
    invoke-static {p0, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    .line 1430
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 1431
    not-int v0, v0

    goto :goto_1

    .line 1433
    :cond_0
    :goto_0
    add-int/lit8 v0, v0, 0x1

    array-length v1, p0

    if-ge v0, v1, :cond_1

    aget v1, p0, v0

    if-ne v1, p1, :cond_1

    goto :goto_0

    .line 1434
    :cond_1
    if-eqz p2, :cond_2

    .line 1435
    add-int/lit8 v0, v0, -0x1

    .line 1438
    :cond_2
    :goto_1
    if-eqz p3, :cond_3

    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_2

    :cond_3
    move v1, v0

    :goto_2
    return v1
.end method

.method public static binarySearchCeil([JJZZ)I
    .locals 3
    .param p0, "array"    # [J
    .param p1, "value"    # J
    .param p3, "inclusive"    # Z
    .param p4, "stayInBounds"    # Z

    .line 1463
    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v0

    .line 1464
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 1465
    not-int v0, v0

    goto :goto_1

    .line 1467
    :cond_0
    :goto_0
    add-int/lit8 v0, v0, 0x1

    array-length v1, p0

    if-ge v0, v1, :cond_1

    aget-wide v1, p0, v0

    cmp-long v1, v1, p1

    if-nez v1, :cond_1

    goto :goto_0

    .line 1468
    :cond_1
    if-eqz p3, :cond_2

    .line 1469
    add-int/lit8 v0, v0, -0x1

    .line 1472
    :cond_2
    :goto_1
    if-eqz p4, :cond_3

    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_2

    :cond_3
    move v1, v0

    :goto_2
    return v1
.end method

.method public static binarySearchFloor(Landroidx/media3/common/util/LongArray;JZZ)I
    .locals 5
    .param p0, "longArray"    # Landroidx/media3/common/util/LongArray;
    .param p1, "value"    # J
    .param p3, "inclusive"    # Z
    .param p4, "stayInBounds"    # Z

    .line 1386
    const/4 v0, 0x0

    .line 1387
    .local v0, "lowIndex":I
    invoke-virtual {p0}, Landroidx/media3/common/util/LongArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 1389
    .local v1, "highIndex":I
    :goto_0
    if-gt v0, v1, :cond_1

    .line 1390
    add-int v2, v0, v1

    ushr-int/lit8 v2, v2, 0x1

    .line 1391
    .local v2, "midIndex":I
    invoke-virtual {p0, v2}, Landroidx/media3/common/util/LongArray;->get(I)J

    move-result-wide v3

    cmp-long v3, v3, p1

    if-gez v3, :cond_0

    .line 1392
    add-int/lit8 v0, v2, 0x1

    goto :goto_1

    .line 1394
    :cond_0
    add-int/lit8 v1, v2, -0x1

    .line 1396
    .end local v2    # "midIndex":I
    :goto_1
    goto :goto_0

    .line 1398
    :cond_1
    if-eqz p3, :cond_2

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0}, Landroidx/media3/common/util/LongArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Landroidx/media3/common/util/LongArray;->get(I)J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_2

    .line 1399
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1400
    :cond_2
    if-eqz p4, :cond_3

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    .line 1401
    const/4 v1, 0x0

    .line 1404
    :cond_3
    :goto_2
    return v1
.end method

.method public static binarySearchFloor(Ljava/util/List;Ljava/lang/Comparable;ZZ)I
    .locals 2
    .param p2, "inclusive"    # Z
    .param p3, "stayInBounds"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "-TT;>;>(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Comparable<",
            "-TT;>;>;TT;ZZ)I"
        }
    .end annotation

    .line 1353
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<+Ljava/lang/Comparable<-TT;>;>;"
    .local p1, "value":Ljava/lang/Comparable;, "TT;"
    invoke-static {p0, p1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    .line 1354
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 1355
    add-int/lit8 v1, v0, 0x2

    neg-int v0, v1

    goto :goto_1

    .line 1357
    :cond_0
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Comparable;

    invoke-interface {v1, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 1358
    :cond_1
    if-eqz p2, :cond_2

    .line 1359
    add-int/lit8 v0, v0, 0x1

    .line 1362
    :cond_2
    :goto_1
    if-eqz p3, :cond_3

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_2

    :cond_3
    move v1, v0

    :goto_2
    return v1
.end method

.method public static binarySearchFloor([IIZZ)I
    .locals 2
    .param p0, "array"    # [I
    .param p1, "value"    # I
    .param p2, "inclusive"    # Z
    .param p3, "stayInBounds"    # Z

    .line 1283
    invoke-static {p0, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    .line 1284
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 1285
    add-int/lit8 v1, v0, 0x2

    neg-int v0, v1

    goto :goto_1

    .line 1287
    :cond_0
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    aget v1, p0, v0

    if-ne v1, p1, :cond_1

    goto :goto_0

    .line 1288
    :cond_1
    if-eqz p2, :cond_2

    .line 1289
    add-int/lit8 v0, v0, 0x1

    .line 1292
    :cond_2
    :goto_1
    if-eqz p3, :cond_3

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_2

    :cond_3
    move v1, v0

    :goto_2
    return v1
.end method

.method public static binarySearchFloor([JJZZ)I
    .locals 3
    .param p0, "array"    # [J
    .param p1, "value"    # J
    .param p3, "inclusive"    # Z
    .param p4, "stayInBounds"    # Z

    .line 1316
    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v0

    .line 1317
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 1318
    add-int/lit8 v1, v0, 0x2

    neg-int v0, v1

    goto :goto_1

    .line 1320
    :cond_0
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    aget-wide v1, p0, v0

    cmp-long v1, v1, p1

    if-nez v1, :cond_1

    goto :goto_0

    .line 1321
    :cond_1
    if-eqz p3, :cond_2

    .line 1322
    add-int/lit8 v0, v0, 0x1

    .line 1325
    :cond_2
    :goto_1
    if-eqz p4, :cond_3

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_2

    :cond_3
    move v1, v0

    :goto_2
    return v1
.end method

.method public static castNonNull(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "#1"
        }
    .end annotation

    .line 612
    .local p0, "value":Ljava/lang/Object;, "TT;"
    return-object p0
.end method

.method public static castNonNullTypeArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "#1"
        }
    .end annotation

    .line 620
    .local p0, "value":[Ljava/lang/Object;, "[TT;"
    return-object p0
.end method

.method public static ceilDivide(II)I
    .locals 1
    .param p0, "numerator"    # I
    .param p1, "denominator"    # I

    .line 1134
    add-int v0, p0, p1

    add-int/lit8 v0, v0, -0x1

    div-int/2addr v0, p1

    return v0
.end method

.method public static ceilDivide(JJ)J
    .locals 4
    .param p0, "numerator"    # J
    .param p2, "denominator"    # J

    .line 1146
    add-long v0, p0, p2

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    div-long/2addr v0, p2

    return-wide v0
.end method

.method public static varargs checkCleartextTrafficPermitted([Landroidx/media3/common/MediaItem;)Z
    .locals 7
    .param p0, "mediaItems"    # [Landroidx/media3/common/MediaItem;

    .line 441
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x18

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    .line 443
    return v2

    .line 445
    :cond_0
    array-length v0, p0

    const/4 v1, 0x0

    move v3, v1

    :goto_0
    if-ge v3, v0, :cond_5

    aget-object v4, p0, v3

    .line 446
    .local v4, "mediaItem":Landroidx/media3/common/MediaItem;
    iget-object v5, v4, Landroidx/media3/common/MediaItem;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    if-nez v5, :cond_1

    .line 447
    goto :goto_2

    .line 449
    :cond_1
    iget-object v5, v4, Landroidx/media3/common/MediaItem;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    iget-object v5, v5, Landroidx/media3/common/MediaItem$LocalConfiguration;->uri:Landroid/net/Uri;

    invoke-static {v5}, Landroidx/media3/common/util/Util;->isTrafficRestricted(Landroid/net/Uri;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 450
    return v1

    .line 452
    :cond_2
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    iget-object v6, v4, Landroidx/media3/common/MediaItem;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    iget-object v6, v6, Landroidx/media3/common/MediaItem$LocalConfiguration;->subtitleConfigurations:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v6}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v6

    if-ge v5, v6, :cond_4

    .line 453
    iget-object v6, v4, Landroidx/media3/common/MediaItem;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    iget-object v6, v6, Landroidx/media3/common/MediaItem$LocalConfiguration;->subtitleConfigurations:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v6, v5}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/media3/common/MediaItem$SubtitleConfiguration;

    iget-object v6, v6, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->uri:Landroid/net/Uri;

    invoke-static {v6}, Landroidx/media3/common/util/Util;->isTrafficRestricted(Landroid/net/Uri;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 454
    return v1

    .line 452
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 445
    .end local v4    # "mediaItem":Landroidx/media3/common/MediaItem;
    .end local v5    # "i":I
    :cond_4
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 458
    :cond_5
    return v2
.end method

.method public static closeQuietly(Ljava/io/Closeable;)V
    .locals 1
    .param p0, "closeable"    # Ljava/io/Closeable;

    .line 934
    if-eqz p0, :cond_0

    .line 935
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 937
    :catch_0
    move-exception v0

    goto :goto_1

    .line 939
    :cond_0
    :goto_0
    nop

    .line 940
    :goto_1
    return-void
.end method

.method public static compareLong(JJ)I
    .locals 1
    .param p0, "left"    # J
    .param p2, "right"    # J

    .line 1524
    cmp-long v0, p0, p2

    if-gez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    cmp-long v0, p0, p2

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public static constrainValue(FFF)F
    .locals 1
    .param p0, "value"    # F
    .param p1, "min"    # F
    .param p2, "max"    # F

    .line 1185
    invoke-static {p0, p2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public static constrainValue(III)I
    .locals 1
    .param p0, "value"    # I
    .param p1, "min"    # I
    .param p2, "max"    # I

    .line 1159
    invoke-static {p0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public static constrainValue(JJJ)J
    .locals 2
    .param p0, "value"    # J
    .param p2, "min"    # J
    .param p4, "max"    # J

    .line 1172
    invoke-static {p0, p1, p4, p5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static contains(Landroid/util/SparseArray;I)Z
    .locals 1
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/SparseArray<",
            "TT;>;I)Z"
        }
    .end annotation

    .line 579
    .local p0, "sparseArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TT;>;"
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static contains([Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 5
    .param p0, "items"    # [Ljava/lang/Object;
    .param p1, "item"    # Ljava/lang/Object;

    .line 564
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    .line 565
    .local v3, "arrayItem":Ljava/lang/Object;
    invoke-static {v3, p1}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 566
    const/4 v0, 0x1

    return v0

    .line 564
    .end local v3    # "arrayItem":Ljava/lang/Object;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 569
    :cond_1
    return v1
.end method

.method public static contentEquals(Landroid/util/SparseArray;Landroid/util/SparseArray;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/SparseArray<",
            "TT;>;",
            "Landroid/util/SparseArray<",
            "TT;>;)Z"
        }
    .end annotation

    .line 506
    .local p0, "sparseArray1":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TT;>;"
    .local p1, "sparseArray2":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TT;>;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_1

    .line 507
    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0

    .line 508
    :cond_1
    if-nez p1, :cond_2

    .line 509
    return v1

    .line 512
    :cond_2
    sget v2, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v3, 0x1f

    if-lt v2, v3, :cond_3

    .line 513
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->contentEquals(Landroid/util/SparseArray;)Z

    move-result v0

    return v0

    .line 516
    :cond_3
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 517
    .local v2, "size":I
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-eq v2, v3, :cond_4

    .line 518
    return v1

    .line 521
    :cond_4
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_1
    if-ge v3, v2, :cond_6

    .line 522
    invoke-virtual {p0, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 523
    .local v4, "key":I
    invoke-virtual {p0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 524
    return v1

    .line 521
    .end local v4    # "key":I
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 528
    .end local v3    # "index":I
    :cond_6
    return v0
.end method

.method public static contentHashCode(Landroid/util/SparseArray;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/SparseArray<",
            "TT;>;)I"
        }
    .end annotation

    .line 541
    .local p0, "sparseArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TT;>;"
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    .line 542
    invoke-virtual {p0}, Landroid/util/SparseArray;->contentHashCode()I

    move-result v0

    return v0

    .line 544
    :cond_0
    const/16 v0, 0x11

    .line 545
    .local v0, "hash":I
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 546
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 547
    .end local v0    # "hash":I
    .local v2, "hash":I
    mul-int/lit8 v0, v2, 0x1f

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    .line 545
    .end local v2    # "hash":I
    .restart local v0    # "hash":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 549
    .end local v1    # "index":I
    :cond_1
    return v0
.end method

.method public static crc16([BIII)I
    .locals 3
    .param p0, "bytes"    # [B
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "initialValue"    # I

    .line 2883
    move v0, p1

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 2884
    aget-byte v1, p0, v0

    invoke-static {v1}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result v1

    .line 2886
    .local v1, "value":I
    shr-int/lit8 v2, v1, 0x4

    invoke-static {v2, p3}, Landroidx/media3/common/util/Util;->crc16UpdateFourBits(II)I

    move-result p3

    .line 2887
    and-int/lit8 v2, v1, 0xf

    invoke-static {v2, p3}, Landroidx/media3/common/util/Util;->crc16UpdateFourBits(II)I

    move-result p3

    .line 2883
    .end local v1    # "value":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2889
    .end local v0    # "i":I
    :cond_0
    return p3
.end method

.method private static crc16UpdateFourBits(II)I
    .locals 3
    .param p0, "value"    # I
    .param p1, "crc16Register"    # I

    .line 2903
    shr-int/lit8 v0, p1, 0xc

    and-int/lit16 v0, v0, 0xff

    .line 2905
    .local v0, "mostSignificant4Bits":I
    xor-int v1, v0, p0

    and-int/lit16 v0, v1, 0xff

    .line 2907
    shl-int/lit8 v1, p1, 0x4

    const v2, 0xffff

    and-int p1, v1, v2

    .line 2909
    sget-object v1, Landroidx/media3/common/util/Util;->CRC16_BYTES_MSBF:[I

    aget v1, v1, v0

    xor-int/2addr v1, p1

    and-int p1, v1, v2

    .line 2911
    return p1
.end method

.method public static crc32([BIII)I
    .locals 5
    .param p0, "bytes"    # [B
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "initialValue"    # I

    .line 2862
    move v0, p1

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 2863
    shl-int/lit8 v1, p3, 0x8

    sget-object v2, Landroidx/media3/common/util/Util;->CRC32_BYTES_MSBF:[I

    ushr-int/lit8 v3, p3, 0x18

    aget-byte v4, p0, v0

    and-int/lit16 v4, v4, 0xff

    xor-int/2addr v3, v4

    and-int/lit16 v3, v3, 0xff

    aget v2, v2, v3

    xor-int p3, v1, v2

    .line 2862
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2867
    .end local v0    # "i":I
    :cond_0
    return p3
.end method

.method public static crc8([BIII)I
    .locals 3
    .param p0, "bytes"    # [B
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "initialValue"    # I

    .line 2926
    move v0, p1

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 2927
    sget-object v1, Landroidx/media3/common/util/Util;->CRC8_BYTES_MSBF:[I

    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    xor-int/2addr v2, p3

    aget p3, v1, v2

    .line 2926
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2929
    .end local v0    # "i":I
    :cond_0
    return p3
.end method

.method public static createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroid/os/Handler;
    .locals 1
    .param p0, "looper"    # Landroid/os/Looper;
    .param p1, "callback"    # Landroid/os/Handler$Callback;

    .line 779
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    return-object v0
.end method

.method public static createHandlerForCurrentLooper()Landroid/os/Handler;
    .locals 1

    .line 711
    const/4 v0, 0x0

    invoke-static {v0}, Landroidx/media3/common/util/Util;->createHandlerForCurrentLooper(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method public static createHandlerForCurrentLooper(Landroid/os/Handler$Callback;)Landroid/os/Handler;
    .locals 1
    .param p0, "callback"    # Landroid/os/Handler$Callback;

    .line 729
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Looper;

    invoke-static {v0, p0}, Landroidx/media3/common/util/Util;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method public static createHandlerForCurrentOrMainLooper()Landroid/os/Handler;
    .locals 1

    .line 740
    const/4 v0, 0x0

    invoke-static {v0}, Landroidx/media3/common/util/Util;->createHandlerForCurrentOrMainLooper(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method public static createHandlerForCurrentOrMainLooper(Landroid/os/Handler$Callback;)Landroid/os/Handler;
    .locals 1
    .param p0, "callback"    # Landroid/os/Handler$Callback;

    .line 760
    invoke-static {}, Landroidx/media3/common/util/Util;->getCurrentOrMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0, p0}, Landroidx/media3/common/util/Util;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method private static createIsoLanguageReplacementMap()Ljava/util/HashMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3719
    invoke-static {}, Ljava/util/Locale;->getISOLanguages()[Ljava/lang/String;

    move-result-object v0

    .line 3720
    .local v0, "iso2Languages":[Ljava/lang/String;
    new-instance v1, Ljava/util/HashMap;

    array-length v2, v0

    sget-object v3, Landroidx/media3/common/util/Util;->additionalIsoLanguageReplacements:[Ljava/lang/String;

    array-length v3, v3

    add-int/2addr v2, v3

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 3723
    .local v1, "replacedLanguages":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 3726
    .local v4, "iso2":Ljava/lang/String;
    :try_start_0
    new-instance v5, Ljava/util/Locale;

    invoke-direct {v5, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v5

    .line 3727
    .local v5, "iso3":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 3728
    invoke-virtual {v1, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3732
    .end local v5    # "iso3":Ljava/lang/String;
    :cond_0
    goto :goto_1

    .line 3730
    :catch_0
    move-exception v5

    .line 3723
    .end local v4    # "iso2":Ljava/lang/String;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3735
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    sget-object v3, Landroidx/media3/common/util/Util;->additionalIsoLanguageReplacements:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_2

    .line 3736
    sget-object v3, Landroidx/media3/common/util/Util;->additionalIsoLanguageReplacements:[Ljava/lang/String;

    aget-object v3, v3, v2

    sget-object v4, Landroidx/media3/common/util/Util;->additionalIsoLanguageReplacements:[Ljava/lang/String;

    add-int/lit8 v5, v2, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3735
    add-int/lit8 v2, v2, 0x2

    goto :goto_2

    .line 3739
    .end local v2    # "i":I
    :cond_2
    return-object v1
.end method

.method public static createReadOnlyByteBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 2
    .param p0, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .line 2970
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static createTempDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2838
    invoke-static {p0, p1}, Landroidx/media3/common/util/Util;->createTempFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 2839
    .local v0, "tempFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 2840
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 2841
    return-object v0
.end method

.method public static createTempFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2847
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static durationUsToSampleCount(JI)J
    .locals 7
    .param p0, "durationUs"    # J
    .param p2, "sampleRate"    # I

    .line 1620
    int-to-long v2, p2

    const-wide/32 v4, 0xf4240

    sget-object v6, Ljava/math/RoundingMode;->UP:Ljava/math/RoundingMode;

    move-wide v0, p0

    invoke-static/range {v0 .. v6}, Landroidx/media3/common/util/Util;->scaleLargeValue(JJJLjava/math/RoundingMode;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static escapeFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "fileName"    # Ljava/lang/String;

    .line 2714
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 2715
    .local v0, "length":I
    const/4 v1, 0x0

    .line 2716
    .local v1, "charactersToEscapeCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 2717
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Landroidx/media3/common/util/Util;->shouldEscapeCharacter(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2718
    add-int/lit8 v1, v1, 0x1

    .line 2716
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2721
    .end local v2    # "i":I
    :cond_1
    if-nez v1, :cond_2

    .line 2722
    return-object p0

    .line 2725
    :cond_2
    const/4 v2, 0x0

    .line 2726
    .restart local v2    # "i":I
    new-instance v3, Ljava/lang/StringBuilder;

    mul-int/lit8 v4, v1, 0x2

    add-int/2addr v4, v0

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2727
    .local v3, "builder":Ljava/lang/StringBuilder;
    :goto_1
    if-lez v1, :cond_4

    .line 2728
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "i":I
    .local v4, "i":I
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 2729
    .local v2, "c":C
    invoke-static {v2}, Landroidx/media3/common/util/Util;->shouldEscapeCharacter(C)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2730
    const/16 v5, 0x25

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2731
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 2733
    :cond_3
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2735
    .end local v2    # "c":C
    :goto_2
    move v2, v4

    goto :goto_1

    .line 2736
    .end local v4    # "i":I
    .local v2, "i":I
    :cond_4
    if-ge v2, v0, :cond_5

    .line 2737
    invoke-virtual {v3, p0, v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 2739
    :cond_5
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static fixSmoothStreamingIsmManifestUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3
    .param p0, "uri"    # Landroid/net/Uri;

    .line 2663
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 2664
    .local v0, "path":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 2665
    return-object p0

    .line 2667
    :cond_0
    sget-object v1, Landroidx/media3/common/util/Util;->ISM_PATH_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 2668
    .local v1, "ismMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 2670
    const-string v2, "Manifest"

    invoke-static {p0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    return-object v2

    .line 2672
    :cond_1
    return-object p0
.end method

.method public static varargs formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .line 1122
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static fromUtf8Bytes([B)Ljava/lang/String;
    .locals 2
    .param p0, "bytes"    # [B

    .line 1048
    new-instance v0, Ljava/lang/String;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public static fromUtf8Bytes([BII)Ljava/lang/String;
    .locals 2
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 1061
    new-instance v0, Ljava/lang/String;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, p1, p2, v1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public static generateAudioSessionIdV21(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 2454
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 2455
    .local v0, "audioManager":Landroid/media/AudioManager;
    if-nez v0, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/media/AudioManager;->generateAudioSessionId()I

    move-result v1

    :goto_0
    return v1
.end method

.method public static getAdaptiveMimeTypeForContentType(I)Ljava/lang/String;
    .locals 1
    .param p0, "contentType"    # I

    .line 2639
    packed-switch p0, :pswitch_data_0

    .line 2649
    const/4 v0, 0x0

    return-object v0

    .line 2643
    :pswitch_0
    const-string v0, "application/x-mpegURL"

    return-object v0

    .line 2645
    :pswitch_1
    const-string v0, "application/vnd.ms-sstr+xml"

    return-object v0

    .line 2641
    :pswitch_2
    const-string v0, "application/dash+xml"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getApiLevelThatAudioFormatIntroducedAudioEncoding(I)I
    .locals 1
    .param p0, "encoding"    # I

    .line 2295
    packed-switch p0, :pswitch_data_0

    .line 2324
    :pswitch_0
    const v0, 0x7fffffff

    return v0

    .line 2322
    :pswitch_1
    const/16 v0, 0x22

    return v0

    .line 2320
    :pswitch_2
    const/16 v0, 0x1f

    return v0

    .line 2318
    :pswitch_3
    const/16 v0, 0x1e

    return v0

    .line 2307
    :pswitch_4
    const/16 v0, 0x19

    return v0

    .line 2316
    :pswitch_5
    const/16 v0, 0x1c

    return v0

    .line 2305
    :pswitch_6
    const/16 v0, 0x17

    return v0

    .line 2302
    :pswitch_7
    const/16 v0, 0x15

    return v0

    .line 2298
    :pswitch_8
    const/4 v0, 0x3

    return v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getAudioContentTypeForStreamType(I)I
    .locals 1
    .param p0, "streamType"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2398
    packed-switch p0, :pswitch_data_0

    .line 2409
    :pswitch_0
    const/4 v0, 0x2

    return v0

    .line 2404
    :pswitch_1
    const/4 v0, 0x4

    return v0

    .line 2406
    :pswitch_2
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getAudioFormat(III)Landroid/media/AudioFormat;
    .locals 1
    .param p0, "sampleRate"    # I
    .param p1, "channelConfig"    # I
    .param p2, "encoding"    # I

    .line 2279
    new-instance v0, Landroid/media/AudioFormat$Builder;

    invoke-direct {v0}, Landroid/media/AudioFormat$Builder;-><init>()V

    .line 2280
    invoke-virtual {v0, p0}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    .line 2281
    invoke-virtual {v0, p1}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    .line 2282
    invoke-virtual {v0, p2}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    .line 2283
    invoke-virtual {v0}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v0

    .line 2279
    return-object v0
.end method

.method public static getAudioTrackChannelConfig(I)I
    .locals 3
    .param p0, "channelCount"    # I

    .line 2226
    const/16 v0, 0x20

    const/4 v1, 0x0

    const/16 v2, 0x18fc

    sparse-switch p0, :sswitch_data_0

    .line 2272
    return v1

    .line 2254
    :sswitch_0
    sget v2, Landroidx/media3/common/util/Util;->SDK_INT:I

    if-lt v2, v0, :cond_0

    .line 2255
    const v0, 0x3fffffc

    return v0

    .line 2269
    :cond_0
    return v1

    .line 2252
    :sswitch_1
    const v0, 0xb58fc

    return v0

    .line 2244
    :sswitch_2
    sget v1, Landroidx/media3/common/util/Util;->SDK_INT:I

    if-lt v1, v0, :cond_1

    .line 2245
    const v0, 0xb40fc

    return v0

    .line 2249
    :cond_1
    return v2

    .line 2242
    :sswitch_3
    return v2

    .line 2240
    :sswitch_4
    const/16 v0, 0x4fc

    return v0

    .line 2238
    :sswitch_5
    const/16 v0, 0xfc

    return v0

    .line 2236
    :sswitch_6
    const/16 v0, 0xdc

    return v0

    .line 2234
    :sswitch_7
    const/16 v0, 0xcc

    return v0

    .line 2232
    :sswitch_8
    const/16 v0, 0x1c

    return v0

    .line 2230
    :sswitch_9
    const/16 v0, 0xc

    return v0

    .line 2228
    :sswitch_a
    const/4 v0, 0x4

    return v0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_a
        0x2 -> :sswitch_9
        0x3 -> :sswitch_8
        0x4 -> :sswitch_7
        0x5 -> :sswitch_6
        0x6 -> :sswitch_5
        0x7 -> :sswitch_4
        0x8 -> :sswitch_3
        0xa -> :sswitch_2
        0xc -> :sswitch_1
        0x18 -> :sswitch_0
    .end sparse-switch
.end method

.method public static getAudioUsageForStreamType(I)I
    .locals 1
    .param p0, "streamType"    # I

    .line 2371
    packed-switch p0, :pswitch_data_0

    .line 2386
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 2375
    :pswitch_1
    const/4 v0, 0x3

    return v0

    .line 2377
    :pswitch_2
    const/4 v0, 0x5

    return v0

    .line 2373
    :pswitch_3
    const/4 v0, 0x4

    return v0

    .line 2379
    :pswitch_4
    const/4 v0, 0x6

    return v0

    .line 2381
    :pswitch_5
    const/16 v0, 0xd

    return v0

    .line 2383
    :pswitch_6
    const/4 v0, 0x2

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getAuxiliaryTrackTypeString(I)Ljava/lang/String;
    .locals 2
    .param p0, "auxiliaryTrackType"    # I

    .line 3337
    packed-switch p0, :pswitch_data_0

    .line 3349
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unsupported auxiliary track type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3347
    :pswitch_0
    const-string v0, "depth metadata"

    return-object v0

    .line 3345
    :pswitch_1
    const-string v0, "depth-inverse"

    return-object v0

    .line 3343
    :pswitch_2
    const-string v0, "depth-linear"

    return-object v0

    .line 3341
    :pswitch_3
    const-string/jumbo v0, "original"

    return-object v0

    .line 3339
    :pswitch_4
    const-string/jumbo v0, "undefined"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getAvailableCommands(Landroidx/media3/common/Player;Landroidx/media3/common/Player$Commands;)Landroidx/media3/common/Player$Commands;
    .locals 12
    .param p0, "player"    # Landroidx/media3/common/Player;
    .param p1, "permanentAvailableCommands"    # Landroidx/media3/common/Player$Commands;

    .line 3500
    invoke-interface {p0}, Landroidx/media3/common/Player;->isPlayingAd()Z

    move-result v0

    .line 3501
    .local v0, "isPlayingAd":Z
    invoke-interface {p0}, Landroidx/media3/common/Player;->isCurrentMediaItemSeekable()Z

    move-result v1

    .line 3502
    .local v1, "isCurrentMediaItemSeekable":Z
    invoke-interface {p0}, Landroidx/media3/common/Player;->hasPreviousMediaItem()Z

    move-result v2

    .line 3503
    .local v2, "hasPreviousMediaItem":Z
    invoke-interface {p0}, Landroidx/media3/common/Player;->hasNextMediaItem()Z

    move-result v3

    .line 3504
    .local v3, "hasNextMediaItem":Z
    invoke-interface {p0}, Landroidx/media3/common/Player;->isCurrentMediaItemLive()Z

    move-result v4

    .line 3505
    .local v4, "isCurrentMediaItemLive":Z
    invoke-interface {p0}, Landroidx/media3/common/Player;->isCurrentMediaItemDynamic()Z

    move-result v5

    .line 3506
    .local v5, "isCurrentMediaItemDynamic":Z
    invoke-interface {p0}, Landroidx/media3/common/Player;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v6

    .line 3507
    .local v6, "isTimelineEmpty":Z
    new-instance v7, Landroidx/media3/common/Player$Commands$Builder;

    invoke-direct {v7}, Landroidx/media3/common/Player$Commands$Builder;-><init>()V

    .line 3508
    invoke-virtual {v7, p1}, Landroidx/media3/common/Player$Commands$Builder;->addAll(Landroidx/media3/common/Player$Commands;)Landroidx/media3/common/Player$Commands$Builder;

    move-result-object v7

    .line 3509
    xor-int/lit8 v8, v0, 0x1

    const/4 v9, 0x4

    invoke-virtual {v7, v9, v8}, Landroidx/media3/common/Player$Commands$Builder;->addIf(IZ)Landroidx/media3/common/Player$Commands$Builder;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    move v10, v9

    goto :goto_0

    :cond_0
    move v10, v8

    .line 3510
    :goto_0
    const/4 v11, 0x5

    invoke-virtual {v7, v11, v10}, Landroidx/media3/common/Player$Commands$Builder;->addIf(IZ)Landroidx/media3/common/Player$Commands$Builder;

    move-result-object v7

    if-eqz v2, :cond_1

    if-nez v0, :cond_1

    move v10, v9

    goto :goto_1

    :cond_1
    move v10, v8

    .line 3511
    :goto_1
    const/4 v11, 0x6

    invoke-virtual {v7, v11, v10}, Landroidx/media3/common/Player$Commands$Builder;->addIf(IZ)Landroidx/media3/common/Player$Commands$Builder;

    move-result-object v7

    if-nez v6, :cond_3

    if-nez v2, :cond_2

    if-eqz v4, :cond_2

    if-eqz v1, :cond_3

    :cond_2
    if-nez v0, :cond_3

    move v10, v9

    goto :goto_2

    :cond_3
    move v10, v8

    .line 3512
    :goto_2
    const/4 v11, 0x7

    invoke-virtual {v7, v11, v10}, Landroidx/media3/common/Player$Commands$Builder;->addIf(IZ)Landroidx/media3/common/Player$Commands$Builder;

    move-result-object v7

    if-eqz v3, :cond_4

    if-nez v0, :cond_4

    move v10, v9

    goto :goto_3

    :cond_4
    move v10, v8

    .line 3517
    :goto_3
    const/16 v11, 0x8

    invoke-virtual {v7, v11, v10}, Landroidx/media3/common/Player$Commands$Builder;->addIf(IZ)Landroidx/media3/common/Player$Commands$Builder;

    move-result-object v7

    if-nez v6, :cond_6

    if-nez v3, :cond_5

    if-eqz v4, :cond_6

    if-eqz v5, :cond_6

    :cond_5
    if-nez v0, :cond_6

    move v10, v9

    goto :goto_4

    :cond_6
    move v10, v8

    .line 3518
    :goto_4
    const/16 v11, 0x9

    invoke-virtual {v7, v11, v10}, Landroidx/media3/common/Player$Commands$Builder;->addIf(IZ)Landroidx/media3/common/Player$Commands$Builder;

    move-result-object v7

    .line 3523
    xor-int/lit8 v10, v0, 0x1

    const/16 v11, 0xa

    invoke-virtual {v7, v11, v10}, Landroidx/media3/common/Player$Commands$Builder;->addIf(IZ)Landroidx/media3/common/Player$Commands$Builder;

    move-result-object v7

    if-eqz v1, :cond_7

    if-nez v0, :cond_7

    move v10, v9

    goto :goto_5

    :cond_7
    move v10, v8

    .line 3524
    :goto_5
    const/16 v11, 0xb

    invoke-virtual {v7, v11, v10}, Landroidx/media3/common/Player$Commands$Builder;->addIf(IZ)Landroidx/media3/common/Player$Commands$Builder;

    move-result-object v7

    if-eqz v1, :cond_8

    if-nez v0, :cond_8

    move v8, v9

    .line 3525
    :cond_8
    const/16 v9, 0xc

    invoke-virtual {v7, v9, v8}, Landroidx/media3/common/Player$Commands$Builder;->addIf(IZ)Landroidx/media3/common/Player$Commands$Builder;

    move-result-object v7

    .line 3526
    invoke-virtual {v7}, Landroidx/media3/common/Player$Commands$Builder;->build()Landroidx/media3/common/Player$Commands;

    move-result-object v7

    .line 3507
    return-object v7
.end method

.method public static getBigEndianInt(Ljava/nio/ByteBuffer;I)I
    .locals 3
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "index"    # I

    .line 2958
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    .line 2959
    .local v0, "value":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v1, v2, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v1

    :goto_0
    return v1
.end method

.method public static getByteDepth(I)I
    .locals 1
    .param p0, "pcmEncoding"    # I

    .line 2348
    sparse-switch p0, :sswitch_data_0

    .line 2364
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 2356
    :sswitch_0
    const/4 v0, 0x3

    return v0

    .line 2360
    :sswitch_1
    const/4 v0, 0x4

    return v0

    .line 2350
    :sswitch_2
    const/4 v0, 0x1

    return v0

    .line 2353
    :sswitch_3
    const/4 v0, 0x2

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_3
        0x3 -> :sswitch_2
        0x4 -> :sswitch_1
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x10000000 -> :sswitch_3
        0x50000000 -> :sswitch_0
        0x60000000 -> :sswitch_1
    .end sparse-switch
.end method

.method public static getBytesFromHexString(Ljava/lang/String;)[B
    .locals 6
    .param p0, "hexString"    # Ljava/lang/String;

    .line 2025
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    .line 2026
    .local v0, "data":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 2027
    mul-int/lit8 v2, v1, 0x2

    .line 2028
    .local v2, "stringOffset":I
    nop

    .line 2030
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    shl-int/lit8 v3, v3, 0x4

    add-int/lit8 v5, v2, 0x1

    .line 2031
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5, v4}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    add-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 2026
    .end local v2    # "stringOffset":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2033
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public static getCodecCountOfType(Ljava/lang/String;I)I
    .locals 6
    .param p0, "codecs"    # Ljava/lang/String;
    .param p1, "trackType"    # I

    .line 2082
    invoke-static {p0}, Landroidx/media3/common/util/Util;->splitCodecs(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2083
    .local v0, "codecArray":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 2084
    .local v1, "count":I
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 2085
    .local v4, "codec":Ljava/lang/String;
    invoke-static {v4}, Landroidx/media3/common/MimeTypes;->getTrackTypeOfCodec(Ljava/lang/String;)I

    move-result v5

    if-ne p1, v5, :cond_0

    .line 2086
    add-int/lit8 v1, v1, 0x1

    .line 2084
    .end local v4    # "codec":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2089
    :cond_1
    return v1
.end method

.method public static getCodecsOfType(Ljava/lang/String;I)Ljava/lang/String;
    .locals 7
    .param p0, "codecs"    # Ljava/lang/String;
    .param p1, "trackType"    # I

    .line 2104
    invoke-static {p0}, Landroidx/media3/common/util/Util;->splitCodecs(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2105
    .local v0, "codecArray":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 2106
    return-object v2

    .line 2108
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2109
    .local v1, "builder":Ljava/lang/StringBuilder;
    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v0, v4

    .line 2110
    .local v5, "codec":Ljava/lang/String;
    invoke-static {v5}, Landroidx/media3/common/MimeTypes;->getTrackTypeOfCodec(Ljava/lang/String;)I

    move-result v6

    if-ne p1, v6, :cond_2

    .line 2111
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_1

    .line 2112
    const-string v6, ","

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2114
    :cond_1
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2109
    .end local v5    # "codec":Ljava/lang/String;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2117
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_4

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_4
    return-object v2
.end method

.method public static getCountryCode(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 2982
    if-eqz p0, :cond_0

    .line 2984
    nop

    .line 2985
    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 2986
    .local v0, "telephonyManager":Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_0

    .line 2987
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v1

    .line 2988
    .local v1, "countryCode":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2989
    invoke-static {v1}, Lcom/google/common/base/Ascii;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 2993
    .end local v0    # "telephonyManager":Landroid/telephony/TelephonyManager;
    .end local v1    # "countryCode":Ljava/lang/String;
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Ascii;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrentDisplayModeSize(Landroid/content/Context;)Landroid/graphics/Point;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 3116
    const/4 v0, 0x0

    .line 3118
    .local v0, "defaultDisplay":Landroid/view/Display;
    nop

    .line 3119
    const-string v1, "display"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    .line 3121
    .local v1, "displayManager":Landroid/hardware/display/DisplayManager;
    if-eqz v1, :cond_0

    .line 3122
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    .line 3124
    :cond_0
    if-nez v0, :cond_1

    .line 3125
    nop

    .line 3126
    const-string/jumbo v2, "window"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-static {v2}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 3127
    .local v2, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 3129
    .end local v2    # "windowManager":Landroid/view/WindowManager;
    :cond_1
    invoke-static {p0, v0}, Landroidx/media3/common/util/Util;->getCurrentDisplayModeSize(Landroid/content/Context;Landroid/view/Display;)Landroid/graphics/Point;

    move-result-object v2

    return-object v2
.end method

.method public static getCurrentDisplayModeSize(Landroid/content/Context;Landroid/view/Display;)Landroid/graphics/Point;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "display"    # Landroid/view/Display;

    .line 3147
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p0}, Landroidx/media3/common/util/Util;->isTv(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3163
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_0

    .line 3164
    const-string/jumbo v0, "sys.display-size"

    invoke-static {v0}, Landroidx/media3/common/util/Util;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3165
    :cond_0
    const-string/jumbo v0, "vendor.display-size"

    invoke-static {v0}, Landroidx/media3/common/util/Util;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    nop

    .line 3167
    .local v0, "displaySize":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 3169
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "x"

    invoke-static {v1, v2}, Landroidx/media3/common/util/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 3170
    .local v1, "displaySizeParts":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 3171
    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 3172
    .local v2, "width":I
    const/4 v3, 0x1

    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 3173
    .local v3, "height":I
    if-lez v2, :cond_1

    if-lez v3, :cond_1

    .line 3174
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4, v2, v3}, Landroid/graphics/Point;-><init>(II)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 3179
    .end local v1    # "displaySizeParts":[Ljava/lang/String;
    .end local v2    # "width":I
    .end local v3    # "height":I
    :cond_1
    goto :goto_1

    .line 3177
    :catch_0
    move-exception v1

    .line 3180
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid display size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Util"

    invoke-static {v2, v1}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3184
    :cond_2
    const-string v1, "Sony"

    sget-object v2, Landroidx/media3/common/util/Util;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Landroidx/media3/common/util/Util;->MODEL:Ljava/lang/String;

    .line 3185
    const-string v2, "BRAVIA"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3186
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.sony.dtv.hardware.panel.qfhd"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3187
    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0xf00

    const/16 v3, 0x870

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    return-object v1

    .line 3191
    .end local v0    # "displaySize":Ljava/lang/String;
    :cond_3
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 3192
    .local v0, "displaySize":Landroid/graphics/Point;
    sget v1, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_4

    .line 3193
    invoke-static {p1, v0}, Landroidx/media3/common/util/Util;->getDisplaySizeV23(Landroid/view/Display;Landroid/graphics/Point;)V

    goto :goto_2

    .line 3195
    :cond_4
    invoke-virtual {p1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 3197
    :goto_2
    return-object v0
.end method

.method public static getCurrentOrMainLooper()Landroid/os/Looper;
    .locals 2

    .line 899
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 900
    .local v0, "myLooper":Landroid/os/Looper;
    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public static getDataUriForString(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 3
    .param p0, "mimeType"    # Ljava/lang/String;
    .param p1, "data"    # Ljava/lang/String;

    .line 2805
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "data:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";base64,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2806
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2805
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultDisplayLocale()Ljava/util/Locale;
    .locals 2

    .line 3012
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    sget-object v0, Ljava/util/Locale$Category;->DISPLAY:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private static getDisplaySizeV23(Landroid/view/Display;Landroid/graphics/Point;)V
    .locals 2
    .param p0, "display"    # Landroid/view/Display;
    .param p1, "outSize"    # Landroid/graphics/Point;

    .line 3701
    invoke-virtual {p0}, Landroid/view/Display;->getMode()Landroid/view/Display$Mode;

    move-result-object v0

    .line 3702
    .local v0, "mode":Landroid/view/Display$Mode;
    invoke-virtual {v0}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v1

    iput v1, p1, Landroid/graphics/Point;->x:I

    .line 3703
    invoke-virtual {v0}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v1

    iput v1, p1, Landroid/graphics/Point;->y:I

    .line 3704
    return-void
.end method

.method public static getDrawable(Landroid/content/Context;Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "drawableRes"    # I

    .line 3556
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static getDrmUuid(Ljava/lang/String;)Ljava/util/UUID;
    .locals 2
    .param p0, "drmScheme"    # Ljava/lang/String;

    .line 2467
    invoke-static {p0}, Lcom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v1, "clearkey"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_1
    const-string/jumbo v1, "widevine"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_2
    const-string/jumbo v1, "playready"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 2476
    :try_start_0
    invoke-static {p0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 2473
    :pswitch_0
    sget-object v0, Landroidx/media3/common/C;->CLEARKEY_UUID:Ljava/util/UUID;

    return-object v0

    .line 2471
    :pswitch_1
    sget-object v0, Landroidx/media3/common/C;->PLAYREADY_UUID:Ljava/util/UUID;

    return-object v0

    .line 2469
    :pswitch_2
    sget-object v0, Landroidx/media3/common/C;->WIDEVINE_UUID:Ljava/util/UUID;

    return-object v0

    .line 2476
    :goto_2
    return-object v0

    .line 2477
    :catch_0
    move-exception v0

    .line 2478
    .local v0, "e":Ljava/lang/RuntimeException;
    const/4 v1, 0x0

    return-object v1

    :sswitch_data_0
    .sparse-switch
        -0x6ee3d111 -> :sswitch_2
        -0x537ab703 -> :sswitch_1
        0x2f1b28f2 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getErrorCodeForMediaDrmErrorCode(I)I
    .locals 1
    .param p0, "mediaDrmErrorCode"    # I

    .line 2491
    packed-switch p0, :pswitch_data_0

    .line 2515
    :pswitch_0
    const/16 v0, 0x1776

    return v0

    .line 2497
    :pswitch_1
    const/16 v0, 0x1772

    return v0

    .line 2504
    :pswitch_2
    const/16 v0, 0x1774

    return v0

    .line 2513
    :pswitch_3
    const/16 v0, 0x1773

    return v0

    .line 2510
    :pswitch_4
    const/16 v0, 0x1775

    return v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_4
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_4
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static getErrorCodeFromPlatformDiagnosticsInfo(Ljava/lang/String;)I
    .locals 6
    .param p0, "diagnosticsInfo"    # Ljava/lang/String;

    .line 3405
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 3406
    return v0

    .line 3408
    :cond_0
    const-string v1, "_"

    invoke-static {p0, v1}, Landroidx/media3/common/util/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 3409
    .local v1, "strings":[Ljava/lang/String;
    array-length v2, v1

    .line 3410
    .local v2, "length":I
    const/4 v3, 0x2

    if-ge v2, v3, :cond_1

    .line 3411
    return v0

    .line 3413
    :cond_1
    add-int/lit8 v3, v2, -0x1

    aget-object v3, v1, v3

    .line 3414
    .local v3, "digitsSection":Ljava/lang/String;
    const/4 v4, 0x3

    if-lt v2, v4, :cond_2

    add-int/lit8 v4, v2, -0x2

    aget-object v4, v1, v4

    const-string v5, "neg"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    move v4, v0

    .line 3416
    .local v4, "isNegative":Z
    :goto_0
    :try_start_0
    invoke-static {v3}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3417
    .local v0, "errorCode":I
    if-eqz v4, :cond_3

    neg-int v5, v0

    goto :goto_1

    :cond_3
    move v5, v0

    :goto_1
    return v5

    .line 3418
    .end local v0    # "errorCode":I
    :catch_0
    move-exception v5

    .line 3419
    .local v5, "e":Ljava/lang/NumberFormatException;
    return v0
.end method

.method public static getFormatSupportString(I)Ljava/lang/String;
    .locals 1
    .param p0, "formatSupport"    # I

    .line 3475
    packed-switch p0, :pswitch_data_0

    .line 3487
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 3477
    :pswitch_0
    const-string v0, "YES"

    return-object v0

    .line 3479
    :pswitch_1
    const-string v0, "NO_EXCEEDS_CAPABILITIES"

    return-object v0

    .line 3481
    :pswitch_2
    const-string v0, "NO_UNSUPPORTED_DRM"

    return-object v0

    .line 3483
    :pswitch_3
    const-string v0, "NO_UNSUPPORTED_TYPE"

    return-object v0

    .line 3485
    :pswitch_4
    const-string v0, "NO"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getIntegerCodeForString(Ljava/lang/String;)I
    .locals 4
    .param p0, "string"    # Ljava/lang/String;

    .line 1982
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 1983
    .local v0, "length":I
    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    .line 1984
    const/4 v1, 0x0

    .line 1985
    .local v1, "result":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_1

    .line 1986
    shl-int/lit8 v1, v1, 0x8

    .line 1987
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    or-int/2addr v1, v3

    .line 1985
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1989
    .end local v2    # "i":I
    :cond_1
    return v1
.end method

.method public static getLocaleLanguageTag(Ljava/util/Locale;)Ljava/lang/String;
    .locals 1
    .param p0, "locale"    # Ljava/util/Locale;

    .line 976
    invoke-virtual {p0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMaxPendingFramesCountForMediaCodecDecoders(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 3445
    invoke-static {p0}, Landroidx/media3/common/util/Util;->isFrameDropAllowedOnSurfaceInput(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3449
    const/4 v0, 0x1

    return v0

    .line 3464
    :cond_0
    const/4 v0, 0x5

    return v0
.end method

.method public static getMediaDurationForPlayoutDuration(JF)J
    .locals 4
    .param p0, "playoutDuration"    # J
    .param p2, "speed"    # F

    .line 1953
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p2, v0

    if-nez v0, :cond_0

    .line 1954
    return-wide p0

    .line 1956
    :cond_0
    long-to-double v0, p0

    float-to-double v2, p2

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getNowUnixTimeMs(J)J
    .locals 2
    .param p0, "elapsedRealtimeEpochOffsetMs"    # J

    .line 3362
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    .line 3363
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    goto :goto_0

    .line 3364
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    add-long/2addr v0, p0

    .line 3362
    :goto_0
    return-wide v0
.end method

.method public static getPcmEncoding(I)I
    .locals 1
    .param p0, "bitDepth"    # I

    .line 2168
    sparse-switch p0, :sswitch_data_0

    .line 2178
    const/4 v0, 0x0

    return v0

    .line 2176
    :sswitch_0
    const/16 v0, 0x16

    return v0

    .line 2174
    :sswitch_1
    const/16 v0, 0x15

    return v0

    .line 2172
    :sswitch_2
    const/4 v0, 0x2

    return v0

    .line 2170
    :sswitch_3
    const/4 v0, 0x3

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_3
        0x10 -> :sswitch_2
        0x18 -> :sswitch_1
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method public static getPcmFormat(III)Landroidx/media3/common/Format;
    .locals 2
    .param p0, "pcmEncoding"    # I
    .param p1, "channels"    # I
    .param p2, "sampleRate"    # I

    .line 2144
    new-instance v0, Landroidx/media3/common/Format$Builder;

    invoke-direct {v0}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 2145
    const-string v1, "audio/raw"

    invoke-virtual {v0, v1}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    .line 2146
    invoke-virtual {v0, p1}, Landroidx/media3/common/Format$Builder;->setChannelCount(I)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    .line 2147
    invoke-virtual {v0, p2}, Landroidx/media3/common/Format$Builder;->setSampleRate(I)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    .line 2148
    invoke-virtual {v0, p0}, Landroidx/media3/common/Format$Builder;->setPcmEncoding(I)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    .line 2149
    invoke-virtual {v0}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v0

    .line 2144
    return-object v0
.end method

.method public static getPcmFormat(Landroidx/media3/common/audio/AudioProcessor$AudioFormat;)Landroidx/media3/common/Format;
    .locals 3
    .param p0, "audioFormat"    # Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    .line 2155
    iget v0, p0, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->encoding:I

    iget v1, p0, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->channelCount:I

    iget v2, p0, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->sampleRate:I

    invoke-static {v0, v1, v2}, Landroidx/media3/common/util/Util;->getPcmFormat(III)Landroidx/media3/common/Format;

    move-result-object v0

    return-object v0
.end method

.method public static getPcmFrameSize(II)I
    .locals 1
    .param p0, "pcmEncoding"    # I
    .param p1, "channelCount"    # I

    .line 2337
    invoke-static {p0}, Landroidx/media3/common/util/Util;->getByteDepth(I)I

    move-result v0

    mul-int/2addr v0, p1

    return v0
.end method

.method public static getPlayoutDurationForMediaDuration(JF)J
    .locals 4
    .param p0, "mediaDuration"    # J
    .param p2, "speed"    # F

    .line 1968
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p2, v0

    if-nez v0, :cond_0

    .line 1969
    return-wide p0

    .line 1971
    :cond_0
    long-to-double v0, p0

    float-to-double v2, p2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getRoleFlagStrings(I)Ljava/util/List;
    .locals 2
    .param p0, "roleFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3280
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3282
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_0

    .line 3283
    const-string v1, "main"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3285
    :cond_0
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_1

    .line 3286
    const-string v1, "alt"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3288
    :cond_1
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_2

    .line 3289
    const-string/jumbo v1, "supplementary"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3291
    :cond_2
    and-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_3

    .line 3292
    const-string v1, "commentary"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3294
    :cond_3
    and-int/lit8 v1, p0, 0x10

    if-eqz v1, :cond_4

    .line 3295
    const-string v1, "dub"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3297
    :cond_4
    and-int/lit8 v1, p0, 0x20

    if-eqz v1, :cond_5

    .line 3298
    const-string v1, "emergency"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3300
    :cond_5
    and-int/lit8 v1, p0, 0x40

    if-eqz v1, :cond_6

    .line 3301
    const-string v1, "caption"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3303
    :cond_6
    and-int/lit16 v1, p0, 0x80

    if-eqz v1, :cond_7

    .line 3304
    const-string/jumbo v1, "subtitle"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3306
    :cond_7
    and-int/lit16 v1, p0, 0x100

    if-eqz v1, :cond_8

    .line 3307
    const-string/jumbo v1, "sign"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3309
    :cond_8
    and-int/lit16 v1, p0, 0x200

    if-eqz v1, :cond_9

    .line 3310
    const-string v1, "describes-video"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3312
    :cond_9
    and-int/lit16 v1, p0, 0x400

    if-eqz v1, :cond_a

    .line 3313
    const-string v1, "describes-music"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3315
    :cond_a
    and-int/lit16 v1, p0, 0x800

    if-eqz v1, :cond_b

    .line 3316
    const-string v1, "enhanced-intelligibility"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3318
    :cond_b
    and-int/lit16 v1, p0, 0x1000

    if-eqz v1, :cond_c

    .line 3319
    const-string/jumbo v1, "transcribes-dialog"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3321
    :cond_c
    and-int/lit16 v1, p0, 0x2000

    if-eqz v1, :cond_d

    .line 3322
    const-string v1, "easy-read"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3324
    :cond_d
    and-int/lit16 v1, p0, 0x4000

    if-eqz v1, :cond_e

    .line 3325
    const-string/jumbo v1, "trick-play"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3327
    :cond_e
    const v1, 0x8000

    and-int/2addr v1, p0

    if-eqz v1, :cond_f

    .line 3328
    const-string v1, "auxiliary"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3330
    :cond_f
    return-object v0
.end method

.method public static getSelectionFlagStrings(I)Ljava/util/List;
    .locals 2
    .param p0, "selectionFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3260
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3262
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_0

    .line 3263
    const-string v1, "auto"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3265
    :cond_0
    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_1

    .line 3266
    const-string v1, "default"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3268
    :cond_1
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_2

    .line 3269
    const-string v1, "forced"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3271
    :cond_2
    return-object v0
.end method

.method public static getStreamTypeForAudioUsage(I)I
    .locals 1
    .param p0, "usage"    # I

    .line 2416
    const/4 v0, 0x3

    packed-switch p0, :pswitch_data_0

    .line 2441
    :pswitch_0
    return v0

    .line 2422
    :pswitch_1
    const/4 v0, 0x1

    return v0

    .line 2430
    :pswitch_2
    const/4 v0, 0x2

    return v0

    .line 2436
    :pswitch_3
    const/4 v0, 0x5

    return v0

    .line 2428
    :pswitch_4
    const/4 v0, 0x4

    return v0

    .line 2426
    :pswitch_5
    const/16 v0, 0x8

    return v0

    .line 2424
    :pswitch_6
    const/4 v0, 0x0

    return v0

    .line 2420
    :pswitch_7
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_7
        :pswitch_1
        :pswitch_7
    .end packed-switch
.end method

.method public static getStringForTime(Ljava/lang/StringBuilder;Ljava/util/Formatter;J)Ljava/lang/String;
    .locals 12
    .param p0, "builder"    # Ljava/lang/StringBuilder;
    .param p1, "formatter"    # Ljava/util/Formatter;
    .param p2, "timeMs"    # J

    .line 2685
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    .line 2686
    const-wide/16 p2, 0x0

    .line 2688
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-gez v2, :cond_1

    const-string v2, "-"

    goto :goto_0

    :cond_1
    const-string v2, ""

    .line 2689
    .local v2, "prefix":Ljava/lang/String;
    :goto_0
    invoke-static {p2, p3}, Ljava/lang/Math;->abs(J)J

    move-result-wide p2

    .line 2690
    const-wide/16 v3, 0x1f4

    add-long/2addr v3, p2

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    .line 2691
    .local v3, "totalSeconds":J
    const-wide/16 v5, 0x3c

    rem-long v7, v3, v5

    .line 2692
    .local v7, "seconds":J
    div-long v9, v3, v5

    rem-long/2addr v9, v5

    .line 2693
    .local v9, "minutes":J
    const-wide/16 v5, 0xe10

    div-long v5, v3, v5

    .line 2694
    .local v5, "hours":J
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2695
    cmp-long v0, v5, v0

    if-lez v0, :cond_2

    .line 2696
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    filled-new-array {v2, v0, v1, v11}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%s%d:%02d:%02d"

    invoke-virtual {p1, v1, v0}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 2697
    :cond_2
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v2, v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%s%02d:%02d"

    invoke-virtual {p1, v1, v0}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2695
    :goto_1
    return-object v0
.end method

.method public static getSystemLanguageCodes()[Ljava/lang/String;
    .locals 3

    .line 3002
    invoke-static {}, Landroidx/media3/common/util/Util;->getSystemLocales()[Ljava/lang/String;

    move-result-object v0

    .line 3003
    .local v0, "systemLocales":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 3004
    aget-object v2, v0, v1

    invoke-static {v2}, Landroidx/media3/common/util/Util;->normalizeLanguageCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 3003
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3006
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method private static getSystemLocales()[Ljava/lang/String;
    .locals 4

    .line 3707
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 3708
    .local v0, "config":Landroid/content/res/Configuration;
    sget v1, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_0

    .line 3709
    invoke-static {v0}, Landroidx/media3/common/util/Util;->getSystemLocalesV24(Landroid/content/res/Configuration;)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 3710
    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v2}, Landroidx/media3/common/util/Util;->getLocaleLanguageTag(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 3708
    :goto_0
    return-object v1
.end method

.method private static getSystemLocalesV24(Landroid/content/res/Configuration;)[Ljava/lang/String;
    .locals 2
    .param p0, "config"    # Landroid/content/res/Configuration;

    .line 3715
    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getSystemProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "name"    # Ljava/lang/String;

    .line 3690
    :try_start_0
    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 3691
    .local v0, "systemProperties":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v1, "get"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 3692
    .local v1, "getMethod":Ljava/lang/reflect/Method;
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 3693
    .end local v0    # "systemProperties":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "getMethod":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 3694
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to read system property "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Util"

    invoke-static {v2, v1, v0}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3695
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getTrackTypeString(I)Ljava/lang/String;
    .locals 2
    .param p0, "trackType"    # I

    .line 3208
    packed-switch p0, :pswitch_data_0

    .line 3228
    const/16 v0, 0x2710

    if-lt p0, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "custom ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3222
    :pswitch_0
    const-string v0, "camera motion"

    return-object v0

    .line 3220
    :pswitch_1
    const-string v0, "metadata"

    return-object v0

    .line 3218
    :pswitch_2
    const-string v0, "image"

    return-object v0

    .line 3216
    :pswitch_3
    const-string/jumbo v0, "text"

    return-object v0

    .line 3214
    :pswitch_4
    const-string/jumbo v0, "video"

    return-object v0

    .line 3212
    :pswitch_5
    const-string v0, "audio"

    return-object v0

    .line 3210
    :pswitch_6
    const-string v0, "default"

    return-object v0

    .line 3226
    :pswitch_7
    const-string/jumbo v0, "unknown"

    return-object v0

    .line 3224
    :pswitch_8
    const-string v0, "none"

    return-object v0

    .line 3228
    :cond_0
    const-string v0, "?"

    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getUserAgent(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "applicationName"    # Ljava/lang/String;

    .line 2064
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 2065
    .local v0, "packageName":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 2066
    .local v1, "info":Landroid/content/pm/PackageInfo;
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 2069
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    .local v0, "versionName":Ljava/lang/String;
    goto :goto_0

    .line 2067
    .end local v0    # "versionName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 2068
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, "?"

    move-object v0, v1

    .line 2070
    .local v0, "versionName":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (Linux;Android "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "AndroidXMedia3/1.5.1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getUtf8Bytes(Ljava/lang/String;)[B
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    .line 1072
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    return-object v0
.end method

.method public static gzip([B)[B
    .locals 4
    .param p0, "input"    # [B

    .line 2935
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2936
    .local v0, "output":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2937
    .local v1, "os":Ljava/util/zip/GZIPOutputStream;
    :try_start_1
    invoke-virtual {v1, p0}, Ljava/util/zip/GZIPOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2938
    :try_start_2
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2942
    .end local v1    # "os":Ljava/util/zip/GZIPOutputStream;
    nop

    .line 2943
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1

    .line 2936
    .restart local v1    # "os":Ljava/util/zip/GZIPOutputStream;
    :catchall_0
    move-exception v2

    :try_start_3
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "output":Ljava/io/ByteArrayOutputStream;
    .end local p0    # "input":[B
    :goto_0
    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 2938
    .end local v1    # "os":Ljava/util/zip/GZIPOutputStream;
    .restart local v0    # "output":Ljava/io/ByteArrayOutputStream;
    .restart local p0    # "input":[B
    :catch_0
    move-exception v1

    .line 2941
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static handlePauseButtonAction(Landroidx/media3/common/Player;)Z
    .locals 2
    .param p0, "player"    # Landroidx/media3/common/Player;

    .line 3645
    if-eqz p0, :cond_0

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Landroidx/media3/common/Player;->isCommandAvailable(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3646
    invoke-interface {p0}, Landroidx/media3/common/Player;->pause()V

    .line 3647
    return v0

    .line 3649
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static handlePlayButtonAction(Landroidx/media3/common/Player;)Z
    .locals 4
    .param p0, "player"    # Landroidx/media3/common/Player;

    .line 3615
    if-nez p0, :cond_0

    .line 3616
    const/4 v0, 0x0

    return v0

    .line 3618
    :cond_0
    invoke-interface {p0}, Landroidx/media3/common/Player;->getPlaybackState()I

    move-result v0

    .line 3619
    .local v0, "state":I
    const/4 v1, 0x0

    .line 3620
    .local v1, "methodTriggered":Z
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    const/4 v3, 0x2

    invoke-interface {p0, v3}, Landroidx/media3/common/Player;->isCommandAvailable(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3621
    invoke-interface {p0}, Landroidx/media3/common/Player;->prepare()V

    .line 3622
    const/4 v1, 0x1

    goto :goto_0

    .line 3623
    :cond_1
    const/4 v3, 0x4

    if-ne v0, v3, :cond_2

    .line 3624
    invoke-interface {p0, v3}, Landroidx/media3/common/Player;->isCommandAvailable(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3625
    invoke-interface {p0}, Landroidx/media3/common/Player;->seekToDefaultPosition()V

    .line 3626
    const/4 v1, 0x1

    .line 3628
    :cond_2
    :goto_0
    invoke-interface {p0, v2}, Landroidx/media3/common/Player;->isCommandAvailable(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3629
    invoke-interface {p0}, Landroidx/media3/common/Player;->play()V

    .line 3630
    const/4 v1, 0x1

    .line 3632
    :cond_3
    return v1
.end method

.method public static handlePlayPauseButtonAction(Landroidx/media3/common/Player;)Z
    .locals 1
    .param p0, "player"    # Landroidx/media3/common/Player;

    .line 3662
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroidx/media3/common/util/Util;->handlePlayPauseButtonAction(Landroidx/media3/common/Player;Z)Z

    move-result v0

    return v0
.end method

.method public static handlePlayPauseButtonAction(Landroidx/media3/common/Player;Z)Z
    .locals 1
    .param p0, "player"    # Landroidx/media3/common/Player;
    .param p1, "playIfSuppressed"    # Z

    .line 3679
    invoke-static {p0, p1}, Landroidx/media3/common/util/Util;->shouldShowPlayButton(Landroidx/media3/common/Player;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3680
    invoke-static {p0}, Landroidx/media3/common/util/Util;->handlePlayButtonAction(Landroidx/media3/common/Player;)Z

    move-result v0

    return v0

    .line 3682
    :cond_0
    invoke-static {p0}, Landroidx/media3/common/util/Util;->handlePauseButtonAction(Landroidx/media3/common/Player;)Z

    move-result v0

    return v0
.end method

.method public static inferContentType(Landroid/net/Uri;)I
    .locals 7
    .param p0, "uri"    # Landroid/net/Uri;

    .line 2538
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 2539
    .local v0, "scheme":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string/jumbo v1, "rtsp"

    invoke-static {v1, v0}, Lcom/google/common/base/Ascii;->equalsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2540
    const/4 v1, 0x3

    return v1

    .line 2543
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    .line 2544
    .local v1, "lastPathSegment":Ljava/lang/String;
    const/4 v2, 0x4

    if-nez v1, :cond_1

    .line 2545
    return v2

    .line 2547
    :cond_1
    const/16 v3, 0x2e

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 2548
    .local v3, "lastDotIndex":I
    if-ltz v3, :cond_2

    .line 2550
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroidx/media3/common/util/Util;->inferContentTypeForExtension(Ljava/lang/String;)I

    move-result v4

    .line 2551
    .local v4, "contentType":I
    if-eq v4, v2, :cond_2

    .line 2556
    return v4

    .line 2560
    .end local v4    # "contentType":I
    :cond_2
    sget-object v4, Landroidx/media3/common/util/Util;->ISM_PATH_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 2561
    .local v4, "ismMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 2562
    const/4 v2, 0x2

    invoke-virtual {v4, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 2563
    .local v5, "extensions":Ljava/lang/String;
    if-eqz v5, :cond_4

    .line 2564
    const-string v6, "format=mpd-time-csf"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2565
    const/4 v2, 0x0

    return v2

    .line 2566
    :cond_3
    const-string v6, "format=m3u8-aapl"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 2567
    return v2

    .line 2570
    :cond_4
    const/4 v2, 0x1

    return v2

    .line 2573
    .end local v5    # "extensions":Ljava/lang/String;
    :cond_5
    return v2
.end method

.method public static inferContentType(Landroid/net/Uri;Ljava/lang/String;)I
    .locals 1
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "overrideExtension"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2526
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2527
    invoke-static {p0}, Landroidx/media3/common/util/Util;->inferContentType(Landroid/net/Uri;)I

    move-result v0

    goto :goto_0

    .line 2528
    :cond_0
    invoke-static {p1}, Landroidx/media3/common/util/Util;->inferContentTypeForExtension(Ljava/lang/String;)I

    move-result v0

    .line 2526
    :goto_0
    return v0
.end method

.method public static inferContentType(Ljava/lang/String;)I
    .locals 2
    .param p0, "fileName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2583
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file:///"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/util/Util;->inferContentType(Landroid/net/Uri;)I

    move-result v0

    return v0
.end method

.method public static inferContentTypeForExtension(Ljava/lang/String;)I
    .locals 4
    .param p0, "fileExtension"    # Ljava/lang/String;

    .line 2593
    invoke-static {p0}, Lcom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2594
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v0, "m3u8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_1

    :sswitch_1
    const-string v0, "isml"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_2
    const-string v0, "mpd"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_1

    :sswitch_3
    const-string v0, "ism"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 2603
    const/4 v0, 0x4

    return v0

    .line 2601
    :pswitch_0
    return v1

    .line 2598
    :pswitch_1
    return v2

    .line 2596
    :pswitch_2
    return v3

    :sswitch_data_0
    .sparse-switch
        0x19883 -> :sswitch_3
        0x1a721 -> :sswitch_2
        0x317849 -> :sswitch_1
        0x325a49 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static inferContentTypeForUriAndMimeType(Landroid/net/Uri;Ljava/lang/String;)I
    .locals 5
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "mimeType"    # Ljava/lang/String;

    .line 2616
    if-nez p1, :cond_0

    .line 2617
    invoke-static {p0}, Landroidx/media3/common/util/Util;->inferContentType(Landroid/net/Uri;)I

    move-result v0

    return v0

    .line 2619
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    sparse-switch v0, :sswitch_data_0

    :cond_1
    goto :goto_0

    :sswitch_0
    const-string v0, "application/x-rtsp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    :sswitch_1
    const-string v0, "application/dash+xml"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v4

    goto :goto_1

    :sswitch_2
    const-string v0, "application/vnd.ms-sstr+xml"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v3

    goto :goto_1

    :sswitch_3
    const-string v0, "application/x-mpegURL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 2629
    const/4 v0, 0x4

    return v0

    .line 2627
    :pswitch_0
    return v1

    .line 2625
    :pswitch_1
    return v2

    .line 2623
    :pswitch_2
    return v3

    .line 2621
    :pswitch_3
    return v4

    nop

    :sswitch_data_0
    .sparse-switch
        -0x3a5c4caa -> :sswitch_3
        -0x957ced0 -> :sswitch_2
        0x3d3887d -> :sswitch_1
        0x44d481f3 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static inflate(Landroidx/media3/common/util/ParsableByteArray;Landroidx/media3/common/util/ParsableByteArray;Ljava/util/zip/Inflater;)Z
    .locals 4
    .param p0, "input"    # Landroidx/media3/common/util/ParsableByteArray;
    .param p1, "output"    # Landroidx/media3/common/util/ParsableByteArray;
    .param p2, "inflater"    # Ljava/util/zip/Inflater;

    .line 3030
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    .line 3031
    return v1

    .line 3033
    :cond_0
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->capacity()I

    move-result v0

    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 3034
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {p1, v0}, Landroidx/media3/common/util/ParsableByteArray;->ensureCapacity(I)V

    .line 3036
    :cond_1
    if-nez p2, :cond_2

    .line 3037
    new-instance v0, Ljava/util/zip/Inflater;

    invoke-direct {v0}, Ljava/util/zip/Inflater;-><init>()V

    move-object p2, v0

    .line 3039
    :cond_2
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v0

    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v2

    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v3

    invoke-virtual {p2, v0, v2, v3}, Ljava/util/zip/Inflater;->setInput([BII)V

    .line 3041
    const/4 v0, 0x0

    .line 3043
    .local v0, "outputSize":I
    :cond_3
    :goto_0
    nop

    .line 3044
    :try_start_0
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v2

    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->capacity()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-virtual {p2, v2, v0, v3}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v2

    add-int/2addr v0, v2

    .line 3045
    invoke-virtual {p2}, Ljava/util/zip/Inflater;->finished()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3046
    invoke-virtual {p1, v0}, Landroidx/media3/common/util/ParsableByteArray;->setLimit(I)V
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3047
    nop

    .line 3059
    invoke-virtual {p2}, Ljava/util/zip/Inflater;->reset()V

    .line 3047
    const/4 v1, 0x1

    return v1

    .line 3049
    :cond_4
    :try_start_1
    invoke-virtual {p2}, Ljava/util/zip/Inflater;->needsDictionary()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {p2}, Ljava/util/zip/Inflater;->needsInput()Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_1

    .line 3052
    :cond_5
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->capacity()I

    move-result v2

    if-ne v0, v2, :cond_3

    .line 3053
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->capacity()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    invoke-virtual {p1, v2}, Landroidx/media3/common/util/ParsableByteArray;->ensureCapacity(I)V
    :try_end_1
    .catch Ljava/util/zip/DataFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3050
    :cond_6
    :goto_1
    nop

    .line 3059
    invoke-virtual {p2}, Ljava/util/zip/Inflater;->reset()V

    .line 3050
    return v1

    .line 3059
    .end local v0    # "outputSize":I
    :catchall_0
    move-exception v0

    invoke-virtual {p2}, Ljava/util/zip/Inflater;->reset()V

    .line 3060
    throw v0

    .line 3056
    :catch_0
    move-exception v0

    .line 3057
    .local v0, "e":Ljava/util/zip/DataFormatException;
    nop

    .line 3059
    invoke-virtual {p2}, Ljava/util/zip/Inflater;->reset()V

    .line 3057
    return v1
.end method

.method public static intToStringMaxRadix(I)Ljava/lang/String;
    .locals 1
    .param p0, "i"    # I

    .line 3566
    const/16 v0, 0x24

    invoke-static {p0, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static isAppSpecificStorageFileUri(Landroid/app/Activity;Landroid/net/Uri;)Z
    .locals 7
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "uri"    # Landroid/net/Uri;

    .line 402
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 403
    .local v1, "uriPath":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 404
    return v0

    .line 406
    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    .line 407
    .local v2, "filePath":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    .line 408
    .local v3, "internalAppDirectoryPath":Ljava/lang/String;
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 411
    .local v5, "externalAppDirectory":Ljava/io/File;
    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v5}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v4

    .line 412
    .local v4, "externalAppDirectoryPath":Ljava/lang/String;
    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    if-eqz v4, :cond_2

    .line 413
    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v6, :cond_2

    goto :goto_1

    :cond_2
    goto :goto_2

    :cond_3
    :goto_1
    const/4 v0, 0x1

    .line 412
    :goto_2
    return v0

    .line 414
    .end local v1    # "uriPath":Ljava/lang/String;
    .end local v2    # "filePath":Ljava/lang/String;
    .end local v3    # "internalAppDirectoryPath":Ljava/lang/String;
    .end local v4    # "externalAppDirectoryPath":Ljava/lang/String;
    .end local v5    # "externalAppDirectory":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 416
    .local v1, "e":Ljava/io/IOException;
    return v0
.end method

.method public static isAutomotive(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 3087
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 3088
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.type.automotive"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3087
    :goto_0
    return v0
.end method

.method public static isBitmapFactorySupportedMimeType(Ljava/lang/String;)Z
    .locals 4
    .param p0, "mimeType"    # Ljava/lang/String;

    .line 3238
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v0, "image/png"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_1

    :sswitch_1
    const-string v0, "image/bmp"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_2
    const-string v0, "image/webp"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_3
    const-string v0, "image/jpeg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :sswitch_4
    const-string v0, "image/heif"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_5
    const-string v0, "image/heic"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_6
    const-string v0, "image/avif"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 3250
    return v1

    .line 3248
    :pswitch_0
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v3, 0x22

    if-lt v0, v3, :cond_1

    move v1, v2

    :cond_1
    return v1

    .line 3246
    :pswitch_1
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v0, v3, :cond_2

    move v1, v2

    :cond_2
    return v1

    .line 3243
    :pswitch_2
    return v2

    :sswitch_data_0
    .sparse-switch
        -0x58abd7ba -> :sswitch_6
        -0x58a8e8f5 -> :sswitch_5
        -0x58a8e8f2 -> :sswitch_4
        -0x58a7d764 -> :sswitch_3
        -0x58a21830 -> :sswitch_2
        -0x3468a12f -> :sswitch_1
        -0x34686c8b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static isEncodingHighResolutionPcm(I)Z
    .locals 1
    .param p0, "encoding"    # I

    .line 2208
    const/16 v0, 0x15

    if-eq p0, v0, :cond_1

    const/high16 v0, 0x50000000

    if-eq p0, v0, :cond_1

    const/16 v0, 0x16

    if-eq p0, v0, :cond_1

    const/high16 v0, 0x60000000

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

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

.method public static isEncodingLinearPcm(I)Z
    .locals 1
    .param p0, "encoding"    # I

    .line 2190
    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/high16 v0, 0x10000000

    if-eq p0, v0, :cond_1

    const/16 v0, 0x15

    if-eq p0, v0, :cond_1

    const/high16 v0, 0x50000000

    if-eq p0, v0, :cond_1

    const/16 v0, 0x16

    if-eq p0, v0, :cond_1

    const/high16 v0, 0x60000000

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

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

.method public static isFrameDropAllowedOnSurfaceInput(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 3431
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_2

    .line 3432
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-lt v0, v1, :cond_2

    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x1e

    if-ne v0, v1, :cond_0

    sget-object v0, Landroidx/media3/common/util/Util;->MODEL:Ljava/lang/String;

    .line 3434
    const-string v1, "moto g(20)"

    invoke-static {v0, v1}, Lcom/google/common/base/Ascii;->equalsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Landroidx/media3/common/util/Util;->MODEL:Ljava/lang/String;

    .line 3435
    const-string/jumbo v1, "rmx3231"

    invoke-static {v0, v1}, Lcom/google/common/base/Ascii;->equalsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x22

    if-ne v0, v1, :cond_1

    sget-object v0, Landroidx/media3/common/util/Util;->MODEL:Ljava/lang/String;

    .line 3436
    const-string/jumbo v1, "sm-x200"

    invoke-static {v0, v1}, Lcom/google/common/base/Ascii;->equalsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 3431
    :goto_1
    return v0
.end method

.method public static isLinebreak(I)Z
    .locals 1
    .param p0, "c"    # I

    .line 1112
    const/16 v0, 0xa

    if-eq p0, v0, :cond_1

    const/16 v0, 0xd

    if-ne p0, v0, :cond_0

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

.method public static isLocalFileUri(Landroid/net/Uri;)Z
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;

    .line 468
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 469
    .local v0, "scheme":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "file"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method private static isMediaStoreExternalContentUri(Landroid/net/Uri;)Z
    .locals 4
    .param p0, "uri"    # Landroid/net/Uri;

    .line 421
    const-string v0, "content"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    const-string v0, "media"

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 424
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    .line 425
    .local v0, "pathSegments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 426
    return v1

    .line 428
    :cond_1
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 429
    .local v2, "firstPathSegment":Ljava/lang/String;
    const-string v3, "external"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 430
    const-string v3, "external_primary"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    const/4 v1, 0x1

    .line 429
    :cond_3
    return v1

    .line 422
    .end local v0    # "pathSegments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "firstPathSegment":Ljava/lang/String;
    :cond_4
    :goto_0
    return v1
.end method

.method private static isReadStoragePermissionRequestNeeded(Landroid/app/Activity;Landroid/net/Uri;)Z
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "uri"    # Landroid/net/Uri;

    .line 387
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    .line 389
    return v2

    .line 391
    :cond_0
    invoke-static {p1}, Landroidx/media3/common/util/Util;->isLocalFileUri(Landroid/net/Uri;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 392
    invoke-static {p0, p1}, Landroidx/media3/common/util/Util;->isAppSpecificStorageFileUri(Landroid/app/Activity;Landroid/net/Uri;)Z

    move-result v0

    xor-int/2addr v0, v1

    return v0

    .line 394
    :cond_1
    invoke-static {p1}, Landroidx/media3/common/util/Util;->isMediaStoreExternalContentUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 395
    return v1

    .line 397
    :cond_2
    return v2
.end method

.method public static isRunningOnEmulator()Z
    .locals 2

    .line 475
    sget-object v0, Landroidx/media3/common/util/Util;->DEVICE:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 476
    .local v0, "deviceName":Ljava/lang/String;
    const-string v1, "emulator"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 477
    const-string v1, "emu64a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 478
    const-string v1, "emu64x"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 479
    const-string v1, "generic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 476
    :goto_1
    return v1
.end method

.method private static isTrafficRestricted(Landroid/net/Uri;)Z
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;

    .line 3773
    const-string v0, "http"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3774
    invoke-static {}, Landroid/security/NetworkSecurityPolicy;->getInstance()Landroid/security/NetworkSecurityPolicy;

    move-result-object v0

    .line 3775
    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/security/NetworkSecurityPolicy;->isCleartextTrafficPermitted(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3773
    :goto_0
    return v0
.end method

.method public static isTv(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 3073
    nop

    .line 3074
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "uimode"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/UiModeManager;

    .line 3075
    .local v0, "uiModeManager":Landroid/app/UiModeManager;
    if-eqz v0, :cond_0

    .line 3076
    invoke-virtual {v0}, Landroid/app/UiModeManager;->getCurrentModeType()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 3075
    :goto_0
    return v1
.end method

.method public static isWear(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 3099
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.type.watch"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$newSingleThreadExecutor$3(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 1
    .param p0, "threadName"    # Ljava/lang/String;
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 911
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic lambda$newSingleThreadScheduledExecutor$4(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 1
    .param p0, "threadName"    # Ljava/lang/String;
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 922
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic lambda$postOrRunWithCompletion$0(Lcom/google/common/util/concurrent/SettableFuture;Ljava/lang/Runnable;Ljava/lang/Object;)V
    .locals 1
    .param p0, "outputFuture"    # Lcom/google/common/util/concurrent/SettableFuture;
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .param p2, "successValue"    # Ljava/lang/Object;

    .line 825
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/SettableFuture;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 826
    return-void

    .line 828
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 829
    invoke-virtual {p0, p2}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 832
    goto :goto_0

    .line 830
    :catchall_0
    move-exception v0

    .line 831
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    .line 833
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method static synthetic lambda$transformFutureAsync$1(Lcom/google/common/util/concurrent/SettableFuture;Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 1
    .param p0, "outputFuture"    # Lcom/google/common/util/concurrent/SettableFuture;
    .param p1, "future"    # Lcom/google/common/util/concurrent/ListenableFuture;

    .line 862
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/SettableFuture;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 863
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/google/common/util/concurrent/ListenableFuture;->cancel(Z)Z

    .line 865
    :cond_0
    return-void
.end method

.method static synthetic lambda$transformFutureAsync$2(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/SettableFuture;Lcom/google/common/util/concurrent/AsyncFunction;)V
    .locals 3
    .param p0, "future"    # Lcom/google/common/util/concurrent/ListenableFuture;
    .param p1, "outputFuture"    # Lcom/google/common/util/concurrent/SettableFuture;
    .param p2, "transformFunction"    # Lcom/google/common/util/concurrent/AsyncFunction;

    .line 871
    :try_start_0
    invoke-static {p0}, Lcom/google/common/util/concurrent/Futures;->getDone(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 882
    .local v0, "inputFutureResult":Ljava/lang/Object;, "TU;"
    nop

    .line 884
    :try_start_1
    invoke-interface {p2, v0}, Lcom/google/common/util/concurrent/AsyncFunction;->apply(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/common/util/concurrent/SettableFuture;->setFuture(Lcom/google/common/util/concurrent/ListenableFuture;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 887
    goto :goto_0

    .line 885
    :catchall_0
    move-exception v1

    .line 886
    .local v1, "exception":Ljava/lang/Throwable;
    invoke-virtual {p1, v1}, Lcom/google/common/util/concurrent/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    .line 888
    .end local v1    # "exception":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 879
    .end local v0    # "inputFutureResult":Ljava/lang/Object;, "TU;"
    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    .line 880
    .local v0, "error":Ljava/lang/Throwable;
    :goto_1
    invoke-virtual {p1, v0}, Lcom/google/common/util/concurrent/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    .line 881
    return-void

    .line 875
    .end local v0    # "error":Ljava/lang/Throwable;
    :catch_2
    move-exception v0

    .line 876
    .local v0, "exception":Ljava/util/concurrent/ExecutionException;
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 877
    .local v1, "cause":Ljava/lang/Throwable;
    if-nez v1, :cond_0

    move-object v2, v0

    goto :goto_2

    :cond_0
    move-object v2, v1

    :goto_2
    invoke-virtual {p1, v2}, Lcom/google/common/util/concurrent/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    .line 878
    return-void

    .line 872
    .end local v0    # "exception":Ljava/util/concurrent/ExecutionException;
    .end local v1    # "cause":Ljava/lang/Throwable;
    :catch_3
    move-exception v0

    .line 873
    .local v0, "cancellationException":Ljava/util/concurrent/CancellationException;
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/google/common/util/concurrent/SettableFuture;->cancel(Z)Z

    .line 874
    return-void
.end method

.method public static linearSearch([II)I
    .locals 2
    .param p0, "array"    # [I
    .param p1, "value"    # I

    .line 1235
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 1236
    aget v1, p0, v0

    if-ne v1, p1, :cond_0

    .line 1237
    return v0

    .line 1235
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1240
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public static linearSearch([JJ)I
    .locals 3
    .param p0, "array"    # [J
    .param p1, "value"    # J

    .line 1254
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 1255
    aget-wide v1, p0, v0

    cmp-long v1, v1, p1

    if-nez v1, :cond_0

    .line 1256
    return v0

    .line 1254
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1259
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public static loadAsset(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "assetPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1031
    const/4 v0, 0x0

    .line 1033
    .local v0, "inputStream":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    move-object v0, v1

    .line 1034
    invoke-static {v0}, Lcom/google/common/io/ByteStreams;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/common/util/Util;->fromUtf8Bytes([B)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1036
    invoke-static {v0}, Landroidx/media3/common/util/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 1034
    return-object v1

    .line 1036
    :catchall_0
    move-exception v1

    invoke-static {v0}, Landroidx/media3/common/util/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 1037
    throw v1
.end method

.method public static maxValue(Landroid/util/SparseLongArray;)J
    .locals 5
    .param p0, "sparseLongArray"    # Landroid/util/SparseLongArray;

    .line 1555
    invoke-virtual {p0}, Landroid/util/SparseLongArray;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 1558
    const-wide/high16 v0, -0x8000000000000000L

    .line 1559
    .local v0, "max":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/util/SparseLongArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 1560
    invoke-virtual {p0, v2}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v3

    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 1559
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1562
    .end local v2    # "i":I
    :cond_0
    return-wide v0

    .line 1556
    .end local v0    # "max":J
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method private static maybeReplaceLegacyLanguageTags(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "languageTag"    # Ljava/lang/String;

    .line 3779
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Landroidx/media3/common/util/Util;->isoLegacyTagReplacements:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 3780
    sget-object v1, Landroidx/media3/common/util/Util;->isoLegacyTagReplacements:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3781
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroidx/media3/common/util/Util;->isoLegacyTagReplacements:[Ljava/lang/String;

    add-int/lit8 v3, v0, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroidx/media3/common/util/Util;->isoLegacyTagReplacements:[Ljava/lang/String;

    aget-object v2, v2, v0

    .line 3782
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3781
    return-object v1

    .line 3779
    :cond_0
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 3785
    .end local v0    # "i":I
    :cond_1
    return-object p0
.end method

.method public static varargs maybeRequestReadExternalStoragePermission(Landroid/app/Activity;[Landroid/net/Uri;)Z
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "uris"    # [Landroid/net/Uri;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 325
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 326
    .local v3, "uri":Landroid/net/Uri;
    invoke-static {p0, v3}, Landroidx/media3/common/util/Util;->maybeRequestReadStoragePermission(Landroid/app/Activity;Landroid/net/Uri;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 327
    const/4 v0, 0x1

    return v0

    .line 325
    .end local v3    # "uri":Landroid/net/Uri;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 330
    :cond_1
    return v1
.end method

.method public static varargs maybeRequestReadExternalStoragePermission(Landroid/app/Activity;[Landroidx/media3/common/MediaItem;)Z
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "mediaItems"    # [Landroidx/media3/common/MediaItem;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 339
    invoke-static {p0, p1}, Landroidx/media3/common/util/Util;->maybeRequestReadStoragePermission(Landroid/app/Activity;[Landroidx/media3/common/MediaItem;)Z

    move-result v0

    return v0
.end method

.method private static maybeRequestReadStoragePermission(Landroid/app/Activity;Landroid/net/Uri;)Z
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "uri"    # Landroid/net/Uri;

    .line 375
    invoke-static {p0, p1}, Landroidx/media3/common/util/Util;->isReadStoragePermissionRequestNeeded(Landroid/app/Activity;Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 376
    const/4 v0, 0x0

    return v0

    .line 378
    :cond_0
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x21

    if-ge v0, v1, :cond_1

    .line 379
    invoke-static {p0}, Landroidx/media3/common/util/Util;->requestExternalStoragePermission(Landroid/app/Activity;)Z

    move-result v0

    return v0

    .line 381
    :cond_1
    invoke-static {p0}, Landroidx/media3/common/util/Util;->requestReadMediaPermissions(Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method public static varargs maybeRequestReadStoragePermission(Landroid/app/Activity;[Landroidx/media3/common/MediaItem;)Z
    .locals 8
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "mediaItems"    # [Landroidx/media3/common/MediaItem;

    .line 353
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    .line 354
    return v2

    .line 356
    :cond_0
    array-length v0, p1

    move v1, v2

    :goto_0
    if-ge v1, v0, :cond_5

    aget-object v3, p1, v1

    .line 357
    .local v3, "mediaItem":Landroidx/media3/common/MediaItem;
    iget-object v4, v3, Landroidx/media3/common/MediaItem;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    if-nez v4, :cond_1

    .line 358
    goto :goto_2

    .line 360
    :cond_1
    iget-object v4, v3, Landroidx/media3/common/MediaItem;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    iget-object v4, v4, Landroidx/media3/common/MediaItem$LocalConfiguration;->uri:Landroid/net/Uri;

    invoke-static {p0, v4}, Landroidx/media3/common/util/Util;->maybeRequestReadStoragePermission(Landroid/app/Activity;Landroid/net/Uri;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    .line 361
    return v5

    .line 363
    :cond_2
    iget-object v4, v3, Landroidx/media3/common/MediaItem;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    iget-object v4, v4, Landroidx/media3/common/MediaItem$LocalConfiguration;->subtitleConfigurations:Lcom/google/common/collect/ImmutableList;

    .line 365
    .local v4, "subtitleConfigs":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/MediaItem$SubtitleConfiguration;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_4

    .line 366
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/media3/common/MediaItem$SubtitleConfiguration;

    iget-object v7, v7, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->uri:Landroid/net/Uri;

    invoke-static {p0, v7}, Landroidx/media3/common/util/Util;->maybeRequestReadStoragePermission(Landroid/app/Activity;Landroid/net/Uri;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 367
    return v5

    .line 365
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 356
    .end local v3    # "mediaItem":Landroidx/media3/common/MediaItem;
    .end local v4    # "subtitleConfigs":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/MediaItem$SubtitleConfiguration;>;"
    .end local v6    # "i":I
    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 371
    :cond_5
    return v2
.end method

.method public static minValue(Landroid/util/SparseLongArray;)J
    .locals 5
    .param p0, "sparseLongArray"    # Landroid/util/SparseLongArray;

    .line 1536
    invoke-virtual {p0}, Landroid/util/SparseLongArray;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 1539
    const-wide v0, 0x7fffffffffffffffL

    .line 1540
    .local v0, "min":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/util/SparseLongArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 1541
    invoke-virtual {p0, v2}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v3

    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 1540
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1543
    .end local v2    # "i":I
    :cond_0
    return-wide v0

    .line 1537
    .end local v0    # "min":J
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public static moveItems(Ljava/util/List;III)V
    .locals 4
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "newFromIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;III)V"
        }
    .end annotation

    .line 3378
    .local p0, "items":Ljava/util/List;, "Ljava/util/List<TT;>;"
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 3379
    .local v0, "removedItems":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TT;>;"
    sub-int v1, p2, p1

    .line 3380
    .local v1, "removedItemsLength":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_0

    .line 3381
    add-int v3, p1, v2

    invoke-interface {p0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 3380
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 3383
    .end local v2    # "i":I
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {p3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-interface {p0, v2, v0}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 3384
    return-void
.end method

.method public static msToUs(J)J
    .locals 2
    .param p0, "timeMs"    # J

    .line 1586
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p0, v0

    if-eqz v0, :cond_1

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x3e8

    mul-long/2addr v0, p0

    goto :goto_1

    :cond_1
    :goto_0
    move-wide v0, p0

    :goto_1
    return-wide v0
.end method

.method public static newSingleThreadExecutor(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;
    .locals 1
    .param p0, "threadName"    # Ljava/lang/String;

    .line 911
    new-instance v0, Landroidx/media3/common/util/Util$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Landroidx/media3/common/util/Util$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public static newSingleThreadScheduledExecutor(Ljava/lang/String;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1
    .param p0, "threadName"    # Ljava/lang/String;

    .line 922
    new-instance v0, Landroidx/media3/common/util/Util$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Landroidx/media3/common/util/Util$$ExternalSyntheticLambda4;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public static normalizeLanguageCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "language"    # Ljava/lang/String;

    .line 989
    if-nez p0, :cond_0

    .line 990
    const/4 v0, 0x0

    return-object v0

    .line 994
    :cond_0
    const/16 v0, 0x5f

    const/16 v1, 0x2d

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 995
    .local v0, "normalizedTag":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "und"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 997
    :cond_1
    move-object v0, p0

    .line 999
    :cond_2
    invoke-static {v0}, Lcom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1000
    const-string v1, "-"

    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->splitAtFirst(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 1001
    .local v1, "mainLanguage":Ljava/lang/String;
    sget-object v2, Landroidx/media3/common/util/Util;->languageTagReplacementMap:Ljava/util/HashMap;

    if-nez v2, :cond_3

    .line 1002
    invoke-static {}, Landroidx/media3/common/util/Util;->createIsoLanguageReplacementMap()Ljava/util/HashMap;

    move-result-object v2

    sput-object v2, Landroidx/media3/common/util/Util;->languageTagReplacementMap:Ljava/util/HashMap;

    .line 1004
    :cond_3
    sget-object v2, Landroidx/media3/common/util/Util;->languageTagReplacementMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1005
    .local v2, "replacedLanguage":Ljava/lang/String;
    if-eqz v2, :cond_4

    .line 1006
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1007
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1008
    move-object v1, v2

    .line 1010
    :cond_4
    const-string v3, "no"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "i"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string/jumbo v3, "zh"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1011
    :cond_5
    invoke-static {v0}, Landroidx/media3/common/util/Util;->maybeReplaceLegacyLanguageTags(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1013
    :cond_6
    return-object v0
.end method

.method public static nullSafeArrayAppend([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)[TT;"
        }
    .end annotation

    .line 663
    .local p0, "original":[Ljava/lang/Object;, "[TT;"
    .local p1, "newElement":Ljava/lang/Object;, "TT;"
    array-length v0, p0

    add-int/lit8 v0, v0, 0x1

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    .line 664
    .local v0, "result":[Ljava/lang/Object;, "[TT;"
    array-length v1, p0

    aput-object p1, v0, v1

    .line 665
    invoke-static {v0}, Landroidx/media3/common/util/Util;->castNonNullTypeArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static nullSafeArrayConcatenation([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[TT;)[TT;"
        }
    .end annotation

    .line 678
    .local p0, "first":[Ljava/lang/Object;, "[TT;"
    .local p1, "second":[Ljava/lang/Object;, "[TT;"
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    .line 679
    .local v0, "concatenation":[Ljava/lang/Object;, "[TT;"
    array-length v1, p0

    array-length v2, p1

    const/4 v3, 0x0

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 685
    return-object v0
.end method

.method public static nullSafeArrayCopy([Ljava/lang/Object;I)[Ljava/lang/Object;
    .locals 1
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I)[TT;"
        }
    .end annotation

    .line 634
    .local p0, "input":[Ljava/lang/Object;, "[TT;"
    array-length v0, p0

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    .line 635
    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static nullSafeArrayCopyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;
    .locals 3
    .param p1, "from"    # I
    .param p2, "to"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II)[TT;"
        }
    .end annotation

    .line 649
    .local p0, "input":[Ljava/lang/Object;, "[TT;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-static {v2}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    .line 650
    array-length v2, p0

    if-gt p2, v2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    .line 651
    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static nullSafeListToArray(Ljava/util/List;[Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;[TT;)V"
        }
    .end annotation

    .line 700
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    array-length v1, p1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 701
    invoke-interface {p0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 702
    return-void
.end method

.method public static parseXsDateTime(Ljava/lang/String;)J
    .locals 11
    .param p0, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 1668
    sget-object v0, Landroidx/media3/common/util/Util;->XS_DATE_TIME_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1669
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1675
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1677
    const/4 v1, 0x0

    .local v1, "timezoneShift":I
    goto :goto_0

    .line 1678
    .end local v1    # "timezoneShift":I
    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Z"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1679
    const/4 v1, 0x0

    .restart local v1    # "timezoneShift":I
    goto :goto_0

    .line 1681
    .end local v1    # "timezoneShift":I
    :cond_1
    nop

    .line 1682
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x3c

    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v1, v2

    .line 1683
    .restart local v1    # "timezoneShift":I
    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1684
    mul-int/lit8 v1, v1, -0x1

    .line 1688
    :cond_2
    :goto_0
    new-instance v2, Ljava/util/GregorianCalendar;

    const-string v3, "GMT"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 1690
    .local v2, "dateTime":Ljava/util/Calendar;
    invoke-virtual {v2}, Ljava/util/Calendar;->clear()V

    .line 1692
    nop

    .line 1693
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 1694
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v6, v4, -0x1

    .line 1695
    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 1696
    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 1697
    const/4 v4, 0x5

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 1698
    const/4 v4, 0x6

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 1692
    move-object v4, v2

    invoke-virtual/range {v4 .. v10}, Ljava/util/Calendar;->set(IIIIII)V

    .line 1699
    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1700
    new-instance v5, Ljava/math/BigDecimal;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "0."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    move-object v4, v5

    .line 1702
    .local v4, "bd":Ljava/math/BigDecimal;
    invoke-virtual {v4, v3}, Ljava/math/BigDecimal;->movePointRight(I)Ljava/math/BigDecimal;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigDecimal;->intValue()I

    move-result v3

    const/16 v5, 0xe

    invoke-virtual {v2, v5, v3}, Ljava/util/Calendar;->set(II)V

    .line 1705
    .end local v4    # "bd":Ljava/math/BigDecimal;
    :cond_3
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    .line 1706
    .local v3, "time":J
    if-eqz v1, :cond_4

    .line 1707
    int-to-long v5, v1

    const-wide/32 v7, 0xea60

    mul-long/2addr v5, v7

    sub-long/2addr v3, v5

    .line 1710
    :cond_4
    return-wide v3

    .line 1670
    .end local v1    # "timezoneShift":I
    .end local v2    # "dateTime":Ljava/util/Calendar;
    .end local v3    # "time":J
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid date/time format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v1

    throw v1
.end method

.method public static parseXsDuration(Ljava/lang/String;)J
    .locals 19
    .param p0, "value"    # Ljava/lang/String;

    .line 1631
    sget-object v0, Landroidx/media3/common/util/Util;->XS_DURATION_PATTERN:Ljava/util/regex/Pattern;

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1632
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    const-wide v3, 0x408f400000000000L    # 1000.0

    const-wide v5, 0x40ac200000000000L    # 3600.0

    if-eqz v2, :cond_7

    .line 1633
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    xor-int/2addr v2, v7

    .line 1636
    .local v2, "negated":Z
    const/4 v7, 0x3

    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    .line 1637
    .local v7, "years":Ljava/lang/String;
    const-wide/16 v8, 0x0

    if-eqz v7, :cond_0

    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    const-wide v12, 0x417e1852c0000000L    # 3.1556908E7

    mul-double/2addr v10, v12

    goto :goto_0

    :cond_0
    move-wide v10, v8

    .line 1638
    .local v10, "durationSeconds":D
    :goto_0
    const/4 v12, 0x5

    invoke-virtual {v0, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v12

    .line 1639
    .local v12, "months":Ljava/lang/String;
    if-eqz v12, :cond_1

    invoke-static {v12}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v13

    const-wide v15, 0x4144103580000000L    # 2629739.0

    mul-double/2addr v13, v15

    goto :goto_1

    :cond_1
    move-wide v13, v8

    :goto_1
    add-double/2addr v10, v13

    .line 1640
    const/4 v13, 0x7

    invoke-virtual {v0, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v13

    .line 1641
    .local v13, "days":Ljava/lang/String;
    if-eqz v13, :cond_2

    invoke-static {v13}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v14

    const-wide v16, 0x40f5180000000000L    # 86400.0

    mul-double v14, v14, v16

    goto :goto_2

    :cond_2
    move-wide v14, v8

    :goto_2
    add-double/2addr v10, v14

    .line 1642
    const/16 v14, 0xa

    invoke-virtual {v0, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v14

    .line 1643
    .local v14, "hours":Ljava/lang/String;
    if-eqz v14, :cond_3

    invoke-static {v14}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v15

    mul-double/2addr v15, v5

    goto :goto_3

    :cond_3
    move-wide v15, v8

    :goto_3
    add-double/2addr v10, v15

    .line 1644
    const/16 v5, 0xc

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 1645
    .local v5, "minutes":Ljava/lang/String;
    if-eqz v5, :cond_4

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v15

    const-wide/high16 v17, 0x404e000000000000L    # 60.0

    mul-double v15, v15, v17

    goto :goto_4

    :cond_4
    move-wide v15, v8

    :goto_4
    add-double/2addr v10, v15

    .line 1646
    const/16 v6, 0xe

    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    .line 1647
    .local v6, "seconds":Ljava/lang/String;
    if-eqz v6, :cond_5

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    :cond_5
    add-double/2addr v10, v8

    .line 1648
    mul-double/2addr v3, v10

    double-to-long v3, v3

    .line 1649
    .local v3, "durationMillis":J
    if-eqz v2, :cond_6

    neg-long v8, v3

    goto :goto_5

    :cond_6
    move-wide v8, v3

    :goto_5
    return-wide v8

    .line 1651
    .end local v2    # "negated":Z
    .end local v3    # "durationMillis":J
    .end local v5    # "minutes":Ljava/lang/String;
    .end local v6    # "seconds":Ljava/lang/String;
    .end local v7    # "years":Ljava/lang/String;
    .end local v10    # "durationSeconds":D
    .end local v12    # "months":Ljava/lang/String;
    .end local v13    # "days":Ljava/lang/String;
    .end local v14    # "hours":Ljava/lang/String;
    :cond_7
    invoke-static/range {p0 .. p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    mul-double/2addr v7, v5

    mul-double/2addr v7, v3

    double-to-long v2, v7

    return-wide v2
.end method

.method public static postOrRun(Landroid/os/Handler;Ljava/lang/Runnable;)Z
    .locals 3
    .param p0, "handler"    # Landroid/os/Handler;
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 793
    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 794
    .local v0, "looper":Landroid/os/Looper;
    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-nez v1, :cond_0

    .line 795
    const/4 v1, 0x0

    return v1

    .line 797
    :cond_0
    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_1

    .line 798
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 799
    const/4 v1, 0x1

    return v1

    .line 801
    :cond_1
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v1

    return v1
.end method

.method public static postOrRunWithCompletion(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .param p0, "handler"    # Landroid/os/Handler;
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/Handler;",
            "Ljava/lang/Runnable;",
            "TT;)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "TT;>;"
        }
    .end annotation

    .line 820
    .local p2, "successValue":Ljava/lang/Object;, "TT;"
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    .line 821
    .local v0, "outputFuture":Lcom/google/common/util/concurrent/SettableFuture;, "Lcom/google/common/util/concurrent/SettableFuture<TT;>;"
    new-instance v1, Landroidx/media3/common/util/Util$$ExternalSyntheticLambda3;

    invoke-direct {v1, v0, p1, p2}, Landroidx/media3/common/util/Util$$ExternalSyntheticLambda3;-><init>(Lcom/google/common/util/concurrent/SettableFuture;Ljava/lang/Runnable;Ljava/lang/Object;)V

    invoke-static {p0, v1}, Landroidx/media3/common/util/Util;->postOrRun(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    .line 834
    return-object v0
.end method

.method public static readBoolean(Landroid/os/Parcel;)Z
    .locals 1
    .param p0, "parcel"    # Landroid/os/Parcel;

    .line 951
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static recursiveDelete(Ljava/io/File;)V
    .locals 4
    .param p0, "fileOrDirectory"    # Ljava/io/File;

    .line 2826
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 2827
    .local v0, "directoryFiles":[Ljava/io/File;
    if-eqz v0, :cond_0

    .line 2828
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 2829
    .local v3, "child":Ljava/io/File;
    invoke-static {v3}, Landroidx/media3/common/util/Util;->recursiveDelete(Ljava/io/File;)V

    .line 2828
    .end local v3    # "child":Ljava/io/File;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2832
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 2833
    return-void
.end method

.method public static registerReceiverNotExported(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p2, "filter"    # Landroid/content/IntentFilter;

    .line 265
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x21

    if-ge v0, v1, :cond_0

    .line 266
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    return-object v0

    .line 268
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static removeRange(Ljava/util/List;II)V
    .locals 1
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;II)V"
        }
    .end annotation

    .line 595
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    if-ltz p1, :cond_1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-gt p2, v0, :cond_1

    if-gt p1, p2, :cond_1

    .line 597
    if-eq p1, p2, :cond_0

    .line 599
    invoke-interface {p0, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 601
    :cond_0
    return-void

    .line 596
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method private static requestExternalStoragePermission(Landroid/app/Activity;)Z
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;

    .line 3744
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3746
    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    aput-object v0, v3, v2

    invoke-virtual {p0, v3, v2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    .line 3748
    return v1

    .line 3750
    :cond_0
    return v2
.end method

.method private static requestReadMediaPermissions(Landroid/app/Activity;)Z
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;

    .line 3755
    const-string v0, "android.permission.READ_MEDIA_AUDIO"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    const-string v2, "android.permission.READ_MEDIA_VIDEO"

    const-string v3, "android.permission.READ_MEDIA_IMAGES"

    const/4 v4, 0x0

    if-nez v1, :cond_1

    .line 3757
    invoke-virtual {p0, v2}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 3759
    invoke-virtual {p0, v3}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3768
    :cond_0
    return v4

    .line 3761
    :cond_1
    :goto_0
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    aput-object v0, v1, v4

    const/4 v0, 0x1

    aput-object v3, v1, v0

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-virtual {p0, v1, v4}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    .line 3766
    return v0
.end method

.method public static sampleCountToDurationUs(JI)J
    .locals 7
    .param p0, "sampleCount"    # J
    .param p2, "sampleRate"    # I

    .line 1603
    int-to-long v4, p2

    sget-object v6, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    const-wide/32 v2, 0xf4240

    move-wide v0, p0

    invoke-static/range {v0 .. v6}, Landroidx/media3/common/util/Util;->scaleLargeValue(JJJLjava/math/RoundingMode;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static scaleLargeTimestamp(JJJ)J
    .locals 7
    .param p0, "timestamp"    # J
    .param p2, "multiplier"    # J
    .param p4, "divisor"    # J

    .line 1916
    sget-object v6, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    move-wide v0, p0

    move-wide v2, p2

    move-wide v4, p4

    invoke-static/range {v0 .. v6}, Landroidx/media3/common/util/Util;->scaleLargeValue(JJJLjava/math/RoundingMode;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static scaleLargeTimestamps(Ljava/util/List;JJ)[J
    .locals 6
    .param p1, "multiplier"    # J
    .param p3, "divisor"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;JJ)[J"
        }
    .end annotation

    .line 1929
    .local p0, "timestamps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    sget-object v5, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-static/range {v0 .. v5}, Landroidx/media3/common/util/Util;->scaleLargeValues(Ljava/util/List;JJLjava/math/RoundingMode;)[J

    move-result-object v0

    return-object v0
.end method

.method public static scaleLargeTimestampsInPlace([JJJ)V
    .locals 6
    .param p0, "timestamps"    # [J
    .param p1, "multiplier"    # J
    .param p3, "divisor"    # J

    .line 1941
    sget-object v5, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-static/range {v0 .. v5}, Landroidx/media3/common/util/Util;->scaleLargeValuesInPlace([JJJLjava/math/RoundingMode;)V

    .line 1942
    return-void
.end method

.method public static scaleLargeValue(JJJLjava/math/RoundingMode;)J
    .locals 4
    .param p0, "value"    # J
    .param p2, "multiplier"    # J
    .param p4, "divisor"    # J
    .param p6, "roundingMode"    # Ljava/math/RoundingMode;

    .line 1733
    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-eqz v2, :cond_5

    cmp-long v2, p2, v0

    if-nez v2, :cond_0

    goto :goto_0

    .line 1736
    :cond_0
    cmp-long v2, p4, p2

    if-ltz v2, :cond_1

    rem-long v2, p4, p2

    cmp-long v2, v2, v0

    if-nez v2, :cond_1

    .line 1737
    sget-object v0, Ljava/math/RoundingMode;->UNNECESSARY:Ljava/math/RoundingMode;

    invoke-static {p4, p5, p2, p3, v0}, Lcom/google/common/math/LongMath;->divide(JJLjava/math/RoundingMode;)J

    move-result-wide v0

    .line 1738
    .local v0, "divisionFactor":J
    invoke-static {p0, p1, v0, v1, p6}, Lcom/google/common/math/LongMath;->divide(JJLjava/math/RoundingMode;)J

    move-result-wide v2

    return-wide v2

    .line 1739
    .end local v0    # "divisionFactor":J
    :cond_1
    cmp-long v2, p4, p2

    if-gez v2, :cond_2

    rem-long v2, p2, p4

    cmp-long v2, v2, v0

    if-nez v2, :cond_2

    .line 1740
    sget-object v0, Ljava/math/RoundingMode;->UNNECESSARY:Ljava/math/RoundingMode;

    invoke-static {p2, p3, p4, p5, v0}, Lcom/google/common/math/LongMath;->divide(JJLjava/math/RoundingMode;)J

    move-result-wide v0

    .line 1741
    .local v0, "multiplicationFactor":J
    invoke-static {p0, p1, v0, v1}, Lcom/google/common/math/LongMath;->saturatedMultiply(JJ)J

    move-result-wide v2

    return-wide v2

    .line 1742
    .end local v0    # "multiplicationFactor":J
    :cond_2
    cmp-long v2, p4, p0

    if-ltz v2, :cond_3

    rem-long v2, p4, p0

    cmp-long v2, v2, v0

    if-nez v2, :cond_3

    .line 1743
    sget-object v0, Ljava/math/RoundingMode;->UNNECESSARY:Ljava/math/RoundingMode;

    invoke-static {p4, p5, p0, p1, v0}, Lcom/google/common/math/LongMath;->divide(JJLjava/math/RoundingMode;)J

    move-result-wide v0

    .line 1744
    .local v0, "divisionFactor":J
    invoke-static {p2, p3, v0, v1, p6}, Lcom/google/common/math/LongMath;->divide(JJLjava/math/RoundingMode;)J

    move-result-wide v2

    return-wide v2

    .line 1745
    .end local v0    # "divisionFactor":J
    :cond_3
    cmp-long v2, p4, p0

    if-gez v2, :cond_4

    rem-long v2, p0, p4

    cmp-long v0, v2, v0

    if-nez v0, :cond_4

    .line 1746
    sget-object v0, Ljava/math/RoundingMode;->UNNECESSARY:Ljava/math/RoundingMode;

    invoke-static {p0, p1, p4, p5, v0}, Lcom/google/common/math/LongMath;->divide(JJLjava/math/RoundingMode;)J

    move-result-wide v0

    .line 1747
    .local v0, "multiplicationFactor":J
    invoke-static {p2, p3, v0, v1}, Lcom/google/common/math/LongMath;->saturatedMultiply(JJ)J

    move-result-wide v2

    return-wide v2

    .line 1749
    .end local v0    # "multiplicationFactor":J
    :cond_4
    invoke-static/range {p0 .. p6}, Landroidx/media3/common/util/Util;->scaleLargeValueFallback(JJJLjava/math/RoundingMode;)J

    move-result-wide v0

    return-wide v0

    .line 1734
    :cond_5
    :goto_0
    return-wide v0
.end method

.method private static scaleLargeValueFallback(JJJLjava/math/RoundingMode;)J
    .locals 28
    .param p0, "value"    # J
    .param p2, "multiplier"    # J
    .param p4, "divisor"    # J
    .param p6, "roundingMode"    # Ljava/math/RoundingMode;

    .line 1863
    move-wide/from16 v0, p4

    move-object/from16 v2, p6

    invoke-static/range {p0 .. p3}, Lcom/google/common/math/LongMath;->saturatedMultiply(JJ)J

    move-result-wide v3

    .line 1864
    .local v3, "numerator":J
    const-wide v5, 0x7fffffffffffffffL

    cmp-long v7, v3, v5

    const-wide/high16 v8, -0x8000000000000000L

    if-eqz v7, :cond_0

    cmp-long v7, v3, v8

    if-eqz v7, :cond_0

    .line 1865
    invoke-static {v3, v4, v0, v1, v2}, Lcom/google/common/math/LongMath;->divide(JJLjava/math/RoundingMode;)J

    move-result-wide v5

    return-wide v5

    .line 1870
    :cond_0
    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    invoke-static/range {p4 .. p5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v12

    invoke-static {v10, v11, v12, v13}, Lcom/google/common/math/LongMath;->gcd(JJ)J

    move-result-wide v10

    .line 1871
    .local v10, "gcdOfMultiplierAndDivisor":J
    sget-object v7, Ljava/math/RoundingMode;->UNNECESSARY:Ljava/math/RoundingMode;

    .line 1872
    move-wide/from16 v12, p2

    invoke-static {v12, v13, v10, v11, v7}, Lcom/google/common/math/LongMath;->divide(JJLjava/math/RoundingMode;)J

    move-result-wide v14

    .line 1873
    .local v14, "simplifiedMultiplier":J
    sget-object v7, Ljava/math/RoundingMode;->UNNECESSARY:Ljava/math/RoundingMode;

    .line 1874
    invoke-static {v0, v1, v10, v11, v7}, Lcom/google/common/math/LongMath;->divide(JJLjava/math/RoundingMode;)J

    move-result-wide v8

    .line 1875
    .local v8, "simplifiedDivisor":J
    nop

    .line 1876
    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    invoke-static {v5, v6, v0, v1}, Lcom/google/common/math/LongMath;->gcd(JJ)J

    move-result-wide v0

    .line 1877
    .local v0, "gcdOfValueAndSimplifiedDivisor":J
    sget-object v5, Ljava/math/RoundingMode;->UNNECESSARY:Ljava/math/RoundingMode;

    .line 1878
    move-wide/from16 v6, p0

    move-wide/from16 v20, v3

    .end local v3    # "numerator":J
    .local v20, "numerator":J
    invoke-static {v6, v7, v0, v1, v5}, Lcom/google/common/math/LongMath;->divide(JJLjava/math/RoundingMode;)J

    move-result-wide v3

    .line 1879
    .local v3, "simplifiedValue":J
    sget-object v5, Ljava/math/RoundingMode;->UNNECESSARY:Ljava/math/RoundingMode;

    .line 1880
    invoke-static {v8, v9, v0, v1, v5}, Lcom/google/common/math/LongMath;->divide(JJLjava/math/RoundingMode;)J

    move-result-wide v8

    .line 1882
    move-wide/from16 v22, v0

    .end local v0    # "gcdOfValueAndSimplifiedDivisor":J
    .local v22, "gcdOfValueAndSimplifiedDivisor":J
    invoke-static {v3, v4, v14, v15}, Lcom/google/common/math/LongMath;->saturatedMultiply(JJ)J

    move-result-wide v0

    .line 1883
    .local v0, "simplifiedNumerator":J
    const-wide v18, 0x7fffffffffffffffL

    cmp-long v5, v0, v18

    if-eqz v5, :cond_1

    const-wide/high16 v16, -0x8000000000000000L

    cmp-long v5, v0, v16

    if-eqz v5, :cond_1

    .line 1884
    invoke-static {v0, v1, v8, v9, v2}, Lcom/google/common/math/LongMath;->divide(JJLjava/math/RoundingMode;)J

    move-result-wide v16

    return-wide v16

    .line 1886
    :cond_1
    move-wide/from16 v24, v0

    .end local v0    # "simplifiedNumerator":J
    .local v24, "simplifiedNumerator":J
    long-to-double v0, v14

    long-to-double v5, v8

    div-double/2addr v0, v5

    .line 1887
    .local v0, "multiplicationFactor":D
    long-to-double v5, v3

    mul-double/2addr v5, v0

    .line 1890
    .local v5, "result":D
    const-wide/high16 v26, 0x43e0000000000000L    # 9.223372036854776E18

    cmpl-double v7, v5, v26

    if-lez v7, :cond_2

    .line 1891
    const-wide v16, 0x7fffffffffffffffL

    return-wide v16

    .line 1892
    :cond_2
    const-wide/high16 v18, -0x3c20000000000000L    # -9.223372036854776E18

    cmpg-double v7, v5, v18

    if-gez v7, :cond_3

    .line 1893
    const-wide/high16 v16, -0x8000000000000000L

    return-wide v16

    .line 1895
    :cond_3
    invoke-static {v5, v6, v2}, Lcom/google/common/math/DoubleMath;->roundToLong(DLjava/math/RoundingMode;)J

    move-result-wide v16

    return-wide v16
.end method

.method public static scaleLargeValues(Ljava/util/List;JJLjava/math/RoundingMode;)[J
    .locals 19
    .param p1, "multiplier"    # J
    .param p3, "divisor"    # J
    .param p5, "roundingMode"    # Ljava/math/RoundingMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;JJ",
            "Ljava/math/RoundingMode;",
            ")[J"
        }
    .end annotation

    .line 1765
    .local p0, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    move-wide/from16 v8, p1

    move-wide/from16 v10, p3

    move-object/from16 v12, p5

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v1

    new-array v13, v1, [J

    .line 1766
    .local v13, "result":[J
    const-wide/16 v14, 0x0

    cmp-long v1, v8, v14

    if-nez v1, :cond_0

    .line 1768
    return-object v13

    .line 1770
    :cond_0
    cmp-long v1, v10, v8

    if-ltz v1, :cond_2

    rem-long v1, v10, v8

    cmp-long v1, v1, v14

    if-nez v1, :cond_2

    .line 1771
    sget-object v1, Ljava/math/RoundingMode;->UNNECESSARY:Ljava/math/RoundingMode;

    invoke-static {v10, v11, v8, v9, v1}, Lcom/google/common/math/LongMath;->divide(JJLjava/math/RoundingMode;)J

    move-result-wide v1

    .line 1772
    .local v1, "divisionFactor":J
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v13

    if-ge v3, v4, :cond_1

    .line 1773
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5, v1, v2, v12}, Lcom/google/common/math/LongMath;->divide(JJLjava/math/RoundingMode;)J

    move-result-wide v4

    aput-wide v4, v13, v3

    .line 1772
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1775
    .end local v3    # "i":I
    :cond_1
    return-object v13

    .line 1776
    .end local v1    # "divisionFactor":J
    :cond_2
    cmp-long v1, v10, v8

    if-gez v1, :cond_4

    rem-long v1, v8, v10

    cmp-long v1, v1, v14

    if-nez v1, :cond_4

    .line 1777
    sget-object v1, Ljava/math/RoundingMode;->UNNECESSARY:Ljava/math/RoundingMode;

    invoke-static {v8, v9, v10, v11, v1}, Lcom/google/common/math/LongMath;->divide(JJLjava/math/RoundingMode;)J

    move-result-wide v1

    .line 1778
    .local v1, "multiplicationFactor":J
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1
    array-length v4, v13

    if-ge v3, v4, :cond_3

    .line 1779
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5, v1, v2}, Lcom/google/common/math/LongMath;->saturatedMultiply(JJ)J

    move-result-wide v4

    aput-wide v4, v13, v3

    .line 1778
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1781
    .end local v3    # "i":I
    :cond_3
    return-object v13

    .line 1783
    .end local v1    # "multiplicationFactor":J
    :cond_4
    const/4 v1, 0x0

    move v7, v1

    .local v7, "i":I
    :goto_2
    array-length v1, v13

    if-ge v7, v1, :cond_8

    .line 1784
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 1785
    .local v5, "value":J
    cmp-long v1, v5, v14

    if-nez v1, :cond_5

    .line 1787
    move/from16 v18, v7

    goto :goto_3

    .line 1789
    :cond_5
    cmp-long v1, v10, v5

    if-ltz v1, :cond_6

    rem-long v1, v10, v5

    cmp-long v1, v1, v14

    if-nez v1, :cond_6

    .line 1790
    sget-object v1, Ljava/math/RoundingMode;->UNNECESSARY:Ljava/math/RoundingMode;

    invoke-static {v10, v11, v5, v6, v1}, Lcom/google/common/math/LongMath;->divide(JJLjava/math/RoundingMode;)J

    move-result-wide v1

    .line 1791
    .local v1, "divisionFactor":J
    invoke-static {v8, v9, v1, v2, v12}, Lcom/google/common/math/LongMath;->divide(JJLjava/math/RoundingMode;)J

    move-result-wide v3

    aput-wide v3, v13, v7

    .line 1792
    .end local v1    # "divisionFactor":J
    move/from16 v18, v7

    goto :goto_3

    :cond_6
    cmp-long v1, v10, v5

    if-gez v1, :cond_7

    rem-long v1, v5, v10

    cmp-long v1, v1, v14

    if-nez v1, :cond_7

    .line 1793
    sget-object v1, Ljava/math/RoundingMode;->UNNECESSARY:Ljava/math/RoundingMode;

    invoke-static {v5, v6, v10, v11, v1}, Lcom/google/common/math/LongMath;->divide(JJLjava/math/RoundingMode;)J

    move-result-wide v1

    .line 1794
    .local v1, "multiplicationFactor":J
    invoke-static {v8, v9, v1, v2}, Lcom/google/common/math/LongMath;->saturatedMultiply(JJ)J

    move-result-wide v3

    aput-wide v3, v13, v7

    .line 1795
    .end local v1    # "multiplicationFactor":J
    move/from16 v18, v7

    goto :goto_3

    .line 1796
    :cond_7
    move-wide v1, v5

    move-wide/from16 v3, p1

    move-wide/from16 v16, v5

    .end local v5    # "value":J
    .local v16, "value":J
    move-wide/from16 v5, p3

    move/from16 v18, v7

    .end local v7    # "i":I
    .local v18, "i":I
    move-object/from16 v7, p5

    invoke-static/range {v1 .. v7}, Landroidx/media3/common/util/Util;->scaleLargeValueFallback(JJJLjava/math/RoundingMode;)J

    move-result-wide v1

    aput-wide v1, v13, v18

    .line 1783
    .end local v16    # "value":J
    :goto_3
    add-int/lit8 v7, v18, 0x1

    .end local v18    # "i":I
    .restart local v7    # "i":I
    goto :goto_2

    .line 1799
    .end local v7    # "i":I
    :cond_8
    return-object v13
.end method

.method public static scaleLargeValuesInPlace([JJJLjava/math/RoundingMode;)V
    .locals 16
    .param p0, "values"    # [J
    .param p1, "multiplier"    # J
    .param p3, "divisor"    # J
    .param p5, "roundingMode"    # Ljava/math/RoundingMode;

    .line 1815
    move-object/from16 v0, p0

    move-wide/from16 v8, p1

    move-wide/from16 v10, p3

    move-object/from16 v12, p5

    const-wide/16 v13, 0x0

    cmp-long v1, v8, v13

    if-nez v1, :cond_0

    .line 1816
    invoke-static {v0, v13, v14}, Ljava/util/Arrays;->fill([JJ)V

    .line 1817
    return-void

    .line 1819
    :cond_0
    cmp-long v1, v10, v8

    if-ltz v1, :cond_2

    rem-long v1, v10, v8

    cmp-long v1, v1, v13

    if-nez v1, :cond_2

    .line 1820
    sget-object v1, Ljava/math/RoundingMode;->UNNECESSARY:Ljava/math/RoundingMode;

    invoke-static {v10, v11, v8, v9, v1}, Lcom/google/common/math/LongMath;->divide(JJLjava/math/RoundingMode;)J

    move-result-wide v1

    .line 1821
    .local v1, "divisionFactor":J
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_1

    .line 1822
    aget-wide v4, v0, v3

    invoke-static {v4, v5, v1, v2, v12}, Lcom/google/common/math/LongMath;->divide(JJLjava/math/RoundingMode;)J

    move-result-wide v4

    aput-wide v4, v0, v3

    .line 1821
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1824
    .end local v1    # "divisionFactor":J
    .end local v3    # "i":I
    :cond_1
    goto/16 :goto_4

    :cond_2
    cmp-long v1, v10, v8

    if-gez v1, :cond_4

    rem-long v1, v8, v10

    cmp-long v1, v1, v13

    if-nez v1, :cond_4

    .line 1825
    sget-object v1, Ljava/math/RoundingMode;->UNNECESSARY:Ljava/math/RoundingMode;

    invoke-static {v8, v9, v10, v11, v1}, Lcom/google/common/math/LongMath;->divide(JJLjava/math/RoundingMode;)J

    move-result-wide v1

    .line 1826
    .local v1, "multiplicationFactor":J
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1
    array-length v4, v0

    if-ge v3, v4, :cond_3

    .line 1827
    aget-wide v4, v0, v3

    invoke-static {v4, v5, v1, v2}, Lcom/google/common/math/LongMath;->saturatedMultiply(JJ)J

    move-result-wide v4

    aput-wide v4, v0, v3

    .line 1826
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1829
    .end local v1    # "multiplicationFactor":J
    .end local v3    # "i":I
    :cond_3
    goto :goto_4

    .line 1830
    :cond_4
    const/4 v1, 0x0

    move v15, v1

    .local v15, "i":I
    :goto_2
    array-length v1, v0

    if-ge v15, v1, :cond_8

    .line 1831
    aget-wide v1, v0, v15

    cmp-long v1, v1, v13

    if-nez v1, :cond_5

    .line 1832
    goto :goto_3

    .line 1834
    :cond_5
    aget-wide v1, v0, v15

    cmp-long v1, v10, v1

    if-ltz v1, :cond_6

    aget-wide v1, v0, v15

    rem-long v1, v10, v1

    cmp-long v1, v1, v13

    if-nez v1, :cond_6

    .line 1835
    aget-wide v1, v0, v15

    sget-object v3, Ljava/math/RoundingMode;->UNNECESSARY:Ljava/math/RoundingMode;

    invoke-static {v10, v11, v1, v2, v3}, Lcom/google/common/math/LongMath;->divide(JJLjava/math/RoundingMode;)J

    move-result-wide v1

    .line 1836
    .local v1, "divisionFactor":J
    invoke-static {v8, v9, v1, v2, v12}, Lcom/google/common/math/LongMath;->divide(JJLjava/math/RoundingMode;)J

    move-result-wide v3

    aput-wide v3, v0, v15

    .line 1837
    .end local v1    # "divisionFactor":J
    goto :goto_3

    :cond_6
    aget-wide v1, v0, v15

    cmp-long v1, v10, v1

    if-gez v1, :cond_7

    aget-wide v1, v0, v15

    rem-long/2addr v1, v10

    cmp-long v1, v1, v13

    if-nez v1, :cond_7

    .line 1838
    aget-wide v1, v0, v15

    sget-object v3, Ljava/math/RoundingMode;->UNNECESSARY:Ljava/math/RoundingMode;

    invoke-static {v1, v2, v10, v11, v3}, Lcom/google/common/math/LongMath;->divide(JJLjava/math/RoundingMode;)J

    move-result-wide v1

    .line 1839
    .local v1, "multiplicationFactor":J
    invoke-static {v8, v9, v1, v2}, Lcom/google/common/math/LongMath;->saturatedMultiply(JJ)J

    move-result-wide v3

    aput-wide v3, v0, v15

    .line 1840
    .end local v1    # "multiplicationFactor":J
    goto :goto_3

    .line 1841
    :cond_7
    aget-wide v1, v0, v15

    move-wide/from16 v3, p1

    move-wide/from16 v5, p3

    move-object/from16 v7, p5

    invoke-static/range {v1 .. v7}, Landroidx/media3/common/util/Util;->scaleLargeValueFallback(JJJLjava/math/RoundingMode;)J

    move-result-wide v1

    aput-wide v1, v0, v15

    .line 1830
    :goto_3
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 1845
    .end local v15    # "i":I
    :cond_8
    :goto_4
    return-void
.end method

.method public static setForegroundServiceNotification(Landroid/app/Service;ILandroid/app/Notification;ILjava/lang/String;)V
    .locals 2
    .param p0, "service"    # Landroid/app/Service;
    .param p1, "notificationId"    # I
    .param p2, "notification"    # Landroid/app/Notification;
    .param p3, "foregroundServiceType"    # I
    .param p4, "foregroundServiceManifestType"    # Ljava/lang/String;

    .line 308
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 309
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/media3/common/util/Util$Api29;->startForeground(Landroid/app/Service;ILandroid/app/Notification;ILjava/lang/String;)V

    goto :goto_0

    .line 316
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    .line 318
    :goto_0
    return-void
.end method

.method private static shouldEscapeCharacter(C)Z
    .locals 1
    .param p0, "c"    # C

    .line 2743
    sparse-switch p0, :sswitch_data_0

    .line 2756
    const/4 v0, 0x0

    return v0

    .line 2754
    :sswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_0
        0x25 -> :sswitch_0
        0x2a -> :sswitch_0
        0x2f -> :sswitch_0
        0x3a -> :sswitch_0
        0x3c -> :sswitch_0
        0x3e -> :sswitch_0
        0x3f -> :sswitch_0
        0x5c -> :sswitch_0
        0x7c -> :sswitch_0
    .end sparse-switch
.end method

.method public static shouldShowPlayButton(Landroidx/media3/common/Player;)Z
    .locals 1
    .param p0, "player"    # Landroidx/media3/common/Player;
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNullIf;
        expression = {
            "#1"
        }
        result = false
    .end annotation

    .line 3580
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroidx/media3/common/util/Util;->shouldShowPlayButton(Landroidx/media3/common/Player;Z)Z

    move-result v0

    return v0
.end method

.method public static shouldShowPlayButton(Landroidx/media3/common/Player;Z)Z
    .locals 3
    .param p0, "player"    # Landroidx/media3/common/Player;
    .param p1, "playIfSuppressed"    # Z
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNullIf;
        expression = {
            "#1"
        }
        result = false
    .end annotation

    .line 3597
    const/4 v0, 0x1

    if-eqz p0, :cond_1

    .line 3598
    invoke-interface {p0}, Landroidx/media3/common/Player;->getPlayWhenReady()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3599
    invoke-interface {p0}, Landroidx/media3/common/Player;->getPlaybackState()I

    move-result v1

    if-eq v1, v0, :cond_1

    .line 3600
    invoke-interface {p0}, Landroidx/media3/common/Player;->getPlaybackState()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    if-eqz p1, :cond_0

    .line 3602
    invoke-interface {p0}, Landroidx/media3/common/Player;->getPlaybackSuppressionReason()I

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    nop

    .line 3597
    :goto_1
    return v0
.end method

.method public static sneakyThrow(Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "t"    # Ljava/lang/Throwable;

    .line 2815
    invoke-static {p0}, Landroidx/media3/common/util/Util;->sneakyThrowInternal(Ljava/lang/Throwable;)V

    .line 2816
    return-void
.end method

.method private static sneakyThrowInternal(Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Throwable;",
            ")V^TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 2820
    throw p0
.end method

.method public static split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "regex"    # Ljava/lang/String;

    .line 1086
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static splitAtFirst(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "regex"    # Ljava/lang/String;

    .line 1101
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static splitCodecs(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .param p0, "codecs"    # Ljava/lang/String;

    .line 2128
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2129
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0

    .line 2131
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "(\\s*,\\s*)"

    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static startForegroundService(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .line 283
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 284
    invoke-virtual {p0, p1}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0

    .line 286
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public static subtractWithOverflowDefault(JJJ)J
    .locals 6
    .param p0, "x"    # J
    .param p2, "y"    # J
    .param p4, "overflowResult"    # J

    .line 1216
    sub-long v0, p0, p2

    .line 1218
    .local v0, "result":J
    xor-long v2, p0, p2

    xor-long v4, p0, v0

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 1219
    return-wide p4

    .line 1221
    :cond_0
    return-wide v0
.end method

.method public static varargs sum([J)J
    .locals 6
    .param p0, "summands"    # [J

    .line 3537
    const-wide/16 v0, 0x0

    .line 3538
    .local v0, "sum":J
    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-wide v4, p0, v3

    .line 3539
    .local v4, "summand":J
    add-long/2addr v0, v4

    .line 3538
    .end local v4    # "summand":J
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3541
    :cond_0
    return-wide v0
.end method

.method public static tableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .locals 7
    .param p0, "database"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "tableName"    # Ljava/lang/String;

    .line 3389
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 3390
    const-string/jumbo v3, "sqlite_master"

    const-string/jumbo v4, "tbl_name = ?"

    invoke-static {p0, v3, v4, v1}, Landroid/database/DatabaseUtils;->queryNumEntries(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v3

    .line 3392
    .local v3, "count":J
    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    return v0
.end method

.method public static toByteArray(F)[B
    .locals 1
    .param p0, "value"    # F

    .line 244
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-static {v0}, Lcom/google/common/primitives/Ints;->toByteArray(I)[B

    move-result-object v0

    return-object v0
.end method

.method public static toByteArray(Ljava/io/InputStream;)[B
    .locals 1
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 218
    invoke-static {p0}, Lcom/google/common/io/ByteStreams;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object v0

    return-object v0
.end method

.method public static varargs toByteArray([I)[B
    .locals 7
    .param p0, "values"    # [I

    .line 230
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x4

    new-array v0, v0, [B

    .line 231
    .local v0, "array":[B
    const/4 v1, 0x0

    .line 232
    .local v1, "index":I
    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget v4, p0, v3

    .line 233
    .local v4, "value":I
    add-int/lit8 v5, v1, 0x1

    .end local v1    # "index":I
    .local v5, "index":I
    shr-int/lit8 v6, v4, 0x18

    int-to-byte v6, v6

    aput-byte v6, v0, v1

    .line 234
    add-int/lit8 v1, v5, 0x1

    .end local v5    # "index":I
    .restart local v1    # "index":I
    shr-int/lit8 v6, v4, 0x10

    int-to-byte v6, v6

    aput-byte v6, v0, v5

    .line 235
    add-int/lit8 v5, v1, 0x1

    .end local v1    # "index":I
    .restart local v5    # "index":I
    shr-int/lit8 v6, v4, 0x8

    int-to-byte v6, v6

    aput-byte v6, v0, v1

    .line 236
    add-int/lit8 v1, v5, 0x1

    .end local v5    # "index":I
    .restart local v1    # "index":I
    int-to-byte v6, v4

    aput-byte v6, v0, v5

    .line 232
    .end local v4    # "value":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 238
    :cond_0
    return-object v0
.end method

.method public static toHexString([B)Ljava/lang/String;
    .locals 5
    .param p0, "bytes"    # [B

    .line 2044
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2045
    .local v0, "result":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 2046
    aget-byte v2, p0, v1

    shr-int/lit8 v2, v2, 0x4

    and-int/lit8 v2, v2, 0xf

    .line 2047
    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Character;->forDigit(II)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-byte v4, p0, v1

    and-int/lit8 v4, v4, 0xf

    .line 2048
    invoke-static {v4, v3}, Ljava/lang/Character;->forDigit(II)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2045
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2050
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static toLong(II)J
    .locals 4
    .param p0, "mostSignificantBits"    # I
    .param p1, "leastSignificantBits"    # I

    .line 2014
    invoke-static {p0}, Landroidx/media3/common/util/Util;->toUnsignedLong(I)J

    move-result-wide v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    invoke-static {p1}, Landroidx/media3/common/util/Util;->toUnsignedLong(I)J

    move-result-wide v2

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static toUnsignedLong(I)J
    .locals 4
    .param p0, "x"    # I

    .line 2001
    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public static transformFutureAsync(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/AsyncFunction;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "TU;>;",
            "Lcom/google/common/util/concurrent/AsyncFunction<",
            "TU;TT;>;)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "TT;>;"
        }
    .end annotation

    .line 859
    .local p0, "future":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<TU;>;"
    .local p1, "transformFunction":Lcom/google/common/util/concurrent/AsyncFunction;, "Lcom/google/common/util/concurrent/AsyncFunction<TU;TT;>;"
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    .line 860
    .local v0, "outputFuture":Lcom/google/common/util/concurrent/SettableFuture;, "Lcom/google/common/util/concurrent/SettableFuture<TT;>;"
    new-instance v1, Landroidx/media3/common/util/Util$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0, p0}, Landroidx/media3/common/util/Util$$ExternalSyntheticLambda0;-><init>(Lcom/google/common/util/concurrent/SettableFuture;Lcom/google/common/util/concurrent/ListenableFuture;)V

    .line 866
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    .line 860
    invoke-virtual {v0, v1, v2}, Lcom/google/common/util/concurrent/SettableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 867
    new-instance v1, Landroidx/media3/common/util/Util$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v0, p1}, Landroidx/media3/common/util/Util$$ExternalSyntheticLambda1;-><init>(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/SettableFuture;Lcom/google/common/util/concurrent/AsyncFunction;)V

    .line 889
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    .line 867
    invoke-interface {p0, v1, v2}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 890
    return-object v0
.end method

.method public static unescapeFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "fileName"    # Ljava/lang/String;

    .line 2772
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 2773
    .local v0, "length":I
    const/4 v1, 0x0

    .line 2774
    .local v1, "percentCharacterCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 2775
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x25

    if-ne v3, v4, :cond_0

    .line 2776
    add-int/lit8 v1, v1, 0x1

    .line 2774
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2779
    .end local v2    # "i":I
    :cond_1
    if-nez v1, :cond_2

    .line 2780
    return-object p0

    .line 2783
    :cond_2
    mul-int/lit8 v2, v1, 0x2

    sub-int v2, v0, v2

    .line 2784
    .local v2, "expectedLength":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2785
    .local v3, "builder":Ljava/lang/StringBuilder;
    sget-object v4, Landroidx/media3/common/util/Util;->ESCAPED_CHARACTER_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v4, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 2786
    .local v4, "matcher":Ljava/util/regex/Matcher;
    const/4 v5, 0x0

    .line 2787
    .local v5, "startOfNotEscaped":I
    :goto_1
    if-lez v1, :cond_3

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2788
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    int-to-char v6, v6

    .line 2789
    .local v6, "unescapedCharacter":C
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->start()I

    move-result v7

    invoke-virtual {v3, p0, v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2790
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->end()I

    move-result v5

    .line 2791
    nop

    .end local v6    # "unescapedCharacter":C
    add-int/lit8 v1, v1, -0x1

    .line 2792
    goto :goto_1

    .line 2793
    :cond_3
    if-ge v5, v0, :cond_4

    .line 2794
    invoke-virtual {v3, p0, v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 2796
    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-eq v6, v2, :cond_5

    .line 2797
    const/4 v6, 0x0

    return-object v6

    .line 2799
    :cond_5
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public static usToMs(J)J
    .locals 2
    .param p0, "timeUs"    # J

    .line 1574
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p0, v0

    if-eqz v0, :cond_1

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x3e8

    div-long v0, p0, v0

    goto :goto_1

    :cond_1
    :goto_0
    move-wide v0, p0

    :goto_1
    return-wide v0
.end method

.method public static writeBoolean(Landroid/os/Parcel;Z)V
    .locals 0
    .param p0, "parcel"    # Landroid/os/Parcel;
    .param p1, "value"    # Z

    .line 963
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 964
    return-void
.end method
