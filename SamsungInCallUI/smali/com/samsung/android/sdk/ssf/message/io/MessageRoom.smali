.class public Lcom/samsung/android/sdk/ssf/message/io/MessageRoom;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member;,
        Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Type;
    }
.end annotation


# instance fields
.field private msgRoomId:J

.field private msgRoomMemberList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member;",
            ">;"
        }
    .end annotation
.end field

.field private msgRoomTitle:Ljava/lang/String;

.field private msgRoomType:Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Type;

.field private msgTtl:I


# direct methods
.method public constructor <init>(JLcom/samsung/android/sdk/ssf/message/io/MessageRoom$Type;Ljava/util/ArrayList;Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Type;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/samsung/android/sdk/ssf/message/io/MessageRoom;->msgRoomId:J

    iput-object p3, p0, Lcom/samsung/android/sdk/ssf/message/io/MessageRoom;->msgRoomType:Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Type;

    iput-object p4, p0, Lcom/samsung/android/sdk/ssf/message/io/MessageRoom;->msgRoomMemberList:Ljava/util/ArrayList;

    iput-object p5, p0, Lcom/samsung/android/sdk/ssf/message/io/MessageRoom;->msgRoomTitle:Ljava/lang/String;

    iput p6, p0, Lcom/samsung/android/sdk/ssf/message/io/MessageRoom;->msgTtl:I

    return-void
.end method


# virtual methods
.method public getMsgRoomId()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/MessageRoom;->msgRoomId:J

    return-wide v0
.end method

.method public getMsgRoomMemberList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/MessageRoom;->msgRoomMemberList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getMsgRoomTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/MessageRoom;->msgRoomTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getMsgRoomType()Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Type;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/MessageRoom;->msgRoomType:Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Type;

    return-object v0
.end method

.method public getMsgTtl()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/MessageRoom;->msgTtl:I

    return v0
.end method
