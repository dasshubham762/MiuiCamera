.class public final synthetic Lcom/android/camera/fragment/dialog/b;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/android/camera/fragment/dialog/FragmentLiveReview;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/fragment/dialog/FragmentLiveReview;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/fragment/dialog/b;->a:Lcom/android/camera/fragment/dialog/FragmentLiveReview;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/dialog/b;->a:Lcom/android/camera/fragment/dialog/FragmentLiveReview;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->p(Landroid/content/DialogInterface;I)V

    return-void
.end method