.class public interface abstract Lorg/apache/http/conn/scheme/LayeredSchemeSocketFactory;
.super Ljava/lang/Object;
.source "LayeredSchemeSocketFactory.java"

# interfaces
.implements Lorg/apache/http/conn/scheme/SchemeSocketFactory;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# virtual methods
.method public abstract createLayeredSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation
.end method
