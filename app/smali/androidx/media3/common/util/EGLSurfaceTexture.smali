.class public final Landroidx/media3/common/util/EGLSurfaceTexture;
.super Ljava/lang/Object;
.source "EGLSurfaceTexture.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/common/util/EGLSurfaceTexture$TextureImageListener;,
        Landroidx/media3/common/util/EGLSurfaceTexture$SecureMode;
    }
.end annotation


# static fields
.field private static final EGL_CONFIG_ATTRIBUTES:[I

.field private static final EGL_PROTECTED_CONTENT_EXT:I = 0x32c0

.field private static final EGL_SURFACE_HEIGHT:I = 0x1

.field private static final EGL_SURFACE_WIDTH:I = 0x1

.field public static final SECURE_MODE_NONE:I = 0x0

.field public static final SECURE_MODE_PROTECTED_PBUFFER:I = 0x2

.field public static final SECURE_MODE_SURFACELESS_CONTEXT:I = 0x1


# instance fields
.field private final callback:Landroidx/media3/common/util/EGLSurfaceTexture$TextureImageListener;

.field private context:Landroid/opengl/EGLContext;

.field private display:Landroid/opengl/EGLDisplay;

.field private final handler:Landroid/os/Handler;

.field private surface:Landroid/opengl/EGLSurface;

.field private texture:Landroid/graphics/SurfaceTexture;

.field private final textureIdHolder:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 67
    const/16 v0, 0x11

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroidx/media3/common/util/EGLSurfaceTexture;->EGL_CONFIG_ATTRIBUTES:[I

    return-void

    :array_0
    .array-data 4
        0x3040
        0x4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3021
        0x8
        0x3025
        0x0
        0x3027
        0x3038
        0x3033
        0x4
        0x3038
    .end array-data
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;

    .line 98
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/media3/common/util/EGLSurfaceTexture;-><init>(Landroid/os/Handler;Landroidx/media3/common/util/EGLSurfaceTexture$TextureImageListener;)V

    .line 99
    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Landroidx/media3/common/util/EGLSurfaceTexture$TextureImageListener;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "callback"    # Landroidx/media3/common/util/EGLSurfaceTexture$TextureImageListener;

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-object p1, p0, Landroidx/media3/common/util/EGLSurfaceTexture;->handler:Landroid/os/Handler;

    .line 112
    iput-object p2, p0, Landroidx/media3/common/util/EGLSurfaceTexture;->callback:Landroidx/media3/common/util/EGLSurfaceTexture$TextureImageListener;

    .line 113
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Landroidx/media3/common/util/EGLSurfaceTexture;->textureIdHolder:[I

    .line 114
    return-void
.end method

.method private static chooseEGLConfig(Landroid/opengl/EGLDisplay;)Landroid/opengl/EGLConfig;
    .locals 11
    .param p0, "display"    # Landroid/opengl/EGLDisplay;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/util/GlUtil$GlException;
        }
    .end annotation

    .line 211
    const/4 v0, 0x1

    new-array v9, v0, [Landroid/opengl/EGLConfig;

    .line 212
    .local v9, "configs":[Landroid/opengl/EGLConfig;
    new-array v10, v0, [I

    .line 213
    .local v10, "numConfigs":[I
    sget-object v2, Landroidx/media3/common/util/EGLSurfaceTexture;->EGL_CONFIG_ATTRIBUTES:[I

    .line 214
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v8, 0x0

    move-object v1, p0

    move-object v4, v9

    move-object v7, v10

    invoke-static/range {v1 .. v8}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    move-result v1

    .line 223
    .local v1, "success":Z
    const/4 v2, 0x0

    if-eqz v1, :cond_0

    aget v3, v10, v2

    if-lez v3, :cond_0

    aget-object v3, v9, v2

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    .line 227
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aget v4, v10, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aget-object v5, v9, v2

    filled-new-array {v3, v4, v5}, [Ljava/lang/Object;

    move-result-object v3

    .line 225
    const-string v4, "eglChooseConfig failed: success=%b, numConfigs[0]=%d, configs[0]=%s"

    invoke-static {v4, v3}, Landroidx/media3/common/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 223
    invoke-static {v0, v3}, Landroidx/media3/common/util/GlUtil;->checkGlException(ZLjava/lang/String;)V

    .line 229
    aget-object v0, v9, v2

    return-object v0
.end method

.method private static createEGLContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;I)Landroid/opengl/EGLContext;
    .locals 5
    .param p0, "display"    # Landroid/opengl/EGLDisplay;
    .param p1, "config"    # Landroid/opengl/EGLConfig;
    .param p2, "secureMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/util/GlUtil$GlException;
        }
    .end annotation

    .line 235
    const/16 v0, 0x3038

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/16 v3, 0x3098

    if-nez p2, :cond_0

    .line 236
    filled-new-array {v3, v2, v0}, [I

    move-result-object v0

    .local v0, "glAttributes":[I
    goto :goto_0

    .line 238
    .end local v0    # "glAttributes":[I
    :cond_0
    const/16 v4, 0x32c0

    filled-new-array {v3, v2, v4, v1, v0}, [I

    move-result-object v0

    .line 247
    .restart local v0    # "glAttributes":[I
    :goto_0
    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    .line 248
    const/4 v3, 0x0

    invoke-static {p0, p1, v2, v0, v3}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object v2

    .line 250
    .local v2, "context":Landroid/opengl/EGLContext;
    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    const-string v3, "eglCreateContext failed"

    invoke-static {v1, v3}, Landroidx/media3/common/util/GlUtil;->checkGlException(ZLjava/lang/String;)V

    .line 251
    return-object v2
.end method

.method private static createEGLSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;I)Landroid/opengl/EGLSurface;
    .locals 4
    .param p0, "display"    # Landroid/opengl/EGLDisplay;
    .param p1, "config"    # Landroid/opengl/EGLConfig;
    .param p2, "context"    # Landroid/opengl/EGLContext;
    .param p3, "secureMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/util/GlUtil$GlException;
        }
    .end annotation

    .line 258
    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    .line 259
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    .local v0, "surface":Landroid/opengl/EGLSurface;
    goto :goto_2

    .line 262
    .end local v0    # "surface":Landroid/opengl/EGLSurface;
    :cond_0
    const/4 v1, 0x2

    if-ne p3, v1, :cond_1

    .line 263
    const/4 v1, 0x7

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    .local v1, "pbufferAttributes":[I
    goto :goto_0

    .line 274
    .end local v1    # "pbufferAttributes":[I
    :cond_1
    const/16 v1, 0x3057

    const/16 v2, 0x3056

    const/16 v3, 0x3038

    filled-new-array {v1, v0, v2, v0, v3}, [I

    move-result-object v1

    .line 283
    .restart local v1    # "pbufferAttributes":[I
    :goto_0
    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v2}, Landroid/opengl/EGL14;->eglCreatePbufferSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;[II)Landroid/opengl/EGLSurface;

    move-result-object v3

    .line 284
    .local v3, "surface":Landroid/opengl/EGLSurface;
    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    move v0, v2

    :goto_1
    const-string v2, "eglCreatePbufferSurface failed"

    invoke-static {v0, v2}, Landroidx/media3/common/util/GlUtil;->checkGlException(ZLjava/lang/String;)V

    move-object v0, v3

    .line 287
    .end local v1    # "pbufferAttributes":[I
    .end local v3    # "surface":Landroid/opengl/EGLSurface;
    .restart local v0    # "surface":Landroid/opengl/EGLSurface;
    :goto_2
    nop

    .line 288
    invoke-static {p0, v0, v0, p2}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result v1

    .line 289
    .local v1, "eglMadeCurrent":Z
    const-string v2, "eglMakeCurrent failed"

    invoke-static {v1, v2}, Landroidx/media3/common/util/GlUtil;->checkGlException(ZLjava/lang/String;)V

    .line 290
    return-object v0

    :array_0
    .array-data 4
        0x3057
        0x1
        0x3056
        0x1
        0x32c0
        0x1
        0x3038
    .end array-data
.end method

.method private dispatchOnFrameAvailable()V
    .locals 1

    .line 194
    iget-object v0, p0, Landroidx/media3/common/util/EGLSurfaceTexture;->callback:Landroidx/media3/common/util/EGLSurfaceTexture$TextureImageListener;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Landroidx/media3/common/util/EGLSurfaceTexture;->callback:Landroidx/media3/common/util/EGLSurfaceTexture$TextureImageListener;

    invoke-interface {v0}, Landroidx/media3/common/util/EGLSurfaceTexture$TextureImageListener;->onFrameAvailable()V

    .line 197
    :cond_0
    return-void
.end method

.method private static generateTextureIds([I)V
    .locals 2
    .param p0, "textureIdHolder"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/util/GlUtil$GlException;
        }
    .end annotation

    .line 294
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 295
    invoke-static {}, Landroidx/media3/common/util/GlUtil;->checkGlError()V

    .line 296
    return-void
.end method

.method private static getDefaultDisplay()Landroid/opengl/EGLDisplay;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/util/GlUtil$GlException;
        }
    .end annotation

    .line 200
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v1

    .line 201
    .local v1, "display":Landroid/opengl/EGLDisplay;
    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v0

    :goto_0
    const-string v4, "eglGetDisplay failed"

    invoke-static {v3, v4}, Landroidx/media3/common/util/GlUtil;->checkGlException(ZLjava/lang/String;)V

    .line 203
    const/4 v3, 0x2

    new-array v3, v3, [I

    .line 204
    .local v3, "version":[I
    nop

    .line 205
    invoke-static {v1, v3, v0, v3, v2}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    move-result v0

    .line 206
    .local v0, "eglInitialized":Z
    const-string v2, "eglInitialize failed"

    invoke-static {v0, v2}, Landroidx/media3/common/util/GlUtil;->checkGlException(ZLjava/lang/String;)V

    .line 207
    return-object v1
.end method


# virtual methods
.method public getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 1

    .line 168
    iget-object v0, p0, Landroidx/media3/common/util/EGLSurfaceTexture;->texture:Landroid/graphics/SurfaceTexture;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method public init(I)V
    .locals 4
    .param p1, "secureMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/util/GlUtil$GlException;
        }
    .end annotation

    .line 122
    invoke-static {}, Landroidx/media3/common/util/EGLSurfaceTexture;->getDefaultDisplay()Landroid/opengl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/util/EGLSurfaceTexture;->display:Landroid/opengl/EGLDisplay;

    .line 123
    iget-object v0, p0, Landroidx/media3/common/util/EGLSurfaceTexture;->display:Landroid/opengl/EGLDisplay;

    invoke-static {v0}, Landroidx/media3/common/util/EGLSurfaceTexture;->chooseEGLConfig(Landroid/opengl/EGLDisplay;)Landroid/opengl/EGLConfig;

    move-result-object v0

    .line 124
    .local v0, "config":Landroid/opengl/EGLConfig;
    iget-object v1, p0, Landroidx/media3/common/util/EGLSurfaceTexture;->display:Landroid/opengl/EGLDisplay;

    invoke-static {v1, v0, p1}, Landroidx/media3/common/util/EGLSurfaceTexture;->createEGLContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;I)Landroid/opengl/EGLContext;

    move-result-object v1

    iput-object v1, p0, Landroidx/media3/common/util/EGLSurfaceTexture;->context:Landroid/opengl/EGLContext;

    .line 125
    iget-object v1, p0, Landroidx/media3/common/util/EGLSurfaceTexture;->display:Landroid/opengl/EGLDisplay;

    iget-object v2, p0, Landroidx/media3/common/util/EGLSurfaceTexture;->context:Landroid/opengl/EGLContext;

    invoke-static {v1, v0, v2, p1}, Landroidx/media3/common/util/EGLSurfaceTexture;->createEGLSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;I)Landroid/opengl/EGLSurface;

    move-result-object v1

    iput-object v1, p0, Landroidx/media3/common/util/EGLSurfaceTexture;->surface:Landroid/opengl/EGLSurface;

    .line 126
    iget-object v1, p0, Landroidx/media3/common/util/EGLSurfaceTexture;->textureIdHolder:[I

    invoke-static {v1}, Landroidx/media3/common/util/EGLSurfaceTexture;->generateTextureIds([I)V

    .line 127
    new-instance v1, Landroid/graphics/SurfaceTexture;

    iget-object v2, p0, Landroidx/media3/common/util/EGLSurfaceTexture;->textureIdHolder:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-direct {v1, v2}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v1, p0, Landroidx/media3/common/util/EGLSurfaceTexture;->texture:Landroid/graphics/SurfaceTexture;

    .line 128
    iget-object v1, p0, Landroidx/media3/common/util/EGLSurfaceTexture;->texture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 129
    return-void
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 1
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .line 175
    iget-object v0, p0, Landroidx/media3/common/util/EGLSurfaceTexture;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 176
    return-void
.end method

.method public release()V
    .locals 6

    .line 134
    iget-object v0, p0, Landroidx/media3/common/util/EGLSurfaceTexture;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 136
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroidx/media3/common/util/EGLSurfaceTexture;->texture:Landroid/graphics/SurfaceTexture;

    if-eqz v1, :cond_0

    .line 137
    iget-object v1, p0, Landroidx/media3/common/util/EGLSurfaceTexture;->texture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->release()V

    .line 138
    iget-object v1, p0, Landroidx/media3/common/util/EGLSurfaceTexture;->textureIdHolder:[I

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v3, v1, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    :cond_0
    iget-object v1, p0, Landroidx/media3/common/util/EGLSurfaceTexture;->display:Landroid/opengl/EGLDisplay;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroidx/media3/common/util/EGLSurfaceTexture;->display:Landroid/opengl/EGLDisplay;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    invoke-virtual {v1, v2}, Landroid/opengl/EGLDisplay;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 142
    iget-object v1, p0, Landroidx/media3/common/util/EGLSurfaceTexture;->display:Landroid/opengl/EGLDisplay;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v4, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v1, v2, v3, v4}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 145
    :cond_1
    iget-object v1, p0, Landroidx/media3/common/util/EGLSurfaceTexture;->surface:Landroid/opengl/EGLSurface;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/media3/common/util/EGLSurfaceTexture;->surface:Landroid/opengl/EGLSurface;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    invoke-virtual {v1, v2}, Landroid/opengl/EGLSurface;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 146
    iget-object v1, p0, Landroidx/media3/common/util/EGLSurfaceTexture;->display:Landroid/opengl/EGLDisplay;

    iget-object v2, p0, Landroidx/media3/common/util/EGLSurfaceTexture;->surface:Landroid/opengl/EGLSurface;

    invoke-static {v1, v2}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 148
    :cond_2
    iget-object v1, p0, Landroidx/media3/common/util/EGLSurfaceTexture;->context:Landroid/opengl/EGLContext;

    if-eqz v1, :cond_3

    .line 149
    iget-object v1, p0, Landroidx/media3/common/util/EGLSurfaceTexture;->display:Landroid/opengl/EGLDisplay;

    iget-object v2, p0, Landroidx/media3/common/util/EGLSurfaceTexture;->context:Landroid/opengl/EGLContext;

    invoke-static {v1, v2}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 151
    :cond_3
    invoke-static {}, Landroid/opengl/EGL14;->eglReleaseThread()Z

    .line 152
    iget-object v1, p0, Landroidx/media3/common/util/EGLSurfaceTexture;->display:Landroid/opengl/EGLDisplay;

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroidx/media3/common/util/EGLSurfaceTexture;->display:Landroid/opengl/EGLDisplay;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    invoke-virtual {v1, v2}, Landroid/opengl/EGLDisplay;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 155
    iget-object v1, p0, Landroidx/media3/common/util/EGLSurfaceTexture;->display:Landroid/opengl/EGLDisplay;

    invoke-static {v1}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    .line 157
    :cond_4
    iput-object v0, p0, Landroidx/media3/common/util/EGLSurfaceTexture;->display:Landroid/opengl/EGLDisplay;

    .line 158
    iput-object v0, p0, Landroidx/media3/common/util/EGLSurfaceTexture;->context:Landroid/opengl/EGLContext;

    .line 159
    iput-object v0, p0, Landroidx/media3/common/util/EGLSurfaceTexture;->surface:Landroid/opengl/EGLSurface;

    .line 160
    iput-object v0, p0, Landroidx/media3/common/util/EGLSurfaceTexture;->texture:Landroid/graphics/SurfaceTexture;

    .line 161
    nop

    .line 162
    return-void

    .line 141
    :catchall_0
    move-exception v1

    iget-object v2, p0, Landroidx/media3/common/util/EGLSurfaceTexture;->display:Landroid/opengl/EGLDisplay;

    if-eqz v2, :cond_5

    iget-object v2, p0, Landroidx/media3/common/util/EGLSurfaceTexture;->display:Landroid/opengl/EGLDisplay;

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    invoke-virtual {v2, v3}, Landroid/opengl/EGLDisplay;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 142
    iget-object v2, p0, Landroidx/media3/common/util/EGLSurfaceTexture;->display:Landroid/opengl/EGLDisplay;

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v4, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v5, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v2, v3, v4, v5}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 145
    :cond_5
    iget-object v2, p0, Landroidx/media3/common/util/EGLSurfaceTexture;->surface:Landroid/opengl/EGLSurface;

    if-eqz v2, :cond_6

    iget-object v2, p0, Landroidx/media3/common/util/EGLSurfaceTexture;->surface:Landroid/opengl/EGLSurface;

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    invoke-virtual {v2, v3}, Landroid/opengl/EGLSurface;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 146
    iget-object v2, p0, Landroidx/media3/common/util/EGLSurfaceTexture;->display:Landroid/opengl/EGLDisplay;

    iget-object v3, p0, Landroidx/media3/common/util/EGLSurfaceTexture;->surface:Landroid/opengl/EGLSurface;

    invoke-static {v2, v3}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 148
    :cond_6
    iget-object v2, p0, Landroidx/media3/common/util/EGLSurfaceTexture;->context:Landroid/opengl/EGLContext;

    if-eqz v2, :cond_7

    .line 149
    iget-object v2, p0, Landroidx/media3/common/util/EGLSurfaceTexture;->display:Landroid/opengl/EGLDisplay;

    iget-object v3, p0, Landroidx/media3/common/util/EGLSurfaceTexture;->context:Landroid/opengl/EGLContext;

    invoke-static {v2, v3}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 151
    :cond_7
    invoke-static {}, Landroid/opengl/EGL14;->eglReleaseThread()Z

    .line 152
    iget-object v2, p0, Landroidx/media3/common/util/EGLSurfaceTexture;->display:Landroid/opengl/EGLDisplay;

    if-eqz v2, :cond_8

    iget-object v2, p0, Landroidx/media3/common/util/EGLSurfaceTexture;->display:Landroid/opengl/EGLDisplay;

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    invoke-virtual {v2, v3}, Landroid/opengl/EGLDisplay;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 155
    iget-object v2, p0, Landroidx/media3/common/util/EGLSurfaceTexture;->display:Landroid/opengl/EGLDisplay;

    invoke-static {v2}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    .line 157
    :cond_8
    iput-object v0, p0, Landroidx/media3/common/util/EGLSurfaceTexture;->display:Landroid/opengl/EGLDisplay;

    .line 158
    iput-object v0, p0, Landroidx/media3/common/util/EGLSurfaceTexture;->context:Landroid/opengl/EGLContext;

    .line 159
    iput-object v0, p0, Landroidx/media3/common/util/EGLSurfaceTexture;->surface:Landroid/opengl/EGLSurface;

    .line 160
    iput-object v0, p0, Landroidx/media3/common/util/EGLSurfaceTexture;->texture:Landroid/graphics/SurfaceTexture;

    .line 161
    throw v1
.end method

.method public run()V
    .locals 1

    .line 183
    invoke-direct {p0}, Landroidx/media3/common/util/EGLSurfaceTexture;->dispatchOnFrameAvailable()V

    .line 184
    iget-object v0, p0, Landroidx/media3/common/util/EGLSurfaceTexture;->texture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    .line 186
    :try_start_0
    iget-object v0, p0, Landroidx/media3/common/util/EGLSurfaceTexture;->texture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    goto :goto_0

    .line 187
    :catch_0
    move-exception v0

    .line 191
    :cond_0
    :goto_0
    return-void
.end method
