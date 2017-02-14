.class public interface abstract Lmf/org/apache/xerces/xs/datatypes/ByteList;
.super Ljava/lang/Object;
.source "ByteList.java"

# interfaces
.implements Ljava/util/List;


# virtual methods
.method public abstract contains(B)Z
.end method

.method public abstract getLength()I
.end method

.method public abstract item(I)B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xs/XSException;
        }
    .end annotation
.end method

.method public abstract toByteArray()[B
.end method
