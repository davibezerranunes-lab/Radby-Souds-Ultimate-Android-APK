.class public final Lcom/muzk/app/playback/PlayerUiState;
.super Ljava/lang/Object;
.source "PlayerViewModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008-\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u00a5\u0001\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0005\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0001\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u000b\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000f\u0012\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u0005\u0012\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\t\u0010(\u001a\u00020\u0003H\u00c6\u0003J\t\u0010)\u001a\u00020\u0005H\u00c6\u0003J\t\u0010*\u001a\u00020\u0005H\u00c6\u0003J\u000b\u0010+\u001a\u0004\u0018\u00010\u0001H\u00c6\u0003J\t\u0010,\u001a\u00020\u0003H\u00c6\u0003J\t\u0010-\u001a\u00020\u0003H\u00c6\u0003J\t\u0010.\u001a\u00020\u000bH\u00c6\u0003J\t\u0010/\u001a\u00020\u000bH\u00c6\u0003J\t\u00100\u001a\u00020\u0003H\u00c6\u0003J\t\u00101\u001a\u00020\u000fH\u00c6\u0003J\u000b\u00102\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\t\u00103\u001a\u00020\u0003H\u00c6\u0003J\u000b\u00104\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\t\u00105\u001a\u00020\u0005H\u00c6\u0003J\u000b\u00106\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u00a7\u0001\u00107\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00052\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00032\u0008\u0008\u0002\u0010\t\u001a\u00020\u00032\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\r\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000f2\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00052\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u00032\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00052\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u00052\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0005H\u00c6\u0001J\u0013\u00108\u001a\u00020\u00032\u0008\u00109\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010:\u001a\u00020\u000fH\u00d6\u0001J\t\u0010;\u001a\u00020\u0005H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u001aR\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u001aR\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0001\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u001dR\u0011\u0010\u0008\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\u0018R\u0011\u0010\t\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\u0018R\u0011\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u001fR\u0011\u0010\u000c\u001a\u00020\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008 \u0010\u001fR\u0011\u0010\r\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008!\u0010\u0018R\u0011\u0010\u000e\u001a\u00020\u000f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\"\u0010#R\u0013\u0010\u0010\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008$\u0010\u001aR\u0011\u0010\u0011\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0018R\u0013\u0010\u0012\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008%\u0010\u001aR\u0011\u0010\u0013\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008&\u0010\u001aR\u0013\u0010\u0014\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\'\u0010\u001a\u00a8\u0006<"
    }
    d2 = {
        "Lcom/muzk/app/playback/PlayerUiState;",
        "",
        "hasMedia",
        "",
        "title",
        "",
        "artist",
        "cover",
        "isPlaying",
        "isBuffering",
        "positionMs",
        "",
        "durationMs",
        "shuffle",
        "repeatMode",
        "",
        "mediaId",
        "isRemote",
        "source",
        "album",
        "error",
        "<init>",
        "(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZZJJZILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "getHasMedia",
        "()Z",
        "getTitle",
        "()Ljava/lang/String;",
        "getArtist",
        "getCover",
        "()Ljava/lang/Object;",
        "getPositionMs",
        "()J",
        "getDurationMs",
        "getShuffle",
        "getRepeatMode",
        "()I",
        "getMediaId",
        "getSource",
        "getAlbum",
        "getError",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "component10",
        "component11",
        "component12",
        "component13",
        "component14",
        "component15",
        "copy",
        "equals",
        "other",
        "hashCode",
        "toString",
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


# instance fields
.field private final album:Ljava/lang/String;

.field private final artist:Ljava/lang/String;

.field private final cover:Ljava/lang/Object;

.field private final durationMs:J

.field private final error:Ljava/lang/String;

.field private final hasMedia:Z

.field private final isBuffering:Z

.field private final isPlaying:Z

.field private final isRemote:Z

.field private final mediaId:Ljava/lang/String;

.field private final positionMs:J

.field private final repeatMode:I

.field private final shuffle:Z

.field private final source:Ljava/lang/String;

.field private final title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 20

    move-object/from16 v0, p0

    const/16 v18, 0x7fff

    const/16 v19, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-direct/range {v0 .. v19}, Lcom/muzk/app/playback/PlayerUiState;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZZJJZILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZZJJZILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 16
    .param p1, "hasMedia"    # Z
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "artist"    # Ljava/lang/String;
    .param p4, "cover"    # Ljava/lang/Object;
    .param p5, "isPlaying"    # Z
    .param p6, "isBuffering"    # Z
    .param p7, "positionMs"    # J
    .param p9, "durationMs"    # J
    .param p11, "shuffle"    # Z
    .param p12, "repeatMode"    # I
    .param p13, "mediaId"    # Ljava/lang/String;
    .param p14, "isRemote"    # Z
    .param p15, "source"    # Ljava/lang/String;
    .param p16, "album"    # Ljava/lang/String;
    .param p17, "error"    # Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p16

    const-string v4, "title"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "artist"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "album"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 23
    move/from16 v4, p1

    iput-boolean v4, v0, Lcom/muzk/app/playback/PlayerUiState;->hasMedia:Z

    .line 24
    iput-object v1, v0, Lcom/muzk/app/playback/PlayerUiState;->title:Ljava/lang/String;

    .line 25
    iput-object v2, v0, Lcom/muzk/app/playback/PlayerUiState;->artist:Ljava/lang/String;

    .line 26
    move-object/from16 v5, p4

    iput-object v5, v0, Lcom/muzk/app/playback/PlayerUiState;->cover:Ljava/lang/Object;

    .line 27
    move/from16 v6, p5

    iput-boolean v6, v0, Lcom/muzk/app/playback/PlayerUiState;->isPlaying:Z

    .line 28
    move/from16 v7, p6

    iput-boolean v7, v0, Lcom/muzk/app/playback/PlayerUiState;->isBuffering:Z

    .line 29
    move-wide/from16 v8, p7

    iput-wide v8, v0, Lcom/muzk/app/playback/PlayerUiState;->positionMs:J

    .line 30
    move-wide/from16 v10, p9

    iput-wide v10, v0, Lcom/muzk/app/playback/PlayerUiState;->durationMs:J

    .line 31
    move/from16 v12, p11

    iput-boolean v12, v0, Lcom/muzk/app/playback/PlayerUiState;->shuffle:Z

    .line 32
    move/from16 v13, p12

    iput v13, v0, Lcom/muzk/app/playback/PlayerUiState;->repeatMode:I

    .line 33
    move-object/from16 v14, p13

    iput-object v14, v0, Lcom/muzk/app/playback/PlayerUiState;->mediaId:Ljava/lang/String;

    .line 34
    move/from16 v15, p14

    iput-boolean v15, v0, Lcom/muzk/app/playback/PlayerUiState;->isRemote:Z

    .line 36
    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/muzk/app/playback/PlayerUiState;->source:Ljava/lang/String;

    .line 37
    iput-object v3, v0, Lcom/muzk/app/playback/PlayerUiState;->album:Ljava/lang/String;

    .line 38
    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/muzk/app/playback/PlayerUiState;->error:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public synthetic constructor <init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZZJJZILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 17

    .line 22
    move/from16 v0, p18

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    .line 23
    const/4 v1, 0x0

    goto :goto_0

    .line 22
    :cond_0
    move/from16 v1, p1

    :goto_0
    and-int/lit8 v3, v0, 0x2

    const-string v4, ""

    if-eqz v3, :cond_1

    .line 24
    move-object v3, v4

    goto :goto_1

    .line 22
    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v5, v0, 0x4

    if-eqz v5, :cond_2

    .line 25
    move-object v5, v4

    goto :goto_2

    .line 22
    :cond_2
    move-object/from16 v5, p3

    :goto_2
    and-int/lit8 v6, v0, 0x8

    if-eqz v6, :cond_3

    .line 26
    const/4 v6, 0x0

    goto :goto_3

    .line 22
    :cond_3
    move-object/from16 v6, p4

    :goto_3
    and-int/lit8 v8, v0, 0x10

    if-eqz v8, :cond_4

    .line 27
    const/4 v8, 0x0

    goto :goto_4

    .line 22
    :cond_4
    move/from16 v8, p5

    :goto_4
    and-int/lit8 v9, v0, 0x20

    if-eqz v9, :cond_5

    .line 28
    const/4 v9, 0x0

    goto :goto_5

    .line 22
    :cond_5
    move/from16 v9, p6

    :goto_5
    and-int/lit8 v10, v0, 0x40

    const-wide/16 v11, 0x0

    if-eqz v10, :cond_6

    .line 29
    move-wide v13, v11

    goto :goto_6

    .line 22
    :cond_6
    move-wide/from16 v13, p7

    :goto_6
    and-int/lit16 v10, v0, 0x80

    if-eqz v10, :cond_7

    .line 30
    goto :goto_7

    .line 22
    :cond_7
    move-wide/from16 v11, p9

    :goto_7
    and-int/lit16 v10, v0, 0x100

    if-eqz v10, :cond_8

    .line 31
    const/4 v10, 0x0

    goto :goto_8

    .line 22
    :cond_8
    move/from16 v10, p11

    :goto_8
    and-int/lit16 v15, v0, 0x200

    if-eqz v15, :cond_9

    .line 32
    const/4 v15, 0x0

    goto :goto_9

    .line 22
    :cond_9
    move/from16 v15, p12

    :goto_9
    and-int/lit16 v2, v0, 0x400

    if-eqz v2, :cond_a

    .line 33
    const/4 v2, 0x0

    goto :goto_a

    .line 22
    :cond_a
    move-object/from16 v2, p13

    :goto_a
    and-int/lit16 v7, v0, 0x800

    if-eqz v7, :cond_b

    .line 34
    const/4 v7, 0x0

    goto :goto_b

    .line 22
    :cond_b
    move/from16 v7, p14

    :goto_b
    move-object/from16 p19, v4

    and-int/lit16 v4, v0, 0x1000

    if-eqz v4, :cond_c

    .line 36
    const/4 v4, 0x0

    goto :goto_c

    .line 22
    :cond_c
    move-object/from16 v4, p15

    :goto_c
    move-object/from16 v16, v4

    and-int/lit16 v4, v0, 0x2000

    if-eqz v4, :cond_d

    .line 37
    move-object/from16 v4, p19

    goto :goto_d

    .line 22
    :cond_d
    move-object/from16 v4, p16

    :goto_d
    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_e

    .line 38
    const/4 v0, 0x0

    goto :goto_e

    .line 22
    :cond_e
    move-object/from16 v0, p17

    :goto_e
    move-object/from16 p1, p0

    move/from16 p2, v1

    move-object/from16 p3, v3

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move/from16 p6, v8

    move/from16 p7, v9

    move-wide/from16 p8, v13

    move-wide/from16 p10, v11

    move/from16 p12, v10

    move/from16 p13, v15

    move-object/from16 p14, v2

    move/from16 p15, v7

    move-object/from16 p16, v16

    move-object/from16 p17, v4

    move-object/from16 p18, v0

    invoke-direct/range {p1 .. p18}, Lcom/muzk/app/playback/PlayerUiState;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZZJJZILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public static synthetic copy$default(Lcom/muzk/app/playback/PlayerUiState;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZZJJZILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/muzk/app/playback/PlayerUiState;
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p18

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-boolean v2, v0, Lcom/muzk/app/playback/PlayerUiState;->hasMedia:Z

    goto :goto_0

    :cond_0
    move/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/muzk/app/playback/PlayerUiState;->title:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/muzk/app/playback/PlayerUiState;->artist:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/muzk/app/playback/PlayerUiState;->cover:Ljava/lang/Object;

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-boolean v6, v0, Lcom/muzk/app/playback/PlayerUiState;->isPlaying:Z

    goto :goto_4

    :cond_4
    move/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-boolean v7, v0, Lcom/muzk/app/playback/PlayerUiState;->isBuffering:Z

    goto :goto_5

    :cond_5
    move/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-wide v8, v0, Lcom/muzk/app/playback/PlayerUiState;->positionMs:J

    goto :goto_6

    :cond_6
    move-wide/from16 v8, p7

    :goto_6
    and-int/lit16 v10, v1, 0x80

    if-eqz v10, :cond_7

    iget-wide v10, v0, Lcom/muzk/app/playback/PlayerUiState;->durationMs:J

    goto :goto_7

    :cond_7
    move-wide/from16 v10, p9

    :goto_7
    and-int/lit16 v12, v1, 0x100

    if-eqz v12, :cond_8

    iget-boolean v12, v0, Lcom/muzk/app/playback/PlayerUiState;->shuffle:Z

    goto :goto_8

    :cond_8
    move/from16 v12, p11

    :goto_8
    and-int/lit16 v13, v1, 0x200

    if-eqz v13, :cond_9

    iget v13, v0, Lcom/muzk/app/playback/PlayerUiState;->repeatMode:I

    goto :goto_9

    :cond_9
    move/from16 v13, p12

    :goto_9
    and-int/lit16 v14, v1, 0x400

    if-eqz v14, :cond_a

    iget-object v14, v0, Lcom/muzk/app/playback/PlayerUiState;->mediaId:Ljava/lang/String;

    goto :goto_a

    :cond_a
    move-object/from16 v14, p13

    :goto_a
    and-int/lit16 v15, v1, 0x800

    if-eqz v15, :cond_b

    iget-boolean v15, v0, Lcom/muzk/app/playback/PlayerUiState;->isRemote:Z

    goto :goto_b

    :cond_b
    move/from16 v15, p14

    :goto_b
    move/from16 p14, v15

    and-int/lit16 v15, v1, 0x1000

    if-eqz v15, :cond_c

    iget-object v15, v0, Lcom/muzk/app/playback/PlayerUiState;->source:Ljava/lang/String;

    goto :goto_c

    :cond_c
    move-object/from16 v15, p15

    :goto_c
    move-object/from16 p15, v15

    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_d

    iget-object v15, v0, Lcom/muzk/app/playback/PlayerUiState;->album:Ljava/lang/String;

    goto :goto_d

    :cond_d
    move-object/from16 v15, p16

    :goto_d
    and-int/lit16 v1, v1, 0x4000

    if-eqz v1, :cond_e

    iget-object v1, v0, Lcom/muzk/app/playback/PlayerUiState;->error:Ljava/lang/String;

    goto :goto_e

    :cond_e
    move-object/from16 v1, p17

    :goto_e
    move/from16 p1, v2

    move-object/from16 p2, v3

    move-object/from16 p3, v4

    move-object/from16 p4, v5

    move/from16 p5, v6

    move/from16 p6, v7

    move-wide/from16 p7, v8

    move-wide/from16 p9, v10

    move/from16 p11, v12

    move/from16 p12, v13

    move-object/from16 p13, v14

    move-object/from16 p16, v15

    move-object/from16 p17, v1

    invoke-virtual/range {p0 .. p17}, Lcom/muzk/app/playback/PlayerUiState;->copy(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZZJJZILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/muzk/app/playback/PlayerUiState;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Z
    .locals 1

    iget-boolean v0, p0, Lcom/muzk/app/playback/PlayerUiState;->hasMedia:Z

    return v0
.end method

.method public final component10()I
    .locals 1

    iget v0, p0, Lcom/muzk/app/playback/PlayerUiState;->repeatMode:I

    return v0
.end method

.method public final component11()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/muzk/app/playback/PlayerUiState;->mediaId:Ljava/lang/String;

    return-object v0
.end method

.method public final component12()Z
    .locals 1

    iget-boolean v0, p0, Lcom/muzk/app/playback/PlayerUiState;->isRemote:Z

    return v0
.end method

.method public final component13()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/muzk/app/playback/PlayerUiState;->source:Ljava/lang/String;

    return-object v0
.end method

.method public final component14()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/muzk/app/playback/PlayerUiState;->album:Ljava/lang/String;

    return-object v0
.end method

.method public final component15()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/muzk/app/playback/PlayerUiState;->error:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/muzk/app/playback/PlayerUiState;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/muzk/app/playback/PlayerUiState;->artist:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/muzk/app/playback/PlayerUiState;->cover:Ljava/lang/Object;

    return-object v0
.end method

.method public final component5()Z
    .locals 1

    iget-boolean v0, p0, Lcom/muzk/app/playback/PlayerUiState;->isPlaying:Z

    return v0
.end method

.method public final component6()Z
    .locals 1

    iget-boolean v0, p0, Lcom/muzk/app/playback/PlayerUiState;->isBuffering:Z

    return v0
.end method

.method public final component7()J
    .locals 2

    iget-wide v0, p0, Lcom/muzk/app/playback/PlayerUiState;->positionMs:J

    return-wide v0
.end method

.method public final component8()J
    .locals 2

    iget-wide v0, p0, Lcom/muzk/app/playback/PlayerUiState;->durationMs:J

    return-wide v0
.end method

.method public final component9()Z
    .locals 1

    iget-boolean v0, p0, Lcom/muzk/app/playback/PlayerUiState;->shuffle:Z

    return v0
.end method

.method public final copy(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZZJJZILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/muzk/app/playback/PlayerUiState;
    .locals 20

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    move/from16 v11, p11

    move/from16 v12, p12

    move-object/from16 v13, p13

    move/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v16, p16

    move-object/from16 v17, p17

    const-string v0, "title"

    move/from16 v18, v1

    move-object/from16 v1, p2

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "artist"

    move-object/from16 v1, p3

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "album"

    move-object/from16 v1, p16

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v19, Lcom/muzk/app/playback/PlayerUiState;

    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-direct/range {v0 .. v17}, Lcom/muzk/app/playback/PlayerUiState;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZZJJZILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v19
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/muzk/app/playback/PlayerUiState;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/muzk/app/playback/PlayerUiState;

    iget-boolean v3, p0, Lcom/muzk/app/playback/PlayerUiState;->hasMedia:Z

    iget-boolean v4, v1, Lcom/muzk/app/playback/PlayerUiState;->hasMedia:Z

    if-eq v3, v4, :cond_2

    return v2

    :cond_2
    iget-object v3, p0, Lcom/muzk/app/playback/PlayerUiState;->title:Ljava/lang/String;

    iget-object v4, v1, Lcom/muzk/app/playback/PlayerUiState;->title:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    return v2

    :cond_3
    iget-object v3, p0, Lcom/muzk/app/playback/PlayerUiState;->artist:Ljava/lang/String;

    iget-object v4, v1, Lcom/muzk/app/playback/PlayerUiState;->artist:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    return v2

    :cond_4
    iget-object v3, p0, Lcom/muzk/app/playback/PlayerUiState;->cover:Ljava/lang/Object;

    iget-object v4, v1, Lcom/muzk/app/playback/PlayerUiState;->cover:Ljava/lang/Object;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    return v2

    :cond_5
    iget-boolean v3, p0, Lcom/muzk/app/playback/PlayerUiState;->isPlaying:Z

    iget-boolean v4, v1, Lcom/muzk/app/playback/PlayerUiState;->isPlaying:Z

    if-eq v3, v4, :cond_6

    return v2

    :cond_6
    iget-boolean v3, p0, Lcom/muzk/app/playback/PlayerUiState;->isBuffering:Z

    iget-boolean v4, v1, Lcom/muzk/app/playback/PlayerUiState;->isBuffering:Z

    if-eq v3, v4, :cond_7

    return v2

    :cond_7
    iget-wide v3, p0, Lcom/muzk/app/playback/PlayerUiState;->positionMs:J

    iget-wide v5, v1, Lcom/muzk/app/playback/PlayerUiState;->positionMs:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_8

    return v2

    :cond_8
    iget-wide v3, p0, Lcom/muzk/app/playback/PlayerUiState;->durationMs:J

    iget-wide v5, v1, Lcom/muzk/app/playback/PlayerUiState;->durationMs:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_9

    return v2

    :cond_9
    iget-boolean v3, p0, Lcom/muzk/app/playback/PlayerUiState;->shuffle:Z

    iget-boolean v4, v1, Lcom/muzk/app/playback/PlayerUiState;->shuffle:Z

    if-eq v3, v4, :cond_a

    return v2

    :cond_a
    iget v3, p0, Lcom/muzk/app/playback/PlayerUiState;->repeatMode:I

    iget v4, v1, Lcom/muzk/app/playback/PlayerUiState;->repeatMode:I

    if-eq v3, v4, :cond_b

    return v2

    :cond_b
    iget-object v3, p0, Lcom/muzk/app/playback/PlayerUiState;->mediaId:Ljava/lang/String;

    iget-object v4, v1, Lcom/muzk/app/playback/PlayerUiState;->mediaId:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    return v2

    :cond_c
    iget-boolean v3, p0, Lcom/muzk/app/playback/PlayerUiState;->isRemote:Z

    iget-boolean v4, v1, Lcom/muzk/app/playback/PlayerUiState;->isRemote:Z

    if-eq v3, v4, :cond_d

    return v2

    :cond_d
    iget-object v3, p0, Lcom/muzk/app/playback/PlayerUiState;->source:Ljava/lang/String;

    iget-object v4, v1, Lcom/muzk/app/playback/PlayerUiState;->source:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    return v2

    :cond_e
    iget-object v3, p0, Lcom/muzk/app/playback/PlayerUiState;->album:Ljava/lang/String;

    iget-object v4, v1, Lcom/muzk/app/playback/PlayerUiState;->album:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    return v2

    :cond_f
    iget-object v3, p0, Lcom/muzk/app/playback/PlayerUiState;->error:Ljava/lang/String;

    iget-object v1, v1, Lcom/muzk/app/playback/PlayerUiState;->error:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v2

    :cond_10
    return v0
.end method

.method public final getAlbum()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/muzk/app/playback/PlayerUiState;->album:Ljava/lang/String;

    return-object v0
.end method

.method public final getArtist()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/muzk/app/playback/PlayerUiState;->artist:Ljava/lang/String;

    return-object v0
.end method

.method public final getCover()Ljava/lang/Object;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/muzk/app/playback/PlayerUiState;->cover:Ljava/lang/Object;

    return-object v0
.end method

.method public final getDurationMs()J
    .locals 2

    .line 30
    iget-wide v0, p0, Lcom/muzk/app/playback/PlayerUiState;->durationMs:J

    return-wide v0
.end method

.method public final getError()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/muzk/app/playback/PlayerUiState;->error:Ljava/lang/String;

    return-object v0
.end method

.method public final getHasMedia()Z
    .locals 1

    .line 23
    iget-boolean v0, p0, Lcom/muzk/app/playback/PlayerUiState;->hasMedia:Z

    return v0
.end method

.method public final getMediaId()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/muzk/app/playback/PlayerUiState;->mediaId:Ljava/lang/String;

    return-object v0
.end method

.method public final getPositionMs()J
    .locals 2

    .line 29
    iget-wide v0, p0, Lcom/muzk/app/playback/PlayerUiState;->positionMs:J

    return-wide v0
.end method

.method public final getRepeatMode()I
    .locals 1

    .line 32
    iget v0, p0, Lcom/muzk/app/playback/PlayerUiState;->repeatMode:I

    return v0
.end method

.method public final getShuffle()Z
    .locals 1

    .line 31
    iget-boolean v0, p0, Lcom/muzk/app/playback/PlayerUiState;->shuffle:Z

    return v0
.end method

.method public final getSource()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/muzk/app/playback/PlayerUiState;->source:Ljava/lang/String;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/muzk/app/playback/PlayerUiState;->title:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 6

    iget-boolean v0, p0, Lcom/muzk/app/playback/PlayerUiState;->hasMedia:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/muzk/app/playback/PlayerUiState;->title:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/muzk/app/playback/PlayerUiState;->artist:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/muzk/app/playback/PlayerUiState;->cover:Ljava/lang/Object;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/muzk/app/playback/PlayerUiState;->cover:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Lcom/muzk/app/playback/PlayerUiState;->isPlaying:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lcom/muzk/app/playback/PlayerUiState;->isBuffering:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-wide v4, p0, Lcom/muzk/app/playback/PlayerUiState;->positionMs:J

    invoke-static {v4, v5}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-wide v4, p0, Lcom/muzk/app/playback/PlayerUiState;->durationMs:J

    invoke-static {v4, v5}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Lcom/muzk/app/playback/PlayerUiState;->shuffle:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/muzk/app/playback/PlayerUiState;->repeatMode:I

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/muzk/app/playback/PlayerUiState;->mediaId:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/muzk/app/playback/PlayerUiState;->mediaId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lcom/muzk/app/playback/PlayerUiState;->isRemote:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/muzk/app/playback/PlayerUiState;->source:Ljava/lang/String;

    if-nez v2, :cond_2

    move v2, v3

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lcom/muzk/app/playback/PlayerUiState;->source:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/muzk/app/playback/PlayerUiState;->album:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/muzk/app/playback/PlayerUiState;->error:Ljava/lang/String;

    if-nez v2, :cond_3

    goto :goto_3

    :cond_3
    iget-object v2, p0, Lcom/muzk/app/playback/PlayerUiState;->error:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v0, v3

    return v0
.end method

.method public final isBuffering()Z
    .locals 1

    .line 28
    iget-boolean v0, p0, Lcom/muzk/app/playback/PlayerUiState;->isBuffering:Z

    return v0
.end method

.method public final isPlaying()Z
    .locals 1

    .line 27
    iget-boolean v0, p0, Lcom/muzk/app/playback/PlayerUiState;->isPlaying:Z

    return v0
.end method

.method public final isRemote()Z
    .locals 1

    .line 34
    iget-boolean v0, p0, Lcom/muzk/app/playback/PlayerUiState;->isRemote:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 19

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/muzk/app/playback/PlayerUiState;->hasMedia:Z

    iget-object v2, v0, Lcom/muzk/app/playback/PlayerUiState;->title:Ljava/lang/String;

    iget-object v3, v0, Lcom/muzk/app/playback/PlayerUiState;->artist:Ljava/lang/String;

    iget-object v4, v0, Lcom/muzk/app/playback/PlayerUiState;->cover:Ljava/lang/Object;

    iget-boolean v5, v0, Lcom/muzk/app/playback/PlayerUiState;->isPlaying:Z

    iget-boolean v6, v0, Lcom/muzk/app/playback/PlayerUiState;->isBuffering:Z

    iget-wide v7, v0, Lcom/muzk/app/playback/PlayerUiState;->positionMs:J

    iget-wide v9, v0, Lcom/muzk/app/playback/PlayerUiState;->durationMs:J

    iget-boolean v11, v0, Lcom/muzk/app/playback/PlayerUiState;->shuffle:Z

    iget v12, v0, Lcom/muzk/app/playback/PlayerUiState;->repeatMode:I

    iget-object v13, v0, Lcom/muzk/app/playback/PlayerUiState;->mediaId:Ljava/lang/String;

    iget-boolean v14, v0, Lcom/muzk/app/playback/PlayerUiState;->isRemote:Z

    iget-object v15, v0, Lcom/muzk/app/playback/PlayerUiState;->source:Ljava/lang/String;

    move-object/from16 v16, v15

    iget-object v15, v0, Lcom/muzk/app/playback/PlayerUiState;->album:Ljava/lang/String;

    move-object/from16 v17, v15

    iget-object v15, v0, Lcom/muzk/app/playback/PlayerUiState;->error:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v15

    const-string v15, "PlayerUiState(hasMedia="

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", artist="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cover="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isPlaying="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isBuffering="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", positionMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", durationMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", shuffle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", repeatMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mediaId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isRemote="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", source="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", album="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
