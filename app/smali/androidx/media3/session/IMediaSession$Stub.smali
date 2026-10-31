.class public abstract Landroidx/media3/session/IMediaSession$Stub;
.super Landroid/os/Binder;
.source "IMediaSession.java"

# interfaces
.implements Landroidx/media3/session/IMediaSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/session/IMediaSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/session/IMediaSession$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_addMediaItem:I = 0xbd5

.field static final TRANSACTION_addMediaItemWithIndex:I = 0xbd6

.field static final TRANSACTION_addMediaItems:I = 0xbd7

.field static final TRANSACTION_addMediaItemsWithIndex:I = 0xbd8

.field static final TRANSACTION_clearMediaItems:I = 0xbcd

.field static final TRANSACTION_connect:I = 0xbc7

.field static final TRANSACTION_decreaseDeviceVolume:I = 0xbbd

.field static final TRANSACTION_decreaseDeviceVolumeWithFlags:I = 0xbed

.field static final TRANSACTION_flushCommandQueue:I = 0xbe5

.field static final TRANSACTION_getChildren:I = 0xfa3

.field static final TRANSACTION_getItem:I = 0xfa2

.field static final TRANSACTION_getLibraryRoot:I = 0xfa1

.field static final TRANSACTION_getSearchResult:I = 0xfa5

.field static final TRANSACTION_increaseDeviceVolume:I = 0xbbc

.field static final TRANSACTION_increaseDeviceVolumeWithFlags:I = 0xbec

.field static final TRANSACTION_moveMediaItem:I = 0xbce

.field static final TRANSACTION_moveMediaItems:I = 0xbcf

.field static final TRANSACTION_onControllerResult:I = 0xbc6

.field static final TRANSACTION_onCustomCommand:I = 0xbc8

.field static final TRANSACTION_pause:I = 0xbd1

.field static final TRANSACTION_play:I = 0xbd0

.field static final TRANSACTION_prepare:I = 0xbd2

.field static final TRANSACTION_release:I = 0xbdb

.field static final TRANSACTION_removeMediaItem:I = 0xbcb

.field static final TRANSACTION_removeMediaItems:I = 0xbcc

.field static final TRANSACTION_replaceMediaItem:I = 0xbef

.field static final TRANSACTION_replaceMediaItems:I = 0xbf0

.field static final TRANSACTION_search:I = 0xfa4

.field static final TRANSACTION_seekBack:I = 0xbe0

.field static final TRANSACTION_seekForward:I = 0xbe1

.field static final TRANSACTION_seekTo:I = 0xbde

.field static final TRANSACTION_seekToDefaultPosition:I = 0xbdc

.field static final TRANSACTION_seekToDefaultPositionWithMediaItemIndex:I = 0xbdd

.field static final TRANSACTION_seekToNext:I = 0xbe7

.field static final TRANSACTION_seekToNextMediaItem:I = 0xbe3

.field static final TRANSACTION_seekToPrevious:I = 0xbe6

.field static final TRANSACTION_seekToPreviousMediaItem:I = 0xbe2

.field static final TRANSACTION_seekToWithMediaItemIndex:I = 0xbdf

.field static final TRANSACTION_setAudioAttributes:I = 0xbf1

.field static final TRANSACTION_setDeviceMuted:I = 0xbbe

.field static final TRANSACTION_setDeviceMutedWithFlags:I = 0xbee

.field static final TRANSACTION_setDeviceVolume:I = 0xbbb

.field static final TRANSACTION_setDeviceVolumeWithFlags:I = 0xbeb

.field static final TRANSACTION_setMediaItem:I = 0xbbf

.field static final TRANSACTION_setMediaItemWithResetPosition:I = 0xbc1

.field static final TRANSACTION_setMediaItemWithStartPosition:I = 0xbc0

.field static final TRANSACTION_setMediaItems:I = 0xbc2

.field static final TRANSACTION_setMediaItemsWithResetPosition:I = 0xbc3

.field static final TRANSACTION_setMediaItemsWithStartIndex:I = 0xbc4

.field static final TRANSACTION_setPlayWhenReady:I = 0xbc5

.field static final TRANSACTION_setPlaybackParameters:I = 0xbd3

.field static final TRANSACTION_setPlaybackSpeed:I = 0xbd4

.field static final TRANSACTION_setPlaylistMetadata:I = 0xbd9

.field static final TRANSACTION_setRating:I = 0xbea

.field static final TRANSACTION_setRatingWithMediaId:I = 0xbe9

.field static final TRANSACTION_setRepeatMode:I = 0xbc9

.field static final TRANSACTION_setShuffleModeEnabled:I = 0xbca

.field static final TRANSACTION_setTrackSelectionParameters:I = 0xbe8

.field static final TRANSACTION_setVideoSurface:I = 0xbe4

.field static final TRANSACTION_setVolume:I = 0xbba

.field static final TRANSACTION_stop:I = 0xbda

.field static final TRANSACTION_subscribe:I = 0xfa6

.field static final TRANSACTION_unsubscribe:I = 0xfa7


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 218
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 219
    const-string v0, "androidx.media3.session.IMediaSession"

    invoke-virtual {p0, p0, v0}, Landroidx/media3/session/IMediaSession$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 220
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaSession;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 227
    if-nez p0, :cond_0

    .line 228
    const/4 v0, 0x0

    return-object v0

    .line 230
    :cond_0
    const-string v0, "androidx.media3.session.IMediaSession"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 231
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroidx/media3/session/IMediaSession;

    if-eqz v1, :cond_1

    .line 232
    move-object v1, v0

    check-cast v1, Landroidx/media3/session/IMediaSession;

    return-object v1

    .line 234
    :cond_1
    new-instance v1, Landroidx/media3/session/IMediaSession$Stub$Proxy;

    invoke-direct {v1, p0}, Landroidx/media3/session/IMediaSession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 238
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 19
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 242
    move-object/from16 v7, p0

    move/from16 v8, p1

    move-object/from16 v9, p2

    const-string v10, "androidx.media3.session.IMediaSession"

    .line 243
    .local v10, "descriptor":Ljava/lang/String;
    const/4 v11, 0x1

    if-lt v8, v11, :cond_0

    const v0, 0xffffff

    if-gt v8, v0, :cond_0

    .line 244
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 246
    :cond_0
    packed-switch v8, :pswitch_data_0

    .line 254
    move-object/from16 v12, p3

    const/4 v0, 0x0

    sparse-switch v8, :sswitch_data_0

    .line 973
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 250
    :pswitch_0
    move-object/from16 v12, p3

    invoke-virtual {v12, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 251
    return v11

    .line 963
    :sswitch_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object v0

    .line 965
    .local v0, "_arg0":Landroidx/media3/session/IMediaController;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 967
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 968
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {v7, v0, v1, v2}, Landroidx/media3/session/IMediaSession$Stub;->unsubscribe(Landroidx/media3/session/IMediaController;ILjava/lang/String;)V

    .line 969
    goto/16 :goto_0

    .line 950
    .end local v0    # "_arg0":Landroidx/media3/session/IMediaController;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    :sswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object v0

    .line 952
    .restart local v0    # "_arg0":Landroidx/media3/session/IMediaController;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 954
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 956
    .restart local v2    # "_arg2":Ljava/lang/String;
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v9, v3}, Landroidx/media3/session/IMediaSession$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 957
    .local v3, "_arg3":Landroid/os/Bundle;
    invoke-virtual {v7, v0, v1, v2, v3}, Landroidx/media3/session/IMediaSession$Stub;->subscribe(Landroidx/media3/session/IMediaController;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 958
    goto/16 :goto_0

    .line 933
    .end local v0    # "_arg0":Landroidx/media3/session/IMediaController;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Landroid/os/Bundle;
    :sswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object v13

    .line 935
    .local v13, "_arg0":Landroidx/media3/session/IMediaController;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 937
    .local v14, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 939
    .local v15, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 941
    .local v16, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 943
    .local v17, "_arg4":I
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v9, v0}, Landroidx/media3/session/IMediaSession$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Landroid/os/Bundle;

    .line 944
    .local v18, "_arg5":Landroid/os/Bundle;
    move-object/from16 v0, p0

    move-object v1, v13

    move v2, v14

    move-object v3, v15

    move/from16 v4, v16

    move/from16 v5, v17

    move-object/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroidx/media3/session/IMediaSession$Stub;->getSearchResult(Landroidx/media3/session/IMediaController;ILjava/lang/String;IILandroid/os/Bundle;)V

    .line 945
    goto/16 :goto_0

    .line 920
    .end local v13    # "_arg0":Landroidx/media3/session/IMediaController;
    .end local v14    # "_arg1":I
    .end local v15    # "_arg2":Ljava/lang/String;
    .end local v16    # "_arg3":I
    .end local v17    # "_arg4":I
    .end local v18    # "_arg5":Landroid/os/Bundle;
    :sswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object v0

    .line 922
    .restart local v0    # "_arg0":Landroidx/media3/session/IMediaController;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 924
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 926
    .restart local v2    # "_arg2":Ljava/lang/String;
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v9, v3}, Landroidx/media3/session/IMediaSession$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 927
    .restart local v3    # "_arg3":Landroid/os/Bundle;
    invoke-virtual {v7, v0, v1, v2, v3}, Landroidx/media3/session/IMediaSession$Stub;->search(Landroidx/media3/session/IMediaController;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 928
    goto/16 :goto_0

    .line 903
    .end local v0    # "_arg0":Landroidx/media3/session/IMediaController;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Landroid/os/Bundle;
    :sswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object v13

    .line 905
    .restart local v13    # "_arg0":Landroidx/media3/session/IMediaController;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 907
    .restart local v14    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 909
    .restart local v15    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 911
    .restart local v16    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 913
    .restart local v17    # "_arg4":I
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v9, v0}, Landroidx/media3/session/IMediaSession$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Landroid/os/Bundle;

    .line 914
    .restart local v18    # "_arg5":Landroid/os/Bundle;
    move-object/from16 v0, p0

    move-object v1, v13

    move v2, v14

    move-object v3, v15

    move/from16 v4, v16

    move/from16 v5, v17

    move-object/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroidx/media3/session/IMediaSession$Stub;->getChildren(Landroidx/media3/session/IMediaController;ILjava/lang/String;IILandroid/os/Bundle;)V

    .line 915
    goto/16 :goto_0

    .line 892
    .end local v13    # "_arg0":Landroidx/media3/session/IMediaController;
    .end local v14    # "_arg1":I
    .end local v15    # "_arg2":Ljava/lang/String;
    .end local v16    # "_arg3":I
    .end local v17    # "_arg4":I
    .end local v18    # "_arg5":Landroid/os/Bundle;
    :sswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object v0

    .line 894
    .restart local v0    # "_arg0":Landroidx/media3/session/IMediaController;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 896
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 897
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual {v7, v0, v1, v2}, Landroidx/media3/session/IMediaSession$Stub;->getItem(Landroidx/media3/session/IMediaController;ILjava/lang/String;)V

    .line 898
    goto/16 :goto_0

    .line 881
    .end local v0    # "_arg0":Landroidx/media3/session/IMediaController;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    :sswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object v0

    .line 883
    .restart local v0    # "_arg0":Landroidx/media3/session/IMediaController;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 885
    .restart local v1    # "_arg1":I
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v9, v2}, Landroidx/media3/session/IMediaSession$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 886
    .local v2, "_arg2":Landroid/os/Bundle;
    invoke-virtual {v7, v0, v1, v2}, Landroidx/media3/session/IMediaSession$Stub;->getLibraryRoot(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;)V

    .line 887
    goto/16 :goto_0

    .line 358
    .end local v0    # "_arg0":Landroidx/media3/session/IMediaController;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/os/Bundle;
    :sswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object v1

    .line 360
    .local v1, "_arg0":Landroidx/media3/session/IMediaController;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 362
    .local v2, "_arg1":I
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v9, v3}, Landroidx/media3/session/IMediaSession$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 364
    .local v3, "_arg2":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1

    move v0, v11

    .line 365
    .local v0, "_arg3":Z
    :cond_1
    invoke-virtual {v7, v1, v2, v3, v0}, Landroidx/media3/session/IMediaSession$Stub;->setAudioAttributes(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;Z)V

    .line 366
    goto/16 :goto_0

    .line 589
    .end local v0    # "_arg3":Z
    .end local v1    # "_arg0":Landroidx/media3/session/IMediaController;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/os/Bundle;
    :sswitch_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object v6

    .line 591
    .local v6, "_arg0":Landroidx/media3/session/IMediaController;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 593
    .local v13, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 595
    .local v14, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 597
    .local v15, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v16

    .line 598
    .local v16, "_arg4":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v13

    move v3, v14

    move v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroidx/media3/session/IMediaSession$Stub;->replaceMediaItems(Landroidx/media3/session/IMediaController;IIILandroid/os/IBinder;)V

    .line 599
    goto/16 :goto_0

    .line 576
    .end local v6    # "_arg0":Landroidx/media3/session/IMediaController;
    .end local v13    # "_arg1":I
    .end local v14    # "_arg2":I
    .end local v15    # "_arg3":I
    .end local v16    # "_arg4":Landroid/os/IBinder;
    :sswitch_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object v0

    .line 578
    .local v0, "_arg0":Landroidx/media3/session/IMediaController;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 580
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 582
    .local v2, "_arg2":I
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v9, v3}, Landroidx/media3/session/IMediaSession$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 583
    .local v3, "_arg3":Landroid/os/Bundle;
    invoke-virtual {v7, v0, v1, v2, v3}, Landroidx/media3/session/IMediaSession$Stub;->replaceMediaItem(Landroidx/media3/session/IMediaController;IILandroid/os/Bundle;)V

    .line 584
    goto/16 :goto_0

    .line 345
    .end local v0    # "_arg0":Landroidx/media3/session/IMediaController;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Landroid/os/Bundle;
    :sswitch_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object v1

    .line 347
    .local v1, "_arg0":Landroidx/media3/session/IMediaController;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 349
    .local v2, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    move v0, v11

    .line 351
    .local v0, "_arg2":Z
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 352
    .local v3, "_arg3":I
    invoke-virtual {v7, v1, v2, v0, v3}, Landroidx/media3/session/IMediaSession$Stub;->setDeviceMutedWithFlags(Landroidx/media3/session/IMediaController;IZI)V

    .line 353
    goto/16 :goto_0

    .line 323
    .end local v0    # "_arg2":Z
    .end local v1    # "_arg0":Landroidx/media3/session/IMediaController;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg3":I
    :sswitch_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object v0

    .line 325
    .local v0, "_arg0":Landroidx/media3/session/IMediaController;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 327
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 328
    .local v2, "_arg2":I
    invoke-virtual {v7, v0, v1, v2}, Landroidx/media3/session/IMediaSession$Stub;->decreaseDeviceVolumeWithFlags(Landroidx/media3/session/IMediaController;II)V

    .line 329
    goto/16 :goto_0

    .line 303
    .end local v0    # "_arg0":Landroidx/media3/session/IMediaController;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :sswitch_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object v0

    .line 305
    .restart local v0    # "_arg0":Landroidx/media3/session/IMediaController;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 307
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 308
    .restart local v2    # "_arg2":I
    invoke-virtual {v7, v0, v1, v2}, Landroidx/media3/session/IMediaSession$Stub;->increaseDeviceVolumeWithFlags(Landroidx/media3/session/IMediaController;II)V

    .line 309
    goto/16 :goto_0

    .line 281
    .end local v0    # "_arg0":Landroidx/media3/session/IMediaController;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :sswitch_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object v0

    .line 283
    .restart local v0    # "_arg0":Landroidx/media3/session/IMediaController;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 285
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 287
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 288
    .restart local v3    # "_arg3":I
    invoke-virtual {v7, v0, v1, v2, v3}, Landroidx/media3/session/IMediaSession$Stub;->setDeviceVolumeWithFlags(Landroidx/media3/session/IMediaController;III)V

    .line 289
    goto/16 :goto_0

    .line 870
    .end local v0    # "_arg0":Landroidx/media3/session/IMediaController;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":I
    :sswitch_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object v0

    .line 872
    .restart local v0    # "_arg0":Landroidx/media3/session/IMediaController;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 874
    .restart local v1    # "_arg1":I
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v9, v2}, Landroidx/media3/session/IMediaSession$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 875
    .local v2, "_arg2":Landroid/os/Bundle;
    invoke-virtual {v7, v0, v1, v2}, Landroidx/media3/session/IMediaSession$Stub;->setRating(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;)V

    .line 876
    goto/16 :goto_0

    .line 857
    .end local v0    # "_arg0":Landroidx/media3/session/IMediaController;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/os/Bundle;
    :sswitch_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object v0

    .line 859
    .restart local v0    # "_arg0":Landroidx/media3/session/IMediaController;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 861
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 863
    .local v2, "_arg2":Ljava/lang/String;
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v9, v3}, Landroidx/media3/session/IMediaSession$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 864
    .local v3, "_arg3":Landroid/os/Bundle;
    invoke-virtual {v7, v0, v1, v2, v3}, Landroidx/media3/session/IMediaSession$Stub;->setRatingWithMediaId(Landroidx/media3/session/IMediaController;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 865
    goto/16 :goto_0

    .line 846
    .end local v0    # "_arg0":Landroidx/media3/session/IMediaController;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Landroid/os/Bundle;
    :sswitch_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object v0

    .line 848
    .restart local v0    # "_arg0":Landroidx/media3/session/IMediaController;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 850
    .restart local v1    # "_arg1":I
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v9, v2}, Landroidx/media3/session/IMediaSession$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 851
    .local v2, "_arg2":Landroid/os/Bundle;
    invoke-virtual {v7, v0, v1, v2}, Landroidx/media3/session/IMediaSession$Stub;->setTrackSelectionParameters(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;)V

    .line 852
    goto/16 :goto_0

    .line 837
    .end local v0    # "_arg0":Landroidx/media3/session/IMediaController;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/os/Bundle;
    :sswitch_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object v0

    .line 839
    .restart local v0    # "_arg0":Landroidx/media3/session/IMediaController;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 840
    .restart local v1    # "_arg1":I
    invoke-virtual {v7, v0, v1}, Landroidx/media3/session/IMediaSession$Stub;->seekToNext(Landroidx/media3/session/IMediaController;I)V

    .line 841
    goto/16 :goto_0

    .line 828
    .end local v0    # "_arg0":Landroidx/media3/session/IMediaController;
    .end local v1    # "_arg1":I
    :sswitch_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object v0

    .line 830
    .restart local v0    # "_arg0":Landroidx/media3/session/IMediaController;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 831
    .restart local v1    # "_arg1":I
    invoke-virtual {v7, v0, v1}, Landroidx/media3/session/IMediaSession$Stub;->seekToPrevious(Landroidx/media3/session/IMediaController;I)V

    .line 832
    goto/16 :goto_0

    .line 821
    .end local v0    # "_arg0":Landroidx/media3/session/IMediaController;
    .end local v1    # "_arg1":I
    :sswitch_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object v0

    .line 822
    .restart local v0    # "_arg0":Landroidx/media3/session/IMediaController;
    invoke-virtual {v7, v0}, Landroidx/media3/session/IMediaSession$Stub;->flushCommandQueue(Landroidx/media3/session/IMediaController;)V

    .line 823
    goto/16 :goto_0

    .line 810
    .end local v0    # "_arg0":Landroidx/media3/session/IMediaController;
    :sswitch_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object v0

    .line 812
    .restart local v0    # "_arg0":Landroidx/media3/session/IMediaController;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 814
    .restart local v1    # "_arg1":I
    sget-object v2, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v9, v2}, Landroidx/media3/session/IMediaSession$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/Surface;

    .line 815
    .local v2, "_arg2":Landroid/view/Surface;
    invoke-virtual {v7, v0, v1, v2}, Landroidx/media3/session/IMediaSession$Stub;->setVideoSurface(Landroidx/media3/session/IMediaController;ILandroid/view/Surface;)V

    .line 816
    goto/16 :goto_0

    .line 801
    .end local v0    # "_arg0":Landroidx/media3/session/IMediaController;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/view/Surface;
    :sswitch_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object v0

    .line 803
    .restart local v0    # "_arg0":Landroidx/media3/session/IMediaController;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 804
    .restart local v1    # "_arg1":I
    invoke-virtual {v7, v0, v1}, Landroidx/media3/session/IMediaSession$Stub;->seekToNextMediaItem(Landroidx/media3/session/IMediaController;I)V

    .line 805
    goto/16 :goto_0

    .line 792
    .end local v0    # "_arg0":Landroidx/media3/session/IMediaController;
    .end local v1    # "_arg1":I
    :sswitch_16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object v0

    .line 794
    .restart local v0    # "_arg0":Landroidx/media3/session/IMediaController;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 795
    .restart local v1    # "_arg1":I
    invoke-virtual {v7, v0, v1}, Landroidx/media3/session/IMediaSession$Stub;->seekToPreviousMediaItem(Landroidx/media3/session/IMediaController;I)V

    .line 796
    goto/16 :goto_0

    .line 783
    .end local v0    # "_arg0":Landroidx/media3/session/IMediaController;
    .end local v1    # "_arg1":I
    :sswitch_17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object v0

    .line 785
    .restart local v0    # "_arg0":Landroidx/media3/session/IMediaController;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 786
    .restart local v1    # "_arg1":I
    invoke-virtual {v7, v0, v1}, Landroidx/media3/session/IMediaSession$Stub;->seekForward(Landroidx/media3/session/IMediaController;I)V

    .line 787
    goto/16 :goto_0

    .line 774
    .end local v0    # "_arg0":Landroidx/media3/session/IMediaController;
    .end local v1    # "_arg1":I
    :sswitch_18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object v0

    .line 776
    .restart local v0    # "_arg0":Landroidx/media3/session/IMediaController;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 777
    .restart local v1    # "_arg1":I
    invoke-virtual {v7, v0, v1}, Landroidx/media3/session/IMediaSession$Stub;->seekBack(Landroidx/media3/session/IMediaController;I)V

    .line 778
    goto/16 :goto_0

    .line 761
    .end local v0    # "_arg0":Landroidx/media3/session/IMediaController;
    .end local v1    # "_arg1":I
    :sswitch_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object v6

    .line 763
    .restart local v6    # "_arg0":Landroidx/media3/session/IMediaController;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 765
    .restart local v13    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 767
    .restart local v14    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v15

    .line 768
    .local v15, "_arg3":J
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v13

    move v3, v14

    move-wide v4, v15

    invoke-virtual/range {v0 .. v5}, Landroidx/media3/session/IMediaSession$Stub;->seekToWithMediaItemIndex(Landroidx/media3/session/IMediaController;IIJ)V

    .line 769
    goto/16 :goto_0

    .line 750
    .end local v6    # "_arg0":Landroidx/media3/session/IMediaController;
    .end local v13    # "_arg1":I
    .end local v14    # "_arg2":I
    .end local v15    # "_arg3":J
    :sswitch_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object v0

    .line 752
    .restart local v0    # "_arg0":Landroidx/media3/session/IMediaController;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 754
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 755
    .local v2, "_arg2":J
    invoke-virtual {v7, v0, v1, v2, v3}, Landroidx/media3/session/IMediaSession$Stub;->seekTo(Landroidx/media3/session/IMediaController;IJ)V

    .line 756
    goto/16 :goto_0

    .line 739
    .end local v0    # "_arg0":Landroidx/media3/session/IMediaController;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":J
    :sswitch_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object v0

    .line 741
    .restart local v0    # "_arg0":Landroidx/media3/session/IMediaController;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 743
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 744
    .local v2, "_arg2":I
    invoke-virtual {v7, v0, v1, v2}, Landroidx/media3/session/IMediaSession$Stub;->seekToDefaultPositionWithMediaItemIndex(Landroidx/media3/session/IMediaController;II)V

    .line 745
    goto/16 :goto_0

    .line 730
    .end local v0    # "_arg0":Landroidx/media3/session/IMediaController;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :sswitch_1c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object v0

    .line 732
    .restart local v0    # "_arg0":Landroidx/media3/session/IMediaController;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 733
    .restart local v1    # "_arg1":I
    invoke-virtual {v7, v0, v1}, Landroidx/media3/session/IMediaSession$Stub;->seekToDefaultPosition(Landroidx/media3/session/IMediaController;I)V

    .line 734
    goto/16 :goto_0

    .line 721
    .end local v0    # "_arg0":Landroidx/media3/session/IMediaController;
    .end local v1    # "_arg1":I
    :sswitch_1d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object v0

    .line 723
    .restart local v0    # "_arg0":Landroidx/media3/session/IMediaController;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 724
    .restart local v1    # "_arg1":I
    invoke-virtual {v7, v0, v1}, Landroidx/media3/session/IMediaSession$Stub;->release(Landroidx/media3/session/IMediaController;I)V

    .line 725
    goto/16 :goto_0

    .line 712
    .end local v0    # "_arg0":Landroidx/media3/session/IMediaController;
    .end local v1    # "_arg1":I
    :sswitch_1e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object v0

    .line 714
    .restart local v0    # "_arg0":Landroidx/media3/session/IMediaController;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 715
    .restart local v1    # "_arg1":I
    invoke-virtual {v7, v0, v1}, Landroidx/media3/session/IMediaSession$Stub;->stop(Landroidx/media3/session/IMediaController;I)V

    .line 716
    goto/16 :goto_0

    .line 701
    .end local v0    # "_arg0":Landroidx/media3/session/IMediaController;
    .end local v1    # "_arg1":I
    :sswitch_1f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object v0

    .line 703
    .restart local v0    # "_arg0":Landroidx/media3/session/IMediaController;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 705
    .restart local v1    # "_arg1":I
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v9, v2}, Landroidx/media3/session/IMediaSession$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 706
    .local v2, "_arg2":Landroid/os/Bundle;
    invoke-virtual {v7, v0, v1, v2}, Landroidx/media3/session/IMediaSession$Stub;->setPlaylistMetadata(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;)V

    .line 707
    goto/16 :goto_0

    .line 688
    .end local v0    # "_arg0":Landroidx/media3/session/IMediaController;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/os/Bundle;
    :sswitch_20
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object v0

    .line 690
    .restart local v0    # "_arg0":Landroidx/media3/session/IMediaController;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 692
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 694
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 695
    .local v3, "_arg3":Landroid/os/IBinder;
    invoke-virtual {v7, v0, v1, v2, v3}, Landroidx/media3/session/IMediaSession$Stub;->addMediaItemsWithIndex(Landroidx/media3/session/IMediaController;IILandroid/os/IBinder;)V

    .line 696
    goto/16 :goto_0

    .line 677
    .end local v0    # "_arg0":Landroidx/media3/session/IMediaController;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Landroid/os/IBinder;
    :sswitch_21
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object v0

    .line 679
    .restart local v0    # "_arg0":Landroidx/media3/session/IMediaController;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 681
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 682
    .local v2, "_arg2":Landroid/os/IBinder;
    invoke-virtual {v7, v0, v1, v2}, Landroidx/media3/session/IMediaSession$Stub;->addMediaItems(Landroidx/media3/session/IMediaController;ILandroid/os/IBinder;)V

    .line 683
    goto/16 :goto_0

    .line 664
    .end local v0    # "_arg0":Landroidx/media3/session/IMediaController;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/os/IBinder;
    :sswitch_22
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object v0

    .line 666
    .restart local v0    # "_arg0":Landroidx/media3/session/IMediaController;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 668
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 670
    .local v2, "_arg2":I
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v9, v3}, Landroidx/media3/session/IMediaSession$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 671
    .local v3, "_arg3":Landroid/os/Bundle;
    invoke-virtual {v7, v0, v1, v2, v3}, Landroidx/media3/session/IMediaSession$Stub;->addMediaItemWithIndex(Landroidx/media3/session/IMediaController;IILandroid/os/Bundle;)V

    .line 672
    goto/16 :goto_0

    .line 653
    .end local v0    # "_arg0":Landroidx/media3/session/IMediaController;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Landroid/os/Bundle;
    :sswitch_23
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object v0

    .line 655
    .restart local v0    # "_arg0":Landroidx/media3/session/IMediaController;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 657
    .restart local v1    # "_arg1":I
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v9, v2}, Landroidx/media3/session/IMediaSession$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 658
    .local v2, "_arg2":Landroid/os/Bundle;
    invoke-virtual {v7, v0, v1, v2}, Landroidx/media3/session/IMediaSession$Stub;->addMediaItem(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;)V

    .line 659
    goto/16 :goto_0

    .line 642
    .end local v0    # "_arg0":Landroidx/media3/session/IMediaController;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/os/Bundle;
    :sswitch_24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object v0

    .line 644
    .restart local v0    # "_arg0":Landroidx/media3/session/IMediaController;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 646
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    .line 647
    .local v2, "_arg2":F
    invoke-virtual {v7, v0, v1, v2}, Landroidx/media3/session/IMediaSession$Stub;->setPlaybackSpeed(Landroidx/media3/session/IMediaController;IF)V

    .line 648
    goto/16 :goto_0

    .line 631
    .end local v0    # "_arg0":Landroidx/media3/session/IMediaController;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":F
    :sswitch_25
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object v0

    .line 633
    .restart local v0    # "_arg0":Landroidx/media3/session/IMediaController;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 635
    .restart local v1    # "_arg1":I
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v9, v2}, Landroidx/media3/session/IMediaSession$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 636
    .local v2, "_arg2":Landroid/os/Bundle;
    invoke-virtual {v7, v0, v1, v2}, Landroidx/media3/session/IMediaSession$Stub;->setPlaybackParameters(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;)V

    .line 637
    goto/16 :goto_0

    .line 622
    .end local v0    # "_arg0":Landroidx/media3/session/IMediaController;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/os/Bundle;
    :sswitch_26
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object v0

    .line 624
    .restart local v0    # "_arg0":Landroidx/media3/session/IMediaController;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 625
    .restart local v1    # "_arg1":I
    invoke-virtual {v7, v0, v1}, Landroidx/media3/session/IMediaSession$Stub;->prepare(Landroidx/media3/session/IMediaController;I)V

    .line 626
    goto/16 :goto_0

    .line 613
    .end local v0    # "_arg0":Landroidx/media3/session/IMediaController;
    .end local v1    # "_arg1":I
    :sswitch_27
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object v0

    .line 615
    .restart local v0    # "_arg0":Landroidx/media3/session/IMediaController;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 616
    .restart local v1    # "_arg1":I
    invoke-virtual {v7, v0, v1}, Landroidx/media3/session/IMediaSession$Stub;->pause(Landroidx/media3/session/IMediaController;I)V

    .line 617
    goto/16 :goto_0

    .line 604
    .end local v0    # "_arg0":Landroidx/media3/session/IMediaController;
    .end local v1    # "_arg1":I
    :sswitch_28
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object v0

    .line 606
    .restart local v0    # "_arg0":Landroidx/media3/session/IMediaController;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 607
    .restart local v1    # "_arg1":I
    invoke-virtual {v7, v0, v1}, Landroidx/media3/session/IMediaSession$Stub;->play(Landroidx/media3/session/IMediaController;I)V

    .line 608
    goto/16 :goto_0

    .line 561
    .end local v0    # "_arg0":Landroidx/media3/session/IMediaController;
    .end local v1    # "_arg1":I
    :sswitch_29
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object v6

    .line 563
    .restart local v6    # "_arg0":Landroidx/media3/session/IMediaController;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 565
    .restart local v13    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 567
    .restart local v14    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 569
    .local v15, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 570
    .local v16, "_arg4":I
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v13

    move v3, v14

    move v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroidx/media3/session/IMediaSession$Stub;->moveMediaItems(Landroidx/media3/session/IMediaController;IIII)V

    .line 571
    goto/16 :goto_0

    .line 548
    .end local v6    # "_arg0":Landroidx/media3/session/IMediaController;
    .end local v13    # "_arg1":I
    .end local v14    # "_arg2":I
    .end local v15    # "_arg3":I
    .end local v16    # "_arg4":I
    :sswitch_2a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object v0

    .line 550
    .restart local v0    # "_arg0":Landroidx/media3/session/IMediaController;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 552
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 554
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 555
    .local v3, "_arg3":I
    invoke-virtual {v7, v0, v1, v2, v3}, Landroidx/media3/session/IMediaSession$Stub;->moveMediaItem(Landroidx/media3/session/IMediaController;III)V

    .line 556
    goto/16 :goto_0

    .line 539
    .end local v0    # "_arg0":Landroidx/media3/session/IMediaController;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":I
    :sswitch_2b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object v0

    .line 541
    .restart local v0    # "_arg0":Landroidx/media3/session/IMediaController;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 542
    .restart local v1    # "_arg1":I
    invoke-virtual {v7, v0, v1}, Landroidx/media3/session/IMediaSession$Stub;->clearMediaItems(Landroidx/media3/session/IMediaController;I)V

    .line 543
    goto/16 :goto_0

    .line 526
    .end local v0    # "_arg0":Landroidx/media3/session/IMediaController;
    .end local v1    # "_arg1":I
    :sswitch_2c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object v0

    .line 528
    .restart local v0    # "_arg0":Landroidx/media3/session/IMediaController;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 530
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 532
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 533
    .restart local v3    # "_arg3":I
    invoke-virtual {v7, v0, v1, v2, v3}, Landroidx/media3/session/IMediaSession$Stub;->removeMediaItems(Landroidx/media3/session/IMediaController;III)V

    .line 534
    goto/16 :goto_0

    .line 515
    .end local v0    # "_arg0":Landroidx/media3/session/IMediaController;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":I
    :sswitch_2d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object v0

    .line 517
    .restart local v0    # "_arg0":Landroidx/media3/session/IMediaController;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 519
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 520
    .restart local v2    # "_arg2":I
    invoke-virtual {v7, v0, v1, v2}, Landroidx/media3/session/IMediaSession$Stub;->removeMediaItem(Landroidx/media3/session/IMediaController;II)V

    .line 521
    goto/16 :goto_0

    .line 504
    .end local v0    # "_arg0":Landroidx/media3/session/IMediaController;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :sswitch_2e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object v1

    .line 506
    .local v1, "_arg0":Landroidx/media3/session/IMediaController;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 508
    .local v2, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3

    move v0, v11

    .line 509
    .local v0, "_arg2":Z
    :cond_3
    invoke-virtual {v7, v1, v2, v0}, Landroidx/media3/session/IMediaSession$Stub;->setShuffleModeEnabled(Landroidx/media3/session/IMediaController;IZ)V

    .line 510
    goto/16 :goto_0

    .line 493
    .end local v0    # "_arg2":Z
    .end local v1    # "_arg0":Landroidx/media3/session/IMediaController;
    .end local v2    # "_arg1":I
    :sswitch_2f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object v0

    .line 495
    .local v0, "_arg0":Landroidx/media3/session/IMediaController;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 497
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 498
    .local v2, "_arg2":I
    invoke-virtual {v7, v0, v1, v2}, Landroidx/media3/session/IMediaSession$Stub;->setRepeatMode(Landroidx/media3/session/IMediaController;II)V

    .line 499
    goto/16 :goto_0

    .line 480
    .end local v0    # "_arg0":Landroidx/media3/session/IMediaController;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :sswitch_30
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object v0

    .line 482
    .restart local v0    # "_arg0":Landroidx/media3/session/IMediaController;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 484
    .restart local v1    # "_arg1":I
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v9, v2}, Landroidx/media3/session/IMediaSession$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 486
    .local v2, "_arg2":Landroid/os/Bundle;
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v9, v3}, Landroidx/media3/session/IMediaSession$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 487
    .local v3, "_arg3":Landroid/os/Bundle;
    invoke-virtual {v7, v0, v1, v2, v3}, Landroidx/media3/session/IMediaSession$Stub;->onCustomCommand(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;Landroid/os/Bundle;)V

    .line 488
    goto/16 :goto_0

    .line 469
    .end local v0    # "_arg0":Landroidx/media3/session/IMediaController;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/os/Bundle;
    .end local v3    # "_arg3":Landroid/os/Bundle;
    :sswitch_31
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object v0

    .line 471
    .restart local v0    # "_arg0":Landroidx/media3/session/IMediaController;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 473
    .restart local v1    # "_arg1":I
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v9, v2}, Landroidx/media3/session/IMediaSession$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 474
    .restart local v2    # "_arg2":Landroid/os/Bundle;
    invoke-virtual {v7, v0, v1, v2}, Landroidx/media3/session/IMediaSession$Stub;->connect(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;)V

    .line 475
    goto/16 :goto_0

    .line 458
    .end local v0    # "_arg0":Landroidx/media3/session/IMediaController;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/os/Bundle;
    :sswitch_32
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object v0

    .line 460
    .restart local v0    # "_arg0":Landroidx/media3/session/IMediaController;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 462
    .restart local v1    # "_arg1":I
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v9, v2}, Landroidx/media3/session/IMediaSession$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 463
    .restart local v2    # "_arg2":Landroid/os/Bundle;
    invoke-virtual {v7, v0, v1, v2}, Landroidx/media3/session/IMediaSession$Stub;->onControllerResult(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;)V

    .line 464
    goto/16 :goto_0

    .line 447
    .end local v0    # "_arg0":Landroidx/media3/session/IMediaController;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/os/Bundle;
    :sswitch_33
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object v1

    .line 449
    .local v1, "_arg0":Landroidx/media3/session/IMediaController;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 451
    .local v2, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_4

    move v0, v11

    .line 452
    .local v0, "_arg2":Z
    :cond_4
    invoke-virtual {v7, v1, v2, v0}, Landroidx/media3/session/IMediaSession$Stub;->setPlayWhenReady(Landroidx/media3/session/IMediaController;IZ)V

    .line 453
    goto/16 :goto_0

    .line 432
    .end local v0    # "_arg2":Z
    .end local v1    # "_arg0":Landroidx/media3/session/IMediaController;
    .end local v2    # "_arg1":I
    :sswitch_34
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object v13

    .line 434
    .local v13, "_arg0":Landroidx/media3/session/IMediaController;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 436
    .local v14, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v15

    .line 438
    .local v15, "_arg2":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 440
    .local v16, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v17

    .line 441
    .local v17, "_arg4":J
    move-object/from16 v0, p0

    move-object v1, v13

    move v2, v14

    move-object v3, v15

    move/from16 v4, v16

    move-wide/from16 v5, v17

    invoke-virtual/range {v0 .. v6}, Landroidx/media3/session/IMediaSession$Stub;->setMediaItemsWithStartIndex(Landroidx/media3/session/IMediaController;ILandroid/os/IBinder;IJ)V

    .line 442
    goto/16 :goto_0

    .line 419
    .end local v13    # "_arg0":Landroidx/media3/session/IMediaController;
    .end local v14    # "_arg1":I
    .end local v15    # "_arg2":Landroid/os/IBinder;
    .end local v16    # "_arg3":I
    .end local v17    # "_arg4":J
    :sswitch_35
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object v1

    .line 421
    .restart local v1    # "_arg0":Landroidx/media3/session/IMediaController;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 423
    .restart local v2    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 425
    .local v3, "_arg2":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_5

    move v0, v11

    .line 426
    .local v0, "_arg3":Z
    :cond_5
    invoke-virtual {v7, v1, v2, v3, v0}, Landroidx/media3/session/IMediaSession$Stub;->setMediaItemsWithResetPosition(Landroidx/media3/session/IMediaController;ILandroid/os/IBinder;Z)V

    .line 427
    goto/16 :goto_0

    .line 408
    .end local v0    # "_arg3":Z
    .end local v1    # "_arg0":Landroidx/media3/session/IMediaController;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/os/IBinder;
    :sswitch_36
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object v0

    .line 410
    .local v0, "_arg0":Landroidx/media3/session/IMediaController;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 412
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 413
    .local v2, "_arg2":Landroid/os/IBinder;
    invoke-virtual {v7, v0, v1, v2}, Landroidx/media3/session/IMediaSession$Stub;->setMediaItems(Landroidx/media3/session/IMediaController;ILandroid/os/IBinder;)V

    .line 414
    goto/16 :goto_0

    .line 395
    .end local v0    # "_arg0":Landroidx/media3/session/IMediaController;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/os/IBinder;
    :sswitch_37
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object v1

    .line 397
    .local v1, "_arg0":Landroidx/media3/session/IMediaController;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 399
    .local v2, "_arg1":I
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v9, v3}, Landroidx/media3/session/IMediaSession$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 401
    .local v3, "_arg2":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_6

    move v0, v11

    .line 402
    .local v0, "_arg3":Z
    :cond_6
    invoke-virtual {v7, v1, v2, v3, v0}, Landroidx/media3/session/IMediaSession$Stub;->setMediaItemWithResetPosition(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;Z)V

    .line 403
    goto/16 :goto_0

    .line 382
    .end local v0    # "_arg3":Z
    .end local v1    # "_arg0":Landroidx/media3/session/IMediaController;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/os/Bundle;
    :sswitch_38
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object v6

    .line 384
    .restart local v6    # "_arg0":Landroidx/media3/session/IMediaController;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 386
    .local v13, "_arg1":I
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v9, v0}, Landroidx/media3/session/IMediaSession$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/os/Bundle;

    .line 388
    .local v14, "_arg2":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v15

    .line 389
    .local v15, "_arg3":J
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v13

    move-object v3, v14

    move-wide v4, v15

    invoke-virtual/range {v0 .. v5}, Landroidx/media3/session/IMediaSession$Stub;->setMediaItemWithStartPosition(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;J)V

    .line 390
    goto/16 :goto_0

    .line 371
    .end local v6    # "_arg0":Landroidx/media3/session/IMediaController;
    .end local v13    # "_arg1":I
    .end local v14    # "_arg2":Landroid/os/Bundle;
    .end local v15    # "_arg3":J
    :sswitch_39
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object v0

    .line 373
    .local v0, "_arg0":Landroidx/media3/session/IMediaController;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 375
    .local v1, "_arg1":I
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v9, v2}, Landroidx/media3/session/IMediaSession$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 376
    .local v2, "_arg2":Landroid/os/Bundle;
    invoke-virtual {v7, v0, v1, v2}, Landroidx/media3/session/IMediaSession$Stub;->setMediaItem(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;)V

    .line 377
    goto :goto_0

    .line 334
    .end local v0    # "_arg0":Landroidx/media3/session/IMediaController;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/os/Bundle;
    :sswitch_3a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object v1

    .line 336
    .local v1, "_arg0":Landroidx/media3/session/IMediaController;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 338
    .local v2, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_7

    move v0, v11

    .line 339
    .local v0, "_arg2":Z
    :cond_7
    invoke-virtual {v7, v1, v2, v0}, Landroidx/media3/session/IMediaSession$Stub;->setDeviceMuted(Landroidx/media3/session/IMediaController;IZ)V

    .line 340
    goto :goto_0

    .line 314
    .end local v0    # "_arg2":Z
    .end local v1    # "_arg0":Landroidx/media3/session/IMediaController;
    .end local v2    # "_arg1":I
    :sswitch_3b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object v0

    .line 316
    .local v0, "_arg0":Landroidx/media3/session/IMediaController;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 317
    .local v1, "_arg1":I
    invoke-virtual {v7, v0, v1}, Landroidx/media3/session/IMediaSession$Stub;->decreaseDeviceVolume(Landroidx/media3/session/IMediaController;I)V

    .line 318
    goto :goto_0

    .line 294
    .end local v0    # "_arg0":Landroidx/media3/session/IMediaController;
    .end local v1    # "_arg1":I
    :sswitch_3c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object v0

    .line 296
    .restart local v0    # "_arg0":Landroidx/media3/session/IMediaController;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 297
    .restart local v1    # "_arg1":I
    invoke-virtual {v7, v0, v1}, Landroidx/media3/session/IMediaSession$Stub;->increaseDeviceVolume(Landroidx/media3/session/IMediaController;I)V

    .line 298
    goto :goto_0

    .line 270
    .end local v0    # "_arg0":Landroidx/media3/session/IMediaController;
    .end local v1    # "_arg1":I
    :sswitch_3d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object v0

    .line 272
    .restart local v0    # "_arg0":Landroidx/media3/session/IMediaController;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 274
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 275
    .local v2, "_arg2":I
    invoke-virtual {v7, v0, v1, v2}, Landroidx/media3/session/IMediaSession$Stub;->setDeviceVolume(Landroidx/media3/session/IMediaController;II)V

    .line 276
    goto :goto_0

    .line 259
    .end local v0    # "_arg0":Landroidx/media3/session/IMediaController;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :sswitch_3e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object v0

    .line 261
    .restart local v0    # "_arg0":Landroidx/media3/session/IMediaController;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 263
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    .line 264
    .local v2, "_arg2":F
    invoke-virtual {v7, v0, v1, v2}, Landroidx/media3/session/IMediaSession$Stub;->setVolume(Landroidx/media3/session/IMediaController;IF)V

    .line 265
    nop

    .line 976
    .end local v0    # "_arg0":Landroidx/media3/session/IMediaController;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":F
    :goto_0
    return v11

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0xbba -> :sswitch_3e
        0xbbb -> :sswitch_3d
        0xbbc -> :sswitch_3c
        0xbbd -> :sswitch_3b
        0xbbe -> :sswitch_3a
        0xbbf -> :sswitch_39
        0xbc0 -> :sswitch_38
        0xbc1 -> :sswitch_37
        0xbc2 -> :sswitch_36
        0xbc3 -> :sswitch_35
        0xbc4 -> :sswitch_34
        0xbc5 -> :sswitch_33
        0xbc6 -> :sswitch_32
        0xbc7 -> :sswitch_31
        0xbc8 -> :sswitch_30
        0xbc9 -> :sswitch_2f
        0xbca -> :sswitch_2e
        0xbcb -> :sswitch_2d
        0xbcc -> :sswitch_2c
        0xbcd -> :sswitch_2b
        0xbce -> :sswitch_2a
        0xbcf -> :sswitch_29
        0xbd0 -> :sswitch_28
        0xbd1 -> :sswitch_27
        0xbd2 -> :sswitch_26
        0xbd3 -> :sswitch_25
        0xbd4 -> :sswitch_24
        0xbd5 -> :sswitch_23
        0xbd6 -> :sswitch_22
        0xbd7 -> :sswitch_21
        0xbd8 -> :sswitch_20
        0xbd9 -> :sswitch_1f
        0xbda -> :sswitch_1e
        0xbdb -> :sswitch_1d
        0xbdc -> :sswitch_1c
        0xbdd -> :sswitch_1b
        0xbde -> :sswitch_1a
        0xbdf -> :sswitch_19
        0xbe0 -> :sswitch_18
        0xbe1 -> :sswitch_17
        0xbe2 -> :sswitch_16
        0xbe3 -> :sswitch_15
        0xbe4 -> :sswitch_14
        0xbe5 -> :sswitch_13
        0xbe6 -> :sswitch_12
        0xbe7 -> :sswitch_11
        0xbe8 -> :sswitch_10
        0xbe9 -> :sswitch_f
        0xbea -> :sswitch_e
        0xbeb -> :sswitch_d
        0xbec -> :sswitch_c
        0xbed -> :sswitch_b
        0xbee -> :sswitch_a
        0xbef -> :sswitch_9
        0xbf0 -> :sswitch_8
        0xbf1 -> :sswitch_7
        0xfa1 -> :sswitch_6
        0xfa2 -> :sswitch_5
        0xfa3 -> :sswitch_4
        0xfa4 -> :sswitch_3
        0xfa5 -> :sswitch_2
        0xfa6 -> :sswitch_1
        0xfa7 -> :sswitch_0
    .end sparse-switch
.end method
