.class Lcom/android/camera/Camera$3;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Lio/reactivex/functions/BiFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/BiFunction<",
        "Lcom/android/camera/module/loader/NullHolder<",
        "Lcom/android/camera/module/BaseModule;",
        ">;",
        "Lcom/android/camera/module/loader/camera2/Camera2Result;",
        "Lcom/android/camera/module/loader/NullHolder<",
        "Lcom/android/camera/module/BaseModule;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/Camera;


# direct methods
.method constructor <init>(Lcom/android/camera/Camera;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/Camera$3;->this$0:Lcom/android/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/android/camera/module/loader/NullHolder;Lcom/android/camera/module/loader/camera2/Camera2Result;)Lcom/android/camera/module/loader/NullHolder;
    .locals 4
    .param p1    # Lcom/android/camera/module/loader/NullHolder;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/camera/module/loader/camera2/Camera2Result;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/module/loader/NullHolder<",
            "Lcom/android/camera/module/BaseModule;",
            ">;",
            "Lcom/android/camera/module/loader/camera2/Camera2Result;",
            ")",
            "Lcom/android/camera/module/loader/NullHolder<",
            "Lcom/android/camera/module/BaseModule;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    invoke-virtual {p2}, Lcom/android/camera/module/loader/camera2/Camera2Result;->getResult()I

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/android/camera/Camera$3;->this$0:Lcom/android/camera/Camera;

    invoke-static {v1}, Lcom/android/camera/Camera;->access$400(Lcom/android/camera/Camera;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCameraOpenResult apply : result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera/module/loader/NullHolder;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p1}, Lcom/android/camera/module/loader/NullHolder;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/BaseModule;

    .line 6
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->setDeparted()V

    .line 7
    :cond_1
    iget-object p0, p0, Lcom/android/camera/Camera$3;->this$0:Lcom/android/camera/Camera;

    invoke-virtual {p2}, Lcom/android/camera/module/loader/camera2/Camera2Result;->getCameraError()I

    move-result p2

    invoke-static {p0, p2}, Lcom/android/camera/Camera;->access$100(Lcom/android/camera/Camera;I)V

    :goto_0
    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/android/camera/module/loader/NullHolder;

    check-cast p2, Lcom/android/camera/module/loader/camera2/Camera2Result;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/Camera$3;->apply(Lcom/android/camera/module/loader/NullHolder;Lcom/android/camera/module/loader/camera2/Camera2Result;)Lcom/android/camera/module/loader/NullHolder;

    move-result-object p0

    return-object p0
.end method
