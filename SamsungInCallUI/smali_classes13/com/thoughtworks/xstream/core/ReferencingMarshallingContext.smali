.class public interface abstract Lcom/thoughtworks/xstream/core/ReferencingMarshallingContext;
.super Ljava/lang/Object;
.source "ReferencingMarshallingContext.java"

# interfaces
.implements Lcom/thoughtworks/xstream/converters/MarshallingContext;


# virtual methods
.method public abstract currentPath()Lcom/thoughtworks/xstream/io/path/Path;
.end method

.method public abstract lookupReference(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract registerImplicit(Ljava/lang/Object;)V
.end method

.method public abstract replace(Ljava/lang/Object;Ljava/lang/Object;)V
.end method
