.class public Lcom/samsung/android/sdk/ssf/contact/ContactsManager;
.super Ljava/lang/Object;


# static fields
.field private static final CONTACT_API_VERSION_1:I = 0x1

.field private static final CONTACT_API_VERSION_2:I = 0x2

.field private static final CONTACT_TOKEN_PATH:Ljava/lang/String; = "uc/v1/contact/token"

.field private static CREATE_CONTACT_LIST_PATH:Ljava/lang/String; = null

.field private static final CREATE_CONTACT_LIST_PATH_V1:Ljava/lang/String; = "uc/v1/contact/new"

.field private static final CREATE_CONTACT_LIST_PATH_V2:Ljava/lang/String; = "uc/v2/contact/new"

.field private static final INPUT_NULL:Ljava/lang/String; = "Input shouldn\'t be null."

.field private static final MAIN_THREAD_NOT_ALLOWED:Ljava/lang/String; = "This is a blocking call. Should not be called from MAIN thread."

.field private static final POLLING_TIMESTAMP_PATH:Ljava/lang/String; = "poll"

.field private static final SEARCH_CONTACT_PATH:Ljava/lang/String; = "uc/v1/search/contact"

.field private static UPDATE_READ_CONTACT_LIST_PATH:Ljava/lang/String; = null

.field private static final UPDATE_READ_CONTACT_LIST_PATH_V1:Ljava/lang/String; = "uc/v1/contact"

.field private static final UPDATE_READ_CONTACT_LIST_PATH_V2:Ljava/lang/String; = "uc/v2/contact"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "uc/v1/contact/new"

    sput-object v0, Lcom/samsung/android/sdk/ssf/contact/ContactsManager;->CREATE_CONTACT_LIST_PATH:Ljava/lang/String;

    const-string v0, "uc/v1/contact"

    sput-object v0, Lcom/samsung/android/sdk/ssf/contact/ContactsManager;->UPDATE_READ_CONTACT_LIST_PATH:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkSsfClientListnerValidity(Lcom/samsung/android/sdk/ssf/SsfClient;Lcom/samsung/android/sdk/ssf/SsfListener;)V
    .locals 2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->validateInstance()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SsfClient instance cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-nez p1, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Input shouldn\'t be null. SsfListner has null value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-void
.end method

.method private static checkSsfClientValidity(Lcom/samsung/android/sdk/ssf/SsfClient;)V
    .locals 2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->validateInstance()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SsfClient instance cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method public static createContactList(Lcom/samsung/android/sdk/ssf/SsfClient;Ljava/util/List;)Lcom/samsung/android/sdk/ssf/contact/io/ContactsListResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/ssf/SsfClient;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/ssf/contact/io/ContactRequestInfo;",
            ">;)",
            "Lcom/samsung/android/sdk/ssf/contact/io/ContactsListResponse;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/samsung/android/sdk/ssf/contact/ContactsManager;->createContactList(Lcom/samsung/android/sdk/ssf/SsfClient;Ljava/util/List;Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;)Lcom/samsung/android/sdk/ssf/contact/io/ContactsListResponse;

    move-result-object v0

    return-object v0
.end method

.method public static createContactList(Lcom/samsung/android/sdk/ssf/SsfClient;Ljava/util/List;Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;)Lcom/samsung/android/sdk/ssf/contact/io/ContactsListResponse;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/ssf/SsfClient;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/ssf/contact/io/ContactRequestInfo;",
            ">;",
            "Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;",
            ")",
            "Lcom/samsung/android/sdk/ssf/contact/io/ContactsListResponse;"
        }
    .end annotation

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/samsung/android/sdk/ssf/contact/server/ContactException;

    const/16 v1, 0x7531

    const-string v2, "This is a blocking call. Should not be called from MAIN thread."

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/ssf/contact/server/ContactException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/sdk/ssf/contact/ContactsManager;->checkSsfClientValidity(Lcom/samsung/android/sdk/ssf/SsfClient;)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getApiServerUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/ssf/contact/ContactsManager;->CREATE_CONTACT_LIST_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/android/volley/toolbox/RequestFuture;->newFuture()Lcom/android/volley/toolbox/RequestFuture;

    move-result-object v6

    new-instance v0, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    const/4 v1, 0x1

    const-class v3, Lcom/samsung/android/sdk/ssf/contact/io/ContactsListResponse;

    const/4 v4, -0x1

    new-instance v5, Lcom/samsung/android/sdk/ssf/contact/server/ContactResponseListener;

    const-class v7, Lcom/samsung/android/sdk/ssf/contact/io/ContactsListResponse;

    invoke-direct {v5, v6, v7}, Lcom/samsung/android/sdk/ssf/contact/server/ContactResponseListener;-><init>(Lcom/android/volley/toolbox/RequestFuture;Ljava/lang/Class;)V

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;-><init>(ILjava/lang/String;Ljava/lang/Class;ILcom/samsung/android/sdk/ssf/common/model/ResponseListener;)V

    const-string v1, "Access-token"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    const-string v1, "Duid"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getDuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    const-string v1, "x-sc-appId"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;->getTimeout()I

    move-result v1

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;->getRetris()I

    move-result v2

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;->getBackoffMult()F

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->setTimeout(IIF)V

    :cond_1
    new-instance v1, Lcom/samsung/android/sdk/ssf/contact/io/ContactsListRequest;

    invoke-direct {v1, p1}, Lcom/samsung/android/sdk/ssf/contact/io/ContactsListRequest;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->setBody(Ljava/lang/Object;)V

    invoke-static {}, Lcom/samsung/android/sdk/ssf/common/model/RequestManager;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    invoke-virtual {v6}, Lcom/android/volley/toolbox/RequestFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/SsfResult;

    if-eqz v0, :cond_3

    iget v1, v0, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    const/16 v2, 0x2710

    if-ne v1, v2, :cond_2

    check-cast v0, Lcom/samsung/android/sdk/ssf/contact/io/ContactsListResponse;

    return-object v0

    :cond_2
    new-instance v1, Lcom/samsung/android/sdk/ssf/contact/server/ContactException;

    invoke-direct {v1, v0}, Lcom/samsung/android/sdk/ssf/contact/server/ContactException;-><init>(Lcom/samsung/android/sdk/ssf/SsfResult;)V

    throw v1

    :cond_3
    new-instance v0, Lcom/samsung/android/sdk/ssf/contact/server/ContactException;

    const/16 v1, 0x2af8

    const-string v2, "Internal Sdk Error"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/ssf/contact/server/ContactException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public static createContactList(Lcom/samsung/android/sdk/ssf/SsfClient;Ljava/util/List;ILcom/samsung/android/sdk/ssf/SsfListener;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/ssf/SsfClient;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/ssf/contact/io/ContactRequestInfo;",
            ">;I",
            "Lcom/samsung/android/sdk/ssf/SsfListener;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/samsung/android/sdk/ssf/contact/ContactsManager;->createContactList(Lcom/samsung/android/sdk/ssf/SsfClient;Ljava/util/List;ILcom/samsung/android/sdk/ssf/SsfListener;Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;)Z

    move-result v0

    return v0
.end method

.method public static createContactList(Lcom/samsung/android/sdk/ssf/SsfClient;Ljava/util/List;ILcom/samsung/android/sdk/ssf/SsfListener;Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/ssf/SsfClient;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/ssf/contact/io/ContactRequestInfo;",
            ">;I",
            "Lcom/samsung/android/sdk/ssf/SsfListener;",
            "Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;",
            ")Z"
        }
    .end annotation

    const/4 v1, 0x1

    invoke-static {p0, p3}, Lcom/samsung/android/sdk/ssf/contact/ContactsManager;->checkSsfClientListnerValidity(Lcom/samsung/android/sdk/ssf/SsfClient;Lcom/samsung/android/sdk/ssf/SsfListener;)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getApiServerUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    sget-object v2, Lcom/samsung/android/sdk/ssf/contact/ContactsManager;->CREATE_CONTACT_LIST_PATH:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/samsung/android/sdk/ssf/contact/server/ContactResponseListener;

    invoke-direct {v5, p3}, Lcom/samsung/android/sdk/ssf/contact/server/ContactResponseListener;-><init>(Lcom/samsung/android/sdk/ssf/SsfListener;)V

    new-instance v0, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    const-class v3, Lcom/samsung/android/sdk/ssf/contact/io/ContactsListResponse;

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;-><init>(ILjava/lang/String;Ljava/lang/Class;ILcom/samsung/android/sdk/ssf/common/model/ResponseListener;)V

    const-string v2, "Access-token"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getAccessToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    const-string v2, "Duid"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getDuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    const-string v2, "x-sc-appId"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;->getTimeout()I

    move-result v2

    invoke-virtual {p4}, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;->getRetris()I

    move-result v3

    invoke-virtual {p4}, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;->getBackoffMult()F

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->setTimeout(IIF)V

    :cond_0
    new-instance v2, Lcom/samsung/android/sdk/ssf/contact/io/ContactsListRequest;

    invoke-direct {v2, p1}, Lcom/samsung/android/sdk/ssf/contact/io/ContactsListRequest;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->setBody(Ljava/lang/Object;)V

    invoke-static {}, Lcom/samsung/android/sdk/ssf/common/model/RequestManager;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    return v1
.end method

.method private static deleteContactList(Lcom/samsung/android/sdk/ssf/SsfClient;Ljava/util/List;)Lcom/samsung/android/sdk/ssf/contact/io/ContactsListResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/ssf/SsfClient;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/ssf/contact/io/ContactRequestInfo;",
            ">;)",
            "Lcom/samsung/android/sdk/ssf/contact/io/ContactsListResponse;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method private static deleteContactList(Lcom/samsung/android/sdk/ssf/SsfClient;Ljava/util/List;ILcom/samsung/android/sdk/ssf/SsfListener;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/ssf/SsfClient;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/ssf/contact/io/ContactRequestInfo;",
            ">;I",
            "Lcom/samsung/android/sdk/ssf/SsfListener;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public static getContactToken(Lcom/samsung/android/sdk/ssf/SsfClient;I)Lcom/samsung/android/sdk/ssf/contact/io/GetContactTokenResponse;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/samsung/android/sdk/ssf/contact/ContactsManager;->getContactToken(Lcom/samsung/android/sdk/ssf/SsfClient;ILcom/samsung/android/sdk/ssf/common/ConnectTimeout;)Lcom/samsung/android/sdk/ssf/contact/io/GetContactTokenResponse;

    move-result-object v0

    return-object v0
.end method

.method public static getContactToken(Lcom/samsung/android/sdk/ssf/SsfClient;ILcom/samsung/android/sdk/ssf/common/ConnectTimeout;)Lcom/samsung/android/sdk/ssf/contact/io/GetContactTokenResponse;
    .locals 8

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/samsung/android/sdk/ssf/contact/server/ContactException;

    const/16 v1, 0x7531

    const-string v2, "This is a blocking call. Should not be called from MAIN thread."

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/ssf/contact/server/ContactException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/sdk/ssf/contact/ContactsManager;->checkSsfClientValidity(Lcom/samsung/android/sdk/ssf/SsfClient;)V

    if-gtz p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Input shouldn\'t be null. type parameter should not be 0 or negative = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getApiServerUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "uc/v1/contact/token"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/android/volley/toolbox/RequestFuture;->newFuture()Lcom/android/volley/toolbox/RequestFuture;

    move-result-object v6

    new-instance v0, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    const/4 v1, 0x0

    const-class v3, Lcom/samsung/android/sdk/ssf/contact/io/GetContactTokenResponse;

    const/4 v4, -0x1

    new-instance v5, Lcom/samsung/android/sdk/ssf/contact/server/ContactResponseListener;

    const-class v7, Lcom/samsung/android/sdk/ssf/contact/io/GetContactTokenResponse;

    invoke-direct {v5, v6, v7}, Lcom/samsung/android/sdk/ssf/contact/server/ContactResponseListener;-><init>(Lcom/android/volley/toolbox/RequestFuture;Ljava/lang/Class;)V

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;-><init>(ILjava/lang/String;Ljava/lang/Class;ILcom/samsung/android/sdk/ssf/common/model/ResponseListener;)V

    const-string v1, "Access-token"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    const-string v1, "Duid"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getDuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    const-string v1, "x-sc-appId"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    const-string v1, "type"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;->getTimeout()I

    move-result v1

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;->getRetris()I

    move-result v2

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;->getBackoffMult()F

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->setTimeout(IIF)V

    :cond_2
    invoke-static {}, Lcom/samsung/android/sdk/ssf/common/model/RequestManager;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    invoke-virtual {v6}, Lcom/android/volley/toolbox/RequestFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/SsfResult;

    if-eqz v0, :cond_4

    iget v1, v0, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    const/16 v2, 0x2710

    if-ne v1, v2, :cond_3

    check-cast v0, Lcom/samsung/android/sdk/ssf/contact/io/GetContactTokenResponse;

    return-object v0

    :cond_3
    new-instance v1, Lcom/samsung/android/sdk/ssf/contact/server/ContactException;

    invoke-direct {v1, v0}, Lcom/samsung/android/sdk/ssf/contact/server/ContactException;-><init>(Lcom/samsung/android/sdk/ssf/SsfResult;)V

    throw v1

    :cond_4
    new-instance v0, Lcom/samsung/android/sdk/ssf/contact/server/ContactException;

    const/16 v1, 0x2af8

    const-string v2, "Internal Sdk Error"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/ssf/contact/server/ContactException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public static getContactToken(Lcom/samsung/android/sdk/ssf/SsfClient;IILcom/samsung/android/sdk/ssf/SsfListener;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/samsung/android/sdk/ssf/contact/ContactsManager;->getContactToken(Lcom/samsung/android/sdk/ssf/SsfClient;IILcom/samsung/android/sdk/ssf/SsfListener;Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;)Z

    move-result v0

    return v0
.end method

.method public static getContactToken(Lcom/samsung/android/sdk/ssf/SsfClient;IILcom/samsung/android/sdk/ssf/SsfListener;Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;)Z
    .locals 6

    invoke-static {p0, p3}, Lcom/samsung/android/sdk/ssf/contact/ContactsManager;->checkSsfClientListnerValidity(Lcom/samsung/android/sdk/ssf/SsfClient;Lcom/samsung/android/sdk/ssf/SsfListener;)V

    if-gtz p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Input shouldn\'t be null. type parameter should not be 0 or negative = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getApiServerUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "uc/v1/contact/token"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/samsung/android/sdk/ssf/contact/server/ContactResponseListener;

    invoke-direct {v5, p3}, Lcom/samsung/android/sdk/ssf/contact/server/ContactResponseListener;-><init>(Lcom/samsung/android/sdk/ssf/SsfListener;)V

    new-instance v0, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    const/4 v1, 0x0

    const-class v3, Lcom/samsung/android/sdk/ssf/contact/io/GetContactTokenResponse;

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;-><init>(ILjava/lang/String;Ljava/lang/Class;ILcom/samsung/android/sdk/ssf/common/model/ResponseListener;)V

    const-string v1, "Access-token"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    const-string v1, "Duid"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getDuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    const-string v1, "x-sc-appId"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    const-string v1, "type"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    if-eqz p4, :cond_1

    invoke-virtual {p4}, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;->getTimeout()I

    move-result v1

    invoke-virtual {p4}, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;->getRetris()I

    move-result v2

    invoke-virtual {p4}, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;->getBackoffMult()F

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->setTimeout(IIF)V

    :cond_1
    invoke-static {}, Lcom/samsung/android/sdk/ssf/common/model/RequestManager;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    const/4 v0, 0x1

    return v0
.end method

.method public static readContactList(Lcom/samsung/android/sdk/ssf/SsfClient;ZLjava/lang/Long;)Lcom/samsung/android/sdk/ssf/contact/io/ContactReadResponse;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/samsung/android/sdk/ssf/contact/ContactsManager;->readContactList(Lcom/samsung/android/sdk/ssf/SsfClient;ZLjava/lang/Long;Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;)Lcom/samsung/android/sdk/ssf/contact/io/ContactReadResponse;

    move-result-object v0

    return-object v0
.end method

.method public static readContactList(Lcom/samsung/android/sdk/ssf/SsfClient;ZLjava/lang/Long;Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;)Lcom/samsung/android/sdk/ssf/contact/io/ContactReadResponse;
    .locals 8

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/samsung/android/sdk/ssf/contact/server/ContactException;

    const/16 v1, 0x7531

    const-string v2, "This is a blocking call. Should not be called from MAIN thread."

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/ssf/contact/server/ContactException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/sdk/ssf/contact/ContactsManager;->checkSsfClientValidity(Lcom/samsung/android/sdk/ssf/SsfClient;)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getApiServerUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_3

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/ssf/contact/ContactsManager;->UPDATE_READ_CONTACT_LIST_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gez v1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Input shouldn\'t be null. Timestamp parameter should not have negative value timestamp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string v1, "poll"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "tt"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :goto_0
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/android/volley/toolbox/RequestFuture;->newFuture()Lcom/android/volley/toolbox/RequestFuture;

    move-result-object v6

    new-instance v0, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    const/4 v1, 0x0

    const-class v3, Lcom/samsung/android/sdk/ssf/contact/io/ContactReadResponse;

    const/4 v4, -0x1

    new-instance v5, Lcom/samsung/android/sdk/ssf/contact/server/ContactResponseListener;

    const-class v7, Lcom/samsung/android/sdk/ssf/contact/io/ContactReadResponse;

    invoke-direct {v5, v6, v7}, Lcom/samsung/android/sdk/ssf/contact/server/ContactResponseListener;-><init>(Lcom/android/volley/toolbox/RequestFuture;Ljava/lang/Class;)V

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;-><init>(ILjava/lang/String;Ljava/lang/Class;ILcom/samsung/android/sdk/ssf/common/model/ResponseListener;)V

    const-string v1, "Access-token"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    const-string v1, "Duid"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getDuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    const-string v1, "x-sc-appId"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;->getTimeout()I

    move-result v1

    invoke-virtual {p3}, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;->getRetris()I

    move-result v2

    invoke-virtual {p3}, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;->getBackoffMult()F

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->setTimeout(IIF)V

    :cond_2
    invoke-static {}, Lcom/samsung/android/sdk/ssf/common/model/RequestManager;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    invoke-virtual {v6}, Lcom/android/volley/toolbox/RequestFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/SsfResult;

    if-eqz v0, :cond_5

    iget v1, v0, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    const/16 v2, 0x2710

    if-ne v1, v2, :cond_4

    check-cast v0, Lcom/samsung/android/sdk/ssf/contact/io/ContactReadResponse;

    return-object v0

    :cond_3
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "uc/v1/contact"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    goto :goto_0

    :cond_4
    new-instance v1, Lcom/samsung/android/sdk/ssf/contact/server/ContactException;

    invoke-direct {v1, v0}, Lcom/samsung/android/sdk/ssf/contact/server/ContactException;-><init>(Lcom/samsung/android/sdk/ssf/SsfResult;)V

    throw v1

    :cond_5
    new-instance v0, Lcom/samsung/android/sdk/ssf/contact/server/ContactException;

    const/16 v1, 0x2af8

    const-string v2, "Internal Sdk Error"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/ssf/contact/server/ContactException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public static readContactList(Lcom/samsung/android/sdk/ssf/SsfClient;ZLjava/lang/Long;ILcom/samsung/android/sdk/ssf/SsfListener;)Z
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/sdk/ssf/contact/ContactsManager;->readContactList(Lcom/samsung/android/sdk/ssf/SsfClient;ZLjava/lang/Long;ILcom/samsung/android/sdk/ssf/SsfListener;Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;)Z

    move-result v0

    return v0
.end method

.method public static readContactList(Lcom/samsung/android/sdk/ssf/SsfClient;ZLjava/lang/Long;ILcom/samsung/android/sdk/ssf/SsfListener;Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;)Z
    .locals 6

    invoke-static {p0, p4}, Lcom/samsung/android/sdk/ssf/contact/ContactsManager;->checkSsfClientListnerValidity(Lcom/samsung/android/sdk/ssf/SsfClient;Lcom/samsung/android/sdk/ssf/SsfListener;)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getApiServerUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_2

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/ssf/contact/ContactsManager;->UPDATE_READ_CONTACT_LIST_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Input shouldn\'t be null. Timestamp parameter should not have negative value timestamp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string v1, "poll"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "tt"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/samsung/android/sdk/ssf/contact/server/ContactResponseListener;

    invoke-direct {v5, p4}, Lcom/samsung/android/sdk/ssf/contact/server/ContactResponseListener;-><init>(Lcom/samsung/android/sdk/ssf/SsfListener;)V

    new-instance v0, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    const/4 v1, 0x0

    const-class v3, Lcom/samsung/android/sdk/ssf/contact/io/ContactReadResponse;

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;-><init>(ILjava/lang/String;Ljava/lang/Class;ILcom/samsung/android/sdk/ssf/common/model/ResponseListener;)V

    const-string v1, "Access-token"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    const-string v1, "Duid"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getDuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    const-string v1, "x-sc-appId"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    if-eqz p5, :cond_1

    invoke-virtual {p5}, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;->getTimeout()I

    move-result v1

    invoke-virtual {p5}, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;->getRetris()I

    move-result v2

    invoke-virtual {p5}, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;->getBackoffMult()F

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->setTimeout(IIF)V

    :cond_1
    invoke-static {}, Lcom/samsung/android/sdk/ssf/common/model/RequestManager;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    const/4 v0, 0x1

    return v0

    :cond_2
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "uc/v1/contact"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    goto :goto_0
.end method

.method public static searchContact(Lcom/samsung/android/sdk/ssf/SsfClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/contact/io/ContactSearchResponse;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/samsung/android/sdk/ssf/contact/ContactsManager;->searchContact(Lcom/samsung/android/sdk/ssf/SsfClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;)Lcom/samsung/android/sdk/ssf/contact/io/ContactSearchResponse;

    move-result-object v0

    return-object v0
.end method

.method public static searchContact(Lcom/samsung/android/sdk/ssf/SsfClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;)Lcom/samsung/android/sdk/ssf/contact/io/ContactSearchResponse;
    .locals 8

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/samsung/android/sdk/ssf/contact/server/ContactException;

    const/16 v1, 0x7531

    const-string v2, "This is a blocking call. Should not be called from MAIN thread."

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/ssf/contact/server/ContactException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/sdk/ssf/contact/ContactsManager;->checkSsfClientValidity(Lcom/samsung/android/sdk/ssf/SsfClient;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Input shouldn\'t be null. duid parameter should not have null or empty value duid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Input shouldn\'t be null. keyword parameter should not have null or empty value keyword = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Input shouldn\'t be null. Contact Token parameter should not have null or empty value contactToken = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getApiServerUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "uc/v1/search/contact"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "duid"

    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "keyword"

    invoke-virtual {v0, v1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/android/volley/toolbox/RequestFuture;->newFuture()Lcom/android/volley/toolbox/RequestFuture;

    move-result-object v6

    new-instance v0, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    const/4 v1, 0x0

    const-class v3, Lcom/samsung/android/sdk/ssf/contact/io/ContactSearchResponse;

    const/4 v4, -0x1

    new-instance v5, Lcom/samsung/android/sdk/ssf/contact/server/ContactResponseListener;

    const-class v7, Lcom/samsung/android/sdk/ssf/contact/io/ContactSearchResponse;

    invoke-direct {v5, v6, v7}, Lcom/samsung/android/sdk/ssf/contact/server/ContactResponseListener;-><init>(Lcom/android/volley/toolbox/RequestFuture;Ljava/lang/Class;)V

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;-><init>(ILjava/lang/String;Ljava/lang/Class;ILcom/samsung/android/sdk/ssf/common/model/ResponseListener;)V

    const-string v1, "Access-token"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    const-string v1, "Duid"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getDuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    const-string v1, "x-sc-appId"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    const-string v1, "contact-token"

    invoke-virtual {v0, v1, p3}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    if-eqz p4, :cond_4

    invoke-virtual {p4}, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;->getTimeout()I

    move-result v1

    invoke-virtual {p4}, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;->getRetris()I

    move-result v2

    invoke-virtual {p4}, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;->getBackoffMult()F

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->setTimeout(IIF)V

    :cond_4
    invoke-static {}, Lcom/samsung/android/sdk/ssf/common/model/RequestManager;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    invoke-virtual {v6}, Lcom/android/volley/toolbox/RequestFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/SsfResult;

    if-eqz v0, :cond_6

    iget v1, v0, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    const/16 v2, 0x2710

    if-ne v1, v2, :cond_5

    check-cast v0, Lcom/samsung/android/sdk/ssf/contact/io/ContactSearchResponse;

    return-object v0

    :cond_5
    new-instance v1, Lcom/samsung/android/sdk/ssf/contact/server/ContactException;

    invoke-direct {v1, v0}, Lcom/samsung/android/sdk/ssf/contact/server/ContactException;-><init>(Lcom/samsung/android/sdk/ssf/SsfResult;)V

    throw v1

    :cond_6
    new-instance v0, Lcom/samsung/android/sdk/ssf/contact/server/ContactException;

    const/16 v1, 0x2af8

    const-string v2, "Internal Sdk Error"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/ssf/contact/server/ContactException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public static searchContact(Lcom/samsung/android/sdk/ssf/SsfClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/samsung/android/sdk/ssf/SsfListener;)Z
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v6}, Lcom/samsung/android/sdk/ssf/contact/ContactsManager;->searchContact(Lcom/samsung/android/sdk/ssf/SsfClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/samsung/android/sdk/ssf/SsfListener;Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;)Z

    move-result v0

    return v0
.end method

.method public static searchContact(Lcom/samsung/android/sdk/ssf/SsfClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/samsung/android/sdk/ssf/SsfListener;Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;)Z
    .locals 6

    invoke-static {p0, p5}, Lcom/samsung/android/sdk/ssf/contact/ContactsManager;->checkSsfClientListnerValidity(Lcom/samsung/android/sdk/ssf/SsfClient;Lcom/samsung/android/sdk/ssf/SsfListener;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Input shouldn\'t be null. duid parameter should not have null or empty value duid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Input shouldn\'t be null. keyword parameter should not have null or empty value keyword = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Input shouldn\'t be null. Contact Token parameter should not have null or empty value contactToken = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getApiServerUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "uc/v1/search/contact"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "duid"

    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "keyword"

    invoke-virtual {v0, v1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/samsung/android/sdk/ssf/contact/server/ContactResponseListener;

    invoke-direct {v5, p5}, Lcom/samsung/android/sdk/ssf/contact/server/ContactResponseListener;-><init>(Lcom/samsung/android/sdk/ssf/SsfListener;)V

    new-instance v0, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    const/4 v1, 0x0

    const-class v3, Lcom/samsung/android/sdk/ssf/contact/io/ContactSearchResponse;

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;-><init>(ILjava/lang/String;Ljava/lang/Class;ILcom/samsung/android/sdk/ssf/common/model/ResponseListener;)V

    const-string v1, "Access-token"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    const-string v1, "Duid"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getDuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    const-string v1, "x-sc-appId"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    const-string v1, "contact-token"

    invoke-virtual {v0, v1, p3}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    if-eqz p6, :cond_3

    invoke-virtual {p6}, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;->getTimeout()I

    move-result v1

    invoke-virtual {p6}, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;->getRetris()I

    move-result v2

    invoke-virtual {p6}, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;->getBackoffMult()F

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->setTimeout(IIF)V

    :cond_3
    invoke-static {}, Lcom/samsung/android/sdk/ssf/common/model/RequestManager;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    const/4 v0, 0x1

    return v0
.end method

.method public static setApiVersion(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const-string v0, "uc/v1/contact/new"

    sput-object v0, Lcom/samsung/android/sdk/ssf/contact/ContactsManager;->CREATE_CONTACT_LIST_PATH:Ljava/lang/String;

    const-string v0, "uc/v1/contact"

    sput-object v0, Lcom/samsung/android/sdk/ssf/contact/ContactsManager;->UPDATE_READ_CONTACT_LIST_PATH:Ljava/lang/String;

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    const-string v0, "uc/v2/contact/new"

    sput-object v0, Lcom/samsung/android/sdk/ssf/contact/ContactsManager;->CREATE_CONTACT_LIST_PATH:Ljava/lang/String;

    const-string v0, "uc/v2/contact"

    sput-object v0, Lcom/samsung/android/sdk/ssf/contact/ContactsManager;->UPDATE_READ_CONTACT_LIST_PATH:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public static updateContactList(Lcom/samsung/android/sdk/ssf/SsfClient;Ljava/util/List;)Lcom/samsung/android/sdk/ssf/contact/io/ContactsListResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/ssf/SsfClient;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/ssf/contact/io/ContactRequestInfo;",
            ">;)",
            "Lcom/samsung/android/sdk/ssf/contact/io/ContactsListResponse;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/samsung/android/sdk/ssf/contact/ContactsManager;->updateContactList(Lcom/samsung/android/sdk/ssf/SsfClient;Ljava/util/List;Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;)Lcom/samsung/android/sdk/ssf/contact/io/ContactsListResponse;

    move-result-object v0

    return-object v0
.end method

.method public static updateContactList(Lcom/samsung/android/sdk/ssf/SsfClient;Ljava/util/List;Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;)Lcom/samsung/android/sdk/ssf/contact/io/ContactsListResponse;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/ssf/SsfClient;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/ssf/contact/io/ContactRequestInfo;",
            ">;",
            "Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;",
            ")",
            "Lcom/samsung/android/sdk/ssf/contact/io/ContactsListResponse;"
        }
    .end annotation

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/samsung/android/sdk/ssf/contact/server/ContactException;

    const/16 v1, 0x7531

    const-string v2, "This is a blocking call. Should not be called from MAIN thread."

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/ssf/contact/server/ContactException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/sdk/ssf/contact/ContactsManager;->checkSsfClientValidity(Lcom/samsung/android/sdk/ssf/SsfClient;)V

    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Input shouldn\'t be null. ContactRequest has null value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getApiServerUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/ssf/contact/ContactsManager;->UPDATE_READ_CONTACT_LIST_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/android/volley/toolbox/RequestFuture;->newFuture()Lcom/android/volley/toolbox/RequestFuture;

    move-result-object v6

    new-instance v0, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    const/4 v1, 0x1

    const-class v3, Lcom/samsung/android/sdk/ssf/contact/io/ContactsListResponse;

    const/4 v4, -0x1

    new-instance v5, Lcom/samsung/android/sdk/ssf/contact/server/ContactResponseListener;

    const-class v7, Lcom/samsung/android/sdk/ssf/contact/io/ContactsListResponse;

    invoke-direct {v5, v6, v7}, Lcom/samsung/android/sdk/ssf/contact/server/ContactResponseListener;-><init>(Lcom/android/volley/toolbox/RequestFuture;Ljava/lang/Class;)V

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;-><init>(ILjava/lang/String;Ljava/lang/Class;ILcom/samsung/android/sdk/ssf/common/model/ResponseListener;)V

    const-string v1, "Access-token"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    const-string v1, "Duid"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getDuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    const-string v1, "x-sc-appId"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;->getTimeout()I

    move-result v1

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;->getRetris()I

    move-result v2

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;->getBackoffMult()F

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->setTimeout(IIF)V

    :cond_2
    new-instance v1, Lcom/samsung/android/sdk/ssf/contact/io/ContactsListRequest;

    invoke-direct {v1, p1}, Lcom/samsung/android/sdk/ssf/contact/io/ContactsListRequest;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->setBody(Ljava/lang/Object;)V

    invoke-static {}, Lcom/samsung/android/sdk/ssf/common/model/RequestManager;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    invoke-virtual {v6}, Lcom/android/volley/toolbox/RequestFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/SsfResult;

    if-eqz v0, :cond_4

    iget v1, v0, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    const/16 v2, 0x2710

    if-ne v1, v2, :cond_3

    check-cast v0, Lcom/samsung/android/sdk/ssf/contact/io/ContactsListResponse;

    return-object v0

    :cond_3
    new-instance v1, Lcom/samsung/android/sdk/ssf/contact/server/ContactException;

    invoke-direct {v1, v0}, Lcom/samsung/android/sdk/ssf/contact/server/ContactException;-><init>(Lcom/samsung/android/sdk/ssf/SsfResult;)V

    throw v1

    :cond_4
    new-instance v0, Lcom/samsung/android/sdk/ssf/contact/server/ContactException;

    const/16 v1, 0x2af8

    const-string v2, "Internal Sdk Error"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/ssf/contact/server/ContactException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public static updateContactList(Lcom/samsung/android/sdk/ssf/SsfClient;Ljava/util/List;ILcom/samsung/android/sdk/ssf/SsfListener;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/ssf/SsfClient;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/ssf/contact/io/ContactRequestInfo;",
            ">;I",
            "Lcom/samsung/android/sdk/ssf/SsfListener;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/samsung/android/sdk/ssf/contact/ContactsManager;->updateContactList(Lcom/samsung/android/sdk/ssf/SsfClient;Ljava/util/List;ILcom/samsung/android/sdk/ssf/SsfListener;Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;)Z

    move-result v0

    return v0
.end method

.method public static updateContactList(Lcom/samsung/android/sdk/ssf/SsfClient;Ljava/util/List;ILcom/samsung/android/sdk/ssf/SsfListener;Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/ssf/SsfClient;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/ssf/contact/io/ContactRequestInfo;",
            ">;I",
            "Lcom/samsung/android/sdk/ssf/SsfListener;",
            "Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;",
            ")Z"
        }
    .end annotation

    const/4 v1, 0x1

    invoke-static {p0, p3}, Lcom/samsung/android/sdk/ssf/contact/ContactsManager;->checkSsfClientListnerValidity(Lcom/samsung/android/sdk/ssf/SsfClient;Lcom/samsung/android/sdk/ssf/SsfListener;)V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Input shouldn\'t be null. ContactRequest has null value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getApiServerUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    sget-object v2, Lcom/samsung/android/sdk/ssf/contact/ContactsManager;->UPDATE_READ_CONTACT_LIST_PATH:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/samsung/android/sdk/ssf/contact/server/ContactResponseListener;

    invoke-direct {v5, p3}, Lcom/samsung/android/sdk/ssf/contact/server/ContactResponseListener;-><init>(Lcom/samsung/android/sdk/ssf/SsfListener;)V

    new-instance v0, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    const-class v3, Lcom/samsung/android/sdk/ssf/contact/io/ContactsListResponse;

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;-><init>(ILjava/lang/String;Ljava/lang/Class;ILcom/samsung/android/sdk/ssf/common/model/ResponseListener;)V

    const-string v2, "Access-token"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getAccessToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    const-string v2, "Duid"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getDuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    const-string v2, "x-sc-appId"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    if-eqz p4, :cond_1

    invoke-virtual {p4}, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;->getTimeout()I

    move-result v2

    invoke-virtual {p4}, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;->getRetris()I

    move-result v3

    invoke-virtual {p4}, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;->getBackoffMult()F

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->setTimeout(IIF)V

    :cond_1
    new-instance v2, Lcom/samsung/android/sdk/ssf/contact/io/ContactsListRequest;

    invoke-direct {v2, p1}, Lcom/samsung/android/sdk/ssf/contact/io/ContactsListRequest;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->setBody(Ljava/lang/Object;)V

    invoke-static {}, Lcom/samsung/android/sdk/ssf/common/model/RequestManager;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    return v1
.end method
