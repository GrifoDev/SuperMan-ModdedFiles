.class public interface abstract Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatReplyOrBuilder;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/ssf/message/io/SSMGPB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ChatReplyOrBuilder"
.end annotation


# virtual methods
.method public abstract getChatroomId()J
.end method

.method public abstract getDeviceId()J
.end method

.method public abstract getProcessedMessageEntries(I)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProcessedMessageEntry;
.end method

.method public abstract getProcessedMessageEntriesCount()I
.end method

.method public abstract getProcessedMessageEntriesList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProcessedMessageEntry;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRequestId()J
.end method

.method public abstract getResult()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$Result;
.end method

.method public abstract getUserId()J
.end method

.method public abstract hasChatroomId()Z
.end method

.method public abstract hasDeviceId()Z
.end method

.method public abstract hasRequestId()Z
.end method

.method public abstract hasResult()Z
.end method

.method public abstract hasUserId()Z
.end method
