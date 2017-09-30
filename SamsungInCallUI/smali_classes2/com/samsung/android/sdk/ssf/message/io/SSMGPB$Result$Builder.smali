.class public final Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;

# interfaces
.implements Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ResultOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result;",
        "Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result$Builder;",
        ">;",
        "Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ResultOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private code_:I

.field private msg_:Ljava/lang/Object;

.field private subCode_:I

.field private wrongReceiverDetail_:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result$Builder;->msg_:Ljava/lang/Object;

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->getDefaultInstance()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result$Builder;->wrongReceiverDetail_:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method static synthetic access$1800(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result$Builder;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result$Builder;->buildParsed()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result$Builder;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result$Builder;->create()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result;
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result$Builder;->buildPartial()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method private static create()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result$Builder;
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result$Builder;

    invoke-direct {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result$Builder;->build()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result;
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result$Builder;->buildPartial()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result$Builder;->buildPartial()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result;
    .locals 5

    const/4 v0, 0x1

    new-instance v2, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result;-><init>(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result$Builder;Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$1;)V

    iget v3, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result$Builder;->bitField0_:I

    const/4 v1, 0x0

    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_3

    :goto_0
    iget v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result$Builder;->code_:I

    invoke-static {v2, v1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result;->access$2102(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result;I)I

    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    or-int/lit8 v0, v0, 0x2

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result$Builder;->msg_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result;->access$2202(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v1, v3, 0x4

    const/4 v4, 0x4

    if-ne v1, v4, :cond_1

    or-int/lit8 v0, v0, 0x4

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result$Builder;->wrongReceiverDetail_:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;

    invoke-static {v2, v1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result;->access$2302(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result;Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;

    and-int/lit8 v1, v3, 0x8

    const/16 v3, 0x8

    if-ne v1, v3, :cond_2

    or-int/lit8 v0, v0, 0x8

    :cond_2
    iget v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result$Builder;->subCode_:I

    invoke-static {v2, v1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result;->access$2402(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result;I)I

    invoke-static {v2, v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result;->access$2502(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result;I)I

    return-object v2

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result$Builder;->clear()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result$Builder;->clear()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result$Builder;
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    iput v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result$Builder;->code_:I

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result$Builder;->bitField0_:I

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result$Builder;->msg_:Ljava/lang/Object;

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result$Builder;->bitField0_:I

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->getDefaultInstance()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result$Builder;->wrongReceiverDetail_:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result$Builder;->bitField0_:I

    iput v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result$Builder;->subCode_:I

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearCode()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result$Builder;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result$Builder;->code_:I

    return-object p0
.end method

.method public clearMsg()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result$Builder;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result$Builder;->bitField0_:I

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result;->getDefaultInstance()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result;->getMsg()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result$Builder;->msg_:Ljava/lang/Object;

    return-object p0
.end method

.method public clearSubCode()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result$Builder;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result$Builder;->subCode_:I

    return-object p0
.end method

.method public clearWrongReceiverDetail()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result$Builder;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->getDefaultInstance()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result$Builder;->wrongReceiverDetail_:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result$Builder;->bitField0_:I

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result$Builder;->clone()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result$Builder;->clone()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result$Builder;->clone()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result$Builder;
    .locals 2

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result$Builder;->create()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result$Builder;->buildPartial()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result$Builder;->mergeFrom(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result$Builder;->clone()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCode()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result$Builder;->code_:I

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result$Builder;->getDefaultInstanceForType()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result$Builder;->getDefaultInstanceForType()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result;->getDefaultInstance()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result;

    move-result-object v0

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result$Builder;->msg_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result$Builder;->msg_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getSubCode()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result$Builder;->subCode_:I

    return v0
.end method

.method public getWrongReceiverDetail()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result$Builder;->wrongReceiverDetail_:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;

    return-object v0
.end method

.method public hasCode()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMsg()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSubCode()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasWrongReceiverDetail()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    check-cast p1, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result;

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result$Builder;->mergeFrom(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result$Builder;
    .locals 2

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/CodedInputStream;->skipField(I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result$Builder;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result$Builder;->code_:I

    goto :goto_0

    :sswitch_2
    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result$Builder;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result$Builder;->msg_:Ljava/lang/Object;

    goto :goto_0

    :sswitch_3
    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result$Builder;->hasWrongReceiverDetail()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result$Builder;->getWrongReceiverDetail()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->mergeFrom(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;

    :cond_1
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->buildPartial()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result$Builder;->setWrongReceiverDetail(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result$Builder;

    goto :goto_0

    :sswitch_4
    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result$Builder;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result$Builder;->subCode_:I

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result$Builder;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result;->getDefaultInstance()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result;

    move-result-object v0

    if-ne p1, v0, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result;->hasCode()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result;->getCode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result$Builder;->setCode(I)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result$Builder;

    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result;->hasMsg()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result;->getMsg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result$Builder;->setMsg(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result$Builder;

    :cond_3
    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result;->hasWrongReceiverDetail()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result;->getWrongReceiverDetail()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result$Builder;->mergeWrongReceiverDetail(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result$Builder;

    :cond_4
    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result;->hasSubCode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result;->getSubCode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result$Builder;->setSubCode(I)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result$Builder;

    goto :goto_0
.end method

.method public mergeWrongReceiverDetail(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result$Builder;
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result$Builder;->wrongReceiverDetail_:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->getDefaultInstance()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result$Builder;->wrongReceiverDetail_:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->newBuilder(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->mergeFrom(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->buildPartial()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result$Builder;->wrongReceiverDetail_:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;

    :goto_0
    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result$Builder;->bitField0_:I

    return-object p0

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result$Builder;->wrongReceiverDetail_:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;

    goto :goto_0
.end method

.method public setCode(I)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result$Builder;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result$Builder;->bitField0_:I

    iput p1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result$Builder;->code_:I

    return-object p0
.end method

.method public setMsg(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result$Builder;->msg_:Ljava/lang/Object;

    return-object p0
.end method

.method setMsg(Lcom/google/protobuf/ByteString;)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result$Builder;->msg_:Ljava/lang/Object;

    return-void
.end method

.method public setSubCode(I)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result$Builder;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result$Builder;->bitField0_:I

    iput p1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result$Builder;->subCode_:I

    return-object p0
.end method

.method public setWrongReceiverDetail(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result$Builder;
    .locals 1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->build()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result$Builder;->wrongReceiverDetail_:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result$Builder;->bitField0_:I

    return-object p0
.end method

.method public setWrongReceiverDetail(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result$Builder;->wrongReceiverDetail_:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result$Builder;->bitField0_:I

    return-object p0
.end method
