.class public final Lcom/muzk/app/ui/home/HomeTrackAdapter$VH;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "HomeAdapters.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/muzk/app/ui/home/HomeTrackAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VH"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/muzk/app/ui/home/HomeTrackAdapter$VH;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "b",
        "Lcom/muzk/app/databinding/ItemHomeTrackBinding;",
        "<init>",
        "(Lcom/muzk/app/databinding/ItemHomeTrackBinding;)V",
        "getB",
        "()Lcom/muzk/app/databinding/ItemHomeTrackBinding;",
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


# instance fields
.field private final b:Lcom/muzk/app/databinding/ItemHomeTrackBinding;


# direct methods
.method public constructor <init>(Lcom/muzk/app/databinding/ItemHomeTrackBinding;)V
    .locals 1
    .param p1, "b"    # Lcom/muzk/app/databinding/ItemHomeTrackBinding;

    const-string v0, "b"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    invoke-virtual {p1}, Lcom/muzk/app/databinding/ItemHomeTrackBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/muzk/app/ui/home/HomeTrackAdapter$VH;->b:Lcom/muzk/app/databinding/ItemHomeTrackBinding;

    return-void
.end method


# virtual methods
.method public final getB()Lcom/muzk/app/databinding/ItemHomeTrackBinding;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/muzk/app/ui/home/HomeTrackAdapter$VH;->b:Lcom/muzk/app/databinding/ItemHomeTrackBinding;

    return-object v0
.end method
