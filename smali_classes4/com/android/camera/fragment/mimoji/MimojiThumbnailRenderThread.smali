.class public final Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;
.super Ljava/lang/Thread;
.source "MimojiThumbnailRenderThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread$RenderHandler;
    }
.end annotation


# static fields
.field private static BACKGROUND_COLOR:[F = null

.field private static final MSG_AVATAR_INIT:I = 0x20

.field public static final MSG_DRAW_REQUESTED:I = 0x10

.field private static final MSG_QUIT_REQUESTED:I = 0x40

.field private static final MSG_RESET_DATA:I = 0x60

.field private static final MSG_SET_CONFIG:I = 0x50

.field private static final MSG_UPDATE_THUMB:I = 0x30

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAvatarForEdit:Lcom/arcsoft/avatar/AvatarEngine;

.field private mClickCheck:Lcom/android/camera/fragment/mimoji/ClickCheck;

.field private mConfigInfoThumUtils:Lcom/android/camera/fragment/mimoji/ConfigInfoThumUtils;

.field private mContext:Landroid/content/Context;

.field private mCurrentConfigPath:Ljava/lang/String;

.field private mEGLWrapper:Lcom/android/camera/fragment/mimoji/EGLWrapper;

.field private volatile mEglContextPrepared:Z

.field private mHandler:Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread$RenderHandler;

.field private final mHeight:I

.field private volatile mIsRendering:Z

.field private final mLock:Ljava/lang/Object;

.field private volatile mReady:Z

.field private volatile mRequestDraw:I

.field private volatile mRequestRelease:Z

.field private volatile mRestStopRenderThumbnail:Z

.field private volatile mStopRenderThumbnail:Z

.field private mUpdateHandler:Landroid/os/Handler;

.field private final mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;->TAG:Ljava/lang/String;

    const/4 v0, 0x4

    new-array v0, v0, [F

    .line 2
    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;->BACKGROUND_COLOR:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x3de0ded3    # 0.1098f
        0x3df0d845    # 0.1176f
        0x3e0068dc    # 0.1254f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;IILandroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;->mLock:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;->mReady:Z

    .line 4
    iput-boolean p1, p0, Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;->mRequestRelease:Z

    .line 5
    iput-boolean p1, p0, Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;->mStopRenderThumbnail:Z

    .line 6
    iput-boolean p1, p0, Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;->mRestStopRenderThumbnail:Z

    .line 7
    iput-boolean p1, p0, Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;->mIsRendering:Z

    .line 8
    iput-boolean p1, p0, Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;->mEglContextPrepared:Z

    .line 9
    iput p2, p0, Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;->mWidth:I

    .line 10
    iput p3, p0, Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;->mHeight:I

    .line 11
    iput-object p4, p0, Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;->doDraw(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;->doInit(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;->doUpdate()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;Lcom/arcsoft/avatar/AvatarConfig$ASAvatarConfigInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;->doSetConfig(Lcom/arcsoft/avatar/AvatarConfig$ASAvatarConfigInfo;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;->doReset()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;->doQuit()V

    return-void
.end method

.method private doDraw(Z)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;->mRequestRelease:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;->mEglContextPrepared:Z

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p0, Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;->mRequestDraw:I

    const/4 v2, 0x1

    if-lez v1, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    .line 5
    iget v3, p0, Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;->mRequestDraw:I

    sub-int/2addr v3, v2

    iput v3, p0, Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;->mRequestDraw:I

    .line 6
    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_4

    .line 7
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;->drawThumbnail(Z)V

    :cond_4
    return-void

    :catchall_0
    move-exception p0

    .line 8
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private doInit(Ljava/lang/String;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;->TAG:Ljava/lang/String;

    const-string v1, "init mAvatarForEdit"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;->mClickCheck:Lcom/android/camera/fragment/mimoji/ClickCheck;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/mimoji/ClickCheck;->setForceDisabled(Z)V

    .line 3
    iput-boolean v1, p0, Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;->mRequestRelease:Z

    .line 4
    iget-object v0, p0, Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;->mAvatarForEdit:Lcom/arcsoft/avatar/AvatarEngine;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 5
    new-instance v0, Lcom/arcsoft/avatar/AvatarEngine;

    invoke-direct {v0}, Lcom/arcsoft/avatar/AvatarEngine;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;->mAvatarForEdit:Lcom/arcsoft/avatar/AvatarEngine;

    .line 6
    sget-object v2, Lcom/android/camera/fragment/mimoji/AvatarEngineManager;->TRACK_DATA:Ljava/lang/String;

    sget-object v3, Lcom/android/camera/fragment/mimoji/AvatarEngineManager;->FACE_MODEL:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/arcsoft/avatar/AvatarEngine;->init(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;->mAvatarForEdit:Lcom/arcsoft/avatar/AvatarEngine;

    const v2, 0x3f59999a    # 0.85f

    invoke-virtual {v0, v1, v2}, Lcom/arcsoft/avatar/AvatarEngine;->setRenderScene(ZF)V

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;->mAvatarForEdit:Lcom/arcsoft/avatar/AvatarEngine;

    sget-object v2, Lcom/android/camera/fragment/mimoji/AvatarEngineManager;->PersonTemplatePath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/arcsoft/avatar/AvatarEngine;->setTemplatePath(Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;->mAvatarForEdit:Lcom/arcsoft/avatar/AvatarEngine;

    invoke-virtual {v0, p1}, Lcom/arcsoft/avatar/AvatarEngine;->loadConfig(Ljava/lang/String;)V

    .line 10
    iput-object p1, p0, Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;->mCurrentConfigPath:Ljava/lang/String;

    .line 11
    new-instance p1, Lcom/android/camera/fragment/mimoji/ConfigInfoThumUtils;

    invoke-direct {p1}, Lcom/android/camera/fragment/mimoji/ConfigInfoThumUtils;-><init>()V

    iput-object p1, p0, Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;->mConfigInfoThumUtils:Lcom/android/camera/fragment/mimoji/ConfigInfoThumUtils;

    .line 12
    iput-boolean v1, p0, Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;->mRequestRelease:Z

    .line 13
    invoke-direct {p0}, Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;->doUpdate()V

    return-void
.end method

.method private doQuit()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;->mRequestRelease:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;->mRequestRelease:Z

    .line 3
    invoke-direct {p0}, Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;->release()V

    .line 4
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Looper;->quit()V

    return-void
.end method

.method private doReset()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;->mStopRenderThumbnail:Z

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;->mAvatarForEdit:Lcom/arcsoft/avatar/AvatarEngine;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;->draw(Z)V

    return-void
.end method

.method private doSetConfig(Lcom/arcsoft/avatar/AvatarConfig$ASAvatarConfigInfo;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;->mAvatarForEdit:Lcom/arcsoft/avatar/AvatarEngine;

    if-nez p0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lcom/arcsoft/avatar/AvatarEngine;->setConfig(Lcom/arcsoft/avatar/AvatarConfig$ASAvatarConfigInfo;)I

    return-void
.end method

.method private doUpdate()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;->draw(Z)V

    return-void
.end method

.method private prepare()V
    .locals 3

    .line 1
    new-instance v0, Lcom/android/camera/fragment/mimoji/EGLWrapper;

    iget v1, p0, Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;->mWidth:I

    iget v2, p0, Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;->mHeight:I

    invoke-direct {v0, v1, v2}, Lcom/android/camera/fragment/mimoji/EGLWrapper;-><init>(II)V

    iput-object v0, p0, Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;->mEGLWrapper:Lcom/android/camera/fragment/mimoji/EGLWrapper;

    .line 2
    invoke-virtual {v0}, Lcom/android/camera/fragment/mimoji/EGLWrapper;->makeCurrent()Z

    return-void
.end method

.method private release()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;->mAvatarForEdit:Lcom/arcsoft/avatar/AvatarEngine;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/arcsoft/avatar/AvatarEngine;->releaseRender()V

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;->mAvatarForEdit:Lcom/arcsoft/avatar/AvatarEngine;

    invoke-virtual {v0}, Lcom/arcsoft/avatar/AvatarEngine;->unInit()V

    .line 4
    iget-object v0, p0, Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;->mAvatarForEdit:Lcom/arcsoft/avatar/AvatarEngine;

    invoke-virtual {v0}, Lcom/arcsoft/avatar/AvatarEngine;->destroy()V

    .line 5
    iput-object v1, p0, Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;->mAvatarForEdit:Lcom/arcsoft/avatar/AvatarEngine;

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;->mEGLWrapper:Lcom/android/camera/fragment/mimoji/EGLWrapper;

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v0}, Lcom/android/camera/fragment/mimoji/EGLWrapper;->release()V

    .line 8
    iput-object v1, p0, Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;->mEGLWrapper:Lcom/android/camera/fragment/mimoji/EGLWrapper;

    :cond_1
    return-void
.end method

.method private resetConfig(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/arcsoft/avatar/AvatarConfig$ASAvatarConfigInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;->mConfigInfoThumUtils:Lcom/android/camera/fragment/mimoji/ConfigInfoThumUtils;

    iget-object v1, p0, Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;->mAvatarForEdit:Lcom/arcsoft/avatar/AvatarEngine;

    invoke-static {}, Lcom/android/camera/fragment/mimoji/AvatarEngineManager;->getInstance()Lcom/android/camera/fragment/mimoji/AvatarEngineManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/fragment/mimoji/AvatarEngineManager;->getASAvatarConfigValue()Lcom/arcsoft/avatar/AvatarConfig$ASAvatarConfigValue;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/fragment/mimoji/ConfigInfoThumUtils;->reset(Lcom/arcsoft/avatar/AvatarEngine;Lcom/arcsoft/avatar/AvatarConfig$ASAvatarConfigValue;)V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/arcsoft/avatar/AvatarConfig$ASAvatarConfigInfo;

    iget v1, v1, Lcom/arcsoft/avatar/AvatarConfig$ASAvatarConfigInfo;->configType:I

    invoke-static {}, Lcom/android/camera/fragment/mimoji/AvatarEngineManager;->getInstance()Lcom/android/camera/fragment/mimoji/AvatarEngineManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/fragment/mimoji/AvatarEngineManager;->getASAvatarConfigValue()Lcom/arcsoft/avatar/AvatarConfig$ASAvatarConfigValue;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/arcsoft/avatar/util/AvatarConfigUtils;->getCurrentConfigIdWithType(ILcom/arcsoft/avatar/AvatarConfig$ASAvatarConfigValue;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/4 v1, 0x0

    .line 3
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/arcsoft/avatar/AvatarConfig$ASAvatarConfigInfo;

    .line 4
    iget v3, v2, Lcom/arcsoft/avatar/AvatarConfig$ASAvatarConfigInfo;->configID:I

    if-ne v3, v0, :cond_1

    move-object v1, v2

    :cond_2
    if-eqz v1, :cond_3

    .line 5
    iget-object p0, p0, Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;->mAvatarForEdit:Lcom/arcsoft/avatar/AvatarEngine;

    invoke-virtual {p0, v1}, Lcom/arcsoft/avatar/AvatarEngine;->setConfig(Lcom/arcsoft/avatar/AvatarConfig$ASAvatarConfigInfo;)I

    :cond_3
    return-void
.end method


# virtual methods
.method public draw(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;->mHandler:Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread$RenderHandler;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-boolean v1, p0, Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;->mRequestRelease:Z

    if-eqz v1, :cond_1

    .line 4
    monitor-exit v0

    return-void

    .line 5
    :cond_1
    iget-boolean v1, p0, Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;->mEglContextPrepared:Z

    if-nez v1, :cond_2

    .line 6
    monitor-exit v0

    return-void

    .line 7
    :cond_2
    iget v1, p0, Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;->mRequestDraw:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;->mRequestDraw:I

    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    iget-object v0, p0, Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;->mHandler:Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread$RenderHandler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x10

    .line 10
    iput v1, v0, Landroid/os/Message;->what:I

    .line 11
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 12
    iget-object p0, p0, Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;->mHandler:Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread$RenderHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :catchall_0
    move-exception p0

    .line 13
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public drawThumbnail(Z)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;->mAvatarForEdit:Lcom/arcsoft/avatar/AvatarEngine;

    if-nez v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;->mCurrentConfigPath:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;->doInit(Ljava/lang/String;)V

    .line 3
    sget-object p0, Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;->TAG:Ljava/lang/String;

    const-string p1, "mimoji  drawThumbnail mAvatarForEdit null"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;->mCurrentConfigPath:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/arcsoft/avatar/AvatarEngine;->loadConfig(Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lcom/android/camera/fragment/mimoji/AvatarEngineManager;->getInstance()Lcom/android/camera/fragment/mimoji/AvatarEngineManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/fragment/mimoji/AvatarEngineManager;->resetData()V

    :cond_1
    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;->mIsRendering:Z

    .line 7
    invoke-static {}, Lcom/android/camera/fragment/mimoji/AvatarEngineManager;->getInstance()Lcom/android/camera/fragment/mimoji/AvatarEngineManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/fragment/mimoji/AvatarEngineManager;->getSelectType()I

    move-result v0

    .line 8
    sget-object v1, Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "select  Type : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    invoke-static {}, Lcom/android/camera/fragment/mimoji/AvatarEngineManager;->getInstance()Lcom/android/camera/fragment/mimoji/AvatarEngineManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/android/camera/fragment/mimoji/AvatarEngineManager;->getSubConfigList(Landroid/content/Context;I)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    .line 10
    sget-object v2, Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mimojiLevelBeans.size   :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    move v3, v2

    .line 11
    :goto_0
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_9

    .line 12
    invoke-virtual {v1, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/fragment/mimoji/MimojiLevelBean;

    if-nez v4, :cond_2

    goto/16 :goto_3

    .line 13
    :cond_2
    sget-object v5, Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "tempMimojiLevelBeans configTypeName : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v4, Lcom/android/camera/fragment/mimoji/MimojiLevelBean;->configTypeName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    iget-object v4, v4, Lcom/android/camera/fragment/mimoji/MimojiLevelBean;->thumnails:Ljava/util/ArrayList;

    if-nez v4, :cond_3

    goto/16 :goto_3

    :cond_3
    move v5, v2

    .line 15
    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_8

    .line 16
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/arcsoft/avatar/AvatarConfig$ASAvatarConfigInfo;

    if-nez v6, :cond_4

    .line 17
    sget-object v6, Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "asainfo is null   curIndex : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 18
    :cond_4
    iget-object v7, p0, Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;->mConfigInfoThumUtils:Lcom/android/camera/fragment/mimoji/ConfigInfoThumUtils;

    iget-object v8, p0, Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;->mAvatarForEdit:Lcom/arcsoft/avatar/AvatarEngine;

    invoke-static {}, Lcom/android/camera/fragment/mimoji/AvatarEngineManager;->getInstance()Lcom/android/camera/fragment/mimoji/AvatarEngineManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/camera/fragment/mimoji/AvatarEngineManager;->getASAvatarConfigValue()Lcom/arcsoft/avatar/AvatarConfig$ASAvatarConfigValue;

    move-result-object v9

    iget v9, v9, Lcom/arcsoft/avatar/AvatarConfig$ASAvatarConfigValue;->gender:I

    sget-object v10, Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;->BACKGROUND_COLOR:[F

    invoke-virtual {v7, v8, v6, v9, v10}, Lcom/android/camera/fragment/mimoji/ConfigInfoThumUtils;->renderThumb(Lcom/arcsoft/avatar/AvatarEngine;Lcom/arcsoft/avatar/AvatarConfig$ASAvatarConfigInfo;I[F)V

    .line 19
    iget-object v6, p0, Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v6}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v6

    .line 20
    iget-boolean v7, p0, Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;->mRestStopRenderThumbnail:Z

    if-eqz v7, :cond_5

    .line 21
    iput-boolean v2, p0, Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;->mStopRenderThumbnail:Z

    .line 22
    iput-boolean v2, p0, Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;->mRestStopRenderThumbnail:Z

    .line 23
    iput-boolean v2, p0, Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;->mIsRendering:Z

    .line 24
    invoke-static {}, Lcom/android/camera/fragment/mimoji/AvatarEngineManager;->getInstance()Lcom/android/camera/fragment/mimoji/AvatarEngineManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/fragment/mimoji/AvatarEngineManager;->resetData()V

    .line 25
    invoke-static {}, Lcom/android/camera/fragment/mimoji/AvatarEngineManager;->getInstance()Lcom/android/camera/fragment/mimoji/AvatarEngineManager;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Lcom/android/camera/fragment/mimoji/AvatarEngineManager;->setTypeNeedUpdate(IZ)V

    .line 26
    invoke-direct {p0, v4}, Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;->resetConfig(Ljava/util/ArrayList;)V

    .line 27
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;->draw(Z)V

    return-void

    .line 28
    :cond_5
    iget-boolean v7, p0, Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;->mStopRenderThumbnail:Z

    if-eqz v7, :cond_6

    .line 29
    iput-boolean v2, p0, Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;->mStopRenderThumbnail:Z

    .line 30
    iput-boolean v2, p0, Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;->mIsRendering:Z

    .line 31
    invoke-direct {p0, v4}, Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;->resetConfig(Ljava/util/ArrayList;)V

    .line 32
    invoke-static {}, Lcom/android/camera/fragment/mimoji/AvatarEngineManager;->getInstance()Lcom/android/camera/fragment/mimoji/AvatarEngineManager;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/android/camera/fragment/mimoji/AvatarEngineManager;->setTypeNeedUpdate(IZ)V

    const/4 p1, 0x6

    .line 33
    iput p1, v6, Landroid/os/Message;->what:I

    .line 34
    iget-object p0, p0, Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {p0, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_6
    const/4 v7, 0x5

    .line 35
    iput v7, v6, Landroid/os/Message;->what:I

    .line 36
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const-string v8, "OUTER"

    .line 37
    invoke-virtual {v7, v8, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v8, "INNER"

    .line 38
    invoke-virtual {v7, v8, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v8, "TYPE"

    .line 39
    invoke-virtual {v7, v8, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 40
    iput-object v7, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 41
    iget-object v7, p0, Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;->mUpdateHandler:Landroid/os/Handler;

    if-eqz v7, :cond_7

    .line 42
    invoke-virtual {v7, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_7
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 43
    :cond_8
    invoke-direct {p0, v4}, Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;->resetConfig(Ljava/util/ArrayList;)V

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 44
    :cond_9
    invoke-static {}, Lcom/android/camera/fragment/mimoji/AvatarEngineManager;->getInstance()Lcom/android/camera/fragment/mimoji/AvatarEngineManager;

    move-result-object p1

    invoke-virtual {p1, v0, v2}, Lcom/android/camera/fragment/mimoji/AvatarEngineManager;->setTypeNeedUpdate(IZ)V

    .line 45
    iget-object p1, p0, Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;->mClickCheck:Lcom/android/camera/fragment/mimoji/ClickCheck;

    invoke-virtual {p1, v2}, Lcom/android/camera/fragment/mimoji/ClickCheck;->setForceDisabled(Z)V

    .line 46
    iput-boolean v2, p0, Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;->mIsRendering:Z

    return-void
.end method

.method public getHandler()Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread$RenderHandler;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;->mReady:Z

    if-eqz v1, :cond_0

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iget-object p0, p0, Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;->mHandler:Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread$RenderHandler;

    return-object p0

    .line 5
    :cond_0
    :try_start_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "render thread is not ready yet"

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    .line 6
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public getIsRendering()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;->mIsRendering:Z

    return p0
.end method

.method public initAvatar(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;->mHandler:Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread$RenderHandler;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x20

    .line 3
    iput v1, v0, Landroid/os/Message;->what:I

    .line 4
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 5
    iget-object p0, p0, Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;->mHandler:Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread$RenderHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public quit()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;->mHandler:Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread$RenderHandler;

    if-eqz p0, :cond_0

    const/16 v0, 0x40

    .line 2
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;->mHandler:Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread$RenderHandler;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;->setStopRender(Z)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;->mHandler:Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread$RenderHandler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x60

    .line 4
    iput v1, v0, Landroid/os/Message;->what:I

    .line 5
    iget-object p0, p0, Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;->mHandler:Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread$RenderHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public run()V
    .locals 6

    .line 1
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 2
    new-instance v0, Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread$RenderHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread$RenderHandler;-><init>(Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread$1;)V

    iput-object v0, p0, Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;->mHandler:Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread$RenderHandler;

    .line 3
    sget-object v0, Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;->TAG:Ljava/lang/String;

    const-string v2, "prepare render thread: E"

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 4
    :try_start_0
    iput-boolean v2, p0, Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;->mEglContextPrepared:Z

    .line 5
    invoke-direct {p0}, Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;->prepare()V

    .line 6
    iput-boolean v0, p0, Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;->mEglContextPrepared:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 7
    sget-object v4, Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;->TAG:Ljava/lang/String;

    const-string v5, "FATAL: failed to prepare render thread"

    invoke-static {v4, v5, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8
    invoke-direct {p0}, Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;->release()V

    .line 9
    :goto_0
    iget-object v3, p0, Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 10
    :try_start_1
    iput-boolean v0, p0, Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;->mReady:Z

    .line 11
    iget-object v0, p0, Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 12
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 13
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 14
    iget-object v0, p0, Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 15
    :try_start_2
    iput-boolean v2, p0, Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;->mReady:Z

    .line 16
    iput-object v1, p0, Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;->mHandler:Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread$RenderHandler;

    .line 17
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 18
    sget-object p0, Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;->TAG:Ljava/lang/String;

    const-string v0, "prepare render thread: X"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception p0

    .line 19
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    .line 20
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0
.end method

.method public setClickCheck(Lcom/android/camera/fragment/mimoji/ClickCheck;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;->mClickCheck:Lcom/android/camera/fragment/mimoji/ClickCheck;

    return-void
.end method

.method public setConfig(Lcom/arcsoft/avatar/AvatarConfig$ASAvatarConfigInfo;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;->mHandler:Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread$RenderHandler;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x50

    .line 3
    iput v1, v0, Landroid/os/Message;->what:I

    .line 4
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 5
    iget-object p0, p0, Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;->mHandler:Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread$RenderHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setResetStopRender(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;->mIsRendering:Z

    if-eqz v0, :cond_0

    .line 2
    iput-boolean p1, p0, Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;->mRestStopRenderThumbnail:Z

    :cond_0
    return-void
.end method

.method public setStopRender(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;->mIsRendering:Z

    if-eqz v0, :cond_0

    .line 2
    iput-boolean p1, p0, Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;->mStopRenderThumbnail:Z

    :cond_0
    return-void
.end method

.method public setUpdateHandler(Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;->mUpdateHandler:Landroid/os/Handler;

    return-void
.end method

.method public waitUntilReady()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;->mReady:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 3
    :try_start_1
    iget-object p0, p0, Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 4
    :try_start_2
    sget-object v1, Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "waitUntilReady() interrupted: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
