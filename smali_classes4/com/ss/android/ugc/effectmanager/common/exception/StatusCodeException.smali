.class public Lcom/ss/android/ugc/effectmanager/common/exception/StatusCodeException;
.super Ljava/lang/Exception;
.source "StatusCodeException.java"


# instance fields
.field private mStatusCode:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 2
    iput p1, p0, Lcom/ss/android/ugc/effectmanager/common/exception/StatusCodeException;->mStatusCode:I

    return-void
.end method


# virtual methods
.method public getStatusCode()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ss/android/ugc/effectmanager/common/exception/StatusCodeException;->mStatusCode:I

    return p0
.end method

.method public setStatusCode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ss/android/ugc/effectmanager/common/exception/StatusCodeException;->mStatusCode:I

    return-void
.end method
