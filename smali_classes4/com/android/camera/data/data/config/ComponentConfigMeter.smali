.class public Lcom/android/camera/data/data/config/ComponentConfigMeter;
.super Lcom/android/camera/data/data/ComponentData;
.source "ComponentConfigMeter.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# static fields
.field public static final METERING_MODE_CENTER_WEIGHTED:Ljava/lang/String; = "1"

.field public static final METERING_MODE_FRAME_AVERAGE:Ljava/lang/String; = "0"

.field public static final METERING_MODE_SPOT_METERING:Ljava/lang/String; = "2"


# direct methods
.method public constructor <init>(Lcom/android/camera/data/data/config/DataItemConfig;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/data/data/ComponentData;-><init>(Lcom/android/camera/data/data/DataItemBase;)V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    .line 3
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    new-instance v0, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-direct {p0}, Lcom/android/camera/data/data/config/ComponentConfigMeter;->getCenterWeighted()I

    move-result v1

    .line 4
    invoke-direct {p0}, Lcom/android/camera/data/data/config/ComponentConfigMeter;->getCenterWeighted()I

    move-result p0

    const v2, 0x7f100280

    const-string v3, "1"

    invoke-direct {v0, v1, p0, v2, v3}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    .line 5
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private getCenterWeighted()I
    .locals 0

    const p0, 0x7f080213

    return p0
.end method

.method private getFrameAverage()I
    .locals 0

    const p0, 0x7f080214

    return p0
.end method

.method private getSpotMetering()I
    .locals 0

    const p0, 0x7f080215

    return p0
.end method


# virtual methods
.method public getComponentValue(I)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/data/data/ComponentData;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "1"

    return-object p0

    .line 2
    :cond_0
    invoke-super {p0, p1}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultValue(I)Ljava/lang/String;
    .locals 0

    const-string p0, "1"

    return-object p0
.end method

.method public getDisplayTitleString()I
    .locals 0

    const p0, 0x7f100283

    return p0
.end method

.method public getItems()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    return-object p0
.end method

.method public getKey(I)Ljava/lang/String;
    .locals 0

    const/16 p0, 0xb4

    if-eq p1, p0, :cond_0

    const-string p0, "pref_camera_autoexposure_key"

    return-object p0

    :cond_0
    const-string p0, "pref_pro_video_autoexposure_key"

    return-object p0
.end method

.method public getTrackValue(I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentConfigMeter;->getComponentValue(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "0"

    .line 2
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p0, "average_photometry"

    return-object p0

    :cond_0
    const-string p1, "1"

    .line 3
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p0, "center_weight"

    return-object p0

    :cond_1
    const-string p1, "2"

    .line 4
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "center_photometry"

    return-object p0

    :cond_2
    const-string p0, "unspecified"

    return-object p0
.end method

.method public getValueSelectedDrawableIgnoreClose(I)I
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentConfigMeter;->getComponentValue(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "0"

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/android/camera/data/data/config/ComponentConfigMeter;->getFrameAverage()I

    move-result p0

    return p0

    :cond_0
    const-string v0, "1"

    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-direct {p0}, Lcom/android/camera/data/data/config/ComponentConfigMeter;->getCenterWeighted()I

    move-result p0

    return p0

    :cond_1
    const-string v0, "2"

    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 7
    invoke-direct {p0}, Lcom/android/camera/data/data/config/ComponentConfigMeter;->getSpotMetering()I

    move-result p0

    return p0

    .line 8
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/data/data/config/ComponentConfigMeter;->getCenterWeighted()I

    move-result p0

    return p0
.end method

.method public getValueSelectedStringIdIgnoreClose(I)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentConfigMeter;->getComponentValue(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "0"

    .line 2
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const p0, 0x7f100281

    return p0

    :cond_0
    const-string p1, "1"

    .line 3
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p0, 0x7f100280

    return p0

    :cond_1
    const-string p1, "2"

    .line 4
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const p0, 0x7f100282

    return p0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method public reInit(IILcom/android/camera2/CameraCapabilities;)V
    .locals 3

    .line 1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance p2, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-direct {p0}, Lcom/android/camera/data/data/config/ComponentConfigMeter;->getCenterWeighted()I

    move-result p3

    .line 3
    invoke-direct {p0}, Lcom/android/camera/data/data/config/ComponentConfigMeter;->getCenterWeighted()I

    move-result v0

    const v1, 0x7f100280

    const-string v2, "1"

    invoke-direct {p2, p3, v0, v1, v2}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    .line 4
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    new-instance p2, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-direct {p0}, Lcom/android/camera/data/data/config/ComponentConfigMeter;->getFrameAverage()I

    move-result p3

    .line 6
    invoke-direct {p0}, Lcom/android/camera/data/data/config/ComponentConfigMeter;->getFrameAverage()I

    move-result v0

    const v1, 0x7f100281

    const-string v2, "0"

    invoke-direct {p2, p3, v0, v1, v2}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    .line 7
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    new-instance p2, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-direct {p0}, Lcom/android/camera/data/data/config/ComponentConfigMeter;->getSpotMetering()I

    move-result p3

    .line 9
    invoke-direct {p0}, Lcom/android/camera/data/data/config/ComponentConfigMeter;->getSpotMetering()I

    move-result v0

    const v1, 0x7f100282

    const-string v2, "2"

    invoke-direct {p2, p3, v0, v1, v2}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    .line 10
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    return-void
.end method

.method public setComponentValue(ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/camera/data/data/ComponentData;->setComponentValue(ILjava/lang/String;)V

    return-void
.end method
