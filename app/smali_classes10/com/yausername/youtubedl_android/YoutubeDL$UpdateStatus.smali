.class public final enum Lcom/yausername/youtubedl_android/YoutubeDL$UpdateStatus;
.super Ljava/lang/Enum;
.source "YoutubeDL.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yausername/youtubedl_android/YoutubeDL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UpdateStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yausername/youtubedl_android/YoutubeDL$UpdateStatus;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0004\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/yausername/youtubedl_android/YoutubeDL$UpdateStatus;",
        "",
        "(Ljava/lang/String;I)V",
        "DONE",
        "ALREADY_UP_TO_DATE",
        "library_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yausername/youtubedl_android/YoutubeDL$UpdateStatus;

.field public static final enum ALREADY_UP_TO_DATE:Lcom/yausername/youtubedl_android/YoutubeDL$UpdateStatus;

.field public static final enum DONE:Lcom/yausername/youtubedl_android/YoutubeDL$UpdateStatus;


# direct methods
.method private static final synthetic $values()[Lcom/yausername/youtubedl_android/YoutubeDL$UpdateStatus;
    .locals 2

    sget-object v0, Lcom/yausername/youtubedl_android/YoutubeDL$UpdateStatus;->DONE:Lcom/yausername/youtubedl_android/YoutubeDL$UpdateStatus;

    sget-object v1, Lcom/yausername/youtubedl_android/YoutubeDL$UpdateStatus;->ALREADY_UP_TO_DATE:Lcom/yausername/youtubedl_android/YoutubeDL$UpdateStatus;

    filled-new-array {v0, v1}, [Lcom/yausername/youtubedl_android/YoutubeDL$UpdateStatus;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 282
    new-instance v0, Lcom/yausername/youtubedl_android/YoutubeDL$UpdateStatus;

    const-string v1, "DONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/yausername/youtubedl_android/YoutubeDL$UpdateStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yausername/youtubedl_android/YoutubeDL$UpdateStatus;->DONE:Lcom/yausername/youtubedl_android/YoutubeDL$UpdateStatus;

    new-instance v0, Lcom/yausername/youtubedl_android/YoutubeDL$UpdateStatus;

    const-string v1, "ALREADY_UP_TO_DATE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/yausername/youtubedl_android/YoutubeDL$UpdateStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yausername/youtubedl_android/YoutubeDL$UpdateStatus;->ALREADY_UP_TO_DATE:Lcom/yausername/youtubedl_android/YoutubeDL$UpdateStatus;

    invoke-static {}, Lcom/yausername/youtubedl_android/YoutubeDL$UpdateStatus;->$values()[Lcom/yausername/youtubedl_android/YoutubeDL$UpdateStatus;

    move-result-object v0

    sput-object v0, Lcom/yausername/youtubedl_android/YoutubeDL$UpdateStatus;->$VALUES:[Lcom/yausername/youtubedl_android/YoutubeDL$UpdateStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "$enum$name"    # Ljava/lang/String;
    .param p2, "$enum$ordinal"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 281
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yausername/youtubedl_android/YoutubeDL$UpdateStatus;
    .locals 1

    const-class v0, Lcom/yausername/youtubedl_android/YoutubeDL$UpdateStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yausername/youtubedl_android/YoutubeDL$UpdateStatus;

    return-object v0
.end method

.method public static values()[Lcom/yausername/youtubedl_android/YoutubeDL$UpdateStatus;
    .locals 1

    sget-object v0, Lcom/yausername/youtubedl_android/YoutubeDL$UpdateStatus;->$VALUES:[Lcom/yausername/youtubedl_android/YoutubeDL$UpdateStatus;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yausername/youtubedl_android/YoutubeDL$UpdateStatus;

    return-object v0
.end method
