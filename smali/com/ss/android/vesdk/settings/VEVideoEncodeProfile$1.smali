.class final Lcom/ss/android/vesdk/settings/VEVideoEncodeProfile$1;
.super Ljava/lang/Object;
.source "VEVideoEncodeProfile.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/vesdk/settings/VEVideoEncodeProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/ss/android/vesdk/settings/VEVideoEncodeProfile;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/ss/android/vesdk/settings/VEVideoEncodeProfile;
    .locals 0

    .line 2
    invoke-static {}, Lcom/ss/android/vesdk/settings/VEVideoEncodeProfile;->values()[Lcom/ss/android/vesdk/settings/VEVideoEncodeProfile;

    move-result-object p0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    aget-object p0, p0, p1

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/settings/VEVideoEncodeProfile$1;->createFromParcel(Landroid/os/Parcel;)Lcom/ss/android/vesdk/settings/VEVideoEncodeProfile;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/ss/android/vesdk/settings/VEVideoEncodeProfile;
    .locals 0

    .line 2
    new-array p0, p1, [Lcom/ss/android/vesdk/settings/VEVideoEncodeProfile;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/settings/VEVideoEncodeProfile$1;->newArray(I)[Lcom/ss/android/vesdk/settings/VEVideoEncodeProfile;

    move-result-object p0

    return-object p0
.end method
