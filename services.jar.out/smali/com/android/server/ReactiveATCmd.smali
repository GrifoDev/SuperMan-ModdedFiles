.class public Lcom/android/server/ReactiveATCmd;
.super Ljava/lang/Object;
.source "ReactiveATCmd.java"

# interfaces
.implements Lcom/android/server/IWorkOnAt;


# static fields
.field private static final AT_COMMAND_HEADER:Ljava/lang/String; = "AT"

.field private static final AT_COMMAND_REACTIVE:Ljava/lang/String; = "REACTIVE"

.field private static final AT_RESPONSE_CONN_FAILED:Ljava/lang/String; = "NG (FAILED CONNECTION)"

.field private static final AT_RESPONSE_END:Ljava/lang/String; = "\r\n\r\nOK\r\n"

.field private static final AT_RESPONSE_INVALID_PARAM:Ljava/lang/String; = "NG (INVALID_PARAM)"

.field private static final AT_RESPONSE_NA:Ljava/lang/String; = "NA"

.field private static final AT_RESPONSE_START:Ljava/lang/String; = "\r\n"

.field private static final AT_RESPONSE_STATUS_LOCK:Ljava/lang/String; = "LOCK"

.field private static final AT_RESPONSE_STATUS_LOCK_1:Ljava/lang/String; = "LOCK_1"

.field private static final AT_RESPONSE_STATUS_LOCK_2:Ljava/lang/String; = "LOCK_2"

.field private static final AT_RESPONSE_STATUS_LOCK_3:Ljava/lang/String; = "LOCK_3"

.field private static final AT_RESPONSE_STATUS_LOCK_4:Ljava/lang/String; = "LOCK_4"

.field private static final AT_RESPONSE_STATUS_LOCK_5:Ljava/lang/String; = "LOCK_5"

.field private static final AT_RESPONSE_STATUS_TRIGGERED:Ljava/lang/String; = "TRIGGERED"

.field private static final AT_RESPONSE_STATUS_UNLOCK:Ljava/lang/String; = "UNLOCK"

.field private static final LOCK_STATE_1:I = 0x3

.field private static final LOCK_STATE_2:I = 0x4

.field private static final LOCK_STATE_3:I = 0x5

.field private static final LOCK_STATE_4:I = 0x6

.field private static final LOCK_STATE_5:I = 0x7

.field private static final SERVICE_GOOGLE_NWD_SUPPORTED:I = 0x4

.field private static final SERVICE_IS_NOT_SUPPORTED:I = 0x0

.field private static final SERVICE_SAMSUNG_NWD_SUPPORTED:I = 0x2

.field private static final SERVICE_SAMSUNG_SWD_SUPPORTED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ReactiveATCmd"

.field private static mContext:Landroid/content/Context;


# instance fields
.field private mErrorCode:I

.field private rsm:Lcom/samsung/android/service/reactive/ReactiveServiceManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p1, Lcom/android/server/ReactiveATCmd;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/samsung/android/service/reactive/ReactiveServiceManager;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/ReactiveATCmd;->rsm:Lcom/samsung/android/service/reactive/ReactiveServiceManager;

    return-void
.end method

.method private parsingParam(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public getCmd()Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    const-string/jumbo v0, "REACTIVE"

    return-object v0
.end method

.method public processCmd(Ljava/lang/String;)Ljava/lang/String;
    .locals 14

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7}, Ljava/lang/String;-><init>()V

    invoke-direct {p0, p1}, Lcom/android/server/ReactiveATCmd;->parsingParam(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v11, 0x3

    new-array v10, v11, [Ljava/lang/String;

    const-string/jumbo v11, "1,0,0"

    const/4 v12, 0x0

    aput-object v11, v10, v12

    const-string/jumbo v11, "2,0,"

    const/4 v12, 0x1

    aput-object v11, v10, v12

    const-string/jumbo v11, "2,1,"

    const/4 v12, 0x2

    aput-object v11, v10, v12

    if-nez v5, :cond_0

    const-string/jumbo v11, "NG (INVALID_PARAM)"

    return-object v11

    :cond_0
    iget-object v11, p0, Lcom/android/server/ReactiveATCmd;->rsm:Lcom/samsung/android/service/reactive/ReactiveServiceManager;

    if-nez v11, :cond_1

    const-string/jumbo v11, "NG (FAILED CONNECTION)"

    return-object v11

    :cond_1
    iget-object v11, p0, Lcom/android/server/ReactiveATCmd;->rsm:Lcom/samsung/android/service/reactive/ReactiveServiceManager;

    invoke-virtual {v11}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->isConnected()Z

    move-result v11

    if-nez v11, :cond_2

    const-string/jumbo v11, "NG (FAILED CONNECTION)"

    return-object v11

    :cond_2
    :try_start_0
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v12, 0x0

    aget-object v12, v5, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v11, 0x0

    aget-object v11, v10, v11

    const/4 v12, 0x0

    aget-object v12, v10, v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    const/4 v13, 0x0

    invoke-virtual {p1, v13, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_f

    iget-object v11, p0, Lcom/android/server/ReactiveATCmd;->rsm:Lcom/samsung/android/service/reactive/ReactiveServiceManager;

    invoke-virtual {v11}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->getRawServiceValueForAtCommand()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    iget-object v11, p0, Lcom/android/server/ReactiveATCmd;->rsm:Lcom/samsung/android/service/reactive/ReactiveServiceManager;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->getFlag(I)I

    move-result v9

    move v3, v9

    :goto_0
    packed-switch v3, :pswitch_data_1

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "NG("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_1
    return-object v7

    :pswitch_0
    iget-object v11, p0, Lcom/android/server/ReactiveATCmd;->rsm:Lcom/samsung/android/service/reactive/ReactiveServiceManager;

    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->getFlag(I)I

    move-result v4

    move v3, v4

    goto :goto_0

    :pswitch_1
    iget-object v11, p0, Lcom/android/server/ReactiveATCmd;->rsm:Lcom/samsung/android/service/reactive/ReactiveServiceManager;

    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->getFlag(I)I

    move-result v4

    iget-object v11, p0, Lcom/android/server/ReactiveATCmd;->rsm:Lcom/samsung/android/service/reactive/ReactiveServiceManager;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->getFlag(I)I

    move-result v9

    const/4 v11, 0x2

    if-ne v9, v11, :cond_3

    move v3, v9

    goto :goto_0

    :cond_3
    const/4 v11, 0x2

    if-ne v4, v11, :cond_4

    move v3, v4

    goto :goto_0

    :cond_4
    if-nez v4, :cond_5

    if-nez v9, :cond_5

    const/4 v3, 0x0

    goto :goto_0

    :cond_5
    const/4 v11, 0x1

    if-ne v4, v11, :cond_6

    if-nez v9, :cond_6

    const/4 v3, 0x3

    goto :goto_0

    :cond_6
    if-nez v4, :cond_7

    const/4 v11, 0x1

    if-ne v9, v11, :cond_7

    const/4 v3, 0x4

    goto :goto_0

    :cond_7
    const/4 v11, 0x1

    if-ne v4, v11, :cond_8

    const/4 v11, 0x1

    if-ne v9, v11, :cond_8

    const/4 v3, 0x6

    goto :goto_0

    :cond_8
    move v3, v9

    goto :goto_0

    :pswitch_2
    iget-object v11, p0, Lcom/android/server/ReactiveATCmd;->rsm:Lcom/samsung/android/service/reactive/ReactiveServiceManager;

    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->getFlag(I)I

    move-result v4

    iget-object v11, p0, Lcom/android/server/ReactiveATCmd;->rsm:Lcom/samsung/android/service/reactive/ReactiveServiceManager;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->getFlag(I)I

    move-result v9

    const/4 v11, 0x2

    if-ne v9, v11, :cond_9

    move v3, v9

    goto :goto_0

    :cond_9
    const/4 v11, 0x2

    if-ne v4, v11, :cond_a

    move v3, v4

    goto :goto_0

    :cond_a
    if-nez v4, :cond_b

    if-nez v9, :cond_b

    const/4 v3, 0x0

    goto :goto_0

    :cond_b
    const/4 v11, 0x1

    if-ne v4, v11, :cond_c

    if-nez v9, :cond_c

    const/4 v3, 0x3

    goto/16 :goto_0

    :cond_c
    if-nez v4, :cond_d

    const/4 v11, 0x1

    if-ne v9, v11, :cond_d

    const/4 v3, 0x5

    goto/16 :goto_0

    :cond_d
    const/4 v11, 0x1

    if-ne v4, v11, :cond_e

    const/4 v11, 0x1

    if-ne v9, v11, :cond_e

    const/4 v3, 0x7

    goto/16 :goto_0

    :cond_e
    move v3, v9

    goto/16 :goto_0

    :pswitch_3
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "UNLOCK"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_1

    :pswitch_4
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "LOCK"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_1

    :pswitch_5
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "TRIGGERED"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_1

    :pswitch_6
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "LOCK_1"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_1

    :pswitch_7
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "LOCK_2"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_1

    :pswitch_8
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "LOCK_3"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_1

    :pswitch_9
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "LOCK_4"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_1

    :pswitch_a
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "LOCK_5"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_1

    :cond_f
    const/4 v11, 0x1

    aget-object v11, v10, v11

    const/4 v12, 0x1

    aget-object v12, v10, v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    const/4 v13, 0x0

    invoke-virtual {p1, v13, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_11

    const/4 v11, 0x2

    aget-object v11, v5, v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    iget-object v11, p0, Lcom/android/server/ReactiveATCmd;->rsm:Lcom/samsung/android/service/reactive/ReactiveServiceManager;

    invoke-virtual {v11, v1}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->sessionAccept([B)[B

    move-result-object v6

    if-eqz v6, :cond_10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    new-instance v12, Ljava/lang/String;

    invoke-direct {v12, v6}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_1

    :cond_10
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "NG("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/ReactiveATCmd;->rsm:Lcom/samsung/android/service/reactive/ReactiveServiceManager;

    invoke-virtual {v12}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->getErrorCode()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_1

    :cond_11
    const/4 v11, 0x2

    aget-object v11, v10, v11

    const/4 v12, 0x2

    aget-object v12, v10, v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    const/4 v13, 0x0

    invoke-virtual {p1, v13, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_13

    const/4 v11, 0x2

    aget-object v11, v5, v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    iget-object v11, p0, Lcom/android/server/ReactiveATCmd;->rsm:Lcom/samsung/android/service/reactive/ReactiveServiceManager;

    invoke-virtual {v11, v1}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->sessionComplete([B)I

    move-result v8

    if-nez v8, :cond_12

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "OK"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_1

    :cond_12
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "NG("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_1

    :cond_13
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "NG (INVALID_PARAM)"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    goto/16 :goto_1

    :catch_0
    move-exception v2

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "NG (INVALID_PARAM)"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method
