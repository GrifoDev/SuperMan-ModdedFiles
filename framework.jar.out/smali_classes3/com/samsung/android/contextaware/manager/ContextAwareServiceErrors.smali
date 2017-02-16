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

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 27
    new-instance v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    const-string/jumbo v1, "SUCCESS"

    .line 28
    const-string/jumbo v2, "Success"

    .line 27
    invoke-direct {v0, v1, v4, v2}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 28
    sput-object v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->SUCCESS:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    .line 30
    new-instance v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    const-string/jumbo v1, "ERROR_UNKNOWN"

    .line 31
    const-string/jumbo v2, "ERROR : Unknown"

    .line 30
    invoke-direct {v0, v1, v5, v2}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 31
    sput-object v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_UNKNOWN:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    .line 33
    new-instance v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    const-string/jumbo v1, "ERROR_NOT_SUPPORT_CMD"

    .line 34
    const-string/jumbo v2, "ERROR : not support commend"

    .line 33
    invoke-direct {v0, v1, v6, v2}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 34
    sput-object v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_NOT_SUPPORT_CMD:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    .line 36
    new-instance v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    const-string/jumbo v1, "ERROR_DEPENDENT_SERVICE_NULL_EXCEPTION"

    .line 37
    const-string/jumbo v2, "ERROR : Dependent service is null"

    .line 36
    invoke-direct {v0, v1, v7, v2}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 37
    sput-object v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_DEPENDENT_SERVICE_NULL_EXCEPTION:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    .line 39
    new-instance v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    const-string/jumbo v1, "ERROR_DEPENDENT_SERVICE_NOT_REGISTERED"

    .line 41
    const-string/jumbo v2, "ERROR : Dependent service isn\'t registered"

    .line 39
    invoke-direct {v0, v1, v8, v2}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 40
    sput-object v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_DEPENDENT_SERVICE_NOT_REGISTERED:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    .line 43
    new-instance v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    const-string/jumbo v1, "ERROR_LISTENER_NOT_REGISTERED"

    .line 44
    const-string/jumbo v2, "ERROR : Listener isn\'t registered"

    .line 43
    const/4 v3, 0x5

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 44
    sput-object v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_LISTENER_NOT_REGISTERED:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    .line 46
    new-instance v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    const-string/jumbo v1, "ERROR_LISTENER_NULL_EXCEPTION"

    .line 47
    const-string/jumbo v2, "ERROR : Listener is null"

    .line 46
    const/4 v3, 0x6

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 47
    sput-object v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_LISTENER_NULL_EXCEPTION:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    .line 49
    new-instance v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    const-string/jumbo v1, "ERROR_BINDER_NULL_EXCEPTION"

    .line 50
    const-string/jumbo v2, "ERROR : Binder is null"

    .line 49
    const/4 v3, 0x7

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 50
    sput-object v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_BINDER_NULL_EXCEPTION:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    .line 52
    new-instance v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    const-string/jumbo v1, "ERROR_LOOPER_NULL_EXCEPTION"

    .line 53
    const-string/jumbo v2, "ERROR : Looper is null"

    .line 52
    const/16 v3, 0x8

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 53
    sput-object v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_LOOPER_NULL_EXCEPTION:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    .line 55
    new-instance v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    const-string/jumbo v1, "ERROR_CONTEXT_NULL_EXCEPTION"

    .line 56
    const-string/jumbo v2, "ERROR : Context is null"

    .line 55
    const/16 v3, 0x9

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 56
    sput-object v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_CONTEXT_NULL_EXCEPTION:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    .line 58
    new-instance v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    const-string/jumbo v1, "ERROR_SERVICE_HANDLER_NULL_EXCEPTION"

    .line 59
    const-string/jumbo v2, "ERROR : Service handler is null"

    .line 58
    const/16 v3, 0xa

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 59
    sput-object v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_SERVICE_HANDLER_NULL_EXCEPTION:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    .line 61
    new-instance v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    const-string/jumbo v1, "ERROR_CONTEXT_INFO_NULL_EXCEPTION"

    .line 62
    const-string/jumbo v2, "ERROR : Context information is null"

    .line 61
    const/16 v3, 0xb

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 62
    sput-object v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_CONTEXT_INFO_NULL_EXCEPTION:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    .line 64
    new-instance v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    const-string/jumbo v1, "ERROR_SUB_COLLECTION"

    .line 65
    const-string/jumbo v2, "ERROR : Sub-Collection operation is fault"

    .line 64
    const/16 v3, 0xc

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 65
    sput-object v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_SUB_COLLECTION:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    .line 67
    new-instance v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    const-string/jumbo v1, "ERROR_BUNDLE_NULL_EXCEPTION"

    .line 68
    const-string/jumbo v2, "ERROR : Bundle is null"

    .line 67
    const/16 v3, 0xd

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 68
    sput-object v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_BUNDLE_NULL_EXCEPTION:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    .line 70
    new-instance v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    const-string/jumbo v1, "ERROR_SERVICE_FAULT"

    .line 71
    const-string/jumbo v2, "Service is fault"

    .line 70
    const/16 v3, 0xe

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 71
    sput-object v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_SERVICE_FAULT:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    .line 73
    new-instance v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    const-string/jumbo v1, "ERROR_VERSION_SETTING"

    .line 74
    const-string/jumbo v2, "ERROR : Version is already set"

    .line 73
    const/16 v3, 0xf

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 74
    sput-object v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_VERSION_SETTING:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    .line 76
    new-instance v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    const-string/jumbo v1, "ERROR_SERVICE_CODE_NULL_EXCEPTION"

    .line 77
    const-string/jumbo v2, "ERROR : Service code is null"

    .line 76
    const/16 v3, 0x10

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 77
    sput-object v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_SERVICE_CODE_NULL_EXCEPTION:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    .line 79
    new-instance v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    const-string/jumbo v1, "ERROR_SERVICE_NOT_RUNNING"

    .line 80
    const-string/jumbo v2, "ERROR : Service is not running"

    .line 79
    const/16 v3, 0x11

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 80
    sput-object v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_SERVICE_NOT_RUNNING:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    .line 82
    new-instance v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    const-string/jumbo v1, "ERROR_CONTEXT_PROVIDER_FAULT"

    .line 83
    const-string/jumbo v2, "ERROR : Context provider is fault"

    .line 82
    const/16 v3, 0x12

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 83
    sput-object v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_CONTEXT_PROVIDER_FAULT:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    .line 85
    new-instance v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    const-string/jumbo v1, "ERROR_SERVICE_COUNT_FAULT"

    .line 86
    const-string/jumbo v2, "Service count is fault"

    .line 85
    const/16 v3, 0x13

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 86
    sput-object v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_SERVICE_COUNT_FAULT:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    .line 88
    new-instance v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    const-string/jumbo v1, "ERROR_TIME_OUT"

    .line 89
    const-string/jumbo v2, "ERROR : Time out"

    .line 88
    const/16 v3, 0x14

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 89
    sput-object v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_TIME_OUT:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    .line 25
    const/16 v0, 0x15

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

    sget-object v1, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_TIME_OUT:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->$VALUES:[Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "message"    # Ljava/lang/String;

    .prologue
    .line 100
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 101
    iput-object p3, p0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->message:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public static final getMessage(I)Ljava/lang/String;
    .locals 6
    .param p0, "code"    # I

    .prologue
    .line 130
    const-string/jumbo v1, ""

    .line 132
    .local v1, "msg":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->values()[Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    move-result-object v3

    const/4 v2, 0x0

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    .line 133
    .local v0, "i":Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    if-ne v5, p0, :cond_2

    .line 134
    iget-object v1, v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->message:Ljava/lang/String;

    .line 139
    .end local v0    # "i":Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 140
    const-string/jumbo v2, "Message code is fault"

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 143
    :cond_1
    return-object v1

    .line 132
    .restart local v0    # "i":Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 25
    const-class v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->$VALUES:[Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    return-object v0
.end method


# virtual methods
.method public final getCode()I
    .locals 1

    .prologue
    .line 110
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    return v0
.end method

.method public final getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->message:Ljava/lang/String;

    return-object v0
.end method

.method public notifyFatalError()V
    .locals 0

    .prologue
    .line 154
    return-void
.end method
