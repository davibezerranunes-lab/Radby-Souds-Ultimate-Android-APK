.class public final Landroidx/navigation/NavDestination$DeepLinkMatch;
.super Ljava/lang/Object;
.source "NavDestination.kt"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/navigation/NavDestination;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DeepLinkMatch"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Landroidx/navigation/NavDestination$DeepLinkMatch;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNavDestination.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NavDestination.kt\nandroidx/navigation/NavDestination$DeepLinkMatch\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,859:1\n1855#2,2:860\n*S KotlinDebug\n*F\n+ 1 NavDestination.kt\nandroidx/navigation/NavDestination$DeepLinkMatch\n*L\n128#1:860,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000c\u0008\u0007\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B7\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u0007\u0012\u0006\u0010\u000b\u001a\u00020\t\u00a2\u0006\u0002\u0010\u000cJ\u0011\u0010\u0011\u001a\u00020\t2\u0006\u0010\u0012\u001a\u00020\u0000H\u0096\u0002J\u0010\u0010\u0013\u001a\u00020\u00072\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u000e\u0010\n\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Landroidx/navigation/NavDestination$DeepLinkMatch;",
        "",
        "destination",
        "Landroidx/navigation/NavDestination;",
        "matchingArgs",
        "Landroid/os/Bundle;",
        "isExactDeepLink",
        "",
        "matchingPathSegments",
        "",
        "hasMatchingAction",
        "mimeTypeMatchLevel",
        "(Landroidx/navigation/NavDestination;Landroid/os/Bundle;ZIZI)V",
        "getDestination",
        "()Landroidx/navigation/NavDestination;",
        "getMatchingArgs",
        "()Landroid/os/Bundle;",
        "compareTo",
        "other",
        "hasMatchingArgs",
        "arguments",
        "navigation-common_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final destination:Landroidx/navigation/NavDestination;

.field private final hasMatchingAction:Z

.field private final isExactDeepLink:Z

.field private final matchingArgs:Landroid/os/Bundle;

.field private final matchingPathSegments:I

.field private final mimeTypeMatchLevel:I


# direct methods
.method public constructor <init>(Landroidx/navigation/NavDestination;Landroid/os/Bundle;ZIZI)V
    .locals 1
    .param p1, "destination"    # Landroidx/navigation/NavDestination;
    .param p2, "matchingArgs"    # Landroid/os/Bundle;
    .param p3, "isExactDeepLink"    # Z
    .param p4, "matchingPathSegments"    # I
    .param p5, "hasMatchingAction"    # Z
    .param p6, "mimeTypeMatchLevel"    # I

    const-string v0, "destination"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Landroidx/navigation/NavDestination$DeepLinkMatch;->destination:Landroidx/navigation/NavDestination;

    .line 70
    iput-object p2, p0, Landroidx/navigation/NavDestination$DeepLinkMatch;->matchingArgs:Landroid/os/Bundle;

    .line 72
    iput-boolean p3, p0, Landroidx/navigation/NavDestination$DeepLinkMatch;->isExactDeepLink:Z

    .line 73
    iput p4, p0, Landroidx/navigation/NavDestination$DeepLinkMatch;->matchingPathSegments:I

    .line 74
    iput-boolean p5, p0, Landroidx/navigation/NavDestination$DeepLinkMatch;->hasMatchingAction:Z

    .line 75
    iput p6, p0, Landroidx/navigation/NavDestination$DeepLinkMatch;->mimeTypeMatchLevel:I

    .line 68
    return-void
.end method


# virtual methods
.method public compareTo(Landroidx/navigation/NavDestination$DeepLinkMatch;)I
    .locals 5
    .param p1, "other"    # Landroidx/navigation/NavDestination$DeepLinkMatch;

    const-string/jumbo v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    iget-boolean v0, p0, Landroidx/navigation/NavDestination$DeepLinkMatch;->isExactDeepLink:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Landroidx/navigation/NavDestination$DeepLinkMatch;->isExactDeepLink:Z

    if-nez v0, :cond_0

    .line 80
    return v1

    .line 81
    :cond_0
    iget-boolean v0, p0, Landroidx/navigation/NavDestination$DeepLinkMatch;->isExactDeepLink:Z

    const/4 v2, -0x1

    if-nez v0, :cond_1

    iget-boolean v0, p1, Landroidx/navigation/NavDestination$DeepLinkMatch;->isExactDeepLink:Z

    if-eqz v0, :cond_1

    .line 82
    return v2

    .line 85
    :cond_1
    iget v0, p0, Landroidx/navigation/NavDestination$DeepLinkMatch;->matchingPathSegments:I

    iget v3, p1, Landroidx/navigation/NavDestination$DeepLinkMatch;->matchingPathSegments:I

    sub-int/2addr v0, v3

    .line 86
    .local v0, "pathSegmentDifference":I
    if-lez v0, :cond_2

    .line 87
    return v1

    .line 88
    :cond_2
    if-gez v0, :cond_3

    .line 89
    return v2

    .line 91
    :cond_3
    iget-object v3, p0, Landroidx/navigation/NavDestination$DeepLinkMatch;->matchingArgs:Landroid/os/Bundle;

    if-eqz v3, :cond_4

    iget-object v3, p1, Landroidx/navigation/NavDestination$DeepLinkMatch;->matchingArgs:Landroid/os/Bundle;

    if-nez v3, :cond_4

    .line 92
    return v1

    .line 93
    :cond_4
    iget-object v3, p0, Landroidx/navigation/NavDestination$DeepLinkMatch;->matchingArgs:Landroid/os/Bundle;

    if-nez v3, :cond_5

    iget-object v3, p1, Landroidx/navigation/NavDestination$DeepLinkMatch;->matchingArgs:Landroid/os/Bundle;

    if-eqz v3, :cond_5

    .line 94
    return v2

    .line 96
    :cond_5
    iget-object v3, p0, Landroidx/navigation/NavDestination$DeepLinkMatch;->matchingArgs:Landroid/os/Bundle;

    if-eqz v3, :cond_7

    .line 97
    iget-object v3, p0, Landroidx/navigation/NavDestination$DeepLinkMatch;->matchingArgs:Landroid/os/Bundle;

    invoke-virtual {v3}, Landroid/os/Bundle;->size()I

    move-result v3

    iget-object v4, p1, Landroidx/navigation/NavDestination$DeepLinkMatch;->matchingArgs:Landroid/os/Bundle;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Landroid/os/Bundle;->size()I

    move-result v4

    sub-int/2addr v3, v4

    .line 98
    .local v3, "sizeDifference":I
    if-lez v3, :cond_6

    .line 99
    return v1

    .line 100
    :cond_6
    if-gez v3, :cond_7

    .line 101
    return v2

    .line 104
    .end local v3    # "sizeDifference":I
    :cond_7
    iget-boolean v3, p0, Landroidx/navigation/NavDestination$DeepLinkMatch;->hasMatchingAction:Z

    if-eqz v3, :cond_8

    iget-boolean v3, p1, Landroidx/navigation/NavDestination$DeepLinkMatch;->hasMatchingAction:Z

    if-nez v3, :cond_8

    .line 105
    return v1

    .line 106
    :cond_8
    iget-boolean v1, p0, Landroidx/navigation/NavDestination$DeepLinkMatch;->hasMatchingAction:Z

    if-nez v1, :cond_9

    iget-boolean v1, p1, Landroidx/navigation/NavDestination$DeepLinkMatch;->hasMatchingAction:Z

    if-eqz v1, :cond_9

    .line 107
    return v2

    .line 109
    :cond_9
    iget v1, p0, Landroidx/navigation/NavDestination$DeepLinkMatch;->mimeTypeMatchLevel:I

    iget v2, p1, Landroidx/navigation/NavDestination$DeepLinkMatch;->mimeTypeMatchLevel:I

    sub-int/2addr v1, v2

    return v1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;

    .line 67
    move-object v0, p1

    check-cast v0, Landroidx/navigation/NavDestination$DeepLinkMatch;

    invoke-virtual {p0, v0}, Landroidx/navigation/NavDestination$DeepLinkMatch;->compareTo(Landroidx/navigation/NavDestination$DeepLinkMatch;)I

    move-result v0

    return v0
.end method

.method public final getDestination()Landroidx/navigation/NavDestination;
    .locals 1

    .line 69
    iget-object v0, p0, Landroidx/navigation/NavDestination$DeepLinkMatch;->destination:Landroidx/navigation/NavDestination;

    return-object v0
.end method

.method public final getMatchingArgs()Landroid/os/Bundle;
    .locals 1

    .line 71
    iget-object v0, p0, Landroidx/navigation/NavDestination$DeepLinkMatch;->matchingArgs:Landroid/os/Bundle;

    return-object v0
.end method

.method public final hasMatchingArgs(Landroid/os/Bundle;)Z
    .locals 12
    .param p1, "arguments"    # Landroid/os/Bundle;

    .line 126
    const/4 v0, 0x0

    if-eqz p1, :cond_8

    iget-object v1, p0, Landroidx/navigation/NavDestination$DeepLinkMatch;->matchingArgs:Landroid/os/Bundle;

    if-nez v1, :cond_0

    goto/16 :goto_4

    .line 128
    :cond_0
    iget-object v1, p0, Landroidx/navigation/NavDestination$DeepLinkMatch;->matchingArgs:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    const-string v2, "matchingArgs.keySet()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Iterable;

    .local v1, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 860
    .local v2, "$i$f$forEach":I
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .local v4, "element$iv":Ljava/lang/Object;
    move-object v6, v4

    check-cast v6, Ljava/lang/String;

    .local v6, "key":Ljava/lang/String;
    const/4 v7, 0x0

    .line 130
    .local v7, "$i$a$-forEach-NavDestination$DeepLinkMatch$hasMatchingArgs$1":I
    invoke-virtual {p1, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    return v0

    .line 132
    :cond_1
    iget-object v8, p0, Landroidx/navigation/NavDestination$DeepLinkMatch;->destination:Landroidx/navigation/NavDestination;

    invoke-static {v8}, Landroidx/navigation/NavDestination;->access$get_arguments$p(Landroidx/navigation/NavDestination;)Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/navigation/NavArgument;

    const/4 v9, 0x0

    if-eqz v8, :cond_2

    invoke-virtual {v8}, Landroidx/navigation/NavArgument;->getType()Landroidx/navigation/NavType;

    move-result-object v8

    goto :goto_1

    :cond_2
    move-object v8, v9

    .line 133
    .local v8, "type":Landroidx/navigation/NavType;
    :goto_1
    const-string v10, "key"

    if-eqz v8, :cond_3

    iget-object v11, p0, Landroidx/navigation/NavDestination$DeepLinkMatch;->matchingArgs:Landroid/os/Bundle;

    invoke-static {v6, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8, v11, v6}, Landroidx/navigation/NavType;->get(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    goto :goto_2

    :cond_3
    move-object v11, v9

    .line 134
    .local v11, "matchingArgValue":Ljava/lang/Object;
    :goto_2
    if-eqz v8, :cond_4

    invoke-static {v6, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8, p1, v6}, Landroidx/navigation/NavType;->get(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 135
    .local v9, "entryArgValue":Ljava/lang/Object;
    :cond_4
    if-eqz v8, :cond_5

    invoke-virtual {v8, v11, v9}, Landroidx/navigation/NavType;->valueEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    goto :goto_3

    :cond_5
    move v5, v0

    :goto_3
    if-eqz v5, :cond_6

    .line 136
    return v0

    .line 138
    :cond_6
    nop

    .line 860
    .end local v6    # "key":Ljava/lang/String;
    .end local v7    # "$i$a$-forEach-NavDestination$DeepLinkMatch$hasMatchingArgs$1":I
    .end local v8    # "type":Landroidx/navigation/NavType;
    .end local v9    # "entryArgValue":Ljava/lang/Object;
    .end local v11    # "matchingArgValue":Ljava/lang/Object;
    nop

    .end local v4    # "element$iv":Ljava/lang/Object;
    goto :goto_0

    .line 861
    :cond_7
    nop

    .line 139
    .end local v1    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$forEach":I
    return v5

    .line 126
    :cond_8
    :goto_4
    return v0
.end method
