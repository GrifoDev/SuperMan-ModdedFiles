.class public Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/MessageShareRequest;
.super Ljava/lang/Object;


# instance fields
.field private gcmPriority:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/GcmType;

.field private message:Ljava/lang/String;

.field private recipientList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/MessageShareRecipientData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGcmPriority()Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/GcmType;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/MessageShareRequest;->gcmPriority:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/GcmType;

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/GcmType;->NORMAL:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/GcmType;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/MessageShareRequest;->gcmPriority:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/GcmType;

    goto :goto_0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/MessageShareRequest;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getRecipientList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/MessageShareRecipientData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/MessageShareRequest;->recipientList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setGcmPriority(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/GcmType;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/MessageShareRequest;->gcmPriority:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/GcmType;

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/MessageShareRequest;->message:Ljava/lang/String;

    return-void
.end method

.method public setRecipientList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/MessageShareRecipientData;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/MessageShareRequest;->recipientList:Ljava/util/ArrayList;

    return-void
.end method
