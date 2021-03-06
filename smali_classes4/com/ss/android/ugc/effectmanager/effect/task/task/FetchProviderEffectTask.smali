.class public Lcom/ss/android/ugc/effectmanager/effect/task/task/FetchProviderEffectTask;
.super Lcom/ss/android/ugc/effectmanager/common/task/NormalTask;
.source "FetchProviderEffectTask.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FetchProviderEffectTask"


# instance fields
.field private count:I

.field private cursor:I

.field private mConfiguration:Lcom/ss/android/ugc/effectmanager/EffectConfiguration;

.field private mCurCnt:I

.field private mEffectContext:Lcom/ss/android/ugc/effectmanager/context/EffectContext;

.field private mFileCache:Lcom/ss/android/ugc/effectmanager/common/listener/ICache;

.field private mJsonConverter:Lcom/ss/android/ugc/effectmanager/common/listener/IJsonConverter;

.field private mProviderName:Ljava/lang/String;

.field private mRemoteIp:Ljava/lang/String;

.field private mRequestedUrl:Ljava/lang/String;

.field private mSelectedHost:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/ss/android/ugc/effectmanager/context/EffectContext;Ljava/lang/String;Ljava/lang/String;IILandroid/os/Handler;)V
    .locals 1

    const-string v0, "NETWORK"

    .line 1
    invoke-direct {p0, p6, p2, v0}, Lcom/ss/android/ugc/effectmanager/common/task/NormalTask;-><init>(Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iput p4, p0, Lcom/ss/android/ugc/effectmanager/effect/task/task/FetchProviderEffectTask;->cursor:I

    .line 3
    iput p5, p0, Lcom/ss/android/ugc/effectmanager/effect/task/task/FetchProviderEffectTask;->count:I

    .line 4
    iput-object p3, p0, Lcom/ss/android/ugc/effectmanager/effect/task/task/FetchProviderEffectTask;->mProviderName:Ljava/lang/String;

    .line 5
    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/effect/task/task/FetchProviderEffectTask;->mEffectContext:Lcom/ss/android/ugc/effectmanager/context/EffectContext;

    .line 6
    invoke-virtual {p1}, Lcom/ss/android/ugc/effectmanager/context/EffectContext;->getEffectConfiguration()Lcom/ss/android/ugc/effectmanager/EffectConfiguration;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/effect/task/task/FetchProviderEffectTask;->mConfiguration:Lcom/ss/android/ugc/effectmanager/EffectConfiguration;

    .line 7
    invoke-virtual {p1}, Lcom/ss/android/ugc/effectmanager/EffectConfiguration;->getCache()Lcom/ss/android/ugc/effectmanager/common/listener/ICache;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/effect/task/task/FetchProviderEffectTask;->mFileCache:Lcom/ss/android/ugc/effectmanager/common/listener/ICache;

    .line 8
    iget-object p1, p0, Lcom/ss/android/ugc/effectmanager/effect/task/task/FetchProviderEffectTask;->mConfiguration:Lcom/ss/android/ugc/effectmanager/EffectConfiguration;

    invoke-virtual {p1}, Lcom/ss/android/ugc/effectmanager/EffectConfiguration;->getJsonConverter()Lcom/ss/android/ugc/effectmanager/common/listener/IJsonConverter;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/effect/task/task/FetchProviderEffectTask;->mJsonConverter:Lcom/ss/android/ugc/effectmanager/common/listener/IJsonConverter;

    .line 9
    iget-object p1, p0, Lcom/ss/android/ugc/effectmanager/effect/task/task/FetchProviderEffectTask;->mConfiguration:Lcom/ss/android/ugc/effectmanager/EffectConfiguration;

    invoke-virtual {p1}, Lcom/ss/android/ugc/effectmanager/EffectConfiguration;->getRetryCount()I

    move-result p1

    iput p1, p0, Lcom/ss/android/ugc/effectmanager/effect/task/task/FetchProviderEffectTask;->mCurCnt:I

    return-void
.end method

.method private buildEffectListRequest()Lcom/ss/android/ugc/effectmanager/common/EffectRequest;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/ss/android/ugc/effectmanager/effect/task/task/FetchProviderEffectTask;->mConfiguration:Lcom/ss/android/ugc/effectmanager/EffectConfiguration;

    invoke-virtual {v1}, Lcom/ss/android/ugc/effectmanager/EffectConfiguration;->getAccessKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/ss/android/ugc/effectmanager/effect/task/task/FetchProviderEffectTask;->mConfiguration:Lcom/ss/android/ugc/effectmanager/EffectConfiguration;

    invoke-virtual {v1}, Lcom/ss/android/ugc/effectmanager/EffectConfiguration;->getAccessKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "access_key"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/ss/android/ugc/effectmanager/effect/task/task/FetchProviderEffectTask;->mConfiguration:Lcom/ss/android/ugc/effectmanager/EffectConfiguration;

    invoke-virtual {v1}, Lcom/ss/android/ugc/effectmanager/EffectConfiguration;->getAppVersion()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 5
    iget-object v1, p0, Lcom/ss/android/ugc/effectmanager/effect/task/task/FetchProviderEffectTask;->mConfiguration:Lcom/ss/android/ugc/effectmanager/EffectConfiguration;

    invoke-virtual {v1}, Lcom/ss/android/ugc/effectmanager/EffectConfiguration;->getAppVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "app_version"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :cond_1
    iget-object v1, p0, Lcom/ss/android/ugc/effectmanager/effect/task/task/FetchProviderEffectTask;->mConfiguration:Lcom/ss/android/ugc/effectmanager/EffectConfiguration;

    invoke-virtual {v1}, Lcom/ss/android/ugc/effectmanager/EffectConfiguration;->getSdkVersion()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 7
    iget-object v1, p0, Lcom/ss/android/ugc/effectmanager/effect/task/task/FetchProviderEffectTask;->mConfiguration:Lcom/ss/android/ugc/effectmanager/EffectConfiguration;

    invoke-virtual {v1}, Lcom/ss/android/ugc/effectmanager/EffectConfiguration;->getSdkVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sdk_version"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    :cond_2
    iget-object v1, p0, Lcom/ss/android/ugc/effectmanager/effect/task/task/FetchProviderEffectTask;->mConfiguration:Lcom/ss/android/ugc/effectmanager/EffectConfiguration;

    invoke-virtual {v1}, Lcom/ss/android/ugc/effectmanager/EffectConfiguration;->getChannel()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 9
    iget-object v1, p0, Lcom/ss/android/ugc/effectmanager/effect/task/task/FetchProviderEffectTask;->mConfiguration:Lcom/ss/android/ugc/effectmanager/EffectConfiguration;

    invoke-virtual {v1}, Lcom/ss/android/ugc/effectmanager/EffectConfiguration;->getChannel()Ljava/lang/String;

    move-result-object v1

    const-string v2, "channel"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    :cond_3
    iget-object v1, p0, Lcom/ss/android/ugc/effectmanager/effect/task/task/FetchProviderEffectTask;->mProviderName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 11
    iget-object v1, p0, Lcom/ss/android/ugc/effectmanager/effect/task/task/FetchProviderEffectTask;->mProviderName:Ljava/lang/String;

    const-string v2, "library"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    :cond_4
    iget-object v1, p0, Lcom/ss/android/ugc/effectmanager/effect/task/task/FetchProviderEffectTask;->mConfiguration:Lcom/ss/android/ugc/effectmanager/EffectConfiguration;

    invoke-virtual {v1}, Lcom/ss/android/ugc/effectmanager/EffectConfiguration;->getPlatform()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 13
    iget-object v1, p0, Lcom/ss/android/ugc/effectmanager/effect/task/task/FetchProviderEffectTask;->mConfiguration:Lcom/ss/android/ugc/effectmanager/EffectConfiguration;

    invoke-virtual {v1}, Lcom/ss/android/ugc/effectmanager/EffectConfiguration;->getPlatform()Ljava/lang/String;

    move-result-object v1

    const-string v2, "device_platform"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    :cond_5
    iget-object v1, p0, Lcom/ss/android/ugc/effectmanager/effect/task/task/FetchProviderEffectTask;->mConfiguration:Lcom/ss/android/ugc/effectmanager/EffectConfiguration;

    invoke-virtual {v1}, Lcom/ss/android/ugc/effectmanager/EffectConfiguration;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 15
    iget-object v1, p0, Lcom/ss/android/ugc/effectmanager/effect/task/task/FetchProviderEffectTask;->mConfiguration:Lcom/ss/android/ugc/effectmanager/EffectConfiguration;

    invoke-virtual {v1}, Lcom/ss/android/ugc/effectmanager/EffectConfiguration;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "device_id"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    :cond_6
    iget-object v1, p0, Lcom/ss/android/ugc/effectmanager/effect/task/task/FetchProviderEffectTask;->mConfiguration:Lcom/ss/android/ugc/effectmanager/EffectConfiguration;

    invoke-virtual {v1}, Lcom/ss/android/ugc/effectmanager/EffectConfiguration;->getRegion()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 17
    iget-object v1, p0, Lcom/ss/android/ugc/effectmanager/effect/task/task/FetchProviderEffectTask;->mConfiguration:Lcom/ss/android/ugc/effectmanager/EffectConfiguration;

    invoke-virtual {v1}, Lcom/ss/android/ugc/effectmanager/EffectConfiguration;->getRegion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "region"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    :cond_7
    iget-object v1, p0, Lcom/ss/android/ugc/effectmanager/effect/task/task/FetchProviderEffectTask;->mConfiguration:Lcom/ss/android/ugc/effectmanager/EffectConfiguration;

    invoke-virtual {v1}, Lcom/ss/android/ugc/effectmanager/EffectConfiguration;->getDeviceType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 19
    iget-object v1, p0, Lcom/ss/android/ugc/effectmanager/effect/task/task/FetchProviderEffectTask;->mConfiguration:Lcom/ss/android/ugc/effectmanager/EffectConfiguration;

    invoke-virtual {v1}, Lcom/ss/android/ugc/effectmanager/EffectConfiguration;->getDeviceType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "device_type"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    :cond_8
    iget-object v1, p0, Lcom/ss/android/ugc/effectmanager/effect/task/task/FetchProviderEffectTask;->mConfiguration:Lcom/ss/android/ugc/effectmanager/EffectConfiguration;

    invoke-virtual {v1}, Lcom/ss/android/ugc/effectmanager/EffectConfiguration;->getAppID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 21
    iget-object v1, p0, Lcom/ss/android/ugc/effectmanager/effect/task/task/FetchProviderEffectTask;->mConfiguration:Lcom/ss/android/ugc/effectmanager/EffectConfiguration;

    invoke-virtual {v1}, Lcom/ss/android/ugc/effectmanager/EffectConfiguration;->getAppID()Ljava/lang/String;

    move-result-object v1

    const-string v2, "aid"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    :cond_9
    iget-object v1, p0, Lcom/ss/android/ugc/effectmanager/effect/task/task/FetchProviderEffectTask;->mConfiguration:Lcom/ss/android/ugc/effectmanager/EffectConfiguration;

    invoke-virtual {v1}, Lcom/ss/android/ugc/effectmanager/EffectConfiguration;->getAppLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 23
    iget-object v1, p0, Lcom/ss/android/ugc/effectmanager/effect/task/task/FetchProviderEffectTask;->mConfiguration:Lcom/ss/android/ugc/effectmanager/EffectConfiguration;

    invoke-virtual {v1}, Lcom/ss/android/ugc/effectmanager/EffectConfiguration;->getAppLanguage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "app_language"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    :cond_a
    iget-object v1, p0, Lcom/ss/android/ugc/effectmanager/effect/task/task/FetchProviderEffectTask;->mConfiguration:Lcom/ss/android/ugc/effectmanager/EffectConfiguration;

    invoke-virtual {v1}, Lcom/ss/android/ugc/effectmanager/EffectConfiguration;->getSysLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 25
    iget-object v1, p0, Lcom/ss/android/ugc/effectmanager/effect/task/task/FetchProviderEffectTask;->mConfiguration:Lcom/ss/android/ugc/effectmanager/EffectConfiguration;

    invoke-virtual {v1}, Lcom/ss/android/ugc/effectmanager/EffectConfiguration;->getSysLanguage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "language"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    :cond_b
    iget v1, p0, Lcom/ss/android/ugc/effectmanager/effect/task/task/FetchProviderEffectTask;->cursor:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "cursor"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    iget v1, p0, Lcom/ss/android/ugc/effectmanager/effect/task/task/FetchProviderEffectTask;->count:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "count"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    iget-object v1, p0, Lcom/ss/android/ugc/effectmanager/effect/task/task/FetchProviderEffectTask;->mEffectContext:Lcom/ss/android/ugc/effectmanager/context/EffectContext;

    invoke-virtual {v1}, Lcom/ss/android/ugc/effectmanager/context/EffectContext;->getLinkSelector()Lcom/ss/android/ugc/effectmanager/link/LinkSelector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ss/android/ugc/effectmanager/link/LinkSelector;->getBestHostUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ss/android/ugc/effectmanager/effect/task/task/FetchProviderEffectTask;->mSelectedHost:Ljava/lang/String;

    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/ss/android/ugc/effectmanager/effect/task/task/FetchProviderEffectTask;->mSelectedHost:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ss/android/ugc/effectmanager/effect/task/task/FetchProviderEffectTask;->mConfiguration:Lcom/ss/android/ugc/effectmanager/EffectConfiguration;

    invoke-virtual {v2}, Lcom/ss/android/ugc/effectmanager/EffectConfiguration;->getApiAdress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/stickers/recommend"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/ugc/effectmanager/common/utils/NetworkUtils;->buildRequestUrl(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 30
    iput-object v0, p0, Lcom/ss/android/ugc/effectmanager/effect/task/task/FetchProviderEffectTask;->mRequestedUrl:Ljava/lang/String;

    .line 31
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 32
    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    .line 33
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ss/android/ugc/effectmanager/effect/task/task/FetchProviderEffectTask;->mRemoteIp:Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 34
    invoke-virtual {p0}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 35
    invoke-virtual {p0}, Ljava/net/UnknownHostException;->printStackTrace()V

    .line 36
    :goto_0
    new-instance p0, Lcom/ss/android/ugc/effectmanager/common/EffectRequest;

    const-string v1, "GET"

    invoke-direct {p0, v1, v0}, Lcom/ss/android/ugc/effectmanager/common/EffectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method private fillEffectPath(Lcom/ss/android/ugc/effectmanager/effect/model/ProviderEffectModel;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Lcom/ss/android/ugc/effectmanager/effect/model/ProviderEffectModel;->getStickerList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/ss/android/ugc/effectmanager/effect/model/ProviderEffectModel;->getStickerList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/ugc/effectmanager/effect/model/ProviderEffect;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/ss/android/ugc/effectmanager/effect/task/task/FetchProviderEffectTask;->mConfiguration:Lcom/ss/android/ugc/effectmanager/EffectConfiguration;

    invoke-virtual {v2}, Lcom/ss/android/ugc/effectmanager/EffectConfiguration;->getEffectDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {v0}, Lcom/ss/android/ugc/effectmanager/effect/model/ProviderEffect;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".gif"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-virtual {v0, v1}, Lcom/ss/android/ugc/effectmanager/effect/model/ProviderEffect;->setPath(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private saveEffectList(Lcom/ss/android/ugc/effectmanager/effect/model/ProviderEffectModel;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ss/android/ugc/effectmanager/effect/task/task/FetchProviderEffectTask;->mFileCache:Lcom/ss/android/ugc/effectmanager/common/listener/ICache;

    iget-object v1, p0, Lcom/ss/android/ugc/effectmanager/effect/task/task/FetchProviderEffectTask;->mConfiguration:Lcom/ss/android/ugc/effectmanager/EffectConfiguration;

    invoke-virtual {v1}, Lcom/ss/android/ugc/effectmanager/EffectConfiguration;->getChannel()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ss/android/ugc/effectmanager/effect/task/task/FetchProviderEffectTask;->mProviderName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/ss/android/ugc/effectmanager/common/utils/EffectCacheKeyGenerator;->generatePanelKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/effect/task/task/FetchProviderEffectTask;->mJsonConverter:Lcom/ss/android/ugc/effectmanager/common/listener/IJsonConverter;

    .line 2
    invoke-interface {p0, p1}, Lcom/ss/android/ugc/effectmanager/common/listener/IJsonConverter;->convertObjToJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 3
    invoke-interface {v0, v1, p0}, Lcom/ss/android/ugc/effectmanager/common/listener/ICache;->save(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 6

    .line 1
    invoke-direct {p0}, Lcom/ss/android/ugc/effectmanager/effect/task/task/FetchProviderEffectTask;->buildEffectListRequest()Lcom/ss/android/ugc/effectmanager/common/EffectRequest;

    move-result-object v0

    .line 2
    :cond_0
    iget v1, p0, Lcom/ss/android/ugc/effectmanager/effect/task/task/FetchProviderEffectTask;->mCurCnt:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/ss/android/ugc/effectmanager/effect/task/task/FetchProviderEffectTask;->mCurCnt:I

    if-eqz v1, :cond_4

    const/16 v1, 0x12

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/ss/android/ugc/effectmanager/common/task/NormalTask;->isCanceled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4
    new-instance v2, Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;

    const/16 v3, 0x2711

    invoke-direct {v2, v3}, Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;-><init>(I)V

    .line 5
    iget-object v3, p0, Lcom/ss/android/ugc/effectmanager/effect/task/task/FetchProviderEffectTask;->mRequestedUrl:Ljava/lang/String;

    iget-object v4, p0, Lcom/ss/android/ugc/effectmanager/effect/task/task/FetchProviderEffectTask;->mSelectedHost:Ljava/lang/String;

    iget-object v5, p0, Lcom/ss/android/ugc/effectmanager/effect/task/task/FetchProviderEffectTask;->mRemoteIp:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;->setTrackParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    new-instance v3, Lcom/ss/android/ugc/effectmanager/effect/task/result/ProviderEffectTaskResult;

    new-instance v4, Lcom/ss/android/ugc/effectmanager/effect/model/ProviderEffectModel;

    invoke-direct {v4}, Lcom/ss/android/ugc/effectmanager/effect/model/ProviderEffectModel;-><init>()V

    invoke-direct {v3, v4, v2}, Lcom/ss/android/ugc/effectmanager/effect/task/result/ProviderEffectTaskResult;-><init>(Lcom/ss/android/ugc/effectmanager/effect/model/ProviderEffectModel;Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;)V

    invoke-virtual {p0, v1, v3}, Lcom/ss/android/ugc/effectmanager/common/task/NormalTask;->sendMessage(ILcom/ss/android/ugc/effectmanager/common/task/BaseTaskResult;)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v2, p0, Lcom/ss/android/ugc/effectmanager/effect/task/task/FetchProviderEffectTask;->mConfiguration:Lcom/ss/android/ugc/effectmanager/EffectConfiguration;

    .line 8
    invoke-virtual {v2}, Lcom/ss/android/ugc/effectmanager/EffectConfiguration;->getEffectNetWorker()Lcom/ss/android/ugc/effectmanager/network/EffectNetWorkerWrapper;

    move-result-object v2

    iget-object v3, p0, Lcom/ss/android/ugc/effectmanager/effect/task/task/FetchProviderEffectTask;->mJsonConverter:Lcom/ss/android/ugc/effectmanager/common/listener/IJsonConverter;

    const-class v4, Lcom/ss/android/ugc/effectmanager/effect/model/net/ProviderEffectListResponse;

    invoke-virtual {v2, v0, v3, v4}, Lcom/ss/android/ugc/effectmanager/network/EffectNetWorkerWrapper;->execute(Lcom/ss/android/ugc/effectmanager/common/EffectRequest;Lcom/ss/android/ugc/effectmanager/common/listener/IJsonConverter;Ljava/lang/Class;)Lcom/ss/android/ugc/effectmanager/common/model/BaseNetResponse;

    move-result-object v2

    check-cast v2, Lcom/ss/android/ugc/effectmanager/effect/model/net/ProviderEffectListResponse;

    .line 9
    invoke-virtual {v2}, Lcom/ss/android/ugc/effectmanager/effect/model/net/ProviderEffectListResponse;->checkValue()Z

    move-result v3

    if-nez v3, :cond_2

    .line 10
    iget v2, p0, Lcom/ss/android/ugc/effectmanager/effect/task/task/FetchProviderEffectTask;->mCurCnt:I

    if-nez v2, :cond_0

    .line 11
    new-instance v2, Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;

    const/16 v3, 0x2712

    invoke-direct {v2, v3}, Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;-><init>(I)V

    .line 12
    iget-object v3, p0, Lcom/ss/android/ugc/effectmanager/effect/task/task/FetchProviderEffectTask;->mRequestedUrl:Ljava/lang/String;

    iget-object v4, p0, Lcom/ss/android/ugc/effectmanager/effect/task/task/FetchProviderEffectTask;->mSelectedHost:Ljava/lang/String;

    iget-object v5, p0, Lcom/ss/android/ugc/effectmanager/effect/task/task/FetchProviderEffectTask;->mRemoteIp:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;->setTrackParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    new-instance v3, Lcom/ss/android/ugc/effectmanager/effect/task/result/ProviderEffectTaskResult;

    new-instance v4, Lcom/ss/android/ugc/effectmanager/effect/model/ProviderEffectModel;

    invoke-direct {v4}, Lcom/ss/android/ugc/effectmanager/effect/model/ProviderEffectModel;-><init>()V

    invoke-direct {v3, v4, v2}, Lcom/ss/android/ugc/effectmanager/effect/task/result/ProviderEffectTaskResult;-><init>(Lcom/ss/android/ugc/effectmanager/effect/model/ProviderEffectModel;Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;)V

    invoke-virtual {p0, v1, v3}, Lcom/ss/android/ugc/effectmanager/common/task/NormalTask;->sendMessage(ILcom/ss/android/ugc/effectmanager/common/task/BaseTaskResult;)V

    goto :goto_0

    .line 14
    :cond_2
    invoke-virtual {v2}, Lcom/ss/android/ugc/effectmanager/effect/model/net/ProviderEffectListResponse;->getData()Lcom/ss/android/ugc/effectmanager/effect/model/ProviderEffectModel;

    move-result-object v2

    .line 15
    invoke-direct {p0, v2}, Lcom/ss/android/ugc/effectmanager/effect/task/task/FetchProviderEffectTask;->fillEffectPath(Lcom/ss/android/ugc/effectmanager/effect/model/ProviderEffectModel;)V

    .line 16
    invoke-direct {p0, v2}, Lcom/ss/android/ugc/effectmanager/effect/task/task/FetchProviderEffectTask;->saveEffectList(Lcom/ss/android/ugc/effectmanager/effect/model/ProviderEffectModel;)V

    .line 17
    new-instance v3, Lcom/ss/android/ugc/effectmanager/effect/task/result/ProviderEffectTaskResult;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4}, Lcom/ss/android/ugc/effectmanager/effect/task/result/ProviderEffectTaskResult;-><init>(Lcom/ss/android/ugc/effectmanager/effect/model/ProviderEffectModel;Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;)V

    invoke-virtual {p0, v1, v3}, Lcom/ss/android/ugc/effectmanager/common/task/NormalTask;->sendMessage(ILcom/ss/android/ugc/effectmanager/common/task/BaseTaskResult;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 18
    iget v3, p0, Lcom/ss/android/ugc/effectmanager/effect/task/task/FetchProviderEffectTask;->mCurCnt:I

    if-eqz v3, :cond_3

    instance-of v3, v2, Lcom/ss/android/ugc/effectmanager/common/exception/StatusCodeException;

    if-eqz v3, :cond_0

    .line 19
    :cond_3
    new-instance v0, Lcom/ss/android/ugc/effectmanager/effect/task/result/ProviderEffectTaskResult;

    new-instance v3, Lcom/ss/android/ugc/effectmanager/effect/model/ProviderEffectModel;

    invoke-direct {v3}, Lcom/ss/android/ugc/effectmanager/effect/model/ProviderEffectModel;-><init>()V

    new-instance v4, Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;

    invoke-direct {v4, v2}, Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;-><init>(Ljava/lang/Exception;)V

    invoke-direct {v0, v3, v4}, Lcom/ss/android/ugc/effectmanager/effect/task/result/ProviderEffectTaskResult;-><init>(Lcom/ss/android/ugc/effectmanager/effect/model/ProviderEffectModel;Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;)V

    invoke-virtual {p0, v1, v0}, Lcom/ss/android/ugc/effectmanager/common/task/NormalTask;->sendMessage(ILcom/ss/android/ugc/effectmanager/common/task/BaseTaskResult;)V

    :cond_4
    :goto_0
    return-void
.end method
