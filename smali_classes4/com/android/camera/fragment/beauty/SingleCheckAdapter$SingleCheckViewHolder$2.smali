.class Lcom/android/camera/fragment/beauty/SingleCheckAdapter$SingleCheckViewHolder$2;
.super Landroid/view/animation/LinearInterpolator;
.source "SingleCheckAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/beauty/SingleCheckAdapter$SingleCheckViewHolder;->animateOut(Lcom/android/camera/ui/ColorImageView;Landroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/fragment/beauty/SingleCheckAdapter$SingleCheckViewHolder;

.field final synthetic val$imageView:Lcom/android/camera/ui/ColorImageView;

.field final synthetic val$textImage:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/beauty/SingleCheckAdapter$SingleCheckViewHolder;Lcom/android/camera/ui/ColorImageView;Landroid/widget/TextView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/beauty/SingleCheckAdapter$SingleCheckViewHolder$2;->this$1:Lcom/android/camera/fragment/beauty/SingleCheckAdapter$SingleCheckViewHolder;

    iput-object p2, p0, Lcom/android/camera/fragment/beauty/SingleCheckAdapter$SingleCheckViewHolder$2;->val$imageView:Lcom/android/camera/ui/ColorImageView;

    iput-object p3, p0, Lcom/android/camera/fragment/beauty/SingleCheckAdapter$SingleCheckViewHolder$2;->val$textImage:Landroid/widget/TextView;

    invoke-direct {p0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/view/animation/LinearInterpolator;->getInterpolation(F)F

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/beauty/SingleCheckAdapter$SingleCheckViewHolder$2;->val$imageView:Lcom/android/camera/ui/ColorImageView;

    iget-object v1, p0, Lcom/android/camera/fragment/beauty/SingleCheckAdapter$SingleCheckViewHolder$2;->this$1:Lcom/android/camera/fragment/beauty/SingleCheckAdapter$SingleCheckViewHolder;

    iget-object v1, v1, Lcom/android/camera/fragment/beauty/SingleCheckAdapter$SingleCheckViewHolder;->this$0:Lcom/android/camera/fragment/beauty/SingleCheckAdapter;

    .line 3
    invoke-static {v1}, Lcom/android/camera/fragment/beauty/SingleCheckAdapter;->access$900(Lcom/android/camera/fragment/beauty/SingleCheckAdapter;)Landroid/animation/ArgbEvaluator;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/fragment/beauty/SingleCheckAdapter$SingleCheckViewHolder$2;->this$1:Lcom/android/camera/fragment/beauty/SingleCheckAdapter$SingleCheckViewHolder;

    iget-object v2, v2, Lcom/android/camera/fragment/beauty/SingleCheckAdapter$SingleCheckViewHolder;->this$0:Lcom/android/camera/fragment/beauty/SingleCheckAdapter;

    .line 4
    invoke-static {v2}, Lcom/android/camera/fragment/beauty/SingleCheckAdapter;->access$400(Lcom/android/camera/fragment/beauty/SingleCheckAdapter;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/fragment/beauty/SingleCheckAdapter$SingleCheckViewHolder$2;->this$1:Lcom/android/camera/fragment/beauty/SingleCheckAdapter$SingleCheckViewHolder;

    iget-object v3, v3, Lcom/android/camera/fragment/beauty/SingleCheckAdapter$SingleCheckViewHolder;->this$0:Lcom/android/camera/fragment/beauty/SingleCheckAdapter;

    invoke-static {v3}, Lcom/android/camera/fragment/beauty/SingleCheckAdapter;->access$500(Lcom/android/camera/fragment/beauty/SingleCheckAdapter;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 5
    invoke-virtual {v1, p1, v2, v3}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 6
    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ColorImageView;->setColorAndRefresh(I)V

    .line 7
    iget-object v0, p0, Lcom/android/camera/fragment/beauty/SingleCheckAdapter$SingleCheckViewHolder$2;->val$textImage:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/android/camera/fragment/beauty/SingleCheckAdapter$SingleCheckViewHolder$2;->this$1:Lcom/android/camera/fragment/beauty/SingleCheckAdapter$SingleCheckViewHolder;

    iget-object p0, p0, Lcom/android/camera/fragment/beauty/SingleCheckAdapter$SingleCheckViewHolder;->this$0:Lcom/android/camera/fragment/beauty/SingleCheckAdapter;

    invoke-static {p0}, Lcom/android/camera/fragment/beauty/SingleCheckAdapter;->access$1000(Lcom/android/camera/fragment/beauty/SingleCheckAdapter;)Landroid/animation/FloatEvaluator;

    move-result-object p0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const v2, 0x3f19999a    # 0.6f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {p0, p1, v1, v2}, Landroid/animation/FloatEvaluator;->evaluate(FLjava/lang/Number;Ljava/lang/Number;)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-static {v0, p0}, Landroidx/core/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    return p1
.end method
