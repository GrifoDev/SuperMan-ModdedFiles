.class public interface abstract Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;
.super Ljava/lang/Object;
.source "HierarchicalStreamReader.java"

# interfaces
.implements Lcom/thoughtworks/xstream/converters/ErrorReporter;


# virtual methods
.method public abstract appendErrors(Lcom/thoughtworks/xstream/converters/ErrorWriter;)V
.end method

.method public abstract close()V
.end method

.method public abstract getAttribute(I)Ljava/lang/String;
.end method

.method public abstract getAttribute(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getAttributeCount()I
.end method

.method public abstract getAttributeName(I)Ljava/lang/String;
.end method

.method public abstract getAttributeNames()Ljava/util/Iterator;
.end method

.method public abstract getNodeName()Ljava/lang/String;
.end method

.method public abstract getValue()Ljava/lang/String;
.end method

.method public abstract hasMoreChildren()Z
.end method

.method public abstract moveDown()V
.end method

.method public abstract moveUp()V
.end method

.method public abstract underlyingReader()Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;
.end method
