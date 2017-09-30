.class public final Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry;
.super Lcom/google/protobuf/GeneratedMessageLite;

# interfaces
.implements Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntryOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/ssf/message/io/SSMGPB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EndChatEntry"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry$Builder;
    }
.end annotation


# static fields
.field public static final CHATROOMID_FIELD_NUMBER:I = 0x1

.field public static final DENYINVITATION_FIELD_NUMBER:I = 0xb

.field public static final SECUREKEYLOST_FIELD_NUMBER:I = 0xa

.field private static final defaultInstance:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private chatroomId_:J

.field private denyInvitation_:Z

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private secureKeyLost_:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry;-><init>(Z)V

    sput-object v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry;->defaultInstance:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry;

    sget-object v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry;->defaultInstance:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry;

    invoke-direct {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry;->initFields()V

    return-void
.end method

.method private constructor <init>(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry$Builder;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    iput-byte v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry;->memoizedIsInitialized:B

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry;->memoizedSerializedSize:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry$Builder;Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry;-><init>(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    iput-byte v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry;->memoizedIsInitialized:B

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry;->memoizedSerializedSize:I

    return-void
.end method

.method static synthetic access$8102(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry;J)J
    .locals 1

    iput-wide p1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry;->chatroomId_:J

    return-wide p1
.end method

.method static synthetic access$8202(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry;->secureKeyLost_:Z

    return p1
.end method

.method static synthetic access$8302(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry;->denyInvitation_:Z

    return p1
.end method

.method static synthetic access$8402(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry;->defaultInstance:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry;

    return-object v0
.end method

.method private initFields()V
    .locals 3

    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry;->chatroomId_:J

    iput-boolean v2, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry;->secureKeyLost_:Z

    iput-boolean v2, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry;->denyInvitation_:Z

    return-void
.end method

.method public static newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry$Builder;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry$Builder;->access$7900()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry$Builder;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry$Builder;->mergeFrom(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry;
    .locals 2

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry$Builder;->access$7800(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry$Builder;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry;
    .locals 2

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry$Builder;->access$7800(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry$Builder;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry$Builder;

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry$Builder;->access$7800(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry$Builder;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry$Builder;

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry$Builder;->access$7800(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry$Builder;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry$Builder;

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry$Builder;->access$7800(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry$Builder;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry$Builder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry$Builder;->access$7800(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry$Builder;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry$Builder;

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry$Builder;->access$7800(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry$Builder;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry$Builder;

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry$Builder;->access$7800(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry$Builder;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry$Builder;

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry$Builder;->access$7800(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry$Builder;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry$Builder;

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry$Builder;->access$7800(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry$Builder;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getChatroomId()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry;->chatroomId_:J

    return-wide v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry;->getDefaultInstanceForType()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry;->defaultInstance:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry;

    return-object v0
.end method

.method public getDenyInvitation()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry;->denyInvitation_:Z

    return v0
.end method

.method public getSecureKeyLost()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry;->secureKeyLost_:Z

    return v0
.end method

.method public getSerializedSize()I
    .locals 5

    const/4 v4, 0x1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    iget v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v4, :cond_1

    iget-wide v2, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry;->chatroomId_:J

    invoke-static {v4, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    const/16 v1, 0xa

    iget-boolean v2, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry;->secureKeyLost_:Z

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    const/16 v1, 0xb

    iget-boolean v2, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry;->denyInvitation_:Z

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry;->memoizedSerializedSize:I

    goto :goto_0
.end method

.method public hasChatroomId()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDenyInvitation()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry;->bitField0_:I

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

.method public hasSecureKeyLost()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry;->bitField0_:I

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

.method public final isInitialized()Z
    .locals 3

    const/4 v0, 0x1

    iget-byte v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry;->memoizedIsInitialized:B

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iput-byte v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry;->newBuilderForType()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry$Builder;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry;->toBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry$Builder;
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry;->newBuilder(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected writeReplace()Ljava/lang/Object;
    .locals 1

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry;->getSerializedSize()I

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_0

    iget-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry;->chatroomId_:J

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    :cond_0
    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/16 v0, 0xa

    iget-boolean v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry;->secureKeyLost_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    :cond_1
    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    const/16 v0, 0xb

    iget-boolean v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$EndChatEntry;->denyInvitation_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    :cond_2
    return-void
.end method
