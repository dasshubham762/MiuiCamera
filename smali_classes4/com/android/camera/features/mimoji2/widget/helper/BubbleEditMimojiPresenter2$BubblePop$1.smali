.class Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "BubbleEditMimojiPresenter2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;->showBubbleAni(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;

.field final synthetic val$targetLeftCoordinate:I

.field final synthetic val$targetTopCoordinate:I


# direct methods
.method constructor <init>(Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop$1;->this$1:Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;

    iput p2, p0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop$1;->val$targetTopCoordinate:I

    iput p3, p0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop$1;->val$targetLeftCoordinate:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 2
    iget-object p1, p0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop$1;->this$1:Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;

    iget-object p1, p1, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;->mIvEditFirst:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3
    iget-object p0, p0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop$1;->this$1:Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;

    iget-object p0, p0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;->this$0:Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;

    invoke-static {p0, v0}, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;->access$002(Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;Z)Z

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 2
    iget-object p1, p0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop$1;->this$1:Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;

    invoke-static {p1}, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;->access$600(Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object p1

    iget v0, p0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop$1;->val$targetTopCoordinate:I

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 3
    iget-object p1, p0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop$1;->this$1:Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;

    invoke-static {p1}, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;->access$600(Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object p1

    iget v0, p0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop$1;->val$targetLeftCoordinate:I

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 4
    iget-object p1, p0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop$1;->this$1:Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;

    iget-object v0, p1, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;->mIvEditFirst:Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;->access$600(Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5
    iget-object p1, p0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop$1;->this$1:Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;

    iget-object p1, p1, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;->mIvEditFirst:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6
    iget-object p0, p0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop$1;->this$1:Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;

    iget-object p0, p0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;->this$0:Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;->access$002(Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;Z)Z

    return-void
.end method
