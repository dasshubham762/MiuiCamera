.class Lcom/android/camera/ui/HorizontalSlideView$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "HorizontalSlideView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/HorizontalSlideView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/HorizontalSlideView;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/HorizontalSlideView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/ui/HorizontalSlideView$1;->this$0:Lcom/android/camera/ui/HorizontalSlideView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/camera/ui/HorizontalSlideView$1;->this$0:Lcom/android/camera/ui/HorizontalSlideView;

    iget-object p1, p1, Lcom/android/camera/ui/HorizontalSlideView;->mScroller:Landroid/widget/Scroller;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 2
    iget-object p0, p0, Lcom/android/camera/ui/HorizontalSlideView$1;->this$0:Lcom/android/camera/ui/HorizontalSlideView;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/camera/ui/HorizontalSlideView;->access$002(Lcom/android/camera/ui/HorizontalSlideView;Z)Z

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/ui/HorizontalSlideView$1;->this$0:Lcom/android/camera/ui/HorizontalSlideView;

    float-to-int p1, p3

    neg-int p1, p1

    invoke-static {p0, p1}, Lcom/android/camera/ui/HorizontalSlideView;->access$900(Lcom/android/camera/ui/HorizontalSlideView;I)V

    const/4 p0, 0x1

    return p0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/camera/ui/HorizontalSlideView$1;->this$0:Lcom/android/camera/ui/HorizontalSlideView;

    invoke-static {p1}, Lcom/android/camera/ui/HorizontalSlideView;->access$400(Lcom/android/camera/ui/HorizontalSlideView;)Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/camera/ui/HorizontalSlideView$1;->this$0:Lcom/android/camera/ui/HorizontalSlideView;

    invoke-static {p1}, Lcom/android/camera/ui/HorizontalSlideView;->access$400(Lcom/android/camera/ui/HorizontalSlideView;)Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->isSplitFocusExposureDown()Z

    move-result p1

    if-eqz p1, :cond_0

    return p2

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/android/camera/ui/HorizontalSlideView$1;->this$0:Lcom/android/camera/ui/HorizontalSlideView;

    const/4 p4, 0x1

    invoke-static {p1, p4}, Lcom/android/camera/ui/HorizontalSlideView;->access$502(Lcom/android/camera/ui/HorizontalSlideView;Z)Z

    .line 3
    iget-object p1, p0, Lcom/android/camera/ui/HorizontalSlideView$1;->this$0:Lcom/android/camera/ui/HorizontalSlideView;

    iget v0, p1, Lcom/android/camera/ui/HorizontalSlideView;->mPositionX:I

    invoke-static {p1}, Lcom/android/camera/ui/HorizontalSlideView;->access$600(Lcom/android/camera/ui/HorizontalSlideView;)I

    move-result p1

    const/4 v1, 0x0

    if-ne v0, p1, :cond_1

    cmpg-float p1, p3, v1

    if-gez p1, :cond_1

    return p2

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/android/camera/ui/HorizontalSlideView$1;->this$0:Lcom/android/camera/ui/HorizontalSlideView;

    iget v0, p1, Lcom/android/camera/ui/HorizontalSlideView;->mPositionX:I

    invoke-static {p1}, Lcom/android/camera/ui/HorizontalSlideView;->access$700(Lcom/android/camera/ui/HorizontalSlideView;)I

    move-result p1

    if-ne v0, p1, :cond_2

    cmpl-float p1, p3, v1

    if-lez p1, :cond_2

    return p2

    .line 5
    :cond_2
    iget-object p0, p0, Lcom/android/camera/ui/HorizontalSlideView$1;->this$0:Lcom/android/camera/ui/HorizontalSlideView;

    iget p1, p0, Lcom/android/camera/ui/HorizontalSlideView;->mPositionX:I

    int-to-float p1, p1

    add-float/2addr p1, p3

    float-to-int p1, p1

    invoke-static {p0, p1}, Lcom/android/camera/ui/HorizontalSlideView;->access$800(Lcom/android/camera/ui/HorizontalSlideView;I)V

    return p4
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/HorizontalSlideView$1;->this$0:Lcom/android/camera/ui/HorizontalSlideView;

    invoke-static {v0}, Lcom/android/camera/ui/HorizontalSlideView;->access$100(Lcom/android/camera/ui/HorizontalSlideView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onSingleTapUp: trigger the wrong MotionEvent and ignore it .  e.getX "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " | action is "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "HSlideView"

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/HorizontalSlideView$1;->this$0:Lcom/android/camera/ui/HorizontalSlideView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget-object v1, p0, Lcom/android/camera/ui/HorizontalSlideView$1;->this$0:Lcom/android/camera/ui/HorizontalSlideView;

    iget v1, v1, Lcom/android/camera/ui/HorizontalSlideView;->mOriginX:F

    sub-float/2addr p1, v1

    float-to-int p1, p1

    invoke-static {v0, p1}, Lcom/android/camera/ui/HorizontalSlideView;->access$200(Lcom/android/camera/ui/HorizontalSlideView;I)V

    .line 4
    iget-object p1, p0, Lcom/android/camera/ui/HorizontalSlideView$1;->this$0:Lcom/android/camera/ui/HorizontalSlideView;

    invoke-static {p1}, Lcom/android/camera/ui/HorizontalSlideView;->access$300(Lcom/android/camera/ui/HorizontalSlideView;)Lcom/android/camera/ui/HorizontalSlideView$OnTabListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/android/camera/ui/HorizontalSlideView$1;->this$0:Lcom/android/camera/ui/HorizontalSlideView;

    invoke-static {p1}, Lcom/android/camera/ui/HorizontalSlideView;->access$300(Lcom/android/camera/ui/HorizontalSlideView;)Lcom/android/camera/ui/HorizontalSlideView$OnTabListener;

    move-result-object p1

    iget-object p0, p0, Lcom/android/camera/ui/HorizontalSlideView$1;->this$0:Lcom/android/camera/ui/HorizontalSlideView;

    invoke-interface {p1, p0}, Lcom/android/camera/ui/HorizontalSlideView$OnTabListener;->onTab(Landroid/view/View;)V

    :cond_1
    const/4 p0, 0x1

    return p0
.end method
