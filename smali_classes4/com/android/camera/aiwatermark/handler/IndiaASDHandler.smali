.class public Lcom/android/camera/aiwatermark/handler/IndiaASDHandler;
.super Lcom/android/camera/aiwatermark/handler/ASDHandler;
.source "IndiaASDHandler.java"


# direct methods
.method public constructor <init>(ZLandroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/camera/aiwatermark/handler/ASDHandler;-><init>(ZLandroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected findWatermark()Lcom/android/camera/aiwatermark/data/WatermarkItem;
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/android/camera/aiwatermark/handler/ASDHandler;->findWatermark()Lcom/android/camera/aiwatermark/data/WatermarkItem;

    move-result-object p0

    return-object p0
.end method

.method protected getASDChain()Lcom/android/camera/aiwatermark/handler/AbstractHandler;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/camera/aiwatermark/chain/PriorityChainFactory;

    invoke-direct {v0}, Lcom/android/camera/aiwatermark/chain/PriorityChainFactory;-><init>()V

    const/4 v1, 0x2

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/aiwatermark/chain/PriorityChainFactory;->createPriorityChain(I)Lcom/android/camera/aiwatermark/chain/AbstractPriorityChain;

    move-result-object v0

    .line 3
    iget-object p0, p0, Lcom/android/camera/aiwatermark/handler/ASDHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/android/camera/aiwatermark/chain/AbstractPriorityChain;->createASDChain(Landroid/content/Context;)Lcom/android/camera/aiwatermark/handler/AbstractHandler;

    move-result-object p0

    return-object p0
.end method

.method protected getASDWatermarkList()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/camera/aiwatermark/data/WatermarkItem;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p0, Lcom/android/camera/aiwatermark/data/ASDWatermark;

    invoke-direct {p0}, Lcom/android/camera/aiwatermark/data/ASDWatermark;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/aiwatermark/data/ASDWatermark;->getForAI()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method
