.class public final enum Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/ssf/message/io/SSMGPB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MsgType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;

.field public static final enum CUSTOM:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;

.field public static final CUSTOM_VALUE:I = 0x2

.field public static final enum DELIVERY_ACK:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;

.field public static final DELIVERY_ACK_VALUE:I = 0x6

.field public static final enum MEDIA:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;

.field public static final MEDIA_VALUE:I = 0x1

.field public static final enum NOTI:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;

.field public static final NOTI_VALUE:I = 0x4

.field public static final enum READ_ACK:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;

.field public static final READ_ACK_VALUE:I = 0x5

.field public static final enum RECALL:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;

.field public static final RECALL_VALUE:I = 0x3

.field public static final enum TEXT:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;

.field public static final TEXT_VALUE:I = 0x0

.field public static final enum UNSEAL:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;

.field public static final UNSEAL_VALUE:I = 0xa

.field public static final enum VOIP_CALL_SETUP:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;

.field public static final VOIP_CALL_SETUP_VALUE:I = 0x1e

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-instance v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;

    const-string v1, "TEXT"

    invoke-direct {v0, v1, v5, v5, v5}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;->TEXT:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;

    new-instance v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;

    const-string v1, "MEDIA"

    invoke-direct {v0, v1, v6, v6, v6}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;->MEDIA:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;

    new-instance v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;

    const-string v1, "CUSTOM"

    invoke-direct {v0, v1, v7, v7, v7}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;->CUSTOM:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;

    new-instance v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;

    const-string v1, "RECALL"

    invoke-direct {v0, v1, v8, v8, v8}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;->RECALL:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;

    new-instance v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;

    const-string v1, "NOTI"

    invoke-direct {v0, v1, v9, v9, v9}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;->NOTI:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;

    new-instance v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;

    const-string v1, "READ_ACK"

    const/4 v2, 0x5

    const/4 v3, 0x5

    const/4 v4, 0x5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;->READ_ACK:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;

    new-instance v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;

    const-string v1, "DELIVERY_ACK"

    const/4 v2, 0x6

    const/4 v3, 0x6

    const/4 v4, 0x6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;->DELIVERY_ACK:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;

    new-instance v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;

    const-string v1, "UNSEAL"

    const/4 v2, 0x7

    const/4 v3, 0x7

    const/16 v4, 0xa

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;->UNSEAL:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;

    new-instance v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;

    const-string v1, "VOIP_CALL_SETUP"

    const/16 v2, 0x8

    const/16 v3, 0x8

    const/16 v4, 0x1e

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;->VOIP_CALL_SETUP:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;

    sget-object v1, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;->TEXT:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;->MEDIA:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;->CUSTOM:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;->RECALL:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;->NOTI:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;->READ_ACK:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;->DELIVERY_ACK:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;->UNSEAL:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;->VOIP_CALL_SETUP:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;->$VALUES:[Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;

    new-instance v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType$1;

    invoke-direct {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType$1;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p4, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;->value:I

    return-void
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;
    .locals 1

    sparse-switch p0, :sswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :sswitch_0
    sget-object v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;->TEXT:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;

    goto :goto_0

    :sswitch_1
    sget-object v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;->MEDIA:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;

    goto :goto_0

    :sswitch_2
    sget-object v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;->CUSTOM:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;

    goto :goto_0

    :sswitch_3
    sget-object v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;->RECALL:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;

    goto :goto_0

    :sswitch_4
    sget-object v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;->NOTI:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;

    goto :goto_0

    :sswitch_5
    sget-object v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;->READ_ACK:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;

    goto :goto_0

    :sswitch_6
    sget-object v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;->DELIVERY_ACK:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;

    goto :goto_0

    :sswitch_7
    sget-object v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;->UNSEAL:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;

    goto :goto_0

    :sswitch_8
    sget-object v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;->VOIP_CALL_SETUP:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0xa -> :sswitch_7
        0x1e -> :sswitch_8
    .end sparse-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;->$VALUES:[Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;

    invoke-virtual {v0}, [Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;->value:I

    return v0
.end method
