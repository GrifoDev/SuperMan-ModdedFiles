.class public final Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;
.super Lcom/google/protobuf/GeneratedMessageLite;

# interfaces
.implements Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetailOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/ssf/message/io/SSMGPB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WrongReceiverDetail"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;
    }
.end annotation


# static fields
.field public static final DIDVIOLATIONUSERS_FIELD_NUMBER:I = 0x14

.field public static final DISABLEDRECEIVERS_FIELD_NUMBER:I = 0x3

.field public static final EXISTING_FIELD_NUMBER:I = 0x4

.field public static final GROUPKEYUNAVAILABLE_FIELD_NUMBER:I = 0xb

.field public static final INTERRUPTEDRECEIVERS_FIELD_NUMBER:I = 0x2

.field public static final INVALIDRECEIVERS_FIELD_NUMBER:I = 0x1

.field public static final INVITATIONDENIED_FIELD_NUMBER:I = 0x6

.field public static final NOTEXISTING_FIELD_NUMBER:I = 0x5

.field public static final SECURENOTSUPPORTED_FIELD_NUMBER:I = 0xa

.field private static final defaultInstance:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;

.field private static final serialVersionUID:J


# instance fields
.field private didViolationUsers_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser;",
            ">;"
        }
    .end annotation
.end field

.field private disabledReceivers_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private existing_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private groupKeyUnavailable_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private interruptedReceivers_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private invalidReceivers_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private invitationDenied_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private notExisting_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private secureNotSupported_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;-><init>(Z)V

    sput-object v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->defaultInstance:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;

    sget-object v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->defaultInstance:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;

    invoke-direct {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->initFields()V

    return-void
.end method

.method private constructor <init>(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    iput-byte v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->memoizedIsInitialized:B

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->memoizedSerializedSize:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;-><init>(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    iput-byte v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->memoizedIsInitialized:B

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->memoizedSerializedSize:I

    return-void
.end method

.method static synthetic access$1000(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->interruptedReceivers_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->interruptedReceivers_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->disabledReceivers_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->disabledReceivers_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->existing_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->existing_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->notExisting_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->notExisting_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->invitationDenied_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->invitationDenied_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->secureNotSupported_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->secureNotSupported_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->groupKeyUnavailable_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->groupKeyUnavailable_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->didViolationUsers_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->didViolationUsers_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$900(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->invalidReceivers_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$902(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->invalidReceivers_:Ljava/util/List;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->defaultInstance:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->invalidReceivers_:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->interruptedReceivers_:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->disabledReceivers_:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->existing_:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->notExisting_:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->invitationDenied_:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->secureNotSupported_:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->groupKeyUnavailable_:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->didViolationUsers_:Ljava/util/List;

    return-void
.end method

.method public static newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->access$700()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->mergeFrom(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;
    .locals 2

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->access$600(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;
    .locals 2

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->access$600(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->access$600(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->access$600(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->access$600(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->access$600(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->access$600(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->access$600(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->access$600(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->access$600(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->getDefaultInstanceForType()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->defaultInstance:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;

    return-object v0
.end method

.method public getDidViolationUsers(I)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->didViolationUsers_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser;

    return-object v0
.end method

.method public getDidViolationUsersCount()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->didViolationUsers_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getDidViolationUsersList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->didViolationUsers_:Ljava/util/List;

    return-object v0
.end method

.method public getDidViolationUsersOrBuilder(I)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUserOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->didViolationUsers_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUserOrBuilder;

    return-object v0
.end method

.method public getDidViolationUsersOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUserOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->didViolationUsers_:Ljava/util/List;

    return-object v0
.end method

.method public getDisabledReceivers(I)J
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->disabledReceivers_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDisabledReceiversCount()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->disabledReceivers_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getDisabledReceiversList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->disabledReceivers_:Ljava/util/List;

    return-object v0
.end method

.method public getExisting(I)J
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->existing_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getExistingCount()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->existing_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getExistingList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->existing_:Ljava/util/List;

    return-object v0
.end method

.method public getGroupKeyUnavailable(I)J
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->groupKeyUnavailable_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getGroupKeyUnavailableCount()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->groupKeyUnavailable_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getGroupKeyUnavailableList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->groupKeyUnavailable_:Ljava/util/List;

    return-object v0
.end method

.method public getInterruptedReceivers(I)J
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->interruptedReceivers_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getInterruptedReceiversCount()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->interruptedReceivers_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getInterruptedReceiversList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->interruptedReceivers_:Ljava/util/List;

    return-object v0
.end method

.method public getInvalidReceivers(I)J
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->invalidReceivers_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getInvalidReceiversCount()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->invalidReceivers_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getInvalidReceiversList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->invalidReceivers_:Ljava/util/List;

    return-object v0
.end method

.method public getInvitationDenied(I)J
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->invitationDenied_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getInvitationDeniedCount()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->invitationDenied_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getInvitationDeniedList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->invitationDenied_:Ljava/util/List;

    return-object v0
.end method

.method public getNotExisting(I)J
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->notExisting_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNotExistingCount()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->notExisting_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getNotExistingList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->notExisting_:Ljava/util/List;

    return-object v0
.end method

.method public getSecureNotSupported(I)J
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->secureNotSupported_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSecureNotSupportedCount()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->secureNotSupported_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSecureNotSupportedList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->secureNotSupported_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 8

    const/4 v2, 0x0

    iget v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->memoizedSerializedSize:I

    const/4 v0, -0x1

    if-eq v1, v0, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    move v3, v2

    :goto_1
    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->invalidReceivers_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->invalidReceivers_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeInt64SizeNoTag(J)I

    move-result v0

    add-int/2addr v3, v0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_1
    add-int v0, v2, v3

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->getInvalidReceiversList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1

    add-int v4, v0, v1

    move v1, v2

    move v3, v2

    :goto_2
    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->interruptedReceivers_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->interruptedReceivers_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/google/protobuf/CodedOutputStream;->computeInt64SizeNoTag(J)I

    move-result v0

    add-int/2addr v3, v0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_2
    add-int v0, v4, v3

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->getInterruptedReceiversList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1

    add-int v4, v0, v1

    move v1, v2

    move v3, v2

    :goto_3
    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->disabledReceivers_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->disabledReceivers_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/google/protobuf/CodedOutputStream;->computeInt64SizeNoTag(J)I

    move-result v0

    add-int/2addr v3, v0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_3
    add-int v0, v4, v3

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->getDisabledReceiversList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1

    add-int v4, v0, v1

    move v1, v2

    move v3, v2

    :goto_4
    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->existing_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->existing_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/google/protobuf/CodedOutputStream;->computeInt64SizeNoTag(J)I

    move-result v0

    add-int/2addr v3, v0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    :cond_4
    add-int v0, v4, v3

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->getExistingList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1

    add-int v4, v0, v1

    move v1, v2

    move v3, v2

    :goto_5
    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->notExisting_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->notExisting_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/google/protobuf/CodedOutputStream;->computeInt64SizeNoTag(J)I

    move-result v0

    add-int/2addr v3, v0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    :cond_5
    add-int v0, v4, v3

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->getNotExistingList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1

    add-int v4, v0, v1

    move v1, v2

    move v3, v2

    :goto_6
    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->invitationDenied_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->invitationDenied_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/google/protobuf/CodedOutputStream;->computeInt64SizeNoTag(J)I

    move-result v0

    add-int/2addr v3, v0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    :cond_6
    add-int v0, v4, v3

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->getInvitationDeniedList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1

    add-int v4, v0, v1

    move v1, v2

    move v3, v2

    :goto_7
    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->secureNotSupported_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_7

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->secureNotSupported_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/google/protobuf/CodedOutputStream;->computeInt64SizeNoTag(J)I

    move-result v0

    add-int/2addr v3, v0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    :cond_7
    add-int v0, v4, v3

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->getSecureNotSupportedList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1

    add-int v4, v0, v1

    move v1, v2

    move v3, v2

    :goto_8
    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->groupKeyUnavailable_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_8

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->groupKeyUnavailable_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/google/protobuf/CodedOutputStream;->computeInt64SizeNoTag(J)I

    move-result v0

    add-int/2addr v3, v0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8

    :cond_8
    add-int v0, v4, v3

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->getGroupKeyUnavailableList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    move v1, v0

    :goto_9
    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->didViolationUsers_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_9

    const/16 v3, 0x14

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->didViolationUsers_:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-static {v3, v0}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v0, v1

    add-int/lit8 v2, v2, 0x1

    move v1, v0

    goto :goto_9

    :cond_9
    iput v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->memoizedSerializedSize:I

    goto/16 :goto_0
.end method

.method public final isInitialized()Z
    .locals 3

    const/4 v0, 0x1

    iget-byte v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->memoizedIsInitialized:B

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iput-byte v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->newBuilderForType()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->toBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->newBuilder(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;

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
    .locals 6

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->getSerializedSize()I

    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->invalidReceivers_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->invalidReceivers_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p1, v3, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_1
    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->interruptedReceivers_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    const/4 v3, 0x2

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->interruptedReceivers_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p1, v3, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_2
    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->disabledReceivers_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    const/4 v3, 0x3

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->disabledReceivers_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p1, v3, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_3
    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->existing_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    const/4 v3, 0x4

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->existing_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p1, v3, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_4
    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->notExisting_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    const/4 v3, 0x5

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->notExisting_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p1, v3, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    :cond_4
    move v1, v2

    :goto_5
    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->invitationDenied_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    const/4 v3, 0x6

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->invitationDenied_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p1, v3, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    :cond_5
    move v1, v2

    :goto_6
    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->secureNotSupported_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_6

    const/16 v3, 0xa

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->secureNotSupported_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p1, v3, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    :cond_6
    move v1, v2

    :goto_7
    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->groupKeyUnavailable_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_7

    const/16 v3, 0xb

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->groupKeyUnavailable_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p1, v3, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    :cond_7
    :goto_8
    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->didViolationUsers_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_8

    const/16 v1, 0x14

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->didViolationUsers_:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_8
    return-void
.end method
