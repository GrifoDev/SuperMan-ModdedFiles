.class public interface abstract Lcom/thoughtworks/xstream/converters/javabean/JavaBeanProvider;
.super Ljava/lang/Object;
.source "JavaBeanProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/thoughtworks/xstream/converters/javabean/JavaBeanProvider$Visitor;
    }
.end annotation


# virtual methods
.method public abstract canInstantiate(Ljava/lang/Class;)Z
.end method

.method public abstract getPropertyType(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Class;
.end method

.method public abstract newInstance(Ljava/lang/Class;)Ljava/lang/Object;
.end method

.method public abstract propertyDefinedInClass(Ljava/lang/String;Ljava/lang/Class;)Z
.end method

.method public abstract visitSerializableProperties(Ljava/lang/Object;Lcom/thoughtworks/xstream/converters/javabean/JavaBeanProvider$Visitor;)V
.end method

.method public abstract writeProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
.end method
