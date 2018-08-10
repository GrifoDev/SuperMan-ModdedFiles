.class public Lorg/apache/http/client/entity/DeflateDecompressingEntity;
.super Lorg/apache/http/client/entity/DecompressingEntity;
.source "DeflateDecompressingEntity.java"


# direct methods
.method public constructor <init>(Lorg/apache/http/HttpEntity;)V
    .locals 1

    new-instance v0, Lorg/apache/http/client/entity/DeflateDecompressingEntity$1;

    invoke-direct {v0}, Lorg/apache/http/client/entity/DeflateDecompressingEntity$1;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/apache/http/client/entity/DecompressingEntity;-><init>(Lorg/apache/http/HttpEntity;Lorg/apache/http/client/entity/InputStreamFactory;)V

    return-void
.end method
