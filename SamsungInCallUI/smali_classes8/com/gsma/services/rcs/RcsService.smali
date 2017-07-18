.class public abstract Lcom/gsma/services/rcs/RcsService;
.super Ljava/lang/Object;
.source "RcsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gsma/services/rcs/RcsService$Build;,
        Lcom/gsma/services/rcs/RcsService$ReadStatus;,
        Lcom/gsma/services/rcs/RcsService$Direction;
    }
.end annotation


# static fields
.field public static final ACTION_SERVICE_PROVISIONING_DATA_CHANGED:Ljava/lang/String; = "com.gsma.services.rcs.action.SERVICE_PROVISIONING_DATA_CHANGED"

.field public static final ACTION_SERVICE_UP:Ljava/lang/String; = "com.gsma.services.rcs.action.SERVICE_UP"


# instance fields
.field private api:Landroid/os/IInterface;

.field protected ctx:Landroid/content/Context;

.field private mCommonServiceConfiguration:Lcom/gsma/services/rcs/CommonServiceConfiguration;

.field protected mRegistrationReason:Lcom/gsma/services/rcs/RcsServiceRegistration$ReasonCode;

.field private final mapForRegisterListener:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/gsma/services/rcs/RcsServiceRegistrationListener;",
            "Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;",
            ">;"
        }
    .end annotation
.end field

.field protected serviceListener:Lcom/gsma/services/rcs/RcsServiceListener;

.field private version:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/gsma/services/rcs/RcsServiceListener;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/gsma/services/rcs/RcsService;->mapForRegisterListener:Ljava/util/Map;

    iput-object v1, p0, Lcom/gsma/services/rcs/RcsService;->api:Landroid/os/IInterface;

    iput-object v1, p0, Lcom/gsma/services/rcs/RcsService;->version:Ljava/lang/Integer;

    iput-object p1, p0, Lcom/gsma/services/rcs/RcsService;->ctx:Landroid/content/Context;

    iput-object p2, p0, Lcom/gsma/services/rcs/RcsService;->serviceListener:Lcom/gsma/services/rcs/RcsServiceListener;

    new-instance v0, Lcom/gsma/services/rcs/CommonServiceConfiguration;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/CommonServiceConfiguration;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/gsma/services/rcs/RcsService;->mCommonServiceConfiguration:Lcom/gsma/services/rcs/CommonServiceConfiguration;

    return-void
.end method

.method private callApiMethod(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    iget-object v3, p0, Lcom/gsma/services/rcs/RcsService;->api:Landroid/os/IInterface;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/gsma/services/rcs/RcsService;->api:Landroid/os/IInterface;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-eqz p2, :cond_0

    const/4 v3, 0x1

    :try_start_0
    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object p3, v3, v4

    invoke-virtual {v0, p1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iget-object v3, p0, Lcom/gsma/services/rcs/RcsService;->api:Landroid/os/IInterface;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v0, p1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iget-object v3, p0, Lcom/gsma/services/rcs/RcsService;->api:Landroid/os/IInterface;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v3, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    new-instance v3, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v3}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v3
.end method


# virtual methods
.method public addEventListener(Lcom/gsma/services/rcs/RcsServiceRegistrationListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    iget-object v2, p0, Lcom/gsma/services/rcs/RcsService;->api:Landroid/os/IInterface;

    if-eqz v2, :cond_0

    move-object v0, p1

    new-instance v1, Lcom/gsma/services/rcs/RcsService$1;

    invoke-direct {v1, p0, v0}, Lcom/gsma/services/rcs/RcsService$1;-><init>(Lcom/gsma/services/rcs/RcsService;Lcom/gsma/services/rcs/RcsServiceRegistrationListener;)V

    iget-object v2, p0, Lcom/gsma/services/rcs/RcsService;->mapForRegisterListener:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "addEventListener"

    const-class v3, Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;

    invoke-direct {p0, v2, v1, v3}, Lcom/gsma/services/rcs/RcsService;->callApiMethod(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance v2, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v2}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v2
.end method

.method public abstract connect()V
.end method

.method public abstract disconnect()V
.end method

.method public getCommonConfiguration()Lcom/gsma/services/rcs/CommonServiceConfiguration;
    .locals 1

    iget-object v0, p0, Lcom/gsma/services/rcs/RcsService;->mCommonServiceConfiguration:Lcom/gsma/services/rcs/CommonServiceConfiguration;

    return-object v0
.end method

.method public getServiceRegistrationReasonCode()Lcom/gsma/services/rcs/RcsServiceRegistration$ReasonCode;
    .locals 1

    iget-object v0, p0, Lcom/gsma/services/rcs/RcsService;->mRegistrationReason:Lcom/gsma/services/rcs/RcsServiceRegistration$ReasonCode;

    return-object v0
.end method

.method public getServiceVersion()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    iget-object v1, p0, Lcom/gsma/services/rcs/RcsService;->api:Landroid/os/IInterface;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/gsma/services/rcs/RcsService;->version:Ljava/lang/Integer;

    if-nez v1, :cond_0

    :try_start_0
    const-string v1, "getServiceVersion"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Lcom/gsma/services/rcs/RcsService;->callApiMethod(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iput-object v1, p0, Lcom/gsma/services/rcs/RcsService;->version:Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    iget-object v1, p0, Lcom/gsma/services/rcs/RcsService;->version:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    :catch_0
    move-exception v0

    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v1
.end method

.method public isServiceConnected()Z
    .locals 1

    iget-object v0, p0, Lcom/gsma/services/rcs/RcsService;->api:Landroid/os/IInterface;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isServiceRegistered()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/gsma/services/rcs/RcsService;->api:Landroid/os/IInterface;

    if-eqz v0, :cond_0

    const-string v0, "isServiceRegistered"

    invoke-direct {p0, v0, v1, v1}, Lcom/gsma/services/rcs/RcsService;->callApiMethod(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public removeEventListener(Lcom/gsma/services/rcs/RcsServiceRegistrationListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    iget-object v1, p0, Lcom/gsma/services/rcs/RcsService;->api:Landroid/os/IInterface;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/gsma/services/rcs/RcsService;->mapForRegisterListener:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;

    if-eqz v0, :cond_0

    const-string v1, "removeEventListener"

    const-class v2, Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;

    invoke-direct {p0, v1, v0, v2}, Lcom/gsma/services/rcs/RcsService;->callApiMethod(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    :cond_0
    iget-object v1, p0, Lcom/gsma/services/rcs/RcsService;->mapForRegisterListener:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v1
.end method

.method protected setApi(Landroid/os/IInterface;)V
    .locals 0

    iput-object p1, p0, Lcom/gsma/services/rcs/RcsService;->api:Landroid/os/IInterface;

    return-void
.end method
