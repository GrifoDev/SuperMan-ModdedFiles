.class public Lcom/samsung/android/sdk/ssf/message/io/MessageRoomResult;
.super Lcom/samsung/android/sdk/ssf/message/io/MessageResult;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/ssf/message/io/MessageRoomResult$DuplicatedMessageUsers;
    }
.end annotation


# instance fields
.field private duplicatedUsersList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/ssf/message/io/MessageRoomResult$DuplicatedMessageUsers;",
            ">;"
        }
    .end annotation
.end field

.field private invalidUserList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/ssf/message/io/User;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/ssf/message/io/User;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/ssf/message/io/MessageRoomResult$DuplicatedMessageUsers;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/ssf/message/io/MessageResult;-><init>(ILjava/lang/String;)V

    iput-object p3, p0, Lcom/samsung/android/sdk/ssf/message/io/MessageRoomResult;->invalidUserList:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/samsung/android/sdk/ssf/message/io/MessageRoomResult;->duplicatedUsersList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getDuplicatedUsersList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/ssf/message/io/MessageRoomResult$DuplicatedMessageUsers;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/MessageRoomResult;->duplicatedUsersList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getInvalidUserList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/ssf/message/io/User;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/MessageRoomResult;->invalidUserList:Ljava/util/ArrayList;

    return-object v0
.end method
