.class Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile$1$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/ContactSyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile$1;->onRegister()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile$1;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile$1;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile$1$3;->this$1:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfileErrorResponse;)V
    .locals 2

    const-string v0, "onRegister syncLocalContacts Errors"

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfileBaseResponse;)V
    .locals 2

    const-string v0, "onRegister syncLocalContacts success"

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile$1$3;->this$1:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile$1;

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->access$200(Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.coreapps.contact.ACTION_CONTACT_REGISTER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile$1$3;->this$1:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile$1;

    iget-object v1, v1, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->access$200(Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
