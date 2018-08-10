.class public final enum Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;
.super Ljava/lang/Enum;
.source "ContextAwareServiceErrors.java"

# interfaces
.implements Lcom/samsung/android/contextaware/manager/fault/IContextAwareErrors;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;",
        ">;",
        "Lcom/samsung/android/contextaware/manager/fault/IContextAwareErrors;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

.field public static final enum ERROR_BINDER_NULL_EXCEPTION:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

.field public static final enum ERROR_BUNDLE_NULL_EXCEPTION:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

.field public static final enum ERROR_CONTEXT_INFO_NULL_EXCEPTION:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

.field public static final enum ERROR_CONTEXT_NULL_EXCEPTION:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

.field public static final enum ERROR_CONTEXT_PROVIDER_FAULT:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

.field public static final enum ERROR_DEPENDENT_SERVICE_NOT_REGISTERED:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

.field public static final enum ERROR_DEPENDENT_SERVICE_NULL_EXCEPTION:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

.field public static final enum ERROR_LISTENER_NOT_REGISTERED:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

.field public static final enum ERROR_LISTENER_NULL_EXCEPTION:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

.field public static final enum ERROR_LOOPER_NULL_EXCEPTION:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

.field public static final enum ERROR_NOT_SUPPORT_CMD:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

.field public static final enum ERROR_PROPERTY_VALUE_FAULT:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

.field public static final enum ERROR_SERVICE_CODE_NULL_EXCEPTION:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

.field public static final enum ERROR_SERVICE_COUNT_FAULT:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

.field public static final enum ERROR_SERVICE_FAULT:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

.field public static final enum ERROR_SERVICE_HANDLER_NULL_EXCEPTION:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

.field public static final enum ERROR_SERVICE_NOT_RUNNING:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

.field public static final enum ERROR_SUB_COLLECTION:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

.field public static final enum ERROR_TIME_OUT:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

.field public static final enum ERROR_UNKNOWN:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

.field public static final enum ERROR_VERSION_SETTING:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

.field public static final enum SUCCESS:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;


# instance fields
.field private message:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    const-string/jumbo v1, "SUCCESS"

    const-string/jumbo v2, "Success"

    invoke-direct {v0, v1, v4, v2}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->SUCCESS:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    new-instance v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    const-string/jumbo v1, "ERROR_UNKNOWN"

    const-string/jumbo v2, "ERROR : Unknown"

    invoke-direct {v0, v1, v5, v2}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_UNKNOWN:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    new-instance v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    const-string/jumbo v1, "ERROR_NOT_SUPPORT_CMD"

    const-string/jumbo v2, "ERROR : not support commend"

    invoke-direct {v0, v1, v6, v2}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_NOT_SUPPORT_CMD:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    new-instance v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    const-string/jumbo v1, "ERROR_DEPENDENT_SERVICE_NULL_EXCEPTION"

    const-string/jumbo v2, "ERROR : Dependent service is null"

    invoke-direct {v0, v1, v7, v2}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_DEPENDENT_SERVICE_NULL_EXCEPTION:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    new-instance v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    const-string/jumbo v1, "ERROR_DEPENDENT_SERVICE_NOT_REGISTERED"

    const-string/jumbo v2, "ERROR : Dependent service isn\'t registered"

    invoke-direct {v0, v1, v8, v2}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_DEPENDENT_SERVICE_NOT_REGISTERED:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    new-instance v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    const-string/jumbo v1, "ERROR_LISTENER_NOT_REGISTERED"

    const-string/jumbo v2, "ERROR : Listener isn\'t registered"

    const/4 v3, 0x5

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_LISTENER_NOT_REGISTERED:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    new-instance v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    const-string/jumbo v1, "ERROR_LISTENER_NULL_EXCEPTION"

    const-string/jumbo v2, "ERROR : Listener is null"

    const/4 v3, 0x6

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_LISTENER_NULL_EXCEPTION:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    new-instance v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    const-string/jumbo v1, "ERROR_BINDER_NULL_EXCEPTION"

    const-string/jumbo v2, "ERROR : Binder is null"

    const/4 v3, 0x7

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_BINDER_NULL_EXCEPTION:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    new-instance v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    const-string/jumbo v1, "ERROR_LOOPER_NULL_EXCEPTION"

    const-string/jumbo v2, "ERROR : Looper is null"

    const/16 v3, 0x8

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_LOOPER_NULL_EXCEPTION:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    new-instance v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    const-string/jumbo v1, "ERROR_CONTEXT_NULL_EXCEPTION"

    const-string/jumbo v2, "ERROR : Context is null"

    const/16 v3, 0x9

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_CONTEXT_NULL_EXCEPTION:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    new-instance v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    const-string/jumbo v1, "ERROR_SERVICE_HANDLER_NULL_EXCEPTION"

    const-string/jumbo v2, "ERROR : Service handler is null"

    const/16 v3, 0xa

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_SERVICE_HANDLER_NULL_EXCEPTION:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    new-instance v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    const-string/jumbo v1, "ERROR_CONTEXT_INFO_NULL_EXCEPTION"

    const-string/jumbo v2, "ERROR : Context information is null"

    const/16 v3, 0xb

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_CONTEXT_INFO_NULL_EXCEPTION:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    new-instance v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    const-string/jumbo v1, "ERROR_SUB_COLLECTION"

    const-string/jumbo v2, "ERROR : Sub-Collection operation is fault"

    const/16 v3, 0xc

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_SUB_COLLECTION:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    new-instance v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    const-string/jumbo v1, "ERROR_BUNDLE_NULL_EXCEPTION"

    const-string/jumbo v2, "ERROR : Bundle is null"

    const/16 v3, 0xd

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_BUNDLE_NULL_EXCEPTION:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    new-instance v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    const-string/jumbo v1, "ERROR_SERVICE_FAULT"

    const-string/jumbo v2, "Service is fault"

    const/16 v3, 0xe

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_SERVICE_FAULT:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    new-instance v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    const-string/jumbo v1, "ERROR_VERSION_SETTING"

    const-string/jumbo v2, "ERROR : Version is already set"

    const/16 v3, 0xf

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_VERSION_SETTING:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    new-instance v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    const-string/jumbo v1, "ERROR_SERVICE_CODE_NULL_EXCEPTION"

    const-string/jumbo v2, "ERROR : Service code is null"

    const/16 v3, 0x10

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_SERVICE_CODE_NULL_EXCEPTION:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    new-instance v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    const-string/jumbo v1, "ERROR_SERVICE_NOT_RUNNING"

    const-string/jumbo v2, "ERROR : Service is not running"

    const/16 v3, 0x11

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_SERVICE_NOT_RUNNING:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    new-instance v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    const-string/jumbo v1, "ERROR_CONTEXT_PROVIDER_FAULT"

    const-string/jumbo v2, "ERROR : Context provider is fault"

    const/16 v3, 0x12

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_CONTEXT_PROVIDER_FAULT:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    new-instance v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    const-string/jumbo v1, "ERROR_SERVICE_COUNT_FAULT"

    const-string/jumbo v2, "Service count is fault"

    const/16 v3, 0x13

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_SERVICE_COUNT_FAULT:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    new-instance v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    const-string/jumbo v1, "ERROR_PROPERTY_VALUE_FAULT"

    const-string/jumbo v2, "Property value is fault"

    const/16 v3, 0x14

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_PROPERTY_VALUE_FAULT:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    new-instance v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    const-string/jumbo v1, "ERROR_TIME_OUT"

    const-string/jumbo v2, "ERROR : Time out"

    const/16 v3, 0x15

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_TIME_OUT:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    const/16 v0, 0x16

    new-array v0, v0, [Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    sget-object v1, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->SUCCESS:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_UNKNOWN:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_NOT_SUPPORT_CMD:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    aput-object v1, v0, v6

    sget-object v1, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_DEPENDENT_SERVICE_NULL_EXCEPTION:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    aput-object v1, v0, v7

    sget-object v1, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_DEPENDENT_SERVICE_NOT_REGISTERED:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    aput-object v1, v0, v8

    sget-object v1, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_LISTENER_NOT_REGISTERED:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_LISTENER_NULL_EXCEPTION:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_BINDER_NULL_EXCEPTION:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_LOOPER_NULL_EXCEPTION:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_CONTEXT_NULL_EXCEPTION:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_SERVICE_HANDLER_NULL_EXCEPTION:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_CONTEXT_INFO_NULL_EXCEPTION:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_SUB_COLLECTION:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_BUNDLE_NULL_EXCEPTION:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_SERVICE_FAULT:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_VERSION_SETTING:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_SERVICE_CODE_NULL_EXCEPTION:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_SERVICE_NOT_RUNNING:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_CONTEXT_PROVIDER_FAULT:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_SERVICE_COUNT_FAULT:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_PROPERTY_VALUE_FAULT:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_TIME_OUT:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->$VALUES:[Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->message:Ljava/lang/String;

    return-void
.end method

.method public static final getMessage(I)Ljava/lang/String;
    .locals 6

    const-string/jumbo v1, ""

    invoke-static {}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->values()[Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    move-result-object v3

    const/4 v2, 0x0

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ordinal()I

    move-result v5

    if-ne v5, p0, :cond_2

    iget-object v1, v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->message:Ljava/lang/String;

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "Message code is fault"

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    :cond_1
    return-object v1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;
    .locals 1

    const-class v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;
    .locals 1

    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->$VALUES:[Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    return-object v0
.end method


# virtual methods
.method public final getCode()I
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ordinal()I

    move-result v0

    return v0
.end method

.method public final getMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->message:Ljava/lang/String;

    return-object v0
.end method

.method public notifyFatalError()V
    .locals 0

    return-void
.end method
