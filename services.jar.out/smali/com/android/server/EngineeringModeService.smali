.class public final Lcom/android/server/EngineeringModeService;
.super Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService$Stub;
.source "EngineeringModeService.java"


# static fields
.field public static final ERRORBYTE_NO_PERMISSION:[B = null

.field public static final ERROR_NO_PERMISSION:I = -0x514

.field private static final TAG:Ljava/lang/String; = "EngineeringModeService"

.field private static mContext:Landroid/content/Context;


# instance fields
.field private mAllowedUIDs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mImei:Ljava/lang/String;

.field private mModel:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "engmode"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService$Stub;-><init>()V

    sput-object p1, Lcom/android/server/EngineeringModeService;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/EngineeringModeService;->mAllowedUIDs:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/server/EngineeringModeService;->mAllowedUIDs:Ljava/util/ArrayList;

    const/16 v1, 0x3e8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private hasPermission(I)Z
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/server/EngineeringModeService;->mAllowedUIDs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/server/EngineeringModeService;->mAllowedUIDs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p1, :cond_2

    const/4 v1, 0x1

    :cond_0
    if-nez v1, :cond_1

    const-string/jumbo v2, "EngineeringModeService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Permission denied. UID = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private native nativeGetId()[B
.end method

.method private native nativeGetNumOfModes()I
.end method

.method private native nativeGetRequestMsg(Ljava/lang/String;Ljava/lang/String;[BILjava/lang/String;Ljava/lang/String;)[B
.end method

.method private native nativeGetStatus(I)I
.end method

.method private native nativeInstallToken([B)I
.end method

.method private native nativeIsTokenInstalled()I
.end method

.method private native nativeRemoveToken()I
.end method

.method private native nativeSendFuseCmd()I
.end method


# virtual methods
.method public getID()[B
    .locals 2

    const-string/jumbo v0, "EngineeringModeService"

    const-string/jumbo v1, "getID() is called."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/EngineeringModeService;->hasPermission(I)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/server/EngineeringModeService;->ERRORBYTE_NO_PERMISSION:[B

    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/android/server/EngineeringModeService;->nativeGetId()[B

    move-result-object v0

    return-object v0
.end method

.method public getNumOfModes()I
    .locals 2

    const-string/jumbo v0, "EngineeringModeService"

    const-string/jumbo v1, "getNumOfModes() is called."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/EngineeringModeService;->hasPermission(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, -0x514

    return v0

    :cond_0
    invoke-direct {p0}, Lcom/android/server/EngineeringModeService;->nativeGetNumOfModes()I

    move-result v0

    return v0
.end method

.method public getRequestMsg(Ljava/lang/String;Ljava/lang/String;[BI)[B
    .locals 7

    const-string/jumbo v0, "EngineeringModeService"

    const-string/jumbo v1, "getRequestMsg() is called."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/EngineeringModeService;->hasPermission(I)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/server/EngineeringModeService;->ERRORBYTE_NO_PERMISSION:[B

    return-object v0

    :cond_0
    sget-object v0, Lcom/android/server/EngineeringModeService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/EngineeringModeDeviceInfo;->getInstance(Landroid/content/Context;)Lcom/android/server/EngineeringModeDeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/EngineeringModeDeviceInfo;->getModelName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/EngineeringModeService;->mModel:Ljava/lang/String;

    sget-object v0, Lcom/android/server/EngineeringModeService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/EngineeringModeDeviceInfo;->getInstance(Landroid/content/Context;)Lcom/android/server/EngineeringModeDeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/EngineeringModeDeviceInfo;->getImei()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/EngineeringModeService;->mImei:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/EngineeringModeService;->mModel:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/EngineeringModeService;->mImei:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/EngineeringModeService;->nativeGetRequestMsg(Ljava/lang/String;Ljava/lang/String;[BILjava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public getStatus(I)I
    .locals 2

    const-string/jumbo v0, "EngineeringModeService"

    const-string/jumbo v1, "getStatus() is called."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/server/EngineeringModeService;->nativeGetStatus(I)I

    move-result v0

    return v0
.end method

.method public installToken([B)I
    .locals 2

    const-string/jumbo v0, "EngineeringModeService"

    const-string/jumbo v1, "installToken() is called."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/EngineeringModeService;->hasPermission(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, -0x514

    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/EngineeringModeService;->nativeInstallToken([B)I

    move-result v0

    return v0
.end method

.method public isTokenInstalled()I
    .locals 2

    const-string/jumbo v0, "EngineeringModeService"

    const-string/jumbo v1, "isTokenInstalled() is called."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/EngineeringModeService;->hasPermission(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, -0x514

    return v0

    :cond_0
    invoke-direct {p0}, Lcom/android/server/EngineeringModeService;->nativeIsTokenInstalled()I

    move-result v0

    return v0
.end method

.method public removeToken()I
    .locals 2

    const-string/jumbo v0, "EngineeringModeService"

    const-string/jumbo v1, "removeToken() is called."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/EngineeringModeService;->hasPermission(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, -0x514

    return v0

    :cond_0
    invoke-direct {p0}, Lcom/android/server/EngineeringModeService;->nativeRemoveToken()I

    move-result v0

    return v0
.end method

.method public sendFuseCmd()I
    .locals 2

    const-string/jumbo v0, "EngineeringModeService"

    const-string/jumbo v1, "sendFuseCmd() is called."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/EngineeringModeService;->hasPermission(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, -0x514

    return v0

    :cond_0
    invoke-direct {p0}, Lcom/android/server/EngineeringModeService;->nativeSendFuseCmd()I

    move-result v0

    return v0
.end method
