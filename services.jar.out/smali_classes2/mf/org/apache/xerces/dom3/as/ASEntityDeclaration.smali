.class public interface abstract Lmf/org/apache/xerces/dom3/as/ASEntityDeclaration;
.super Ljava/lang/Object;
.source "ASEntityDeclaration.java"

# interfaces
.implements Lmf/org/apache/xerces/dom3/as/ASObject;


# static fields
.field public static final EXTERNAL_ENTITY:S = 0x2s

.field public static final INTERNAL_ENTITY:S = 0x1s


# virtual methods
.method public abstract getEntityType()S
.end method

.method public abstract getEntityValue()Ljava/lang/String;
.end method

.method public abstract getPublicId()Ljava/lang/String;
.end method

.method public abstract getSystemId()Ljava/lang/String;
.end method

.method public abstract setEntityType(S)V
.end method

.method public abstract setEntityValue(Ljava/lang/String;)V
.end method

.method public abstract setPublicId(Ljava/lang/String;)V
.end method

.method public abstract setSystemId(Ljava/lang/String;)V
.end method
