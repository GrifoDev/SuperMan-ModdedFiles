.class Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile$3;
.super Lcom/samsung/android/sdk/ssf/SsfListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->getUserProfile(Ljava/lang/String;ILcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/GetProfileListner;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;

.field final synthetic val$listener:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/GetProfileListner;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/GetProfileListner;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile$3;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;

    iput-object p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile$3;->val$listener:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/GetProfileListner;

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

    const/4 v0, 0x0

    const/16 v2, 0xc8

    if-eqz p2, :cond_0

    iget v1, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->httpStatusCode:I

    if-eq v1, v2, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile$3;->val$listener:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/GetProfileListner;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile$3;->val$listener:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/GetProfileListner;

    new-instance v1, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfileErrorResponse;

    iget v2, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->httpStatusCode:I

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile$3;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;

    invoke-static {v3, p3}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->access$400(Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;Lcom/samsung/android/sdk/ssf/SsfResult;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfileErrorResponse;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/GetProfileListner;->onError(Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfileErrorResponse;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v1, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->httpStatusCode:I

    if-ne v1, v2, :cond_1

    const-string v1, "Profile details success."

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    check-cast p2, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    if-eqz p2, :cond_3

    invoke-static {p2}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/Utils;->contactResponseToProfileDetails(Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;)Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfileDetails;

    move-result-object v0

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile$3;->val$listener:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/GetProfileListner;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile$3;->val$listener:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/GetProfileListner;

    invoke-interface {v1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/GetProfileListner;->onSuccess(Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfileDetails;)V

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ClassCastException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/ClassCastException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object p2, v0

    goto :goto_1
.end method
