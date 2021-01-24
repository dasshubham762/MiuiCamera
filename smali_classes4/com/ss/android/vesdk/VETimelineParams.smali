.class public Lcom/ss/android/vesdk/VETimelineParams;
.super Ljava/lang/Object;
.source "VETimelineParams.java"


# instance fields
.field public aTrimIn:[I

.field public aTrimOut:[I

.field private audioFileIndex:[I

.field public audioFilePaths:[Ljava/lang/String;

.field public enable:[Z

.field public rotate:[Lcom/ss/android/vesdk/ROTATE_DEGREE;

.field public speed:[D

.field public transitions:[Ljava/lang/String;

.field public vTrimIn:[I

.field public vTrimOut:[I

.field public videoFileIndex:[I

.field public videoFilePaths:[Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .locals 4
    .param p1    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    array-length v0, p1

    .line 3
    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/ss/android/vesdk/VETimelineParams;->videoFilePaths:[Ljava/lang/String;

    .line 4
    new-array p1, v0, [I

    iput-object p1, p0, Lcom/ss/android/vesdk/VETimelineParams;->vTrimIn:[I

    const/4 v1, 0x0

    .line 5
    invoke-static {p1, v1}, Ljava/util/Arrays;->fill([II)V

    .line 6
    new-array p1, v0, [I

    iput-object p1, p0, Lcom/ss/android/vesdk/VETimelineParams;->vTrimOut:[I

    const/4 v2, -0x1

    .line 7
    invoke-static {p1, v2}, Ljava/util/Arrays;->fill([II)V

    .line 8
    new-array p1, v0, [I

    iput-object p1, p0, Lcom/ss/android/vesdk/VETimelineParams;->aTrimIn:[I

    .line 9
    invoke-static {p1, v1}, Ljava/util/Arrays;->fill([II)V

    .line 10
    new-array p1, v0, [I

    iput-object p1, p0, Lcom/ss/android/vesdk/VETimelineParams;->aTrimOut:[I

    .line 11
    invoke-static {p1, v2}, Ljava/util/Arrays;->fill([II)V

    .line 12
    new-array p1, v0, [D

    iput-object p1, p0, Lcom/ss/android/vesdk/VETimelineParams;->speed:[D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 13
    invoke-static {p1, v2, v3}, Ljava/util/Arrays;->fill([DD)V

    const/4 p1, 0x0

    .line 14
    iput-object p1, p0, Lcom/ss/android/vesdk/VETimelineParams;->transitions:[Ljava/lang/String;

    .line 15
    iput-object p1, p0, Lcom/ss/android/vesdk/VETimelineParams;->audioFilePaths:[Ljava/lang/String;

    .line 16
    new-array p1, v0, [I

    iput-object p1, p0, Lcom/ss/android/vesdk/VETimelineParams;->videoFileIndex:[I

    .line 17
    new-array p1, v0, [I

    iput-object p1, p0, Lcom/ss/android/vesdk/VETimelineParams;->audioFileIndex:[I

    .line 18
    new-array p1, v0, [Z

    iput-object p1, p0, Lcom/ss/android/vesdk/VETimelineParams;->enable:[Z

    const/4 v2, 0x1

    .line 19
    invoke-static {p1, v2}, Ljava/util/Arrays;->fill([ZZ)V

    .line 20
    new-array p1, v0, [Lcom/ss/android/vesdk/ROTATE_DEGREE;

    iput-object p1, p0, Lcom/ss/android/vesdk/VETimelineParams;->rotate:[Lcom/ss/android/vesdk/ROTATE_DEGREE;

    .line 21
    sget-object v2, Lcom/ss/android/vesdk/ROTATE_DEGREE;->ROTATE_NONE:Lcom/ss/android/vesdk/ROTATE_DEGREE;

    invoke-static {p1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    if-ge v1, v0, :cond_0

    .line 22
    iget-object p1, p0, Lcom/ss/android/vesdk/VETimelineParams;->videoFileIndex:[I

    aput v1, p1, v1

    .line 23
    iget-object p1, p0, Lcom/ss/android/vesdk/VETimelineParams;->audioFileIndex:[I

    aput v1, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
