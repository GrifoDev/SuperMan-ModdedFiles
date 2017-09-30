.class Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat$4;
.super Lcom/samsung/android/sdk/ssf/SsfListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat;->getChatIdForMsisdn(JLjava/util/ArrayList;Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/DuidMsisdnListener;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat;

.field final synthetic val$cachedChatIdMsisdnList:Ljava/util/ArrayList;

.field final synthetic val$duidMsisdnListener:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/DuidMsisdnListener;

.field final synthetic val$reqId:J


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat;Ljava/util/ArrayList;Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/DuidMsisdnListener;J)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat$4;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat;

    iput-object p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat$4;->val$cachedChatIdMsisdnList:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat$4;->val$duidMsisdnListener:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/DuidMsisdnListener;

    iput-wide p4, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat$4;->val$reqId:J

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/SsfListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgress(IILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public onResponse(ILjava/lang/Object;Lcom/samsung/android/sdk/ssf/SsfResult;Ljava/lang/Object;)V
    .locals 7

    if-eqz p3, :cond_2

    iget v0, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->httpStatusCode:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat$4;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat;

    check-cast p2, Ljava/util/ArrayList;

    invoke-static {v0, p2}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat;->access$400(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/db/MessageChatIdTable;->insertOrUpdate(Ljava/util/ArrayList;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat$4;->val$cachedChatIdMsisdnList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat$4;->val$duidMsisdnListener:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/DuidMsisdnListener;

    iget-wide v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat$4;->val$reqId:J

    invoke-interface {v1, v2, v3, v0, p4}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/DuidMsisdnListener;->onSuccess(JLjava/util/ArrayList;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat$4;->val$cachedChatIdMsisdnList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat$4;->val$duidMsisdnListener:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/DuidMsisdnListener;

    iget-wide v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat$4;->val$reqId:J

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat$4;->val$cachedChatIdMsisdnList:Ljava/util/ArrayList;

    invoke-interface {v0, v2, v3, v1, p4}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/DuidMsisdnListener;->onSuccess(JLjava/util/ArrayList;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat$4;->val$duidMsisdnListener:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/DuidMsisdnListener;

    iget-wide v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat$4;->val$reqId:J

    iget v4, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->httpStatusCode:I

    iget-object v5, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->serverErrorMsg:Ljava/lang/String;

    move-object v6, p4

    invoke-interface/range {v1 .. v6}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/DuidMsisdnListener;->onError(JILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat$4;->val$cachedChatIdMsisdnList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat$4;->val$duidMsisdnListener:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/DuidMsisdnListener;

    iget-wide v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat$4;->val$reqId:J

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat$4;->val$cachedChatIdMsisdnList:Ljava/util/ArrayList;

    invoke-interface {v0, v2, v3, v1, p4}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/DuidMsisdnListener;->onSuccess(JLjava/util/ArrayList;Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat$4;->val$duidMsisdnListener:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/DuidMsisdnListener;

    iget-wide v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat$4;->val$reqId:J

    const/4 v4, -0x1

    const-string v5, "SDK Error"

    move-object v6, p4

    invoke-interface/range {v1 .. v6}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/DuidMsisdnListener;->onError(JILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method
