.class public interface abstract Lcom/yulore/android/common/http/NetUtils$AsyncHttpResponseHandler;
.super Ljava/lang/Object;
.source "NetUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yulore/android/common/http/NetUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AsyncHttpResponseHandler"
.end annotation


# virtual methods
.method public abstract onSuccess(Ljava/lang/String;)V
.end method

.method public abstract processHeaders([Lorg/apache/http/Header;)V
.end method
