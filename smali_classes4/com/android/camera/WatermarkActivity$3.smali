.class Lcom/android/camera/WatermarkActivity$3;
.super Ljava/lang/Object;
.source "WatermarkActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/WatermarkActivity;->showDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/WatermarkActivity;


# direct methods
.method constructor <init>(Lcom/android/camera/WatermarkActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/WatermarkActivity$3;->this$0:Lcom/android/camera/WatermarkActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/WatermarkActivity$3;->this$0:Lcom/android/camera/WatermarkActivity;

    invoke-static {p0}, Lcom/android/camera/WatermarkActivity;->access$500(Lcom/android/camera/WatermarkActivity;)V

    return-void
.end method
