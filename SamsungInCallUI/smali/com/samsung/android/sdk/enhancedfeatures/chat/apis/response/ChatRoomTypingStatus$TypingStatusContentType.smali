.class public final enum Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoomTypingStatus$TypingStatusContentType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoomTypingStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TypingStatusContentType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoomTypingStatus$TypingStatusContentType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoomTypingStatus$TypingStatusContentType;

.field public static final enum AUDIO:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoomTypingStatus$TypingStatusContentType;

.field public static final enum IMAGE:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoomTypingStatus$TypingStatusContentType;

.field public static final enum TEXT:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoomTypingStatus$TypingStatusContentType;

.field public static final enum VIDEO:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoomTypingStatus$TypingStatusContentType;


# instance fields
.field private value:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$IsTypingContentType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoomTypingStatus$TypingStatusContentType;

    const-string v1, "TEXT"

    sget-object v2, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$IsTypingContentType;->CONTENT_TEXT:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$IsTypingContentType;

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoomTypingStatus$TypingStatusContentType;-><init>(Ljava/lang/String;ILcom/samsung/android/sdk/ssf/message/io/SSMGPB$IsTypingContentType;)V

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoomTypingStatus$TypingStatusContentType;->TEXT:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoomTypingStatus$TypingStatusContentType;

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoomTypingStatus$TypingStatusContentType;

    const-string v1, "IMAGE"

    sget-object v2, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$IsTypingContentType;->CONTENT_IMAGE:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$IsTypingContentType;

    invoke-direct {v0, v1, v4, v2}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoomTypingStatus$TypingStatusContentType;-><init>(Ljava/lang/String;ILcom/samsung/android/sdk/ssf/message/io/SSMGPB$IsTypingContentType;)V

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoomTypingStatus$TypingStatusContentType;->IMAGE:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoomTypingStatus$TypingStatusContentType;

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoomTypingStatus$TypingStatusContentType;

    const-string v1, "VIDEO"

    sget-object v2, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$IsTypingContentType;->CONTENT_VIDEO:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$IsTypingContentType;

    invoke-direct {v0, v1, v5, v2}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoomTypingStatus$TypingStatusContentType;-><init>(Ljava/lang/String;ILcom/samsung/android/sdk/ssf/message/io/SSMGPB$IsTypingContentType;)V

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoomTypingStatus$TypingStatusContentType;->VIDEO:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoomTypingStatus$TypingStatusContentType;

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoomTypingStatus$TypingStatusContentType;

    const-string v1, "AUDIO"

    sget-object v2, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$IsTypingContentType;->CONTENT_AUDIO:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$IsTypingContentType;

    invoke-direct {v0, v1, v6, v2}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoomTypingStatus$TypingStatusContentType;-><init>(Ljava/lang/String;ILcom/samsung/android/sdk/ssf/message/io/SSMGPB$IsTypingContentType;)V

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoomTypingStatus$TypingStatusContentType;->AUDIO:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoomTypingStatus$TypingStatusContentType;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoomTypingStatus$TypingStatusContentType;

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoomTypingStatus$TypingStatusContentType;->TEXT:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoomTypingStatus$TypingStatusContentType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoomTypingStatus$TypingStatusContentType;->IMAGE:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoomTypingStatus$TypingStatusContentType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoomTypingStatus$TypingStatusContentType;->VIDEO:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoomTypingStatus$TypingStatusContentType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoomTypingStatus$TypingStatusContentType;->AUDIO:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoomTypingStatus$TypingStatusContentType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoomTypingStatus$TypingStatusContentType;->$VALUES:[Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoomTypingStatus$TypingStatusContentType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/samsung/android/sdk/ssf/message/io/SSMGPB$IsTypingContentType;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$IsTypingContentType;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoomTypingStatus$TypingStatusContentType;->value:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$IsTypingContentType;

    return-void
.end method

.method public static valueOf(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$IsTypingContentType;)Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoomTypingStatus$TypingStatusContentType;
    .locals 2

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoomTypingStatus$1;->$SwitchMap$com$samsung$android$sdk$ssf$message$io$SSMGPB$IsTypingContentType:[I

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$IsTypingContentType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoomTypingStatus$TypingStatusContentType;->TEXT:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoomTypingStatus$TypingStatusContentType;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoomTypingStatus$TypingStatusContentType;->IMAGE:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoomTypingStatus$TypingStatusContentType;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoomTypingStatus$TypingStatusContentType;->VIDEO:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoomTypingStatus$TypingStatusContentType;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoomTypingStatus$TypingStatusContentType;->AUDIO:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoomTypingStatus$TypingStatusContentType;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoomTypingStatus$TypingStatusContentType;
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoomTypingStatus$TypingStatusContentType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoomTypingStatus$TypingStatusContentType;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoomTypingStatus$TypingStatusContentType;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoomTypingStatus$TypingStatusContentType;->$VALUES:[Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoomTypingStatus$TypingStatusContentType;

    invoke-virtual {v0}, [Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoomTypingStatus$TypingStatusContentType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoomTypingStatus$TypingStatusContentType;

    return-object v0
.end method


# virtual methods
.method public final getValue()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$IsTypingContentType;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoomTypingStatus$TypingStatusContentType;->value:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$IsTypingContentType;

    return-object v0
.end method
