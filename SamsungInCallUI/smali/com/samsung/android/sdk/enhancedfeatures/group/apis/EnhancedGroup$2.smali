.class Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/samsung/android/sdk/enhancedfeatures/internal/common/EnhancedFeatureInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup$2;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeregister()V
    .locals 2

    const-string v0, "onDeregister"

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/util/GLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPushReceive(Landroid/content/Context;Landroid/content/Intent;I)V
    .locals 2

    const-string v0, "Received Group Push"

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/util/GLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup$2;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;->access$100(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;)Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/EnhancedGroupPushListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup$2;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;->requestGroupPushInfo()V

    :cond_0
    return-void
.end method

.method public onRegister()V
    .locals 2

    const-string v0, "onRegister"

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/util/GLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
