.class public final Lcom/muzk/app/ui/library/LibraryFragment;
.super Landroidx/fragment/app/Fragment;
.source "LibraryFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/muzk/app/ui/library/LibraryFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLibraryFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LibraryFragment.kt\ncom/muzk/app/ui/library/LibraryFragment\n+ 2 FragmentViewModelLazy.kt\nandroidx/fragment/app/FragmentViewModelLazyKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 5 View.kt\nandroidx/core/view/ViewKt\n+ 6 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 7 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,346:1\n172#2,9:347\n172#2,9:356\n216#3,2:365\n1755#4,3:367\n360#4,7:378\n1557#4:385\n1628#4,3:386\n1557#4:389\n1628#4,3:390\n1557#4:393\n1628#4,3:394\n1557#4:399\n1628#4,3:400\n1863#4,2:403\n295#4,2:406\n1557#4:408\n1628#4,3:409\n1557#4:412\n1628#4,3:413\n257#5,2:370\n257#5,2:372\n257#5,2:374\n257#5,2:376\n37#6,2:397\n1#7:405\n*S KotlinDebug\n*F\n+ 1 LibraryFragment.kt\ncom/muzk/app/ui/library/LibraryFragment\n*L\n43#1:347,9\n44#1:356,9\n105#1:365,2\n164#1:367,3\n207#1:378,7\n208#1:385\n208#1:386,3\n254#1:389\n254#1:390,3\n256#1:393\n256#1:394,3\n311#1:399\n311#1:400,3\n314#1:403,2\n102#1:406,2\n118#1:408\n118#1:409,3\n197#1:412\n197#1:413,3\n170#1:370,2\n172#1:372,2\n177#1:374,2\n178#1:376,2\n256#1:397,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u009a\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0008\u0003\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007*\u0002\u001e!\u0018\u0000 L2\u00020\u0001:\u0001LB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J$\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020&2\u0008\u0010\'\u001a\u0004\u0018\u00010(2\u0008\u0010)\u001a\u0004\u0018\u00010*H\u0016J\u001a\u0010+\u001a\u00020,2\u0006\u0010-\u001a\u00020$2\u0008\u0010)\u001a\u0004\u0018\u00010*H\u0016J\u0008\u0010.\u001a\u00020,H\u0016J\u0008\u0010/\u001a\u00020,H\u0016J\u0010\u00100\u001a\u00020,2\u0006\u00101\u001a\u000202H\u0002J\u0010\u00103\u001a\u00020,2\u0006\u00101\u001a\u000202H\u0002J\u0010\u00104\u001a\u00020,2\u0006\u00101\u001a\u000202H\u0002J\u0010\u00105\u001a\u00020,2\u0006\u00106\u001a\u000207H\u0002J\u0010\u00108\u001a\u00020\u00152\u0006\u00101\u001a\u000202H\u0002J\u0018\u00109\u001a\u00020,2\u0006\u0010:\u001a\u00020;2\u0006\u0010<\u001a\u00020$H\u0002J\u0018\u0010=\u001a\u00020,2\u0006\u0010:\u001a\u00020>2\u0006\u0010<\u001a\u00020$H\u0002J\u0016\u0010?\u001a\u00020,2\u000c\u0010@\u001a\u0008\u0012\u0004\u0012\u0002070AH\u0002J,\u0010B\u001a\u00020,2\u0006\u0010C\u001a\u00020\u001a2\u0006\u0010D\u001a\u00020\u00152\u0012\u0010E\u001a\u000e\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020,0FH\u0002J\u0016\u0010G\u001a\u00020,2\u000c\u0010@\u001a\u0008\u0012\u0004\u0012\u0002070AH\u0002J\u0016\u0010H\u001a\u00020,2\u000c\u0010@\u001a\u0008\u0012\u0004\u0012\u0002070AH\u0002J\u0010\u0010I\u001a\u00020,2\u0006\u0010J\u001a\u00020\u0015H\u0002J\u0008\u0010K\u001a\u00020,H\u0016R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u00020\u00058BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008R\u001b\u0010\t\u001a\u00020\n8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000b\u0010\u000cR\u001b\u0010\u000f\u001a\u00020\u00108BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010\u000e\u001a\u0004\u0008\u0011\u0010\u0012R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0016\u001a\u0010\u0012\u000c\u0012\n \u0018*\u0004\u0018\u00010\u00150\u00150\u0017X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u001aX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u001b\u001a\u0010\u0012\u000c\u0012\n \u0018*\u0004\u0018\u00010\u001c0\u001c0\u0017X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001d\u001a\u00020\u001eX\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u001fR\u0010\u0010 \u001a\u00020!X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\"\u00a8\u0006M"
    }
    d2 = {
        "Lcom/muzk/app/ui/library/LibraryFragment;",
        "Landroidx/fragment/app/Fragment;",
        "<init>",
        "()V",
        "_binding",
        "Lcom/muzk/app/databinding/FragmentLibraryBinding;",
        "binding",
        "getBinding",
        "()Lcom/muzk/app/databinding/FragmentLibraryBinding;",
        "vm",
        "Lcom/muzk/app/ui/library/LibraryViewModel;",
        "getVm",
        "()Lcom/muzk/app/ui/library/LibraryViewModel;",
        "vm$delegate",
        "Lkotlin/Lazy;",
        "player",
        "Lcom/muzk/app/playback/PlayerViewModel;",
        "getPlayer",
        "()Lcom/muzk/app/playback/PlayerViewModel;",
        "player$delegate",
        "audioPermission",
        "",
        "permissionLauncher",
        "Landroidx/activity/result/ActivityResultLauncher;",
        "kotlin.jvm.PlatformType",
        "pendingDeleteCount",
        "",
        "deleteLauncher",
        "Landroidx/activity/result/IntentSenderRequest;",
        "mediaObserver",
        "com/muzk/app/ui/library/LibraryFragment$mediaObserver$1",
        "Lcom/muzk/app/ui/library/LibraryFragment$mediaObserver$1;",
        "backCallback",
        "com/muzk/app/ui/library/LibraryFragment$backCallback$1",
        "Lcom/muzk/app/ui/library/LibraryFragment$backCallback$1;",
        "onCreateView",
        "Landroid/view/View;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onViewCreated",
        "",
        "view",
        "onStart",
        "onStop",
        "renderEmpty",
        "s",
        "Lcom/muzk/app/ui/library/LibraryUiState;",
        "renderSelection",
        "renderFab",
        "playFrom",
        "track",
        "Lcom/muzk/app/data/LocalTrack;",
        "sourceName",
        "showTrackMenu",
        "row",
        "Lcom/muzk/app/ui/library/LibraryRow$Track;",
        "anchor",
        "showPlaylistMenu",
        "Lcom/muzk/app/ui/library/LibraryRow$PlaylistItem;",
        "pickPlaylist",
        "tracks",
        "",
        "askName",
        "titleRes",
        "initial",
        "onOk",
        "Lkotlin/Function1;",
        "confirmDelete",
        "deleteFiles",
        "snack",
        "text",
        "onDestroyView",
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
.field private static final CHIPS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/muzk/app/ui/library/LibraryTab;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/muzk/app/ui/library/LibraryFragment$Companion;


# instance fields
.field private _binding:Lcom/muzk/app/databinding/FragmentLibraryBinding;

.field private final audioPermission:Ljava/lang/String;

.field private final backCallback:Lcom/muzk/app/ui/library/LibraryFragment$backCallback$1;

.field private final deleteLauncher:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Landroidx/activity/result/IntentSenderRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final mediaObserver:Lcom/muzk/app/ui/library/LibraryFragment$mediaObserver$1;

.field private pendingDeleteCount:I

.field private final permissionLauncher:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final player$delegate:Lkotlin/Lazy;

.field private final vm$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$12uF-ZOue8mGfcx8RE4L4zwDT8I(Lcom/muzk/app/ui/library/LibraryFragment;Lcom/google/android/material/chip/ChipGroup;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/muzk/app/ui/library/LibraryFragment;->onViewCreated$lambda$12(Lcom/muzk/app/ui/library/LibraryFragment;Lcom/google/android/material/chip/ChipGroup;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8KGVTKvySSj1qy-cR9n_-DKqjyA(Lcom/muzk/app/ui/library/LibraryFragment;Lcom/muzk/app/ui/library/LibraryRow$Folder;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/muzk/app/ui/library/LibraryFragment;->onViewCreated$lambda$5(Lcom/muzk/app/ui/library/LibraryFragment;Lcom/muzk/app/ui/library/LibraryRow$Folder;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$95zjsGCPikXNPf_Z42Hnhwx-_LM(Lcom/muzk/app/ui/library/LibraryFragment;Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/muzk/app/ui/library/LibraryFragment;->permissionLauncher$lambda$0(Lcom/muzk/app/ui/library/LibraryFragment;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BawwAiyOoPKNrt6ksnssaiOc2vY(Lcom/muzk/app/ui/library/LibraryFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/muzk/app/ui/library/LibraryFragment;->onViewCreated$lambda$19(Lcom/muzk/app/ui/library/LibraryFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BqGJuljW2aYomz1le63RdSaTcqI(Lcom/muzk/app/ui/library/LibraryFragment;Lcom/muzk/app/ui/library/LibraryRow$Track;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/muzk/app/ui/library/LibraryFragment;->onViewCreated$lambda$4(Lcom/muzk/app/ui/library/LibraryFragment;Lcom/muzk/app/ui/library/LibraryRow$Track;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Mf8lgelvlmH0xGIAF0G7UC6COPs(Lcom/muzk/app/ui/library/LibraryFragment;Lcom/muzk/app/ui/library/LibraryUiState;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/muzk/app/ui/library/LibraryFragment;->renderFab$lambda$24(Lcom/muzk/app/ui/library/LibraryFragment;Lcom/muzk/app/ui/library/LibraryUiState;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MqGrOYNtwIgTpU6koZy12qD-69I(Lcom/muzk/app/ui/library/LibraryFragment;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/muzk/app/ui/library/LibraryFragment;->onViewCreated$lambda$8(Lcom/muzk/app/ui/library/LibraryFragment;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$NBESwnU7BPJph7tXUfeqhgwmtaA(Lcom/muzk/app/ui/library/LibraryFragment;Landroidx/activity/result/ActivityResult;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/muzk/app/ui/library/LibraryFragment;->deleteLauncher$lambda$1(Lcom/muzk/app/ui/library/LibraryFragment;Landroidx/activity/result/ActivityResult;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Qf0nbjoxPjMEPeyPYcQjuXdGUMA(Ljava/util/List;Lcom/muzk/app/ui/library/LibraryFragment;Ljava/util/List;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/muzk/app/ui/library/LibraryFragment;->pickPlaylist$lambda$34(Ljava/util/List;Lcom/muzk/app/ui/library/LibraryFragment;Ljava/util/List;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$WHm3s1AhzILhK9B7_FBL5kb8GTE(Lcom/muzk/app/ui/library/LibraryFragment;Lcom/muzk/app/ui/library/LibraryRow$PlaylistItem;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/muzk/app/ui/library/LibraryFragment;->onViewCreated$lambda$6(Lcom/muzk/app/ui/library/LibraryFragment;Lcom/muzk/app/ui/library/LibraryRow$PlaylistItem;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$X40moltWkGDhVDzH2VyS1jmEJ7k(Lcom/muzk/app/ui/library/LibraryFragment;Lcom/muzk/app/ui/library/LibraryRow$PlaylistItem;Landroid/view/MenuItem;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/muzk/app/ui/library/LibraryFragment;->showPlaylistMenu$lambda$30(Lcom/muzk/app/ui/library/LibraryFragment;Lcom/muzk/app/ui/library/LibraryRow$PlaylistItem;Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$c9GFuipfdPTeLtopll_6V6Ow7nQ(Lcom/muzk/app/ui/library/LibraryFragment;Lcom/muzk/app/ui/library/LibraryRow$PlaylistItem;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/muzk/app/ui/library/LibraryFragment;->showPlaylistMenu$lambda$30$lambda$29(Lcom/muzk/app/ui/library/LibraryFragment;Lcom/muzk/app/ui/library/LibraryRow$PlaylistItem;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$cH3clxTnvufAyWsIS4j8BxwjyHI(Lcom/muzk/app/ui/library/LibraryFragment;Lcom/muzk/app/ui/library/LibraryRow$Track;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/muzk/app/ui/library/LibraryFragment;->onViewCreated$lambda$2(Lcom/muzk/app/ui/library/LibraryFragment;Lcom/muzk/app/ui/library/LibraryRow$Track;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$f5mX0PAMGQkPiOexuaInQjaSweI(Lcom/muzk/app/ui/library/LibraryFragment;Lcom/muzk/app/ui/library/LibraryRow$PlaylistItem;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/muzk/app/ui/library/LibraryFragment;->showPlaylistMenu$lambda$30$lambda$28(Lcom/muzk/app/ui/library/LibraryFragment;Lcom/muzk/app/ui/library/LibraryRow$PlaylistItem;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$huFiTikdHsh9_ZlIq3Zy2LnKkFU(Lcom/muzk/app/ui/library/LibraryFragment;Ljava/util/List;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/muzk/app/ui/library/LibraryFragment;->confirmDelete$lambda$36(Lcom/muzk/app/ui/library/LibraryFragment;Ljava/util/List;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$iQa0GBFZY5eAnYU_mbtCZXSdAOE(Lcom/muzk/app/ui/library/LibraryFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/muzk/app/ui/library/LibraryFragment;->onViewCreated$lambda$15(Lcom/muzk/app/ui/library/LibraryFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kFGC--cf390SXevkJnctcA6Y_oE(Lcom/muzk/app/ui/library/LibraryFragment;Lcom/muzk/app/ui/library/LibraryTab;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/muzk/app/ui/library/LibraryFragment;->onViewCreated$lambda$14$lambda$13(Lcom/muzk/app/ui/library/LibraryFragment;Lcom/muzk/app/ui/library/LibraryTab;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kytsgzJQI5dQp4Ki9Rh_9gMpWLo(Lcom/muzk/app/ui/library/LibraryFragment;Landroid/view/MenuItem;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/muzk/app/ui/library/LibraryFragment;->onViewCreated$lambda$18(Lcom/muzk/app/ui/library/LibraryFragment;Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$lbP7etZeU01BUpgVxw5tc5eqQiQ(Lcom/muzk/app/ui/library/LibraryFragment;Ljava/util/List;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/muzk/app/ui/library/LibraryFragment;->pickPlaylist$lambda$34$lambda$33(Lcom/muzk/app/ui/library/LibraryFragment;Ljava/util/List;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$lu6yYpCoNogAX7b2_xpgluaaOas(Lcom/muzk/app/ui/library/LibraryFragment;Lcom/muzk/app/ui/library/LibraryRow$Track;Landroid/view/MenuItem;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/muzk/app/ui/library/LibraryFragment;->showTrackMenu$lambda$27(Lcom/muzk/app/ui/library/LibraryFragment;Lcom/muzk/app/ui/library/LibraryRow$Track;Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$nJl8sPUfPxMaEMXT476opDi0y8I(Lcom/muzk/app/ui/library/LibraryFragment;Lcom/muzk/app/ui/library/LibraryRow$PlaylistItem;Landroid/view/View;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/muzk/app/ui/library/LibraryFragment;->onViewCreated$lambda$7(Lcom/muzk/app/ui/library/LibraryFragment;Lcom/muzk/app/ui/library/LibraryRow$PlaylistItem;Landroid/view/View;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$oOAlQhoKipknrFnFUGAc-ldInrY(Lcom/muzk/app/ui/library/LibraryFragment;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/muzk/app/ui/library/LibraryFragment;->renderFab$lambda$22$lambda$21(Lcom/muzk/app/ui/library/LibraryFragment;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$rmbJ8MweE4-XZdNwHKpyQY76ue0(Lcom/muzk/app/ui/library/LibraryFragment;Lcom/muzk/app/ui/library/LibraryRow$Track;Landroid/view/View;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/muzk/app/ui/library/LibraryFragment;->onViewCreated$lambda$3(Lcom/muzk/app/ui/library/LibraryFragment;Lcom/muzk/app/ui/library/LibraryRow$Track;Landroid/view/View;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$vorFQ_cWPDzbcKh8pGPLMxxeJbw(Lcom/muzk/app/databinding/DialogTextInputBinding;Lkotlin/jvm/functions/Function1;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/muzk/app/ui/library/LibraryFragment;->askName$lambda$35(Lcom/muzk/app/databinding/DialogTextInputBinding;Lkotlin/jvm/functions/Function1;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$yhEPfkvHKg11uuNvL8baXbOcKHc(Lcom/muzk/app/ui/library/LibraryFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/muzk/app/ui/library/LibraryFragment;->renderFab$lambda$22(Lcom/muzk/app/ui/library/LibraryFragment;Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/muzk/app/ui/library/LibraryFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/muzk/app/ui/library/LibraryFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/muzk/app/ui/library/LibraryFragment;->Companion:Lcom/muzk/app/ui/library/LibraryFragment$Companion;

    .line 333
    nop

    .line 334
    const/4 v0, 0x3

    new-array v0, v0, [Lkotlin/Pair;

    sget-object v1, Lcom/muzk/app/ui/library/LibraryTab;->PLAYLISTS:Lcom/muzk/app/ui/library/LibraryTab;

    sget v2, Lcom/muzk/app/R$id;->chip_playlists:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 335
    sget-object v1, Lcom/muzk/app/ui/library/LibraryTab;->TRACKS:Lcom/muzk/app/ui/library/LibraryTab;

    sget v2, Lcom/muzk/app/R$id;->chip_tracks:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 334
    nop

    .line 336
    sget-object v1, Lcom/muzk/app/ui/library/LibraryTab;->FOLDERS:Lcom/muzk/app/ui/library/LibraryTab;

    sget v2, Lcom/muzk/app/R$id;->chip_folders:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 334
    nop

    .line 333
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/muzk/app/ui/library/LibraryFragment;->CHIPS:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .line 38
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 43
    move-object v0, p0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 347
    .local v0, "$this$activityViewModels_u24default$iv":Landroidx/fragment/app/Fragment;
    nop

    .line 348
    const/4 v1, 0x0

    .line 347
    .local v1, "extrasProducer$iv":Lkotlin/jvm/functions/Function0;
    nop

    .line 349
    const/4 v2, 0x0

    .line 347
    .local v2, "factoryProducer$iv":Lkotlin/jvm/functions/Function0;
    const/4 v3, 0x0

    .line 350
    .local v3, "$i$f$activityViewModels":I
    const-class v4, Lcom/muzk/app/ui/library/LibraryViewModel;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    new-instance v5, Lcom/muzk/app/ui/library/LibraryFragment$special$$inlined$activityViewModels$default$1;

    invoke-direct {v5, v0}, Lcom/muzk/app/ui/library/LibraryFragment$special$$inlined$activityViewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    check-cast v5, Lkotlin/jvm/functions/Function0;

    new-instance v6, Lcom/muzk/app/ui/library/LibraryFragment$special$$inlined$activityViewModels$default$2;

    invoke-direct {v6, v1, v0}, Lcom/muzk/app/ui/library/LibraryFragment$special$$inlined$activityViewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/fragment/app/Fragment;)V

    check-cast v6, Lkotlin/jvm/functions/Function0;

    .line 353
    nop

    .line 350
    new-instance v7, Lcom/muzk/app/ui/library/LibraryFragment$special$$inlined$activityViewModels$default$3;

    invoke-direct {v7, v0}, Lcom/muzk/app/ui/library/LibraryFragment$special$$inlined$activityViewModels$default$3;-><init>(Landroidx/fragment/app/Fragment;)V

    check-cast v7, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v4, v5, v6, v7}, Landroidx/fragment/app/FragmentViewModelLazyKt;->createViewModelLazy(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v4

    .line 355
    nop

    .line 43
    .end local v0    # "$this$activityViewModels_u24default$iv":Landroidx/fragment/app/Fragment;
    .end local v1    # "extrasProducer$iv":Lkotlin/jvm/functions/Function0;
    .end local v2    # "factoryProducer$iv":Lkotlin/jvm/functions/Function0;
    .end local v3    # "$i$f$activityViewModels":I
    iput-object v4, p0, Lcom/muzk/app/ui/library/LibraryFragment;->vm$delegate:Lkotlin/Lazy;

    .line 44
    move-object v0, p0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 356
    .restart local v0    # "$this$activityViewModels_u24default$iv":Landroidx/fragment/app/Fragment;
    nop

    .line 357
    const/4 v1, 0x0

    .line 356
    .restart local v1    # "extrasProducer$iv":Lkotlin/jvm/functions/Function0;
    nop

    .line 358
    const/4 v2, 0x0

    .line 356
    .restart local v2    # "factoryProducer$iv":Lkotlin/jvm/functions/Function0;
    const/4 v3, 0x0

    .line 359
    .restart local v3    # "$i$f$activityViewModels":I
    const-class v4, Lcom/muzk/app/playback/PlayerViewModel;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    new-instance v5, Lcom/muzk/app/ui/library/LibraryFragment$special$$inlined$activityViewModels$default$4;

    invoke-direct {v5, v0}, Lcom/muzk/app/ui/library/LibraryFragment$special$$inlined$activityViewModels$default$4;-><init>(Landroidx/fragment/app/Fragment;)V

    check-cast v5, Lkotlin/jvm/functions/Function0;

    new-instance v6, Lcom/muzk/app/ui/library/LibraryFragment$special$$inlined$activityViewModels$default$5;

    invoke-direct {v6, v1, v0}, Lcom/muzk/app/ui/library/LibraryFragment$special$$inlined$activityViewModels$default$5;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/fragment/app/Fragment;)V

    check-cast v6, Lkotlin/jvm/functions/Function0;

    .line 362
    nop

    .line 359
    new-instance v7, Lcom/muzk/app/ui/library/LibraryFragment$special$$inlined$activityViewModels$default$6;

    invoke-direct {v7, v0}, Lcom/muzk/app/ui/library/LibraryFragment$special$$inlined$activityViewModels$default$6;-><init>(Landroidx/fragment/app/Fragment;)V

    check-cast v7, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v4, v5, v6, v7}, Landroidx/fragment/app/FragmentViewModelLazyKt;->createViewModelLazy(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v4

    .line 364
    nop

    .line 44
    .end local v0    # "$this$activityViewModels_u24default$iv":Landroidx/fragment/app/Fragment;
    .end local v1    # "extrasProducer$iv":Lkotlin/jvm/functions/Function0;
    .end local v2    # "factoryProducer$iv":Lkotlin/jvm/functions/Function0;
    .end local v3    # "$i$f$activityViewModels":I
    iput-object v4, p0, Lcom/muzk/app/ui/library/LibraryFragment;->player$delegate:Lkotlin/Lazy;

    .line 47
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_0

    const-string v0, "android.permission.READ_MEDIA_AUDIO"

    goto :goto_0

    .line 48
    :cond_0
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    .line 47
    :goto_0
    iput-object v0, p0, Lcom/muzk/app/ui/library/LibraryFragment;->audioPermission:Ljava/lang/String;

    .line 51
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$RequestPermission;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$RequestPermission;-><init>()V

    check-cast v0, Landroidx/activity/result/contract/ActivityResultContract;

    new-instance v1, Lcom/muzk/app/ui/library/LibraryFragment$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0}, Lcom/muzk/app/ui/library/LibraryFragment$$ExternalSyntheticLambda13;-><init>(Lcom/muzk/app/ui/library/LibraryFragment;)V

    invoke-virtual {p0, v0, v1}, Lcom/muzk/app/ui/library/LibraryFragment;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    const-string v1, "registerForActivityResult(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/muzk/app/ui/library/LibraryFragment;->permissionLauncher:Landroidx/activity/result/ActivityResultLauncher;

    .line 57
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$StartIntentSenderForResult;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$StartIntentSenderForResult;-><init>()V

    check-cast v0, Landroidx/activity/result/contract/ActivityResultContract;

    new-instance v2, Lcom/muzk/app/ui/library/LibraryFragment$$ExternalSyntheticLambda14;

    invoke-direct {v2, p0}, Lcom/muzk/app/ui/library/LibraryFragment$$ExternalSyntheticLambda14;-><init>(Lcom/muzk/app/ui/library/LibraryFragment;)V

    invoke-virtual {p0, v0, v2}, Lcom/muzk/app/ui/library/LibraryFragment;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/muzk/app/ui/library/LibraryFragment;->deleteLauncher:Landroidx/activity/result/ActivityResultLauncher;

    .line 66
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/muzk/app/ui/library/LibraryFragment$mediaObserver$1;

    invoke-direct {v1, p0, v0}, Lcom/muzk/app/ui/library/LibraryFragment$mediaObserver$1;-><init>(Lcom/muzk/app/ui/library/LibraryFragment;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/muzk/app/ui/library/LibraryFragment;->mediaObserver:Lcom/muzk/app/ui/library/LibraryFragment$mediaObserver$1;

    .line 72
    new-instance v0, Lcom/muzk/app/ui/library/LibraryFragment$backCallback$1;

    invoke-direct {v0, p0}, Lcom/muzk/app/ui/library/LibraryFragment$backCallback$1;-><init>(Lcom/muzk/app/ui/library/LibraryFragment;)V

    iput-object v0, p0, Lcom/muzk/app/ui/library/LibraryFragment;->backCallback:Lcom/muzk/app/ui/library/LibraryFragment$backCallback$1;

    .line 38
    return-void
.end method

.method public static final synthetic access$getBackCallback$p(Lcom/muzk/app/ui/library/LibraryFragment;)Lcom/muzk/app/ui/library/LibraryFragment$backCallback$1;
    .locals 1
    .param p0, "$this"    # Lcom/muzk/app/ui/library/LibraryFragment;

    .line 38
    iget-object v0, p0, Lcom/muzk/app/ui/library/LibraryFragment;->backCallback:Lcom/muzk/app/ui/library/LibraryFragment$backCallback$1;

    return-object v0
.end method

.method public static final synthetic access$getBinding(Lcom/muzk/app/ui/library/LibraryFragment;)Lcom/muzk/app/databinding/FragmentLibraryBinding;
    .locals 1
    .param p0, "$this"    # Lcom/muzk/app/ui/library/LibraryFragment;

    .line 38
    invoke-direct {p0}, Lcom/muzk/app/ui/library/LibraryFragment;->getBinding()Lcom/muzk/app/databinding/FragmentLibraryBinding;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getCHIPS$cp()Ljava/util/Map;
    .locals 1

    .line 38
    sget-object v0, Lcom/muzk/app/ui/library/LibraryFragment;->CHIPS:Ljava/util/Map;

    return-object v0
.end method

.method public static final synthetic access$getVm(Lcom/muzk/app/ui/library/LibraryFragment;)Lcom/muzk/app/ui/library/LibraryViewModel;
    .locals 1
    .param p0, "$this"    # Lcom/muzk/app/ui/library/LibraryFragment;

    .line 38
    invoke-direct {p0}, Lcom/muzk/app/ui/library/LibraryFragment;->getVm()Lcom/muzk/app/ui/library/LibraryViewModel;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$renderEmpty(Lcom/muzk/app/ui/library/LibraryFragment;Lcom/muzk/app/ui/library/LibraryUiState;)V
    .locals 0
    .param p0, "$this"    # Lcom/muzk/app/ui/library/LibraryFragment;
    .param p1, "s"    # Lcom/muzk/app/ui/library/LibraryUiState;

    .line 38
    invoke-direct {p0, p1}, Lcom/muzk/app/ui/library/LibraryFragment;->renderEmpty(Lcom/muzk/app/ui/library/LibraryUiState;)V

    return-void
.end method

.method public static final synthetic access$renderFab(Lcom/muzk/app/ui/library/LibraryFragment;Lcom/muzk/app/ui/library/LibraryUiState;)V
    .locals 0
    .param p0, "$this"    # Lcom/muzk/app/ui/library/LibraryFragment;
    .param p1, "s"    # Lcom/muzk/app/ui/library/LibraryUiState;

    .line 38
    invoke-direct {p0, p1}, Lcom/muzk/app/ui/library/LibraryFragment;->renderFab(Lcom/muzk/app/ui/library/LibraryUiState;)V

    return-void
.end method

.method public static final synthetic access$renderSelection(Lcom/muzk/app/ui/library/LibraryFragment;Lcom/muzk/app/ui/library/LibraryUiState;)V
    .locals 0
    .param p0, "$this"    # Lcom/muzk/app/ui/library/LibraryFragment;
    .param p1, "s"    # Lcom/muzk/app/ui/library/LibraryUiState;

    .line 38
    invoke-direct {p0, p1}, Lcom/muzk/app/ui/library/LibraryFragment;->renderSelection(Lcom/muzk/app/ui/library/LibraryUiState;)V

    return-void
.end method

.method private final askName(ILjava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 4
    .param p1, "titleRes"    # I
    .param p2, "initial"    # Ljava/lang/String;
    .param p3, "onOk"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 281
    invoke-virtual {p0}, Lcom/muzk/app/ui/library/LibraryFragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/muzk/app/databinding/DialogTextInputBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/muzk/app/databinding/DialogTextInputBinding;

    move-result-object v0

    const-string v1, "inflate(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 282
    .local v0, "input":Lcom/muzk/app/databinding/DialogTextInputBinding;
    iget-object v1, v0, Lcom/muzk/app/databinding/DialogTextInputBinding;->input:Lcom/google/android/material/textfield/TextInputEditText;

    move-object v2, p2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    .line 283
    new-instance v1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-virtual {p0}, Lcom/muzk/app/ui/library/LibraryFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    .line 284
    invoke-virtual {v1, p1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(I)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v1

    .line 285
    invoke-virtual {v0}, Lcom/muzk/app/databinding/DialogTextInputBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setView(Landroid/view/View;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v1

    .line 286
    sget v2, Lcom/muzk/app/R$string;->cancel:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v1

    .line 287
    sget v2, Lcom/muzk/app/R$string;->save:I

    new-instance v3, Lcom/muzk/app/ui/library/LibraryFragment$$ExternalSyntheticLambda6;

    invoke-direct {v3, v0, p3}, Lcom/muzk/app/ui/library/LibraryFragment$$ExternalSyntheticLambda6;-><init>(Lcom/muzk/app/databinding/DialogTextInputBinding;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v1, v2, v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v1

    .line 291
    invoke-virtual {v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->show()Landroidx/appcompat/app/AlertDialog;

    .line 292
    return-void
.end method

.method private static final askName$lambda$35(Lcom/muzk/app/databinding/DialogTextInputBinding;Lkotlin/jvm/functions/Function1;Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "$input"    # Lcom/muzk/app/databinding/DialogTextInputBinding;
    .param p1, "$onOk"    # Lkotlin/jvm/functions/Function1;

    .line 288
    iget-object p2, p0, Lcom/muzk/app/databinding/DialogTextInputBinding;->input:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {p2}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    check-cast p2, Ljava/lang/CharSequence;

    invoke-static {p2}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-nez p2, :cond_1

    const-string p2, ""

    .line 289
    .local p2, "name":Ljava/lang/String;
    :cond_1
    move-object p3, p2

    check-cast p3, Ljava/lang/CharSequence;

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result p3

    if-lez p3, :cond_2

    const/4 p3, 0x1

    goto :goto_1

    :cond_2
    const/4 p3, 0x0

    :goto_1
    if-eqz p3, :cond_3

    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    :cond_3
    return-void
.end method

.method private final confirmDelete(Ljava/util/List;)V
    .locals 4
    .param p1, "tracks"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/muzk/app/data/LocalTrack;",
            ">;)V"
        }
    .end annotation

    .line 295
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 296
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    sget v0, Lcom/muzk/app/R$string;->delete_file_confirm:I

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/muzk/app/data/LocalTrack;

    invoke-virtual {v1}, Lcom/muzk/app/data/LocalTrack;->getTitle()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/muzk/app/ui/library/LibraryFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 297
    :cond_1
    invoke-virtual {p0}, Lcom/muzk/app/ui/library/LibraryFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/muzk/app/R$plurals;->delete_files_confirm:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 296
    :goto_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 298
    .local v0, "message":Ljava/lang/String;
    new-instance v1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-virtual {p0}, Lcom/muzk/app/ui/library/LibraryFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    .line 299
    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v1

    .line 300
    sget v2, Lcom/muzk/app/R$string;->cancel:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v1

    .line 301
    sget v2, Lcom/muzk/app/R$string;->delete:I

    new-instance v3, Lcom/muzk/app/ui/library/LibraryFragment$$ExternalSyntheticLambda15;

    invoke-direct {v3, p0, p1}, Lcom/muzk/app/ui/library/LibraryFragment$$ExternalSyntheticLambda15;-><init>(Lcom/muzk/app/ui/library/LibraryFragment;Ljava/util/List;)V

    invoke-virtual {v1, v2, v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v1

    .line 302
    invoke-virtual {v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->show()Landroidx/appcompat/app/AlertDialog;

    .line 303
    return-void
.end method

.method private static final confirmDelete$lambda$36(Lcom/muzk/app/ui/library/LibraryFragment;Ljava/util/List;Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "this$0"    # Lcom/muzk/app/ui/library/LibraryFragment;
    .param p1, "$tracks"    # Ljava/util/List;

    .line 301
    invoke-direct {p0, p1}, Lcom/muzk/app/ui/library/LibraryFragment;->deleteFiles(Ljava/util/List;)V

    return-void
.end method

.method private final deleteFiles(Ljava/util/List;)V
    .locals 12
    .param p1, "tracks"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/muzk/app/data/LocalTrack;",
            ">;)V"
        }
    .end annotation

    .line 307
    const-string v0, "getIntentSender(...)"

    invoke-virtual {p0}, Lcom/muzk/app/ui/library/LibraryFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 308
    .local v1, "resolver":Landroid/content/ContentResolver;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    iput v2, p0, Lcom/muzk/app/ui/library/LibraryFragment;->pendingDeleteCount:I

    .line 309
    nop

    .line 310
    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1e

    if-lt v2, v3, :cond_1

    .line 311
    move-object v2, p1

    check-cast v2, Ljava/lang/Iterable;

    .local v2, "$this$map$iv":Ljava/lang/Iterable;
    const/4 v3, 0x0

    .line 399
    .local v3, "$i$f$map":I
    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v2, v5}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v4, Ljava/util/Collection;

    .local v4, "destination$iv$iv":Ljava/util/Collection;
    move-object v5, v2

    .local v5, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    const/4 v6, 0x0

    .line 400
    .local v6, "$i$f$mapTo":I
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 401
    .local v8, "item$iv$iv":Ljava/lang/Object;
    move-object v9, v8

    check-cast v9, Lcom/muzk/app/data/LocalTrack;

    .local v9, "it":Lcom/muzk/app/data/LocalTrack;
    const/4 v10, 0x0

    .line 311
    .local v10, "$i$a$-map-LibraryFragment$deleteFiles$pending$1":I
    invoke-virtual {v9}, Lcom/muzk/app/data/LocalTrack;->getUri()Landroid/net/Uri;

    move-result-object v11

    .line 401
    .end local v9    # "it":Lcom/muzk/app/data/LocalTrack;
    .end local v10    # "$i$a$-map-LibraryFragment$deleteFiles$pending$1":I
    invoke-interface {v4, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 402
    .end local v8    # "item$iv$iv":Ljava/lang/Object;
    :cond_0
    nop

    .end local v4    # "destination$iv$iv":Ljava/util/Collection;
    .end local v5    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .end local v6    # "$i$f$mapTo":I
    check-cast v4, Ljava/util/List;

    .line 399
    nop

    .end local v2    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v3    # "$i$f$map":I
    check-cast v4, Ljava/util/Collection;

    .line 311
    invoke-static {v1, v4}, Landroid/provider/MediaStore;->createDeleteRequest(Landroid/content/ContentResolver;Ljava/util/Collection;)Landroid/app/PendingIntent;

    move-result-object v2

    const-string v3, "createDeleteRequest(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 312
    .local v2, "pending":Landroid/app/PendingIntent;
    iget-object v3, p0, Lcom/muzk/app/ui/library/LibraryFragment;->deleteLauncher:Landroidx/activity/result/ActivityResultLauncher;

    new-instance v4, Landroidx/activity/result/IntentSenderRequest$Builder;

    invoke-virtual {v2}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v5

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Landroidx/activity/result/IntentSenderRequest$Builder;-><init>(Landroid/content/IntentSender;)V

    invoke-virtual {v4}, Landroidx/activity/result/IntentSenderRequest$Builder;->build()Landroidx/activity/result/IntentSenderRequest;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    .end local v2    # "pending":Landroid/app/PendingIntent;
    goto :goto_2

    .line 314
    :cond_1
    move-object v2, p1

    check-cast v2, Ljava/lang/Iterable;

    .local v2, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v3, 0x0

    .line 403
    .local v3, "$i$f$forEach":I
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .local v5, "element$iv":Ljava/lang/Object;
    move-object v6, v5

    check-cast v6, Lcom/muzk/app/data/LocalTrack;

    .local v6, "it":Lcom/muzk/app/data/LocalTrack;
    const/4 v7, 0x0

    .line 314
    .local v7, "$i$a$-forEach-LibraryFragment$deleteFiles$1":I
    invoke-virtual {v6}, Lcom/muzk/app/data/LocalTrack;->getUri()Landroid/net/Uri;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v1, v8, v9, v9}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 403
    nop

    .end local v5    # "element$iv":Ljava/lang/Object;
    .end local v6    # "it":Lcom/muzk/app/data/LocalTrack;
    .end local v7    # "$i$a$-forEach-LibraryFragment$deleteFiles$1":I
    goto :goto_1

    .line 404
    :cond_2
    nop

    .line 315
    .end local v2    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v3    # "$i$f$forEach":I
    invoke-direct {p0}, Lcom/muzk/app/ui/library/LibraryFragment;->getVm()Lcom/muzk/app/ui/library/LibraryViewModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/muzk/app/ui/library/LibraryViewModel;->clearSelection()V

    .line 316
    invoke-direct {p0}, Lcom/muzk/app/ui/library/LibraryFragment;->getVm()Lcom/muzk/app/ui/library/LibraryViewModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/muzk/app/ui/library/LibraryViewModel;->reload()Lkotlinx/coroutines/Job;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 318
    :catch_0
    move-exception v2

    .line 319
    .local v2, "e":Ljava/lang/SecurityException;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1d

    if-lt v3, v4, :cond_3

    instance-of v3, v2, Landroid/app/RecoverableSecurityException;

    if-eqz v3, :cond_3

    .line 320
    iget-object v3, p0, Lcom/muzk/app/ui/library/LibraryFragment;->deleteLauncher:Landroidx/activity/result/ActivityResultLauncher;

    new-instance v4, Landroidx/activity/result/IntentSenderRequest$Builder;

    move-object v5, v2

    check-cast v5, Landroid/app/RecoverableSecurityException;

    invoke-virtual {v5}, Landroid/app/RecoverableSecurityException;->getUserAction()Landroid/app/RemoteAction;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/RemoteAction;->getActionIntent()Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v5

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Landroidx/activity/result/IntentSenderRequest$Builder;-><init>(Landroid/content/IntentSender;)V

    invoke-virtual {v4}, Landroidx/activity/result/IntentSenderRequest$Builder;->build()Landroidx/activity/result/IntentSenderRequest;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    goto :goto_2

    .line 322
    :cond_3
    invoke-virtual {v2}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    const-string v0, "Sem permiss\u00e3o para excluir"

    :cond_4
    invoke-direct {p0, v0}, Lcom/muzk/app/ui/library/LibraryFragment;->snack(Ljava/lang/String;)V

    .line 325
    .end local v2    # "e":Ljava/lang/SecurityException;
    :goto_2
    return-void
.end method

.method private static final deleteLauncher$lambda$1(Lcom/muzk/app/ui/library/LibraryFragment;Landroidx/activity/result/ActivityResult;)V
    .locals 4
    .param p0, "this$0"    # Lcom/muzk/app/ui/library/LibraryFragment;
    .param p1, "result"    # Landroidx/activity/result/ActivityResult;

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getResultCode()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 59
    invoke-direct {p0}, Lcom/muzk/app/ui/library/LibraryFragment;->getVm()Lcom/muzk/app/ui/library/LibraryViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/muzk/app/ui/library/LibraryViewModel;->clearSelection()V

    .line 60
    iget v0, p0, Lcom/muzk/app/ui/library/LibraryFragment;->pendingDeleteCount:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/muzk/app/ui/library/LibraryFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/muzk/app/R$plurals;->deleted_many:I

    iget v2, p0, Lcom/muzk/app/ui/library/LibraryFragment;->pendingDeleteCount:I

    iget v3, p0, Lcom/muzk/app/ui/library/LibraryFragment;->pendingDeleteCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getQuantityString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/muzk/app/ui/library/LibraryFragment;->snack(Ljava/lang/String;)V

    .line 62
    :cond_0
    invoke-direct {p0}, Lcom/muzk/app/ui/library/LibraryFragment;->getVm()Lcom/muzk/app/ui/library/LibraryViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/muzk/app/ui/library/LibraryViewModel;->reload()Lkotlinx/coroutines/Job;

    .line 63
    return-void
.end method

.method private final getBinding()Lcom/muzk/app/databinding/FragmentLibraryBinding;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/muzk/app/ui/library/LibraryFragment;->_binding:Lcom/muzk/app/databinding/FragmentLibraryBinding;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method

.method private final getPlayer()Lcom/muzk/app/playback/PlayerViewModel;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/muzk/app/ui/library/LibraryFragment;->player$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/muzk/app/playback/PlayerViewModel;

    return-object v0
.end method

.method private final getVm()Lcom/muzk/app/ui/library/LibraryViewModel;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/muzk/app/ui/library/LibraryFragment;->vm$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/muzk/app/ui/library/LibraryViewModel;

    return-object v0
.end method

.method private static final onViewCreated$lambda$12(Lcom/muzk/app/ui/library/LibraryFragment;Lcom/google/android/material/chip/ChipGroup;Ljava/util/List;)V
    .locals 8
    .param p0, "this$0"    # Lcom/muzk/app/ui/library/LibraryFragment;
    .param p2, "ids"    # Ljava/util/List;

    const-string v0, "<unused var>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "ids"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_3

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 405
    .local p1, "id":I
    const/4 v0, 0x0

    .line 102
    .local v0, "$i$a$-let-LibraryFragment$onViewCreated$1$1":I
    sget-object v1, Lcom/muzk/app/ui/library/LibraryFragment;->CHIPS:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .local v1, "$this$firstOrNull$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 406
    .local v2, "$i$f$firstOrNull":I
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .local v4, "element$iv":Ljava/lang/Object;
    move-object v5, v4

    check-cast v5, Ljava/util/Map$Entry;

    .local v5, "it":Ljava/util/Map$Entry;
    const/4 v6, 0x0

    .line 102
    .local v6, "$i$a$-firstOrNull-LibraryFragment$onViewCreated$1$1$1":I
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    if-ne v7, p1, :cond_1

    const/4 v7, 0x1

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    .line 406
    .end local v5    # "it":Ljava/util/Map$Entry;
    .end local v6    # "$i$a$-firstOrNull-LibraryFragment$onViewCreated$1$1$1":I
    :goto_0
    if-eqz v7, :cond_0

    goto :goto_1

    .line 407
    .end local v4    # "element$iv":Ljava/lang/Object;
    :cond_2
    const/4 v4, 0x0

    .line 102
    .end local v1    # "$this$firstOrNull$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$firstOrNull":I
    :goto_1
    check-cast v4, Ljava/util/Map$Entry;

    if-eqz v4, :cond_3

    move-object v1, v4

    .line 405
    .local v1, "it":Ljava/util/Map$Entry;
    const/4 v2, 0x0

    .line 102
    .local v2, "$i$a$-let-LibraryFragment$onViewCreated$1$1$2":I
    invoke-direct {p0}, Lcom/muzk/app/ui/library/LibraryFragment;->getVm()Lcom/muzk/app/ui/library/LibraryViewModel;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/muzk/app/ui/library/LibraryTab;

    invoke-virtual {v3, v4}, Lcom/muzk/app/ui/library/LibraryViewModel;->selectTab(Lcom/muzk/app/ui/library/LibraryTab;)V

    .line 103
    .end local v0    # "$i$a$-let-LibraryFragment$onViewCreated$1$1":I
    .end local v1    # "it":Ljava/util/Map$Entry;
    .end local v2    # "$i$a$-let-LibraryFragment$onViewCreated$1$1$2":I
    .end local p1    # "id":I
    :cond_3
    return-void
.end method

.method private static final onViewCreated$lambda$14$lambda$13(Lcom/muzk/app/ui/library/LibraryFragment;Lcom/muzk/app/ui/library/LibraryTab;Landroid/view/View;)V
    .locals 1
    .param p0, "this$0"    # Lcom/muzk/app/ui/library/LibraryFragment;
    .param p1, "$tab"    # Lcom/muzk/app/ui/library/LibraryTab;
    .param p2, "it"    # Landroid/view/View;

    .line 106
    invoke-direct {p0}, Lcom/muzk/app/ui/library/LibraryFragment;->getVm()Lcom/muzk/app/ui/library/LibraryViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/muzk/app/ui/library/LibraryViewModel;->getState()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/muzk/app/ui/library/LibraryUiState;

    invoke-virtual {v0}, Lcom/muzk/app/ui/library/LibraryUiState;->getTab()Lcom/muzk/app/ui/library/LibraryTab;

    move-result-object v0

    if-ne v0, p1, :cond_0

    invoke-direct {p0}, Lcom/muzk/app/ui/library/LibraryFragment;->getVm()Lcom/muzk/app/ui/library/LibraryViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/muzk/app/ui/library/LibraryViewModel;->back()Z

    :cond_0
    return-void
.end method

.method private static final onViewCreated$lambda$15(Lcom/muzk/app/ui/library/LibraryFragment;Landroid/view/View;)V
    .locals 1
    .param p0, "this$0"    # Lcom/muzk/app/ui/library/LibraryFragment;
    .param p1, "it"    # Landroid/view/View;

    .line 110
    invoke-direct {p0}, Lcom/muzk/app/ui/library/LibraryFragment;->getVm()Lcom/muzk/app/ui/library/LibraryViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/muzk/app/ui/library/LibraryViewModel;->clearSelection()V

    return-void
.end method

.method private static final onViewCreated$lambda$18(Lcom/muzk/app/ui/library/LibraryFragment;Landroid/view/MenuItem;)Z
    .locals 14
    .param p0, "this$0"    # Lcom/muzk/app/ui/library/LibraryFragment;
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 112
    invoke-direct {p0}, Lcom/muzk/app/ui/library/LibraryFragment;->getVm()Lcom/muzk/app/ui/library/LibraryViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/muzk/app/ui/library/LibraryViewModel;->getState()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/muzk/app/ui/library/LibraryUiState;

    .line 113
    .local v0, "s":Lcom/muzk/app/ui/library/LibraryUiState;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 114
    sget v2, Lcom/muzk/app/R$id;->sel_all:I

    if-ne v1, v2, :cond_0

    invoke-direct {p0}, Lcom/muzk/app/ui/library/LibraryFragment;->getVm()Lcom/muzk/app/ui/library/LibraryViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/muzk/app/ui/library/LibraryViewModel;->selectAll()V

    goto/16 :goto_1

    .line 115
    :cond_0
    sget v2, Lcom/muzk/app/R$id;->sel_add:I

    if-ne v1, v2, :cond_1

    invoke-virtual {v0}, Lcom/muzk/app/ui/library/LibraryUiState;->getSelected()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/muzk/app/ui/library/LibraryFragment;->pickPlaylist(Ljava/util/List;)V

    goto/16 :goto_1

    .line 116
    :cond_1
    sget v2, Lcom/muzk/app/R$id;->sel_remove:I

    if-ne v1, v2, :cond_3

    invoke-virtual {v0}, Lcom/muzk/app/ui/library/LibraryUiState;->getOpenPlaylistId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .local v1, "id":Ljava/lang/String;
    const/4 v2, 0x0

    .line 117
    .local v2, "$i$a$-let-LibraryFragment$onViewCreated$4$1":I
    invoke-virtual {v0}, Lcom/muzk/app/ui/library/LibraryUiState;->getSelected()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 118
    .local v3, "n":I
    invoke-direct {p0}, Lcom/muzk/app/ui/library/LibraryFragment;->getVm()Lcom/muzk/app/ui/library/LibraryViewModel;

    move-result-object v4

    invoke-virtual {v0}, Lcom/muzk/app/ui/library/LibraryUiState;->getSelected()Ljava/util/List;

    move-result-object v5

    check-cast v5, Ljava/lang/Iterable;

    .local v5, "$this$map$iv":Ljava/lang/Iterable;
    const/4 v6, 0x0

    .line 408
    .local v6, "$i$f$map":I
    new-instance v7, Ljava/util/ArrayList;

    const/16 v8, 0xa

    invoke-static {v5, v8}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v7, Ljava/util/Collection;

    .local v7, "destination$iv$iv":Ljava/util/Collection;
    move-object v8, v5

    .local v8, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    const/4 v9, 0x0

    .line 409
    .local v9, "$i$f$mapTo":I
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .line 410
    .local v11, "item$iv$iv":Ljava/lang/Object;
    move-object v12, v11

    check-cast v12, Lcom/muzk/app/data/LocalTrack;

    .local v12, "it":Lcom/muzk/app/data/LocalTrack;
    const/4 v13, 0x0

    .line 118
    .local v13, "$i$a$-map-LibraryFragment$onViewCreated$4$1$1":I
    invoke-virtual {v12}, Lcom/muzk/app/data/LocalTrack;->getId()J

    move-result-wide v12

    .end local v12    # "it":Lcom/muzk/app/data/LocalTrack;
    .end local v13    # "$i$a$-map-LibraryFragment$onViewCreated$4$1$1":I
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    .line 410
    invoke-interface {v7, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 411
    .end local v11    # "item$iv$iv":Ljava/lang/Object;
    :cond_2
    nop

    .end local v7    # "destination$iv$iv":Ljava/util/Collection;
    .end local v8    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .end local v9    # "$i$f$mapTo":I
    check-cast v7, Ljava/util/List;

    .line 408
    nop

    .line 118
    .end local v5    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v6    # "$i$f$map":I
    invoke-virtual {v4, v1, v7}, Lcom/muzk/app/ui/library/LibraryViewModel;->removeAllFromPlaylist(Ljava/lang/String;Ljava/util/List;)V

    .line 119
    invoke-direct {p0}, Lcom/muzk/app/ui/library/LibraryFragment;->getVm()Lcom/muzk/app/ui/library/LibraryViewModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/muzk/app/ui/library/LibraryViewModel;->clearSelection()V

    .line 120
    invoke-virtual {p0}, Lcom/muzk/app/ui/library/LibraryFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/muzk/app/R$plurals;->removed_many:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5, v3, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "getQuantityString(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v4}, Lcom/muzk/app/ui/library/LibraryFragment;->snack(Ljava/lang/String;)V

    .line 121
    nop

    .line 116
    .end local v1    # "id":Ljava/lang/String;
    .end local v2    # "$i$a$-let-LibraryFragment$onViewCreated$4$1":I
    .end local v3    # "n":I
    goto :goto_1

    .line 122
    :cond_3
    sget v2, Lcom/muzk/app/R$id;->sel_delete:I

    if-ne v1, v2, :cond_4

    invoke-virtual {v0}, Lcom/muzk/app/ui/library/LibraryUiState;->getSelected()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/muzk/app/ui/library/LibraryFragment;->confirmDelete(Ljava/util/List;)V

    .line 124
    :cond_4
    :goto_1
    const/4 v1, 0x1

    return v1
.end method

.method private static final onViewCreated$lambda$19(Lcom/muzk/app/ui/library/LibraryFragment;Landroid/view/View;)V
    .locals 2
    .param p0, "this$0"    # Lcom/muzk/app/ui/library/LibraryFragment;
    .param p1, "it"    # Landroid/view/View;

    .line 127
    iget-object v0, p0, Lcom/muzk/app/ui/library/LibraryFragment;->permissionLauncher:Landroidx/activity/result/ActivityResultLauncher;

    iget-object v1, p0, Lcom/muzk/app/ui/library/LibraryFragment;->audioPermission:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    return-void
.end method

.method private static final onViewCreated$lambda$2(Lcom/muzk/app/ui/library/LibraryFragment;Lcom/muzk/app/ui/library/LibraryRow$Track;)Lkotlin/Unit;
    .locals 3
    .param p0, "this$0"    # Lcom/muzk/app/ui/library/LibraryFragment;
    .param p1, "row"    # Lcom/muzk/app/ui/library/LibraryRow$Track;

    const-string v0, "row"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    invoke-virtual {p1}, Lcom/muzk/app/ui/library/LibraryRow$Track;->getSelecting()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/muzk/app/ui/library/LibraryFragment;->getVm()Lcom/muzk/app/ui/library/LibraryViewModel;

    move-result-object v0

    invoke-virtual {p1}, Lcom/muzk/app/ui/library/LibraryRow$Track;->getTrack()Lcom/muzk/app/data/LocalTrack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/muzk/app/data/LocalTrack;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/muzk/app/ui/library/LibraryViewModel;->toggleSelection(J)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/muzk/app/ui/library/LibraryRow$Track;->getTrack()Lcom/muzk/app/data/LocalTrack;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/muzk/app/ui/library/LibraryFragment;->playFrom(Lcom/muzk/app/data/LocalTrack;)V

    :goto_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private static final onViewCreated$lambda$3(Lcom/muzk/app/ui/library/LibraryFragment;Lcom/muzk/app/ui/library/LibraryRow$Track;Landroid/view/View;)Lkotlin/Unit;
    .locals 1
    .param p0, "this$0"    # Lcom/muzk/app/ui/library/LibraryFragment;
    .param p1, "row"    # Lcom/muzk/app/ui/library/LibraryRow$Track;
    .param p2, "anchor"    # Landroid/view/View;

    const-string v0, "row"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "anchor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    invoke-direct {p0, p1, p2}, Lcom/muzk/app/ui/library/LibraryFragment;->showTrackMenu(Lcom/muzk/app/ui/library/LibraryRow$Track;Landroid/view/View;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private static final onViewCreated$lambda$4(Lcom/muzk/app/ui/library/LibraryFragment;Lcom/muzk/app/ui/library/LibraryRow$Track;)Lkotlin/Unit;
    .locals 3
    .param p0, "this$0"    # Lcom/muzk/app/ui/library/LibraryFragment;
    .param p1, "row"    # Lcom/muzk/app/ui/library/LibraryRow$Track;

    const-string v0, "row"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    invoke-direct {p0}, Lcom/muzk/app/ui/library/LibraryFragment;->getBinding()Lcom/muzk/app/databinding/FragmentLibraryBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/muzk/app/databinding/FragmentLibraryBinding;->list:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->performHapticFeedback(I)Z

    .line 91
    invoke-direct {p0}, Lcom/muzk/app/ui/library/LibraryFragment;->getVm()Lcom/muzk/app/ui/library/LibraryViewModel;

    move-result-object v0

    invoke-virtual {p1}, Lcom/muzk/app/ui/library/LibraryRow$Track;->getTrack()Lcom/muzk/app/data/LocalTrack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/muzk/app/data/LocalTrack;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/muzk/app/ui/library/LibraryViewModel;->toggleSelection(J)V

    .line 92
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private static final onViewCreated$lambda$5(Lcom/muzk/app/ui/library/LibraryFragment;Lcom/muzk/app/ui/library/LibraryRow$Folder;)Lkotlin/Unit;
    .locals 2
    .param p0, "this$0"    # Lcom/muzk/app/ui/library/LibraryFragment;
    .param p1, "it"    # Lcom/muzk/app/ui/library/LibraryRow$Folder;

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    invoke-direct {p0}, Lcom/muzk/app/ui/library/LibraryFragment;->getVm()Lcom/muzk/app/ui/library/LibraryViewModel;

    move-result-object v0

    invoke-virtual {p1}, Lcom/muzk/app/ui/library/LibraryRow$Folder;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/muzk/app/ui/library/LibraryViewModel;->openFolder(Ljava/lang/String;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private static final onViewCreated$lambda$6(Lcom/muzk/app/ui/library/LibraryFragment;Lcom/muzk/app/ui/library/LibraryRow$PlaylistItem;)Lkotlin/Unit;
    .locals 2
    .param p0, "this$0"    # Lcom/muzk/app/ui/library/LibraryFragment;
    .param p1, "it"    # Lcom/muzk/app/ui/library/LibraryRow$PlaylistItem;

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    invoke-direct {p0}, Lcom/muzk/app/ui/library/LibraryFragment;->getVm()Lcom/muzk/app/ui/library/LibraryViewModel;

    move-result-object v0

    invoke-virtual {p1}, Lcom/muzk/app/ui/library/LibraryRow$PlaylistItem;->getPlaylist()Lcom/muzk/app/data/Playlist;

    move-result-object v1

    invoke-virtual {v1}, Lcom/muzk/app/data/Playlist;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/muzk/app/ui/library/LibraryViewModel;->openPlaylist(Ljava/lang/String;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private static final onViewCreated$lambda$7(Lcom/muzk/app/ui/library/LibraryFragment;Lcom/muzk/app/ui/library/LibraryRow$PlaylistItem;Landroid/view/View;)Lkotlin/Unit;
    .locals 1
    .param p0, "this$0"    # Lcom/muzk/app/ui/library/LibraryFragment;
    .param p1, "row"    # Lcom/muzk/app/ui/library/LibraryRow$PlaylistItem;
    .param p2, "anchor"    # Landroid/view/View;

    const-string v0, "row"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "anchor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    invoke-direct {p0, p1, p2}, Lcom/muzk/app/ui/library/LibraryFragment;->showPlaylistMenu(Lcom/muzk/app/ui/library/LibraryRow$PlaylistItem;Landroid/view/View;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private static final onViewCreated$lambda$8(Lcom/muzk/app/ui/library/LibraryFragment;)Lkotlin/Unit;
    .locals 1
    .param p0, "this$0"    # Lcom/muzk/app/ui/library/LibraryFragment;

    .line 96
    invoke-direct {p0}, Lcom/muzk/app/ui/library/LibraryFragment;->getVm()Lcom/muzk/app/ui/library/LibraryViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/muzk/app/ui/library/LibraryViewModel;->back()Z

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private static final permissionLauncher$lambda$0(Lcom/muzk/app/ui/library/LibraryFragment;Ljava/lang/Boolean;)V
    .locals 2
    .param p0, "this$0"    # Lcom/muzk/app/ui/library/LibraryFragment;
    .param p1, "it"    # Ljava/lang/Boolean;

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-direct {p0}, Lcom/muzk/app/ui/library/LibraryFragment;->getVm()Lcom/muzk/app/ui/library/LibraryViewModel;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/muzk/app/ui/library/LibraryViewModel;->setPermission(Z)V

    return-void
.end method

.method private final pickPlaylist(Ljava/util/List;)V
    .locals 11
    .param p1, "tracks"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/muzk/app/data/LocalTrack;",
            ">;)V"
        }
    .end annotation

    .line 253
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 254
    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$map$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 389
    .local v1, "$i$f$map":I
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .local v2, "destination$iv$iv":Ljava/util/Collection;
    move-object v4, v0

    .local v4, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    const/4 v5, 0x0

    .line 390
    .local v5, "$i$f$mapTo":I
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 391
    .local v7, "item$iv$iv":Ljava/lang/Object;
    move-object v8, v7

    check-cast v8, Lcom/muzk/app/data/LocalTrack;

    .local v8, "it":Lcom/muzk/app/data/LocalTrack;
    const/4 v9, 0x0

    .line 254
    .local v9, "$i$a$-map-LibraryFragment$pickPlaylist$ids$1":I
    invoke-virtual {v8}, Lcom/muzk/app/data/LocalTrack;->getId()J

    move-result-wide v8

    .end local v8    # "it":Lcom/muzk/app/data/LocalTrack;
    .end local v9    # "$i$a$-map-LibraryFragment$pickPlaylist$ids$1":I
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 391
    invoke-interface {v2, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 392
    .end local v7    # "item$iv$iv":Ljava/lang/Object;
    :cond_1
    nop

    .end local v2    # "destination$iv$iv":Ljava/util/Collection;
    .end local v4    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .end local v5    # "$i$f$mapTo":I
    check-cast v2, Ljava/util/List;

    .line 389
    nop

    .line 254
    .end local v0    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$map":I
    move-object v0, v2

    .line 255
    .local v0, "ids":Ljava/util/List;
    invoke-direct {p0}, Lcom/muzk/app/ui/library/LibraryFragment;->getVm()Lcom/muzk/app/ui/library/LibraryViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/muzk/app/ui/library/LibraryViewModel;->getState()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v1

    invoke-interface {v1}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/muzk/app/ui/library/LibraryUiState;

    invoke-virtual {v1}, Lcom/muzk/app/ui/library/LibraryUiState;->getPlaylists()Ljava/util/List;

    move-result-object v1

    .line 256
    .local v1, "playlists":Ljava/util/List;
    move-object v2, v1

    check-cast v2, Ljava/lang/Iterable;

    .local v2, "$this$map$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 393
    .local v4, "$i$f$map":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v2, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v5, v3}, Ljava/util/ArrayList;-><init>(I)V

    move-object v3, v5

    check-cast v3, Ljava/util/Collection;

    .local v3, "destination$iv$iv":Ljava/util/Collection;
    move-object v5, v2

    .local v5, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    const/4 v6, 0x0

    .line 394
    .local v6, "$i$f$mapTo":I
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 395
    .local v8, "item$iv$iv":Ljava/lang/Object;
    move-object v9, v8

    check-cast v9, Lcom/muzk/app/data/Playlist;

    .local v9, "it":Lcom/muzk/app/data/Playlist;
    const/4 v10, 0x0

    .line 256
    .local v10, "$i$a$-map-LibraryFragment$pickPlaylist$names$1":I
    invoke-virtual {v9}, Lcom/muzk/app/data/Playlist;->getName()Ljava/lang/String;

    move-result-object v9

    .line 395
    .end local v9    # "it":Lcom/muzk/app/data/Playlist;
    .end local v10    # "$i$a$-map-LibraryFragment$pickPlaylist$names$1":I
    invoke-interface {v3, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 396
    .end local v8    # "item$iv$iv":Ljava/lang/Object;
    :cond_2
    nop

    .end local v3    # "destination$iv$iv":Ljava/util/Collection;
    .end local v5    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .end local v6    # "$i$f$mapTo":I
    check-cast v3, Ljava/util/List;

    .line 393
    nop

    .end local v2    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$map":I
    check-cast v3, Ljava/util/Collection;

    .line 256
    sget v2, Lcom/muzk/app/R$string;->new_playlist:I

    invoke-virtual {p0, v2}, Lcom/muzk/app/ui/library/LibraryFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    .local v2, "$this$toTypedArray$iv":Ljava/util/Collection;
    const/4 v3, 0x0

    .line 397
    .local v3, "$i$f$toTypedArray":I
    move-object v4, v2

    .line 398
    .local v4, "thisCollection$iv":Ljava/util/Collection;
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    .line 256
    .end local v2    # "$this$toTypedArray$iv":Ljava/util/Collection;
    .end local v3    # "$i$f$toTypedArray":I
    .end local v4    # "thisCollection$iv":Ljava/util/Collection;
    check-cast v2, [Ljava/lang/String;

    .line 264
    .local v2, "names":[Ljava/lang/String;
    new-instance v3, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-virtual {p0}, Lcom/muzk/app/ui/library/LibraryFragment;->requireContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    .line 265
    sget v4, Lcom/muzk/app/R$string;->add_to_playlist:I

    invoke-virtual {v3, v4}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(I)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v3

    .line 266
    move-object v4, v2

    check-cast v4, [Ljava/lang/CharSequence;

    new-instance v5, Lcom/muzk/app/ui/library/LibraryFragment$$ExternalSyntheticLambda16;

    invoke-direct {v5, v1, p0, v0}, Lcom/muzk/app/ui/library/LibraryFragment$$ExternalSyntheticLambda16;-><init>(Ljava/util/List;Lcom/muzk/app/ui/library/LibraryFragment;Ljava/util/List;)V

    invoke-virtual {v3, v4, v5}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v3

    .line 277
    invoke-virtual {v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->show()Landroidx/appcompat/app/AlertDialog;

    .line 278
    return-void
.end method

.method private static final pickPlaylist$added(Lcom/muzk/app/ui/library/LibraryFragment;Ljava/util/List;Ljava/lang/String;)V
    .locals 4
    .param p0, "this$0"    # Lcom/muzk/app/ui/library/LibraryFragment;
    .param p1, "ids"    # Ljava/util/List;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/muzk/app/ui/library/LibraryFragment;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 258
    invoke-direct {p0}, Lcom/muzk/app/ui/library/LibraryFragment;->getVm()Lcom/muzk/app/ui/library/LibraryViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/muzk/app/ui/library/LibraryViewModel;->clearSelection()V

    .line 259
    nop

    .line 260
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget v0, Lcom/muzk/app/R$string;->added_to:I

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/muzk/app/ui/library/LibraryFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 261
    :cond_0
    invoke-virtual {p0}, Lcom/muzk/app/ui/library/LibraryFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/muzk/app/R$plurals;->added_many_to:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3, p2}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 260
    :goto_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 259
    invoke-direct {p0, v0}, Lcom/muzk/app/ui/library/LibraryFragment;->snack(Ljava/lang/String;)V

    .line 263
    return-void
.end method

.method private static final pickPlaylist$lambda$34(Ljava/util/List;Lcom/muzk/app/ui/library/LibraryFragment;Ljava/util/List;Landroid/content/DialogInterface;I)V
    .locals 2
    .param p0, "$playlists"    # Ljava/util/List;
    .param p1, "this$0"    # Lcom/muzk/app/ui/library/LibraryFragment;
    .param p2, "$ids"    # Ljava/util/List;
    .param p4, "which"    # I

    .line 267
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p3

    if-ge p4, p3, :cond_0

    .line 268
    invoke-direct {p1}, Lcom/muzk/app/ui/library/LibraryFragment;->getVm()Lcom/muzk/app/ui/library/LibraryViewModel;

    move-result-object p3

    invoke-interface {p0, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/muzk/app/data/Playlist;

    invoke-virtual {v0}, Lcom/muzk/app/data/Playlist;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0, p2}, Lcom/muzk/app/ui/library/LibraryViewModel;->addAllToPlaylist(Ljava/lang/String;Ljava/util/List;)V

    .line 269
    invoke-interface {p0, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/muzk/app/data/Playlist;

    invoke-virtual {p3}, Lcom/muzk/app/data/Playlist;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lcom/muzk/app/ui/library/LibraryFragment;->pickPlaylist$added(Lcom/muzk/app/ui/library/LibraryFragment;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0

    .line 271
    :cond_0
    sget p3, Lcom/muzk/app/R$string;->new_playlist:I

    new-instance v0, Lcom/muzk/app/ui/library/LibraryFragment$$ExternalSyntheticLambda9;

    invoke-direct {v0, p1, p2}, Lcom/muzk/app/ui/library/LibraryFragment$$ExternalSyntheticLambda9;-><init>(Lcom/muzk/app/ui/library/LibraryFragment;Ljava/util/List;)V

    const-string v1, ""

    invoke-direct {p1, p3, v1, v0}, Lcom/muzk/app/ui/library/LibraryFragment;->askName(ILjava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 276
    :goto_0
    return-void
.end method

.method private static final pickPlaylist$lambda$34$lambda$33(Lcom/muzk/app/ui/library/LibraryFragment;Ljava/util/List;Ljava/lang/String;)Lkotlin/Unit;
    .locals 2
    .param p0, "this$0"    # Lcom/muzk/app/ui/library/LibraryFragment;
    .param p1, "$ids"    # Ljava/util/List;
    .param p2, "name"    # Ljava/lang/String;

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 272
    invoke-direct {p0}, Lcom/muzk/app/ui/library/LibraryFragment;->getVm()Lcom/muzk/app/ui/library/LibraryViewModel;

    move-result-object v0

    invoke-direct {p0}, Lcom/muzk/app/ui/library/LibraryFragment;->getVm()Lcom/muzk/app/ui/library/LibraryViewModel;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/muzk/app/ui/library/LibraryViewModel;->createPlaylist(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/muzk/app/ui/library/LibraryViewModel;->addAllToPlaylist(Ljava/lang/String;Ljava/util/List;)V

    .line 273
    invoke-static {p0, p1, p2}, Lcom/muzk/app/ui/library/LibraryFragment;->pickPlaylist$added(Lcom/muzk/app/ui/library/LibraryFragment;Ljava/util/List;Ljava/lang/String;)V

    .line 274
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private final playFrom(Lcom/muzk/app/data/LocalTrack;)V
    .locals 13
    .param p1, "track"    # Lcom/muzk/app/data/LocalTrack;

    .line 206
    invoke-direct {p0}, Lcom/muzk/app/ui/library/LibraryFragment;->getVm()Lcom/muzk/app/ui/library/LibraryViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/muzk/app/ui/library/LibraryViewModel;->getState()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/muzk/app/ui/library/LibraryUiState;

    invoke-virtual {v0}, Lcom/muzk/app/ui/library/LibraryUiState;->getQueue()Ljava/util/List;

    move-result-object v0

    .line 207
    .local v0, "queue":Ljava/util/List;
    move-object v1, v0

    .local v1, "$this$indexOfFirst$iv":Ljava/util/List;
    const/4 v2, 0x0

    .line 378
    .local v2, "$i$f$indexOfFirst":I
    const/4 v3, 0x0

    .line 379
    .local v3, "index$iv":I
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 380
    .local v5, "item$iv":Ljava/lang/Object;
    move-object v7, v5

    check-cast v7, Lcom/muzk/app/data/LocalTrack;

    .local v7, "it":Lcom/muzk/app/data/LocalTrack;
    const/4 v8, 0x0

    .line 207
    .local v8, "$i$a$-indexOfFirst-LibraryFragment$playFrom$index$1":I
    invoke-virtual {v7}, Lcom/muzk/app/data/LocalTrack;->getId()J

    move-result-wide v9

    invoke-virtual {p1}, Lcom/muzk/app/data/LocalTrack;->getId()J

    move-result-wide v11

    cmp-long v9, v9, v11

    if-nez v9, :cond_0

    const/4 v9, 0x1

    goto :goto_1

    :cond_0
    move v9, v6

    .line 380
    .end local v7    # "it":Lcom/muzk/app/data/LocalTrack;
    .end local v8    # "$i$a$-indexOfFirst-LibraryFragment$playFrom$index$1":I
    :goto_1
    if-eqz v9, :cond_1

    .line 381
    goto :goto_2

    .line 382
    :cond_1
    nop

    .end local v5    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 384
    :cond_2
    const/4 v4, -0x1

    move v3, v4

    .line 207
    .end local v1    # "$this$indexOfFirst$iv":Ljava/util/List;
    .end local v2    # "$i$f$indexOfFirst":I
    .end local v3    # "index$iv":I
    :goto_2
    invoke-static {v3, v6}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v1

    .line 208
    .local v1, "index":I
    invoke-direct {p0}, Lcom/muzk/app/ui/library/LibraryFragment;->getPlayer()Lcom/muzk/app/playback/PlayerViewModel;

    move-result-object v2

    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    .local v3, "$this$map$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 385
    .local v4, "$i$f$map":I
    new-instance v5, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v3, v6}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v5, Ljava/util/Collection;

    .local v5, "destination$iv$iv":Ljava/util/Collection;
    move-object v6, v3

    .local v6, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    const/4 v7, 0x0

    .line 386
    .local v7, "$i$f$mapTo":I
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 387
    .local v9, "item$iv$iv":Ljava/lang/Object;
    move-object v10, v9

    check-cast v10, Lcom/muzk/app/data/LocalTrack;

    .local v10, "it":Lcom/muzk/app/data/LocalTrack;
    const/4 v11, 0x0

    .line 208
    .local v11, "$i$a$-map-LibraryFragment$playFrom$1":I
    invoke-static {v10}, Lcom/muzk/app/data/ModelsKt;->toMediaItem(Lcom/muzk/app/data/LocalTrack;)Landroidx/media3/common/MediaItem;

    move-result-object v10

    .line 387
    .end local v10    # "it":Lcom/muzk/app/data/LocalTrack;
    .end local v11    # "$i$a$-map-LibraryFragment$playFrom$1":I
    invoke-interface {v5, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 388
    .end local v9    # "item$iv$iv":Ljava/lang/Object;
    :cond_3
    nop

    .end local v5    # "destination$iv$iv":Ljava/util/Collection;
    .end local v6    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .end local v7    # "$i$f$mapTo":I
    check-cast v5, Ljava/util/List;

    .line 385
    nop

    .line 208
    .end local v3    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$map":I
    invoke-direct {p0}, Lcom/muzk/app/ui/library/LibraryFragment;->getVm()Lcom/muzk/app/ui/library/LibraryViewModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/muzk/app/ui/library/LibraryViewModel;->getState()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v3

    invoke-interface {v3}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/muzk/app/ui/library/LibraryUiState;

    invoke-direct {p0, v3}, Lcom/muzk/app/ui/library/LibraryFragment;->sourceName(Lcom/muzk/app/ui/library/LibraryUiState;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v5, v1, v3}, Lcom/muzk/app/playback/PlayerViewModel;->playQueue(Ljava/util/List;ILjava/lang/String;)V

    .line 209
    return-void
.end method

.method private final renderEmpty(Lcom/muzk/app/ui/library/LibraryUiState;)V
    .locals 10
    .param p1, "s"    # Lcom/muzk/app/ui/library/LibraryUiState;

    .line 162
    nop

    .line 163
    invoke-virtual {p1}, Lcom/muzk/app/ui/library/LibraryUiState;->getHasPermission()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    sget v0, Lcom/muzk/app/R$string;->lib_no_permission:I

    invoke-virtual {p0, v0}, Lcom/muzk/app/ui/library/LibraryFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 164
    :cond_0
    invoke-virtual {p1}, Lcom/muzk/app/ui/library/LibraryUiState;->getRows()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Lcom/muzk/app/ui/library/LibraryUiState;->getRows()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$any$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 367
    .local v4, "$i$f$any":I
    instance-of v5, v0, Ljava/util/Collection;

    if-eqz v5, :cond_1

    move-object v5, v0

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    move v0, v2

    goto :goto_0

    .line 368
    :cond_1
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .local v6, "element$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Lcom/muzk/app/ui/library/LibraryRow;

    .local v7, "it":Lcom/muzk/app/ui/library/LibraryRow;
    const/4 v8, 0x0

    .line 164
    .local v8, "$i$a$-any-LibraryFragment$renderEmpty$emptyText$1":I
    instance-of v9, v7, Lcom/muzk/app/ui/library/LibraryRow$Header;

    .line 368
    .end local v7    # "it":Lcom/muzk/app/ui/library/LibraryRow;
    .end local v8    # "$i$a$-any-LibraryFragment$renderEmpty$emptyText$1":I
    if-nez v9, :cond_2

    move v0, v1

    goto :goto_0

    .line 369
    .end local v6    # "element$iv":Ljava/lang/Object;
    :cond_3
    move v0, v2

    .line 164
    .end local v0    # "$this$any$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$any":I
    :goto_0
    if-eqz v0, :cond_4

    move-object v0, v3

    goto :goto_1

    .line 165
    :cond_4
    invoke-virtual {p1}, Lcom/muzk/app/ui/library/LibraryUiState;->getLoaded()Z

    move-result v0

    if-nez v0, :cond_5

    move-object v0, v3

    goto :goto_1

    .line 166
    :cond_5
    invoke-virtual {p1}, Lcom/muzk/app/ui/library/LibraryUiState;->getOpenPlaylistId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    sget v0, Lcom/muzk/app/R$string;->lib_empty_playlist:I

    invoke-virtual {p0, v0}, Lcom/muzk/app/ui/library/LibraryFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 167
    :cond_6
    invoke-virtual {p1}, Lcom/muzk/app/ui/library/LibraryUiState;->getTab()Lcom/muzk/app/ui/library/LibraryTab;

    move-result-object v0

    sget-object v3, Lcom/muzk/app/ui/library/LibraryTab;->PLAYLISTS:Lcom/muzk/app/ui/library/LibraryTab;

    if-ne v0, v3, :cond_7

    sget v0, Lcom/muzk/app/R$string;->lib_empty_playlists:I

    invoke-virtual {p0, v0}, Lcom/muzk/app/ui/library/LibraryFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 168
    :cond_7
    sget v0, Lcom/muzk/app/R$string;->lib_empty_tracks:I

    invoke-virtual {p0, v0}, Lcom/muzk/app/ui/library/LibraryFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 162
    :goto_1
    nop

    .line 170
    .local v0, "emptyText":Ljava/lang/String;
    invoke-direct {p0}, Lcom/muzk/app/ui/library/LibraryFragment;->getBinding()Lcom/muzk/app/databinding/FragmentLibraryBinding;

    move-result-object v3

    iget-object v3, v3, Lcom/muzk/app/databinding/FragmentLibraryBinding;->empty:Landroid/widget/LinearLayout;

    const-string v4, "empty"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/view/View;

    if-eqz v0, :cond_8

    move v4, v1

    goto :goto_2

    :cond_8
    move v4, v2

    .local v3, "$this$isVisible$iv":Landroid/view/View;
    .local v4, "value$iv":Z
    :goto_2
    const/4 v5, 0x0

    .line 370
    .local v5, "$i$f$setVisible":I
    const/16 v6, 0x8

    if-eqz v4, :cond_9

    move v7, v2

    goto :goto_3

    :cond_9
    move v7, v6

    :goto_3
    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 371
    nop

    .line 171
    .end local v3    # "$this$isVisible$iv":Landroid/view/View;
    .end local v4    # "value$iv":Z
    .end local v5    # "$i$f$setVisible":I
    invoke-direct {p0}, Lcom/muzk/app/ui/library/LibraryFragment;->getBinding()Lcom/muzk/app/databinding/FragmentLibraryBinding;

    move-result-object v3

    iget-object v3, v3, Lcom/muzk/app/databinding/FragmentLibraryBinding;->emptyText:Landroid/widget/TextView;

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    invoke-direct {p0}, Lcom/muzk/app/ui/library/LibraryFragment;->getBinding()Lcom/muzk/app/databinding/FragmentLibraryBinding;

    move-result-object v3

    iget-object v3, v3, Lcom/muzk/app/databinding/FragmentLibraryBinding;->emptyAction:Lcom/google/android/material/button/MaterialButton;

    const-string v4, "emptyAction"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/view/View;

    invoke-virtual {p1}, Lcom/muzk/app/ui/library/LibraryUiState;->getHasPermission()Z

    move-result v4

    xor-int/2addr v1, v4

    .local v1, "value$iv":Z
    .restart local v3    # "$this$isVisible$iv":Landroid/view/View;
    const/4 v4, 0x0

    .line 372
    .local v4, "$i$f$setVisible":I
    if-eqz v1, :cond_a

    goto :goto_4

    :cond_a
    move v2, v6

    :goto_4
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 373
    nop

    .line 173
    .end local v1    # "value$iv":Z
    .end local v3    # "$this$isVisible$iv":Landroid/view/View;
    .end local v4    # "$i$f$setVisible":I
    return-void
.end method

.method private final renderFab(Lcom/muzk/app/ui/library/LibraryUiState;)V
    .locals 3
    .param p1, "s"    # Lcom/muzk/app/ui/library/LibraryUiState;

    .line 185
    invoke-direct {p0}, Lcom/muzk/app/ui/library/LibraryFragment;->getBinding()Lcom/muzk/app/databinding/FragmentLibraryBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/muzk/app/databinding/FragmentLibraryBinding;->fab:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    const-string v1, "fab"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    .local v0, "fab":Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;
    nop

    .line 187
    invoke-virtual {p1}, Lcom/muzk/app/ui/library/LibraryUiState;->getHasPermission()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/muzk/app/ui/library/LibraryUiState;->isSelecting()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 188
    :cond_0
    invoke-virtual {p1}, Lcom/muzk/app/ui/library/LibraryUiState;->getTab()Lcom/muzk/app/ui/library/LibraryTab;

    move-result-object v1

    sget-object v2, Lcom/muzk/app/ui/library/LibraryTab;->PLAYLISTS:Lcom/muzk/app/ui/library/LibraryTab;

    if-ne v1, v2, :cond_1

    invoke-virtual {p1}, Lcom/muzk/app/ui/library/LibraryUiState;->getOpenPlaylistId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 189
    sget v1, Lcom/muzk/app/R$string;->new_playlist:I

    invoke-virtual {p0, v1}, Lcom/muzk/app/ui/library/LibraryFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->setText(Ljava/lang/CharSequence;)V

    .line 190
    sget v1, Lcom/muzk/app/R$drawable;->ic_add:I

    invoke-virtual {v0, v1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->setIconResource(I)V

    .line 191
    new-instance v1, Lcom/muzk/app/ui/library/LibraryFragment$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/muzk/app/ui/library/LibraryFragment$$ExternalSyntheticLambda4;-><init>(Lcom/muzk/app/ui/library/LibraryFragment;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->show()V

    goto :goto_1

    .line 194
    :cond_1
    invoke-virtual {p1}, Lcom/muzk/app/ui/library/LibraryUiState;->getQueue()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 195
    sget v1, Lcom/muzk/app/R$string;->play_all:I

    invoke-virtual {p0, v1}, Lcom/muzk/app/ui/library/LibraryFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->setText(Ljava/lang/CharSequence;)V

    .line 196
    sget v1, Lcom/muzk/app/R$drawable;->ic_play:I

    invoke-virtual {v0, v1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->setIconResource(I)V

    .line 197
    new-instance v1, Lcom/muzk/app/ui/library/LibraryFragment$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Lcom/muzk/app/ui/library/LibraryFragment$$ExternalSyntheticLambda5;-><init>(Lcom/muzk/app/ui/library/LibraryFragment;Lcom/muzk/app/ui/library/LibraryUiState;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->show()V

    goto :goto_1

    .line 200
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->hide()V

    goto :goto_1

    .line 187
    :cond_3
    :goto_0
    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->hide()V

    .line 202
    :goto_1
    return-void
.end method

.method private static final renderFab$lambda$22(Lcom/muzk/app/ui/library/LibraryFragment;Landroid/view/View;)V
    .locals 3
    .param p0, "this$0"    # Lcom/muzk/app/ui/library/LibraryFragment;
    .param p1, "it"    # Landroid/view/View;

    .line 191
    sget v0, Lcom/muzk/app/R$string;->new_playlist:I

    new-instance v1, Lcom/muzk/app/ui/library/LibraryFragment$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lcom/muzk/app/ui/library/LibraryFragment$$ExternalSyntheticLambda8;-><init>(Lcom/muzk/app/ui/library/LibraryFragment;)V

    const-string v2, ""

    invoke-direct {p0, v0, v2, v1}, Lcom/muzk/app/ui/library/LibraryFragment;->askName(ILjava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private static final renderFab$lambda$22$lambda$21(Lcom/muzk/app/ui/library/LibraryFragment;Ljava/lang/String;)Lkotlin/Unit;
    .locals 1
    .param p0, "this$0"    # Lcom/muzk/app/ui/library/LibraryFragment;
    .param p1, "it"    # Ljava/lang/String;

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 191
    invoke-direct {p0}, Lcom/muzk/app/ui/library/LibraryFragment;->getVm()Lcom/muzk/app/ui/library/LibraryViewModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/muzk/app/ui/library/LibraryViewModel;->createPlaylist(Ljava/lang/String;)Ljava/lang/String;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private static final renderFab$lambda$24(Lcom/muzk/app/ui/library/LibraryFragment;Lcom/muzk/app/ui/library/LibraryUiState;Landroid/view/View;)V
    .locals 10
    .param p0, "this$0"    # Lcom/muzk/app/ui/library/LibraryFragment;
    .param p1, "$s"    # Lcom/muzk/app/ui/library/LibraryUiState;
    .param p2, "it"    # Landroid/view/View;

    .line 197
    invoke-direct {p0}, Lcom/muzk/app/ui/library/LibraryFragment;->getPlayer()Lcom/muzk/app/playback/PlayerViewModel;

    move-result-object v0

    invoke-virtual {p1}, Lcom/muzk/app/ui/library/LibraryUiState;->getQueue()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .local v1, "$this$map$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 412
    .local v2, "$i$f$map":I
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v1, v4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v3, Ljava/util/Collection;

    .local v3, "destination$iv$iv":Ljava/util/Collection;
    move-object v4, v1

    .local v4, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    const/4 v5, 0x0

    .line 413
    .local v5, "$i$f$mapTo":I
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 414
    .local v7, "item$iv$iv":Ljava/lang/Object;
    move-object v8, v7

    check-cast v8, Lcom/muzk/app/data/LocalTrack;

    .local v8, "it":Lcom/muzk/app/data/LocalTrack;
    const/4 v9, 0x0

    .line 197
    .local v9, "$i$a$-map-LibraryFragment$renderFab$2$1":I
    invoke-static {v8}, Lcom/muzk/app/data/ModelsKt;->toMediaItem(Lcom/muzk/app/data/LocalTrack;)Landroidx/media3/common/MediaItem;

    move-result-object v8

    .line 414
    .end local v8    # "it":Lcom/muzk/app/data/LocalTrack;
    .end local v9    # "$i$a$-map-LibraryFragment$renderFab$2$1":I
    invoke-interface {v3, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 415
    .end local v7    # "item$iv$iv":Ljava/lang/Object;
    :cond_0
    nop

    .end local v3    # "destination$iv$iv":Ljava/util/Collection;
    .end local v4    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .end local v5    # "$i$f$mapTo":I
    check-cast v3, Ljava/util/List;

    .line 412
    nop

    .line 197
    .end local v1    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$map":I
    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/muzk/app/ui/library/LibraryFragment;->sourceName(Lcom/muzk/app/ui/library/LibraryUiState;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v1, v2}, Lcom/muzk/app/playback/PlayerViewModel;->playQueue(Ljava/util/List;ILjava/lang/String;)V

    return-void
.end method

.method private final renderSelection(Lcom/muzk/app/ui/library/LibraryUiState;)V
    .locals 7
    .param p1, "s"    # Lcom/muzk/app/ui/library/LibraryUiState;

    .line 177
    invoke-direct {p0}, Lcom/muzk/app/ui/library/LibraryFragment;->getBinding()Lcom/muzk/app/databinding/FragmentLibraryBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/muzk/app/databinding/FragmentLibraryBinding;->selectionBar:Lcom/google/android/material/appbar/MaterialToolbar;

    const-string v1, "selectionBar"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    .local v0, "$this$isVisible$iv":Landroid/view/View;
    invoke-virtual {p1}, Lcom/muzk/app/ui/library/LibraryUiState;->isSelecting()Z

    move-result v1

    .local v1, "value$iv":Z
    const/4 v2, 0x0

    .line 374
    .local v2, "$i$f$setVisible":I
    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    move v5, v3

    :goto_0
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 375
    nop

    .line 178
    .end local v0    # "$this$isVisible$iv":Landroid/view/View;
    .end local v1    # "value$iv":Z
    .end local v2    # "$i$f$setVisible":I
    invoke-direct {p0}, Lcom/muzk/app/ui/library/LibraryFragment;->getBinding()Lcom/muzk/app/databinding/FragmentLibraryBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/muzk/app/databinding/FragmentLibraryBinding;->tabs:Landroid/widget/HorizontalScrollView;

    const-string v1, "tabs"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1}, Lcom/muzk/app/ui/library/LibraryUiState;->isSelecting()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    .restart local v0    # "$this$isVisible$iv":Landroid/view/View;
    .restart local v1    # "value$iv":Z
    const/4 v5, 0x0

    .line 376
    .local v5, "$i$f$setVisible":I
    if-eqz v1, :cond_1

    move v3, v4

    :cond_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 377
    nop

    .line 179
    .end local v0    # "$this$isVisible$iv":Landroid/view/View;
    .end local v1    # "value$iv":Z
    .end local v5    # "$i$f$setVisible":I
    invoke-virtual {p1}, Lcom/muzk/app/ui/library/LibraryUiState;->isSelecting()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 180
    :cond_2
    invoke-direct {p0}, Lcom/muzk/app/ui/library/LibraryFragment;->getBinding()Lcom/muzk/app/databinding/FragmentLibraryBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/muzk/app/databinding/FragmentLibraryBinding;->selectionBar:Lcom/google/android/material/appbar/MaterialToolbar;

    invoke-virtual {p0}, Lcom/muzk/app/ui/library/LibraryFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/muzk/app/R$plurals;->selected_count:I

    invoke-virtual {p1}, Lcom/muzk/app/ui/library/LibraryUiState;->getSelected()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {p1}, Lcom/muzk/app/ui/library/LibraryUiState;->getSelected()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v3, v5, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/google/android/material/appbar/MaterialToolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 181
    invoke-direct {p0}, Lcom/muzk/app/ui/library/LibraryFragment;->getBinding()Lcom/muzk/app/databinding/FragmentLibraryBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/muzk/app/databinding/FragmentLibraryBinding;->selectionBar:Lcom/google/android/material/appbar/MaterialToolbar;

    invoke-virtual {v0}, Lcom/google/android/material/appbar/MaterialToolbar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    sget v1, Lcom/muzk/app/R$id;->sel_remove:I

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p1}, Lcom/muzk/app/ui/library/LibraryUiState;->getOpenPlaylistId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    move v4, v2

    :cond_3
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 182
    return-void
.end method

.method private final showPlaylistMenu(Lcom/muzk/app/ui/library/LibraryRow$PlaylistItem;Landroid/view/View;)V
    .locals 6
    .param p1, "row"    # Lcom/muzk/app/ui/library/LibraryRow$PlaylistItem;
    .param p2, "anchor"    # Landroid/view/View;

    .line 234
    new-instance v0, Landroid/widget/PopupMenu;

    invoke-virtual {p0}, Lcom/muzk/app/ui/library/LibraryFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 235
    .local v0, "popup":Landroid/widget/PopupMenu;
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    sget v2, Lcom/muzk/app/R$string;->rename:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v3, v4, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 236
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    const/4 v2, 0x2

    sget v5, Lcom/muzk/app/R$string;->delete:I

    invoke-interface {v1, v3, v2, v4, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 237
    new-instance v1, Lcom/muzk/app/ui/library/LibraryFragment$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/muzk/app/ui/library/LibraryFragment$$ExternalSyntheticLambda3;-><init>(Lcom/muzk/app/ui/library/LibraryFragment;Lcom/muzk/app/ui/library/LibraryRow$PlaylistItem;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 248
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    .line 249
    return-void
.end method

.method private static final showPlaylistMenu$lambda$30(Lcom/muzk/app/ui/library/LibraryFragment;Lcom/muzk/app/ui/library/LibraryRow$PlaylistItem;Landroid/view/MenuItem;)Z
    .locals 3
    .param p0, "this$0"    # Lcom/muzk/app/ui/library/LibraryFragment;
    .param p1, "$row"    # Lcom/muzk/app/ui/library/LibraryRow$PlaylistItem;
    .param p2, "it"    # Landroid/view/MenuItem;

    .line 238
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 240
    :pswitch_0
    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-virtual {p0}, Lcom/muzk/app/ui/library/LibraryFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    .line 241
    sget v1, Lcom/muzk/app/R$string;->delete_playlist_confirm:I

    invoke-virtual {p1}, Lcom/muzk/app/ui/library/LibraryRow$PlaylistItem;->getPlaylist()Lcom/muzk/app/data/Playlist;

    move-result-object v2

    invoke-virtual {v2}, Lcom/muzk/app/data/Playlist;->getName()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/muzk/app/ui/library/LibraryFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    .line 242
    sget v1, Lcom/muzk/app/R$string;->cancel:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    .line 243
    sget v1, Lcom/muzk/app/R$string;->delete:I

    new-instance v2, Lcom/muzk/app/ui/library/LibraryFragment$$ExternalSyntheticLambda12;

    invoke-direct {v2, p0, p1}, Lcom/muzk/app/ui/library/LibraryFragment$$ExternalSyntheticLambda12;-><init>(Lcom/muzk/app/ui/library/LibraryFragment;Lcom/muzk/app/ui/library/LibraryRow$PlaylistItem;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    .line 244
    invoke-virtual {v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->show()Landroidx/appcompat/app/AlertDialog;

    goto :goto_0

    .line 239
    :pswitch_1
    sget v0, Lcom/muzk/app/R$string;->rename:I

    invoke-virtual {p1}, Lcom/muzk/app/ui/library/LibraryRow$PlaylistItem;->getPlaylist()Lcom/muzk/app/data/Playlist;

    move-result-object v1

    invoke-virtual {v1}, Lcom/muzk/app/data/Playlist;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/muzk/app/ui/library/LibraryFragment$$ExternalSyntheticLambda10;

    invoke-direct {v2, p0, p1}, Lcom/muzk/app/ui/library/LibraryFragment$$ExternalSyntheticLambda10;-><init>(Lcom/muzk/app/ui/library/LibraryFragment;Lcom/muzk/app/ui/library/LibraryRow$PlaylistItem;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/muzk/app/ui/library/LibraryFragment;->askName(ILjava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 246
    :goto_0
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static final showPlaylistMenu$lambda$30$lambda$28(Lcom/muzk/app/ui/library/LibraryFragment;Lcom/muzk/app/ui/library/LibraryRow$PlaylistItem;Ljava/lang/String;)Lkotlin/Unit;
    .locals 2
    .param p0, "this$0"    # Lcom/muzk/app/ui/library/LibraryFragment;
    .param p1, "$row"    # Lcom/muzk/app/ui/library/LibraryRow$PlaylistItem;
    .param p2, "name"    # Ljava/lang/String;

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 239
    invoke-direct {p0}, Lcom/muzk/app/ui/library/LibraryFragment;->getVm()Lcom/muzk/app/ui/library/LibraryViewModel;

    move-result-object v0

    invoke-virtual {p1}, Lcom/muzk/app/ui/library/LibraryRow$PlaylistItem;->getPlaylist()Lcom/muzk/app/data/Playlist;

    move-result-object v1

    invoke-virtual {v1}, Lcom/muzk/app/data/Playlist;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/muzk/app/ui/library/LibraryViewModel;->renamePlaylist(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private static final showPlaylistMenu$lambda$30$lambda$29(Lcom/muzk/app/ui/library/LibraryFragment;Lcom/muzk/app/ui/library/LibraryRow$PlaylistItem;Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "this$0"    # Lcom/muzk/app/ui/library/LibraryFragment;
    .param p1, "$row"    # Lcom/muzk/app/ui/library/LibraryRow$PlaylistItem;

    .line 243
    invoke-direct {p0}, Lcom/muzk/app/ui/library/LibraryFragment;->getVm()Lcom/muzk/app/ui/library/LibraryViewModel;

    move-result-object p2

    invoke-virtual {p1}, Lcom/muzk/app/ui/library/LibraryRow$PlaylistItem;->getPlaylist()Lcom/muzk/app/data/Playlist;

    move-result-object p3

    invoke-virtual {p3}, Lcom/muzk/app/data/Playlist;->getId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/muzk/app/ui/library/LibraryViewModel;->deletePlaylist(Ljava/lang/String;)V

    return-void
.end method

.method private final showTrackMenu(Lcom/muzk/app/ui/library/LibraryRow$Track;Landroid/view/View;)V
    .locals 6
    .param p1, "row"    # Lcom/muzk/app/ui/library/LibraryRow$Track;
    .param p2, "anchor"    # Landroid/view/View;

    .line 216
    new-instance v0, Landroid/widget/PopupMenu;

    invoke-virtual {p0}, Lcom/muzk/app/ui/library/LibraryFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 217
    .local v0, "popup":Landroid/widget/PopupMenu;
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    sget v2, Lcom/muzk/app/R$string;->play_next:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v3, v4, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 218
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    sget v2, Lcom/muzk/app/R$string;->add_to_playlist:I

    const/4 v5, 0x2

    invoke-interface {v1, v3, v5, v4, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 219
    invoke-virtual {p1}, Lcom/muzk/app/ui/library/LibraryRow$Track;->getPlaylistId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    sget v4, Lcom/muzk/app/R$string;->remove_from_playlist:I

    invoke-interface {v1, v3, v2, v5, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 220
    :cond_0
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    const/4 v4, 0x4

    sget v5, Lcom/muzk/app/R$string;->delete:I

    invoke-interface {v1, v3, v4, v2, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 221
    new-instance v1, Lcom/muzk/app/ui/library/LibraryFragment$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p1}, Lcom/muzk/app/ui/library/LibraryFragment$$ExternalSyntheticLambda7;-><init>(Lcom/muzk/app/ui/library/LibraryFragment;Lcom/muzk/app/ui/library/LibraryRow$Track;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 230
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    .line 231
    return-void
.end method

.method private static final showTrackMenu$lambda$27(Lcom/muzk/app/ui/library/LibraryFragment;Lcom/muzk/app/ui/library/LibraryRow$Track;Landroid/view/MenuItem;)Z
    .locals 4
    .param p0, "this$0"    # Lcom/muzk/app/ui/library/LibraryFragment;
    .param p1, "$row"    # Lcom/muzk/app/ui/library/LibraryRow$Track;
    .param p2, "it"    # Landroid/view/MenuItem;

    .line 222
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 226
    :pswitch_0
    invoke-virtual {p1}, Lcom/muzk/app/ui/library/LibraryRow$Track;->getTrack()Lcom/muzk/app/data/LocalTrack;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/muzk/app/ui/library/LibraryFragment;->confirmDelete(Ljava/util/List;)V

    goto :goto_0

    .line 225
    :pswitch_1
    invoke-direct {p0}, Lcom/muzk/app/ui/library/LibraryFragment;->getVm()Lcom/muzk/app/ui/library/LibraryViewModel;

    move-result-object v0

    invoke-virtual {p1}, Lcom/muzk/app/ui/library/LibraryRow$Track;->getPlaylistId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/muzk/app/ui/library/LibraryRow$Track;->getTrack()Lcom/muzk/app/data/LocalTrack;

    move-result-object v2

    invoke-virtual {v2}, Lcom/muzk/app/data/LocalTrack;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/muzk/app/ui/library/LibraryViewModel;->removeFromPlaylist(Ljava/lang/String;J)V

    goto :goto_0

    .line 224
    :pswitch_2
    invoke-virtual {p1}, Lcom/muzk/app/ui/library/LibraryRow$Track;->getTrack()Lcom/muzk/app/data/LocalTrack;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/muzk/app/ui/library/LibraryFragment;->pickPlaylist(Ljava/util/List;)V

    goto :goto_0

    .line 223
    :pswitch_3
    invoke-direct {p0}, Lcom/muzk/app/ui/library/LibraryFragment;->getPlayer()Lcom/muzk/app/playback/PlayerViewModel;

    move-result-object v0

    invoke-virtual {p1}, Lcom/muzk/app/ui/library/LibraryRow$Track;->getTrack()Lcom/muzk/app/data/LocalTrack;

    move-result-object v1

    invoke-static {v1}, Lcom/muzk/app/data/ModelsKt;->toMediaItem(Lcom/muzk/app/data/LocalTrack;)Landroidx/media3/common/MediaItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/muzk/app/playback/PlayerViewModel;->playNext(Landroidx/media3/common/MediaItem;)V

    .line 228
    :goto_0
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final snack(Ljava/lang/String;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;

    .line 328
    invoke-direct {p0}, Lcom/muzk/app/ui/library/LibraryFragment;->getBinding()Lcom/muzk/app/databinding/FragmentLibraryBinding;

    move-result-object v0

    invoke-virtual {v0}, Lcom/muzk/app/databinding/FragmentLibraryBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    invoke-direct {p0}, Lcom/muzk/app/ui/library/LibraryFragment;->getBinding()Lcom/muzk/app/databinding/FragmentLibraryBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/muzk/app/databinding/FragmentLibraryBinding;->fab:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/google/android/material/snackbar/Snackbar;->setAnchorView(Landroid/view/View;)Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/snackbar/Snackbar;

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    .line 329
    return-void
.end method

.method private final sourceName(Lcom/muzk/app/ui/library/LibraryUiState;)Ljava/lang/String;
    .locals 2
    .param p1, "s"    # Lcom/muzk/app/ui/library/LibraryUiState;

    .line 213
    invoke-virtual {p1}, Lcom/muzk/app/ui/library/LibraryUiState;->getRows()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/muzk/app/ui/library/LibraryRow$Header;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/muzk/app/ui/library/LibraryRow$Header;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/muzk/app/ui/library/LibraryRow$Header;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    sget v0, Lcom/muzk/app/R$string;->source_all_tracks:I

    invoke-virtual {p0, v0}, Lcom/muzk/app/ui/library/LibraryFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    return-object v0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/muzk/app/databinding/FragmentLibraryBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/muzk/app/databinding/FragmentLibraryBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/muzk/app/ui/library/LibraryFragment;->_binding:Lcom/muzk/app/databinding/FragmentLibraryBinding;

    .line 80
    invoke-direct {p0}, Lcom/muzk/app/ui/library/LibraryFragment;->getBinding()Lcom/muzk/app/databinding/FragmentLibraryBinding;

    move-result-object v0

    invoke-virtual {v0}, Lcom/muzk/app/databinding/FragmentLibraryBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    const-string v1, "getRoot(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public onDestroyView()V
    .locals 2

    .line 341
    invoke-direct {p0}, Lcom/muzk/app/ui/library/LibraryFragment;->getBinding()Lcom/muzk/app/databinding/FragmentLibraryBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/muzk/app/databinding/FragmentLibraryBinding;->list:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 342
    iput-object v1, p0, Lcom/muzk/app/ui/library/LibraryFragment;->_binding:Lcom/muzk/app/databinding/FragmentLibraryBinding;

    .line 343
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 344
    return-void
.end method

.method public onStart()V
    .locals 5

    .line 144
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    .line 145
    invoke-virtual {p0}, Lcom/muzk/app/ui/library/LibraryFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/muzk/app/ui/library/LibraryFragment;->audioPermission:Ljava/lang/String;

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 146
    .local v0, "granted":Z
    :goto_0
    invoke-direct {p0}, Lcom/muzk/app/ui/library/LibraryFragment;->getVm()Lcom/muzk/app/ui/library/LibraryViewModel;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/muzk/app/ui/library/LibraryViewModel;->setPermission(Z)V

    .line 147
    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/muzk/app/ui/library/LibraryFragment;->getVm()Lcom/muzk/app/ui/library/LibraryViewModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/muzk/app/ui/library/LibraryViewModel;->getAskedPermission()Z

    move-result v2

    if-nez v2, :cond_1

    .line 148
    invoke-direct {p0}, Lcom/muzk/app/ui/library/LibraryFragment;->getVm()Lcom/muzk/app/ui/library/LibraryViewModel;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/muzk/app/ui/library/LibraryViewModel;->setAskedPermission(Z)V

    .line 149
    iget-object v2, p0, Lcom/muzk/app/ui/library/LibraryFragment;->permissionLauncher:Landroidx/activity/result/ActivityResultLauncher;

    iget-object v3, p0, Lcom/muzk/app/ui/library/LibraryFragment;->audioPermission:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    .line 151
    :cond_1
    invoke-virtual {p0}, Lcom/muzk/app/ui/library/LibraryFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 152
    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/muzk/app/ui/library/LibraryFragment;->mediaObserver:Lcom/muzk/app/ui/library/LibraryFragment$mediaObserver$1;

    check-cast v4, Landroid/database/ContentObserver;

    .line 151
    invoke-virtual {v2, v3, v1, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 154
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 157
    invoke-virtual {p0}, Lcom/muzk/app/ui/library/LibraryFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/muzk/app/ui/library/LibraryFragment;->mediaObserver:Lcom/muzk/app/ui/library/LibraryFragment$mediaObserver$1;

    check-cast v1, Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 158
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    .line 159
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 12
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0}, Lcom/muzk/app/ui/library/LibraryFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object v0

    invoke-virtual {p0}, Lcom/muzk/app/ui/library/LibraryFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    const-string v2, "getViewLifecycleOwner(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/muzk/app/ui/library/LibraryFragment;->backCallback:Lcom/muzk/app/ui/library/LibraryFragment$backCallback$1;

    check-cast v3, Landroidx/activity/OnBackPressedCallback;

    invoke-virtual {v0, v1, v3}, Landroidx/activity/OnBackPressedDispatcher;->addCallback(Landroidx/lifecycle/LifecycleOwner;Landroidx/activity/OnBackPressedCallback;)V

    .line 86
    new-instance v0, Lcom/muzk/app/ui/library/LibraryAdapter;

    new-instance v5, Lcom/muzk/app/ui/library/LibraryFragment$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0}, Lcom/muzk/app/ui/library/LibraryFragment$$ExternalSyntheticLambda0;-><init>(Lcom/muzk/app/ui/library/LibraryFragment;)V

    new-instance v6, Lcom/muzk/app/ui/library/LibraryFragment$$ExternalSyntheticLambda18;

    invoke-direct {v6, p0}, Lcom/muzk/app/ui/library/LibraryFragment$$ExternalSyntheticLambda18;-><init>(Lcom/muzk/app/ui/library/LibraryFragment;)V

    new-instance v7, Lcom/muzk/app/ui/library/LibraryFragment$$ExternalSyntheticLambda19;

    invoke-direct {v7, p0}, Lcom/muzk/app/ui/library/LibraryFragment$$ExternalSyntheticLambda19;-><init>(Lcom/muzk/app/ui/library/LibraryFragment;)V

    new-instance v8, Lcom/muzk/app/ui/library/LibraryFragment$$ExternalSyntheticLambda20;

    invoke-direct {v8, p0}, Lcom/muzk/app/ui/library/LibraryFragment$$ExternalSyntheticLambda20;-><init>(Lcom/muzk/app/ui/library/LibraryFragment;)V

    new-instance v9, Lcom/muzk/app/ui/library/LibraryFragment$$ExternalSyntheticLambda21;

    invoke-direct {v9, p0}, Lcom/muzk/app/ui/library/LibraryFragment$$ExternalSyntheticLambda21;-><init>(Lcom/muzk/app/ui/library/LibraryFragment;)V

    new-instance v10, Lcom/muzk/app/ui/library/LibraryFragment$$ExternalSyntheticLambda22;

    invoke-direct {v10, p0}, Lcom/muzk/app/ui/library/LibraryFragment$$ExternalSyntheticLambda22;-><init>(Lcom/muzk/app/ui/library/LibraryFragment;)V

    new-instance v11, Lcom/muzk/app/ui/library/LibraryFragment$$ExternalSyntheticLambda23;

    invoke-direct {v11, p0}, Lcom/muzk/app/ui/library/LibraryFragment$$ExternalSyntheticLambda23;-><init>(Lcom/muzk/app/ui/library/LibraryFragment;)V

    move-object v4, v0

    invoke-direct/range {v4 .. v11}, Lcom/muzk/app/ui/library/LibraryAdapter;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;)V

    .line 98
    .local v0, "adapter":Lcom/muzk/app/ui/library/LibraryAdapter;
    invoke-direct {p0}, Lcom/muzk/app/ui/library/LibraryFragment;->getBinding()Lcom/muzk/app/databinding/FragmentLibraryBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/muzk/app/databinding/FragmentLibraryBinding;->list:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/muzk/app/ui/library/LibraryFragment;->requireContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 99
    invoke-direct {p0}, Lcom/muzk/app/ui/library/LibraryFragment;->getBinding()Lcom/muzk/app/databinding/FragmentLibraryBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/muzk/app/databinding/FragmentLibraryBinding;->list:Landroidx/recyclerview/widget/RecyclerView;

    move-object v3, v0

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 101
    invoke-direct {p0}, Lcom/muzk/app/ui/library/LibraryFragment;->getBinding()Lcom/muzk/app/databinding/FragmentLibraryBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/muzk/app/databinding/FragmentLibraryBinding;->chips:Lcom/google/android/material/chip/ChipGroup;

    new-instance v3, Lcom/muzk/app/ui/library/LibraryFragment$$ExternalSyntheticLambda24;

    invoke-direct {v3, p0}, Lcom/muzk/app/ui/library/LibraryFragment$$ExternalSyntheticLambda24;-><init>(Lcom/muzk/app/ui/library/LibraryFragment;)V

    invoke-virtual {v1, v3}, Lcom/google/android/material/chip/ChipGroup;->setOnCheckedStateChangeListener(Lcom/google/android/material/chip/ChipGroup$OnCheckedStateChangeListener;)V

    .line 105
    sget-object v1, Lcom/muzk/app/ui/library/LibraryFragment;->CHIPS:Ljava/util/Map;

    .local v1, "$this$forEach$iv":Ljava/util/Map;
    const/4 v3, 0x0

    .line 365
    .local v3, "$i$f$forEach":I
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .local v5, "element$iv":Ljava/util/Map$Entry;
    const/4 v6, 0x0

    .line 105
    .local v6, "$i$a$-forEach-LibraryFragment$onViewCreated$2":I
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/muzk/app/ui/library/LibraryTab;

    .local v7, "tab":Lcom/muzk/app/ui/library/LibraryTab;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    .line 106
    .local v8, "id":I
    invoke-direct {p0}, Lcom/muzk/app/ui/library/LibraryFragment;->getBinding()Lcom/muzk/app/databinding/FragmentLibraryBinding;

    move-result-object v9

    invoke-virtual {v9}, Lcom/muzk/app/databinding/FragmentLibraryBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    new-instance v10, Lcom/muzk/app/ui/library/LibraryFragment$$ExternalSyntheticLambda1;

    invoke-direct {v10, p0, v7}, Lcom/muzk/app/ui/library/LibraryFragment$$ExternalSyntheticLambda1;-><init>(Lcom/muzk/app/ui/library/LibraryFragment;Lcom/muzk/app/ui/library/LibraryTab;)V

    invoke-virtual {v9, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    nop

    .line 365
    .end local v6    # "$i$a$-forEach-LibraryFragment$onViewCreated$2":I
    .end local v7    # "tab":Lcom/muzk/app/ui/library/LibraryTab;
    .end local v8    # "id":I
    nop

    .end local v5    # "element$iv":Ljava/util/Map$Entry;
    goto :goto_0

    .line 366
    :cond_0
    nop

    .line 109
    .end local v1    # "$this$forEach$iv":Ljava/util/Map;
    .end local v3    # "$i$f$forEach":I
    invoke-direct {p0}, Lcom/muzk/app/ui/library/LibraryFragment;->getBinding()Lcom/muzk/app/databinding/FragmentLibraryBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/muzk/app/databinding/FragmentLibraryBinding;->selectionBar:Lcom/google/android/material/appbar/MaterialToolbar;

    sget v3, Lcom/muzk/app/R$menu;->library_selection:I

    invoke-virtual {v1, v3}, Lcom/google/android/material/appbar/MaterialToolbar;->inflateMenu(I)V

    .line 110
    invoke-direct {p0}, Lcom/muzk/app/ui/library/LibraryFragment;->getBinding()Lcom/muzk/app/databinding/FragmentLibraryBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/muzk/app/databinding/FragmentLibraryBinding;->selectionBar:Lcom/google/android/material/appbar/MaterialToolbar;

    new-instance v3, Lcom/muzk/app/ui/library/LibraryFragment$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Lcom/muzk/app/ui/library/LibraryFragment$$ExternalSyntheticLambda2;-><init>(Lcom/muzk/app/ui/library/LibraryFragment;)V

    invoke-virtual {v1, v3}, Lcom/google/android/material/appbar/MaterialToolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    invoke-direct {p0}, Lcom/muzk/app/ui/library/LibraryFragment;->getBinding()Lcom/muzk/app/databinding/FragmentLibraryBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/muzk/app/databinding/FragmentLibraryBinding;->selectionBar:Lcom/google/android/material/appbar/MaterialToolbar;

    new-instance v3, Lcom/muzk/app/ui/library/LibraryFragment$$ExternalSyntheticLambda11;

    invoke-direct {v3, p0}, Lcom/muzk/app/ui/library/LibraryFragment$$ExternalSyntheticLambda11;-><init>(Lcom/muzk/app/ui/library/LibraryFragment;)V

    invoke-virtual {v1, v3}, Lcom/google/android/material/appbar/MaterialToolbar;->setOnMenuItemClickListener(Landroidx/appcompat/widget/Toolbar$OnMenuItemClickListener;)V

    .line 127
    invoke-direct {p0}, Lcom/muzk/app/ui/library/LibraryFragment;->getBinding()Lcom/muzk/app/databinding/FragmentLibraryBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/muzk/app/databinding/FragmentLibraryBinding;->emptyAction:Lcom/google/android/material/button/MaterialButton;

    new-instance v3, Lcom/muzk/app/ui/library/LibraryFragment$$ExternalSyntheticLambda17;

    invoke-direct {v3, p0}, Lcom/muzk/app/ui/library/LibraryFragment$$ExternalSyntheticLambda17;-><init>(Lcom/muzk/app/ui/library/LibraryFragment;)V

    invoke-virtual {v1, v3}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    invoke-virtual {p0}, Lcom/muzk/app/ui/library/LibraryFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    new-instance v1, Lcom/muzk/app/ui/library/LibraryFragment$onViewCreated$6;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v0, v3}, Lcom/muzk/app/ui/library/LibraryFragment$onViewCreated$6;-><init>(Lcom/muzk/app/ui/library/LibraryFragment;Lcom/muzk/app/ui/library/LibraryAdapter;Lkotlin/coroutines/Continuation;)V

    move-object v5, v1

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 141
    return-void
.end method
