.class public interface abstract Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatMessageParamOrBuilder;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/ssf/message/io/SSMGPB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ChatMessageParamOrBuilder"
.end annotation


# virtual methods
.method public abstract getChatMsg()Ljava/lang/String;
.end method

.method public abstract getMsgId()J
.end method

.method public abstract getMsgTtl()I
.end method

.method public abstract getMsgType()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;
.end method

.method public abstract getSecureChatMsg()Lcom/google/protobuf/ByteString;
.end method

.method public abstract hasChatMsg()Z
.end method

.method public abstract hasMsgId()Z
.end method

.method public abstract hasMsgTtl()Z
.end method

.method public abstract hasMsgType()Z
.end method

.method public abstract hasSecureChatMsg()Z
.end method
