.class Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat$7;
.super Lcom/samsung/android/sdk/ssf/SsfListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat;->setPublicKey(ILcom/samsung/android/sdk/enhancedfeatures/chat/apis/model/PublicKeySet;Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/PublicKeyListener;)V
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

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat$7;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat;

    iput-object p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat$7;->val$publicKeyListener:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/PublicKeyListener;

    iput p3, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat$7;->val$reqID:I

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/SsfListener;-><init>()V

    return-void
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

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat$7;->val$publicKeyListener:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/PublicKeyListener;

    iget v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat$7;->val$reqID:I

    const/4 v2, 0x0

    invoke-interface {v0, p1, v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/PublicKeyListener;->onSuccess(IILjava/util/ArrayList;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat$7;->val$publicKeyListener:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/PublicKeyListener;

    iget v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat$7;->val$reqID:I

    iget v2, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->httpStatusCode:I

    iget-object v3, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->serverErrorMsg:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/PublicKeyListener;->onError(IILjava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat$7;->val$publicKeyListener:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/PublicKeyListener;

    iget v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat$7;->val$reqID:I

    const/4 v2, -0x1

    const-string v3, "SDK Error"

    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/PublicKeyListener;->onError(IILjava/lang/String;)V

    goto :goto_0
.end method
