.class public Lcom/samsung/android/sdk/bixby/BixbyAppService;
.super Landroid/app/Service;
.source "BixbyAppService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/bixby/BixbyAppService$CommandHandler;
    }
.end annotation


# static fields
.field private static final BIXBY_AGENT_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.bixby.agent"

.field private static final BIXBY_COMMAND_VERSION:Ljava/lang/String; = "1.0"

.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;

.field private static mActorThreadHandler:Landroid/os/HandlerThread;

.field private static mBixbAgentSignature:Landroid/content/pm/Signature;

.field private static final mIsUserBuild:Z


# instance fields
.field mBinder:Lcom/samsung/android/bixby/agent/IBixbyAgentAppService$Stub;

.field private mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

.field private mCallbackToBa:Lcom/samsung/android/bixby/agent/IBixbyAgentAppServiceCallback;

.field private mHandler:Landroid/os/Handler;

.field private mIsKnoxId:Z

.field mResponseFromMediator:Lcom/samsung/android/sdk/bixby/BixbyApi$OnResponseCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v1, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/samsung/android/sdk/bixby/BixbyAppService;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "_0.2.4"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/bixby/BixbyAppService;->TAG:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string/jumbo v2, "user"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/sdk/bixby/BixbyAppService;->mIsUserBuild:Z

    sget-boolean v0, Lcom/samsung/android/sdk/bixby/BixbyAppService;->mIsUserBuild:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/samsung/android/sdk/bixby/BixbyAppService;->DEBUG:Z

    new-instance v0, Landroid/content/pm/Signature;

    const-string/jumbo v2, "MIIE1DCCA7ygAwIBAgIJANIJlaecDarWMA0GCSqGSIb3DQEBBQUAMIGiMQswCQYDVQQGEwJLUjEUMBIGA1UECBMLU291dGggS29yZWExEzARBgNVBAcTClN1d29uIENpdHkxHDAaBgNVBAoTE1NhbXN1bmcgQ29ycG9yYXRpb24xDDAKBgNVBAsTA0RNQzEVMBMGA1UEAxMMU2Ftc3VuZyBDZXJ0MSUwIwYJKoZIhvcNAQkBFhZhbmRyb2lkLm9zQHNhbXN1bmcuY29tMB4XDTExMDYyMjEyMjUxMloXDTM4MTEwNzEyMjUxMlowgaIxCzAJBgNVBAYTAktSMRQwEgYDVQQIEwtTb3V0aCBLb3JlYTETMBEGA1UEBxMKU3V3b24gQ2l0eTEcMBoGA1UEChMTU2Ftc3VuZyBDb3Jwb3JhdGlvbjEMMAoGA1UECxMDRE1DMRUwEwYDVQQDEwxTYW1zdW5nIENlcnQxJTAjBgkqhkiG9w0BCQEWFmFuZHJvaWQub3NAc2Ftc3VuZy5jb20wggEgMA0GCSqGSIb3DQEBAQUAA4IBDQAwggEIAoIBAQDJhjhKPh8vsgZnDnjvIyIVwNJvRaInKNuZpE2hHDWsM6cf4HHEotaCWptMiLMz7ZbzxebGZtYPPulMSQiFq8+NxmD3B6q8d+rT4tDYrugQjBXNJg8uhQQsKNLyktqjxtoMe/I5HbeEGq3o/fDJ0N7893Ek5tLeCp4NLadGw2cOT/zchbcBu0dEhhuW/3MR2jYDxaEDNuVf+jS0NT7tyF9RAV4VGMZ+MJ45+HY5/xeBB/EJzRhBGmB38mlktuY/inC5YZ2wQwajI8Gh0jr4Z+GfFPVw/+Vz0OOgwrMGMqrsMXM4CZS+HjQeOpC9LkthVIH0bbOeqDgWRI7DX+sXNcHzAgEDo4IBCzCCAQcwHQYDVR0OBBYEFJMsOvcLYnoMdhC1oOdCfWz66j8eMIHXBgNVHSMEgc8wgcyAFJMsOvcLYnoMdhC1oOdCfWz66j8eoYGopIGlMIGiMQswCQYDVQQGEwJLUjEUMBIGA1UECBMLU291dGggS29yZWExEzARBgNVBAcTClN1d29uIENpdHkxHDAaBgNVBAoTE1NhbXN1bmcgQ29ycG9yYXRpb24xDDAKBgNVBAsTA0RNQzEVMBMGA1UEAxMMU2Ftc3VuZyBDZXJ0MSUwIwYJKoZIhvcNAQkBFhZhbmRyb2lkLm9zQHNhbXN1bmcuY29tggkA0gmVp5wNqtYwDAYDVR0TBAUwAwEB/zANBgkqhkiG9w0BAQUFAAOCAQEAMpYB/kDgNqSobMXUndjBtUFZmOcmN1OLDUMDaaxRUw9jqs6MAZoaZmFqLxuyxfq9bzEyYfOA40cWI/BT2ePFP1/W0ZZdewAOTcJEwbJ+L+mjI/8Hf1LEZ16GJHqoARhxN+MMm78BxWekKZ20vwslt9cQenuB7hAvcv9HlQFk4mdS4RTEL4udKkLnMIiX7GQOoZJO0Tq76dEgkSti9JJkk6htuUwLRvRMYWHVjC9kgWSJDFEt+yjULIVb9HDb7i2raWDK0E6B9xUl3tRs3Q81n5nEYNufAH2WzoO0shisLYLEjxJgjUaXM/BaM3VZRmnMv4pJVUTWxXAek2nAjIEBWA=="

    invoke-static {v2, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/pm/Signature;-><init>([B)V

    sput-object v0, Lcom/samsung/android/sdk/bixby/BixbyAppService;->mBixbAgentSignature:Landroid/content/pm/Signature;

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/bixby/BixbyAppService;->mIsKnoxId:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/bixby/BixbyAppService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/android/sdk/bixby/BixbyAppService$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/bixby/BixbyAppService$1;-><init>(Lcom/samsung/android/sdk/bixby/BixbyAppService;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/bixby/BixbyAppService;->mResponseFromMediator:Lcom/samsung/android/sdk/bixby/BixbyApi$OnResponseCallback;

    new-instance v0, Lcom/samsung/android/sdk/bixby/BixbyAppService$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/bixby/BixbyAppService$2;-><init>(Lcom/samsung/android/sdk/bixby/BixbyAppService;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/bixby/BixbyAppService;->mBinder:Lcom/samsung/android/bixby/agent/IBixbyAgentAppService$Stub;

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/sdk/bixby/BixbyAppService;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyAppService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/sdk/bixby/BixbyAppService;)Lcom/samsung/android/bixby/agent/IBixbyAgentAppServiceCallback;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/BixbyAppService;->mCallbackToBa:Lcom/samsung/android/bixby/agent/IBixbyAgentAppServiceCallback;

    return-object v0
.end method

.method static synthetic access$202(Lcom/samsung/android/sdk/bixby/BixbyAppService;Lcom/samsung/android/bixby/agent/IBixbyAgentAppServiceCallback;)Lcom/samsung/android/bixby/agent/IBixbyAgentAppServiceCallback;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/bixby/BixbyAppService;->mCallbackToBa:Lcom/samsung/android/bixby/agent/IBixbyAgentAppServiceCallback;

    return-object p1
.end method

.method static synthetic access$300(Lcom/samsung/android/sdk/bixby/BixbyAppService;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/bixby/BixbyAppService;->handleResponseCommand(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/sdk/bixby/BixbyAppService;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/sdk/bixby/BixbyAppService;->checkSenderIdentity()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/samsung/android/sdk/bixby/BixbyAppService;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/BixbyAppService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private checkSenderIdentity()Z
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v12, 0x1

    const/4 v11, 0x0

    sget-boolean v9, Lcom/samsung/android/sdk/bixby/BixbyAppService;->mIsUserBuild:Z

    if-nez v9, :cond_1

    :cond_0
    return v12

    :cond_1
    iget-boolean v9, p0, Lcom/samsung/android/sdk/bixby/BixbyAppService;->mIsKnoxId:Z

    if-nez v9, :cond_0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-virtual {p0}, Lcom/samsung/android/sdk/bixby/BixbyAppService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    const/4 v7, 0x0

    move-object v0, v5

    array-length v1, v5

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_3

    return v11

    :cond_2
    return v11

    :cond_3
    aget-object v4, v5, v2

    const-string/jumbo v9, "com.samsung.android.bixby.agent"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    const/16 v9, 0x40

    :try_start_0
    invoke-virtual {v6, v4, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v9

    iget-object v7, v9, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v7, :cond_4

    array-length v9, v7

    if-lez v9, :cond_4

    sget-object v9, Lcom/samsung/android/sdk/bixby/BixbyAppService;->mBixbAgentSignature:Landroid/content/pm/Signature;

    const/4 v10, 0x0

    aget-object v10, v7, v10

    invoke-virtual {v9, v10}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    if-eqz v9, :cond_4

    return v12

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method private handleResponseCommand(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    const-string/jumbo v1, "esem_request_nlg"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "esem_request_tts"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "esem_context_result"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "esem_param_filling_result"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "esem_state_log"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string/jumbo v1, "esem_client_control"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string/jumbo v1, "state_command_result"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string/jumbo v1, "esem_chatty_mode_result"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string/jumbo v1, "esem_cancel_chatty_mode"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string/jumbo v1, "esem_split_state_result"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string/jumbo v1, "esem_all_states_result"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string/jumbo v1, "esem_user_confirm_result"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyAppService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleResponseCommand: Unsupported Command:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/bixby/BixbyAppService;->wrapCommand(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/bixby/BixbyAppService;->wrapCommand(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/bixby/BixbyAppService;->wrapCommand(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\"result\":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/sdk/bixby/BixbyAppService;->wrapCommand(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/bixby/BixbyAppService;->wrapCommand(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/bixby/BixbyAppService;->wrapCommand(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_6
    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/bixby/BixbyAppService;->makeStateResultCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\"result\":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/sdk/bixby/BixbyAppService;->wrapCommand(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_8
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/bixby/BixbyAppService;->wrapCommand(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\"selectedStateId\":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/sdk/bixby/BixbyAppService;->wrapCommand(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\"result\":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/sdk/bixby/BixbyAppService;->wrapCommand(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_b
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/bixby/BixbyAppService;->wrapCommand(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private isKnoxId()Z
    .locals 10

    const/4 v9, 0x0

    :try_start_0
    const-string/jumbo v6, "android.os.UserHandle"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    const-string/jumbo v7, "semGetMyUserId"

    invoke-virtual {v4, v7, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v2, v7, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sget-boolean v6, Lcom/samsung/android/sdk/bixby/BixbyAppService;->DEBUG:Z

    if-nez v6, :cond_0

    :goto_0
    const-string/jumbo v6, "com.samsung.android.knox.SemPersonaManager"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const-string/jumbo v7, "isKnoxId"

    invoke-virtual {v3, v7, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const/4 v7, 0x0

    invoke-virtual {v2, v7, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sget-boolean v6, Lcom/samsung/android/sdk/bixby/BixbyAppService;->DEBUG:Z

    if-nez v6, :cond_1

    :goto_1
    return v0

    :cond_0
    sget-object v6, Lcom/samsung/android/sdk/bixby/BixbyAppService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "userId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v6, Lcom/samsung/android/sdk/bixby/BixbyAppService;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "isKnoxId: Can\'t read information on KNOX."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v6, Lcom/samsung/android/sdk/bixby/BixbyAppService;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v9

    :cond_1
    :try_start_1
    sget-object v6, Lcom/samsung/android/sdk/bixby/BixbyAppService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "bRet = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private makeStateResultCommand(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const/4 v8, 0x0

    iget-object v6, p0, Lcom/samsung/android/sdk/bixby/BixbyAppService;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    iget-object v6, v6, Lcom/samsung/android/sdk/bixby/BixbyApi;->mStateCommandJsonFromBa:Ljava/lang/String;

    if-eqz v6, :cond_0

    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    iget-object v6, p0, Lcom/samsung/android/sdk/bixby/BixbyAppService;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    iget-object v6, v6, Lcom/samsung/android/sdk/bixby/BixbyApi;->mStateCommandJsonFromBa:Ljava/lang/String;

    invoke-direct {v3, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v6, "version"

    const-string/jumbo v7, "1.0"

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v6, "command"

    const-string/jumbo v7, "esem_state_result"

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v6, "requestId"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "requestId"

    invoke-virtual {v1, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v6, "result"

    invoke-virtual {v2, v6, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v6, "content"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string/jumbo v6, "state"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string/jumbo v7, "state"

    invoke-virtual {v2, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v6, "content"

    invoke-virtual {v1, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    :goto_0
    return-object v5

    :cond_0
    sget-object v6, Lcom/samsung/android/sdk/bixby/BixbyAppService;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "makeStateResultCommand: Can\'t make a state result command. Ignored."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v8

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    const/4 v5, 0x0

    goto :goto_0
.end method

.method private wrapCommand(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\"version\":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "1.0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\"command\":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\"content\":{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "}}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/BixbyAppService;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->onServiceBound(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/BixbyAppService;->mBinder:Lcom/samsung/android/bixby/agent/IBixbyAgentAppService$Stub;

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyAppService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "BixbyAppService onCreate package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/bixby/BixbyAppService;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    invoke-direct {p0}, Lcom/samsung/android/sdk/bixby/BixbyAppService;->isKnoxId()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/bixby/BixbyAppService;->mIsKnoxId:Z

    invoke-static {}, Lcom/samsung/android/sdk/bixby/BixbyApi;->getInstance()Lcom/samsung/android/sdk/bixby/BixbyApi;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/bixby/BixbyAppService;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/BixbyAppService;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    iget-object v1, p0, Lcom/samsung/android/sdk/bixby/BixbyAppService;->mResponseFromMediator:Lcom/samsung/android/sdk/bixby/BixbyApi$OnResponseCallback;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->setResponseCallback(Lcom/samsung/android/sdk/bixby/BixbyApi$OnResponseCallback;)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/bixby/BixbyAppService;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.samsung.android.bixby.agent"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/BixbyAppService;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->onServiceCreated()V

    return-void

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyAppService;->mActorThreadHandler:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    :goto_1
    new-instance v0, Lcom/samsung/android/sdk/bixby/BixbyAppService$CommandHandler;

    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyAppService;->mActorThreadHandler:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/bixby/BixbyAppService$CommandHandler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/bixby/BixbyAppService;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/BixbyAppService;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    iget-object v1, p0, Lcom/samsung/android/sdk/bixby/BixbyAppService;->mHandler:Landroid/os/Handler;

    iput-object v1, v0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mHandler:Landroid/os/Handler;

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "ExtCmdHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sdk/bixby/BixbyAppService;->mActorThreadHandler:Landroid/os/HandlerThread;

    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyAppService;->mActorThreadHandler:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 3

    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyAppService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "BixbyAppService onDestroy package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/bixby/BixbyAppService;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/BixbyAppService;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->clearData()V

    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/BixbyAppService;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->onServiceDestroyed()V

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/BixbyAppService;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->onServiceUnbound(Landroid/content/Intent;)V

    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method
