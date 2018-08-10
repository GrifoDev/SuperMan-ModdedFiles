.class final Lcom/samsung/android/authnrservice/service/PreloadedAuthnrTaController;
.super Ljava/lang/Object;
.source "PreloadedAuthnrTaController.java"

# interfaces
.implements Lcom/samsung/android/authnrservice/service/IPreloadedTaController;


# static fields
.field private static final TAG:Ljava/lang/String; = "PATC"

.field private static sIsNativeLoaded:Z

.field private static sIsPrepared:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    :try_start_0
    const-string/jumbo v3, "prldauthnrtactrl_jni"

    invoke-static {v3}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const/4 v3, 0x1

    sput-boolean v3, Lcom/samsung/android/authnrservice/service/PreloadedAuthnrTaController;->sIsNativeLoaded:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "PATC"

    const-string/jumbo v4, "NPE"

    invoke-static {v3, v4}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v2

    const-string/jumbo v3, "PATC"

    const-string/jumbo v4, "ULE"

    invoke-static {v3, v4}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_2
    move-exception v1

    const-string/jumbo v3, "PATC"

    const-string/jumbo v4, "SE"

    invoke-static {v3, v4}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private native nativeInitialize()Z
.end method

.method private native nativeInitializeOperation()Z
.end method

.method private native nativeProcess(I[B)[B
.end method

.method private native nativeTerminate()Z
.end method

.method private native nativeTerminateOperation()Z
.end method


# virtual methods
.method public initialize()Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string/jumbo v1, "PATC"

    const-string/jumbo v2, "initialize"

    invoke-static {v1, v2}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v1, Lcom/samsung/android/authnrservice/service/PreloadedAuthnrTaController;->sIsNativeLoaded:Z

    if-nez v1, :cond_0

    const-string/jumbo v1, "PATC"

    const-string/jumbo v2, "not loaded"

    invoke-static {v1, v2}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_0
    sget-boolean v1, Lcom/samsung/android/authnrservice/service/PreloadedAuthnrTaController;->sIsPrepared:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "PATC"

    const-string/jumbo v2, "already prepared"

    invoke-static {v1, v2}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/authnrservice/service/PreloadedAuthnrTaController;->nativeInitializeOperation()Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v1, "PATC"

    const-string/jumbo v2, "nativeInitializeOperation failed"

    invoke-static {v1, v2}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/authnrservice/service/PreloadedAuthnrTaController;->nativeInitialize()Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v1, "PATC"

    const-string/jumbo v2, "nativeInitialize failed"

    invoke-static {v1, v2}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_3
    sput-boolean v4, Lcom/samsung/android/authnrservice/service/PreloadedAuthnrTaController;->sIsPrepared:Z

    return v4
.end method

.method public process(I[B)[B
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v1, "PATC"

    const-string/jumbo v2, "process"

    invoke-static {v1, v2}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v1, Lcom/samsung/android/authnrservice/service/PreloadedAuthnrTaController;->sIsNativeLoaded:Z

    if-nez v1, :cond_0

    const-string/jumbo v1, "PATC"

    const-string/jumbo v2, "not loaded"

    invoke-static {v1, v2}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-array v1, v3, [B

    return-object v1

    :cond_0
    sget-boolean v1, Lcom/samsung/android/authnrservice/service/PreloadedAuthnrTaController;->sIsPrepared:Z

    if-nez v1, :cond_1

    const-string/jumbo v1, "PATC"

    const-string/jumbo v2, "not prepared"

    invoke-static {v1, v2}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-array v1, v3, [B

    return-object v1

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/authnrservice/service/PreloadedAuthnrTaController;->nativeProcess(I[B)[B

    move-result-object v0

    if-eqz v0, :cond_2

    array-length v1, v0

    if-nez v1, :cond_3

    :cond_2
    const-string/jumbo v1, "PATC"

    const-string/jumbo v2, "processNative failed"

    invoke-static {v1, v2}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    if-nez v0, :cond_4

    new-array v0, v3, [B

    :cond_4
    return-object v0
.end method

.method public terminate()Z
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v1, "PATC"

    const-string/jumbo v2, "terminate"

    invoke-static {v1, v2}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v1, Lcom/samsung/android/authnrservice/service/PreloadedAuthnrTaController;->sIsNativeLoaded:Z

    if-nez v1, :cond_0

    const-string/jumbo v1, "PATC"

    const-string/jumbo v2, "not loaded"

    invoke-static {v1, v2}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_0
    sget-boolean v1, Lcom/samsung/android/authnrservice/service/PreloadedAuthnrTaController;->sIsPrepared:Z

    if-nez v1, :cond_1

    const-string/jumbo v1, "PATC"

    const-string/jumbo v2, "not prepared"

    invoke-static {v1, v2}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/authnrservice/service/PreloadedAuthnrTaController;->nativeTerminate()Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v1, "PATC"

    const-string/jumbo v2, "nativeTerminate failed"

    invoke-static {v1, v2}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/authnrservice/service/PreloadedAuthnrTaController;->nativeTerminateOperation()Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v1, "PATC"

    const-string/jumbo v2, "nativeTerminateOperation failed"

    invoke-static {v1, v2}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_3
    sput-boolean v3, Lcom/samsung/android/authnrservice/service/PreloadedAuthnrTaController;->sIsPrepared:Z

    const/4 v1, 0x1

    return v1
.end method
