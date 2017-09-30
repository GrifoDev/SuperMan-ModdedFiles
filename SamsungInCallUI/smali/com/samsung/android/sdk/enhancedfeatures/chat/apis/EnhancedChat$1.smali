.class Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/listener/KeyUpdateLister;


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

.field final synthetic val$ssfClient:Lcom/samsung/android/sdk/ssf/SsfClient;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat;Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/GetChatChannelListener;Lcom/samsung/android/sdk/ssf/SsfClient;Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/EnhancedChatListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat;

    iput-object p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat$1;->val$getChatChannelListener:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/GetChatChannelListener;

    iput-object p3, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat$1;->val$ssfClient:Lcom/samsung/android/sdk/ssf/SsfClient;

    iput-object p4, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat$1;->val$enhancedChatListener:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/EnhancedChatListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyUpdateSuccess(Lcom/samsung/android/sdk/ssf/message/io/KeySet;)V
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat$1$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat$1$1;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat$1;)V

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->post(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat$1;->val$ssfClient:Lcom/samsung/android/sdk/ssf/SsfClient;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getDuid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/KeyManager;->putKeySet(Ljava/lang/String;Lcom/samsung/android/sdk/ssf/message/io/KeySet;)V

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat$1$2;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat$1$2;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat$1;Lcom/samsung/android/sdk/ssf/message/io/KeySet;)V

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
