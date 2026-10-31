.class public final enum Lcom/muzk/app/download/Downloads$Enqueued;
.super Ljava/lang/Enum;
.source "Downloads.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/muzk/app/download/Downloads;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Enqueued"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/muzk/app/download/Downloads$Enqueued;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0005\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/muzk/app/download/Downloads$Enqueued;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "STARTED",
        "WAITING_WIFI",
        "app_debug"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/muzk/app/download/Downloads$Enqueued;

.field public static final enum STARTED:Lcom/muzk/app/download/Downloads$Enqueued;

.field public static final enum WAITING_WIFI:Lcom/muzk/app/download/Downloads$Enqueued;


# direct methods
.method private static final synthetic $values()[Lcom/muzk/app/download/Downloads$Enqueued;
    .locals 2

    sget-object v0, Lcom/muzk/app/download/Downloads$Enqueued;->STARTED:Lcom/muzk/app/download/Downloads$Enqueued;

    sget-object v1, Lcom/muzk/app/download/Downloads$Enqueued;->WAITING_WIFI:Lcom/muzk/app/download/Downloads$Enqueued;

    filled-new-array {v0, v1}, [Lcom/muzk/app/download/Downloads$Enqueued;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 20
    new-instance v0, Lcom/muzk/app/download/Downloads$Enqueued;

    const-string v1, "STARTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/muzk/app/download/Downloads$Enqueued;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/muzk/app/download/Downloads$Enqueued;->STARTED:Lcom/muzk/app/download/Downloads$Enqueued;

    new-instance v0, Lcom/muzk/app/download/Downloads$Enqueued;

    const-string v1, "WAITING_WIFI"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/muzk/app/download/Downloads$Enqueued;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/muzk/app/download/Downloads$Enqueued;->WAITING_WIFI:Lcom/muzk/app/download/Downloads$Enqueued;

    invoke-static {}, Lcom/muzk/app/download/Downloads$Enqueued;->$values()[Lcom/muzk/app/download/Downloads$Enqueued;

    move-result-object v0

    sput-object v0, Lcom/muzk/app/download/Downloads$Enqueued;->$VALUES:[Lcom/muzk/app/download/Downloads$Enqueued;

    sget-object v0, Lcom/muzk/app/download/Downloads$Enqueued;->$VALUES:[Lcom/muzk/app/download/Downloads$Enqueued;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/muzk/app/download/Downloads$Enqueued;->$ENTRIES:Lkotlin/enums/EnumEntries;

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

    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/muzk/app/download/Downloads$Enqueued;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/muzk/app/download/Downloads$Enqueued;->$ENTRIES:Lkotlin/enums/EnumEntries;

    .line 20
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/muzk/app/download/Downloads$Enqueued;
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    const-class v0, Lcom/muzk/app/download/Downloads$Enqueued;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    .line 20
    check-cast v0, Lcom/muzk/app/download/Downloads$Enqueued;

    return-object v0
.end method

.method public static values()[Lcom/muzk/app/download/Downloads$Enqueued;
    .locals 1

    sget-object v0, Lcom/muzk/app/download/Downloads$Enqueued;->$VALUES:[Lcom/muzk/app/download/Downloads$Enqueued;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 20
    check-cast v0, [Lcom/muzk/app/download/Downloads$Enqueued;

    return-object v0
.end method
