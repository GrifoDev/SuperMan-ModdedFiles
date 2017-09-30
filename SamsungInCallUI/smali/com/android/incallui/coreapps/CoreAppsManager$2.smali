.class Lcom/android/incallui/coreapps/CoreAppsManager$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountAuthListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/coreapps/CoreAppsManager;->initWithFirstCall()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/coreapps/CoreAppsManager;


# direct methods
.method constructor <init>(Lcom/android/incallui/coreapps/CoreAppsManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/coreapps/CoreAppsManager$2;->this$0:Lcom/android/incallui/coreapps/CoreAppsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeAuth(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountDeAuthResponse;)V
    .locals 3

    const-string v0, "Agifflow-CoreAppsManager"

    const-string v1, "onCreate() - onDeAuth"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
