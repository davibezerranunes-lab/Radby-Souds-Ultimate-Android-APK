.class public final Lcom/muzk/app/ui/library/LibraryAdapter$CollectionVH;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "LibraryAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/muzk/app/ui/library/LibraryAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CollectionVH"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/muzk/app/ui/library/LibraryAdapter$CollectionVH;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "b",
        "Lcom/muzk/app/databinding/ItemCollectionBinding;",
        "<init>",
        "(Lcom/muzk/app/databinding/ItemCollectionBinding;)V",
        "getB",
        "()Lcom/muzk/app/databinding/ItemCollectionBinding;",
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
.field private final b:Lcom/muzk/app/databinding/ItemCollectionBinding;


# direct methods
.method public constructor <init>(Lcom/muzk/app/databinding/ItemCollectionBinding;)V
    .locals 1
    .param p1, "b"    # Lcom/muzk/app/databinding/ItemCollectionBinding;

    const-string v0, "b"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    invoke-virtual {p1}, Lcom/muzk/app/databinding/ItemCollectionBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/muzk/app/ui/library/LibraryAdapter$CollectionVH;->b:Lcom/muzk/app/databinding/ItemCollectionBinding;

    return-void
.end method


# virtual methods
.method public final getB()Lcom/muzk/app/databinding/ItemCollectionBinding;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/muzk/app/ui/library/LibraryAdapter$CollectionVH;->b:Lcom/muzk/app/databinding/ItemCollectionBinding;

    return-object v0
.end method
