.class public final synthetic Lcom/muzk/app/ui/search/SearchAdapter$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/muzk/app/ui/search/SearchAdapter;

.field public final synthetic f$1:Lcom/muzk/app/data/RemoteTrack;


# direct methods
.method public synthetic constructor <init>(Lcom/muzk/app/ui/search/SearchAdapter;Lcom/muzk/app/data/RemoteTrack;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/muzk/app/ui/search/SearchAdapter$$ExternalSyntheticLambda1;->f$0:Lcom/muzk/app/ui/search/SearchAdapter;

    iput-object p2, p0, Lcom/muzk/app/ui/search/SearchAdapter$$ExternalSyntheticLambda1;->f$1:Lcom/muzk/app/data/RemoteTrack;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/muzk/app/ui/search/SearchAdapter$$ExternalSyntheticLambda1;->f$0:Lcom/muzk/app/ui/search/SearchAdapter;

    iget-object v1, p0, Lcom/muzk/app/ui/search/SearchAdapter$$ExternalSyntheticLambda1;->f$1:Lcom/muzk/app/data/RemoteTrack;

    invoke-static {v0, v1, p1}, Lcom/muzk/app/ui/search/SearchAdapter;->$r8$lambda$ST4SbEOEyDx7a6RXdoZeA9SrIt4(Lcom/muzk/app/ui/search/SearchAdapter;Lcom/muzk/app/data/RemoteTrack;Landroid/view/View;)V

    return-void
.end method
