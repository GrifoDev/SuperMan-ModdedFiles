.class public final enum Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;
.super Ljava/lang/Enum;
.source "AggregatorErrors.java"

# interfaces
.implements Lcom/samsung/android/contextaware/manager/fault/IContextAwareErrors;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;",
        ">;",
        "Lcom/samsung/android/contextaware/manager/fault/IContextAwareErrors;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;

.field public static final enum ERROR_ARRIVING_ON_STATUS_FAULT:Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;

.field public static final enum ERROR_SUB_COLLECTOR_FALSE:Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;

.field public static final enum ERROR_SUB_COLLECTOR_NULL_EXCEPTION:Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;

.field public static final enum ERROR_UNKNOWN:Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;

.field public static final enum ERROR_UPDATED_CONTEXT_NULL_EXCEPTION:Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;

.field public static final enum ERROR_UPDATED_CONTEXT_TYPE_FAULT:Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;

.field public static final enum SUCCESS:Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;


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
    new-instance v0, Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;

    const-string/jumbo v1, "SUCCESS"

    .line 28
    const-string/jumbo v2, "Success"

    .line 27
    invoke-direct {v0, v1, v4, v2}, Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 28
    sput-object v0, Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;->SUCCESS:Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;

    .line 30
    new-instance v0, Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;

    const-string/jumbo v1, "ERROR_UNKNOWN"

    .line 31
    const-string/jumbo v2, "ERROR : Unknown"

    .line 30
    invoke-direct {v0, v1, v5, v2}, Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 31
    sput-object v0, Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;->ERROR_UNKNOWN:Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;

    .line 33
    new-instance v0, Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;

    const-string/jumbo v1, "ERROR_ARRIVING_ON_STATUS_FAULT"

    .line 34
    const-string/jumbo v2, "ERROR : Status of arriving on POI is fault"

    .line 33
    invoke-direct {v0, v1, v6, v2}, Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 34
    sput-object v0, Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;->ERROR_ARRIVING_ON_STATUS_FAULT:Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;

    .line 36
    new-instance v0, Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;

    const-string/jumbo v1, "ERROR_UPDATED_CONTEXT_TYPE_FAULT"

    .line 37
    const-string/jumbo v2, "ERROR : Updated context type is fault"

    .line 36
    invoke-direct {v0, v1, v7, v2}, Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 37
    sput-object v0, Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;->ERROR_UPDATED_CONTEXT_TYPE_FAULT:Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;

    .line 39
    new-instance v0, Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;

    const-string/jumbo v1, "ERROR_UPDATED_CONTEXT_NULL_EXCEPTION"

    .line 40
    const-string/jumbo v2, "ERROR : Updated context is null"

    .line 39
    invoke-direct {v0, v1, v8, v2}, Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 40
    sput-object v0, Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;->ERROR_UPDATED_CONTEXT_NULL_EXCEPTION:Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;

    .line 42
    new-instance v0, Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;

    const-string/jumbo v1, "ERROR_SUB_COLLECTOR_FALSE"

    .line 43
    const-string/jumbo v2, "ERROR : Sub collector is false"

    .line 42
    const/4 v3, 0x5

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 43
    sput-object v0, Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;->ERROR_SUB_COLLECTOR_FALSE:Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;

    .line 45
    new-instance v0, Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;

    const-string/jumbo v1, "ERROR_SUB_COLLECTOR_NULL_EXCEPTION"

    .line 46
    const-string/jumbo v2, "ERROR : Sub collector is null"

    .line 45
    const/4 v3, 0x6

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 46
    sput-object v0, Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;->ERROR_SUB_COLLECTOR_NULL_EXCEPTION:Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;

    .line 25
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;

    sget-object v1, Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;->SUCCESS:Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;->ERROR_UNKNOWN:Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;->ERROR_ARRIVING_ON_STATUS_FAULT:Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;

    aput-object v1, v0, v6

    sget-object v1, Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;->ERROR_UPDATED_CONTEXT_TYPE_FAULT:Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;

    aput-object v1, v0, v7

    sget-object v1, Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;->ERROR_UPDATED_CONTEXT_NULL_EXCEPTION:Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;

    aput-object v1, v0, v8

    sget-object v1, Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;->ERROR_SUB_COLLECTOR_FALSE:Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;->ERROR_SUB_COLLECTOR_NULL_EXCEPTION:Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;->$VALUES:[Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "message"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 58
    iput-object p3, p0, Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;->message:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public static final getMessage(I)Ljava/lang/String;
    .locals 6
    .param p0, "code"    # I

    .prologue
    .line 87
    const-string/jumbo v1, ""

    .line 89
    .local v1, "msg":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;->values()[Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;

    move-result-object v3

    const/4 v2, 0x0

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    .line 90
    .local v0, "i":Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    if-ne v5, p0, :cond_2

    .line 91
    iget-object v1, v0, Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;->message:Ljava/lang/String;

    .line 96
    .end local v0    # "i":Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 97
    const-string/jumbo v2, "Message code is fault"

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 100
    :cond_1
    return-object v1

    .line 89
    .restart local v0    # "i":Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 25
    const-class v0, Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;->$VALUES:[Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;

    return-object v0
.end method


# virtual methods
.method public final getCode()I
    .locals 1

    .prologue
    .line 67
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    return v0
.end method

.method public final getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;->message:Ljava/lang/String;

    return-object v0
.end method

.method public notifyFatalError()V
    .locals 0

    .prologue
    .line 111
    return-void
.end method
