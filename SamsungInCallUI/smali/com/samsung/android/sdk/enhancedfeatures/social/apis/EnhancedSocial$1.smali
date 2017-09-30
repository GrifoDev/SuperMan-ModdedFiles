.class Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/samsung/android/sdk/enhancedfeatures/internal/common/EnhancedFeatureInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeregister()V
    .locals 2

    const-string v0, "onDeregister"

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/util/SocialLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPushReceive(Landroid/content/Context;Landroid/content/Intent;I)V
    .locals 2

    const-string v0, "Received Social Push"

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/util/SocialLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "appData"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/PushEntry;->parse(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/PushEntry;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "onPushReceive. Invalid pushEntry."

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/util/SocialLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;->access$100(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;)Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/EnhancedSocialPushListener;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial$1$1;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial$1$1;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial$1;Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/PushEntry;)V

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onRegister()V
    .locals 2

    const-string v0, "onRegister"

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/util/SocialLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
