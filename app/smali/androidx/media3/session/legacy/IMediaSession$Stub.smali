.class public abstract Landroidx/media3/session/legacy/IMediaSession$Stub;
.super Landroid/os/Binder;
.source "IMediaSession.java"

# interfaces
.implements Landroidx/media3/session/legacy/IMediaSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/session/legacy/IMediaSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/session/legacy/IMediaSession$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.support.v4.media.session.IMediaSession"

.field static final TRANSACTION_addQueueItem:I = 0x29

.field static final TRANSACTION_addQueueItemAt:I = 0x2a

.field static final TRANSACTION_adjustVolume:I = 0xb

.field static final TRANSACTION_fastForward:I = 0x16

.field static final TRANSACTION_getExtras:I = 0x1f

.field static final TRANSACTION_getFlags:I = 0x9

.field static final TRANSACTION_getLaunchPendingIntent:I = 0x8

.field static final TRANSACTION_getMetadata:I = 0x1b

.field static final TRANSACTION_getPackageName:I = 0x6

.field static final TRANSACTION_getPlaybackState:I = 0x1c

.field static final TRANSACTION_getQueue:I = 0x1d

.field static final TRANSACTION_getQueueTitle:I = 0x1e

.field static final TRANSACTION_getRatingType:I = 0x20

.field static final TRANSACTION_getRepeatMode:I = 0x25

.field static final TRANSACTION_getSessionInfo:I = 0x32

.field static final TRANSACTION_getShuffleMode:I = 0x2f

.field static final TRANSACTION_getTag:I = 0x7

.field static final TRANSACTION_getVolumeAttributes:I = 0xa

.field static final TRANSACTION_isCaptioningEnabled:I = 0x2d

.field static final TRANSACTION_isShuffleModeEnabledRemoved:I = 0x26

.field static final TRANSACTION_isTransportControlEnabled:I = 0x5

.field static final TRANSACTION_next:I = 0x14

.field static final TRANSACTION_pause:I = 0x12

.field static final TRANSACTION_play:I = 0xd

.field static final TRANSACTION_playFromMediaId:I = 0xe

.field static final TRANSACTION_playFromSearch:I = 0xf

.field static final TRANSACTION_playFromUri:I = 0x10

.field static final TRANSACTION_prepare:I = 0x21

.field static final TRANSACTION_prepareFromMediaId:I = 0x22

.field static final TRANSACTION_prepareFromSearch:I = 0x23

.field static final TRANSACTION_prepareFromUri:I = 0x24

.field static final TRANSACTION_previous:I = 0x15

.field static final TRANSACTION_rate:I = 0x19

.field static final TRANSACTION_rateWithExtras:I = 0x33

.field static final TRANSACTION_registerCallbackListener:I = 0x3

.field static final TRANSACTION_removeQueueItem:I = 0x2b

.field static final TRANSACTION_removeQueueItemAt:I = 0x2c

.field static final TRANSACTION_rewind:I = 0x17

.field static final TRANSACTION_seekTo:I = 0x18

.field static final TRANSACTION_sendCommand:I = 0x1

.field static final TRANSACTION_sendCustomAction:I = 0x1a

.field static final TRANSACTION_sendMediaButton:I = 0x2

.field static final TRANSACTION_setCaptioningEnabled:I = 0x2e

.field static final TRANSACTION_setPlaybackSpeed:I = 0x31

.field static final TRANSACTION_setRepeatMode:I = 0x27

.field static final TRANSACTION_setShuffleMode:I = 0x30

.field static final TRANSACTION_setShuffleModeEnabledRemoved:I = 0x28

.field static final TRANSACTION_setVolumeTo:I = 0xc

.field static final TRANSACTION_skipToQueueItem:I = 0x11

.field static final TRANSACTION_stop:I = 0x13

.field static final TRANSACTION_unregisterCallbackListener:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 38
    const-string v0, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {p0, p0, v0}, Landroidx/media3/session/legacy/IMediaSession$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroidx/media3/session/legacy/IMediaSession;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 46
    if-nez p0, :cond_0

    .line 47
    const/4 v0, 0x0

    return-object v0

    .line 49
    :cond_0
    const-string v0, "android.support.v4.media.session.IMediaSession"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 50
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroidx/media3/session/legacy/IMediaSession;

    if-eqz v1, :cond_1

    .line 51
    move-object v1, v0

    check-cast v1, Landroidx/media3/session/legacy/IMediaSession;

    return-object v1

    .line 53
    :cond_1
    new-instance v1, Landroidx/media3/session/legacy/IMediaSession$Stub$Proxy;

    invoke-direct {v1, p0}, Landroidx/media3/session/legacy/IMediaSession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Landroidx/media3/session/legacy/IMediaSession;
    .locals 1

    .line 1906
    sget-object v0, Landroidx/media3/session/legacy/IMediaSession$Stub$Proxy;->sDefaultImpl:Landroidx/media3/session/legacy/IMediaSession;

    return-object v0
.end method

.method public static setDefaultImpl(Landroidx/media3/session/legacy/IMediaSession;)Z
    .locals 2
    .param p0, "impl"    # Landroidx/media3/session/legacy/IMediaSession;

    .line 1894
    sget-object v0, Landroidx/media3/session/legacy/IMediaSession$Stub$Proxy;->sDefaultImpl:Landroidx/media3/session/legacy/IMediaSession;

    if-nez v0, :cond_1

    .line 1897
    if-eqz p0, :cond_0

    .line 1898
    sput-object p0, Landroidx/media3/session/legacy/IMediaSession$Stub$Proxy;->sDefaultImpl:Landroidx/media3/session/legacy/IMediaSession;

    .line 1899
    const/4 v0, 0x1

    return v0

    .line 1901
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 1895
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 58
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 65
    const-string v0, "android.support.v4.media.session.IMediaSession"

    .line 66
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch p1, :sswitch_data_0

    .line 639
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 69
    :sswitch_0
    invoke-static {p3}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcel;

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 70
    return v2

    .line 560
    :sswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 562
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    .line 563
    sget-object v1, Landroidx/media3/session/legacy/RatingCompat;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/session/legacy/RatingCompat;

    .local v1, "_arg0":Landroidx/media3/session/legacy/RatingCompat;
    goto :goto_0

    .line 565
    .end local v1    # "_arg0":Landroidx/media3/session/legacy/RatingCompat;
    :cond_0
    const/4 v1, 0x0

    .line 568
    .restart local v1    # "_arg0":Landroidx/media3/session/legacy/RatingCompat;
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 569
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .local v3, "_arg1":Landroid/os/Bundle;
    goto :goto_1

    .line 571
    .end local v3    # "_arg1":Landroid/os/Bundle;
    :cond_1
    const/4 v3, 0x0

    .line 573
    .restart local v3    # "_arg1":Landroid/os/Bundle;
    :goto_1
    invoke-virtual {p0, v1, v3}, Landroidx/media3/session/legacy/IMediaSession$Stub;->rateWithExtras(Landroidx/media3/session/legacy/RatingCompat;Landroid/os/Bundle;)V

    .line 574
    invoke-static {p3}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Parcel;

    invoke-virtual {v4}, Landroid/os/Parcel;->writeNoException()V

    .line 575
    return v2

    .line 362
    .end local v1    # "_arg0":Landroidx/media3/session/legacy/RatingCompat;
    .end local v3    # "_arg1":Landroid/os/Bundle;
    :sswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 363
    invoke-virtual {p0}, Landroidx/media3/session/legacy/IMediaSession$Stub;->getSessionInfo()Landroid/os/Bundle;

    move-result-object v3

    .line 364
    .local v3, "_result":Landroid/os/Bundle;
    invoke-static {p3}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Parcel;

    invoke-virtual {v4}, Landroid/os/Parcel;->writeNoException()V

    .line 365
    if-eqz v3, :cond_2

    .line 366
    invoke-static {p3}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcel;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 367
    invoke-virtual {v3, p3, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    .line 369
    :cond_2
    invoke-static {p3}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Parcel;

    invoke-virtual {v4, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 371
    :goto_2
    return v2

    .line 579
    .end local v3    # "_result":Landroid/os/Bundle;
    :sswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 581
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    .line 582
    .local v1, "_arg0":F
    invoke-virtual {p0, v1}, Landroidx/media3/session/legacy/IMediaSession$Stub;->setPlaybackSpeed(F)V

    .line 583
    invoke-static {p3}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcel;

    invoke-virtual {v3}, Landroid/os/Parcel;->writeNoException()V

    .line 584
    return v2

    .line 615
    .end local v1    # "_arg0":F
    :sswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 617
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 618
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroidx/media3/session/legacy/IMediaSession$Stub;->setShuffleMode(I)V

    .line 619
    invoke-static {p3}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcel;

    invoke-virtual {v3}, Landroid/os/Parcel;->writeNoException()V

    .line 620
    return v2

    .line 304
    .end local v1    # "_arg0":I
    :sswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 305
    invoke-virtual {p0}, Landroidx/media3/session/legacy/IMediaSession$Stub;->getShuffleMode()I

    move-result v1

    .line 306
    .local v1, "_result":I
    invoke-static {p3}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcel;

    invoke-virtual {v3}, Landroid/os/Parcel;->writeNoException()V

    .line 307
    invoke-static {p3}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcel;

    invoke-virtual {v3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 308
    return v2

    .line 588
    .end local v1    # "_result":I
    :sswitch_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 590
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3

    move v1, v2

    .line 591
    .local v1, "_arg0":Z
    :cond_3
    invoke-virtual {p0, v1}, Landroidx/media3/session/legacy/IMediaSession$Stub;->setCaptioningEnabled(Z)V

    .line 592
    invoke-static {p3}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcel;

    invoke-virtual {v3}, Landroid/os/Parcel;->writeNoException()V

    .line 593
    return v2

    .line 280
    .end local v1    # "_arg0":Z
    :sswitch_7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 281
    invoke-virtual {p0}, Landroidx/media3/session/legacy/IMediaSession$Stub;->isCaptioningEnabled()Z

    move-result v1

    .line 282
    .local v1, "_result":Z
    invoke-static {p3}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcel;

    invoke-virtual {v3}, Landroid/os/Parcel;->writeNoException()V

    .line 283
    invoke-static {p3}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcel;

    invoke-virtual {v3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 284
    return v2

    .line 353
    .end local v1    # "_result":Z
    :sswitch_8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 355
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 356
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroidx/media3/session/legacy/IMediaSession$Stub;->removeQueueItemAt(I)V

    .line 357
    invoke-static {p3}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcel;

    invoke-virtual {v3}, Landroid/os/Parcel;->writeNoException()V

    .line 358
    return v2

    .line 340
    .end local v1    # "_arg0":I
    :sswitch_9
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 342
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4

    .line 343
    sget-object v1, Landroidx/media3/session/legacy/MediaDescriptionCompat;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/session/legacy/MediaDescriptionCompat;

    .local v1, "_arg0":Landroidx/media3/session/legacy/MediaDescriptionCompat;
    goto :goto_3

    .line 345
    .end local v1    # "_arg0":Landroidx/media3/session/legacy/MediaDescriptionCompat;
    :cond_4
    const/4 v1, 0x0

    .line 347
    .restart local v1    # "_arg0":Landroidx/media3/session/legacy/MediaDescriptionCompat;
    :goto_3
    invoke-virtual {p0, v1}, Landroidx/media3/session/legacy/IMediaSession$Stub;->removeQueueItem(Landroidx/media3/session/legacy/MediaDescriptionCompat;)V

    .line 348
    invoke-static {p3}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcel;

    invoke-virtual {v3}, Landroid/os/Parcel;->writeNoException()V

    .line 349
    return v2

    .line 325
    .end local v1    # "_arg0":Landroidx/media3/session/legacy/MediaDescriptionCompat;
    :sswitch_a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 327
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_5

    .line 328
    sget-object v1, Landroidx/media3/session/legacy/MediaDescriptionCompat;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/session/legacy/MediaDescriptionCompat;

    .restart local v1    # "_arg0":Landroidx/media3/session/legacy/MediaDescriptionCompat;
    goto :goto_4

    .line 330
    .end local v1    # "_arg0":Landroidx/media3/session/legacy/MediaDescriptionCompat;
    :cond_5
    const/4 v1, 0x0

    .line 333
    .restart local v1    # "_arg0":Landroidx/media3/session/legacy/MediaDescriptionCompat;
    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 334
    .local v3, "_arg1":I
    invoke-virtual {p0, v1, v3}, Landroidx/media3/session/legacy/IMediaSession$Stub;->addQueueItemAt(Landroidx/media3/session/legacy/MediaDescriptionCompat;I)V

    .line 335
    invoke-static {p3}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Parcel;

    invoke-virtual {v4}, Landroid/os/Parcel;->writeNoException()V

    .line 336
    return v2

    .line 312
    .end local v1    # "_arg0":Landroidx/media3/session/legacy/MediaDescriptionCompat;
    .end local v3    # "_arg1":I
    :sswitch_b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 314
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_6

    .line 315
    sget-object v1, Landroidx/media3/session/legacy/MediaDescriptionCompat;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/session/legacy/MediaDescriptionCompat;

    .restart local v1    # "_arg0":Landroidx/media3/session/legacy/MediaDescriptionCompat;
    goto :goto_5

    .line 317
    .end local v1    # "_arg0":Landroidx/media3/session/legacy/MediaDescriptionCompat;
    :cond_6
    const/4 v1, 0x0

    .line 319
    .restart local v1    # "_arg0":Landroidx/media3/session/legacy/MediaDescriptionCompat;
    :goto_5
    invoke-virtual {p0, v1}, Landroidx/media3/session/legacy/IMediaSession$Stub;->addQueueItem(Landroidx/media3/session/legacy/MediaDescriptionCompat;)V

    .line 320
    invoke-static {p3}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcel;

    invoke-virtual {v3}, Landroid/os/Parcel;->writeNoException()V

    .line 321
    return v2

    .line 606
    .end local v1    # "_arg0":Landroidx/media3/session/legacy/MediaDescriptionCompat;
    :sswitch_c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 608
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_7

    move v1, v2

    .line 609
    .local v1, "_arg0":Z
    :cond_7
    invoke-virtual {p0, v1}, Landroidx/media3/session/legacy/IMediaSession$Stub;->setShuffleModeEnabledRemoved(Z)V

    .line 610
    invoke-static {p3}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcel;

    invoke-virtual {v3}, Landroid/os/Parcel;->writeNoException()V

    .line 611
    return v2

    .line 597
    .end local v1    # "_arg0":Z
    :sswitch_d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 599
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 600
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroidx/media3/session/legacy/IMediaSession$Stub;->setRepeatMode(I)V

    .line 601
    invoke-static {p3}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcel;

    invoke-virtual {v3}, Landroid/os/Parcel;->writeNoException()V

    .line 602
    return v2

    .line 296
    .end local v1    # "_arg0":I
    :sswitch_e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 297
    invoke-virtual {p0}, Landroidx/media3/session/legacy/IMediaSession$Stub;->isShuffleModeEnabledRemoved()Z

    move-result v1

    .line 298
    .local v1, "_result":Z
    invoke-static {p3}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcel;

    invoke-virtual {v3}, Landroid/os/Parcel;->writeNoException()V

    .line 299
    invoke-static {p3}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcel;

    invoke-virtual {v3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 300
    return v2

    .line 288
    .end local v1    # "_result":Z
    :sswitch_f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 289
    invoke-virtual {p0}, Landroidx/media3/session/legacy/IMediaSession$Stub;->getRepeatMode()I

    move-result v1

    .line 290
    .local v1, "_result":I
    invoke-static {p3}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcel;

    invoke-virtual {v3}, Landroid/os/Parcel;->writeNoException()V

    .line 291
    invoke-static {p3}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcel;

    invoke-virtual {v3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 292
    return v2

    .line 412
    .end local v1    # "_result":I
    :sswitch_10
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 414
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_8

    .line 415
    sget-object v1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .local v1, "_arg0":Landroid/net/Uri;
    goto :goto_6

    .line 417
    .end local v1    # "_arg0":Landroid/net/Uri;
    :cond_8
    const/4 v1, 0x0

    .line 420
    .restart local v1    # "_arg0":Landroid/net/Uri;
    :goto_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_9

    .line 421
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .local v3, "_arg1":Landroid/os/Bundle;
    goto :goto_7

    .line 423
    .end local v3    # "_arg1":Landroid/os/Bundle;
    :cond_9
    const/4 v3, 0x0

    .line 425
    .restart local v3    # "_arg1":Landroid/os/Bundle;
    :goto_7
    invoke-virtual {p0, v1, v3}, Landroidx/media3/session/legacy/IMediaSession$Stub;->prepareFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 426
    invoke-static {p3}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Parcel;

    invoke-virtual {v4}, Landroid/os/Parcel;->writeNoException()V

    .line 427
    return v2

    .line 397
    .end local v1    # "_arg0":Landroid/net/Uri;
    .end local v3    # "_arg1":Landroid/os/Bundle;
    :sswitch_11
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 399
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 401
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_a

    .line 402
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .restart local v3    # "_arg1":Landroid/os/Bundle;
    goto :goto_8

    .line 404
    .end local v3    # "_arg1":Landroid/os/Bundle;
    :cond_a
    const/4 v3, 0x0

    .line 406
    .restart local v3    # "_arg1":Landroid/os/Bundle;
    :goto_8
    invoke-virtual {p0, v1, v3}, Landroidx/media3/session/legacy/IMediaSession$Stub;->prepareFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 407
    invoke-static {p3}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Parcel;

    invoke-virtual {v4}, Landroid/os/Parcel;->writeNoException()V

    .line 408
    return v2

    .line 382
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/os/Bundle;
    :sswitch_12
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 384
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 386
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_b

    .line 387
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .restart local v3    # "_arg1":Landroid/os/Bundle;
    goto :goto_9

    .line 389
    .end local v3    # "_arg1":Landroid/os/Bundle;
    :cond_b
    const/4 v3, 0x0

    .line 391
    .restart local v3    # "_arg1":Landroid/os/Bundle;
    :goto_9
    invoke-virtual {p0, v1, v3}, Landroidx/media3/session/legacy/IMediaSession$Stub;->prepareFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 392
    invoke-static {p3}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Parcel;

    invoke-virtual {v4}, Landroid/os/Parcel;->writeNoException()V

    .line 393
    return v2

    .line 375
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/os/Bundle;
    :sswitch_13
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 376
    invoke-virtual {p0}, Landroidx/media3/session/legacy/IMediaSession$Stub;->prepare()V

    .line 377
    invoke-static {p3}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->writeNoException()V

    .line 378
    return v2

    .line 272
    :sswitch_14
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 273
    invoke-virtual {p0}, Landroidx/media3/session/legacy/IMediaSession$Stub;->getRatingType()I

    move-result v1

    .line 274
    .local v1, "_result":I
    invoke-static {p3}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcel;

    invoke-virtual {v3}, Landroid/os/Parcel;->writeNoException()V

    .line 275
    invoke-static {p3}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcel;

    invoke-virtual {v3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 276
    return v2

    .line 259
    .end local v1    # "_result":I
    :sswitch_15
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 260
    invoke-virtual {p0}, Landroidx/media3/session/legacy/IMediaSession$Stub;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 261
    .local v3, "_result":Landroid/os/Bundle;
    invoke-static {p3}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Parcel;

    invoke-virtual {v4}, Landroid/os/Parcel;->writeNoException()V

    .line 262
    if-eqz v3, :cond_c

    .line 263
    invoke-static {p3}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcel;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 264
    invoke-virtual {v3, p3, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_a

    .line 266
    :cond_c
    invoke-static {p3}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Parcel;

    invoke-virtual {v4, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 268
    :goto_a
    return v2

    .line 245
    .end local v3    # "_result":Landroid/os/Bundle;
    :sswitch_16
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 246
    invoke-virtual {p0}, Landroidx/media3/session/legacy/IMediaSession$Stub;->getQueueTitle()Ljava/lang/CharSequence;

    move-result-object v3

    .line 247
    .local v3, "_result":Ljava/lang/CharSequence;
    invoke-static {p3}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Parcel;

    invoke-virtual {v4}, Landroid/os/Parcel;->writeNoException()V

    .line 248
    if-eqz v3, :cond_d

    .line 249
    invoke-static {p3}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcel;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 250
    invoke-static {v3, p3, v2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    goto :goto_b

    .line 253
    :cond_d
    invoke-static {p3}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Parcel;

    invoke-virtual {v4, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 255
    :goto_b
    return v2

    .line 237
    .end local v3    # "_result":Ljava/lang/CharSequence;
    :sswitch_17
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 238
    invoke-virtual {p0}, Landroidx/media3/session/legacy/IMediaSession$Stub;->getQueue()Ljava/util/List;

    move-result-object v1

    .line 239
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/session/legacy/MediaSessionCompat$QueueItem;>;"
    invoke-static {p3}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcel;

    invoke-virtual {v3}, Landroid/os/Parcel;->writeNoException()V

    .line 240
    invoke-static {p3}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcel;

    invoke-virtual {v3, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 241
    return v2

    .line 224
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/session/legacy/MediaSessionCompat$QueueItem;>;"
    :sswitch_18
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 225
    invoke-virtual {p0}, Landroidx/media3/session/legacy/IMediaSession$Stub;->getPlaybackState()Landroidx/media3/session/legacy/PlaybackStateCompat;

    move-result-object v3

    .line 226
    .local v3, "_result":Landroidx/media3/session/legacy/PlaybackStateCompat;
    invoke-static {p3}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Parcel;

    invoke-virtual {v4}, Landroid/os/Parcel;->writeNoException()V

    .line 227
    if-eqz v3, :cond_e

    .line 228
    invoke-static {p3}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcel;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 229
    invoke-virtual {v3, p3, v2}, Landroidx/media3/session/legacy/PlaybackStateCompat;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_c

    .line 231
    :cond_e
    invoke-static {p3}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Parcel;

    invoke-virtual {v4, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 233
    :goto_c
    return v2

    .line 211
    .end local v3    # "_result":Landroidx/media3/session/legacy/PlaybackStateCompat;
    :sswitch_19
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 212
    invoke-virtual {p0}, Landroidx/media3/session/legacy/IMediaSession$Stub;->getMetadata()Landroidx/media3/session/legacy/MediaMetadataCompat;

    move-result-object v3

    .line 213
    .local v3, "_result":Landroidx/media3/session/legacy/MediaMetadataCompat;
    invoke-static {p3}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Parcel;

    invoke-virtual {v4}, Landroid/os/Parcel;->writeNoException()V

    .line 214
    if-eqz v3, :cond_f

    .line 215
    invoke-static {p3}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcel;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 216
    invoke-virtual {v3, p3, v2}, Landroidx/media3/session/legacy/MediaMetadataCompat;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_d

    .line 218
    :cond_f
    invoke-static {p3}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Parcel;

    invoke-virtual {v4, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 220
    :goto_d
    return v2

    .line 624
    .end local v3    # "_result":Landroidx/media3/session/legacy/MediaMetadataCompat;
    :sswitch_1a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 626
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 628
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_10

    .line 629
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .local v3, "_arg1":Landroid/os/Bundle;
    goto :goto_e

    .line 631
    .end local v3    # "_arg1":Landroid/os/Bundle;
    :cond_10
    const/4 v3, 0x0

    .line 633
    .restart local v3    # "_arg1":Landroid/os/Bundle;
    :goto_e
    invoke-virtual {p0, v1, v3}, Landroidx/media3/session/legacy/IMediaSession$Stub;->sendCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 634
    invoke-static {p3}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Parcel;

    invoke-virtual {v4}, Landroid/os/Parcel;->writeNoException()V

    .line 635
    return v2

    .line 547
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/os/Bundle;
    :sswitch_1b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 549
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_11

    .line 550
    sget-object v1, Landroidx/media3/session/legacy/RatingCompat;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/session/legacy/RatingCompat;

    .local v1, "_arg0":Landroidx/media3/session/legacy/RatingCompat;
    goto :goto_f

    .line 552
    .end local v1    # "_arg0":Landroidx/media3/session/legacy/RatingCompat;
    :cond_11
    const/4 v1, 0x0

    .line 554
    .restart local v1    # "_arg0":Landroidx/media3/session/legacy/RatingCompat;
    :goto_f
    invoke-virtual {p0, v1}, Landroidx/media3/session/legacy/IMediaSession$Stub;->rate(Landroidx/media3/session/legacy/RatingCompat;)V

    .line 555
    invoke-static {p3}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcel;

    invoke-virtual {v3}, Landroid/os/Parcel;->writeNoException()V

    .line 556
    return v2

    .line 538
    .end local v1    # "_arg0":Landroidx/media3/session/legacy/RatingCompat;
    :sswitch_1c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 540
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 541
    .local v3, "_arg0":J
    invoke-virtual {p0, v3, v4}, Landroidx/media3/session/legacy/IMediaSession$Stub;->seekTo(J)V

    .line 542
    invoke-static {p3}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->writeNoException()V

    .line 543
    return v2

    .line 531
    .end local v3    # "_arg0":J
    :sswitch_1d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 532
    invoke-virtual {p0}, Landroidx/media3/session/legacy/IMediaSession$Stub;->rewind()V

    .line 533
    invoke-static {p3}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->writeNoException()V

    .line 534
    return v2

    .line 524
    :sswitch_1e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 525
    invoke-virtual {p0}, Landroidx/media3/session/legacy/IMediaSession$Stub;->fastForward()V

    .line 526
    invoke-static {p3}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->writeNoException()V

    .line 527
    return v2

    .line 517
    :sswitch_1f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 518
    invoke-virtual {p0}, Landroidx/media3/session/legacy/IMediaSession$Stub;->previous()V

    .line 519
    invoke-static {p3}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->writeNoException()V

    .line 520
    return v2

    .line 510
    :sswitch_20
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 511
    invoke-virtual {p0}, Landroidx/media3/session/legacy/IMediaSession$Stub;->next()V

    .line 512
    invoke-static {p3}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->writeNoException()V

    .line 513
    return v2

    .line 503
    :sswitch_21
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 504
    invoke-virtual {p0}, Landroidx/media3/session/legacy/IMediaSession$Stub;->stop()V

    .line 505
    invoke-static {p3}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->writeNoException()V

    .line 506
    return v2

    .line 496
    :sswitch_22
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 497
    invoke-virtual {p0}, Landroidx/media3/session/legacy/IMediaSession$Stub;->pause()V

    .line 498
    invoke-static {p3}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->writeNoException()V

    .line 499
    return v2

    .line 487
    :sswitch_23
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 489
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 490
    .restart local v3    # "_arg0":J
    invoke-virtual {p0, v3, v4}, Landroidx/media3/session/legacy/IMediaSession$Stub;->skipToQueueItem(J)V

    .line 491
    invoke-static {p3}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->writeNoException()V

    .line 492
    return v2

    .line 468
    .end local v3    # "_arg0":J
    :sswitch_24
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 470
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_12

    .line 471
    sget-object v1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .local v1, "_arg0":Landroid/net/Uri;
    goto :goto_10

    .line 473
    .end local v1    # "_arg0":Landroid/net/Uri;
    :cond_12
    const/4 v1, 0x0

    .line 476
    .restart local v1    # "_arg0":Landroid/net/Uri;
    :goto_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_13

    .line 477
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .local v3, "_arg1":Landroid/os/Bundle;
    goto :goto_11

    .line 479
    .end local v3    # "_arg1":Landroid/os/Bundle;
    :cond_13
    const/4 v3, 0x0

    .line 481
    .restart local v3    # "_arg1":Landroid/os/Bundle;
    :goto_11
    invoke-virtual {p0, v1, v3}, Landroidx/media3/session/legacy/IMediaSession$Stub;->playFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 482
    invoke-static {p3}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Parcel;

    invoke-virtual {v4}, Landroid/os/Parcel;->writeNoException()V

    .line 483
    return v2

    .line 453
    .end local v1    # "_arg0":Landroid/net/Uri;
    .end local v3    # "_arg1":Landroid/os/Bundle;
    :sswitch_25
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 455
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 457
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_14

    .line 458
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .restart local v3    # "_arg1":Landroid/os/Bundle;
    goto :goto_12

    .line 460
    .end local v3    # "_arg1":Landroid/os/Bundle;
    :cond_14
    const/4 v3, 0x0

    .line 462
    .restart local v3    # "_arg1":Landroid/os/Bundle;
    :goto_12
    invoke-virtual {p0, v1, v3}, Landroidx/media3/session/legacy/IMediaSession$Stub;->playFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 463
    invoke-static {p3}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Parcel;

    invoke-virtual {v4}, Landroid/os/Parcel;->writeNoException()V

    .line 464
    return v2

    .line 438
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/os/Bundle;
    :sswitch_26
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 440
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 442
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_15

    .line 443
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .restart local v3    # "_arg1":Landroid/os/Bundle;
    goto :goto_13

    .line 445
    .end local v3    # "_arg1":Landroid/os/Bundle;
    :cond_15
    const/4 v3, 0x0

    .line 447
    .restart local v3    # "_arg1":Landroid/os/Bundle;
    :goto_13
    invoke-virtual {p0, v1, v3}, Landroidx/media3/session/legacy/IMediaSession$Stub;->playFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 448
    invoke-static {p3}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Parcel;

    invoke-virtual {v4}, Landroid/os/Parcel;->writeNoException()V

    .line 449
    return v2

    .line 431
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/os/Bundle;
    :sswitch_27
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 432
    invoke-virtual {p0}, Landroidx/media3/session/legacy/IMediaSession$Stub;->play()V

    .line 433
    invoke-static {p3}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->writeNoException()V

    .line 434
    return v2

    .line 198
    :sswitch_28
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 200
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 202
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 204
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 205
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v1, v3, v4}, Landroidx/media3/session/legacy/IMediaSession$Stub;->setVolumeTo(IILjava/lang/String;)V

    .line 206
    invoke-static {p3}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Parcel;

    invoke-virtual {v5}, Landroid/os/Parcel;->writeNoException()V

    .line 207
    return v2

    .line 185
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Ljava/lang/String;
    :sswitch_29
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 189
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 191
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 192
    .restart local v4    # "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v1, v3, v4}, Landroidx/media3/session/legacy/IMediaSession$Stub;->adjustVolume(IILjava/lang/String;)V

    .line 193
    invoke-static {p3}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Parcel;

    invoke-virtual {v5}, Landroid/os/Parcel;->writeNoException()V

    .line 194
    return v2

    .line 172
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Ljava/lang/String;
    :sswitch_2a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p0}, Landroidx/media3/session/legacy/IMediaSession$Stub;->getVolumeAttributes()Landroidx/media3/session/legacy/ParcelableVolumeInfo;

    move-result-object v3

    .line 174
    .local v3, "_result":Landroidx/media3/session/legacy/ParcelableVolumeInfo;
    invoke-static {p3}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Parcel;

    invoke-virtual {v4}, Landroid/os/Parcel;->writeNoException()V

    .line 175
    if-eqz v3, :cond_16

    .line 176
    invoke-static {p3}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcel;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 177
    invoke-virtual {v3, p3, v2}, Landroidx/media3/session/legacy/ParcelableVolumeInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_14

    .line 179
    :cond_16
    invoke-static {p3}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Parcel;

    invoke-virtual {v4, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 181
    :goto_14
    return v2

    .line 164
    .end local v3    # "_result":Landroidx/media3/session/legacy/ParcelableVolumeInfo;
    :sswitch_2b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 165
    invoke-virtual {p0}, Landroidx/media3/session/legacy/IMediaSession$Stub;->getFlags()J

    move-result-wide v3

    .line 166
    .local v3, "_result":J
    invoke-static {p3}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->writeNoException()V

    .line 167
    invoke-static {p3}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcel;

    invoke-virtual {v1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 168
    return v2

    .line 151
    .end local v3    # "_result":J
    :sswitch_2c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p0}, Landroidx/media3/session/legacy/IMediaSession$Stub;->getLaunchPendingIntent()Landroid/app/PendingIntent;

    move-result-object v3

    .line 153
    .local v3, "_result":Landroid/app/PendingIntent;
    invoke-static {p3}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Parcel;

    invoke-virtual {v4}, Landroid/os/Parcel;->writeNoException()V

    .line 154
    if-eqz v3, :cond_17

    .line 155
    invoke-static {p3}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcel;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 156
    invoke-virtual {v3, p3, v2}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_15

    .line 158
    :cond_17
    invoke-static {p3}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Parcel;

    invoke-virtual {v4, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 160
    :goto_15
    return v2

    .line 143
    .end local v3    # "_result":Landroid/app/PendingIntent;
    :sswitch_2d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p0}, Landroidx/media3/session/legacy/IMediaSession$Stub;->getTag()Ljava/lang/String;

    move-result-object v1

    .line 145
    .local v1, "_result":Ljava/lang/String;
    invoke-static {p3}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcel;

    invoke-virtual {v3}, Landroid/os/Parcel;->writeNoException()V

    .line 146
    invoke-static {p3}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcel;

    invoke-virtual {v3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 147
    return v2

    .line 135
    .end local v1    # "_result":Ljava/lang/String;
    :sswitch_2e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p0}, Landroidx/media3/session/legacy/IMediaSession$Stub;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 137
    .restart local v1    # "_result":Ljava/lang/String;
    invoke-static {p3}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcel;

    invoke-virtual {v3}, Landroid/os/Parcel;->writeNoException()V

    .line 138
    invoke-static {p3}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcel;

    invoke-virtual {v3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 139
    return v2

    .line 127
    .end local v1    # "_result":Ljava/lang/String;
    :sswitch_2f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p0}, Landroidx/media3/session/legacy/IMediaSession$Stub;->isTransportControlEnabled()Z

    move-result v1

    .line 129
    .local v1, "_result":Z
    invoke-static {p3}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcel;

    invoke-virtual {v3}, Landroid/os/Parcel;->writeNoException()V

    .line 130
    invoke-static {p3}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcel;

    invoke-virtual {v3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 131
    return v2

    .line 118
    .end local v1    # "_result":Z
    :sswitch_30
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/session/legacy/IMediaControllerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/legacy/IMediaControllerCallback;

    move-result-object v1

    .line 121
    .local v1, "_arg0":Landroidx/media3/session/legacy/IMediaControllerCallback;
    invoke-virtual {p0, v1}, Landroidx/media3/session/legacy/IMediaSession$Stub;->unregisterCallbackListener(Landroidx/media3/session/legacy/IMediaControllerCallback;)V

    .line 122
    invoke-static {p3}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcel;

    invoke-virtual {v3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    return v2

    .line 109
    .end local v1    # "_arg0":Landroidx/media3/session/legacy/IMediaControllerCallback;
    :sswitch_31
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/session/legacy/IMediaControllerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/legacy/IMediaControllerCallback;

    move-result-object v1

    .line 112
    .restart local v1    # "_arg0":Landroidx/media3/session/legacy/IMediaControllerCallback;
    invoke-virtual {p0, v1}, Landroidx/media3/session/legacy/IMediaSession$Stub;->registerCallbackListener(Landroidx/media3/session/legacy/IMediaControllerCallback;)V

    .line 113
    invoke-static {p3}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcel;

    invoke-virtual {v3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    return v2

    .line 95
    .end local v1    # "_arg0":Landroidx/media3/session/legacy/IMediaControllerCallback;
    :sswitch_32
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_18

    .line 98
    sget-object v1, Landroid/view/KeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/KeyEvent;

    .local v1, "_arg0":Landroid/view/KeyEvent;
    goto :goto_16

    .line 100
    .end local v1    # "_arg0":Landroid/view/KeyEvent;
    :cond_18
    const/4 v1, 0x0

    .line 102
    .restart local v1    # "_arg0":Landroid/view/KeyEvent;
    :goto_16
    invoke-virtual {p0, v1}, Landroidx/media3/session/legacy/IMediaSession$Stub;->sendMediaButton(Landroid/view/KeyEvent;)Z

    move-result v3

    .line 103
    .local v3, "_result":Z
    invoke-static {p3}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Parcel;

    invoke-virtual {v4}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    invoke-static {p3}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Parcel;

    invoke-virtual {v4, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    return v2

    .line 74
    .end local v1    # "_arg0":Landroid/view/KeyEvent;
    .end local v3    # "_result":Z
    :sswitch_33
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 78
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_19

    .line 79
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .local v3, "_arg1":Landroid/os/Bundle;
    goto :goto_17

    .line 81
    .end local v3    # "_arg1":Landroid/os/Bundle;
    :cond_19
    const/4 v3, 0x0

    .line 84
    .restart local v3    # "_arg1":Landroid/os/Bundle;
    :goto_17
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1a

    .line 85
    sget-object v4, Landroidx/media3/session/legacy/MediaSessionCompat$ResultReceiverWrapper;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/session/legacy/MediaSessionCompat$ResultReceiverWrapper;

    .local v4, "_arg2":Landroidx/media3/session/legacy/MediaSessionCompat$ResultReceiverWrapper;
    goto :goto_18

    .line 87
    .end local v4    # "_arg2":Landroidx/media3/session/legacy/MediaSessionCompat$ResultReceiverWrapper;
    :cond_1a
    const/4 v4, 0x0

    .line 89
    .restart local v4    # "_arg2":Landroidx/media3/session/legacy/MediaSessionCompat$ResultReceiverWrapper;
    :goto_18
    invoke-virtual {p0, v1, v3, v4}, Landroidx/media3/session/legacy/IMediaSession$Stub;->sendCommand(Ljava/lang/String;Landroid/os/Bundle;Landroidx/media3/session/legacy/MediaSessionCompat$ResultReceiverWrapper;)V

    .line 90
    invoke-static {p3}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Parcel;

    invoke-virtual {v5}, Landroid/os/Parcel;->writeNoException()V

    .line 91
    return v2

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_33
        0x2 -> :sswitch_32
        0x3 -> :sswitch_31
        0x4 -> :sswitch_30
        0x5 -> :sswitch_2f
        0x6 -> :sswitch_2e
        0x7 -> :sswitch_2d
        0x8 -> :sswitch_2c
        0x9 -> :sswitch_2b
        0xa -> :sswitch_2a
        0xb -> :sswitch_29
        0xc -> :sswitch_28
        0xd -> :sswitch_27
        0xe -> :sswitch_26
        0xf -> :sswitch_25
        0x10 -> :sswitch_24
        0x11 -> :sswitch_23
        0x12 -> :sswitch_22
        0x13 -> :sswitch_21
        0x14 -> :sswitch_20
        0x15 -> :sswitch_1f
        0x16 -> :sswitch_1e
        0x17 -> :sswitch_1d
        0x18 -> :sswitch_1c
        0x19 -> :sswitch_1b
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_19
        0x1c -> :sswitch_18
        0x1d -> :sswitch_17
        0x1e -> :sswitch_16
        0x1f -> :sswitch_15
        0x20 -> :sswitch_14
        0x21 -> :sswitch_13
        0x22 -> :sswitch_12
        0x23 -> :sswitch_11
        0x24 -> :sswitch_10
        0x25 -> :sswitch_f
        0x26 -> :sswitch_e
        0x27 -> :sswitch_d
        0x28 -> :sswitch_c
        0x29 -> :sswitch_b
        0x2a -> :sswitch_a
        0x2b -> :sswitch_9
        0x2c -> :sswitch_8
        0x2d -> :sswitch_7
        0x2e -> :sswitch_6
        0x2f -> :sswitch_5
        0x30 -> :sswitch_4
        0x31 -> :sswitch_3
        0x32 -> :sswitch_2
        0x33 -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
