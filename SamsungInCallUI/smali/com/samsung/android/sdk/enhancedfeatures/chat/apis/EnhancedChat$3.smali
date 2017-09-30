.class Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat;->onPushReceive(Landroid/content/Context;Landroid/content/Intent;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat;

.field final synthetic val$pushEntry:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/PushEntry;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat;Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/PushEntry;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat$3;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat;

    iput-object p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat$3;->val$pushEntry:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/PushEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat$3;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat;->access$300(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat;)Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/EnhancedChatPushListener;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat$3;->val$pushEntry:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/PushEntry;

    invoke-interface {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/EnhancedChatPushListener;->onIncomingMessageNotification(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/PushEntry;)V

    return-void
.end method
