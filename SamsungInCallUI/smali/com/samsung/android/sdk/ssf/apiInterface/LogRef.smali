.class public Lcom/samsung/android/sdk/ssf/apiInterface/LogRef;
.super Ljava/lang/Object;


# static fields
.field private static sLogInterface:Lcom/samsung/android/sdk/enhancedfeatures/apiinterface/LogInterface;

.field private static sLogInterfaceInited:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/sdk/ssf/apiInterface/LogRef;->sLogInterfaceInited:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static init()V
    .locals 2

    const-string v0, "Interface SE-SDL"

    const-string v1, "Log"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/sdk/ssf/apiInterface/ApiInterface;->isSemAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemLogRef;->getInstance()Lcom/samsung/android/sdk/enhancedfeatures/sem/SemLogRef;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/ssf/apiInterface/LogRef;->sLogInterface:Lcom/samsung/android/sdk/enhancedfeatures/apiinterface/LogInterface;

    :goto_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/sdk/ssf/apiInterface/LogRef;->sLogInterfaceInited:Z

    return-void

    :cond_0
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlLogRef;->getInstance()Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlLogRef;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/ssf/apiInterface/LogRef;->sLogInterface:Lcom/samsung/android/sdk/enhancedfeatures/apiinterface/LogInterface;

    goto :goto_0
.end method

.method public static secD(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/samsung/android/sdk/ssf/apiInterface/LogRef;->sLogInterfaceInited:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/ssf/apiInterface/LogRef;->init()V

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/ssf/apiInterface/LogRef;->sLogInterface:Lcom/samsung/android/sdk/enhancedfeatures/apiinterface/LogInterface;

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/samsung/android/sdk/ssf/apiInterface/LogRef;->sLogInterface:Lcom/samsung/android/sdk/enhancedfeatures/apiinterface/LogInterface;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/apiinterface/LogInterface;->secD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static secE(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/samsung/android/sdk/ssf/apiInterface/LogRef;->sLogInterfaceInited:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/ssf/apiInterface/LogRef;->init()V

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/ssf/apiInterface/LogRef;->sLogInterface:Lcom/samsung/android/sdk/enhancedfeatures/apiinterface/LogInterface;

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/samsung/android/sdk/ssf/apiInterface/LogRef;->sLogInterface:Lcom/samsung/android/sdk/enhancedfeatures/apiinterface/LogInterface;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/apiinterface/LogInterface;->secE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static secI(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/samsung/android/sdk/ssf/apiInterface/LogRef;->sLogInterfaceInited:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/ssf/apiInterface/LogRef;->init()V

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/ssf/apiInterface/LogRef;->sLogInterface:Lcom/samsung/android/sdk/enhancedfeatures/apiinterface/LogInterface;

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/samsung/android/sdk/ssf/apiInterface/LogRef;->sLogInterface:Lcom/samsung/android/sdk/enhancedfeatures/apiinterface/LogInterface;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/apiinterface/LogInterface;->secI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static secV(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/samsung/android/sdk/ssf/apiInterface/LogRef;->sLogInterfaceInited:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/ssf/apiInterface/LogRef;->init()V

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/ssf/apiInterface/LogRef;->sLogInterface:Lcom/samsung/android/sdk/enhancedfeatures/apiinterface/LogInterface;

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/samsung/android/sdk/ssf/apiInterface/LogRef;->sLogInterface:Lcom/samsung/android/sdk/enhancedfeatures/apiinterface/LogInterface;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/apiinterface/LogInterface;->secV(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static secW(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/samsung/android/sdk/ssf/apiInterface/LogRef;->sLogInterfaceInited:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/ssf/apiInterface/LogRef;->init()V

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/ssf/apiInterface/LogRef;->sLogInterface:Lcom/samsung/android/sdk/enhancedfeatures/apiinterface/LogInterface;

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/samsung/android/sdk/ssf/apiInterface/LogRef;->sLogInterface:Lcom/samsung/android/sdk/enhancedfeatures/apiinterface/LogInterface;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/apiinterface/LogInterface;->secW(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static wtf(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/samsung/android/sdk/ssf/apiInterface/LogRef;->sLogInterfaceInited:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/ssf/apiInterface/LogRef;->init()V

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/ssf/apiInterface/LogRef;->sLogInterface:Lcom/samsung/android/sdk/enhancedfeatures/apiinterface/LogInterface;

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/samsung/android/sdk/ssf/apiInterface/LogRef;->sLogInterface:Lcom/samsung/android/sdk/enhancedfeatures/apiinterface/LogInterface;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/apiinterface/LogInterface;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
