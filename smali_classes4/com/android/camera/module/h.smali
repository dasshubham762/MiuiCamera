.class public final synthetic Lcom/android/camera/module/h;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic a:Lcom/android/camera/module/h;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/camera/module/h;

    invoke-direct {v0}, Lcom/android/camera/module/h;-><init>()V

    sput-object v0, Lcom/android/camera/module/h;->a:Lcom/android/camera/module/h;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    invoke-static {}, Lcom/android/camera/module/Camera2Module;->f()V

    return-void
.end method
