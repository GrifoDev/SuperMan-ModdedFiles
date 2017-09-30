.class Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat$6;
.super Lcom/samsung/android/sdk/ssf/SsfListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat;->getPublicKey(ILjava/util/ArrayList;Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/PublicKeyListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat;

.field final synthetic val$publicKeyListener:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/PublicKeyListener;

.field final synthetic val$reqID:I


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat;Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/PublicKeyListener;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat$6;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat;

    iput-object p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat$6;->val$publicKeyListener:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/PublicKeyListener;

    iput p3, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat$6;->val$reqID:I

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/SsfListener;-><init>()V

    return-void
.end method

.method private convertPublicKeySet([Lcom/samsung/android/sdk/ssf/message/io/PublicKeySet;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/samsung/android/sdk/ssf/message/io/PublicKeySet;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/model/PublicKeySet;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, p1, v1

    new-instance v4, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/model/PublicKeySet;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/ssf/message/io/PublicKeySet;->getChatId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/samsung/android/sdk/ssf/message/io/PublicKeySet;->getPublickey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lcom/samsung/android/sdk/ssf/message/io/PublicKeySet;->getSignkey()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v5, v6, v3}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/model/PublicKeySet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public onProgress(IILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public onResponse(ILjava/lang/Object;Lcom/samsung/android/sdk/ssf/SsfResult;Ljava/lang/Object;)V
    .locals 4

    if-eqz p3, :cond_1

    iget v0, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->httpStatusCode:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    check-cast p2, [Lcom/samsung/android/sdk/ssf/message/io/PublicKeySet;

    check-cast p2, [Lcom/samsung/android/sdk/ssf/message/io/PublicKeySet;

    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat$6;->convertPublicKeySet([Lcom/samsung/android/sdk/ssf/message/io/PublicKeySet;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat$6;->val$publicKeyListener:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/PublicKeyListener;

    iget v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat$6;->val$reqID:I

    invoke-interface {v1, p1, v2, v0}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/PublicKeyListener;->onSuccess(IILjava/util/ArrayList;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat$6;->val$publicKeyListener:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/PublicKeyListener;

    iget v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat$6;->val$reqID:I

    iget v2, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->httpStatusCode:I

    iget-object v3, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->serverErrorMsg:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/PublicKeyListener;->onError(IILjava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat$6;->val$publicKeyListener:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/PublicKeyListener;

    iget v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat$6;->val$reqID:I

    const/4 v2, -0x1

    const-string v3, "SDK Error"

    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/PublicKeyListener;->onError(IILjava/lang/String;)V

    goto :goto_0
.end method
