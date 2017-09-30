.class Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial$1;->onPushReceive(Landroid/content/Context;Landroid/content/Intent;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial$1;

.field final synthetic val$pushEntry:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/PushEntry;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial$1;Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/PushEntry;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial$1$1;->this$1:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial$1;

    iput-object p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial$1$1;->val$pushEntry:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/PushEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial$1$1;->this$1:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial$1;

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;->access$100(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;)Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/EnhancedSocialPushListener;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial$1$1;->val$pushEntry:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/PushEntry;

    invoke-interface {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/EnhancedSocialPushListener;->onReceivePushMessage(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/PushEntry;)V

    return-void
.end method
