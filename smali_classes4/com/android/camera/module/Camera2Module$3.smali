.class Lcom/android/camera/module/Camera2Module$3;
.super Ljava/lang/Object;
.source "Camera2Module.java"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/Camera2Module;->multiCapture()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/Observer<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/module/Camera2Module;


# direct methods
.method constructor <init>(Lcom/android/camera/module/Camera2Module;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/Camera2Module$3;->this$0:Lcom/android/camera/module/Camera2Module;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xb8

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$SnapShotIndicator;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 3
    invoke-interface {p0, v0, v1}, Lcom/android/camera/protocol/ModeProtocol$SnapShotIndicator;->setSnapNumVisible(ZZ)V

    .line 4
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xa4

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;

    if-eqz p0, :cond_1

    const-string v0, "d"

    .line 5
    invoke-interface {p0, v0}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->restoreAllMutexElement(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public onNext(Ljava/lang/Integer;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/camera/module/Camera2Module$3;->onNext(Ljava/lang/Integer;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/Camera2Module$3;->this$0:Lcom/android/camera/module/Camera2Module;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/camera/module/Camera2Module;->access$202(Lcom/android/camera/module/Camera2Module;J)J

    .line 2
    iget-object p0, p0, Lcom/android/camera/module/Camera2Module$3;->this$0:Lcom/android/camera/module/Camera2Module;

    invoke-static {p0, p1}, Lcom/android/camera/module/Camera2Module;->access$302(Lcom/android/camera/module/Camera2Module;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
