.class public final Lcom/google/android/apps/gsa/search/shared/service/proto/LensServiceClientEventData;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "LensServiceClientEventData.java"

# interfaces
.implements Lcom/google/android/apps/gsa/search/shared/service/proto/LensServiceClientEventDataOrBuilder;


# annotations
.annotation build Lcom/google/protobuf/ProtoMessage;
    checkInitialized = {}
    messageSetWireFormat = false
    protoSyntax = .enum Lcom/google/protobuf/ProtoSyntax;->PROTO2:Lcom/google/protobuf/ProtoSyntax;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/gsa/search/shared/service/proto/LensServiceClientEventData$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/android/apps/gsa/search/shared/service/proto/LensServiceClientEventData;",
        "Lcom/google/android/apps/gsa/search/shared/service/proto/LensServiceClientEventData$Builder;",
        ">;",
        "Lcom/google/android/apps/gsa/search/shared/service/proto/LensServiceClientEventDataOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/android/apps/gsa/search/shared/service/proto/LensServiceClientEventData;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/android/apps/gsa/search/shared/service/proto/LensServiceClientEventData;",
            ">;"
        }
    .end annotation
.end field

.field public static final TARGET_SERVICE_API_VERSION_FIELD_NUMBER:I = 0x1


# instance fields
.field private bitField0_:I
    .annotation build Lcom/google/protobuf/ProtoPresenceBits;
        id = 0x0
    .end annotation
.end field

.field private targetServiceApiVersion_:I
    .annotation build Lcom/google/protobuf/ProtoField;
        fieldNumber = 0x1
        isRequired = false
        type = .enum Lcom/google/protobuf/FieldType;->INT32:Lcom/google/protobuf/FieldType;
    .end annotation

    .annotation build Lcom/google/protobuf/ProtoPresenceCheckedField;
        mask = 0x1
        presenceBitsId = 0x0
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/apps/gsa/search/shared/service/proto/LensServiceClientEventData;

    invoke-direct {v0}, Lcom/google/android/apps/gsa/search/shared/service/proto/LensServiceClientEventData;-><init>()V

    sput-object v0, Lcom/google/android/apps/gsa/search/shared/service/proto/LensServiceClientEventData;->DEFAULT_INSTANCE:Lcom/google/android/apps/gsa/search/shared/service/proto/LensServiceClientEventData;

    .line 2
    const-class v1, Lcom/google/android/apps/gsa/search/shared/service/proto/LensServiceClientEventData;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/google/android/apps/gsa/search/shared/service/proto/LensServiceClientEventData;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/apps/gsa/search/shared/service/proto/LensServiceClientEventData;->DEFAULT_INSTANCE:Lcom/google/android/apps/gsa/search/shared/service/proto/LensServiceClientEventData;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/apps/gsa/search/shared/service/proto/LensServiceClientEventData;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/apps/gsa/search/shared/service/proto/LensServiceClientEventData;->setTargetServiceApiVersion(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/apps/gsa/search/shared/service/proto/LensServiceClientEventData;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/apps/gsa/search/shared/service/proto/LensServiceClientEventData;->clearTargetServiceApiVersion()V

    return-void
.end method

.method private clearTargetServiceApiVersion()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/apps/gsa/search/shared/service/proto/LensServiceClientEventData;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/android/apps/gsa/search/shared/service/proto/LensServiceClientEventData;->bitField0_:I

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/google/android/apps/gsa/search/shared/service/proto/LensServiceClientEventData;->targetServiceApiVersion_:I

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/android/apps/gsa/search/shared/service/proto/LensServiceClientEventData;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/apps/gsa/search/shared/service/proto/LensServiceClientEventData;->DEFAULT_INSTANCE:Lcom/google/android/apps/gsa/search/shared/service/proto/LensServiceClientEventData;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/android/apps/gsa/search/shared/service/proto/LensServiceClientEventData$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/apps/gsa/search/shared/service/proto/LensServiceClientEventData;->DEFAULT_INSTANCE:Lcom/google/android/apps/gsa/search/shared/service/proto/LensServiceClientEventData;

    invoke-virtual {v0}, Lcom/google/android/apps/gsa/search/shared/service/proto/LensServiceClientEventData;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/gsa/search/shared/service/proto/LensServiceClientEventData$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/android/apps/gsa/search/shared/service/proto/LensServiceClientEventData;)Lcom/google/android/apps/gsa/search/shared/service/proto/LensServiceClientEventData$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/google/android/apps/gsa/search/shared/service/proto/LensServiceClientEventData;->DEFAULT_INSTANCE:Lcom/google/android/apps/gsa/search/shared/service/proto/LensServiceClientEventData;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/gsa/search/shared/service/proto/LensServiceClientEventData;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/android/apps/gsa/search/shared/service/proto/LensServiceClientEventData$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/android/apps/gsa/search/shared/service/proto/LensServiceClientEventData;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/apps/gsa/search/shared/service/proto/LensServiceClientEventData;->DEFAULT_INSTANCE:Lcom/google/android/apps/gsa/search/shared/service/proto/LensServiceClientEventData;

    invoke-static {v0, p0}, Lcom/google/android/apps/gsa/search/shared/service/proto/LensServiceClientEventData;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/android/apps/gsa/search/shared/service/proto/LensServiceClientEventData;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/apps/gsa/search/shared/service/proto/LensServiceClientEventData;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/google/android/apps/gsa/search/shared/service/proto/LensServiceClientEventData;->DEFAULT_INSTANCE:Lcom/google/android/apps/gsa/search/shared/service/proto/LensServiceClientEventData;

    invoke-static {v0, p0, p1}, Lcom/google/android/apps/gsa/search/shared/service/proto/LensServiceClientEventData;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/android/apps/gsa/search/shared/service/proto/LensServiceClientEventData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/android/apps/gsa/search/shared/service/proto/LensServiceClientEventData;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/google/android/apps/gsa/search/shared/service/proto/LensServiceClientEventData;->DEFAULT_INSTANCE:Lcom/google/android/apps/gsa/search/shared/service/proto/LensServiceClientEventData;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/android/apps/gsa/search/shared/service/proto/LensServiceClientEventData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/apps/gsa/search/shared/service/proto/LensServiceClientEventData;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/google/android/apps/gsa/search/shared/service/proto/LensServiceClientEventData;->DEFAULT_INSTANCE:Lcom/google/android/apps/gsa/search/shared/service/proto/LensServiceClientEventData;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/android/apps/gsa/search/shared/service/proto/LensServiceClientEventData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/android/apps/gsa/search/shared/service/proto/LensServiceClientEventData;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/google/android/apps/gsa/search/shared/service/proto/LensServiceClientEventData;->DEFAULT_INSTANCE:Lcom/google/android/apps/gsa/search/shared/service/proto/LensServiceClientEventData;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/android/apps/gsa/search/shared/service/proto/LensServiceClientEventData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/apps/gsa/search/shared/service/proto/LensServiceClientEventData;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    sget-object v0, Lcom/google/android/apps/gsa/search/shared/service/proto/LensServiceClientEventData;->DEFAULT_INSTANCE:Lcom/google/android/apps/gsa/search/shared/service/proto/LensServiceClientEventData;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/android/apps/gsa/search/shared/service/proto/LensServiceClientEventData;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/android/apps/gsa/search/shared/service/proto/LensServiceClientEventData;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/google/android/apps/gsa/search/shared/service/proto/LensServiceClientEventData;->DEFAULT_INSTANCE:Lcom/google/android/apps/gsa/search/shared/service/proto/LensServiceClientEventData;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/android/apps/gsa/search/shared/service/proto/LensServiceClientEventData;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/apps/gsa/search/shared/service/proto/LensServiceClientEventData;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    sget-object v0, Lcom/google/android/apps/gsa/search/shared/service/proto/LensServiceClientEventData;->DEFAULT_INSTANCE:Lcom/google/android/apps/gsa/search/shared/service/proto/LensServiceClientEventData;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/android/apps/gsa/search/shared/service/proto/LensServiceClientEventData;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/android/apps/gsa/search/shared/service/proto/LensServiceClientEventData;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/apps/gsa/search/shared/service/proto/LensServiceClientEventData;->DEFAULT_INSTANCE:Lcom/google/android/apps/gsa/search/shared/service/proto/LensServiceClientEventData;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/android/apps/gsa/search/shared/service/proto/LensServiceClientEventData;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/apps/gsa/search/shared/service/proto/LensServiceClientEventData;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/google/android/apps/gsa/search/shared/service/proto/LensServiceClientEventData;->DEFAULT_INSTANCE:Lcom/google/android/apps/gsa/search/shared/service/proto/LensServiceClientEventData;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/android/apps/gsa/search/shared/service/proto/LensServiceClientEventData;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/android/apps/gsa/search/shared/service/proto/LensServiceClientEventData;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/google/android/apps/gsa/search/shared/service/proto/LensServiceClientEventData;->DEFAULT_INSTANCE:Lcom/google/android/apps/gsa/search/shared/service/proto/LensServiceClientEventData;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/android/apps/gsa/search/shared/service/proto/LensServiceClientEventData;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/apps/gsa/search/shared/service/proto/LensServiceClientEventData;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/google/android/apps/gsa/search/shared/service/proto/LensServiceClientEventData;->DEFAULT_INSTANCE:Lcom/google/android/apps/gsa/search/shared/service/proto/LensServiceClientEventData;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/android/apps/gsa/search/shared/service/proto/LensServiceClientEventData;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/android/apps/gsa/search/shared/service/proto/LensServiceClientEventData;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/apps/gsa/search/shared/service/proto/LensServiceClientEventData;->DEFAULT_INSTANCE:Lcom/google/android/apps/gsa/search/shared/service/proto/LensServiceClientEventData;

    invoke-virtual {v0}, Lcom/google/android/apps/gsa/search/shared/service/proto/LensServiceClientEventData;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setTargetServiceApiVersion(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/apps/gsa/search/shared/service/proto/LensServiceClientEventData;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/apps/gsa/search/shared/service/proto/LensServiceClientEventData;->bitField0_:I

    .line 2
    iput p1, p0, Lcom/google/android/apps/gsa/search/shared/service/proto/LensServiceClientEventData;->targetServiceApiVersion_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "method",
            "arg0",
            "arg1"
        }
    .end annotation

    .line 1
    sget-object p0, Lcom/google/android/apps/gsa/search/shared/service/proto/LensServiceClientEventData$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x1

    const/4 p2, 0x0

    packed-switch p0, :pswitch_data_0

    .line 2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :pswitch_0
    return-object p2

    .line 3
    :pswitch_1
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    .line 4
    :pswitch_2
    sget-object p0, Lcom/google/android/apps/gsa/search/shared/service/proto/LensServiceClientEventData;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_1

    .line 5
    const-class p1, Lcom/google/android/apps/gsa/search/shared/service/proto/LensServiceClientEventData;

    monitor-enter p1

    .line 6
    :try_start_0
    sget-object p0, Lcom/google/android/apps/gsa/search/shared/service/proto/LensServiceClientEventData;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_0

    .line 7
    new-instance p0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p2, Lcom/google/android/apps/gsa/search/shared/service/proto/LensServiceClientEventData;->DEFAULT_INSTANCE:Lcom/google/android/apps/gsa/search/shared/service/proto/LensServiceClientEventData;

    invoke-direct {p0, p2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 8
    sput-object p0, Lcom/google/android/apps/gsa/search/shared/service/proto/LensServiceClientEventData;->PARSER:Lcom/google/protobuf/Parser;

    .line 9
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    return-object p0

    .line 10
    :pswitch_3
    sget-object p0, Lcom/google/android/apps/gsa/search/shared/service/proto/LensServiceClientEventData;->DEFAULT_INSTANCE:Lcom/google/android/apps/gsa/search/shared/service/proto/LensServiceClientEventData;

    return-object p0

    :pswitch_4
    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string p3, "bitField0_"

    aput-object p3, p0, p2

    const-string p2, "targetServiceApiVersion_"

    aput-object p2, p0, p1

    .line 11
    sget-object p1, Lcom/google/android/apps/gsa/search/shared/service/proto/LensServiceClientEventData;->DEFAULT_INSTANCE:Lcom/google/android/apps/gsa/search/shared/service/proto/LensServiceClientEventData;

    const-string p2, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0002\u0000\u0000\u0000\u0001\u0004\u0000"

    invoke-static {p1, p2, p0}, Lcom/google/android/apps/gsa/search/shared/service/proto/LensServiceClientEventData;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 12
    :pswitch_5
    new-instance p0, Lcom/google/android/apps/gsa/search/shared/service/proto/LensServiceClientEventData$Builder;

    invoke-direct {p0, p2}, Lcom/google/android/apps/gsa/search/shared/service/proto/LensServiceClientEventData$Builder;-><init>(Lcom/google/android/apps/gsa/search/shared/service/proto/LensServiceClientEventData$1;)V

    return-object p0

    .line 13
    :pswitch_6
    new-instance p0, Lcom/google/android/apps/gsa/search/shared/service/proto/LensServiceClientEventData;

    invoke-direct {p0}, Lcom/google/android/apps/gsa/search/shared/service/proto/LensServiceClientEventData;-><init>()V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getTargetServiceApiVersion()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/apps/gsa/search/shared/service/proto/LensServiceClientEventData;->targetServiceApiVersion_:I

    return p0
.end method

.method public hasTargetServiceApiVersion()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/google/android/apps/gsa/search/shared/service/proto/LensServiceClientEventData;->bitField0_:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
