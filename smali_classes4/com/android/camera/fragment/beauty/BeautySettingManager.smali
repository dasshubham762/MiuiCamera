.class public Lcom/android/camera/fragment/beauty/BeautySettingManager;
.super Ljava/lang/Object;
.source "BeautySettingManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BeautySettingManager"


# instance fields
.field private mBeautySettingBusinessArray:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/camera/fragment/beauty/IBeautySettingBusiness;",
            ">;"
        }
    .end annotation
.end field

.field private mBeautyType:Ljava/lang/String;
    .annotation build Lcom/android/camera/data/data/runing/ComponentRunningShine$ShineType;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/beauty/BeautySettingManager;->mBeautySettingBusinessArray:Ljava/util/HashMap;

    return-void
.end method

.method private updateBeautySettingBusiness(Ljava/lang/String;Lcom/android/camera/data/data/runing/TypeElementsBeauty;Ljava/util/Map;)Lcom/android/camera/fragment/beauty/IBeautySettingBusiness;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lcom/android/camera/data/data/runing/ComponentRunningShine$ShineType;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/camera/data/data/runing/TypeElementsBeauty;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/camera/fragment/beauty/IBeautySettingBusiness;",
            ">;)",
            "Lcom/android/camera/fragment/beauty/IBeautySettingBusiness;"
        }
    .end annotation

    .line 1
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/fragment/beauty/IBeautySettingBusiness;

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Lcom/android/camera/fragment/beauty/BeautySettingBusiness;

    invoke-direct {v0, p1, p2}, Lcom/android/camera/fragment/beauty/BeautySettingBusiness;-><init>(Ljava/lang/String;Lcom/android/camera/data/data/runing/TypeElementsBeauty;)V

    .line 4
    iget-object p0, p0, Lcom/android/camera/fragment/beauty/BeautySettingManager;->mBeautyType:Ljava/lang/String;

    invoke-interface {p3, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public constructAndGetSetting(Ljava/lang/String;Lcom/android/camera/data/data/runing/TypeElementsBeauty;)Lcom/android/camera/fragment/beauty/IBeautySettingBusiness;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lcom/android/camera/data/data/runing/ComponentRunningShine$ShineType;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/beauty/BeautySettingManager;->mBeautyType:Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/beauty/BeautySettingManager;->mBeautySettingBusinessArray:Ljava/util/HashMap;

    invoke-direct {p0, p1, p2, v0}, Lcom/android/camera/fragment/beauty/BeautySettingManager;->updateBeautySettingBusiness(Ljava/lang/String;Lcom/android/camera/data/data/runing/TypeElementsBeauty;Ljava/util/Map;)Lcom/android/camera/fragment/beauty/IBeautySettingBusiness;

    move-result-object p0

    .line 3
    invoke-interface {p0}, Lcom/android/camera/fragment/beauty/IBeautySettingBusiness;->updateExtraTable()V

    return-object p0
.end method
