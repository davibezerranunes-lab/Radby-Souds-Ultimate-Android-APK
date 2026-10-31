.class final Landroidx/media3/common/util/GlProgram$Uniform;
.super Ljava/lang/Object;
.source "GlProgram.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/common/util/GlProgram;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Uniform"
.end annotation


# instance fields
.field private final floatValue:[F

.field private final intValue:[I

.field private final location:I

.field public final name:Ljava/lang/String;

.field private texIdValue:I

.field private texUnitIndex:I

.field private final type:I


# direct methods
.method private constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "location"    # I
    .param p3, "type"    # I

    .line 369
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 370
    iput-object p1, p0, Landroidx/media3/common/util/GlProgram$Uniform;->name:Ljava/lang/String;

    .line 371
    iput p2, p0, Landroidx/media3/common/util/GlProgram$Uniform;->location:I

    .line 372
    iput p3, p0, Landroidx/media3/common/util/GlProgram$Uniform;->type:I

    .line 373
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Landroidx/media3/common/util/GlProgram$Uniform;->floatValue:[F

    .line 374
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Landroidx/media3/common/util/GlProgram$Uniform;->intValue:[I

    .line 375
    return-void
.end method

.method public static create(II)Landroidx/media3/common/util/GlProgram$Uniform;
    .locals 16
    .param p0, "programId"    # I
    .param p1, "index"    # I

    .line 333
    move/from16 v11, p0

    const/4 v0, 0x1

    new-array v12, v0, [I

    .line 334
    .local v12, "length":[I
    const v1, 0x8b87

    const/4 v13, 0x0

    invoke-static {v11, v1, v12, v13}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 337
    new-array v14, v0, [I

    .line 338
    .local v14, "type":[I
    aget v1, v12, v13

    new-array v15, v1, [B

    .line 340
    .local v15, "nameBytes":[B
    aget v2, v12, v13

    new-array v3, v0, [I

    new-array v5, v0, [I

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move/from16 v0, p0

    move/from16 v1, p1

    move-object v7, v14

    move-object v9, v15

    invoke-static/range {v0 .. v10}, Landroid/opengl/GLES20;->glGetActiveUniform(III[II[II[II[BI)V

    .line 352
    new-instance v0, Ljava/lang/String;

    invoke-static {v15}, Landroidx/media3/common/util/GlProgram;->access$000([B)I

    move-result v1

    invoke-direct {v0, v15, v13, v1}, Ljava/lang/String;-><init>([BII)V

    .line 353
    .local v0, "name":Ljava/lang/String;
    invoke-static {v11, v0}, Landroidx/media3/common/util/GlProgram;->access$200(ILjava/lang/String;)I

    move-result v1

    .line 355
    .local v1, "location":I
    new-instance v2, Landroidx/media3/common/util/GlProgram$Uniform;

    aget v3, v14, v13

    invoke-direct {v2, v0, v1, v3}, Landroidx/media3/common/util/GlProgram$Uniform;-><init>(Ljava/lang/String;II)V

    return-object v2
.end method


# virtual methods
.method public bind(Z)V
    .locals 4
    .param p1, "externalTexturesRequireNearestSampling"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/util/GlUtil$GlException;
        }
    .end annotation

    .line 420
    iget v0, p0, Landroidx/media3/common/util/GlProgram$Uniform;->type:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    sparse-switch v0, :sswitch_data_0

    .line 483
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected uniform type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroidx/media3/common/util/GlProgram$Uniform;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 466
    :sswitch_0
    iget v0, p0, Landroidx/media3/common/util/GlProgram$Uniform;->texIdValue:I

    if-eqz v0, :cond_3

    .line 469
    const v0, 0x84c0

    iget v1, p0, Landroidx/media3/common/util/GlProgram$Uniform;->texUnitIndex:I

    add-int/2addr v1, v0

    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 470
    invoke-static {}, Landroidx/media3/common/util/GlUtil;->checkGlError()V

    .line 472
    iget v0, p0, Landroidx/media3/common/util/GlProgram$Uniform;->type:I

    const v1, 0x8b5e    # 4.9996E-41f

    if-ne v0, v1, :cond_0

    .line 473
    const/16 v0, 0xde1

    goto :goto_0

    .line 474
    :cond_0
    const v0, 0x8d65

    :goto_0
    iget v2, p0, Landroidx/media3/common/util/GlProgram$Uniform;->texIdValue:I

    .line 476
    iget v3, p0, Landroidx/media3/common/util/GlProgram$Uniform;->type:I

    if-eq v3, v1, :cond_2

    if-nez p1, :cond_1

    goto :goto_1

    .line 478
    :cond_1
    const/16 v1, 0x2600

    goto :goto_2

    .line 477
    :cond_2
    :goto_1
    const/16 v1, 0x2601

    .line 471
    :goto_2
    invoke-static {v0, v2, v1}, Landroidx/media3/common/util/GlUtil;->bindTexture(III)V

    .line 479
    iget v0, p0, Landroidx/media3/common/util/GlProgram$Uniform;->location:I

    iget v1, p0, Landroidx/media3/common/util/GlProgram$Uniform;->texUnitIndex:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 480
    invoke-static {}, Landroidx/media3/common/util/GlUtil;->checkGlError()V

    .line 481
    goto/16 :goto_3

    .line 467
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No call to setSamplerTexId() before bind."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 459
    :sswitch_1
    iget v0, p0, Landroidx/media3/common/util/GlProgram$Uniform;->location:I

    iget-object v3, p0, Landroidx/media3/common/util/GlProgram$Uniform;->floatValue:[F

    invoke-static {v0, v1, v2, v3, v2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 461
    invoke-static {}, Landroidx/media3/common/util/GlUtil;->checkGlError()V

    .line 462
    goto :goto_3

    .line 454
    :sswitch_2
    iget v0, p0, Landroidx/media3/common/util/GlProgram$Uniform;->location:I

    iget-object v3, p0, Landroidx/media3/common/util/GlProgram$Uniform;->floatValue:[F

    invoke-static {v0, v1, v2, v3, v2}, Landroid/opengl/GLES20;->glUniformMatrix3fv(IIZ[FI)V

    .line 456
    invoke-static {}, Landroidx/media3/common/util/GlUtil;->checkGlError()V

    .line 457
    goto :goto_3

    .line 434
    :sswitch_3
    iget v0, p0, Landroidx/media3/common/util/GlProgram$Uniform;->location:I

    iget-object v3, p0, Landroidx/media3/common/util/GlProgram$Uniform;->intValue:[I

    invoke-static {v0, v1, v3, v2}, Landroid/opengl/GLES20;->glUniform4iv(II[II)V

    .line 435
    invoke-static {}, Landroidx/media3/common/util/GlUtil;->checkGlError()V

    .line 436
    goto :goto_3

    .line 430
    :sswitch_4
    iget v0, p0, Landroidx/media3/common/util/GlProgram$Uniform;->location:I

    iget-object v3, p0, Landroidx/media3/common/util/GlProgram$Uniform;->intValue:[I

    invoke-static {v0, v1, v3, v2}, Landroid/opengl/GLES20;->glUniform3iv(II[II)V

    .line 431
    invoke-static {}, Landroidx/media3/common/util/GlUtil;->checkGlError()V

    .line 432
    goto :goto_3

    .line 426
    :sswitch_5
    iget v0, p0, Landroidx/media3/common/util/GlProgram$Uniform;->location:I

    iget-object v3, p0, Landroidx/media3/common/util/GlProgram$Uniform;->intValue:[I

    invoke-static {v0, v1, v3, v2}, Landroid/opengl/GLES20;->glUniform2iv(II[II)V

    .line 427
    invoke-static {}, Landroidx/media3/common/util/GlUtil;->checkGlError()V

    .line 428
    goto :goto_3

    .line 450
    :sswitch_6
    iget v0, p0, Landroidx/media3/common/util/GlProgram$Uniform;->location:I

    iget-object v3, p0, Landroidx/media3/common/util/GlProgram$Uniform;->floatValue:[F

    invoke-static {v0, v1, v3, v2}, Landroid/opengl/GLES20;->glUniform4fv(II[FI)V

    .line 451
    invoke-static {}, Landroidx/media3/common/util/GlUtil;->checkGlError()V

    .line 452
    goto :goto_3

    .line 446
    :sswitch_7
    iget v0, p0, Landroidx/media3/common/util/GlProgram$Uniform;->location:I

    iget-object v3, p0, Landroidx/media3/common/util/GlProgram$Uniform;->floatValue:[F

    invoke-static {v0, v1, v3, v2}, Landroid/opengl/GLES20;->glUniform3fv(II[FI)V

    .line 447
    invoke-static {}, Landroidx/media3/common/util/GlUtil;->checkGlError()V

    .line 448
    goto :goto_3

    .line 442
    :sswitch_8
    iget v0, p0, Landroidx/media3/common/util/GlProgram$Uniform;->location:I

    iget-object v3, p0, Landroidx/media3/common/util/GlProgram$Uniform;->floatValue:[F

    invoke-static {v0, v1, v3, v2}, Landroid/opengl/GLES20;->glUniform2fv(II[FI)V

    .line 443
    invoke-static {}, Landroidx/media3/common/util/GlUtil;->checkGlError()V

    .line 444
    goto :goto_3

    .line 438
    :sswitch_9
    iget v0, p0, Landroidx/media3/common/util/GlProgram$Uniform;->location:I

    iget-object v3, p0, Landroidx/media3/common/util/GlProgram$Uniform;->floatValue:[F

    invoke-static {v0, v1, v3, v2}, Landroid/opengl/GLES20;->glUniform1fv(II[FI)V

    .line 439
    invoke-static {}, Landroidx/media3/common/util/GlUtil;->checkGlError()V

    .line 440
    goto :goto_3

    .line 422
    :sswitch_a
    iget v0, p0, Landroidx/media3/common/util/GlProgram$Uniform;->location:I

    iget-object v3, p0, Landroidx/media3/common/util/GlProgram$Uniform;->intValue:[I

    invoke-static {v0, v1, v3, v2}, Landroid/opengl/GLES20;->glUniform1iv(II[II)V

    .line 423
    invoke-static {}, Landroidx/media3/common/util/GlUtil;->checkGlError()V

    .line 424
    nop

    .line 485
    :goto_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1404 -> :sswitch_a
        0x1406 -> :sswitch_9
        0x8b50 -> :sswitch_8
        0x8b51 -> :sswitch_7
        0x8b52 -> :sswitch_6
        0x8b53 -> :sswitch_5
        0x8b54 -> :sswitch_4
        0x8b55 -> :sswitch_3
        0x8b5b -> :sswitch_2
        0x8b5c -> :sswitch_1
        0x8b5e -> :sswitch_0
        0x8be7 -> :sswitch_0
        0x8d66 -> :sswitch_0
    .end sparse-switch
.end method

.method public setFloat(F)V
    .locals 2
    .param p1, "value"    # F

    .line 401
    iget-object v0, p0, Landroidx/media3/common/util/GlProgram$Uniform;->floatValue:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 402
    return-void
.end method

.method public setFloats([F)V
    .locals 3
    .param p1, "value"    # [F

    .line 406
    iget-object v0, p0, Landroidx/media3/common/util/GlProgram$Uniform;->floatValue:[F

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 407
    return-void
.end method

.method public setInt(I)V
    .locals 2
    .param p1, "value"    # I

    .line 391
    iget-object v0, p0, Landroidx/media3/common/util/GlProgram$Uniform;->intValue:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 392
    return-void
.end method

.method public setInts([I)V
    .locals 3
    .param p1, "value"    # [I

    .line 396
    iget-object v0, p0, Landroidx/media3/common/util/GlProgram$Uniform;->intValue:[I

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 397
    return-void
.end method

.method public setSamplerTexId(II)V
    .locals 0
    .param p1, "texId"    # I
    .param p2, "texUnitIndex"    # I

    .line 385
    iput p1, p0, Landroidx/media3/common/util/GlProgram$Uniform;->texIdValue:I

    .line 386
    iput p2, p0, Landroidx/media3/common/util/GlProgram$Uniform;->texUnitIndex:I

    .line 387
    return-void
.end method
