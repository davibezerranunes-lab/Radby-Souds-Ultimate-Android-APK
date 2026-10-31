.class public final Lcom/muzk/app/ui/MainActivity$onCreate$$inlined$AppBarConfiguration$default$1;
.super Lkotlin/jvm/internal/Lambda;
.source "AppBarConfiguration.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muzk/app/ui/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke",
        "()Ljava/lang/Boolean;",
        "androidx/navigation/ui/AppBarConfigurationKt$AppBarConfiguration$3"
    }
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/muzk/app/ui/MainActivity$onCreate$$inlined$AppBarConfiguration$default$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/muzk/app/ui/MainActivity$onCreate$$inlined$AppBarConfiguration$default$1;

    invoke-direct {v0}, Lcom/muzk/app/ui/MainActivity$onCreate$$inlined$AppBarConfiguration$default$1;-><init>()V

    sput-object v0, Lcom/muzk/app/ui/MainActivity$onCreate$$inlined$AppBarConfiguration$default$1;->INSTANCE:Lcom/muzk/app/ui/MainActivity$onCreate$$inlined$AppBarConfiguration$default$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Boolean;
    .locals 1

    .line 300
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 300
    invoke-virtual {p0}, Lcom/muzk/app/ui/MainActivity$onCreate$$inlined$AppBarConfiguration$default$1;->invoke()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
