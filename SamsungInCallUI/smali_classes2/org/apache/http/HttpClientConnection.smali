.class public interface abstract Lorg/apache/http/HttpClientConnection;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/http/HttpConnection;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# virtual methods
.method public abstract flush()V
.end method

.method public abstract isResponseAvailable(I)Z
.end method

.method public abstract receiveResponseEntity(Lorg/apache/http/HttpResponse;)V
.end method

.method public abstract receiveResponseHeader()Lorg/apache/http/HttpResponse;
.end method

.method public abstract sendRequestEntity(Lorg/apache/http/HttpEntityEnclosingRequest;)V
.end method

.method public abstract sendRequestHeader(Lorg/apache/http/HttpRequest;)V
.end method
