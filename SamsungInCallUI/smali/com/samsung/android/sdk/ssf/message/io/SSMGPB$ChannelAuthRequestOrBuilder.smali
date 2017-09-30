.class public interface abstract Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChannelAuthRequestOrBuilder;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/ssf/message/io/SSMGPB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ChannelAuthRequestOrBuilder"
.end annotation


# virtual methods
.method public abstract getAccessToken()Ljava/lang/String;
.end method

.method public abstract getAppId()Ljava/lang/String;
.end method

.method public abstract getDeviceId()J
.end method

.method public abstract getIMEI()Ljava/lang/String;
.end method

.method public abstract getProxyOptions(I)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProxyOption;
.end method

.method public abstract getProxyOptionsCount()I
.end method

.method public abstract getProxyOptionsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProxyOption;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRequestId()J
.end method

.method public abstract getUserId()J
.end method

.method public abstract hasAccessToken()Z
.end method

.method public abstract hasAppId()Z
.end method

.method public abstract hasDeviceId()Z
.end method

.method public abstract hasIMEI()Z
.end method

.method public abstract hasRequestId()Z
.end method

.method public abstract hasUserId()Z
.end method
