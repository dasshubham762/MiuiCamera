.class public final synthetic Lcom/android/camera/features/mimoji2/module/impl/c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/arcsoft/avatar2/AvatarConfig$UpdateProgressCallback;


# static fields
.field public static final synthetic a:Lcom/android/camera/features/mimoji2/module/impl/c;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/camera/features/mimoji2/module/impl/c;

    invoke-direct {v0}, Lcom/android/camera/features/mimoji2/module/impl/c;-><init>()V

    sput-object v0, Lcom/android/camera/features/mimoji2/module/impl/c;->a:Lcom/android/camera/features/mimoji2/module/impl/c;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onUpdateProgress(I)V
    .locals 0

    invoke-static {p1}, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->a(I)V

    return-void
.end method
