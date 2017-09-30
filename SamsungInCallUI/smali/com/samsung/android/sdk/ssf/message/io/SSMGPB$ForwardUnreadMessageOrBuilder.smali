.class public interface abstract Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardUnreadMessageOrBuilder;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/ssf/message/io/SSMGPB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ForwardUnreadMessageOrBuilder"
.end annotation


# virtual methods
.method public abstract getDeviceId()J
.end method

.method public abstract getInboxEntries(I)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;
.end method

.method public abstract getInboxEntriesCount()I
.end method

.method public abstract getInboxEntriesList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getIsActiveForward()Z
.end method

.method public abstract getNextPaginationKey()Ljava/lang/String;
.end method

.method public abstract getRequestId()J
.end method

.method public abstract getUserId()J
.end method

.method public abstract hasDeviceId()Z
.end method

.method public abstract hasIsActiveForward()Z
.end method

.method public abstract hasNextPaginationKey()Z
.end method

.method public abstract hasRequestId()Z
.end method

.method public abstract hasUserId()Z
.end method
