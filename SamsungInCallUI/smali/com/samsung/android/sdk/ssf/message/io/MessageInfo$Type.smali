.class public final enum Lcom/samsung/android/sdk/ssf/message/io/MessageInfo$Type;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/ssf/message/io/MessageInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/sdk/ssf/message/io/MessageInfo$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/sdk/ssf/message/io/MessageInfo$Type;

.field public static final enum CUSTOM:Lcom/samsung/android/sdk/ssf/message/io/MessageInfo$Type;

.field public static final enum MEDIA:Lcom/samsung/android/sdk/ssf/message/io/MessageInfo$Type;

.field public static final enum TEXT:Lcom/samsung/android/sdk/ssf/message/io/MessageInfo$Type;


# instance fields
.field private final value:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/samsung/android/sdk/ssf/message/io/MessageInfo$Type;

    const-string v1, "TEXT"

    sget-object v2, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;->TEXT:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/android/sdk/ssf/message/io/MessageInfo$Type;-><init>(Ljava/lang/String;ILcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;)V

    sput-object v0, Lcom/samsung/android/sdk/ssf/message/io/MessageInfo$Type;->TEXT:Lcom/samsung/android/sdk/ssf/message/io/MessageInfo$Type;

    new-instance v0, Lcom/samsung/android/sdk/ssf/message/io/MessageInfo$Type;

    const-string v1, "MEDIA"

    sget-object v2, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;->MEDIA:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;

    invoke-direct {v0, v1, v4, v2}, Lcom/samsung/android/sdk/ssf/message/io/MessageInfo$Type;-><init>(Ljava/lang/String;ILcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;)V

    sput-object v0, Lcom/samsung/android/sdk/ssf/message/io/MessageInfo$Type;->MEDIA:Lcom/samsung/android/sdk/ssf/message/io/MessageInfo$Type;

    new-instance v0, Lcom/samsung/android/sdk/ssf/message/io/MessageInfo$Type;

    const-string v1, "CUSTOM"

    sget-object v2, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;->CUSTOM:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;

    invoke-direct {v0, v1, v5, v2}, Lcom/samsung/android/sdk/ssf/message/io/MessageInfo$Type;-><init>(Ljava/lang/String;ILcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;)V

    sput-object v0, Lcom/samsung/android/sdk/ssf/message/io/MessageInfo$Type;->CUSTOM:Lcom/samsung/android/sdk/ssf/message/io/MessageInfo$Type;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/samsung/android/sdk/ssf/message/io/MessageInfo$Type;

    sget-object v1, Lcom/samsung/android/sdk/ssf/message/io/MessageInfo$Type;->TEXT:Lcom/samsung/android/sdk/ssf/message/io/MessageInfo$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/sdk/ssf/message/io/MessageInfo$Type;->MEDIA:Lcom/samsung/android/sdk/ssf/message/io/MessageInfo$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/sdk/ssf/message/io/MessageInfo$Type;->CUSTOM:Lcom/samsung/android/sdk/ssf/message/io/MessageInfo$Type;

    aput-object v1, v0, v5

    sput-object v0, Lcom/samsung/android/sdk/ssf/message/io/MessageInfo$Type;->$VALUES:[Lcom/samsung/android/sdk/ssf/message/io/MessageInfo$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/samsung/android/sdk/ssf/message/io/MessageInfo$Type;->value:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;

    return-void
.end method

.method public static valueOf(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;)Lcom/samsung/android/sdk/ssf/message/io/MessageInfo$Type;
    .locals 2

    sget-object v0, Lcom/samsung/android/sdk/ssf/message/io/MessageInfo$1;->$SwitchMap$com$samsung$android$sdk$ssf$message$io$SSMGPB$MsgType:[I

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/samsung/android/sdk/ssf/message/io/MessageInfo$Type;->TEXT:Lcom/samsung/android/sdk/ssf/message/io/MessageInfo$Type;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/samsung/android/sdk/ssf/message/io/MessageInfo$Type;->MEDIA:Lcom/samsung/android/sdk/ssf/message/io/MessageInfo$Type;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/samsung/android/sdk/ssf/message/io/MessageInfo$Type;->CUSTOM:Lcom/samsung/android/sdk/ssf/message/io/MessageInfo$Type;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/message/io/MessageInfo$Type;
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/ssf/message/io/MessageInfo$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/message/io/MessageInfo$Type;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/sdk/ssf/message/io/MessageInfo$Type;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/ssf/message/io/MessageInfo$Type;->$VALUES:[Lcom/samsung/android/sdk/ssf/message/io/MessageInfo$Type;

    invoke-virtual {v0}, [Lcom/samsung/android/sdk/ssf/message/io/MessageInfo$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/ssf/message/io/MessageInfo$Type;

    return-object v0
.end method


# virtual methods
.method public final getValue()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/MessageInfo$Type;->value:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;

    return-object v0
.end method
