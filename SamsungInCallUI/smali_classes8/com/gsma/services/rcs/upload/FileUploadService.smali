.class public final Lcom/gsma/services/rcs/upload/FileUploadService;
.super Lcom/gsma/services/rcs/RcsService;
.source "FileUploadService.java"


# static fields
.field private static final KITKAT_VERSION_CODE:I = 0x13

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final TAKE_PERSISTABLE_URI_PERMISSION_METHOD_NAME:Ljava/lang/String; = "takePersistableUriPermission"

.field private static final TAKE_PERSISTABLE_URI_PERMISSION_PARAM_TYPES:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private api:Lcom/gsma/services/rcs/upload/IFileUploadService;

.field private apiConnection:Landroid/content/ServiceConnection;

.field private final mapForFileUploadListener:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/gsma/services/rcs/upload/FileUploadListener;",
            "Lcom/gsma/services/rcs/upload/IFileUploadListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lcom/gsma/services/rcs/upload/FileUploadService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gsma/services/rcs/upload/FileUploadService;->LOG_TAG:Ljava/lang/String;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Landroid/net/Uri;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    sput-object v0, Lcom/gsma/services/rcs/upload/FileUploadService;->TAKE_PERSISTABLE_URI_PERMISSION_PARAM_TYPES:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/gsma/services/rcs/RcsServiceListener;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/gsma/services/rcs/RcsService;-><init>(Landroid/content/Context;Lcom/gsma/services/rcs/RcsServiceListener;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/gsma/services/rcs/upload/FileUploadService;->mapForFileUploadListener:Ljava/util/Map;

    new-instance v0, Lcom/gsma/services/rcs/upload/FileUploadService$1;

    invoke-direct {v0, p0}, Lcom/gsma/services/rcs/upload/FileUploadService$1;-><init>(Lcom/gsma/services/rcs/upload/FileUploadService;)V

    iput-object v0, p0, Lcom/gsma/services/rcs/upload/FileUploadService;->apiConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$000(Lcom/gsma/services/rcs/upload/FileUploadService;)Lcom/gsma/services/rcs/RcsServiceListener;
    .locals 1

    iget-object v0, p0, Lcom/gsma/services/rcs/upload/FileUploadService;->serviceListener:Lcom/gsma/services/rcs/RcsServiceListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/gsma/services/rcs/upload/FileUploadService;)Lcom/gsma/services/rcs/RcsServiceListener;
    .locals 1

    iget-object v0, p0, Lcom/gsma/services/rcs/upload/FileUploadService;->serviceListener:Lcom/gsma/services/rcs/RcsServiceListener;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/gsma/services/rcs/upload/FileUploadService;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/gsma/services/rcs/upload/FileUploadService;)Lcom/gsma/services/rcs/RcsServiceListener;
    .locals 1

    iget-object v0, p0, Lcom/gsma/services/rcs/upload/FileUploadService;->serviceListener:Lcom/gsma/services/rcs/RcsServiceListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/gsma/services/rcs/upload/FileUploadService;)Lcom/gsma/services/rcs/RcsServiceListener;
    .locals 1

    iget-object v0, p0, Lcom/gsma/services/rcs/upload/FileUploadService;->serviceListener:Lcom/gsma/services/rcs/RcsServiceListener;

    return-object v0
.end method

.method private grantUriPermissionToStackServices(Landroid/net/Uri;)V
    .locals 7

    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/gsma/services/rcs/upload/IFileUploadService;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/gsma/services/rcs/upload/FileUploadService;->ctx:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v4, p0, Lcom/gsma/services/rcs/upload/FileUploadService;->ctx:Landroid/content/Context;

    iget-object v5, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-virtual {v4, v5, p1, v6}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private takePersistableUriPermission(Landroid/net/Uri;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    :try_start_0
    iget-object v4, p0, Lcom/gsma/services/rcs/upload/FileUploadService;->ctx:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "takePersistableUriPermission"

    sget-object v6, Lcom/gsma/services/rcs/upload/FileUploadService;->TAKE_PERSISTABLE_URI_PERMISSION_PARAM_TYPES:[Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v4, 0x2

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v2, v4

    const/4 v4, 0x1

    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-virtual {v3, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    new-instance v4, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private tryToGrantAndPersistUriPermission(Landroid/net/Uri;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    const-string v0, "content"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/gsma/services/rcs/upload/FileUploadService;->grantUriPermissionToStackServices(Landroid/net/Uri;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/gsma/services/rcs/upload/FileUploadService;->takePersistableUriPermission(Landroid/net/Uri;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addEventListener(Lcom/gsma/services/rcs/upload/FileUploadListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    iget-object v3, p0, Lcom/gsma/services/rcs/upload/FileUploadService;->api:Lcom/gsma/services/rcs/upload/IFileUploadService;

    if-eqz v3, :cond_0

    move-object v0, p1

    :try_start_0
    new-instance v2, Lcom/gsma/services/rcs/upload/FileUploadService$2;

    invoke-direct {v2, p0, v0}, Lcom/gsma/services/rcs/upload/FileUploadService$2;-><init>(Lcom/gsma/services/rcs/upload/FileUploadService;Lcom/gsma/services/rcs/upload/FileUploadListener;)V

    iget-object v3, p0, Lcom/gsma/services/rcs/upload/FileUploadService;->api:Lcom/gsma/services/rcs/upload/IFileUploadService;

    invoke-interface {v3, v2}, Lcom/gsma/services/rcs/upload/IFileUploadService;->addFileUploadEventListener(Lcom/gsma/services/rcs/upload/IFileUploadListener;)V

    iget-object v3, p0, Lcom/gsma/services/rcs/upload/FileUploadService;->mapForFileUploadListener:Ljava/util/Map;

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    new-instance v3, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    new-instance v3, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v3}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v3
.end method

.method public canUploadFile()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    iget-object v1, p0, Lcom/gsma/services/rcs/upload/FileUploadService;->api:Lcom/gsma/services/rcs/upload/IFileUploadService;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/gsma/services/rcs/upload/FileUploadService;->api:Lcom/gsma/services/rcs/upload/IFileUploadService;

    invoke-interface {v1}, Lcom/gsma/services/rcs/upload/IFileUploadService;->canUploadFile()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v1
.end method

.method public connect()V
    .locals 6

    iget-object v2, p0, Lcom/gsma/services/rcs/upload/FileUploadService;->ctx:Landroid/content/Context;

    invoke-static {v2}, Lcom/gsma/services/rcs/RcsServiceControl;->getInstance(Landroid/content/Context;)Lcom/gsma/services/rcs/RcsServiceControl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gsma/services/rcs/RcsServiceControl;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/gsma/services/rcs/RcsServiceControl;->isActivated()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    sget-object v2, Lcom/gsma/services/rcs/upload/FileUploadService;->LOG_TAG:Ljava/lang/String;

    const-string v3, "TAPI is not available or not activated!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/gsma/services/rcs/upload/FileUploadService;->ctx:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/gsma/services/rcs/upload/IFileUploadService;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "com.sec.imsservice"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    iget-object v4, p0, Lcom/gsma/services/rcs/upload/FileUploadService;->apiConnection:Landroid/content/ServiceConnection;

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    sget-object v2, Lcom/gsma/services/rcs/upload/FileUploadService;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bindService to FileUpload service : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public disconnect()V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/gsma/services/rcs/upload/FileUploadService;->ctx:Landroid/content/Context;

    iget-object v2, p0, Lcom/gsma/services/rcs/upload/FileUploadService;->apiConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    sget-object v1, Lcom/gsma/services/rcs/upload/FileUploadService;->LOG_TAG:Ljava/lang/String;

    const-string v2, "disconnected"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method

.method public getConfiguration()Lcom/gsma/services/rcs/upload/FileUploadServiceConfiguration;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    iget-object v1, p0, Lcom/gsma/services/rcs/upload/FileUploadService;->api:Lcom/gsma/services/rcs/upload/IFileUploadService;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/gsma/services/rcs/upload/FileUploadService;->api:Lcom/gsma/services/rcs/upload/IFileUploadService;

    invoke-interface {v1}, Lcom/gsma/services/rcs/upload/IFileUploadService;->getConfiguration()Lcom/gsma/services/rcs/upload/FileUploadServiceConfiguration;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v1
.end method

.method public getFileUpload(Ljava/lang/String;)Lcom/gsma/services/rcs/upload/FileUpload;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    iget-object v2, p0, Lcom/gsma/services/rcs/upload/FileUploadService;->api:Lcom/gsma/services/rcs/upload/IFileUploadService;

    if-eqz v2, :cond_1

    :try_start_0
    iget-object v2, p0, Lcom/gsma/services/rcs/upload/FileUploadService;->api:Lcom/gsma/services/rcs/upload/IFileUploadService;

    invoke-interface {v2, p1}, Lcom/gsma/services/rcs/upload/IFileUploadService;->getFileUpload(Ljava/lang/String;)Lcom/gsma/services/rcs/upload/IFileUpload;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Lcom/gsma/services/rcs/upload/FileUpload;

    invoke-direct {v2, v1}, Lcom/gsma/services/rcs/upload/FileUpload;-><init>(Lcom/gsma/services/rcs/upload/IFileUpload;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    new-instance v2, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v2}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v2
.end method

.method public getFileUploads()Ljava/util/Set;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/gsma/services/rcs/upload/FileUpload;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    iget-object v5, p0, Lcom/gsma/services/rcs/upload/FileUploadService;->api:Lcom/gsma/services/rcs/upload/IFileUploadService;

    if-eqz v5, :cond_0

    :try_start_0
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iget-object v5, p0, Lcom/gsma/services/rcs/upload/FileUploadService;->api:Lcom/gsma/services/rcs/upload/IFileUploadService;

    invoke-interface {v5}, Lcom/gsma/services/rcs/upload/IFileUploadService;->getFileUploads()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    new-instance v4, Lcom/gsma/services/rcs/upload/FileUpload;

    invoke-static {v0}, Lcom/gsma/services/rcs/upload/IFileUpload$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/upload/IFileUpload;

    move-result-object v6

    invoke-direct {v4, v6}, Lcom/gsma/services/rcs/upload/FileUpload;-><init>(Lcom/gsma/services/rcs/upload/IFileUpload;)V

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v5, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    new-instance v5, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v5}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v5

    :cond_1
    return-object v3
.end method

.method public removeEventListener(Lcom/gsma/services/rcs/upload/FileUploadListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    iget-object v2, p0, Lcom/gsma/services/rcs/upload/FileUploadService;->api:Lcom/gsma/services/rcs/upload/IFileUploadService;

    if-eqz v2, :cond_1

    :try_start_0
    iget-object v2, p0, Lcom/gsma/services/rcs/upload/FileUploadService;->mapForFileUploadListener:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gsma/services/rcs/upload/IFileUploadListener;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/gsma/services/rcs/upload/FileUploadService;->api:Lcom/gsma/services/rcs/upload/IFileUploadService;

    invoke-interface {v2, v1}, Lcom/gsma/services/rcs/upload/IFileUploadService;->removeFileUploadEventListener(Lcom/gsma/services/rcs/upload/IFileUploadListener;)V

    :cond_0
    iget-object v2, p0, Lcom/gsma/services/rcs/upload/FileUploadService;->mapForFileUploadListener:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v2, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    new-instance v2, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v2}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v2
.end method

.method protected setApi(Landroid/os/IInterface;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/gsma/services/rcs/RcsService;->setApi(Landroid/os/IInterface;)V

    check-cast p1, Lcom/gsma/services/rcs/upload/IFileUploadService;

    iput-object p1, p0, Lcom/gsma/services/rcs/upload/FileUploadService;->api:Lcom/gsma/services/rcs/upload/IFileUploadService;

    return-void
.end method

.method public uploadFile(Landroid/net/Uri;Z)Lcom/gsma/services/rcs/upload/FileUpload;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    iget-object v2, p0, Lcom/gsma/services/rcs/upload/FileUploadService;->api:Lcom/gsma/services/rcs/upload/IFileUploadService;

    if-eqz v2, :cond_1

    :try_start_0
    iget-object v2, p0, Lcom/gsma/services/rcs/upload/FileUploadService;->api:Lcom/gsma/services/rcs/upload/IFileUploadService;

    invoke-interface {v2, p1, p2}, Lcom/gsma/services/rcs/upload/IFileUploadService;->uploadFile(Landroid/net/Uri;Z)Lcom/gsma/services/rcs/upload/IFileUpload;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Lcom/gsma/services/rcs/upload/FileUpload;

    invoke-direct {v2, v1}, Lcom/gsma/services/rcs/upload/FileUpload;-><init>(Lcom/gsma/services/rcs/upload/IFileUpload;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    new-instance v2, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v2}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v2
.end method
