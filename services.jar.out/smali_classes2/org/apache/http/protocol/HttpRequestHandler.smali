.class public interface abstract Lorg/apache/http/protocol/HttpRequestHandler;
.super Ljava/lang/Object;
.source "HttpRequestHandler.java"


# virtual methods
.method public abstract handle(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method
