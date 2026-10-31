.class public final Landroidx/media3/session/legacy/PlaybackStateCompat;
.super Ljava/lang/Object;
.source "PlaybackStateCompat.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/session/legacy/PlaybackStateCompat$CustomAction;,
        Landroidx/media3/session/legacy/PlaybackStateCompat$Api21Impl;,
        Landroidx/media3/session/legacy/PlaybackStateCompat$Api22Impl;,
        Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;,
        Landroidx/media3/session/legacy/PlaybackStateCompat$ErrorCode;,
        Landroidx/media3/session/legacy/PlaybackStateCompat$ShuffleMode;,
        Landroidx/media3/session/legacy/PlaybackStateCompat$RepeatMode;,
        Landroidx/media3/session/legacy/PlaybackStateCompat$State;,
        Landroidx/media3/session/legacy/PlaybackStateCompat$MediaKeyAction;,
        Landroidx/media3/session/legacy/PlaybackStateCompat$Actions;
    }
.end annotation


# static fields
.field public static final ACTION_FAST_FORWARD:J = 0x40L

.field public static final ACTION_PAUSE:J = 0x2L

.field public static final ACTION_PLAY:J = 0x4L

.field public static final ACTION_PLAY_FROM_MEDIA_ID:J = 0x400L

.field public static final ACTION_PLAY_FROM_SEARCH:J = 0x800L

.field public static final ACTION_PLAY_FROM_URI:J = 0x2000L

.field public static final ACTION_PLAY_PAUSE:J = 0x200L

.field public static final ACTION_PREPARE:J = 0x4000L

.field public static final ACTION_PREPARE_FROM_MEDIA_ID:J = 0x8000L

.field public static final ACTION_PREPARE_FROM_SEARCH:J = 0x10000L

.field public static final ACTION_PREPARE_FROM_URI:J = 0x20000L

.field public static final ACTION_REWIND:J = 0x8L

.field public static final ACTION_SEEK_TO:J = 0x100L

.field public static final ACTION_SET_CAPTIONING_ENABLED:J = 0x100000L

.field public static final ACTION_SET_PLAYBACK_SPEED:J = 0x400000L

.field public static final ACTION_SET_RATING:J = 0x80L

.field public static final ACTION_SET_REPEAT_MODE:J = 0x40000L

.field public static final ACTION_SET_SHUFFLE_MODE:J = 0x200000L

.field public static final ACTION_SET_SHUFFLE_MODE_ENABLED:J = 0x80000L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_SKIP_TO_NEXT:J = 0x20L

.field public static final ACTION_SKIP_TO_PREVIOUS:J = 0x10L

.field public static final ACTION_SKIP_TO_QUEUE_ITEM:J = 0x1000L

.field public static final ACTION_STOP:J = 0x1L

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/media3/session/legacy/PlaybackStateCompat;",
            ">;"
        }
    .end annotation
.end field

.field public static final ERROR_CODE_ACTION_ABORTED:I = 0xa

.field public static final ERROR_CODE_APP_ERROR:I = 0x1

.field public static final ERROR_CODE_AUTHENTICATION_EXPIRED:I = 0x3

.field public static final ERROR_CODE_CONCURRENT_STREAM_LIMIT:I = 0x5

.field public static final ERROR_CODE_CONTENT_ALREADY_PLAYING:I = 0x8

.field public static final ERROR_CODE_END_OF_QUEUE:I = 0xb

.field public static final ERROR_CODE_NOT_AVAILABLE_IN_REGION:I = 0x7

.field public static final ERROR_CODE_NOT_SUPPORTED:I = 0x2

.field public static final ERROR_CODE_PARENTAL_CONTROL_RESTRICTED:I = 0x6

.field public static final ERROR_CODE_PREMIUM_ACCOUNT_REQUIRED:I = 0x4

.field public static final ERROR_CODE_SKIP_LIMIT_REACHED:I = 0x9

.field public static final ERROR_CODE_UNKNOWN_ERROR:I = 0x0

.field private static final KEYCODE_MEDIA_PAUSE:I = 0x7f

.field private static final KEYCODE_MEDIA_PLAY:I = 0x7e

.field public static final PLAYBACK_POSITION_UNKNOWN:J = -0x1L

.field public static final REPEAT_MODE_ALL:I = 0x2

.field public static final REPEAT_MODE_GROUP:I = 0x3

.field public static final REPEAT_MODE_INVALID:I = -0x1

.field public static final REPEAT_MODE_NONE:I = 0x0

.field public static final REPEAT_MODE_ONE:I = 0x1

.field public static final SHUFFLE_MODE_ALL:I = 0x1

.field public static final SHUFFLE_MODE_GROUP:I = 0x2

.field public static final SHUFFLE_MODE_INVALID:I = -0x1

.field public static final SHUFFLE_MODE_NONE:I = 0x0

.field public static final STATE_BUFFERING:I = 0x6

.field public static final STATE_CONNECTING:I = 0x8

.field public static final STATE_ERROR:I = 0x7

.field public static final STATE_FAST_FORWARDING:I = 0x4

.field public static final STATE_NONE:I = 0x0

.field public static final STATE_PAUSED:I = 0x2

.field public static final STATE_PLAYING:I = 0x3

.field public static final STATE_REWINDING:I = 0x5

.field public static final STATE_SKIPPING_TO_NEXT:I = 0xa

.field public static final STATE_SKIPPING_TO_PREVIOUS:I = 0x9

.field public static final STATE_SKIPPING_TO_QUEUE_ITEM:I = 0xb

.field public static final STATE_STOPPED:I = 0x1


# instance fields
.field final mActions:J

.field final mActiveItemId:J

.field final mBufferedPosition:J

.field mCustomActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media3/session/legacy/PlaybackStateCompat$CustomAction;",
            ">;"
        }
    .end annotation
.end field

.field final mErrorCode:I

.field final mErrorMessage:Ljava/lang/CharSequence;

.field final mExtras:Landroid/os/Bundle;

.field final mPosition:J

.field final mSpeed:F

.field final mState:I

.field private mStateFwk:Landroid/media/session/PlaybackState;

.field final mUpdateTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 920
    new-instance v0, Landroidx/media3/session/legacy/PlaybackStateCompat$1;

    invoke-direct {v0}, Landroidx/media3/session/legacy/PlaybackStateCompat$1;-><init>()V

    sput-object v0, Landroidx/media3/session/legacy/PlaybackStateCompat;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IJJFJILjava/lang/CharSequence;JLjava/util/List;JLandroid/os/Bundle;)V
    .locals 16
    .param p1, "state"    # I
    .param p2, "position"    # J
    .param p4, "bufferedPosition"    # J
    .param p6, "rate"    # F
    .param p7, "actions"    # J
    .param p9, "errorCode"    # I
    .param p10, "errorMessage"    # Ljava/lang/CharSequence;
    .param p11, "updateTime"    # J
    .param p14, "activeItemId"    # J
    .param p16, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJFJI",
            "Ljava/lang/CharSequence;",
            "J",
            "Ljava/util/List<",
            "Landroidx/media3/session/legacy/PlaybackStateCompat$CustomAction;",
            ">;J",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 603
    .local p13, "customActions":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/session/legacy/PlaybackStateCompat$CustomAction;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p13

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 604
    move/from16 v2, p1

    iput v2, v0, Landroidx/media3/session/legacy/PlaybackStateCompat;->mState:I

    .line 605
    move-wide/from16 v3, p2

    iput-wide v3, v0, Landroidx/media3/session/legacy/PlaybackStateCompat;->mPosition:J

    .line 606
    move-wide/from16 v5, p4

    iput-wide v5, v0, Landroidx/media3/session/legacy/PlaybackStateCompat;->mBufferedPosition:J

    .line 607
    move/from16 v7, p6

    iput v7, v0, Landroidx/media3/session/legacy/PlaybackStateCompat;->mSpeed:F

    .line 608
    move-wide/from16 v8, p7

    iput-wide v8, v0, Landroidx/media3/session/legacy/PlaybackStateCompat;->mActions:J

    .line 609
    move/from16 v10, p9

    iput v10, v0, Landroidx/media3/session/legacy/PlaybackStateCompat;->mErrorCode:I

    .line 610
    move-object/from16 v11, p10

    iput-object v11, v0, Landroidx/media3/session/legacy/PlaybackStateCompat;->mErrorMessage:Ljava/lang/CharSequence;

    .line 611
    move-wide/from16 v12, p11

    iput-wide v12, v0, Landroidx/media3/session/legacy/PlaybackStateCompat;->mUpdateTime:J

    .line 612
    if-nez v1, :cond_0

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v14

    goto :goto_0

    :cond_0
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_0
    iput-object v14, v0, Landroidx/media3/session/legacy/PlaybackStateCompat;->mCustomActions:Ljava/util/List;

    .line 613
    move-wide/from16 v14, p14

    iput-wide v14, v0, Landroidx/media3/session/legacy/PlaybackStateCompat;->mActiveItemId:J

    .line 614
    move-object/from16 v1, p16

    iput-object v1, v0, Landroidx/media3/session/legacy/PlaybackStateCompat;->mExtras:Landroid/os/Bundle;

    .line 615
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 617
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 618
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/media3/session/legacy/PlaybackStateCompat;->mState:I

    .line 619
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/session/legacy/PlaybackStateCompat;->mPosition:J

    .line 620
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroidx/media3/session/legacy/PlaybackStateCompat;->mSpeed:F

    .line 621
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/session/legacy/PlaybackStateCompat;->mUpdateTime:J

    .line 622
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/session/legacy/PlaybackStateCompat;->mBufferedPosition:J

    .line 623
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/session/legacy/PlaybackStateCompat;->mActions:J

    .line 624
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroidx/media3/session/legacy/PlaybackStateCompat;->mErrorMessage:Ljava/lang/CharSequence;

    .line 625
    sget-object v0, Landroidx/media3/session/legacy/PlaybackStateCompat$CustomAction;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    .line 626
    .local v0, "actions":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/session/legacy/PlaybackStateCompat$CustomAction;>;"
    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    iput-object v1, p0, Landroidx/media3/session/legacy/PlaybackStateCompat;->mCustomActions:Ljava/util/List;

    .line 627
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Landroidx/media3/session/legacy/PlaybackStateCompat;->mActiveItemId:J

    .line 628
    const-class v1, Landroidx/media3/session/legacy/MediaSessionCompat;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Landroidx/media3/session/legacy/PlaybackStateCompat;->mExtras:Landroid/os/Bundle;

    .line 630
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroidx/media3/session/legacy/PlaybackStateCompat;->mErrorCode:I

    .line 631
    return-void
.end method

.method public static fromPlaybackState(Ljava/lang/Object;)Landroidx/media3/session/legacy/PlaybackStateCompat;
    .locals 23
    .param p0, "stateObj"    # Ljava/lang/Object;

    .line 849
    if-eqz p0, :cond_2

    .line 850
    move-object/from16 v0, p0

    check-cast v0, Landroid/media/session/PlaybackState;

    .line 851
    .local v0, "stateFwk":Landroid/media/session/PlaybackState;
    invoke-static {v0}, Landroidx/media3/session/legacy/PlaybackStateCompat$Api21Impl;->getCustomActions(Landroid/media/session/PlaybackState;)Ljava/util/List;

    move-result-object v1

    .line 852
    .local v1, "customActionFwks":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/PlaybackState$CustomAction;>;"
    const/4 v2, 0x0

    .line 853
    .local v2, "customActions":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/session/legacy/PlaybackStateCompat$CustomAction;>;"
    if-eqz v1, :cond_1

    .line 854
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    move-object v2, v3

    .line 855
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 856
    .local v4, "customActionFwk":Ljava/lang/Object;
    if-nez v4, :cond_0

    .line 857
    goto :goto_0

    .line 859
    :cond_0
    invoke-static {v4}, Landroidx/media3/session/legacy/PlaybackStateCompat$CustomAction;->fromCustomAction(Ljava/lang/Object;)Landroidx/media3/session/legacy/PlaybackStateCompat$CustomAction;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 860
    .end local v4    # "customActionFwk":Ljava/lang/Object;
    goto :goto_0

    .line 863
    :cond_1
    nop

    .line 864
    invoke-static {v0}, Landroidx/media3/session/legacy/PlaybackStateCompat$Api22Impl;->getExtras(Landroid/media/session/PlaybackState;)Landroid/os/Bundle;

    move-result-object v3

    .line 865
    .local v3, "extras":Landroid/os/Bundle;
    invoke-static {v3}, Landroidx/media3/session/legacy/MediaSessionCompat;->ensureClassLoader(Landroid/os/Bundle;)V

    .line 869
    new-instance v4, Landroidx/media3/session/legacy/PlaybackStateCompat;

    move-object v6, v4

    .line 871
    invoke-static {v0}, Landroidx/media3/session/legacy/PlaybackStateCompat$Api21Impl;->getState(Landroid/media/session/PlaybackState;)I

    move-result v7

    .line 872
    invoke-static {v0}, Landroidx/media3/session/legacy/PlaybackStateCompat$Api21Impl;->getPosition(Landroid/media/session/PlaybackState;)J

    move-result-wide v8

    .line 873
    invoke-static {v0}, Landroidx/media3/session/legacy/PlaybackStateCompat$Api21Impl;->getBufferedPosition(Landroid/media/session/PlaybackState;)J

    move-result-wide v10

    .line 874
    invoke-static {v0}, Landroidx/media3/session/legacy/PlaybackStateCompat$Api21Impl;->getPlaybackSpeed(Landroid/media/session/PlaybackState;)F

    move-result v12

    .line 875
    invoke-static {v0}, Landroidx/media3/session/legacy/PlaybackStateCompat$Api21Impl;->getActions(Landroid/media/session/PlaybackState;)J

    move-result-wide v13

    .line 877
    invoke-static {v0}, Landroidx/media3/session/legacy/PlaybackStateCompat$Api21Impl;->getErrorMessage(Landroid/media/session/PlaybackState;)Ljava/lang/CharSequence;

    move-result-object v16

    .line 878
    invoke-static {v0}, Landroidx/media3/session/legacy/PlaybackStateCompat$Api21Impl;->getLastPositionUpdateTime(Landroid/media/session/PlaybackState;)J

    move-result-wide v17

    .line 880
    invoke-static {v0}, Landroidx/media3/session/legacy/PlaybackStateCompat$Api21Impl;->getActiveQueueItemId(Landroid/media/session/PlaybackState;)J

    move-result-wide v20

    const/4 v15, 0x0

    move-object/from16 v19, v2

    move-object/from16 v22, v3

    invoke-direct/range {v6 .. v22}, Landroidx/media3/session/legacy/PlaybackStateCompat;-><init>(IJJFJILjava/lang/CharSequence;JLjava/util/List;JLandroid/os/Bundle;)V

    .line 882
    .local v4, "stateCompat":Landroidx/media3/session/legacy/PlaybackStateCompat;
    iput-object v0, v4, Landroidx/media3/session/legacy/PlaybackStateCompat;->mStateFwk:Landroid/media/session/PlaybackState;

    .line 883
    return-object v4

    .line 885
    .end local v0    # "stateFwk":Landroid/media/session/PlaybackState;
    .end local v1    # "customActionFwks":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/PlaybackState$CustomAction;>;"
    .end local v2    # "customActions":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/session/legacy/PlaybackStateCompat$CustomAction;>;"
    .end local v3    # "extras":Landroid/os/Bundle;
    .end local v4    # "stateCompat":Landroidx/media3/session/legacy/PlaybackStateCompat;
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public static toKeyCode(J)I
    .locals 2
    .param p0, "action"    # J

    .line 558
    const-wide/16 v0, 0x4

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    .line 559
    const/16 v0, 0x7e

    return v0

    .line 560
    :cond_0
    const-wide/16 v0, 0x2

    cmp-long v0, p0, v0

    if-nez v0, :cond_1

    .line 561
    const/16 v0, 0x7f

    return v0

    .line 562
    :cond_1
    const-wide/16 v0, 0x20

    cmp-long v0, p0, v0

    if-nez v0, :cond_2

    .line 563
    const/16 v0, 0x57

    return v0

    .line 564
    :cond_2
    const-wide/16 v0, 0x10

    cmp-long v0, p0, v0

    if-nez v0, :cond_3

    .line 565
    const/16 v0, 0x58

    return v0

    .line 566
    :cond_3
    const-wide/16 v0, 0x1

    cmp-long v0, p0, v0

    if-nez v0, :cond_4

    .line 567
    const/16 v0, 0x56

    return v0

    .line 568
    :cond_4
    const-wide/16 v0, 0x40

    cmp-long v0, p0, v0

    if-nez v0, :cond_5

    .line 569
    const/16 v0, 0x5a

    return v0

    .line 570
    :cond_5
    const-wide/16 v0, 0x8

    cmp-long v0, p0, v0

    if-nez v0, :cond_6

    .line 571
    const/16 v0, 0x59

    return v0

    .line 572
    :cond_6
    const-wide/16 v0, 0x200

    cmp-long v0, p0, v0

    if-nez v0, :cond_7

    .line 573
    const/16 v0, 0x55

    return v0

    .line 575
    :cond_7
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 652
    const/4 v0, 0x0

    return v0
.end method

.method public getActions()J
    .locals 2

    .line 775
    iget-wide v0, p0, Landroidx/media3/session/legacy/PlaybackStateCompat;->mActions:J

    return-wide v0
.end method

.method public getActiveQueueItemId()J
    .locals 2

    .line 826
    iget-wide v0, p0, Landroidx/media3/session/legacy/PlaybackStateCompat;->mActiveItemId:J

    return-wide v0
.end method

.method public getBufferedPosition()J
    .locals 2

    .line 731
    iget-wide v0, p0, Landroidx/media3/session/legacy/PlaybackStateCompat;->mBufferedPosition:J

    return-wide v0
.end method

.method public getCurrentPosition(Ljava/lang/Long;)J
    .locals 7
    .param p1, "timeDiff"    # Ljava/lang/Long;

    .line 716
    iget-wide v0, p0, Landroidx/media3/session/legacy/PlaybackStateCompat;->mPosition:J

    iget v2, p0, Landroidx/media3/session/legacy/PlaybackStateCompat;->mSpeed:F

    .line 720
    if-eqz p1, :cond_0

    .line 721
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    goto :goto_0

    .line 722
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, p0, Landroidx/media3/session/legacy/PlaybackStateCompat;->mUpdateTime:J

    sub-long/2addr v3, v5

    :goto_0
    long-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-long v2, v2

    add-long/2addr v0, v2

    .line 723
    .local v0, "expectedPosition":J
    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    return-wide v2
.end method

.method public getCustomActions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/media3/session/legacy/PlaybackStateCompat$CustomAction;",
            ">;"
        }
    .end annotation

    .line 781
    iget-object v0, p0, Landroidx/media3/session/legacy/PlaybackStateCompat;->mCustomActions:Ljava/util/List;

    return-object v0
.end method

.method public getErrorCode()I
    .locals 1

    .line 804
    iget v0, p0, Landroidx/media3/session/legacy/PlaybackStateCompat;->mErrorCode:I

    return v0
.end method

.method public getErrorMessage()Ljava/lang/CharSequence;
    .locals 1

    .line 815
    iget-object v0, p0, Landroidx/media3/session/legacy/PlaybackStateCompat;->mErrorMessage:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .line 836
    iget-object v0, p0, Landroidx/media3/session/legacy/PlaybackStateCompat;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getLastPositionUpdateTime()J
    .locals 2

    .line 706
    iget-wide v0, p0, Landroidx/media3/session/legacy/PlaybackStateCompat;->mUpdateTime:J

    return-wide v0
.end method

.method public getPlaybackSpeed()F
    .locals 1

    .line 741
    iget v0, p0, Landroidx/media3/session/legacy/PlaybackStateCompat;->mSpeed:F

    return v0
.end method

.method public getPlaybackState()Ljava/lang/Object;
    .locals 8

    .line 898
    iget-object v0, p0, Landroidx/media3/session/legacy/PlaybackStateCompat;->mStateFwk:Landroid/media/session/PlaybackState;

    if-nez v0, :cond_2

    .line 899
    invoke-static {}, Landroidx/media3/session/legacy/PlaybackStateCompat$Api21Impl;->createBuilder()Landroid/media/session/PlaybackState$Builder;

    move-result-object v0

    .line 900
    .local v0, "builder":Landroid/media/session/PlaybackState$Builder;
    iget v2, p0, Landroidx/media3/session/legacy/PlaybackStateCompat;->mState:I

    iget-wide v3, p0, Landroidx/media3/session/legacy/PlaybackStateCompat;->mPosition:J

    iget v5, p0, Landroidx/media3/session/legacy/PlaybackStateCompat;->mSpeed:F

    iget-wide v6, p0, Landroidx/media3/session/legacy/PlaybackStateCompat;->mUpdateTime:J

    move-object v1, v0

    invoke-static/range {v1 .. v7}, Landroidx/media3/session/legacy/PlaybackStateCompat$Api21Impl;->setState(Landroid/media/session/PlaybackState$Builder;IJFJ)V

    .line 901
    iget-wide v1, p0, Landroidx/media3/session/legacy/PlaybackStateCompat;->mBufferedPosition:J

    invoke-static {v0, v1, v2}, Landroidx/media3/session/legacy/PlaybackStateCompat$Api21Impl;->setBufferedPosition(Landroid/media/session/PlaybackState$Builder;J)V

    .line 902
    iget-wide v1, p0, Landroidx/media3/session/legacy/PlaybackStateCompat;->mActions:J

    invoke-static {v0, v1, v2}, Landroidx/media3/session/legacy/PlaybackStateCompat$Api21Impl;->setActions(Landroid/media/session/PlaybackState$Builder;J)V

    .line 903
    iget-object v1, p0, Landroidx/media3/session/legacy/PlaybackStateCompat;->mErrorMessage:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Landroidx/media3/session/legacy/PlaybackStateCompat$Api21Impl;->setErrorMessage(Landroid/media/session/PlaybackState$Builder;Ljava/lang/CharSequence;)V

    .line 904
    iget-object v1, p0, Landroidx/media3/session/legacy/PlaybackStateCompat;->mCustomActions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/session/legacy/PlaybackStateCompat$CustomAction;

    .line 905
    .local v2, "customAction":Landroidx/media3/session/legacy/PlaybackStateCompat$CustomAction;
    nop

    .line 906
    invoke-virtual {v2}, Landroidx/media3/session/legacy/PlaybackStateCompat$CustomAction;->getCustomAction()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/session/PlaybackState$CustomAction;

    .line 907
    .local v3, "action":Landroid/media/session/PlaybackState$CustomAction;
    if-eqz v3, :cond_0

    .line 908
    invoke-static {v0, v3}, Landroidx/media3/session/legacy/PlaybackStateCompat$Api21Impl;->addCustomAction(Landroid/media/session/PlaybackState$Builder;Landroid/media/session/PlaybackState$CustomAction;)V

    .line 910
    .end local v2    # "customAction":Landroidx/media3/session/legacy/PlaybackStateCompat$CustomAction;
    .end local v3    # "action":Landroid/media/session/PlaybackState$CustomAction;
    :cond_0
    goto :goto_0

    .line 911
    :cond_1
    iget-wide v1, p0, Landroidx/media3/session/legacy/PlaybackStateCompat;->mActiveItemId:J

    invoke-static {v0, v1, v2}, Landroidx/media3/session/legacy/PlaybackStateCompat$Api21Impl;->setActiveQueueItemId(Landroid/media/session/PlaybackState$Builder;J)V

    .line 912
    nop

    .line 913
    iget-object v1, p0, Landroidx/media3/session/legacy/PlaybackStateCompat;->mExtras:Landroid/os/Bundle;

    invoke-static {v0, v1}, Landroidx/media3/session/legacy/PlaybackStateCompat$Api22Impl;->setExtras(Landroid/media/session/PlaybackState$Builder;Landroid/os/Bundle;)V

    .line 915
    invoke-static {v0}, Landroidx/media3/session/legacy/PlaybackStateCompat$Api21Impl;->build(Landroid/media/session/PlaybackState$Builder;)Landroid/media/session/PlaybackState;

    move-result-object v1

    iput-object v1, p0, Landroidx/media3/session/legacy/PlaybackStateCompat;->mStateFwk:Landroid/media/session/PlaybackState;

    .line 917
    .end local v0    # "builder":Landroid/media/session/PlaybackState$Builder;
    :cond_2
    iget-object v0, p0, Landroidx/media3/session/legacy/PlaybackStateCompat;->mStateFwk:Landroid/media/session/PlaybackState;

    return-object v0
.end method

.method public getPosition()J
    .locals 2

    .line 696
    iget-wide v0, p0, Landroidx/media3/session/legacy/PlaybackStateCompat;->mPosition:J

    return-wide v0
.end method

.method public getState()I
    .locals 1

    .line 691
    iget v0, p0, Landroidx/media3/session/legacy/PlaybackStateCompat;->mState:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 635
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PlaybackState {"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 636
    .local v0, "bob":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroidx/media3/session/legacy/PlaybackStateCompat;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 637
    const-string v1, ", position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroidx/media3/session/legacy/PlaybackStateCompat;->mPosition:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 638
    const-string v1, ", buffered position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroidx/media3/session/legacy/PlaybackStateCompat;->mBufferedPosition:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 639
    const-string v1, ", speed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroidx/media3/session/legacy/PlaybackStateCompat;->mSpeed:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 640
    const-string v1, ", updated="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroidx/media3/session/legacy/PlaybackStateCompat;->mUpdateTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 641
    const-string v1, ", actions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroidx/media3/session/legacy/PlaybackStateCompat;->mActions:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 642
    const-string v1, ", error code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroidx/media3/session/legacy/PlaybackStateCompat;->mErrorCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 643
    const-string v1, ", error message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroidx/media3/session/legacy/PlaybackStateCompat;->mErrorMessage:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 644
    const-string v1, ", custom actions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroidx/media3/session/legacy/PlaybackStateCompat;->mCustomActions:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 645
    const-string v1, ", active item id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroidx/media3/session/legacy/PlaybackStateCompat;->mActiveItemId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 646
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 647
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 657
    iget v0, p0, Landroidx/media3/session/legacy/PlaybackStateCompat;->mState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 658
    iget-wide v0, p0, Landroidx/media3/session/legacy/PlaybackStateCompat;->mPosition:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 659
    iget v0, p0, Landroidx/media3/session/legacy/PlaybackStateCompat;->mSpeed:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 660
    iget-wide v0, p0, Landroidx/media3/session/legacy/PlaybackStateCompat;->mUpdateTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 661
    iget-wide v0, p0, Landroidx/media3/session/legacy/PlaybackStateCompat;->mBufferedPosition:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 662
    iget-wide v0, p0, Landroidx/media3/session/legacy/PlaybackStateCompat;->mActions:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 663
    iget-object v0, p0, Landroidx/media3/session/legacy/PlaybackStateCompat;->mErrorMessage:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 664
    iget-object v0, p0, Landroidx/media3/session/legacy/PlaybackStateCompat;->mCustomActions:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 665
    iget-wide v0, p0, Landroidx/media3/session/legacy/PlaybackStateCompat;->mActiveItemId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 666
    iget-object v0, p0, Landroidx/media3/session/legacy/PlaybackStateCompat;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 668
    iget v0, p0, Landroidx/media3/session/legacy/PlaybackStateCompat;->mErrorCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 669
    return-void
.end method
