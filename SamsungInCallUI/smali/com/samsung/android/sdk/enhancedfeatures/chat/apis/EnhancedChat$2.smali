.class Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat;->getEnhancedChatChannel(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/EnhancedChatListener;Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/GetChatChannelListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat;

.field final synthetic val$enhancedChatListener:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/EnhancedChatListener;

.field final synthetic val$getChatChannelListener:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/GetChatChannelListener;

.field final synthetic val$keySet:Lcom/samsung/android/sdk/ssf/message/io/KeySet;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat;Lcom/samsung/android/sdk/ssf/message/io/KeySet;Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/EnhancedChatListener;Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/GetChatChannelListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat$2;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat;

    iput-object p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat$2;->val$keySet:Lcom/samsung/android/sdk/ssf/message/io/KeySet;

    iput-object p3, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat$2;->val$enhancedChatListener:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/EnhancedChatListener;

    iput-object p4, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat$2;->val$getChatChannelListener:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/GetChatChannelListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat$2;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat;->access$100(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat;)Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v7, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat$2;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat;

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat$2;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat;

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getSsfClient(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/SsfClient;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat$2;->val$keySet:Lcom/samsung/android/sdk/ssf/message/io/KeySet;

    iget-object v4, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat$2;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat;

    invoke-static {v4}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat;->access$200(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat$2;->val$enhancedChatListener:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/EnhancedChatListener;

    new-instance v6, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/AuthorizationListenerImpl;

    invoke-direct {v6}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/AuthorizationListenerImpl;-><init>()V

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat;Lcom/samsung/android/sdk/ssf/SsfClient;Lcom/samsung/android/sdk/ssf/message/io/KeySet;Ljava/lang/String;Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/EnhancedChatListener;Lcom/samsung/android/sdk/ssf/account/AuthorizationListener;)V

    invoke-static {v7, v0}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat;->access$102(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat;Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;)Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat$2;->val$getChatChannelListener:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/GetChatChannelListener;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat$2;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat;->access$100(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat;)Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/GetChatChannelListener;->onSuccess(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat$2;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat;->access$002(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat;Z)Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat$2;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat;->access$100(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat;)Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat$2;->val$enhancedChatListener:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/EnhancedChatListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChatChannel;->setChatChannelListener(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/EnhancedChatListener;)V

    goto :goto_0
.end method
