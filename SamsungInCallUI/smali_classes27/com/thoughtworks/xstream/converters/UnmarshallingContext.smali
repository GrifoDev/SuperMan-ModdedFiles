.class public interface abstract Lcom/thoughtworks/xstream/converters/UnmarshallingContext;
.super Ljava/lang/Object;
.source "UnmarshallingContext.java"

# interfaces
.implements Lcom/thoughtworks/xstream/converters/DataHolder;


# virtual methods
.method public abstract addCompletionCallback(Ljava/lang/Runnable;I)V
.end method

.method public abstract convertAnother(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
.end method

.method public abstract convertAnother(Ljava/lang/Object;Ljava/lang/Class;Lcom/thoughtworks/xstream/converters/Converter;)Ljava/lang/Object;
.end method

.method public abstract currentObject()Ljava/lang/Object;
.end method

.method public abstract getRequiredType()Ljava/lang/Class;
.end method
