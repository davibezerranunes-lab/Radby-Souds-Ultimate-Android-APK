.class Landroidx/media3/session/legacy/MediaSessionCompat$Token$1;
.super Ljava/lang/Object;
.source "MediaSessionCompat.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/session/legacy/MediaSessionCompat$Token;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroidx/media3/session/legacy/MediaSessionCompat$Token;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1971
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroidx/media3/session/legacy/MediaSessionCompat$Token;
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 1976
    nop

    .line 1977
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    .line 1981
    .local v0, "inner":Ljava/lang/Object;
    new-instance v1, Landroidx/media3/session/legacy/MediaSessionCompat$Token;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/media3/session/legacy/MediaSessionCompat$Token;-><init>(Ljava/lang/Object;)V

    return-object v1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1971
    invoke-virtual {p0, p1}, Landroidx/media3/session/legacy/MediaSessionCompat$Token$1;->createFromParcel(Landroid/os/Parcel;)Landroidx/media3/session/legacy/MediaSessionCompat$Token;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroidx/media3/session/legacy/MediaSessionCompat$Token;
    .locals 1
    .param p1, "size"    # I

    .line 1986
    new-array v0, p1, [Landroidx/media3/session/legacy/MediaSessionCompat$Token;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1971
    invoke-virtual {p0, p1}, Landroidx/media3/session/legacy/MediaSessionCompat$Token$1;->newArray(I)[Landroidx/media3/session/legacy/MediaSessionCompat$Token;

    move-result-object p1

    return-object p1
.end method
