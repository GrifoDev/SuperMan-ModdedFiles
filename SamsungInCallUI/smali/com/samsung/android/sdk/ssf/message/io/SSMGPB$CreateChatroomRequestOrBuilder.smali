.class public interface abstract Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$CreateChatroomRequestOrBuilder;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/ssf/message/io/SSMGPB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CreateChatroomRequestOrBuilder"
.end annotation


# virtual methods
.method public abstract getChatType()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;
.end method

.method public abstract getChatroomProfileUrl()Ljava/lang/String;
.end method

.method public abstract getChatroomTitle()Ljava/lang/String;
.end method

.method public abstract getCommonKey()Ljava/lang/String;
.end method

.method public abstract getDeviceId()J
.end method

.method public abstract getGroupKeyEntries(I)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GroupKeyEntry;
.end method

.method public abstract getGroupKeyEntriesCount()I
.end method

.method public abstract getGroupKeyEntriesList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$GroupKeyEntry;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getReceivers(I)J
.end method

.method public abstract getReceiversCount()I
.end method

.method public abstract getReceiversList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRequestId()J
.end method

.method public abstract getUserId()J
.end method

.method public abstract hasChatType()Z
.end method

.method public abstract hasChatroomProfileUrl()Z
.end method

.method public abstract hasChatroomTitle()Z
.end method

.method public abstract hasCommonKey()Z
.end method

.method public abstract hasDeviceId()Z
.end method

.method public abstract hasRequestId()Z
.end method

.method public abstract hasUserId()Z
.end method
