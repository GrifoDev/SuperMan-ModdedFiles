.class public interface abstract Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream$StreamCallback;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "StreamCallback"
.end annotation


# virtual methods
.method public abstract close()V
.end method

.method public abstract defaultReadObject()V
.end method

.method public abstract readFieldsFromStream()Ljava/util/Map;
.end method

.method public abstract readFromStream()Ljava/lang/Object;
.end method

.method public abstract registerValidation(Ljava/io/ObjectInputValidation;I)V
.end method
