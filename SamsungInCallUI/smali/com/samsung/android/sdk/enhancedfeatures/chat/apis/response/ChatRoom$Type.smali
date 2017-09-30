.class public final enum Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Type;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Type;

.field public static final enum GROUP:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Type;

.field public static final enum SINGLE:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Type;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Type;

    const-string v1, "SINGLE"

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Type;->SINGLE:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Type;

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Type;

    const-string v1, "GROUP"

    invoke-direct {v0, v1, v3, v3}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Type;->GROUP:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Type;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Type;

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Type;->SINGLE:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Type;->GROUP:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Type;

    aput-object v1, v0, v3

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Type;->$VALUES:[Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Type;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Type;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Type;->SINGLE:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Type;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Type;->GROUP:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Type;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Type;
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Type;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Type;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Type;->$VALUES:[Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Type;

    invoke-virtual {v0}, [Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Type;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Type;->value:I

    return v0
.end method
