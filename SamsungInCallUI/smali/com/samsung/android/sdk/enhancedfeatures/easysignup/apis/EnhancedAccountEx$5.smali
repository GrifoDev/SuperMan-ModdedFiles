.class final Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccountEx$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccountEx;->authDeviceByMo(Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/listener/EnhancedAccountExAuthListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/listener/EnhancedAccountExAuthListener;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/listener/EnhancedAccountExAuthListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccountEx$5;->val$listener:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/listener/EnhancedAccountExAuthListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccountEx$5;->val$listener:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/listener/EnhancedAccountExAuthListener;

    new-instance v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountErrorResponse;

    const/16 v2, 0x67

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountErrorResponse;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/listener/EnhancedAccountExAuthListener;->onError(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountErrorResponse;)V

    return-void
.end method
