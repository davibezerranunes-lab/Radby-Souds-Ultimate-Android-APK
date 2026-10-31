.class public abstract Landroidx/media3/session/legacy/IMediaControllerCallback$Stub;
.super Landroid/os/Binder;
.source "IMediaControllerCallback.java"

# interfaces
.implements Landroidx/media3/session/legacy/IMediaControllerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/session/legacy/IMediaControllerCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/session/legacy/IMediaControllerCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.support.v4.media.session.IMediaControllerCallback"

.field static final TRANSACTION_onCaptioningEnabledChanged:I = 0xb

.field static final TRANSACTION_onEvent:I = 0x1

.field static final TRANSACTION_onExtrasChanged:I = 0x7

.field static final TRANSACTION_onMetadataChanged:I = 0x4

.field static final TRANSACTION_onPlaybackStateChanged:I = 0x3

.field static final TRANSACTION_onQueueChanged:I = 0x5

.field static final TRANSACTION_onQueueTitleChanged:I = 0x6

.field static final TRANSACTION_onRepeatModeChanged:I = 0x9

.field static final TRANSACTION_onSessionDestroyed:I = 0x2

.field static final TRANSACTION_onSessionReady:I = 0xd

.field static final TRANSACTION_onShuffleModeChanged:I = 0xc

.field static final TRANSACTION_onShuffleModeChangedRemoved:I = 0xa

.field static final TRANSACTION_onVolumeInfoChanged:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 41
    const-string v0, "android.support.v4.media.session.IMediaControllerCallback"

    invoke-virtual {p0, p0, v0}, Landroidx/media3/session/legacy/IMediaControllerCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroidx/media3/session/legacy/IMediaControllerCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 50
    if-nez p0, :cond_0

    .line 51
    const/4 v0, 0x0

    return-object v0

    .line 53
    :cond_0
    const-string v0, "android.support.v4.media.session.IMediaControllerCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 54
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroidx/media3/session/legacy/IMediaControllerCallback;

    if-eqz v1, :cond_1

    .line 55
    move-object v1, v0

    check-cast v1, Landroidx/media3/session/legacy/IMediaControllerCallback;

    return-object v1

    .line 57
    :cond_1
    new-instance v1, Landroidx/media3/session/legacy/IMediaControllerCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroidx/media3/session/legacy/IMediaControllerCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Landroidx/media3/session/legacy/IMediaControllerCallback;
    .locals 1

    .line 560
    sget-object v0, Landroidx/media3/session/legacy/IMediaControllerCallback$Stub$Proxy;->sDefaultImpl:Landroidx/media3/session/legacy/IMediaControllerCallback;

    return-object v0
.end method

.method public static setDefaultImpl(Landroidx/media3/session/legacy/IMediaControllerCallback;)Z
    .locals 2
    .param p0, "impl"    # Landroidx/media3/session/legacy/IMediaControllerCallback;

    .line 548
    sget-object v0, Landroidx/media3/session/legacy/IMediaControllerCallback$Stub$Proxy;->sDefaultImpl:Landroidx/media3/session/legacy/IMediaControllerCallback;

    if-nez v0, :cond_1

    .line 551
    if-eqz p0, :cond_0

    .line 552
    sput-object p0, Landroidx/media3/session/legacy/IMediaControllerCallback$Stub$Proxy;->sDefaultImpl:Landroidx/media3/session/legacy/IMediaControllerCallback;

    .line 553
    const/4 v0, 0x1

    return v0

    .line 555
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 549
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 62
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 69
    const-string v0, "android.support.v4.media.session.IMediaControllerCallback"

    .line 70
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch p1, :sswitch_data_0

    .line 204
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 73
    :sswitch_0
    invoke-static {p3}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcel;

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 74
    return v2

    .line 198
    :sswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 199
    invoke-virtual {p0}, Landroidx/media3/session/legacy/IMediaControllerCallback$Stub;->onSessionReady()V

    .line 200
    return v2

    .line 190
    :sswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 192
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 193
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroidx/media3/session/legacy/IMediaControllerCallback$Stub;->onShuffleModeChanged(I)V

    .line 194
    return v2

    .line 182
    .end local v1    # "_arg0":I
    :sswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 184
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    .line 185
    .local v1, "_arg0":Z
    :cond_0
    invoke-virtual {p0, v1}, Landroidx/media3/session/legacy/IMediaControllerCallback$Stub;->onCaptioningEnabledChanged(Z)V

    .line 186
    return v2

    .line 174
    .end local v1    # "_arg0":Z
    :sswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    move v1, v2

    .line 177
    .restart local v1    # "_arg0":Z
    :cond_1
    invoke-virtual {p0, v1}, Landroidx/media3/session/legacy/IMediaControllerCallback$Stub;->onShuffleModeChangedRemoved(Z)V

    .line 178
    return v2

    .line 166
    .end local v1    # "_arg0":Z
    :sswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 169
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroidx/media3/session/legacy/IMediaControllerCallback$Stub;->onRepeatModeChanged(I)V

    .line 170
    return v2

    .line 154
    .end local v1    # "_arg0":I
    :sswitch_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    .line 157
    sget-object v1, Landroidx/media3/session/legacy/ParcelableVolumeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/session/legacy/ParcelableVolumeInfo;

    .local v1, "_arg0":Landroidx/media3/session/legacy/ParcelableVolumeInfo;
    goto :goto_0

    .line 159
    .end local v1    # "_arg0":Landroidx/media3/session/legacy/ParcelableVolumeInfo;
    :cond_2
    const/4 v1, 0x0

    .line 161
    .restart local v1    # "_arg0":Landroidx/media3/session/legacy/ParcelableVolumeInfo;
    :goto_0
    invoke-virtual {p0, v1}, Landroidx/media3/session/legacy/IMediaControllerCallback$Stub;->onVolumeInfoChanged(Landroidx/media3/session/legacy/ParcelableVolumeInfo;)V

    .line 162
    return v2

    .line 142
    .end local v1    # "_arg0":Landroidx/media3/session/legacy/ParcelableVolumeInfo;
    :sswitch_7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3

    .line 145
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .local v1, "_arg0":Landroid/os/Bundle;
    goto :goto_1

    .line 147
    .end local v1    # "_arg0":Landroid/os/Bundle;
    :cond_3
    const/4 v1, 0x0

    .line 149
    .restart local v1    # "_arg0":Landroid/os/Bundle;
    :goto_1
    invoke-virtual {p0, v1}, Landroidx/media3/session/legacy/IMediaControllerCallback$Stub;->onExtrasChanged(Landroid/os/Bundle;)V

    .line 150
    return v2

    .line 130
    .end local v1    # "_arg0":Landroid/os/Bundle;
    :sswitch_8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4

    .line 133
    sget-object v1, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .local v1, "_arg0":Ljava/lang/CharSequence;
    goto :goto_2

    .line 135
    .end local v1    # "_arg0":Ljava/lang/CharSequence;
    :cond_4
    const/4 v1, 0x0

    .line 137
    .restart local v1    # "_arg0":Ljava/lang/CharSequence;
    :goto_2
    invoke-virtual {p0, v1}, Landroidx/media3/session/legacy/IMediaControllerCallback$Stub;->onQueueTitleChanged(Ljava/lang/CharSequence;)V

    .line 138
    return v2

    .line 122
    .end local v1    # "_arg0":Ljava/lang/CharSequence;
    :sswitch_9
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    sget-object v1, Landroidx/media3/session/legacy/MediaSessionCompat$QueueItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 125
    .local v1, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/session/legacy/MediaSessionCompat$QueueItem;>;"
    invoke-virtual {p0, v1}, Landroidx/media3/session/legacy/IMediaControllerCallback$Stub;->onQueueChanged(Ljava/util/List;)V

    .line 126
    return v2

    .line 110
    .end local v1    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/session/legacy/MediaSessionCompat$QueueItem;>;"
    :sswitch_a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_5

    .line 113
    sget-object v1, Landroidx/media3/session/legacy/MediaMetadataCompat;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/session/legacy/MediaMetadataCompat;

    .local v1, "_arg0":Landroidx/media3/session/legacy/MediaMetadataCompat;
    goto :goto_3

    .line 115
    .end local v1    # "_arg0":Landroidx/media3/session/legacy/MediaMetadataCompat;
    :cond_5
    const/4 v1, 0x0

    .line 117
    .restart local v1    # "_arg0":Landroidx/media3/session/legacy/MediaMetadataCompat;
    :goto_3
    invoke-virtual {p0, v1}, Landroidx/media3/session/legacy/IMediaControllerCallback$Stub;->onMetadataChanged(Landroidx/media3/session/legacy/MediaMetadataCompat;)V

    .line 118
    return v2

    .line 98
    .end local v1    # "_arg0":Landroidx/media3/session/legacy/MediaMetadataCompat;
    :sswitch_b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_6

    .line 101
    sget-object v1, Landroidx/media3/session/legacy/PlaybackStateCompat;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/session/legacy/PlaybackStateCompat;

    .local v1, "_arg0":Landroidx/media3/session/legacy/PlaybackStateCompat;
    goto :goto_4

    .line 103
    .end local v1    # "_arg0":Landroidx/media3/session/legacy/PlaybackStateCompat;
    :cond_6
    const/4 v1, 0x0

    .line 105
    .restart local v1    # "_arg0":Landroidx/media3/session/legacy/PlaybackStateCompat;
    :goto_4
    invoke-virtual {p0, v1}, Landroidx/media3/session/legacy/IMediaControllerCallback$Stub;->onPlaybackStateChanged(Landroidx/media3/session/legacy/PlaybackStateCompat;)V

    .line 106
    return v2

    .line 92
    .end local v1    # "_arg0":Landroidx/media3/session/legacy/PlaybackStateCompat;
    :sswitch_c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0}, Landroidx/media3/session/legacy/IMediaControllerCallback$Stub;->onSessionDestroyed()V

    .line 94
    return v2

    .line 78
    :sswitch_d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 82
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_7

    .line 83
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .local v3, "_arg1":Landroid/os/Bundle;
    goto :goto_5

    .line 85
    .end local v3    # "_arg1":Landroid/os/Bundle;
    :cond_7
    const/4 v3, 0x0

    .line 87
    .restart local v3    # "_arg1":Landroid/os/Bundle;
    :goto_5
    invoke-virtual {p0, v1, v3}, Landroidx/media3/session/legacy/IMediaControllerCallback$Stub;->onEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 88
    return v2

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_d
        0x2 -> :sswitch_c
        0x3 -> :sswitch_b
        0x4 -> :sswitch_a
        0x5 -> :sswitch_9
        0x6 -> :sswitch_8
        0x7 -> :sswitch_7
        0x8 -> :sswitch_6
        0x9 -> :sswitch_5
        0xa -> :sswitch_4
        0xb -> :sswitch_3
        0xc -> :sswitch_2
        0xd -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
