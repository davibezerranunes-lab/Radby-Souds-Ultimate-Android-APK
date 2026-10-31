.class public final Lcom/muzk/app/ui/search/SearchFragment$onViewCreated$$inlined$doAfterTextChanged$1;
.super Ljava/lang/Object;
.source "TextView.kt"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muzk/app/ui/search/SearchFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTextView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextView.kt\nandroidx/core/widget/TextViewKt$addTextChangedListener$textWatcher$1\n+ 2 SearchFragment.kt\ncom/muzk/app/ui/search/SearchFragment\n+ 3 View.kt\nandroidx/core/view/ViewKt\n+ 4 TextView.kt\nandroidx/core/widget/TextViewKt$addTextChangedListener$1\n+ 5 TextView.kt\nandroidx/core/widget/TextViewKt$addTextChangedListener$2\n*L\n1#1,82:1\n61#2:83\n62#2,2:86\n257#3,2:84\n59#4:88\n62#5:89\n*S KotlinDebug\n*F\n+ 1 SearchFragment.kt\ncom/muzk/app/ui/search/SearchFragment\n*L\n61#1:84,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\'\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\r\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J*\u0010\u0006\u001a\u00020\u00032\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\nH\u0016J*\u0010\r\u001a\u00020\u00032\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\nH\u0016\u00a8\u0006\u000f\u00b8\u0006\u0010"
    }
    d2 = {
        "androidx/core/widget/TextViewKt$addTextChangedListener$textWatcher$1",
        "Landroid/text/TextWatcher;",
        "afterTextChanged",
        "",
        "s",
        "Landroid/text/Editable;",
        "beforeTextChanged",
        "text",
        "",
        "start",
        "",
        "count",
        "after",
        "onTextChanged",
        "before",
        "core-ktx_release",
        "androidx/core/widget/TextViewKt$doAfterTextChanged$$inlined$addTextChangedListener$default$1"
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
.field final synthetic this$0:Lcom/muzk/app/ui/search/SearchFragment;


# direct methods
.method public constructor <init>(Lcom/muzk/app/ui/search/SearchFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/muzk/app/ui/search/SearchFragment$onViewCreated$$inlined$doAfterTextChanged$1;->this$0:Lcom/muzk/app/ui/search/SearchFragment;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 8
    .param p1, "s"    # Landroid/text/Editable;

    .line 68
    move-object v0, p1

    .local v0, "it":Landroid/text/Editable;
    const/4 v1, 0x0

    .line 83
    .local v1, "$i$a$-doAfterTextChanged-SearchFragment$onViewCreated$3":I
    iget-object v2, p0, Lcom/muzk/app/ui/search/SearchFragment$onViewCreated$$inlined$doAfterTextChanged$1;->this$0:Lcom/muzk/app/ui/search/SearchFragment;

    invoke-static {v2}, Lcom/muzk/app/ui/search/SearchFragment;->access$getBinding(Lcom/muzk/app/ui/search/SearchFragment;)Lcom/muzk/app/databinding/FragmentSearchBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/muzk/app/databinding/FragmentSearchBinding;->searchClear:Landroid/widget/ImageButton;

    const-string v3, "searchClear"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/view/View;

    move-object v3, v0

    check-cast v3, Ljava/lang/CharSequence;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v4

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v5

    :goto_1
    xor-int/2addr v3, v5

    .local v2, "$this$isVisible$iv":Landroid/view/View;
    .local v3, "value$iv":Z
    const/4 v6, 0x0

    .line 84
    .local v6, "$i$f$setVisible":I
    if-eqz v3, :cond_2

    move v7, v4

    goto :goto_2

    :cond_2
    const/16 v7, 0x8

    :goto_2
    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 85
    nop

    .line 86
    .end local v2    # "$this$isVisible$iv":Landroid/view/View;
    .end local v3    # "value$iv":Z
    .end local v6    # "$i$f$setVisible":I
    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    move v4, v5

    :cond_4
    if-eqz v4, :cond_5

    iget-object v2, p0, Lcom/muzk/app/ui/search/SearchFragment$onViewCreated$$inlined$doAfterTextChanged$1;->this$0:Lcom/muzk/app/ui/search/SearchFragment;

    invoke-static {v2}, Lcom/muzk/app/ui/search/SearchFragment;->access$getVm(Lcom/muzk/app/ui/search/SearchFragment;)Lcom/muzk/app/ui/search/SearchViewModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/muzk/app/ui/search/SearchViewModel;->clear()V

    .line 87
    :cond_5
    nop

    .line 68
    .end local v0    # "it":Landroid/text/Editable;
    .end local v1    # "$i$a$-doAfterTextChanged-SearchFragment$onViewCreated$3":I
    nop

    .line 69
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .line 77
    const/4 v0, 0x0

    .line 88
    .local v0, "$i$a$-addTextChangedListener-TextViewKt$addTextChangedListener$1":I
    nop

    .line 77
    .end local v0    # "$i$a$-addTextChangedListener-TextViewKt$addTextChangedListener$1":I
    nop

    .line 78
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .line 81
    const/4 v0, 0x0

    .line 89
    .local v0, "$i$a$-addTextChangedListener-TextViewKt$addTextChangedListener$2":I
    nop

    .line 81
    .end local v0    # "$i$a$-addTextChangedListener-TextViewKt$addTextChangedListener$2":I
    nop

    .line 82
    return-void
.end method
