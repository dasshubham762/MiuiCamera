.class public Lcom/android/camera/module/loader/FunctionCameraLegacySetup;
.super Lcom/android/camera/module/loader/Func1Base;
.source "FunctionCameraLegacySetup.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/module/loader/Func1Base<",
        "Lcom/android/camera/module/BaseModule;",
        "Lcom/android/camera/module/BaseModule;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CameraSetup"


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/module/loader/Func1Base;-><init>(I)V

    return-void
.end method


# virtual methods
.method public apply(Lcom/android/camera/module/loader/NullHolder;)Lcom/android/camera/module/loader/NullHolder;
    .locals 1
    .param p1    # Lcom/android/camera/module/loader/NullHolder;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/module/loader/NullHolder<",
            "Lcom/android/camera/module/BaseModule;",
            ">;)",
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
    invoke-virtual {p1}, Lcom/android/camera/module/loader/NullHolder;->isPresent()Z

    move-result p0

    if-nez p0, :cond_0

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera/module/loader/NullHolder;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/BaseModule;

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isDeparted()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 p1, 0xe1

    .line 5
    invoke-static {p0, p1}, Lcom/android/camera/module/loader/NullHolder;->ofNullable(Ljava/lang/Object;I)Lcom/android/camera/module/loader/NullHolder;

    move-result-object p0

    return-object p0

    :cond_1
    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Object;
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

    invoke-virtual {p0, p1}, Lcom/android/camera/module/loader/FunctionCameraLegacySetup;->apply(Lcom/android/camera/module/loader/NullHolder;)Lcom/android/camera/module/loader/NullHolder;

    move-result-object p0

    return-object p0
.end method

.method public getWorkThread()Lio/reactivex/Scheduler;
    .locals 0

    .line 1
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object p0

    return-object p0
.end method
