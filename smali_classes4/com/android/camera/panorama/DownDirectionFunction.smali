.class public Lcom/android/camera/panorama/DownDirectionFunction;
.super Lcom/android/camera/panorama/DirectionFunction;
.source "DownDirectionFunction.java"


# direct methods
.method public constructor <init>(IIIIII)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lcom/android/camera/panorama/DirectionFunction;-><init>(IIIIII)V

    const/4 p1, 0x3

    .line 2
    iput p1, p0, Lcom/android/camera/panorama/DirectionFunction;->mDirection:I

    return-void
.end method


# virtual methods
.method public enabled()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getPreviewSize()Landroid/util/Size;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/panorama/DirectionFunction;->getVerticalPreviewSize()Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method
