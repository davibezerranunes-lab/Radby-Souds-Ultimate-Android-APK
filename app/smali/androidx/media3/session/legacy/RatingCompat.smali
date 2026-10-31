.class public final Landroidx/media3/session/legacy/RatingCompat;
.super Ljava/lang/Object;
.source "RatingCompat.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/session/legacy/RatingCompat$StarStyle;,
        Landroidx/media3/session/legacy/RatingCompat$Style;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/media3/session/legacy/RatingCompat;",
            ">;"
        }
    .end annotation
.end field

.field public static final RATING_3_STARS:I = 0x3

.field public static final RATING_4_STARS:I = 0x4

.field public static final RATING_5_STARS:I = 0x5

.field public static final RATING_HEART:I = 0x1

.field public static final RATING_NONE:I = 0x0

.field private static final RATING_NOT_RATED:F = -1.0f

.field public static final RATING_PERCENTAGE:I = 0x6

.field public static final RATING_THUMB_UP_DOWN:I = 0x2

.field private static final TAG:Ljava/lang/String; = "Rating"


# instance fields
.field private mRatingObj:Ljava/lang/Object;

.field private final mRatingStyle:I

.field private final mRatingValue:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 122
    new-instance v0, Landroidx/media3/session/legacy/RatingCompat$1;

    invoke-direct {v0}, Landroidx/media3/session/legacy/RatingCompat$1;-><init>()V

    sput-object v0, Landroidx/media3/session/legacy/RatingCompat;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IF)V
    .locals 0
    .param p1, "ratingStyle"    # I
    .param p2, "rating"    # F

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput p1, p0, Landroidx/media3/session/legacy/RatingCompat;->mRatingStyle:I

    .line 100
    iput p2, p0, Landroidx/media3/session/legacy/RatingCompat;->mRatingValue:F

    .line 101
    return-void
.end method

.method public static fromRating(Ljava/lang/Object;)Landroidx/media3/session/legacy/RatingCompat;
    .locals 3
    .param p0, "ratingObj"    # Ljava/lang/Object;

    .line 334
    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 335
    move-object v1, p0

    check-cast v1, Landroid/media/Rating;

    invoke-virtual {v1}, Landroid/media/Rating;->getRatingStyle()I

    move-result v1

    .line 337
    .local v1, "ratingStyle":I
    move-object v2, p0

    check-cast v2, Landroid/media/Rating;

    invoke-virtual {v2}, Landroid/media/Rating;->isRated()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 338
    packed-switch v1, :pswitch_data_0

    .line 354
    return-object v0

    .line 351
    :pswitch_0
    move-object v0, p0

    check-cast v0, Landroid/media/Rating;

    invoke-virtual {v0}, Landroid/media/Rating;->getPercentRating()F

    move-result v0

    invoke-static {v0}, Landroidx/media3/session/legacy/RatingCompat;->newPercentageRating(F)Landroidx/media3/session/legacy/RatingCompat;

    move-result-object v0

    .line 352
    .local v0, "rating":Landroidx/media3/session/legacy/RatingCompat;
    goto :goto_0

    .line 348
    .end local v0    # "rating":Landroidx/media3/session/legacy/RatingCompat;
    :pswitch_1
    move-object v0, p0

    check-cast v0, Landroid/media/Rating;

    invoke-virtual {v0}, Landroid/media/Rating;->getStarRating()F

    move-result v0

    invoke-static {v1, v0}, Landroidx/media3/session/legacy/RatingCompat;->newStarRating(IF)Landroidx/media3/session/legacy/RatingCompat;

    move-result-object v0

    .line 349
    .restart local v0    # "rating":Landroidx/media3/session/legacy/RatingCompat;
    goto :goto_0

    .line 343
    .end local v0    # "rating":Landroidx/media3/session/legacy/RatingCompat;
    :pswitch_2
    move-object v0, p0

    check-cast v0, Landroid/media/Rating;

    invoke-virtual {v0}, Landroid/media/Rating;->isThumbUp()Z

    move-result v0

    invoke-static {v0}, Landroidx/media3/session/legacy/RatingCompat;->newThumbRating(Z)Landroidx/media3/session/legacy/RatingCompat;

    move-result-object v0

    .line 344
    .restart local v0    # "rating":Landroidx/media3/session/legacy/RatingCompat;
    goto :goto_0

    .line 340
    .end local v0    # "rating":Landroidx/media3/session/legacy/RatingCompat;
    :pswitch_3
    move-object v0, p0

    check-cast v0, Landroid/media/Rating;

    invoke-virtual {v0}, Landroid/media/Rating;->hasHeart()Z

    move-result v0

    invoke-static {v0}, Landroidx/media3/session/legacy/RatingCompat;->newHeartRating(Z)Landroidx/media3/session/legacy/RatingCompat;

    move-result-object v0

    .line 341
    .restart local v0    # "rating":Landroidx/media3/session/legacy/RatingCompat;
    goto :goto_0

    .line 357
    .end local v0    # "rating":Landroidx/media3/session/legacy/RatingCompat;
    :cond_0
    invoke-static {v1}, Landroidx/media3/session/legacy/RatingCompat;->newUnratedRating(I)Landroidx/media3/session/legacy/RatingCompat;

    move-result-object v0

    .line 359
    .restart local v0    # "rating":Landroidx/media3/session/legacy/RatingCompat;
    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/session/legacy/RatingCompat;

    iput-object p0, v2, Landroidx/media3/session/legacy/RatingCompat;->mRatingObj:Ljava/lang/Object;

    .line 360
    return-object v0

    .line 362
    .end local v0    # "rating":Landroidx/media3/session/legacy/RatingCompat;
    .end local v1    # "ratingStyle":I
    :cond_1
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static newHeartRating(Z)Landroidx/media3/session/legacy/RatingCompat;
    .locals 3
    .param p0, "hasHeart"    # Z

    .line 173
    new-instance v0, Landroidx/media3/session/legacy/RatingCompat;

    if-eqz p0, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Landroidx/media3/session/legacy/RatingCompat;-><init>(IF)V

    return-object v0
.end method

.method public static newPercentageRating(F)Landroidx/media3/session/legacy/RatingCompat;
    .locals 2
    .param p0, "percent"    # F

    .line 233
    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-ltz v0, :cond_1

    const/high16 v0, 0x42c80000    # 100.0f

    cmpl-float v0, p0, v0

    if-lez v0, :cond_0

    goto :goto_0

    .line 237
    :cond_0
    new-instance v0, Landroidx/media3/session/legacy/RatingCompat;

    const/4 v1, 0x6

    invoke-direct {v0, v1, p0}, Landroidx/media3/session/legacy/RatingCompat;-><init>(IF)V

    return-object v0

    .line 234
    :cond_1
    :goto_0
    const-string v0, "Rating"

    const-string v1, "Invalid percentage-based rating value"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    const/4 v0, 0x0

    return-object v0
.end method

.method public static newStarRating(IF)Landroidx/media3/session/legacy/RatingCompat;
    .locals 5
    .param p0, "starRatingStyle"    # I
    .param p1, "starRating"    # F

    .line 202
    const/high16 v0, -0x40800000    # -1.0f

    .line 203
    .local v0, "maxRating":F
    const/4 v1, 0x0

    const-string v2, "Rating"

    packed-switch p0, :pswitch_data_0

    .line 214
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid rating style ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") for a star rating"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    return-object v1

    .line 211
    :pswitch_0
    const/high16 v0, 0x40a00000    # 5.0f

    .line 212
    goto :goto_0

    .line 208
    :pswitch_1
    const/high16 v0, 0x40800000    # 4.0f

    .line 209
    goto :goto_0

    .line 205
    :pswitch_2
    const/high16 v0, 0x40400000    # 3.0f

    .line 206
    nop

    .line 217
    :goto_0
    const/4 v3, 0x0

    cmpg-float v3, p1, v3

    if-ltz v3, :cond_1

    cmpl-float v3, p1, v0

    if-lez v3, :cond_0

    goto :goto_1

    .line 221
    :cond_0
    new-instance v1, Landroidx/media3/session/legacy/RatingCompat;

    invoke-direct {v1, p0, p1}, Landroidx/media3/session/legacy/RatingCompat;-><init>(IF)V

    return-object v1

    .line 218
    :cond_1
    :goto_1
    const-string v3, "Trying to set out of range star-based rating"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    return-object v1

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static newThumbRating(Z)Landroidx/media3/session/legacy/RatingCompat;
    .locals 3
    .param p0, "thumbIsUp"    # Z

    .line 184
    new-instance v0, Landroidx/media3/session/legacy/RatingCompat;

    if-eqz p0, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x2

    invoke-direct {v0, v2, v1}, Landroidx/media3/session/legacy/RatingCompat;-><init>(IF)V

    return-object v0
.end method

.method public static newUnratedRating(I)Landroidx/media3/session/legacy/RatingCompat;
    .locals 2
    .param p0, "ratingStyle"    # I

    .line 152
    packed-switch p0, :pswitch_data_0

    .line 161
    const/4 v0, 0x0

    return-object v0

    .line 159
    :pswitch_0
    new-instance v0, Landroidx/media3/session/legacy/RatingCompat;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-direct {v0, p0, v1}, Landroidx/media3/session/legacy/RatingCompat;-><init>(IF)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 113
    iget v0, p0, Landroidx/media3/session/legacy/RatingCompat;->mRatingStyle:I

    return v0
.end method

.method public getPercentRating()F
    .locals 2

    .line 316
    iget v0, p0, Landroidx/media3/session/legacy/RatingCompat;->mRatingStyle:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Landroidx/media3/session/legacy/RatingCompat;->isRated()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 319
    :cond_0
    iget v0, p0, Landroidx/media3/session/legacy/RatingCompat;->mRatingValue:F

    return v0

    .line 317
    :cond_1
    :goto_0
    const/high16 v0, -0x40800000    # -1.0f

    return v0
.end method

.method public getRating()Ljava/lang/Object;
    .locals 2

    .line 375
    iget-object v0, p0, Landroidx/media3/session/legacy/RatingCompat;->mRatingObj:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 376
    invoke-virtual {p0}, Landroidx/media3/session/legacy/RatingCompat;->isRated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 377
    iget v0, p0, Landroidx/media3/session/legacy/RatingCompat;->mRatingStyle:I

    packed-switch v0, :pswitch_data_0

    .line 393
    const/4 v0, 0x0

    return-object v0

    .line 390
    :pswitch_0
    invoke-virtual {p0}, Landroidx/media3/session/legacy/RatingCompat;->getPercentRating()F

    move-result v0

    invoke-static {v0}, Landroid/media/Rating;->newPercentageRating(F)Landroid/media/Rating;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/session/legacy/RatingCompat;->mRatingObj:Ljava/lang/Object;

    .line 391
    goto :goto_0

    .line 387
    :pswitch_1
    iget v0, p0, Landroidx/media3/session/legacy/RatingCompat;->mRatingStyle:I

    invoke-virtual {p0}, Landroidx/media3/session/legacy/RatingCompat;->getStarRating()F

    move-result v1

    invoke-static {v0, v1}, Landroid/media/Rating;->newStarRating(IF)Landroid/media/Rating;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/session/legacy/RatingCompat;->mRatingObj:Ljava/lang/Object;

    .line 388
    goto :goto_0

    .line 382
    :pswitch_2
    invoke-virtual {p0}, Landroidx/media3/session/legacy/RatingCompat;->isThumbUp()Z

    move-result v0

    invoke-static {v0}, Landroid/media/Rating;->newThumbRating(Z)Landroid/media/Rating;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/session/legacy/RatingCompat;->mRatingObj:Ljava/lang/Object;

    .line 383
    goto :goto_0

    .line 379
    :pswitch_3
    invoke-virtual {p0}, Landroidx/media3/session/legacy/RatingCompat;->hasHeart()Z

    move-result v0

    invoke-static {v0}, Landroid/media/Rating;->newHeartRating(Z)Landroid/media/Rating;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/session/legacy/RatingCompat;->mRatingObj:Ljava/lang/Object;

    .line 380
    goto :goto_0

    .line 396
    :cond_0
    iget v0, p0, Landroidx/media3/session/legacy/RatingCompat;->mRatingStyle:I

    invoke-static {v0}, Landroid/media/Rating;->newUnratedRating(I)Landroid/media/Rating;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/session/legacy/RatingCompat;->mRatingObj:Ljava/lang/Object;

    .line 399
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/media3/session/legacy/RatingCompat;->mRatingObj:Ljava/lang/Object;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getRatingStyle()I
    .locals 1

    .line 258
    iget v0, p0, Landroidx/media3/session/legacy/RatingCompat;->mRatingStyle:I

    return v0
.end method

.method public getStarRating()F
    .locals 1

    .line 296
    iget v0, p0, Landroidx/media3/session/legacy/RatingCompat;->mRatingStyle:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 300
    :pswitch_0
    invoke-virtual {p0}, Landroidx/media3/session/legacy/RatingCompat;->isRated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 301
    iget v0, p0, Landroidx/media3/session/legacy/RatingCompat;->mRatingValue:F

    return v0

    .line 305
    :cond_0
    :goto_0
    const/high16 v0, -0x40800000    # -1.0f

    return v0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public hasHeart()Z
    .locals 4

    .line 268
    iget v0, p0, Landroidx/media3/session/legacy/RatingCompat;->mRatingStyle:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    .line 269
    return v1

    .line 271
    :cond_0
    iget v0, p0, Landroidx/media3/session/legacy/RatingCompat;->mRatingValue:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v3

    if-nez v0, :cond_1

    move v1, v2

    :cond_1
    return v1
.end method

.method public isRated()Z
    .locals 2

    .line 247
    iget v0, p0, Landroidx/media3/session/legacy/RatingCompat;->mRatingValue:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isThumbUp()Z
    .locals 3

    .line 282
    iget v0, p0, Landroidx/media3/session/legacy/RatingCompat;->mRatingStyle:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 283
    return v2

    .line 285
    :cond_0
    iget v0, p0, Landroidx/media3/session/legacy/RatingCompat;->mRatingValue:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Rating:style="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/media3/session/legacy/RatingCompat;->mRatingStyle:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " rating="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 108
    iget v1, p0, Landroidx/media3/session/legacy/RatingCompat;->mRatingValue:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    const-string/jumbo v1, "unrated"

    goto :goto_0

    :cond_0
    iget v1, p0, Landroidx/media3/session/legacy/RatingCompat;->mRatingValue:F

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 105
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 118
    iget v0, p0, Landroidx/media3/session/legacy/RatingCompat;->mRatingStyle:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 119
    iget v0, p0, Landroidx/media3/session/legacy/RatingCompat;->mRatingValue:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 120
    return-void
.end method
