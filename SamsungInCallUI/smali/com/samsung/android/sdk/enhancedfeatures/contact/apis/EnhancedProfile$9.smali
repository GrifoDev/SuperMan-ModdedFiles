.class Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile$9;
.super Lcom/samsung/android/sdk/ssf/SsfListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->searchProfile(Ljava/lang/String;Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/SearchResponseListner;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;

.field final synthetic val$keyword:Ljava/lang/String;

.field final synthetic val$listener:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/SearchResponseListner;

.field final synthetic val$listner:Lcom/samsung/android/sdk/ssf/SsfListener;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/SearchResponseListner;Ljava/lang/String;Lcom/samsung/android/sdk/ssf/SsfListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile$9;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;

    iput-object p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile$9;->val$listener:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/SearchResponseListner;

    iput-object p3, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile$9;->val$keyword:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile$9;->val$listner:Lcom/samsung/android/sdk/ssf/SsfListener;

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/SsfListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgress(IILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public onResponse(ILjava/lang/Object;Lcom/samsung/android/sdk/ssf/SsfResult;Ljava/lang/Object;)V
    .locals 5

    const/4 v0, 0x0

    const/16 v2, 0xc8

    if-eqz p2, :cond_0

    iget v1, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->httpStatusCode:I

    if-eq v1, v2, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile$9;->val$listener:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/SearchResponseListner;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile$9;->val$listener:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/SearchResponseListner;

    new-instance v1, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfileErrorResponse;

    iget v2, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->httpStatusCode:I

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile$9;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;

    invoke-static {v3, p3}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->access$400(Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;Lcom/samsung/android/sdk/ssf/SsfResult;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfileErrorResponse;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/SearchResponseListner;->onError(Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfileErrorResponse;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v1, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->httpStatusCode:I

    if-ne v1, v2, :cond_1

    const-string v1, "Get Contact Token success"

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    check-cast p2, Lcom/samsung/android/sdk/ssf/contact/io/GetContactTokenResponse;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    if-eqz p2, :cond_1

    iget-object v0, p2, Lcom/samsung/android/sdk/ssf/contact/io/GetContactTokenResponse;->contact_token:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p2, Lcom/samsung/android/sdk/ssf/contact/io/GetContactTokenResponse;->expire_time:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p2, Lcom/samsung/android/sdk/ssf/contact/io/GetContactTokenResponse;->contact_token:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CPref;->setContactToken(JLjava/lang/String;)V

    const/4 v0, 0x0

    :try_start_1
    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getSsfClient(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/SsfClient;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile$9;->val$keyword:Ljava/lang/String;

    iget-object v2, p2, Lcom/samsung/android/sdk/ssf/contact/io/GetContactTokenResponse;->contact_token:Ljava/lang/String;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile$9;->val$listner:Lcom/samsung/android/sdk/ssf/SsfListener;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/samsung/android/sdk/ssf/contact/ProfileManager;->searchProfile(Lcom/samsung/android/sdk/ssf/SsfClient;Ljava/lang/String;Ljava/lang/String;ILcom/samsung/android/sdk/ssf/SsfListener;)Z
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile$9;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile$9;->val$listener:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/SearchResponseListner;

    const/16 v3, 0x753c

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v3, v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->access$500(Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/BaseListener;ILjava/lang/String;)V

    goto :goto_0

    :catch_1
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

    :catch_2
    move-exception v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile$9;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile$9;->val$listener:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/SearchResponseListner;

    const/16 v3, 0x753b

    invoke-virtual {v0}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v3, v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->access$500(Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/BaseListener;ILjava/lang/String;)V

    goto :goto_0
.end method
