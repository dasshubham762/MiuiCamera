.class public final synthetic Lcom/android/camera/module/impl/component/v;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/android/camera/module/Camera2Module;

.field public final synthetic b:Z

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/module/Camera2Module;ZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/module/impl/component/v;->a:Lcom/android/camera/module/Camera2Module;

    iput-boolean p2, p0, Lcom/android/camera/module/impl/component/v;->b:Z

    iput p3, p0, Lcom/android/camera/module/impl/component/v;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/module/impl/component/v;->a:Lcom/android/camera/module/Camera2Module;

    iget-boolean v1, p0, Lcom/android/camera/module/impl/component/v;->b:Z

    iget p0, p0, Lcom/android/camera/module/impl/component/v;->c:I

    invoke-static {v0, v1, p0}, Lcom/android/camera/module/impl/component/MiAsdDetectImpl;->a(Lcom/android/camera/module/Camera2Module;ZI)V

    return-void
.end method
