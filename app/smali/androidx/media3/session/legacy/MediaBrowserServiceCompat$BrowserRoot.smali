.class public final Landroidx/media3/session/legacy/MediaBrowserServiceCompat$BrowserRoot;
.super Ljava/lang/Object;
.source "MediaBrowserServiceCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/session/legacy/MediaBrowserServiceCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BrowserRoot"
.end annotation


# static fields
.field public static final EXTRA_OFFLINE:Ljava/lang/String; = "android.service.media.extra.OFFLINE"

.field public static final EXTRA_RECENT:Ljava/lang/String; = "android.service.media.extra.RECENT"

.field public static final EXTRA_SUGGESTED:Ljava/lang/String; = "android.service.media.extra.SUGGESTED"

.field public static final EXTRA_SUGGESTION_KEYWORDS:Ljava/lang/String; = "android.service.media.extra.SUGGESTION_KEYWORDS"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private final mExtras:Landroid/os/Bundle;

.field private final mRootId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "rootId"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 2078
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2079
    if-eqz p1, :cond_0

    .line 2083
    iput-object p1, p0, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$BrowserRoot;->mRootId:Ljava/lang/String;

    .line 2084
    iput-object p2, p0, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$BrowserRoot;->mExtras:Landroid/os/Bundle;

    .line 2085
    return-void

    .line 2080
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The root id in BrowserRoot cannot be null. Use null for BrowserRoot instead"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$000(Landroidx/media3/session/legacy/MediaBrowserServiceCompat$BrowserRoot;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/session/legacy/MediaBrowserServiceCompat$BrowserRoot;

    .line 1992
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$BrowserRoot;->mRootId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Landroidx/media3/session/legacy/MediaBrowserServiceCompat$BrowserRoot;)Landroid/os/Bundle;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/session/legacy/MediaBrowserServiceCompat$BrowserRoot;

    .line 1992
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$BrowserRoot;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method


# virtual methods
.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .line 2095
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$BrowserRoot;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getRootId()Ljava/lang/String;
    .locals 1

    .line 2089
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$BrowserRoot;->mRootId:Ljava/lang/String;

    return-object v0
.end method
