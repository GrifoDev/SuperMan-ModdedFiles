.class Lcom/android/incallui/coreapps/GcmReceiver$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/incallui/coreapps/PermissionInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/coreapps/GcmReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/coreapps/GcmReceiver;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/incallui/coreapps/GcmReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/coreapps/GcmReceiver$1;->this$0:Lcom/android/incallui/coreapps/GcmReceiver;

    iput-object p2, p0, Lcom/android/incallui/coreapps/GcmReceiver$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/incallui/coreapps/GcmReceiver$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPermissionDenied()V
    .locals 3

    invoke-static {}, Lcom/android/incallui/coreapps/CoreAppsUtils;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Some permissions are missing..."

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onPermissionGranted()V
    .locals 4

    :try_start_0
    invoke-static {}, Lcom/android/incallui/coreapps/CoreAppsUtils;->initEnhancedFeatures()V

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/incallui/coreapps/GcmReceiver$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/incallui/coreapps/GcmReceiver$1;->val$intent:Landroid/content/Intent;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;->processReceivedPush(Landroid/content/Context;Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
