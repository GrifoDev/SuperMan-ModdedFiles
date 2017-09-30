.class public final Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;

# interfaces
.implements Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetailOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;",
        "Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;",
        ">;",
        "Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetailOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

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
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->invalidReceivers_:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->interruptedReceivers_:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->disabledReceivers_:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->existing_:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->notExisting_:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->invitationDenied_:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->secureNotSupported_:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->groupKeyUnavailable_:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->didViolationUsers_:Ljava/util/List;

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method static synthetic access$600(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->buildParsed()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->create()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->buildPartial()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method private static create()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;

    invoke-direct {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;-><init>()V

    return-object v0
.end method

.method private ensureDidViolationUsersIsMutable()V
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->didViolationUsers_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->didViolationUsers_:Ljava/util/List;

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureDisabledReceiversIsMutable()V
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->disabledReceivers_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->disabledReceivers_:Ljava/util/List;

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureExistingIsMutable()V
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->existing_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->existing_:Ljava/util/List;

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureGroupKeyUnavailableIsMutable()V
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->groupKeyUnavailable_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->groupKeyUnavailable_:Ljava/util/List;

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureInterruptedReceiversIsMutable()V
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->interruptedReceivers_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->interruptedReceivers_:Ljava/util/List;

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureInvalidReceiversIsMutable()V
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->invalidReceivers_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->invalidReceivers_:Ljava/util/List;

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureInvitationDeniedIsMutable()V
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->invitationDenied_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->invitationDenied_:Ljava/util/List;

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureNotExistingIsMutable()V
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->notExisting_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->notExisting_:Ljava/util/List;

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureSecureNotSupportedIsMutable()V
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->secureNotSupported_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->secureNotSupported_:Ljava/util/List;

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    return-void
.end method


# virtual methods
.method public addAllDidViolationUsers(Ljava/lang/Iterable;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser;",
            ">;)",
            "Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->ensureDidViolationUsersIsMutable()V

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->didViolationUsers_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-object p0
.end method

.method public addAllDisabledReceivers(Ljava/lang/Iterable;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->ensureDisabledReceiversIsMutable()V

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->disabledReceivers_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-object p0
.end method

.method public addAllExisting(Ljava/lang/Iterable;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->ensureExistingIsMutable()V

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->existing_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-object p0
.end method

.method public addAllGroupKeyUnavailable(Ljava/lang/Iterable;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->ensureGroupKeyUnavailableIsMutable()V

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->groupKeyUnavailable_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-object p0
.end method

.method public addAllInterruptedReceivers(Ljava/lang/Iterable;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->ensureInterruptedReceiversIsMutable()V

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->interruptedReceivers_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-object p0
.end method

.method public addAllInvalidReceivers(Ljava/lang/Iterable;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->ensureInvalidReceiversIsMutable()V

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->invalidReceivers_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-object p0
.end method

.method public addAllInvitationDenied(Ljava/lang/Iterable;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->ensureInvitationDeniedIsMutable()V

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->invitationDenied_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-object p0
.end method

.method public addAllNotExisting(Ljava/lang/Iterable;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->ensureNotExistingIsMutable()V

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->notExisting_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-object p0
.end method

.method public addAllSecureNotSupported(Ljava/lang/Iterable;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->ensureSecureNotSupportedIsMutable()V

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->secureNotSupported_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-object p0
.end method

.method public addDidViolationUsers(ILcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser$Builder;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->ensureDidViolationUsersIsMutable()V

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->didViolationUsers_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser$Builder;->build()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-object p0
.end method

.method public addDidViolationUsers(ILcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;
    .locals 1

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->ensureDidViolationUsersIsMutable()V

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->didViolationUsers_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-object p0
.end method

.method public addDidViolationUsers(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser$Builder;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->ensureDidViolationUsersIsMutable()V

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->didViolationUsers_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser$Builder;->build()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addDidViolationUsers(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->ensureDidViolationUsersIsMutable()V

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->didViolationUsers_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addDisabledReceivers(J)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->ensureDisabledReceiversIsMutable()V

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->disabledReceivers_:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addExisting(J)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->ensureExistingIsMutable()V

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->existing_:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addGroupKeyUnavailable(J)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->ensureGroupKeyUnavailableIsMutable()V

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->groupKeyUnavailable_:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addInterruptedReceivers(J)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->ensureInterruptedReceiversIsMutable()V

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->interruptedReceivers_:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addInvalidReceivers(J)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->ensureInvalidReceiversIsMutable()V

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->invalidReceivers_:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addInvitationDenied(J)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->ensureInvitationDeniedIsMutable()V

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->invitationDenied_:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addNotExisting(J)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->ensureNotExistingIsMutable()V

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->notExisting_:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addSecureNotSupported(J)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->ensureSecureNotSupportedIsMutable()V

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->secureNotSupported_:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->build()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->buildPartial()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->buildPartial()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;
    .locals 3

    new-instance v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;-><init>(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$1;)V

    iget v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->bitField0_:I

    iget v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->invalidReceivers_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->invalidReceivers_:Ljava/util/List;

    iget v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->bitField0_:I

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->invalidReceivers_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->access$902(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;Ljava/util/List;)Ljava/util/List;

    iget v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->interruptedReceivers_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->interruptedReceivers_:Ljava/util/List;

    iget v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->bitField0_:I

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->interruptedReceivers_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->access$1002(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;Ljava/util/List;)Ljava/util/List;

    iget v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->disabledReceivers_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->disabledReceivers_:Ljava/util/List;

    iget v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->bitField0_:I

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->disabledReceivers_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->access$1102(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;Ljava/util/List;)Ljava/util/List;

    iget v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->existing_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->existing_:Ljava/util/List;

    iget v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x9

    iput v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->bitField0_:I

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->existing_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->access$1202(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;Ljava/util/List;)Ljava/util/List;

    iget v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->notExisting_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->notExisting_:Ljava/util/List;

    iget v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x11

    iput v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->bitField0_:I

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->notExisting_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->access$1302(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;Ljava/util/List;)Ljava/util/List;

    iget v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->invitationDenied_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->invitationDenied_:Ljava/util/List;

    iget v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x21

    iput v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->bitField0_:I

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->invitationDenied_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->access$1402(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;Ljava/util/List;)Ljava/util/List;

    iget v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_6

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->secureNotSupported_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->secureNotSupported_:Ljava/util/List;

    iget v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x41

    iput v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->bitField0_:I

    :cond_6
    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->secureNotSupported_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->access$1502(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;Ljava/util/List;)Ljava/util/List;

    iget v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_7

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->groupKeyUnavailable_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->groupKeyUnavailable_:Ljava/util/List;

    iget v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->bitField0_:I

    and-int/lit16 v1, v1, -0x81

    iput v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->bitField0_:I

    :cond_7
    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->groupKeyUnavailable_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->access$1602(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;Ljava/util/List;)Ljava/util/List;

    iget v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->bitField0_:I

    and-int/lit16 v1, v1, 0x100

    const/16 v2, 0x100

    if-ne v1, v2, :cond_8

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->didViolationUsers_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->didViolationUsers_:Ljava/util/List;

    iget v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->bitField0_:I

    and-int/lit16 v1, v1, -0x101

    iput v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->bitField0_:I

    :cond_8
    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->didViolationUsers_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->access$1702(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;Ljava/util/List;)Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->clear()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->clear()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;
    .locals 1

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->invalidReceivers_:Ljava/util/List;

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->bitField0_:I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->interruptedReceivers_:Ljava/util/List;

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->bitField0_:I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->disabledReceivers_:Ljava/util/List;

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->bitField0_:I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->existing_:Ljava/util/List;

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->bitField0_:I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->notExisting_:Ljava/util/List;

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->bitField0_:I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->invitationDenied_:Ljava/util/List;

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->bitField0_:I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->secureNotSupported_:Ljava/util/List;

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->bitField0_:I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->groupKeyUnavailable_:Ljava/util/List;

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->bitField0_:I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->didViolationUsers_:Ljava/util/List;

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearDidViolationUsers()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->didViolationUsers_:Ljava/util/List;

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearDisabledReceivers()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->disabledReceivers_:Ljava/util/List;

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearExisting()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->existing_:Ljava/util/List;

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearGroupKeyUnavailable()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->groupKeyUnavailable_:Ljava/util/List;

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearInterruptedReceivers()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->interruptedReceivers_:Ljava/util/List;

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearInvalidReceivers()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->invalidReceivers_:Ljava/util/List;

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearInvitationDenied()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->invitationDenied_:Ljava/util/List;

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearNotExisting()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->notExisting_:Ljava/util/List;

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearSecureNotSupported()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->secureNotSupported_:Ljava/util/List;

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->bitField0_:I

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->clone()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->clone()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->clone()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;
    .locals 2

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->create()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->buildPartial()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->mergeFrom(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->clone()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->getDefaultInstanceForType()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->getDefaultInstanceForType()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->getDefaultInstance()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;

    move-result-object v0

    return-object v0
.end method

.method public getDidViolationUsers(I)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->didViolationUsers_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser;

    return-object v0
.end method

.method public getDidViolationUsersCount()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->didViolationUsers_:Ljava/util/List;

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

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->didViolationUsers_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDisabledReceivers(I)J
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->disabledReceivers_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDisabledReceiversCount()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->disabledReceivers_:Ljava/util/List;

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

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->disabledReceivers_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getExisting(I)J
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->existing_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getExistingCount()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->existing_:Ljava/util/List;

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

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->existing_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getGroupKeyUnavailable(I)J
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->groupKeyUnavailable_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getGroupKeyUnavailableCount()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->groupKeyUnavailable_:Ljava/util/List;

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

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->groupKeyUnavailable_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getInterruptedReceivers(I)J
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->interruptedReceivers_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getInterruptedReceiversCount()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->interruptedReceivers_:Ljava/util/List;

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

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->interruptedReceivers_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getInvalidReceivers(I)J
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->invalidReceivers_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getInvalidReceiversCount()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->invalidReceivers_:Ljava/util/List;

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

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->invalidReceivers_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getInvitationDenied(I)J
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->invitationDenied_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getInvitationDeniedCount()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->invitationDenied_:Ljava/util/List;

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

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->invitationDenied_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getNotExisting(I)J
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->notExisting_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNotExistingCount()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->notExisting_:Ljava/util/List;

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

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->notExisting_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSecureNotSupported(I)J
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->secureNotSupported_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSecureNotSupportedCount()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->secureNotSupported_:Ljava/util/List;

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

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->secureNotSupported_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    check-cast p1, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->mergeFrom(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;
    .locals 4

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
    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->ensureInvalidReceiversIsMutable()V

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->invalidReceivers_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v0

    :goto_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->addInvalidReceivers(J)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v0}, Lcom/google/protobuf/CodedInputStream;->popLimit(I)V

    goto :goto_0

    :sswitch_3
    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->ensureInterruptedReceiversIsMutable()V

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->interruptedReceivers_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v0

    :goto_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->addInterruptedReceivers(J)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;

    goto :goto_2

    :cond_2
    invoke-virtual {p1, v0}, Lcom/google/protobuf/CodedInputStream;->popLimit(I)V

    goto :goto_0

    :sswitch_5
    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->ensureDisabledReceiversIsMutable()V

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->disabledReceivers_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v0

    :goto_3
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->addDisabledReceivers(J)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;

    goto :goto_3

    :cond_3
    invoke-virtual {p1, v0}, Lcom/google/protobuf/CodedInputStream;->popLimit(I)V

    goto/16 :goto_0

    :sswitch_7
    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->ensureExistingIsMutable()V

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->existing_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v0

    :goto_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v1

    if-lez v1, :cond_4

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->addExisting(J)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;

    goto :goto_4

    :cond_4
    invoke-virtual {p1, v0}, Lcom/google/protobuf/CodedInputStream;->popLimit(I)V

    goto/16 :goto_0

    :sswitch_9
    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->ensureNotExistingIsMutable()V

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->notExisting_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v0

    :goto_5
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v1

    if-lez v1, :cond_5

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->addNotExisting(J)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;

    goto :goto_5

    :cond_5
    invoke-virtual {p1, v0}, Lcom/google/protobuf/CodedInputStream;->popLimit(I)V

    goto/16 :goto_0

    :sswitch_b
    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->ensureInvitationDeniedIsMutable()V

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->invitationDenied_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v0

    :goto_6
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v1

    if-lez v1, :cond_6

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->addInvitationDenied(J)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;

    goto :goto_6

    :cond_6
    invoke-virtual {p1, v0}, Lcom/google/protobuf/CodedInputStream;->popLimit(I)V

    goto/16 :goto_0

    :sswitch_d
    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->ensureSecureNotSupportedIsMutable()V

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->secureNotSupported_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v0

    :goto_7
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v1

    if-lez v1, :cond_7

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->addSecureNotSupported(J)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;

    goto :goto_7

    :cond_7
    invoke-virtual {p1, v0}, Lcom/google/protobuf/CodedInputStream;->popLimit(I)V

    goto/16 :goto_0

    :sswitch_f
    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->ensureGroupKeyUnavailableIsMutable()V

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->groupKeyUnavailable_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_10
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v0

    :goto_8
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v1

    if-lez v1, :cond_8

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->addGroupKeyUnavailable(J)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;

    goto :goto_8

    :cond_8
    invoke-virtual {p1, v0}, Lcom/google/protobuf/CodedInputStream;->popLimit(I)V

    goto/16 :goto_0

    :sswitch_11
    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser$Builder;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser$Builder;->buildPartial()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->addDidViolationUsers(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0xa -> :sswitch_2
        0x10 -> :sswitch_3
        0x12 -> :sswitch_4
        0x18 -> :sswitch_5
        0x1a -> :sswitch_6
        0x20 -> :sswitch_7
        0x22 -> :sswitch_8
        0x28 -> :sswitch_9
        0x2a -> :sswitch_a
        0x30 -> :sswitch_b
        0x32 -> :sswitch_c
        0x50 -> :sswitch_d
        0x52 -> :sswitch_e
        0x58 -> :sswitch_f
        0x5a -> :sswitch_10
        0xa2 -> :sswitch_11
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;
    .locals 2

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->getDefaultInstance()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;

    move-result-object v0

    if-ne p1, v0, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    invoke-static {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->access$900(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->invalidReceivers_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->access$900(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->invalidReceivers_:Ljava/util/List;

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->bitField0_:I

    :cond_2
    :goto_1
    invoke-static {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->access$1000(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->interruptedReceivers_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->access$1000(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->interruptedReceivers_:Ljava/util/List;

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->bitField0_:I

    :cond_3
    :goto_2
    invoke-static {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->access$1100(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->disabledReceivers_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->access$1100(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->disabledReceivers_:Ljava/util/List;

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->bitField0_:I

    :cond_4
    :goto_3
    invoke-static {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->access$1200(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->existing_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->access$1200(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->existing_:Ljava/util/List;

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->bitField0_:I

    :cond_5
    :goto_4
    invoke-static {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->access$1300(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->notExisting_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->access$1300(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->notExisting_:Ljava/util/List;

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->bitField0_:I

    :cond_6
    :goto_5
    invoke-static {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->access$1400(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->invitationDenied_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->access$1400(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->invitationDenied_:Ljava/util/List;

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->bitField0_:I

    :cond_7
    :goto_6
    invoke-static {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->access$1500(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->secureNotSupported_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-static {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->access$1500(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->secureNotSupported_:Ljava/util/List;

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->bitField0_:I

    :cond_8
    :goto_7
    invoke-static {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->access$1600(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->groupKeyUnavailable_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->access$1600(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->groupKeyUnavailable_:Ljava/util/List;

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->bitField0_:I

    :cond_9
    :goto_8
    invoke-static {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->access$1700(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->didViolationUsers_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-static {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->access$1700(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->didViolationUsers_:Ljava/util/List;

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->bitField0_:I

    goto/16 :goto_0

    :cond_a
    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->ensureInvalidReceiversIsMutable()V

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->invalidReceivers_:Ljava/util/List;

    invoke-static {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->access$900(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_1

    :cond_b
    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->ensureInterruptedReceiversIsMutable()V

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->interruptedReceivers_:Ljava/util/List;

    invoke-static {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->access$1000(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_2

    :cond_c
    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->ensureDisabledReceiversIsMutable()V

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->disabledReceivers_:Ljava/util/List;

    invoke-static {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->access$1100(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_3

    :cond_d
    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->ensureExistingIsMutable()V

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->existing_:Ljava/util/List;

    invoke-static {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->access$1200(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_4

    :cond_e
    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->ensureNotExistingIsMutable()V

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->notExisting_:Ljava/util/List;

    invoke-static {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->access$1300(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_5

    :cond_f
    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->ensureInvitationDeniedIsMutable()V

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->invitationDenied_:Ljava/util/List;

    invoke-static {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->access$1400(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_6

    :cond_10
    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->ensureSecureNotSupportedIsMutable()V

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->secureNotSupported_:Ljava/util/List;

    invoke-static {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->access$1500(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_7

    :cond_11
    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->ensureGroupKeyUnavailableIsMutable()V

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->groupKeyUnavailable_:Ljava/util/List;

    invoke-static {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->access$1600(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_8

    :cond_12
    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->ensureDidViolationUsersIsMutable()V

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->didViolationUsers_:Ljava/util/List;

    invoke-static {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;->access$1700(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_0
.end method

.method public removeDidViolationUsers(I)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->ensureDidViolationUsersIsMutable()V

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->didViolationUsers_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-object p0
.end method

.method public setDidViolationUsers(ILcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser$Builder;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->ensureDidViolationUsersIsMutable()V

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->didViolationUsers_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser$Builder;->build()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setDidViolationUsers(ILcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;
    .locals 1

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->ensureDidViolationUsersIsMutable()V

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->didViolationUsers_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setDisabledReceivers(IJ)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->ensureDisabledReceiversIsMutable()V

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->disabledReceivers_:Ljava/util/List;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setExisting(IJ)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->ensureExistingIsMutable()V

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->existing_:Ljava/util/List;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setGroupKeyUnavailable(IJ)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->ensureGroupKeyUnavailableIsMutable()V

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->groupKeyUnavailable_:Ljava/util/List;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setInterruptedReceivers(IJ)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->ensureInterruptedReceiversIsMutable()V

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->interruptedReceivers_:Ljava/util/List;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setInvalidReceivers(IJ)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->ensureInvalidReceiversIsMutable()V

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->invalidReceivers_:Ljava/util/List;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setInvitationDenied(IJ)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->ensureInvitationDeniedIsMutable()V

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->invitationDenied_:Ljava/util/List;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setNotExisting(IJ)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->ensureNotExistingIsMutable()V

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->notExisting_:Ljava/util/List;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setSecureNotSupported(IJ)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->ensureSecureNotSupportedIsMutable()V

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$WrongReceiverDetail$Builder;->secureNotSupported_:Ljava/util/List;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method
