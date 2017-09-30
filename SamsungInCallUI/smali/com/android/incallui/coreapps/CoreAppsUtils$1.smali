.class final Lcom/android/incallui/coreapps/CoreAppsUtils$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/incallui/coreapps/PermissionInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/coreapps/CoreAppsUtils;->register()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field listener:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountListener;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/incallui/coreapps/CoreAppsUtils$1$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/coreapps/CoreAppsUtils$1$1;-><init>(Lcom/android/incallui/coreapps/CoreAppsUtils$1;)V

    iput-object v0, p0, Lcom/android/incallui/coreapps/CoreAppsUtils$1;->listener:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountListener;

    return-void
.end method


# virtual methods
.method public onPermissionDenied()V
    .locals 3

    const-string v0, "Agifflow-Agifflow-CoreAppsUtils"

    const-string v1, "register() - onPermissionDenied"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public onPermissionGranted()V
    .locals 3

    const-string v0, "Agifflow-Agifflow-CoreAppsUtils"

    const-string v1, "register() - onPermissionGranted"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/coreapps/CoreAppsUtils;->getEnhancedAccount()Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/coreapps/CoreAppsUtils$1;->listener:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount;->register(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountListener;)V

    return-void
.end method
