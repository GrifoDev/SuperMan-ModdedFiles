.class public Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Member;,
        Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Type;
    }
.end annotation


# instance fields
.field private msgRoomId:J

.field private msgRoomMemberList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Member;",
            ">;"
        }
    .end annotation
.end field

.field private msgRoomTitle:Ljava/lang/String;

.field private msgRoomType:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Type;

.field private msgTtl:I


# direct methods
.method public constructor <init>(JLcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Type;Ljava/util/ArrayList;Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Type;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Member;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom;->msgRoomId:J

    iput-object p3, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom;->msgRoomType:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Type;

    iput-object p4, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom;->msgRoomMemberList:Ljava/util/ArrayList;

    iput-object p5, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom;->msgRoomTitle:Ljava/lang/String;

    iput p6, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom;->msgTtl:I

    return-void
.end method


# virtual methods
.method public getMsgRoomId()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom;->msgRoomId:J

    return-wide v0
.end method

.method public getMsgRoomMemberList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Member;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom;->msgRoomMemberList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getMsgRoomTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom;->msgRoomTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getMsgRoomType()Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Type;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom;->msgRoomType:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom$Type;

    return-object v0
.end method

.method public getMsgTtl()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoom;->msgTtl:I

    return v0
.end method
