.class synthetic Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$1;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/ssf/message/io/MessageRoom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$samsung$android$sdk$ssf$message$io$SSMGPB$ChatType:[I

.field static final synthetic $SwitchMap$com$samsung$android$sdk$ssf$message$io$SSMGPB$NotiType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;->values()[Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$1;->$SwitchMap$com$samsung$android$sdk$ssf$message$io$SSMGPB$NotiType:[I

    :try_start_0
    sget-object v0, Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$1;->$SwitchMap$com$samsung$android$sdk$ssf$message$io$SSMGPB$NotiType:[I

    sget-object v1, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;->ENTER:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_b

    :goto_0
    :try_start_1
    sget-object v0, Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$1;->$SwitchMap$com$samsung$android$sdk$ssf$message$io$SSMGPB$NotiType:[I

    sget-object v1, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;->LEAVE:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_a

    :goto_1
    :try_start_2
    sget-object v0, Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$1;->$SwitchMap$com$samsung$android$sdk$ssf$message$io$SSMGPB$NotiType:[I

    sget-object v1, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;->ENABLED:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_9

    :goto_2
    :try_start_3
    sget-object v0, Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$1;->$SwitchMap$com$samsung$android$sdk$ssf$message$io$SSMGPB$NotiType:[I

    sget-object v1, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;->DISABLED:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_8

    :goto_3
    :try_start_4
    sget-object v0, Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$1;->$SwitchMap$com$samsung$android$sdk$ssf$message$io$SSMGPB$NotiType:[I

    sget-object v1, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;->DEREGISTERED:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_7

    :goto_4
    :try_start_5
    sget-object v0, Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$1;->$SwitchMap$com$samsung$android$sdk$ssf$message$io$SSMGPB$NotiType:[I

    sget-object v1, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;->OWNER_CHANGED:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_6

    :goto_5
    :try_start_6
    sget-object v0, Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$1;->$SwitchMap$com$samsung$android$sdk$ssf$message$io$SSMGPB$NotiType:[I

    sget-object v1, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;->OWNER_CHANGED_BY_SYSTEM:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_5

    :goto_6
    :try_start_7
    sget-object v0, Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$1;->$SwitchMap$com$samsung$android$sdk$ssf$message$io$SSMGPB$NotiType:[I

    sget-object v1, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;->EXPELLED:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_4

    :goto_7
    :try_start_8
    sget-object v0, Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$1;->$SwitchMap$com$samsung$android$sdk$ssf$message$io$SSMGPB$NotiType:[I

    sget-object v1, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;->CHATROOM_MEMBER:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_3

    :goto_8
    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;->values()[Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$1;->$SwitchMap$com$samsung$android$sdk$ssf$message$io$SSMGPB$ChatType:[I

    :try_start_9
    sget-object v0, Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$1;->$SwitchMap$com$samsung$android$sdk$ssf$message$io$SSMGPB$ChatType:[I

    sget-object v1, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;->SINGLE:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_2

    :goto_9
    :try_start_a
    sget-object v0, Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$1;->$SwitchMap$com$samsung$android$sdk$ssf$message$io$SSMGPB$ChatType:[I

    sget-object v1, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;->GROUP:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_1

    :goto_a
    :try_start_b
    sget-object v0, Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$1;->$SwitchMap$com$samsung$android$sdk$ssf$message$io$SSMGPB$ChatType:[I

    sget-object v1, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;->MONO_GROUP:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_0

    :goto_b
    return-void

    :catch_0
    move-exception v0

    goto :goto_b

    :catch_1
    move-exception v0

    goto :goto_a

    :catch_2
    move-exception v0

    goto :goto_9

    :catch_3
    move-exception v0

    goto :goto_8

    :catch_4
    move-exception v0

    goto :goto_7

    :catch_5
    move-exception v0

    goto :goto_6

    :catch_6
    move-exception v0

    goto :goto_5

    :catch_7
    move-exception v0

    goto :goto_4

    :catch_8
    move-exception v0

    goto :goto_3

    :catch_9
    move-exception v0

    goto/16 :goto_2

    :catch_a
    move-exception v0

    goto/16 :goto_1

    :catch_b
    move-exception v0

    goto/16 :goto_0
.end method
