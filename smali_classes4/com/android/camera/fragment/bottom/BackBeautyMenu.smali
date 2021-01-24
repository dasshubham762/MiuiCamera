.class public Lcom/android/camera/fragment/bottom/BackBeautyMenu;
.super Lcom/android/camera/fragment/bottom/AbBottomMenu;
.source "BackBeautyMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mBackBeautyMenuTabList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/camera/fragment/beauty/MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private mMenuTextViewList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/camera/ui/ColorActivateTextView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/LinearLayout;Lcom/android/camera/fragment/bottom/BeautyMenuAnimator;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/fragment/bottom/AbBottomMenu;-><init>(Landroid/content/Context;Landroid/widget/LinearLayout;Lcom/android/camera/fragment/bottom/BeautyMenuAnimator;)V

    return-void
.end method

.method private isJustBeautyTab()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method addAllView()V
    .locals 8

    .line 1
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/bottom/BackBeautyMenu;->mMenuTextViewList:Landroid/util/SparseArray;

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/fragment/bottom/BackBeautyMenu;->getMenuData()Landroid/util/SparseArray;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 3
    :goto_0
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 4
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/fragment/beauty/MenuItem;

    .line 5
    invoke-direct {p0}, Lcom/android/camera/fragment/bottom/BackBeautyMenu;->isJustBeautyTab()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    .line 6
    iget v4, v3, Lcom/android/camera/fragment/beauty/MenuItem;->type:I

    if-eq v4, v5, :cond_0

    goto :goto_3

    .line 7
    :cond_0
    iget-object v4, p0, Lcom/android/camera/fragment/bottom/AbBottomMenu;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v6, 0x7f0c0020

    .line 8
    iget-object v7, p0, Lcom/android/camera/fragment/bottom/AbBottomMenu;->mContainerView:Landroid/widget/LinearLayout;

    .line 9
    invoke-virtual {v4, v6, v7, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/camera/ui/ColorActivateTextView;

    const v6, -0x66000001

    .line 10
    invoke-virtual {v4, v6}, Lcom/android/camera/ui/ColorActivateTextView;->setNormalCor(I)V

    .line 11
    invoke-direct {p0}, Lcom/android/camera/fragment/bottom/BackBeautyMenu;->isJustBeautyTab()Z

    move-result v6

    if-eqz v6, :cond_1

    const v6, -0x4c000001

    .line 12
    invoke-virtual {v4, v6}, Lcom/android/camera/ui/ColorActivateTextView;->setActivateColor(I)V

    goto :goto_1

    :cond_1
    const v6, -0xff5701

    .line 13
    invoke-virtual {v4, v6}, Lcom/android/camera/ui/ColorActivateTextView;->setActivateColor(I)V

    .line 14
    :goto_1
    iget-object v6, v3, Lcom/android/camera/fragment/beauty/MenuItem;->text:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    iget v6, v3, Lcom/android/camera/fragment/beauty/MenuItem;->type:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 16
    invoke-virtual {v4, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    iget v6, v3, Lcom/android/camera/fragment/beauty/MenuItem;->type:I

    if-ne v5, v6, :cond_2

    .line 18
    invoke-virtual {v4, v5}, Lcom/android/camera/ui/ColorActivateTextView;->setActivated(Z)V

    .line 19
    iput-object v4, p0, Lcom/android/camera/fragment/bottom/AbBottomMenu;->mCurrentBeautyTextView:Lcom/android/camera/ui/ColorActivateTextView;

    goto :goto_2

    .line 20
    :cond_2
    invoke-virtual {v4, v1}, Lcom/android/camera/ui/ColorActivateTextView;->setActivated(Z)V

    .line 21
    :goto_2
    iget-object v5, p0, Lcom/android/camera/fragment/bottom/BackBeautyMenu;->mMenuTextViewList:Landroid/util/SparseArray;

    iget v3, v3, Lcom/android/camera/fragment/beauty/MenuItem;->type:I

    invoke-virtual {v5, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 22
    iget-object v3, p0, Lcom/android/camera/fragment/bottom/AbBottomMenu;->mContainerView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method getChildMenuViewList()Landroid/util/SparseArray;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/android/camera/ui/ColorActivateTextView;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/bottom/BackBeautyMenu;->mMenuTextViewList:Landroid/util/SparseArray;

    return-object p0
.end method

.method getDefaultType()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method getMenuData()Landroid/util/SparseArray;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/android/camera/fragment/beauty/MenuItem;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/BackBeautyMenu;->mBackBeautyMenuTabList:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/bottom/BackBeautyMenu;->mBackBeautyMenuTabList:Landroid/util/SparseArray;

    .line 3
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f100085

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 4
    new-instance v1, Lcom/android/camera/fragment/beauty/MenuItem;

    invoke-direct {v1}, Lcom/android/camera/fragment/beauty/MenuItem;-><init>()V

    const/4 v2, 0x1

    .line 5
    iput v2, v1, Lcom/android/camera/fragment/beauty/MenuItem;->type:I

    .line 6
    iput-object v0, v1, Lcom/android/camera/fragment/beauty/MenuItem;->text:Ljava/lang/String;

    const/4 v0, 0x0

    .line 7
    iput v0, v1, Lcom/android/camera/fragment/beauty/MenuItem;->number:I

    .line 8
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/BackBeautyMenu;->mBackBeautyMenuTabList:Landroid/util/SparseArray;

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 9
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/mi/config/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/a;->b1()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f10007b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 11
    new-instance v1, Lcom/android/camera/fragment/beauty/MenuItem;

    invoke-direct {v1}, Lcom/android/camera/fragment/beauty/MenuItem;-><init>()V

    const/4 v3, 0x5

    .line 12
    iput v3, v1, Lcom/android/camera/fragment/beauty/MenuItem;->type:I

    .line 13
    iput-object v0, v1, Lcom/android/camera/fragment/beauty/MenuItem;->text:Ljava/lang/String;

    .line 14
    iput v2, v1, Lcom/android/camera/fragment/beauty/MenuItem;->number:I

    .line 15
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/BackBeautyMenu;->mBackBeautyMenuTabList:Landroid/util/SparseArray;

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 16
    :cond_1
    iget-object p0, p0, Lcom/android/camera/fragment/bottom/BackBeautyMenu;->mBackBeautyMenuTabList:Landroid/util/SparseArray;

    return-object p0
.end method

.method isRefreshUI()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/fragment/bottom/AbBottomMenu;->isClickEnable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/bottom/AbBottomMenu;->selectBeautyType(I)V

    .line 4
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 p1, 0xc2

    invoke-virtual {p0, p1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;

    .line 5
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 p1, 0xaf

    .line 6
    invoke-virtual {p0, p1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    if-eqz p0, :cond_1

    .line 7
    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->hideQrCodeTip()V

    :cond_1
    return-void
.end method

.method switchMenu()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/AbBottomMenu;->mContainerView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/fragment/bottom/BackBeautyMenu;->addAllView()V

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/fragment/bottom/BackBeautyMenu;->getDefaultType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/bottom/AbBottomMenu;->selectBeautyType(I)V

    return-void
.end method
