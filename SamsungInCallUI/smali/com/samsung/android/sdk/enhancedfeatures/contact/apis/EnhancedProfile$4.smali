.class Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile$4;
.super Lcom/samsung/android/sdk/ssf/SsfListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->getGroupProfileInfo(Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/request/GroupProfileRequest;ILcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/GetGroupProfileListner;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;

.field final synthetic val$listener:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/GetGroupProfileListner;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/GetGroupProfileListner;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile$4;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;

    iput-object p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile$4;->val$listener:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/GetGroupProfileListner;

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

    const/16 v1, 0xc8

    if-eqz p2, :cond_0

    iget v0, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->httpStatusCode:I

    if-eq v0, v1, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile$4;->val$listener:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/GetGroupProfileListner;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile$4;->val$listener:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/GetGroupProfileListner;

    new-instance v1, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfileErrorResponse;

    iget v2, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->httpStatusCode:I

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile$4;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;

    invoke-static {v3, p3}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->access$400(Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;Lcom/samsung/android/sdk/ssf/SsfResult;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfileErrorResponse;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/GetGroupProfileListner;->onError(Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfileErrorResponse;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v0, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->httpStatusCode:I

    if-ne v0, v1, :cond_1

    const-string v0, "getGroupProfileInfo successfully updated."

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/GroupProfileDetails;

    invoke-direct {v2}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/GroupProfileDetails;-><init>()V

    const/4 v0, 0x0

    :try_start_0
    check-cast p2, Lcom/samsung/android/sdk/ssf/contact/io/ContactsListResponse;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    if-eqz p2, :cond_5

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/contact/io/ContactsListResponse;->getContactsList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/contact/io/ContactsListResponse;->getContactsList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/contact/io/ContactsListResponse;->getContactsList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/contact/io/ContactsListResponse;->getContactsList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;

    if-eqz v0, :cond_3

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/Utils;->contactResponseToProfileDetails(Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;)Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfileDetails;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :catch_0
    move-exception v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " ClassCastException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/ClassCastException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->access$000()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object p2, v0

    goto :goto_1

    :cond_4
    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/GroupProfileDetails;->setCts(Ljava/util/List;)V

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile$4;->val$listener:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/GetGroupProfileListner;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile$4;->val$listener:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/GetGroupProfileListner;

    invoke-interface {v0, v2}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/GetGroupProfileListner;->onSuccess(Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/GroupProfileDetails;)V

    goto :goto_0
.end method
