.class public interface abstract Lorg/apache/http/HttpServerConnection;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/http/HttpConnection;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# virtual methods
.method public abstract flush()V
.end method

.method public abstract receiveRequestEntity(Lorg/apache/http/HttpEntityEnclosingRequest;)V
.end method

.method public abstract receiveRequestHeader()Lorg/apache/http/HttpRequest;
.end method

.method public abstract sendResponseEntity(Lorg/apache/http/HttpResponse;)V
.end method

.method public abstract sendResponseHeader(Lorg/apache/http/HttpResponse;)V
.end method
