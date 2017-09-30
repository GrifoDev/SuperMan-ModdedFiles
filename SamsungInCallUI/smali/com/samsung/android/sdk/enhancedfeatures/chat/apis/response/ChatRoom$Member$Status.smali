.class public final enum Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Member$Status;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Member;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Member$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Member$Status;

.field public static final enum DEREGISTERED:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Member$Status;

.field public static final enum DISABLED:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Member$Status;

.field public static final enum ENABLED:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Member$Status;

.field public static final enum ENTERED:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Member$Status;

.field public static final enum EXPELLED:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Member$Status;

.field public static final enum LEFT:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Member$Status;

.field public static final enum MEMBER:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Member$Status;

.field public static final enum OWNER:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Member$Status;

.field public static final enum OWNER_BY_SYSTEM:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Member$Status;


# instance fields
.field private final value:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Member$Status;

    const-string v1, "ENTERED"

    sget-object v2, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;->ENTER:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;

    invoke-direct {v0, v1, v4, v2}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Member$Status;-><init>(Ljava/lang/String;ILcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;)V

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Member$Status;->ENTERED:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Member$Status;

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Member$Status;

    const-string v1, "LEFT"

    sget-object v2, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;->LEAVE:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;

    invoke-direct {v0, v1, v5, v2}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Member$Status;-><init>(Ljava/lang/String;ILcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;)V

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Member$Status;->LEFT:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Member$Status;

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Member$Status;

    const-string v1, "ENABLED"

    sget-object v2, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;->ENABLED:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;

    invoke-direct {v0, v1, v6, v2}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Member$Status;-><init>(Ljava/lang/String;ILcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;)V

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Member$Status;->ENABLED:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Member$Status;

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Member$Status;

    const-string v1, "DISABLED"

    sget-object v2, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;->DISABLED:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;

    invoke-direct {v0, v1, v7, v2}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Member$Status;-><init>(Ljava/lang/String;ILcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;)V

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Member$Status;->DISABLED:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Member$Status;

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Member$Status;

    const-string v1, "DEREGISTERED"

    sget-object v2, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;->DEREGISTERED:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;

    invoke-direct {v0, v1, v8, v2}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Member$Status;-><init>(Ljava/lang/String;ILcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;)V

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Member$Status;->DEREGISTERED:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Member$Status;

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Member$Status;

    const-string v1, "OWNER"

    const/4 v2, 0x5

    sget-object v3, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;->OWNER_CHANGED:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Member$Status;-><init>(Ljava/lang/String;ILcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;)V

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Member$Status;->OWNER:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Member$Status;

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Member$Status;

    const-string v1, "OWNER_BY_SYSTEM"

    const/4 v2, 0x6

    sget-object v3, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;->OWNER_CHANGED_BY_SYSTEM:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Member$Status;-><init>(Ljava/lang/String;ILcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;)V

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Member$Status;->OWNER_BY_SYSTEM:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Member$Status;

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Member$Status;

    const-string v1, "EXPELLED"

    const/4 v2, 0x7

    sget-object v3, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;->EXPELLED:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Member$Status;-><init>(Ljava/lang/String;ILcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;)V

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Member$Status;->EXPELLED:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Member$Status;

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Member$Status;

    const-string v1, "MEMBER"

    const/16 v2, 0x8

    sget-object v3, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;->CHATROOM_MEMBER:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Member$Status;-><init>(Ljava/lang/String;ILcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;)V

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Member$Status;->MEMBER:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Member$Status;

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Member$Status;

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Member$Status;->ENTERED:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Member$Status;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Member$Status;->LEFT:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Member$Status;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Member$Status;->ENABLED:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Member$Status;

    aput-object v1, v0, v6

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Member$Status;->DISABLED:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Member$Status;

    aput-object v1, v0, v7

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Member$Status;->DEREGISTERED:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Member$Status;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Member$Status;->OWNER:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Member$Status;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Member$Status;->OWNER_BY_SYSTEM:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Member$Status;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Member$Status;->EXPELLED:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Member$Status;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Member$Status;->MEMBER:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Member$Status;

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Member$Status;->$VALUES:[Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Member$Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Member$Status;->value:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;

    return-void
.end method

.method public static valueOf(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;)Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Member$Status;
    .locals 2

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$1;->$SwitchMap$com$samsung$android$sdk$ssf$message$io$SSMGPB$NotiType:[I

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Member$Status;->ENTERED:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Member$Status;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Member$Status;->LEFT:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Member$Status;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Member$Status;->ENABLED:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Member$Status;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Member$Status;->DISABLED:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Member$Status;

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Member$Status;->DEREGISTERED:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Member$Status;

    goto :goto_0

    :pswitch_5
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Member$Status;->OWNER:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Member$Status;

    goto :goto_0

    :pswitch_6
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Member$Status;->OWNER_BY_SYSTEM:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Member$Status;

    goto :goto_0

    :pswitch_7
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Member$Status;->EXPELLED:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Member$Status;

    goto :goto_0

    :pswitch_8
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Member$Status;->MEMBER:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Member$Status;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Member$Status;
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Member$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Member$Status;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Member$Status;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Member$Status;->$VALUES:[Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Member$Status;

    invoke-virtual {v0}, [Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Member$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Member$Status;

    return-object v0
.end method


# virtual methods
.method public final getValue()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Member$Status;->value:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;

    return-object v0
.end method
