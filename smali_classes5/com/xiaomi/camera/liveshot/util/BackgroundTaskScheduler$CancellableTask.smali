.class public abstract Lcom/xiaomi/camera/liveshot/util/BackgroundTaskScheduler$CancellableTask;
.super Ljava/lang/Object;
.source "BackgroundTaskScheduler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/camera/liveshot/util/BackgroundTaskScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "CancellableTask"
.end annotation


# instance fields
.field private final mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/camera/liveshot/util/BackgroundTaskScheduler$CancellableTask;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method protected isCancelled()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/camera/liveshot/util/BackgroundTaskScheduler$CancellableTask;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method

.method protected setCancelled()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/xiaomi/camera/liveshot/util/BackgroundTaskScheduler$CancellableTask;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
