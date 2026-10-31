.class public final synthetic Landroidx/media3/common/ForwardingSimpleBasePlayer$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;


# instance fields
.field public final synthetic f$0:Landroidx/media3/common/ForwardingSimpleBasePlayer$ForwardingPositionSupplier;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/common/ForwardingSimpleBasePlayer$ForwardingPositionSupplier;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/common/ForwardingSimpleBasePlayer$$ExternalSyntheticLambda1;->f$0:Landroidx/media3/common/ForwardingSimpleBasePlayer$ForwardingPositionSupplier;

    return-void
.end method


# virtual methods
.method public final get()J
    .locals 2

    .line 0
    iget-object v0, p0, Landroidx/media3/common/ForwardingSimpleBasePlayer$$ExternalSyntheticLambda1;->f$0:Landroidx/media3/common/ForwardingSimpleBasePlayer$ForwardingPositionSupplier;

    invoke-virtual {v0}, Landroidx/media3/common/ForwardingSimpleBasePlayer$ForwardingPositionSupplier;->getCurrentPositionMs()J

    move-result-wide v0

    return-wide v0
.end method
