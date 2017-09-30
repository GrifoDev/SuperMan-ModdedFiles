.class Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile$2;
.super Lcom/samsung/android/sdk/ssf/SsfListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->setUserPrivacy(Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/PrivacyConstants;Ljava/util/ArrayList;Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/SetPrivacyListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;

.field final synthetic val$entry:Lcom/samsung/android/sdk/ssf/contact/io/PrivacyRequestInfo;

.field final synthetic val$listener:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/SetPrivacyListener;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/SetPrivacyListener;Lcom/samsung/android/sdk/ssf/contact/io/PrivacyRequestInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile$2;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;

    iput-object p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile$2;->val$listener:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/SetPrivacyListener;

    iput-object p3, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile$2;->val$entry:Lcom/samsung/android/sdk/ssf/contact/io/PrivacyRequestInfo;

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/SsfListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgress(IILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public onResponse(ILjava/lang/Object;Lcom/samsung/android/sdk/ssf/SsfResult;Ljava/lang/Object;)V
    .locals 4

    const/16 v1, 0xc8

    if-eqz p2, :cond_0

    iget v0, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->httpStatusCode:I

    if-eq v0, v1, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile$2;->val$listener:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/SetPrivacyListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile$2;->val$listener:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/SetPrivacyListener;

    new-instance v1, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfileErrorResponse;

    iget v2, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->httpStatusCode:I

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile$2;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;

    invoke-static {v3, p3}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->access$400(Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;Lcom/samsung/android/sdk/ssf/SsfResult;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfileErrorResponse;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/SetPrivacyListener;->onError(Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfileErrorResponse;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget v0, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->httpStatusCode:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile$2;->val$entry:Lcom/samsung/android/sdk/ssf/contact/io/PrivacyRequestInfo;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/contact/io/PrivacyRequestInfo;->getLevel()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/PrivacyConstants;->fromString(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/PrivacyConstants;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CPref;->setPrivacy(Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/PrivacyConstants;)V

    const-string v0, "ME Privacy successfully updated."

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile$2;->val$listener:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/SetPrivacyListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile$2;->val$listener:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/SetPrivacyListener;

    new-instance v1, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfileBaseResponse;

    invoke-direct {v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfileBaseResponse;-><init>()V

    invoke-interface {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/SetPrivacyListener;->onSuccess(Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfileBaseResponse;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
