.class Landroidx/fragment/app/FragmentAnim$EnterViewTransitionAnimation;
.super Landroid/view/animation/AnimationSet;
.source "FragmentAnim.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/FragmentAnim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EnterViewTransitionAnimation"
.end annotation


# direct methods
.method constructor <init>(Landroid/view/animation/Animation;)V
    .locals 1
    .param p1    # Landroid/view/animation/Animation;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 2
    invoke-virtual {p0, p1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
