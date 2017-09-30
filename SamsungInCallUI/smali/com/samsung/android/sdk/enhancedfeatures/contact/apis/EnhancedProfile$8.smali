.class Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile$8;
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

.field final synthetic val$listener:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/SearchResponseListner;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/SearchResponseListner;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile$8;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;

    iput-object p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile$8;->val$listener:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/SearchResponseListner;

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/SsfListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgress(IILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public onResponse(ILjava/lang/Object;Lcom/samsung/android/sdk/ssf/SsfResult;Ljava/lang/Object;)V
    .locals 6

    const/4 v1, 0x0

    const/16 v3, 0xc8

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    iget v2, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->httpStatusCode:I

    if-eq v2, v3, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile$8;->val$listener:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/SearchResponseListner;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile$8;->val$listener:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/SearchResponseListner;

    new-instance v1, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfileErrorResponse;

    iget v2, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->httpStatusCode:I

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile$8;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;

    invoke-static {v3, p3}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->access$400(Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;Lcom/samsung/android/sdk/ssf/SsfResult;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfileErrorResponse;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/SearchResponseListner;->onError(Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfileErrorResponse;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v2, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->httpStatusCode:I

    if-ne v2, v3, :cond_1

    const-string v2, "searchProfile successfully updated."

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->access$000()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/SearchResponse;

    invoke-direct {v2}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/SearchResponse;-><init>()V

    :try_start_0
    check-cast p2, Lcom/samsung/android/sdk/ssf/contact/io/ContactSearchResponse;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/contact/io/ContactSearchResponse;->getResult()Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/contact/io/ContactSearchResponse;->getResult_count()I

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v2, v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/SearchResponse;->setResult_count(I)V

    invoke-virtual {v2, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/SearchResponse;->setResult(Ljava/util/ArrayList;)V

    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile$8;->val$listener:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/SearchResponseListner;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile$8;->val$listener:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/SearchResponseListner;

    invoke-interface {v0, v2}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/SearchResponseListner;->onSuccess(Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/SearchResponse;)V

    goto :goto_0

    :catch_0
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " ClassCastException "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/ClassCastException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->access$000()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object p2, v1

    goto :goto_1

    :cond_4
    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/contact/io/ContactSearchResponse;->getResult_count()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/SearchResponse;->setResult_count(I)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v1, v0

    :goto_3
    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/contact/io/ContactSearchResponse;->getResult()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_6

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/contact/io/ContactSearchResponse;->getResult()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;

    if-eqz v0, :cond_5

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/Utils;->contactResponseToProfileDetails(Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;)Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfileDetails;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_6
    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/SearchResponse;->setResult(Ljava/util/ArrayList;)V

    goto :goto_2
.end method
