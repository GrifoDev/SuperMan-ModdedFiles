.class public interface abstract Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;
.super Ljava/lang/Object;
.source "ReflectionProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider$Visitor;
    }
.end annotation


# virtual methods
.method public abstract fieldDefinedInClass(Ljava/lang/String;Ljava/lang/Class;)Z
.end method

.method public abstract getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
.end method

.method public abstract getFieldOrNull(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
.end method

.method public abstract getFieldType(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Class;
.end method

.method public abstract newInstance(Ljava/lang/Class;)Ljava/lang/Object;
.end method

.method public abstract visitSerializableFields(Ljava/lang/Object;Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider$Visitor;)V
.end method

.method public abstract writeField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V
.end method
