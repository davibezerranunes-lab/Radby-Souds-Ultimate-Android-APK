.class public final Lcom/muzk/app/ui/library/LibraryAdapter;
.super Landroidx/recyclerview/widget/ListAdapter;
.source "LibraryAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/muzk/app/ui/library/LibraryAdapter$CollectionVH;,
        Lcom/muzk/app/ui/library/LibraryAdapter$Companion;,
        Lcom/muzk/app/ui/library/LibraryAdapter$HeaderVH;,
        Lcom/muzk/app/ui/library/LibraryAdapter$TrackVH;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/ListAdapter<",
        "Lcom/muzk/app/ui/library/LibraryRow;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLibraryAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LibraryAdapter.kt\ncom/muzk/app/ui/library/LibraryAdapter\n+ 2 Extensions.kt\ncoil/-SingletonExtensions\n+ 3 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,120:1\n54#2,3:121\n24#2:124\n59#2,6:125\n257#3,2:131\n257#3,2:133\n257#3,2:135\n257#3,2:137\n*S KotlinDebug\n*F\n+ 1 LibraryAdapter.kt\ncom/muzk/app/ui/library/LibraryAdapter\n*L\n58#1:121,3\n58#1:124\n58#1:125,6\n62#1:131,2\n68#1:133,2\n79#1:135,2\n92#1:137,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u0000 !2\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0004\u001e\u001f !B\u0099\u0001\u0012\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005\u0012\u0018\u0010\u0008\u001a\u0014\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u00070\t\u0012\u0012\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005\u0012\u0012\u0010\u000c\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u00070\u0005\u0012\u0012\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00070\u0005\u0012\u0018\u0010\u0010\u001a\u0014\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u00070\t\u0012\u000c\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0012\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0010\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0016H\u0016J\u0018\u0010\u0018\u001a\u00020\u00032\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u0016H\u0016J\u0018\u0010\u001c\u001a\u00020\u00072\u0006\u0010\u001d\u001a\u00020\u00032\u0006\u0010\u0017\u001a\u00020\u0016H\u0016R\u001a\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R \u0010\u0008\u001a\u0014\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u00070\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000c\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u00070\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00070\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R \u0010\u0010\u001a\u0014\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u00070\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\""
    }
    d2 = {
        "Lcom/muzk/app/ui/library/LibraryAdapter;",
        "Landroidx/recyclerview/widget/ListAdapter;",
        "Lcom/muzk/app/ui/library/LibraryRow;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "onTrackClick",
        "Lkotlin/Function1;",
        "Lcom/muzk/app/ui/library/LibraryRow$Track;",
        "",
        "onTrackMore",
        "Lkotlin/Function2;",
        "Landroid/view/View;",
        "onTrackLongClick",
        "onFolderClick",
        "Lcom/muzk/app/ui/library/LibraryRow$Folder;",
        "onPlaylistClick",
        "Lcom/muzk/app/ui/library/LibraryRow$PlaylistItem;",
        "onPlaylistMore",
        "onHeaderClick",
        "Lkotlin/Function0;",
        "<init>",
        "(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;)V",
        "getItemViewType",
        "",
        "position",
        "onCreateViewHolder",
        "parent",
        "Landroid/view/ViewGroup;",
        "viewType",
        "onBindViewHolder",
        "holder",
        "HeaderVH",
        "TrackVH",
        "CollectionVH",
        "Companion",
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
.field public static final Companion:Lcom/muzk/app/ui/library/LibraryAdapter$Companion;

.field private static final DIFF:Lcom/muzk/app/ui/library/LibraryAdapter$Companion$DIFF$1;

.field private static final TYPE_COLLECTION:I = 0x2

.field private static final TYPE_HEADER:I = 0x0

.field private static final TYPE_TRACK:I = 0x1


# instance fields
.field private final onFolderClick:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/muzk/app/ui/library/LibraryRow$Folder;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final onHeaderClick:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final onPlaylistClick:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/muzk/app/ui/library/LibraryRow$PlaylistItem;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final onPlaylistMore:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Lcom/muzk/app/ui/library/LibraryRow$PlaylistItem;",
            "Landroid/view/View;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final onTrackClick:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/muzk/app/ui/library/LibraryRow$Track;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final onTrackLongClick:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/muzk/app/ui/library/LibraryRow$Track;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final onTrackMore:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Lcom/muzk/app/ui/library/LibraryRow$Track;",
            "Landroid/view/View;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$EmnODyJh5nkP_J4SS8GdFnfuEgs(Lcom/muzk/app/ui/library/LibraryAdapter;Lcom/muzk/app/ui/library/LibraryRow;Landroid/view/View;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/muzk/app/ui/library/LibraryAdapter;->onBindViewHolder$lambda$6$lambda$4(Lcom/muzk/app/ui/library/LibraryAdapter;Lcom/muzk/app/ui/library/LibraryRow;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$TQd7i-zLXQpvXuVsalJdLyzvlII(Lcom/muzk/app/ui/library/LibraryAdapter;Lcom/muzk/app/ui/library/LibraryRow;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/muzk/app/ui/library/LibraryAdapter;->onBindViewHolder$lambda$6$lambda$3(Lcom/muzk/app/ui/library/LibraryAdapter;Lcom/muzk/app/ui/library/LibraryRow;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZYrqo4gvefRi3gj7KYCHlRqYLvE(Lcom/muzk/app/ui/library/LibraryAdapter;Lcom/muzk/app/ui/library/LibraryRow;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/muzk/app/ui/library/LibraryAdapter;->onBindViewHolder$lambda$6$lambda$5(Lcom/muzk/app/ui/library/LibraryAdapter;Lcom/muzk/app/ui/library/LibraryRow;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$obIhnLsh5XSwkbokXOLkW-GipwI(Lcom/muzk/app/ui/library/LibraryAdapter;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/muzk/app/ui/library/LibraryAdapter;->onBindViewHolder$lambda$1$lambda$0(Lcom/muzk/app/ui/library/LibraryAdapter;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pgpEeYuRWrKutydfb8NYcXzx4rA(Lcom/muzk/app/ui/library/LibraryAdapter;Lcom/muzk/app/ui/library/LibraryRow;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/muzk/app/ui/library/LibraryAdapter;->onBindViewHolder$lambda$8$lambda$7(Lcom/muzk/app/ui/library/LibraryAdapter;Lcom/muzk/app/ui/library/LibraryRow;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$s3IeQnAegY7xtYEHHohCCXUJ9QM(Lcom/muzk/app/ui/library/LibraryAdapter;Lcom/muzk/app/ui/library/LibraryRow;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/muzk/app/ui/library/LibraryAdapter;->onBindViewHolder$lambda$11$lambda$9(Lcom/muzk/app/ui/library/LibraryAdapter;Lcom/muzk/app/ui/library/LibraryRow;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$v4p3gvuU1A0EEctf137HyAhgcR0(Lcom/muzk/app/ui/library/LibraryAdapter;Lcom/muzk/app/ui/library/LibraryRow;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/muzk/app/ui/library/LibraryAdapter;->onBindViewHolder$lambda$11$lambda$10(Lcom/muzk/app/ui/library/LibraryAdapter;Lcom/muzk/app/ui/library/LibraryRow;Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/muzk/app/ui/library/LibraryAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/muzk/app/ui/library/LibraryAdapter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/muzk/app/ui/library/LibraryAdapter;->Companion:Lcom/muzk/app/ui/library/LibraryAdapter$Companion;

    .line 108
    new-instance v0, Lcom/muzk/app/ui/library/LibraryAdapter$Companion$DIFF$1;

    invoke-direct {v0}, Lcom/muzk/app/ui/library/LibraryAdapter$Companion$DIFF$1;-><init>()V

    sput-object v0, Lcom/muzk/app/ui/library/LibraryAdapter;->DIFF:Lcom/muzk/app/ui/library/LibraryAdapter$Companion$DIFF$1;

    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .param p1, "onTrackClick"    # Lkotlin/jvm/functions/Function1;
    .param p2, "onTrackMore"    # Lkotlin/jvm/functions/Function2;
    .param p3, "onTrackLongClick"    # Lkotlin/jvm/functions/Function1;
    .param p4, "onFolderClick"    # Lkotlin/jvm/functions/Function1;
    .param p5, "onPlaylistClick"    # Lkotlin/jvm/functions/Function1;
    .param p6, "onPlaylistMore"    # Lkotlin/jvm/functions/Function2;
    .param p7, "onHeaderClick"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/muzk/app/ui/library/LibraryRow$Track;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/muzk/app/ui/library/LibraryRow$Track;",
            "-",
            "Landroid/view/View;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/muzk/app/ui/library/LibraryRow$Track;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/muzk/app/ui/library/LibraryRow$Folder;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/muzk/app/ui/library/LibraryRow$PlaylistItem;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/muzk/app/ui/library/LibraryRow$PlaylistItem;",
            "-",
            "Landroid/view/View;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "onTrackClick"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onTrackMore"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onTrackLongClick"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onFolderClick"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onPlaylistClick"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onPlaylistMore"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onHeaderClick"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    sget-object v0, Lcom/muzk/app/ui/library/LibraryAdapter;->DIFF:Lcom/muzk/app/ui/library/LibraryAdapter$Companion$DIFF$1;

    check-cast v0, Landroidx/recyclerview/widget/DiffUtil$ItemCallback;

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/ListAdapter;-><init>(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V

    .line 24
    iput-object p1, p0, Lcom/muzk/app/ui/library/LibraryAdapter;->onTrackClick:Lkotlin/jvm/functions/Function1;

    .line 25
    iput-object p2, p0, Lcom/muzk/app/ui/library/LibraryAdapter;->onTrackMore:Lkotlin/jvm/functions/Function2;

    .line 26
    iput-object p3, p0, Lcom/muzk/app/ui/library/LibraryAdapter;->onTrackLongClick:Lkotlin/jvm/functions/Function1;

    .line 27
    iput-object p4, p0, Lcom/muzk/app/ui/library/LibraryAdapter;->onFolderClick:Lkotlin/jvm/functions/Function1;

    .line 28
    iput-object p5, p0, Lcom/muzk/app/ui/library/LibraryAdapter;->onPlaylistClick:Lkotlin/jvm/functions/Function1;

    .line 29
    iput-object p6, p0, Lcom/muzk/app/ui/library/LibraryAdapter;->onPlaylistMore:Lkotlin/jvm/functions/Function2;

    .line 30
    iput-object p7, p0, Lcom/muzk/app/ui/library/LibraryAdapter;->onHeaderClick:Lkotlin/jvm/functions/Function0;

    .line 23
    return-void
.end method

.method private static final onBindViewHolder$lambda$1$lambda$0(Lcom/muzk/app/ui/library/LibraryAdapter;Landroid/view/View;)V
    .locals 1
    .param p0, "this$0"    # Lcom/muzk/app/ui/library/LibraryAdapter;
    .param p1, "it"    # Landroid/view/View;

    .line 52
    iget-object v0, p0, Lcom/muzk/app/ui/library/LibraryAdapter;->onHeaderClick:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method private static final onBindViewHolder$lambda$11$lambda$10(Lcom/muzk/app/ui/library/LibraryAdapter;Lcom/muzk/app/ui/library/LibraryRow;Landroid/view/View;)V
    .locals 1
    .param p0, "this$0"    # Lcom/muzk/app/ui/library/LibraryAdapter;
    .param p1, "$row"    # Lcom/muzk/app/ui/library/LibraryRow;
    .param p2, "it"    # Landroid/view/View;

    .line 94
    iget-object v0, p0, Lcom/muzk/app/ui/library/LibraryAdapter;->onPlaylistClick:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final onBindViewHolder$lambda$11$lambda$9(Lcom/muzk/app/ui/library/LibraryAdapter;Lcom/muzk/app/ui/library/LibraryRow;Landroid/view/View;)V
    .locals 1
    .param p0, "this$0"    # Lcom/muzk/app/ui/library/LibraryAdapter;
    .param p1, "$row"    # Lcom/muzk/app/ui/library/LibraryRow;
    .param p2, "it"    # Landroid/view/View;

    .line 93
    iget-object v0, p0, Lcom/muzk/app/ui/library/LibraryAdapter;->onPlaylistMore:Lkotlin/jvm/functions/Function2;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final onBindViewHolder$lambda$6$lambda$3(Lcom/muzk/app/ui/library/LibraryAdapter;Lcom/muzk/app/ui/library/LibraryRow;Landroid/view/View;)V
    .locals 1
    .param p0, "this$0"    # Lcom/muzk/app/ui/library/LibraryAdapter;
    .param p1, "$row"    # Lcom/muzk/app/ui/library/LibraryRow;
    .param p2, "it"    # Landroid/view/View;

    .line 69
    iget-object v0, p0, Lcom/muzk/app/ui/library/LibraryAdapter;->onTrackClick:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final onBindViewHolder$lambda$6$lambda$4(Lcom/muzk/app/ui/library/LibraryAdapter;Lcom/muzk/app/ui/library/LibraryRow;Landroid/view/View;)Z
    .locals 1
    .param p0, "this$0"    # Lcom/muzk/app/ui/library/LibraryAdapter;
    .param p1, "$row"    # Lcom/muzk/app/ui/library/LibraryRow;
    .param p2, "it"    # Landroid/view/View;

    .line 70
    iget-object v0, p0, Lcom/muzk/app/ui/library/LibraryAdapter;->onTrackLongClick:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    return v0
.end method

.method private static final onBindViewHolder$lambda$6$lambda$5(Lcom/muzk/app/ui/library/LibraryAdapter;Lcom/muzk/app/ui/library/LibraryRow;Landroid/view/View;)V
    .locals 1
    .param p0, "this$0"    # Lcom/muzk/app/ui/library/LibraryAdapter;
    .param p1, "$row"    # Lcom/muzk/app/ui/library/LibraryRow;
    .param p2, "it"    # Landroid/view/View;

    .line 71
    iget-object v0, p0, Lcom/muzk/app/ui/library/LibraryAdapter;->onTrackMore:Lkotlin/jvm/functions/Function2;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final onBindViewHolder$lambda$8$lambda$7(Lcom/muzk/app/ui/library/LibraryAdapter;Lcom/muzk/app/ui/library/LibraryRow;Landroid/view/View;)V
    .locals 1
    .param p0, "this$0"    # Lcom/muzk/app/ui/library/LibraryAdapter;
    .param p1, "$row"    # Lcom/muzk/app/ui/library/LibraryRow;
    .param p2, "it"    # Landroid/view/View;

    .line 80
    iget-object v0, p0, Lcom/muzk/app/ui/library/LibraryAdapter;->onFolderClick:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getItemViewType(I)I
    .locals 2
    .param p1, "position"    # I

    .line 33
    invoke-virtual {p0, p1}, Lcom/muzk/app/ui/library/LibraryAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/muzk/app/ui/library/LibraryRow;

    .line 34
    instance-of v1, v0, Lcom/muzk/app/ui/library/LibraryRow$Header;

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    .line 35
    :cond_0
    instance-of v1, v0, Lcom/muzk/app/ui/library/LibraryRow$Track;

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    .line 36
    :cond_1
    instance-of v1, v0, Lcom/muzk/app/ui/library/LibraryRow$Folder;

    if-nez v1, :cond_3

    instance-of v0, v0, Lcom/muzk/app/ui/library/LibraryRow$PlaylistItem;

    if-eqz v0, :cond_2

    goto :goto_0

    .line 33
    :cond_2
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 36
    :cond_3
    :goto_0
    const/4 v0, 0x2

    .line 37
    :goto_1
    return v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 17
    .param p1, "holder"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "holder"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    move/from16 v2, p2

    invoke-virtual {v0, v2}, Lcom/muzk/app/ui/library/LibraryAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/muzk/app/ui/library/LibraryRow;

    .line 50
    .local v3, "row":Lcom/muzk/app/ui/library/LibraryRow;
    instance-of v4, v3, Lcom/muzk/app/ui/library/LibraryRow$Header;

    if-eqz v4, :cond_0

    move-object v4, v1

    check-cast v4, Lcom/muzk/app/ui/library/LibraryAdapter$HeaderVH;

    invoke-virtual {v4}, Lcom/muzk/app/ui/library/LibraryAdapter$HeaderVH;->getB()Lcom/muzk/app/databinding/ItemHeaderBinding;

    move-result-object v4

    .local v4, "$this$onBindViewHolder_u24lambda_u241":Lcom/muzk/app/databinding/ItemHeaderBinding;
    const/4 v5, 0x0

    .line 51
    .local v5, "$i$a$-with-LibraryAdapter$onBindViewHolder$1":I
    iget-object v6, v4, Lcom/muzk/app/databinding/ItemHeaderBinding;->title:Landroid/widget/TextView;

    move-object v7, v3

    check-cast v7, Lcom/muzk/app/ui/library/LibraryRow$Header;

    invoke-virtual {v7}, Lcom/muzk/app/ui/library/LibraryRow$Header;->getTitle()Ljava/lang/String;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    invoke-virtual {v4}, Lcom/muzk/app/databinding/ItemHeaderBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v6

    new-instance v7, Lcom/muzk/app/ui/library/LibraryAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v7, v0}, Lcom/muzk/app/ui/library/LibraryAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/muzk/app/ui/library/LibraryAdapter;)V

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    nop

    .line 50
    .end local v4    # "$this$onBindViewHolder_u24lambda_u241":Lcom/muzk/app/databinding/ItemHeaderBinding;
    .end local v5    # "$i$a$-with-LibraryAdapter$onBindViewHolder$1":I
    goto/16 :goto_6

    .line 54
    :cond_0
    instance-of v4, v3, Lcom/muzk/app/ui/library/LibraryRow$Track;

    const-string v5, " \u00b7 "

    const-string v6, "btnMore"

    const/16 v8, 0x8

    if-eqz v4, :cond_5

    move-object v4, v1

    check-cast v4, Lcom/muzk/app/ui/library/LibraryAdapter$TrackVH;

    invoke-virtual {v4}, Lcom/muzk/app/ui/library/LibraryAdapter$TrackVH;->getB()Lcom/muzk/app/databinding/ItemLocalTrackBinding;

    move-result-object v4

    .local v4, "$this$onBindViewHolder_u24lambda_u246":Lcom/muzk/app/databinding/ItemLocalTrackBinding;
    const/4 v9, 0x0

    .line 55
    .local v9, "$i$a$-with-LibraryAdapter$onBindViewHolder$2":I
    move-object v10, v3

    check-cast v10, Lcom/muzk/app/ui/library/LibraryRow$Track;

    invoke-virtual {v10}, Lcom/muzk/app/ui/library/LibraryRow$Track;->getTrack()Lcom/muzk/app/data/LocalTrack;

    move-result-object v10

    .line 56
    .local v10, "t":Lcom/muzk/app/data/LocalTrack;
    iget-object v11, v4, Lcom/muzk/app/databinding/ItemLocalTrackBinding;->title:Landroid/widget/TextView;

    invoke-virtual {v10}, Lcom/muzk/app/data/LocalTrack;->getTitle()Ljava/lang/String;

    move-result-object v12

    check-cast v12, Ljava/lang/CharSequence;

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    iget-object v11, v4, Lcom/muzk/app/databinding/ItemLocalTrackBinding;->subtitle:Landroid/widget/TextView;

    invoke-virtual {v10}, Lcom/muzk/app/data/LocalTrack;->getArtist()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10}, Lcom/muzk/app/data/LocalTrack;->getDurationMs()J

    move-result-wide v13

    invoke-static {v13, v14}, Lcom/muzk/app/data/ModelsKt;->formatDuration(J)Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v11, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    iget-object v5, v4, Lcom/muzk/app/databinding/ItemLocalTrackBinding;->cover:Lcom/google/android/material/imageview/ShapeableImageView;

    const-string v11, "cover"

    invoke-static {v5, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Landroid/widget/ImageView;

    .local v5, "$this$load_u24default$iv":Landroid/widget/ImageView;
    new-instance v11, Lcom/muzk/app/data/AudioCover;

    invoke-virtual {v10}, Lcom/muzk/app/data/LocalTrack;->getUri()Landroid/net/Uri;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/muzk/app/data/AudioCover;-><init>(Landroid/net/Uri;)V

    .line 121
    .local v11, "data$iv":Ljava/lang/Object;
    nop

    .line 123
    invoke-virtual {v5}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v12

    .local v12, "$this$imageLoader$iv$iv":Landroid/content/Context;
    const/4 v13, 0x0

    .line 124
    .local v13, "$i$f$getImageLoader":I
    invoke-static {v12}, Lcoil/Coil;->imageLoader(Landroid/content/Context;)Lcoil/ImageLoader;

    move-result-object v12

    .line 121
    .end local v13    # "$i$f$getImageLoader":I
    .local v12, "imageLoader$iv":Lcoil/ImageLoader;
    const/4 v13, 0x0

    .line 125
    .local v13, "$i$f$load":I
    new-instance v14, Lcoil/request/ImageRequest$Builder;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-direct {v14, v15}, Lcoil/request/ImageRequest$Builder;-><init>(Landroid/content/Context;)V

    .line 126
    invoke-virtual {v14, v11}, Lcoil/request/ImageRequest$Builder;->data(Ljava/lang/Object;)Lcoil/request/ImageRequest$Builder;

    move-result-object v14

    .line 127
    invoke-virtual {v14, v5}, Lcoil/request/ImageRequest$Builder;->target(Landroid/widget/ImageView;)Lcoil/request/ImageRequest$Builder;

    move-result-object v14

    .line 128
    move-object v15, v14

    .local v15, "$this$onBindViewHolder_u24lambda_u246_u24lambda_u242":Lcoil/request/ImageRequest$Builder;
    const/16 v16, 0x0

    .line 59
    .local v16, "$i$a$-load$default-LibraryAdapter$onBindViewHolder$2$1":I
    sget v7, Lcom/muzk/app/R$drawable;->cover_placeholder:I

    invoke-virtual {v15, v7}, Lcoil/request/ImageRequest$Builder;->placeholder(I)Lcoil/request/ImageRequest$Builder;

    .line 60
    sget v7, Lcom/muzk/app/R$drawable;->cover_placeholder:I

    invoke-virtual {v15, v7}, Lcoil/request/ImageRequest$Builder;->error(I)Lcoil/request/ImageRequest$Builder;

    .line 61
    nop

    .line 128
    .end local v15    # "$this$onBindViewHolder_u24lambda_u246_u24lambda_u242":Lcoil/request/ImageRequest$Builder;
    .end local v16    # "$i$a$-load$default-LibraryAdapter$onBindViewHolder$2$1":I
    nop

    .line 129
    invoke-virtual {v14}, Lcoil/request/ImageRequest$Builder;->build()Lcoil/request/ImageRequest;

    move-result-object v7

    .line 125
    nop

    .line 130
    .local v7, "request$iv":Lcoil/request/ImageRequest;
    invoke-interface {v12, v7}, Lcoil/ImageLoader;->enqueue(Lcoil/request/ImageRequest;)Lcoil/request/Disposable;

    .line 62
    .end local v5    # "$this$load_u24default$iv":Landroid/widget/ImageView;
    .end local v7    # "request$iv":Lcoil/request/ImageRequest;
    .end local v11    # "data$iv":Ljava/lang/Object;
    .end local v12    # "imageLoader$iv":Lcoil/ImageLoader;
    .end local v13    # "$i$f$load":I
    iget-object v5, v4, Lcom/muzk/app/databinding/ItemLocalTrackBinding;->check:Landroid/widget/ImageView;

    const-string v7, "check"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Landroid/view/View;

    .local v5, "$this$isVisible$iv":Landroid/view/View;
    move-object v7, v3

    check-cast v7, Lcom/muzk/app/ui/library/LibraryRow$Track;

    invoke-virtual {v7}, Lcom/muzk/app/ui/library/LibraryRow$Track;->getSelected()Z

    move-result v7

    .local v7, "value$iv":Z
    const/4 v11, 0x0

    .line 131
    .local v11, "$i$f$setVisible":I
    if-eqz v7, :cond_1

    const/4 v12, 0x0

    goto :goto_0

    :cond_1
    move v12, v8

    :goto_0
    invoke-virtual {v5, v12}, Landroid/view/View;->setVisibility(I)V

    .line 132
    nop

    .line 63
    .end local v5    # "$this$isVisible$iv":Landroid/view/View;
    .end local v7    # "value$iv":Z
    .end local v11    # "$i$f$setVisible":I
    iget-object v5, v4, Lcom/muzk/app/databinding/ItemLocalTrackBinding;->cover:Lcom/google/android/material/imageview/ShapeableImageView;

    move-object v7, v3

    check-cast v7, Lcom/muzk/app/ui/library/LibraryRow$Track;

    invoke-virtual {v7}, Lcom/muzk/app/ui/library/LibraryRow$Track;->getSelected()Z

    move-result v7

    if-eqz v7, :cond_2

    const v7, 0x3ee66666    # 0.45f

    goto :goto_1

    :cond_2
    const/high16 v7, 0x3f800000    # 1.0f

    :goto_1
    invoke-virtual {v5, v7}, Lcom/google/android/material/imageview/ShapeableImageView;->setAlpha(F)V

    .line 64
    invoke-virtual {v4}, Lcom/muzk/app/databinding/ItemLocalTrackBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v5

    .line 65
    move-object v7, v3

    check-cast v7, Lcom/muzk/app/ui/library/LibraryRow$Track;

    invoke-virtual {v7}, Lcom/muzk/app/ui/library/LibraryRow$Track;->getSelected()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v4}, Lcom/muzk/app/databinding/ItemLocalTrackBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    sget v11, Landroidx/appcompat/R$attr;->colorPrimary:I

    invoke-static {v7, v11}, Lcom/google/android/material/color/MaterialColors;->getColor(Landroid/view/View;I)I

    move-result v7

    const/16 v11, 0x33

    invoke-static {v7, v11}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v7

    goto :goto_2

    .line 66
    :cond_3
    const/4 v7, 0x0

    .line 64
    :goto_2
    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 68
    iget-object v5, v4, Lcom/muzk/app/databinding/ItemLocalTrackBinding;->btnMore:Lcom/google/android/material/button/MaterialButton;

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Landroid/view/View;

    move-object v6, v3

    check-cast v6, Lcom/muzk/app/ui/library/LibraryRow$Track;

    invoke-virtual {v6}, Lcom/muzk/app/ui/library/LibraryRow$Track;->getSelecting()Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    .restart local v5    # "$this$isVisible$iv":Landroid/view/View;
    .local v6, "value$iv":Z
    const/4 v7, 0x0

    .line 133
    .local v7, "$i$f$setVisible":I
    if-eqz v6, :cond_4

    const/4 v8, 0x0

    :cond_4
    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 134
    nop

    .line 69
    .end local v5    # "$this$isVisible$iv":Landroid/view/View;
    .end local v6    # "value$iv":Z
    .end local v7    # "$i$f$setVisible":I
    invoke-virtual {v4}, Lcom/muzk/app/databinding/ItemLocalTrackBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v5

    new-instance v6, Lcom/muzk/app/ui/library/LibraryAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v6, v0, v3}, Lcom/muzk/app/ui/library/LibraryAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/muzk/app/ui/library/LibraryAdapter;Lcom/muzk/app/ui/library/LibraryRow;)V

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    invoke-virtual {v4}, Lcom/muzk/app/databinding/ItemLocalTrackBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v5

    new-instance v6, Lcom/muzk/app/ui/library/LibraryAdapter$$ExternalSyntheticLambda2;

    invoke-direct {v6, v0, v3}, Lcom/muzk/app/ui/library/LibraryAdapter$$ExternalSyntheticLambda2;-><init>(Lcom/muzk/app/ui/library/LibraryAdapter;Lcom/muzk/app/ui/library/LibraryRow;)V

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 71
    iget-object v5, v4, Lcom/muzk/app/databinding/ItemLocalTrackBinding;->btnMore:Lcom/google/android/material/button/MaterialButton;

    new-instance v6, Lcom/muzk/app/ui/library/LibraryAdapter$$ExternalSyntheticLambda3;

    invoke-direct {v6, v0, v3}, Lcom/muzk/app/ui/library/LibraryAdapter$$ExternalSyntheticLambda3;-><init>(Lcom/muzk/app/ui/library/LibraryAdapter;Lcom/muzk/app/ui/library/LibraryRow;)V

    invoke-virtual {v5, v6}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    nop

    .line 54
    .end local v4    # "$this$onBindViewHolder_u24lambda_u246":Lcom/muzk/app/databinding/ItemLocalTrackBinding;
    .end local v9    # "$i$a$-with-LibraryAdapter$onBindViewHolder$2":I
    .end local v10    # "t":Lcom/muzk/app/data/LocalTrack;
    goto/16 :goto_6

    .line 73
    :cond_5
    instance-of v4, v3, Lcom/muzk/app/ui/library/LibraryRow$Folder;

    if-eqz v4, :cond_6

    move-object v4, v1

    check-cast v4, Lcom/muzk/app/ui/library/LibraryAdapter$CollectionVH;

    invoke-virtual {v4}, Lcom/muzk/app/ui/library/LibraryAdapter$CollectionVH;->getB()Lcom/muzk/app/databinding/ItemCollectionBinding;

    move-result-object v4

    .local v4, "$this$onBindViewHolder_u24lambda_u248":Lcom/muzk/app/databinding/ItemCollectionBinding;
    const/4 v7, 0x0

    .line 74
    .local v7, "$i$a$-with-LibraryAdapter$onBindViewHolder$3":I
    iget-object v9, v4, Lcom/muzk/app/databinding/ItemCollectionBinding;->iconBox:Landroid/widget/FrameLayout;

    sget v10, Lcom/muzk/app/R$drawable;->bg_icon_tile:I

    invoke-virtual {v9, v10}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 75
    iget-object v9, v4, Lcom/muzk/app/databinding/ItemCollectionBinding;->icon:Landroid/widget/ImageView;

    iget-object v10, v4, Lcom/muzk/app/databinding/ItemCollectionBinding;->icon:Landroid/widget/ImageView;

    check-cast v10, Landroid/view/View;

    sget v11, Lcom/google/android/material/R$attr;->colorOnSurfaceVariant:I

    invoke-static {v10, v11}, Lcom/google/android/material/color/MaterialColors;->getColor(Landroid/view/View;I)I

    move-result v10

    invoke-static {v10}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 76
    iget-object v9, v4, Lcom/muzk/app/databinding/ItemCollectionBinding;->icon:Landroid/widget/ImageView;

    sget v10, Lcom/muzk/app/R$drawable;->ic_folder:I

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 77
    iget-object v9, v4, Lcom/muzk/app/databinding/ItemCollectionBinding;->title:Landroid/widget/TextView;

    move-object v10, v3

    check-cast v10, Lcom/muzk/app/ui/library/LibraryRow$Folder;

    invoke-virtual {v10}, Lcom/muzk/app/ui/library/LibraryRow$Folder;->getName()Ljava/lang/String;

    move-result-object v10

    check-cast v10, Ljava/lang/CharSequence;

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    iget-object v9, v4, Lcom/muzk/app/databinding/ItemCollectionBinding;->subtitle:Landroid/widget/TextView;

    invoke-virtual {v4}, Lcom/muzk/app/databinding/ItemCollectionBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v10

    sget v11, Lcom/muzk/app/R$string;->tracks_count:I

    move-object v12, v3

    check-cast v12, Lcom/muzk/app/ui/library/LibraryRow$Folder;

    invoke-virtual {v12}, Lcom/muzk/app/ui/library/LibraryRow$Folder;->getCount()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    filled-new-array {v12}, [Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    move-object v11, v3

    check-cast v11, Lcom/muzk/app/ui/library/LibraryRow$Folder;

    invoke-virtual {v11}, Lcom/muzk/app/ui/library/LibraryRow$Folder;->getPath()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v9, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    iget-object v5, v4, Lcom/muzk/app/databinding/ItemCollectionBinding;->btnMore:Lcom/google/android/material/button/MaterialButton;

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Landroid/view/View;

    .restart local v5    # "$this$isVisible$iv":Landroid/view/View;
    const/4 v6, 0x0

    .restart local v6    # "value$iv":Z
    const/4 v9, 0x0

    .line 135
    .local v9, "$i$f$setVisible":I
    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 136
    nop

    .line 80
    .end local v5    # "$this$isVisible$iv":Landroid/view/View;
    .end local v6    # "value$iv":Z
    .end local v9    # "$i$f$setVisible":I
    invoke-virtual {v4}, Lcom/muzk/app/databinding/ItemCollectionBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v5

    new-instance v6, Lcom/muzk/app/ui/library/LibraryAdapter$$ExternalSyntheticLambda4;

    invoke-direct {v6, v0, v3}, Lcom/muzk/app/ui/library/LibraryAdapter$$ExternalSyntheticLambda4;-><init>(Lcom/muzk/app/ui/library/LibraryAdapter;Lcom/muzk/app/ui/library/LibraryRow;)V

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    nop

    .line 73
    .end local v4    # "$this$onBindViewHolder_u24lambda_u248":Lcom/muzk/app/databinding/ItemCollectionBinding;
    .end local v7    # "$i$a$-with-LibraryAdapter$onBindViewHolder$3":I
    goto/16 :goto_6

    .line 82
    :cond_6
    instance-of v4, v3, Lcom/muzk/app/ui/library/LibraryRow$PlaylistItem;

    if-eqz v4, :cond_b

    move-object v4, v1

    check-cast v4, Lcom/muzk/app/ui/library/LibraryAdapter$CollectionVH;

    invoke-virtual {v4}, Lcom/muzk/app/ui/library/LibraryAdapter$CollectionVH;->getB()Lcom/muzk/app/databinding/ItemCollectionBinding;

    move-result-object v4

    .local v4, "$this$onBindViewHolder_u24lambda_u2411":Lcom/muzk/app/databinding/ItemCollectionBinding;
    const/4 v5, 0x0

    .line 83
    .local v5, "$i$a$-with-LibraryAdapter$onBindViewHolder$4":I
    move-object v7, v3

    check-cast v7, Lcom/muzk/app/ui/library/LibraryRow$PlaylistItem;

    invoke-virtual {v7}, Lcom/muzk/app/ui/library/LibraryRow$PlaylistItem;->getPlaylist()Lcom/muzk/app/data/Playlist;

    move-result-object v7

    invoke-virtual {v7}, Lcom/muzk/app/data/Playlist;->getId()Ljava/lang/String;

    move-result-object v7

    const-string v9, "liked"

    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    .line 85
    .local v7, "liked":Z
    iget-object v9, v4, Lcom/muzk/app/databinding/ItemCollectionBinding;->iconBox:Landroid/widget/FrameLayout;

    if-eqz v7, :cond_7

    sget v10, Lcom/muzk/app/R$drawable;->bg_liked_rounded:I

    goto :goto_3

    :cond_7
    sget v10, Lcom/muzk/app/R$drawable;->bg_icon_tile:I

    :goto_3
    invoke-virtual {v9, v10}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 86
    iget-object v9, v4, Lcom/muzk/app/databinding/ItemCollectionBinding;->icon:Landroid/widget/ImageView;

    .line 87
    if-eqz v7, :cond_8

    const/4 v10, -0x1

    goto :goto_4

    :cond_8
    iget-object v10, v4, Lcom/muzk/app/databinding/ItemCollectionBinding;->icon:Landroid/widget/ImageView;

    check-cast v10, Landroid/view/View;

    sget v11, Lcom/google/android/material/R$attr;->colorOnSurfaceVariant:I

    invoke-static {v10, v11}, Lcom/google/android/material/color/MaterialColors;->getColor(Landroid/view/View;I)I

    move-result v10

    .line 86
    :goto_4
    invoke-static {v10}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 89
    iget-object v9, v4, Lcom/muzk/app/databinding/ItemCollectionBinding;->icon:Landroid/widget/ImageView;

    if-eqz v7, :cond_9

    sget v10, Lcom/muzk/app/R$drawable;->ic_favorite:I

    goto :goto_5

    :cond_9
    sget v10, Lcom/muzk/app/R$drawable;->ic_playlist:I

    :goto_5
    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 90
    iget-object v9, v4, Lcom/muzk/app/databinding/ItemCollectionBinding;->title:Landroid/widget/TextView;

    move-object v10, v3

    check-cast v10, Lcom/muzk/app/ui/library/LibraryRow$PlaylistItem;

    invoke-virtual {v10}, Lcom/muzk/app/ui/library/LibraryRow$PlaylistItem;->getPlaylist()Lcom/muzk/app/data/Playlist;

    move-result-object v10

    invoke-virtual {v10}, Lcom/muzk/app/data/Playlist;->getName()Ljava/lang/String;

    move-result-object v10

    check-cast v10, Ljava/lang/CharSequence;

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v9, v4, Lcom/muzk/app/databinding/ItemCollectionBinding;->subtitle:Landroid/widget/TextView;

    invoke-virtual {v4}, Lcom/muzk/app/databinding/ItemCollectionBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v10

    sget v11, Lcom/muzk/app/R$string;->playlist_subtitle:I

    move-object v12, v3

    check-cast v12, Lcom/muzk/app/ui/library/LibraryRow$PlaylistItem;

    invoke-virtual {v12}, Lcom/muzk/app/ui/library/LibraryRow$PlaylistItem;->getCount()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    filled-new-array {v12}, [Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    check-cast v10, Ljava/lang/CharSequence;

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v9, v4, Lcom/muzk/app/databinding/ItemCollectionBinding;->btnMore:Lcom/google/android/material/button/MaterialButton;

    invoke-static {v9, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v9, Landroid/view/View;

    xor-int/lit8 v6, v7, 0x1

    .restart local v6    # "value$iv":Z
    .local v9, "$this$isVisible$iv":Landroid/view/View;
    const/4 v10, 0x0

    .line 137
    .local v10, "$i$f$setVisible":I
    if-eqz v6, :cond_a

    const/4 v8, 0x0

    :cond_a
    invoke-virtual {v9, v8}, Landroid/view/View;->setVisibility(I)V

    .line 138
    nop

    .line 93
    .end local v6    # "value$iv":Z
    .end local v9    # "$this$isVisible$iv":Landroid/view/View;
    .end local v10    # "$i$f$setVisible":I
    iget-object v6, v4, Lcom/muzk/app/databinding/ItemCollectionBinding;->btnMore:Lcom/google/android/material/button/MaterialButton;

    new-instance v8, Lcom/muzk/app/ui/library/LibraryAdapter$$ExternalSyntheticLambda5;

    invoke-direct {v8, v0, v3}, Lcom/muzk/app/ui/library/LibraryAdapter$$ExternalSyntheticLambda5;-><init>(Lcom/muzk/app/ui/library/LibraryAdapter;Lcom/muzk/app/ui/library/LibraryRow;)V

    invoke-virtual {v6, v8}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    invoke-virtual {v4}, Lcom/muzk/app/databinding/ItemCollectionBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v6

    new-instance v8, Lcom/muzk/app/ui/library/LibraryAdapter$$ExternalSyntheticLambda6;

    invoke-direct {v8, v0, v3}, Lcom/muzk/app/ui/library/LibraryAdapter$$ExternalSyntheticLambda6;-><init>(Lcom/muzk/app/ui/library/LibraryAdapter;Lcom/muzk/app/ui/library/LibraryRow;)V

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    nop

    .line 82
    .end local v4    # "$this$onBindViewHolder_u24lambda_u2411":Lcom/muzk/app/databinding/ItemCollectionBinding;
    .end local v5    # "$i$a$-with-LibraryAdapter$onBindViewHolder$4":I
    .end local v7    # "liked":Z
    nop

    .line 97
    .end local v3    # "row":Lcom/muzk/app/ui/library/LibraryRow;
    :goto_6
    return-void

    .line 49
    .restart local v3    # "row":Lcom/muzk/app/ui/library/LibraryRow;
    :cond_b
    new-instance v4, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v4}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v4
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 41
    .local v0, "inf":Landroid/view/LayoutInflater;
    const-string v1, "inflate(...)"

    const/4 v2, 0x0

    packed-switch p2, :pswitch_data_0

    .line 44
    new-instance v3, Lcom/muzk/app/ui/library/LibraryAdapter$CollectionVH;

    invoke-static {v0, p1, v2}, Lcom/muzk/app/databinding/ItemCollectionBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/muzk/app/databinding/ItemCollectionBinding;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, v2}, Lcom/muzk/app/ui/library/LibraryAdapter$CollectionVH;-><init>(Lcom/muzk/app/databinding/ItemCollectionBinding;)V

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    goto :goto_0

    .line 43
    :pswitch_0
    new-instance v3, Lcom/muzk/app/ui/library/LibraryAdapter$TrackVH;

    invoke-static {v0, p1, v2}, Lcom/muzk/app/databinding/ItemLocalTrackBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/muzk/app/databinding/ItemLocalTrackBinding;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, v2}, Lcom/muzk/app/ui/library/LibraryAdapter$TrackVH;-><init>(Lcom/muzk/app/databinding/ItemLocalTrackBinding;)V

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    goto :goto_0

    .line 42
    :pswitch_1
    new-instance v3, Lcom/muzk/app/ui/library/LibraryAdapter$HeaderVH;

    invoke-static {v0, p1, v2}, Lcom/muzk/app/databinding/ItemHeaderBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/muzk/app/databinding/ItemHeaderBinding;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, v2}, Lcom/muzk/app/ui/library/LibraryAdapter$HeaderVH;-><init>(Lcom/muzk/app/databinding/ItemHeaderBinding;)V

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 41
    :goto_0
    return-object v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
