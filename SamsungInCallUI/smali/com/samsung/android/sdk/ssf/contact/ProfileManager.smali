.class public Lcom/samsung/android/sdk/ssf/contact/ProfileManager;
.super Ljava/lang/Object;


# static fields
.field private static final GET_PROFILE_PATH_SERVICE:Ljava/lang/String; = "uc/v1/profile/service"

.field private static final INPUT_NULL:Ljava/lang/String; = "Input shouldn\'t be null."

.field private static final MAIN_THREAD_NOT_ALLOWED:Ljava/lang/String; = "This is a blocking call. Should not be called from MAIN thread."

.field private static final PATH_ORS_DELETE_FILE:Ljava/lang/String; = "ors/v2/rm"

.field private static final PATH_ORS_UPLOAD_FILE:Ljava/lang/String; = "ors/v2/upload"

.field public static final PATH_SET_ME_PROFILE_NUMBER_V1:Ljava/lang/String; = "uc/v1/profile/number"

.field private static final PATH_SET_ME_PROFILE_TYPE:Ljava/lang/String; = "uc/v1/profile/type"

.field private static final READ_CALL_PROFILE_CAPABILITY_PATH:Ljava/lang/String; = "uc/v3/profile/call"

.field private static final READ_CALL_PROFILE_PATH:Ljava/lang/String; = "uc/v1/profile/call"

.field private static final READ_UPDATE_PRIVACY_PATH:Ljava/lang/String; = "uc/v1/profile/privacy"

.field private static final SEARCH_PROFILE_PATH:Ljava/lang/String; = "uc/v1/search/profile"

.field private static final UPDATE_PROFILE_IMAGE_META_PATH:Ljava/lang/String; = "uc/v1/profile/img"

.field private static final UPDATE_PROFILE_PATH:Ljava/lang/String; = "uc/v1/profile"

.field private static final UPDATE_PROFILE_PATH_GROUP:Ljava/lang/String; = "uc/v1/profile/group"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static changeMeProfileNumber(Lcom/samsung/android/sdk/ssf/SsfClient;ILcom/samsung/android/sdk/ssf/contact/io/ProfileNumberRequest;Lcom/samsung/android/sdk/ssf/SsfListener;Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;)Z
    .locals 6

    const/4 v1, 0x1

    invoke-static {p0, p3}, Lcom/samsung/android/sdk/ssf/contact/ProfileManager;->checkSsfClientListnerValidity(Lcom/samsung/android/sdk/ssf/SsfClient;Lcom/samsung/android/sdk/ssf/SsfListener;)V

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Input shouldn\'t be null.ProfileNumberRequest has null value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getApiServerUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "uc/v1/profile/number"

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/samsung/android/sdk/ssf/contact/server/ContactResponseListener;

    invoke-direct {v5, p3}, Lcom/samsung/android/sdk/ssf/contact/server/ContactResponseListener;-><init>(Lcom/samsung/android/sdk/ssf/SsfListener;)V

    new-instance v0, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    const-class v3, Lcom/samsung/android/sdk/ssf/SsfResult;

    move v4, p1

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
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    const-class v3, Lcom/samsung/android/sdk/ssf/contact/io/ProfileNumberRequest;

    invoke-virtual {v2, p2, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->setBody(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/sdk/ssf/common/model/RequestManager;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    return v1
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

.method public static deleteProfileImageByByteBlocking(Lcom/samsung/android/sdk/ssf/SsfClient;Ljava/lang/Object;Ljava/lang/String;[BLjava/lang/String;Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;)Lcom/samsung/android/sdk/ssf/file/io/DeleteFileResponse;
    .locals 8

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    new-instance v0, Landroid/os/NetworkOnMainThreadException;

    invoke-direct {v0}, Landroid/os/NetworkOnMainThreadException;-><init>()V

    throw v0

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/sdk/ssf/contact/ProfileManager;->checkSsfClientValidity(Lcom/samsung/android/sdk/ssf/SsfClient;)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "CID cannot be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "imagePath cannot be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getFileServerUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ors/v2/rm"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "uid"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getDuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "access_token"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "cid"

    invoke-virtual {v0, v1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "did"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/android/volley/toolbox/RequestFuture;->newFuture()Lcom/android/volley/toolbox/RequestFuture;

    move-result-object v6

    new-instance v0, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    const/4 v1, 0x3

    const-class v3, Lcom/samsung/android/sdk/ssf/file/io/DeleteFileResponse;

    const/4 v4, -0x1

    new-instance v5, Lcom/samsung/android/sdk/ssf/file/server/FileResponseListener;

    const-class v7, Lcom/samsung/android/sdk/ssf/file/io/DeleteFileResponse;

    invoke-direct {v5, v6, v7}, Lcom/samsung/android/sdk/ssf/file/server/FileResponseListener;-><init>(Lcom/android/volley/toolbox/RequestFuture;Ljava/lang/Class;)V

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;-><init>(ILjava/lang/String;Ljava/lang/Class;ILcom/samsung/android/sdk/ssf/common/model/ResponseListener;)V

    const-string v1, "x-sc-appId"

    const-string v2, "3z5w443l4l"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    const-string v1, "Content-Type"

    const-string v2, "image/*"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->setTag(Ljava/lang/Object;)Lcom/android/volley/Request;

    invoke-virtual {v0, p3}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->setBody(Ljava/lang/Object;)V

    if-nez p5, :cond_3

    new-instance p5, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;

    const/16 v1, 0x1388

    const/4 v2, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {p5, v1, v2, v3}, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;-><init>(IIF)V

    :cond_3
    invoke-virtual {p5}, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;->getTimeout()I

    move-result v1

    invoke-virtual {p5}, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;->getRetris()I

    move-result v2

    invoke-virtual {p5}, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;->getBackoffMult()F

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->setTimeout(IIF)V

    invoke-static {}, Lcom/samsung/android/sdk/ssf/common/model/RequestManager;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    :try_start_0
    invoke-virtual {v6}, Lcom/android/volley/toolbox/RequestFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/file/io/DeleteFileResponse;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    throw v0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    throw v0
.end method

.method public static deleteProfileImageMeta(Lcom/samsung/android/sdk/ssf/SsfClient;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/samsung/android/sdk/ssf/contact/ProfileManager;->deleteProfileImageMeta(Lcom/samsung/android/sdk/ssf/SsfClient;Ljava/lang/String;Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;)Z

    move-result v0

    return v0
.end method

.method public static deleteProfileImageMeta(Lcom/samsung/android/sdk/ssf/SsfClient;Ljava/lang/String;ILcom/samsung/android/sdk/ssf/SsfListener;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/samsung/android/sdk/ssf/contact/ProfileManager;->deleteProfileImageMeta(Lcom/samsung/android/sdk/ssf/SsfClient;Ljava/lang/String;ILcom/samsung/android/sdk/ssf/SsfListener;Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;)Z

    move-result v0

    return v0
.end method

.method public static deleteProfileImageMeta(Lcom/samsung/android/sdk/ssf/SsfClient;Ljava/lang/String;ILcom/samsung/android/sdk/ssf/SsfListener;Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;)Z
    .locals 6

    invoke-static {p0, p3}, Lcom/samsung/android/sdk/ssf/contact/ProfileManager;->checkSsfClientListnerValidity(Lcom/samsung/android/sdk/ssf/SsfClient;Lcom/samsung/android/sdk/ssf/SsfListener;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Input shouldn\'t be null. ImageId has null value: imgId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    const-string v1, "uc/v1/profile/img"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "APIID"

    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/ssf/common/util/CommonUtils;->getTdkApiId(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/samsung/android/sdk/ssf/contact/server/ContactResponseListener;

    invoke-direct {v5, p3}, Lcom/samsung/android/sdk/ssf/contact/server/ContactResponseListener;-><init>(Lcom/samsung/android/sdk/ssf/SsfListener;)V

    new-instance v0, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    const/4 v1, 0x3

    const-class v3, Lcom/samsung/android/sdk/ssf/SsfResult;

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;-><init>(ILjava/lang/String;Ljava/lang/Class;ILcom/samsung/android/sdk/ssf/common/model/ResponseListener;)V

    const-string v1, "imgs"

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    const-string v1, "Access-token"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    move-result-object v1

    const-string v2, "Duid"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getDuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    const-string v1, "x-sc-appId"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getAppId()Ljava/lang/String;

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

.method public static deleteProfileImageMeta(Lcom/samsung/android/sdk/ssf/SsfClient;Ljava/lang/String;Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;)Z
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
    invoke-static {p0}, Lcom/samsung/android/sdk/ssf/contact/ProfileManager;->checkSsfClientValidity(Lcom/samsung/android/sdk/ssf/SsfClient;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Input shouldn\'t be null. ImageId has null value: imgId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    const-string v1, "uc/v1/profile/img"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "APIID"

    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/ssf/common/util/CommonUtils;->getTdkApiId(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/android/volley/toolbox/RequestFuture;->newFuture()Lcom/android/volley/toolbox/RequestFuture;

    move-result-object v6

    new-instance v0, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    const/4 v1, 0x3

    const-class v3, Lcom/samsung/android/sdk/ssf/SsfResult;

    const/4 v4, -0x1

    new-instance v5, Lcom/samsung/android/sdk/ssf/contact/server/ContactResponseListener;

    const-class v7, Lcom/samsung/android/sdk/ssf/SsfResult;

    invoke-direct {v5, v6, v7}, Lcom/samsung/android/sdk/ssf/contact/server/ContactResponseListener;-><init>(Lcom/android/volley/toolbox/RequestFuture;Ljava/lang/Class;)V

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;-><init>(ILjava/lang/String;Ljava/lang/Class;ILcom/samsung/android/sdk/ssf/common/model/ResponseListener;)V

    const-string v1, "imgs"

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    const-string v1, "Access-token"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    move-result-object v1

    const-string v2, "Duid"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getDuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

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

    const/4 v0, 0x1

    return v0

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

.method public static deleteProfileImageToORSBlocking(Lcom/samsung/android/sdk/ssf/SsfClient;Ljava/lang/Object;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;)Lcom/samsung/android/sdk/ssf/file/io/DeleteFileResponse;
    .locals 8

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    new-instance v0, Landroid/os/NetworkOnMainThreadException;

    invoke-direct {v0}, Landroid/os/NetworkOnMainThreadException;-><init>()V

    throw v0

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/sdk/ssf/contact/ProfileManager;->checkSsfClientValidity(Lcom/samsung/android/sdk/ssf/SsfClient;)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "CID cannot be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "imagePath cannot be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getFileServerUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ors/v2/rm"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "uid"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getDuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "access_token"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "cid"

    invoke-virtual {v0, v1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "did"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/android/volley/toolbox/RequestFuture;->newFuture()Lcom/android/volley/toolbox/RequestFuture;

    move-result-object v6

    new-instance v0, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    const/4 v1, 0x3

    const-class v3, Lcom/samsung/android/sdk/ssf/file/io/DeleteFileResponse;

    const/4 v4, -0x1

    new-instance v5, Lcom/samsung/android/sdk/ssf/file/server/FileResponseListener;

    const-class v7, Lcom/samsung/android/sdk/ssf/file/io/DeleteFileResponse;

    invoke-direct {v5, v6, v7}, Lcom/samsung/android/sdk/ssf/file/server/FileResponseListener;-><init>(Lcom/android/volley/toolbox/RequestFuture;Ljava/lang/Class;)V

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;-><init>(ILjava/lang/String;Ljava/lang/Class;ILcom/samsung/android/sdk/ssf/common/model/ResponseListener;)V

    const-string v1, "x-sc-appId"

    const-string v2, "3z5w443l4l"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    const-string v1, "User-Agent"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getUserAgent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    const-string v1, "Content-Type"

    const-string v2, "image/*"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    invoke-virtual {v0, p3}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->setBody(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->setTag(Ljava/lang/Object;)Lcom/android/volley/Request;

    if-nez p5, :cond_3

    new-instance p5, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;

    const/16 v1, 0x1388

    const/4 v2, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {p5, v1, v2, v3}, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;-><init>(IIF)V

    :cond_3
    invoke-virtual {p5}, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;->getTimeout()I

    move-result v1

    invoke-virtual {p5}, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;->getRetris()I

    move-result v2

    invoke-virtual {p5}, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;->getBackoffMult()F

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->setTimeout(IIF)V

    invoke-static {}, Lcom/samsung/android/sdk/ssf/common/model/RequestManager;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    :try_start_0
    invoke-virtual {v6}, Lcom/android/volley/toolbox/RequestFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/file/io/DeleteFileResponse;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    throw v0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    throw v0
.end method

.method public static downloadProfileImage(Lcom/samsung/android/sdk/ssf/SsfClient;IILjava/lang/Object;Lcom/samsung/android/sdk/ssf/SsfListener;Landroid/os/Bundle;Ljava/lang/String;Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;)V
    .locals 6

    invoke-static {p0, p4}, Lcom/samsung/android/sdk/ssf/contact/ProfileManager;->checkSsfClientListnerValidity(Lcom/samsung/android/sdk/ssf/SsfClient;Lcom/samsung/android/sdk/ssf/SsfListener;)V

    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "url cannot be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v4, Lcom/samsung/android/sdk/ssf/file/server/FileResponseListener;

    invoke-direct {v4, p4}, Lcom/samsung/android/sdk/ssf/file/server/FileResponseListener;-><init>(Lcom/samsung/android/sdk/ssf/SsfListener;)V

    new-instance v0, Lcom/samsung/android/sdk/ssf/contact/ProfileManager$1;

    const/4 v1, 0x0

    move-object v2, p6

    move v3, p1

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/sdk/ssf/contact/ProfileManager$1;-><init>(ILjava/lang/String;ILcom/samsung/android/sdk/ssf/common/model/ResponseListener;Ljava/lang/Object;)V

    const-string v1, "x-sc-appId"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/ssf/common/model/FileRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/common/model/FileRequest;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    const-wide/16 v4, 0x64

    rem-long/2addr v2, v4

    long-to-int v1, v2

    rsub-int/lit8 v1, v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ssf/common/model/FileRequest;->setPriorityInt(I)V

    if-nez p7, :cond_1

    new-instance p7, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;

    const/16 v1, 0x1388

    const/4 v2, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {p7, v1, v2, v3}, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;-><init>(IIF)V

    :cond_1
    invoke-virtual {p7}, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;->getTimeout()I

    move-result v1

    invoke-virtual {p7}, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;->getRetris()I

    move-result v2

    invoke-virtual {p7}, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;->getBackoffMult()F

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/sdk/ssf/common/model/FileRequest;->setTimeout(IIF)V

    invoke-virtual {v0, p2}, Lcom/samsung/android/sdk/ssf/common/model/FileRequest;->setProgressWhat(I)V

    invoke-virtual {v0, p3}, Lcom/samsung/android/sdk/ssf/common/model/FileRequest;->setTag(Ljava/lang/Object;)Lcom/android/volley/Request;

    invoke-static {}, Lcom/samsung/android/sdk/ssf/common/model/RequestManager;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    return-void
.end method

.method public static downloadProfileImageBlocking(Lcom/samsung/android/sdk/ssf/SsfClient;Ljava/lang/Object;Ljava/lang/String;Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;)Lcom/samsung/android/sdk/ssf/file/io/DownloadFileResponse;
    .locals 6

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
    invoke-static {p0}, Lcom/samsung/android/sdk/ssf/contact/ProfileManager;->checkSsfClientValidity(Lcom/samsung/android/sdk/ssf/SsfClient;)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "url cannot be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {}, Lcom/android/volley/toolbox/RequestFuture;->newFuture()Lcom/android/volley/toolbox/RequestFuture;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sdk/ssf/contact/ProfileManager$2;

    const/4 v2, 0x0

    const/4 v3, -0x1

    new-instance v4, Lcom/samsung/android/sdk/ssf/file/server/FileResponseListener;

    const-class v5, Lcom/samsung/android/sdk/ssf/file/io/DownloadFileResponse;

    invoke-direct {v4, v0, v5}, Lcom/samsung/android/sdk/ssf/file/server/FileResponseListener;-><init>(Lcom/android/volley/toolbox/RequestFuture;Ljava/lang/Class;)V

    invoke-direct {v1, v2, p2, v3, v4}, Lcom/samsung/android/sdk/ssf/contact/ProfileManager$2;-><init>(ILjava/lang/String;ILcom/samsung/android/sdk/ssf/common/model/ResponseListener;)V

    const-string v2, "x-sc-appId"

    const-string v3, "3z5w443l4l"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/sdk/ssf/common/model/FileRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/common/model/FileRequest;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    const-wide/16 v4, 0x64

    rem-long/2addr v2, v4

    long-to-int v2, v2

    rsub-int/lit8 v2, v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/ssf/common/model/FileRequest;->setPriorityInt(I)V

    if-nez p3, :cond_2

    new-instance p3, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;

    const/16 v2, 0x1388

    const/4 v3, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {p3, v2, v3, v4}, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;-><init>(IIF)V

    :cond_2
    invoke-virtual {p3}, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;->getTimeout()I

    move-result v2

    invoke-virtual {p3}, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;->getRetris()I

    move-result v3

    invoke-virtual {p3}, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;->getBackoffMult()F

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/sdk/ssf/common/model/FileRequest;->setTimeout(IIF)V

    invoke-virtual {v1, p1}, Lcom/samsung/android/sdk/ssf/common/model/FileRequest;->setTag(Ljava/lang/Object;)Lcom/android/volley/Request;

    invoke-static {}, Lcom/samsung/android/sdk/ssf/common/model/RequestManager;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    :try_start_0
    invoke-virtual {v0}, Lcom/android/volley/toolbox/RequestFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/file/io/DownloadFileResponse;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    throw v0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    throw v0
.end method

.method public static getProfile(Lcom/samsung/android/sdk/ssf/SsfClient;Ljava/lang/String;ILcom/samsung/android/sdk/ssf/SsfListener;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/samsung/android/sdk/ssf/contact/ProfileManager;->getProfile(Lcom/samsung/android/sdk/ssf/SsfClient;Ljava/lang/String;ILcom/samsung/android/sdk/ssf/SsfListener;Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;)Z

    move-result v0

    return v0
.end method

.method public static getProfile(Lcom/samsung/android/sdk/ssf/SsfClient;Ljava/lang/String;ILcom/samsung/android/sdk/ssf/SsfListener;Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;)Z
    .locals 6

    invoke-static {p0, p3}, Lcom/samsung/android/sdk/ssf/contact/ProfileManager;->checkSsfClientListnerValidity(Lcom/samsung/android/sdk/ssf/SsfClient;Lcom/samsung/android/sdk/ssf/SsfListener;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Input shouldn\'t be null.Msisdn has null value: msisdn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    const-string v1, "uc/v1/profile"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "APIID"

    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/ssf/common/util/CommonUtils;->getTdkApiId(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/samsung/android/sdk/ssf/contact/server/ContactResponseListener;

    invoke-direct {v5, p3}, Lcom/samsung/android/sdk/ssf/contact/server/ContactResponseListener;-><init>(Lcom/samsung/android/sdk/ssf/SsfListener;)V

    new-instance v0, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    const/4 v1, 0x0

    const-class v3, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;-><init>(ILjava/lang/String;Ljava/lang/Class;ILcom/samsung/android/sdk/ssf/common/model/ResponseListener;)V

    const-string v1, "Access-token"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    move-result-object v1

    const-string v2, "Duid"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getDuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    move-result-object v1

    const-string v2, "msisdn"

    invoke-virtual {v1, v2, p1}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    const-string v1, "x-sc-appId"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    invoke-static {}, Lcom/samsung/android/sdk/ssf/common/model/RequestManager;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    const/4 v0, 0x1

    return v0
.end method

.method public static getProfileAndCapability(Lcom/samsung/android/sdk/ssf/SsfClient;Ljava/lang/String;Ljava/lang/String;ILcom/samsung/android/sdk/ssf/SsfListener;Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;)Z
    .locals 6

    invoke-static {p0, p4}, Lcom/samsung/android/sdk/ssf/contact/ProfileManager;->checkSsfClientListnerValidity(Lcom/samsung/android/sdk/ssf/SsfClient;Lcom/samsung/android/sdk/ssf/SsfListener;)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Input shouldn\'t be null.PhoneNo has null value: phone="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    const-string v1, "uc/v3/profile/call"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "APIID"

    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/ssf/common/util/CommonUtils;->getTdkApiId(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/samsung/android/sdk/ssf/contact/server/ContactResponseListener;

    invoke-direct {v5, p4}, Lcom/samsung/android/sdk/ssf/contact/server/ContactResponseListener;-><init>(Lcom/samsung/android/sdk/ssf/SsfListener;)V

    new-instance v0, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    const/4 v1, 0x0

    const-class v3, Lcom/samsung/android/sdk/ssf/contact/io/ProfileCallScreen;

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;-><init>(ILjava/lang/String;Ljava/lang/Class;ILcom/samsung/android/sdk/ssf/common/model/ResponseListener;)V

    const-string v1, "Access-token"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    move-result-object v1

    const-string v2, "Duid"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getDuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    move-result-object v1

    const-string v2, "cc"

    invoke-virtual {v1, v2, p1}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    move-result-object v1

    const-string v2, "pn"

    invoke-virtual {v1, v2, p2}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

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
.end method

.method public static getProfileForCall(Lcom/samsung/android/sdk/ssf/SsfClient;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/contact/io/ProfileCallScreen;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/samsung/android/sdk/ssf/contact/ProfileManager;->getProfileForCall(Lcom/samsung/android/sdk/ssf/SsfClient;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;)Lcom/samsung/android/sdk/ssf/contact/io/ProfileCallScreen;

    move-result-object v0

    return-object v0
.end method

.method public static getProfileForCall(Lcom/samsung/android/sdk/ssf/SsfClient;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;)Lcom/samsung/android/sdk/ssf/contact/io/ProfileCallScreen;
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
    invoke-static {p0}, Lcom/samsung/android/sdk/ssf/contact/ProfileManager;->checkSsfClientValidity(Lcom/samsung/android/sdk/ssf/SsfClient;)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Input shouldn\'t be null.PhoneNo has null value: phone="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    const-string v1, "uc/v1/profile/call"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "APIID"

    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/ssf/common/util/CommonUtils;->getTdkApiId(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/android/volley/toolbox/RequestFuture;->newFuture()Lcom/android/volley/toolbox/RequestFuture;

    move-result-object v6

    new-instance v0, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    const/4 v1, 0x0

    const-class v3, Lcom/samsung/android/sdk/ssf/contact/io/ProfileCallScreen;

    const/4 v4, -0x1

    new-instance v5, Lcom/samsung/android/sdk/ssf/contact/server/ContactResponseListener;

    const-class v7, Lcom/samsung/android/sdk/ssf/contact/io/ProfileCallScreen;

    invoke-direct {v5, v6, v7}, Lcom/samsung/android/sdk/ssf/contact/server/ContactResponseListener;-><init>(Lcom/android/volley/toolbox/RequestFuture;Ljava/lang/Class;)V

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;-><init>(ILjava/lang/String;Ljava/lang/Class;ILcom/samsung/android/sdk/ssf/common/model/ResponseListener;)V

    const-string v1, "Access-token"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    move-result-object v1

    const-string v2, "Duid"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getDuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    move-result-object v1

    const-string v2, "cc"

    invoke-virtual {v1, v2, p1}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    move-result-object v1

    const-string v2, "pn"

    invoke-virtual {v1, v2, p2}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

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

    if-eqz v0, :cond_4

    iget v1, v0, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    const/16 v2, 0x2710

    if-ne v1, v2, :cond_3

    check-cast v0, Lcom/samsung/android/sdk/ssf/contact/io/ProfileCallScreen;

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

.method public static getProfileForCall(Lcom/samsung/android/sdk/ssf/SsfClient;Ljava/lang/String;Ljava/lang/String;ILcom/samsung/android/sdk/ssf/SsfListener;)Z
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/sdk/ssf/contact/ProfileManager;->getProfileForCall(Lcom/samsung/android/sdk/ssf/SsfClient;Ljava/lang/String;Ljava/lang/String;ILcom/samsung/android/sdk/ssf/SsfListener;Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;)Z

    move-result v0

    return v0
.end method

.method public static getProfileForCall(Lcom/samsung/android/sdk/ssf/SsfClient;Ljava/lang/String;Ljava/lang/String;ILcom/samsung/android/sdk/ssf/SsfListener;Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;)Z
    .locals 6

    invoke-static {p0, p4}, Lcom/samsung/android/sdk/ssf/contact/ProfileManager;->checkSsfClientListnerValidity(Lcom/samsung/android/sdk/ssf/SsfClient;Lcom/samsung/android/sdk/ssf/SsfListener;)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Input shouldn\'t be null.PhoneNo has null value: phone="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    const-string v1, "uc/v1/profile/call"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "APIID"

    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/ssf/common/util/CommonUtils;->getTdkApiId(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/samsung/android/sdk/ssf/contact/server/ContactResponseListener;

    invoke-direct {v5, p4}, Lcom/samsung/android/sdk/ssf/contact/server/ContactResponseListener;-><init>(Lcom/samsung/android/sdk/ssf/SsfListener;)V

    new-instance v0, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    const/4 v1, 0x0

    const-class v3, Lcom/samsung/android/sdk/ssf/contact/io/ProfileCallScreen;

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;-><init>(ILjava/lang/String;Ljava/lang/Class;ILcom/samsung/android/sdk/ssf/common/model/ResponseListener;)V

    const-string v1, "Access-token"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    move-result-object v1

    const-string v2, "Duid"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getDuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    move-result-object v1

    const-string v2, "cc"

    invoke-virtual {v1, v2, p1}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    move-result-object v1

    const-string v2, "pn"

    invoke-virtual {v1, v2, p2}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

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
.end method

.method public static getProfileForGroup(Lcom/samsung/android/sdk/ssf/SsfClient;Lcom/samsung/android/sdk/ssf/contact/io/GetGroupProfileReqInfo;ILcom/samsung/android/sdk/ssf/SsfListener;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/samsung/android/sdk/ssf/contact/ProfileManager;->getProfileForGroup(Lcom/samsung/android/sdk/ssf/SsfClient;Lcom/samsung/android/sdk/ssf/contact/io/GetGroupProfileReqInfo;ILcom/samsung/android/sdk/ssf/SsfListener;Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;)Z

    move-result v0

    return v0
.end method

.method public static getProfileForGroup(Lcom/samsung/android/sdk/ssf/SsfClient;Lcom/samsung/android/sdk/ssf/contact/io/GetGroupProfileReqInfo;ILcom/samsung/android/sdk/ssf/SsfListener;Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;)Z
    .locals 6

    const/4 v1, 0x1

    invoke-static {p0, p3}, Lcom/samsung/android/sdk/ssf/contact/ProfileManager;->checkSsfClientListnerValidity(Lcom/samsung/android/sdk/ssf/SsfClient;Lcom/samsung/android/sdk/ssf/SsfListener;)V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Input shouldn\'t be null.GetGroupProfileReqInfo has null value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getApiServerUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "uc/v1/profile/group"

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "APIID"

    const/4 v3, 0x4

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/sdk/ssf/common/util/CommonUtils;->getTdkApiId(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

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

    move-result-object v2

    const-string v3, "Duid"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getDuid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    const-string v2, "x-sc-appId"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    const-class v3, Lcom/samsung/android/sdk/ssf/contact/io/GetGroupProfileReqInfo;

    invoke-virtual {v2, p1, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->setBody(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/sdk/ssf/common/model/RequestManager;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    return v1
.end method

.method public static getProfileForService(Lcom/samsung/android/sdk/ssf/SsfClient;Lcom/samsung/android/sdk/ssf/contact/io/GetServiceProfileRequest;ILcom/samsung/android/sdk/ssf/SsfListener;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/samsung/android/sdk/ssf/contact/ProfileManager;->getProfileForService(Lcom/samsung/android/sdk/ssf/SsfClient;Lcom/samsung/android/sdk/ssf/contact/io/GetServiceProfileRequest;ILcom/samsung/android/sdk/ssf/SsfListener;Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;)Z

    move-result v0

    return v0
.end method

.method public static getProfileForService(Lcom/samsung/android/sdk/ssf/SsfClient;Lcom/samsung/android/sdk/ssf/contact/io/GetServiceProfileRequest;ILcom/samsung/android/sdk/ssf/SsfListener;Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;)Z
    .locals 6

    const/4 v1, 0x1

    invoke-static {p0, p3}, Lcom/samsung/android/sdk/ssf/contact/ProfileManager;->checkSsfClientListnerValidity(Lcom/samsung/android/sdk/ssf/SsfClient;Lcom/samsung/android/sdk/ssf/SsfListener;)V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Input shouldn\'t be null.GetServiceProfileRequest has null value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getApiServerUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "uc/v1/profile/service"

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "APIID"

    const/4 v3, 0x4

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/sdk/ssf/common/util/CommonUtils;->getTdkApiId(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

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

    move-result-object v2

    const-string v3, "Duid"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getDuid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    const-string v2, "x-sc-appId"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    const-class v3, Lcom/samsung/android/sdk/ssf/contact/io/GetServiceProfileRequest;

    invoke-virtual {v2, p1, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->setBody(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/sdk/ssf/common/model/RequestManager;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    return v1
.end method

.method public static readPrivacy(Lcom/samsung/android/sdk/ssf/SsfClient;)Lcom/samsung/android/sdk/ssf/contact/io/PrivacyResponse;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/samsung/android/sdk/ssf/contact/ProfileManager;->readPrivacy(Lcom/samsung/android/sdk/ssf/SsfClient;Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;)Lcom/samsung/android/sdk/ssf/contact/io/PrivacyResponse;

    move-result-object v0

    return-object v0
.end method

.method public static readPrivacy(Lcom/samsung/android/sdk/ssf/SsfClient;Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;)Lcom/samsung/android/sdk/ssf/contact/io/PrivacyResponse;
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
    invoke-static {p0}, Lcom/samsung/android/sdk/ssf/contact/ProfileManager;->checkSsfClientValidity(Lcom/samsung/android/sdk/ssf/SsfClient;)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getApiServerUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "uc/v1/profile/privacy"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "APIID"

    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/ssf/common/util/CommonUtils;->getTdkApiId(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/android/volley/toolbox/RequestFuture;->newFuture()Lcom/android/volley/toolbox/RequestFuture;

    move-result-object v6

    new-instance v0, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    const/4 v1, 0x0

    const-class v3, Lcom/samsung/android/sdk/ssf/contact/io/PrivacyResponse;

    const/4 v4, -0x1

    new-instance v5, Lcom/samsung/android/sdk/ssf/contact/server/ContactResponseListener;

    const-class v7, Lcom/samsung/android/sdk/ssf/contact/io/PrivacyResponse;

    invoke-direct {v5, v6, v7}, Lcom/samsung/android/sdk/ssf/contact/server/ContactResponseListener;-><init>(Lcom/android/volley/toolbox/RequestFuture;Ljava/lang/Class;)V

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;-><init>(ILjava/lang/String;Ljava/lang/Class;ILcom/samsung/android/sdk/ssf/common/model/ResponseListener;)V

    const-string v1, "Access-token"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    move-result-object v1

    const-string v2, "Duid"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getDuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    const-string v1, "x-sc-appId"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;->getTimeout()I

    move-result v1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;->getRetris()I

    move-result v2

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;->getBackoffMult()F

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->setTimeout(IIF)V

    :cond_1
    invoke-static {}, Lcom/samsung/android/sdk/ssf/common/model/RequestManager;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    invoke-virtual {v6}, Lcom/android/volley/toolbox/RequestFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/SsfResult;

    if-eqz v0, :cond_2

    iget v1, v0, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    const/16 v2, 0x2710

    if-ne v1, v2, :cond_2

    check-cast v0, Lcom/samsung/android/sdk/ssf/contact/io/PrivacyResponse;

    return-object v0

    :cond_2
    new-instance v0, Lcom/samsung/android/sdk/ssf/contact/server/ContactException;

    const/16 v1, 0x2af8

    const-string v2, "Internal Sdk Error"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/ssf/contact/server/ContactException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public static readPrivacy(Lcom/samsung/android/sdk/ssf/SsfClient;ILcom/samsung/android/sdk/ssf/SsfListener;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/samsung/android/sdk/ssf/contact/ProfileManager;->readPrivacy(Lcom/samsung/android/sdk/ssf/SsfClient;ILcom/samsung/android/sdk/ssf/SsfListener;Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;)Z

    move-result v0

    return v0
.end method

.method public static readPrivacy(Lcom/samsung/android/sdk/ssf/SsfClient;ILcom/samsung/android/sdk/ssf/SsfListener;Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;)Z
    .locals 6

    invoke-static {p0, p2}, Lcom/samsung/android/sdk/ssf/contact/ProfileManager;->checkSsfClientListnerValidity(Lcom/samsung/android/sdk/ssf/SsfClient;Lcom/samsung/android/sdk/ssf/SsfListener;)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getApiServerUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "uc/v1/profile/privacy"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "APIID"

    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/ssf/common/util/CommonUtils;->getTdkApiId(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/samsung/android/sdk/ssf/contact/server/ContactResponseListener;

    invoke-direct {v5, p2}, Lcom/samsung/android/sdk/ssf/contact/server/ContactResponseListener;-><init>(Lcom/samsung/android/sdk/ssf/SsfListener;)V

    new-instance v0, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    const/4 v1, 0x0

    const-class v3, Lcom/samsung/android/sdk/ssf/contact/io/PrivacyResponse;

    move v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;-><init>(ILjava/lang/String;Ljava/lang/Class;ILcom/samsung/android/sdk/ssf/common/model/ResponseListener;)V

    const-string v1, "Access-token"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    move-result-object v1

    const-string v2, "Duid"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getDuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    const-string v1, "x-sc-appId"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;->getTimeout()I

    move-result v1

    invoke-virtual {p3}, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;->getRetris()I

    move-result v2

    invoke-virtual {p3}, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;->getBackoffMult()F

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->setTimeout(IIF)V

    :cond_0
    invoke-static {}, Lcom/samsung/android/sdk/ssf/common/model/RequestManager;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    const/4 v0, 0x1

    return v0
.end method

.method public static searchProfile(Lcom/samsung/android/sdk/ssf/SsfClient;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/contact/io/ContactSearchResponse;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/samsung/android/sdk/ssf/contact/ProfileManager;->searchProfile(Lcom/samsung/android/sdk/ssf/SsfClient;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;)Lcom/samsung/android/sdk/ssf/contact/io/ContactSearchResponse;

    move-result-object v0

    return-object v0
.end method

.method public static searchProfile(Lcom/samsung/android/sdk/ssf/SsfClient;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;)Lcom/samsung/android/sdk/ssf/contact/io/ContactSearchResponse;
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
    invoke-static {p0}, Lcom/samsung/android/sdk/ssf/contact/ProfileManager;->checkSsfClientValidity(Lcom/samsung/android/sdk/ssf/SsfClient;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Input shouldn\'t be null. keyword parameter should not have null or empty value keyword = "

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

    const-string v2, "Input shouldn\'t be null. Contact Token parameter should not have null or empty value contactToken = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    const-string v1, "uc/v1/search/profile"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "keyword"

    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

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

    invoke-virtual {v0, v1, p2}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;->getTimeout()I

    move-result v1

    invoke-virtual {p3}, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;->getRetris()I

    move-result v2

    invoke-virtual {p3}, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;->getBackoffMult()F

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->setTimeout(IIF)V

    :cond_3
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

    check-cast v0, Lcom/samsung/android/sdk/ssf/contact/io/ContactSearchResponse;

    return-object v0

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

.method public static searchProfile(Lcom/samsung/android/sdk/ssf/SsfClient;Ljava/lang/String;Ljava/lang/String;ILcom/samsung/android/sdk/ssf/SsfListener;)Z
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/sdk/ssf/contact/ProfileManager;->searchProfile(Lcom/samsung/android/sdk/ssf/SsfClient;Ljava/lang/String;Ljava/lang/String;ILcom/samsung/android/sdk/ssf/SsfListener;Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;)Z

    move-result v0

    return v0
.end method

.method public static searchProfile(Lcom/samsung/android/sdk/ssf/SsfClient;Ljava/lang/String;Ljava/lang/String;ILcom/samsung/android/sdk/ssf/SsfListener;Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;)Z
    .locals 6

    invoke-static {p0, p4}, Lcom/samsung/android/sdk/ssf/contact/ProfileManager;->checkSsfClientListnerValidity(Lcom/samsung/android/sdk/ssf/SsfClient;Lcom/samsung/android/sdk/ssf/SsfListener;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Input shouldn\'t be null. keyword parameter should not have null or empty value keyword = "

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

    const-string v2, "Input shouldn\'t be null. Contact Token parameter should not have null or empty value contactToken = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    const-string v1, "uc/v1/search/profile"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "keyword"

    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/samsung/android/sdk/ssf/contact/server/ContactResponseListener;

    invoke-direct {v5, p4}, Lcom/samsung/android/sdk/ssf/contact/server/ContactResponseListener;-><init>(Lcom/samsung/android/sdk/ssf/SsfListener;)V

    new-instance v0, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    const/4 v1, 0x0

    const-class v3, Lcom/samsung/android/sdk/ssf/contact/io/ContactSearchResponse;

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

    const-string v1, "contact-token"

    invoke-virtual {v0, v1, p2}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    if-eqz p5, :cond_2

    invoke-virtual {p5}, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;->getTimeout()I

    move-result v1

    invoke-virtual {p5}, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;->getRetris()I

    move-result v2

    invoke-virtual {p5}, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;->getBackoffMult()F

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->setTimeout(IIF)V

    :cond_2
    invoke-static {}, Lcom/samsung/android/sdk/ssf/common/model/RequestManager;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    const/4 v0, 0x1

    return v0
.end method

.method public static setMeProfileType(Lcom/samsung/android/sdk/ssf/SsfClient;Lcom/samsung/android/sdk/ssf/contact/io/SetProfileTypeReqInfo;ILcom/samsung/android/sdk/ssf/SsfListener;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/samsung/android/sdk/ssf/contact/ProfileManager;->setMeProfileType(Lcom/samsung/android/sdk/ssf/SsfClient;Lcom/samsung/android/sdk/ssf/contact/io/SetProfileTypeReqInfo;ILcom/samsung/android/sdk/ssf/SsfListener;Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;)Z

    move-result v0

    return v0
.end method

.method public static setMeProfileType(Lcom/samsung/android/sdk/ssf/SsfClient;Lcom/samsung/android/sdk/ssf/contact/io/SetProfileTypeReqInfo;ILcom/samsung/android/sdk/ssf/SsfListener;Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;)Z
    .locals 6

    const/4 v1, 0x1

    invoke-static {p0, p3}, Lcom/samsung/android/sdk/ssf/contact/ProfileManager;->checkSsfClientListnerValidity(Lcom/samsung/android/sdk/ssf/SsfClient;Lcom/samsung/android/sdk/ssf/SsfListener;)V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Input shouldn\'t be null.SetProfileTypeReqInfo has null value: setProfileTypeReqInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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

    const-string v2, "uc/v1/profile/type"

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "APIID"

    const/4 v3, 0x4

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/sdk/ssf/common/util/CommonUtils;->getTdkApiId(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/samsung/android/sdk/ssf/contact/server/ContactResponseListener;

    invoke-direct {v5, p3}, Lcom/samsung/android/sdk/ssf/contact/server/ContactResponseListener;-><init>(Lcom/samsung/android/sdk/ssf/SsfListener;)V

    new-instance v0, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    const-class v3, Lcom/samsung/android/sdk/ssf/contact/io/SetProfileTypeResInfo;

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;-><init>(ILjava/lang/String;Ljava/lang/Class;ILcom/samsung/android/sdk/ssf/common/model/ResponseListener;)V

    const-string v2, "Access-token"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getAccessToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    move-result-object v2

    const-string v3, "Duid"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getDuid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    const-string v2, "x-sc-appId"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    const-class v3, Lcom/samsung/android/sdk/ssf/contact/io/SetProfileTypeReqInfo;

    invoke-virtual {v2, p1, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->setBody(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/sdk/ssf/common/model/RequestManager;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    return v1
.end method

.method public static updatePrivacy(Lcom/samsung/android/sdk/ssf/SsfClient;Lcom/samsung/android/sdk/ssf/contact/io/PrivacyRequestInfo;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/samsung/android/sdk/ssf/contact/ProfileManager;->updatePrivacy(Lcom/samsung/android/sdk/ssf/SsfClient;Lcom/samsung/android/sdk/ssf/contact/io/PrivacyRequestInfo;Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;)Z

    move-result v0

    return v0
.end method

.method public static updatePrivacy(Lcom/samsung/android/sdk/ssf/SsfClient;Lcom/samsung/android/sdk/ssf/contact/io/PrivacyRequestInfo;ILcom/samsung/android/sdk/ssf/SsfListener;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/samsung/android/sdk/ssf/contact/ProfileManager;->updatePrivacy(Lcom/samsung/android/sdk/ssf/SsfClient;Lcom/samsung/android/sdk/ssf/contact/io/PrivacyRequestInfo;ILcom/samsung/android/sdk/ssf/SsfListener;Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;)Z

    move-result v0

    return v0
.end method

.method public static updatePrivacy(Lcom/samsung/android/sdk/ssf/SsfClient;Lcom/samsung/android/sdk/ssf/contact/io/PrivacyRequestInfo;ILcom/samsung/android/sdk/ssf/SsfListener;Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;)Z
    .locals 6

    const/4 v1, 0x1

    invoke-static {p0, p3}, Lcom/samsung/android/sdk/ssf/contact/ProfileManager;->checkSsfClientListnerValidity(Lcom/samsung/android/sdk/ssf/SsfClient;Lcom/samsung/android/sdk/ssf/SsfListener;)V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Input shouldn\'t be null. PrivacyRequestInfo has null value : privacyInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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

    const-string v2, "uc/v1/profile/privacy"

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "APIID"

    const/4 v3, 0x4

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/sdk/ssf/common/util/CommonUtils;->getTdkApiId(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/samsung/android/sdk/ssf/contact/server/ContactResponseListener;

    invoke-direct {v5, p3}, Lcom/samsung/android/sdk/ssf/contact/server/ContactResponseListener;-><init>(Lcom/samsung/android/sdk/ssf/SsfListener;)V

    new-instance v0, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    const-class v3, Lcom/samsung/android/sdk/ssf/SsfResult;

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;-><init>(ILjava/lang/String;Ljava/lang/Class;ILcom/samsung/android/sdk/ssf/common/model/ResponseListener;)V

    const-string v2, "Access-token"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getAccessToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    move-result-object v2

    const-string v3, "Duid"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getDuid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->setUseGZip(Z)Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

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
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    const-class v3, Lcom/samsung/android/sdk/ssf/contact/io/PrivacyRequestInfo;

    invoke-virtual {v2, p1, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->setBody(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/sdk/ssf/common/model/RequestManager;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    return v1
.end method

.method public static updatePrivacy(Lcom/samsung/android/sdk/ssf/SsfClient;Lcom/samsung/android/sdk/ssf/contact/io/PrivacyRequestInfo;Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;)Z
    .locals 8

    const/4 v1, 0x1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    if-ne v0, v2, :cond_0

    new-instance v0, Lcom/samsung/android/sdk/ssf/contact/server/ContactException;

    const/16 v1, 0x7531

    const-string v2, "This is a blocking call. Should not be called from MAIN thread."

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/ssf/contact/server/ContactException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/sdk/ssf/contact/ProfileManager;->checkSsfClientValidity(Lcom/samsung/android/sdk/ssf/SsfClient;)V

    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Input shouldn\'t be null. PrivacyRequestInfo has null value : privacyInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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

    const-string v2, "uc/v1/profile/privacy"

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "APIID"

    const/4 v3, 0x4

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/sdk/ssf/common/util/CommonUtils;->getTdkApiId(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/android/volley/toolbox/RequestFuture;->newFuture()Lcom/android/volley/toolbox/RequestFuture;

    move-result-object v6

    new-instance v0, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    const-class v3, Lcom/samsung/android/sdk/ssf/SsfResult;

    const/4 v4, -0x1

    new-instance v5, Lcom/samsung/android/sdk/ssf/contact/server/ContactResponseListener;

    const-class v7, Lcom/samsung/android/sdk/ssf/SsfResult;

    invoke-direct {v5, v6, v7}, Lcom/samsung/android/sdk/ssf/contact/server/ContactResponseListener;-><init>(Lcom/android/volley/toolbox/RequestFuture;Ljava/lang/Class;)V

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;-><init>(ILjava/lang/String;Ljava/lang/Class;ILcom/samsung/android/sdk/ssf/common/model/ResponseListener;)V

    const-string v2, "Access-token"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getAccessToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    move-result-object v2

    const-string v3, "Duid"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getDuid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->setUseGZip(Z)Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    const-string v2, "x-sc-appId"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;->getTimeout()I

    move-result v2

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;->getRetris()I

    move-result v3

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;->getBackoffMult()F

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->setTimeout(IIF)V

    :cond_2
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    const-class v3, Lcom/samsung/android/sdk/ssf/contact/io/PrivacyRequestInfo;

    invoke-virtual {v2, p1, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->setBody(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/sdk/ssf/common/model/RequestManager;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    invoke-virtual {v6}, Lcom/android/volley/toolbox/RequestFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/SsfResult;

    if-eqz v0, :cond_4

    iget v2, v0, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    const/16 v3, 0x2710

    if-ne v2, v3, :cond_3

    return v1

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

.method public static updateProfileImageMeta(Lcom/samsung/android/sdk/ssf/SsfClient;Lcom/samsung/android/sdk/ssf/contact/io/ImageMetaInfoList;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/samsung/android/sdk/ssf/contact/ProfileManager;->updateProfileImageMeta(Lcom/samsung/android/sdk/ssf/SsfClient;Lcom/samsung/android/sdk/ssf/contact/io/ImageMetaInfoList;Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;)Z

    move-result v0

    return v0
.end method

.method public static updateProfileImageMeta(Lcom/samsung/android/sdk/ssf/SsfClient;Lcom/samsung/android/sdk/ssf/contact/io/ImageMetaInfoList;ILcom/samsung/android/sdk/ssf/SsfListener;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/samsung/android/sdk/ssf/contact/ProfileManager;->updateProfileImageMeta(Lcom/samsung/android/sdk/ssf/SsfClient;Lcom/samsung/android/sdk/ssf/contact/io/ImageMetaInfoList;ILcom/samsung/android/sdk/ssf/SsfListener;Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;)Z

    move-result v0

    return v0
.end method

.method public static updateProfileImageMeta(Lcom/samsung/android/sdk/ssf/SsfClient;Lcom/samsung/android/sdk/ssf/contact/io/ImageMetaInfoList;ILcom/samsung/android/sdk/ssf/SsfListener;Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;)Z
    .locals 6

    const/4 v1, 0x1

    invoke-static {p0, p3}, Lcom/samsung/android/sdk/ssf/contact/ProfileManager;->checkSsfClientListnerValidity(Lcom/samsung/android/sdk/ssf/SsfClient;Lcom/samsung/android/sdk/ssf/SsfListener;)V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Input shouldn\'t be null.ImageMetaInfoList has null value: imageMeta="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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

    const-string v2, "uc/v1/profile/img"

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "APIID"

    const/4 v3, 0x4

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/sdk/ssf/common/util/CommonUtils;->getTdkApiId(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/samsung/android/sdk/ssf/contact/server/ContactResponseListener;

    invoke-direct {v5, p3}, Lcom/samsung/android/sdk/ssf/contact/server/ContactResponseListener;-><init>(Lcom/samsung/android/sdk/ssf/SsfListener;)V

    new-instance v0, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    const-class v3, Lcom/samsung/android/sdk/ssf/SsfResult;

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;-><init>(ILjava/lang/String;Ljava/lang/Class;ILcom/samsung/android/sdk/ssf/common/model/ResponseListener;)V

    const-string v2, "Access-token"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getAccessToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    move-result-object v2

    const-string v3, "Duid"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getDuid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

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
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    const-class v3, Lcom/samsung/android/sdk/ssf/contact/io/ImageMetaInfoList;

    invoke-virtual {v2, p1, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->setBody(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/sdk/ssf/common/model/RequestManager;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    return v1
.end method

.method public static updateProfileImageMeta(Lcom/samsung/android/sdk/ssf/SsfClient;Lcom/samsung/android/sdk/ssf/contact/io/ImageMetaInfoList;Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;)Z
    .locals 8

    const/4 v1, 0x1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    if-ne v0, v2, :cond_0

    new-instance v0, Lcom/samsung/android/sdk/ssf/contact/server/ContactException;

    const/16 v1, 0x7531

    const-string v2, "This is a blocking call. Should not be called from MAIN thread."

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/ssf/contact/server/ContactException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/sdk/ssf/contact/ProfileManager;->checkSsfClientValidity(Lcom/samsung/android/sdk/ssf/SsfClient;)V

    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Input shouldn\'t be null.ImageMetaInfoList has null value: imageMeta="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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

    const-string v2, "uc/v1/profile/img"

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "APIID"

    const/4 v3, 0x4

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/sdk/ssf/common/util/CommonUtils;->getTdkApiId(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/android/volley/toolbox/RequestFuture;->newFuture()Lcom/android/volley/toolbox/RequestFuture;

    move-result-object v6

    new-instance v0, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    const-class v3, Lcom/samsung/android/sdk/ssf/SsfResult;

    const/4 v4, -0x1

    new-instance v5, Lcom/samsung/android/sdk/ssf/contact/server/ContactResponseListener;

    const-class v7, Lcom/samsung/android/sdk/ssf/SsfResult;

    invoke-direct {v5, v6, v7}, Lcom/samsung/android/sdk/ssf/contact/server/ContactResponseListener;-><init>(Lcom/android/volley/toolbox/RequestFuture;Ljava/lang/Class;)V

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;-><init>(ILjava/lang/String;Ljava/lang/Class;ILcom/samsung/android/sdk/ssf/common/model/ResponseListener;)V

    const-string v2, "Access-token"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getAccessToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    move-result-object v2

    const-string v3, "Duid"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getDuid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    const-string v2, "x-sc-appId"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;->getTimeout()I

    move-result v2

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;->getRetris()I

    move-result v3

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;->getBackoffMult()F

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->setTimeout(IIF)V

    :cond_2
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    const-class v3, Lcom/samsung/android/sdk/ssf/contact/io/ImageMetaInfoList;

    invoke-virtual {v2, p1, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->setBody(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/sdk/ssf/common/model/RequestManager;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    invoke-virtual {v6}, Lcom/android/volley/toolbox/RequestFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/SsfResult;

    if-eqz v0, :cond_4

    iget v2, v0, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    const/16 v3, 0x2710

    if-ne v2, v3, :cond_3

    return v1

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

.method public static updateProfileInfo(Lcom/samsung/android/sdk/ssf/SsfClient;Lcom/samsung/android/sdk/ssf/contact/io/ProfileInfo;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/samsung/android/sdk/ssf/contact/ProfileManager;->updateProfileInfo(Lcom/samsung/android/sdk/ssf/SsfClient;Lcom/samsung/android/sdk/ssf/contact/io/ProfileInfo;Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;)Z

    move-result v0

    return v0
.end method

.method public static updateProfileInfo(Lcom/samsung/android/sdk/ssf/SsfClient;Lcom/samsung/android/sdk/ssf/contact/io/ProfileInfo;ILcom/samsung/android/sdk/ssf/SsfListener;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/samsung/android/sdk/ssf/contact/ProfileManager;->updateProfileInfo(Lcom/samsung/android/sdk/ssf/SsfClient;Lcom/samsung/android/sdk/ssf/contact/io/ProfileInfo;ILcom/samsung/android/sdk/ssf/SsfListener;Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;)Z

    move-result v0

    return v0
.end method

.method public static updateProfileInfo(Lcom/samsung/android/sdk/ssf/SsfClient;Lcom/samsung/android/sdk/ssf/contact/io/ProfileInfo;ILcom/samsung/android/sdk/ssf/SsfListener;Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;)Z
    .locals 6

    const/4 v1, 0x1

    invoke-static {p0, p3}, Lcom/samsung/android/sdk/ssf/contact/ProfileManager;->checkSsfClientListnerValidity(Lcom/samsung/android/sdk/ssf/SsfClient;Lcom/samsung/android/sdk/ssf/SsfListener;)V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Input shouldn\'t be null.ProfileInfo has null value: profile="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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

    const-string v2, "uc/v1/profile"

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "APIID"

    const/4 v3, 0x4

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/sdk/ssf/common/util/CommonUtils;->getTdkApiId(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/samsung/android/sdk/ssf/contact/server/ContactResponseListener;

    invoke-direct {v5, p3}, Lcom/samsung/android/sdk/ssf/contact/server/ContactResponseListener;-><init>(Lcom/samsung/android/sdk/ssf/SsfListener;)V

    new-instance v0, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    const-class v3, Lcom/samsung/android/sdk/ssf/SsfResult;

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;-><init>(ILjava/lang/String;Ljava/lang/Class;ILcom/samsung/android/sdk/ssf/common/model/ResponseListener;)V

    const-string v2, "Access-token"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getAccessToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    move-result-object v2

    const-string v3, "Duid"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getDuid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    move-result-object v2

    const-string v3, "x-sc-appId"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getAppId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->setUseGZip(Z)Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    if-eqz p4, :cond_1

    invoke-virtual {p4}, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;->getTimeout()I

    move-result v2

    invoke-virtual {p4}, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;->getRetris()I

    move-result v3

    invoke-virtual {p4}, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;->getBackoffMult()F

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->setTimeout(IIF)V

    :cond_1
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    const-class v3, Lcom/samsung/android/sdk/ssf/contact/io/ProfileInfo;

    invoke-virtual {v2, p1, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->setBody(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/sdk/ssf/common/model/RequestManager;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    return v1
.end method

.method public static updateProfileInfo(Lcom/samsung/android/sdk/ssf/SsfClient;Lcom/samsung/android/sdk/ssf/contact/io/ProfileInfo;Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;)Z
    .locals 8

    const/4 v1, 0x1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    if-ne v0, v2, :cond_0

    new-instance v0, Lcom/samsung/android/sdk/ssf/contact/server/ContactException;

    const/16 v1, 0x7531

    const-string v2, "This is a blocking call. Should not be called from MAIN thread."

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/ssf/contact/server/ContactException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/sdk/ssf/contact/ProfileManager;->checkSsfClientValidity(Lcom/samsung/android/sdk/ssf/SsfClient;)V

    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Input shouldn\'t be null.ProfileInfo has null value: profile="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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

    const-string v2, "uc/v1/profile"

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "APIID"

    const/4 v3, 0x4

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/sdk/ssf/common/util/CommonUtils;->getTdkApiId(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/android/volley/toolbox/RequestFuture;->newFuture()Lcom/android/volley/toolbox/RequestFuture;

    move-result-object v6

    new-instance v0, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    const-class v3, Lcom/samsung/android/sdk/ssf/SsfResult;

    const/4 v4, -0x1

    new-instance v5, Lcom/samsung/android/sdk/ssf/contact/server/ContactResponseListener;

    const-class v7, Lcom/samsung/android/sdk/ssf/SsfResult;

    invoke-direct {v5, v6, v7}, Lcom/samsung/android/sdk/ssf/contact/server/ContactResponseListener;-><init>(Lcom/android/volley/toolbox/RequestFuture;Ljava/lang/Class;)V

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;-><init>(ILjava/lang/String;Ljava/lang/Class;ILcom/samsung/android/sdk/ssf/common/model/ResponseListener;)V

    const-string v2, "Access-token"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getAccessToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    move-result-object v2

    const-string v3, "Duid"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getDuid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    move-result-object v2

    const-string v3, "x-sc-appId"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getAppId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->setUseGZip(Z)Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;->getTimeout()I

    move-result v2

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;->getRetris()I

    move-result v3

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;->getBackoffMult()F

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->setTimeout(IIF)V

    :cond_2
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    const-class v3, Lcom/samsung/android/sdk/ssf/contact/io/ProfileInfo;

    invoke-virtual {v2, p1, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->setBody(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/sdk/ssf/common/model/RequestManager;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    invoke-virtual {v6}, Lcom/android/volley/toolbox/RequestFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/SsfResult;

    if-eqz v0, :cond_4

    iget v2, v0, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    const/16 v3, 0x2710

    if-ne v2, v3, :cond_3

    return v1

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

.method public static uploadProfileImage(Lcom/samsung/android/sdk/ssf/SsfClient;Ljava/lang/Object;Ljava/lang/String;Ljava/io/InputStream;IZLcom/samsung/android/sdk/ssf/common/ConnectTimeout;)Lcom/samsung/android/sdk/ssf/file/io/UploadFileResponse;
    .locals 8

    const/4 v1, 0x1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    if-ne v0, v2, :cond_0

    new-instance v0, Landroid/os/NetworkOnMainThreadException;

    invoke-direct {v0}, Landroid/os/NetworkOnMainThreadException;-><init>()V

    throw v0

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/sdk/ssf/contact/ProfileManager;->checkSsfClientValidity(Lcom/samsung/android/sdk/ssf/SsfClient;)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "CID cannot be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Input stream cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    if-gtz p4, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "fileLength cannot be <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-static {}, Lcom/android/volley/toolbox/RequestFuture;->newFuture()Lcom/android/volley/toolbox/RequestFuture;

    move-result-object v6

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getFileServerUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "ors/v2/upload"

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "access_token"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getAccessToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "cid"

    invoke-virtual {v2, v3, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "uid"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getDuid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "did"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "publish"

    invoke-static {p5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v0, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    const-class v3, Lcom/samsung/android/sdk/ssf/file/io/UploadFileResponse;

    const/4 v4, -0x1

    new-instance v5, Lcom/samsung/android/sdk/ssf/file/server/FileResponseListener;

    const-class v7, Lcom/samsung/android/sdk/ssf/file/io/UploadFileResponse;

    invoke-direct {v5, v6, v7}, Lcom/samsung/android/sdk/ssf/file/server/FileResponseListener;-><init>(Lcom/android/volley/toolbox/RequestFuture;Ljava/lang/Class;)V

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;-><init>(ILjava/lang/String;Ljava/lang/Class;ILcom/samsung/android/sdk/ssf/common/model/ResponseListener;)V

    const-string v2, "User-Agent"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getUserAgent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    const-string v2, "x-sc-appId"

    const-string v3, "3z5w443l4l"

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    const-string v2, "Content-Type"

    const-string v3, "image/*"

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    const-string v2, "application/octet-stream"

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->setBodyContentType(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->setInputStream(Ljava/io/InputStream;)V

    invoke-virtual {v0, p4}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->setLength(I)V

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->setTag(Ljava/lang/Object;)Lcom/android/volley/Request;

    if-nez p6, :cond_4

    new-instance p6, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;

    const/16 v2, 0x1388

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {p6, v2, v1, v3}, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;-><init>(IIF)V

    :cond_4
    invoke-virtual {p6}, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;->getTimeout()I

    move-result v1

    invoke-virtual {p6}, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;->getRetris()I

    move-result v2

    invoke-virtual {p6}, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;->getBackoffMult()F

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->setTimeout(IIF)V

    invoke-static {}, Lcom/samsung/android/sdk/ssf/common/model/RequestManager;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    :try_start_0
    invoke-virtual {v6}, Lcom/android/volley/toolbox/RequestFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/file/io/UploadFileResponse;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    throw v0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    throw v0
.end method
