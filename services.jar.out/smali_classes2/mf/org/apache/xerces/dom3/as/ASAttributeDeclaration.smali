.class public interface abstract Lmf/org/apache/xerces/dom3/as/ASAttributeDeclaration;
.super Ljava/lang/Object;
.source "ASAttributeDeclaration.java"

# interfaces
.implements Lmf/org/apache/xerces/dom3/as/ASObject;


# static fields
.field public static final VALUE_DEFAULT:S = 0x1s

.field public static final VALUE_FIXED:S = 0x2s

.field public static final VALUE_NONE:S


# virtual methods
.method public abstract getDataType()Lmf/org/apache/xerces/dom3/as/ASDataType;
.end method

.method public abstract getDataValue()Ljava/lang/String;
.end method

.method public abstract getDefaultType()S
.end method

.method public abstract getEnumAttr()Ljava/lang/String;
.end method

.method public abstract getOwnerElements()Lmf/org/apache/xerces/dom3/as/ASObjectList;
.end method

.method public abstract setDataType(Lmf/org/apache/xerces/dom3/as/ASDataType;)V
.end method

.method public abstract setDataValue(Ljava/lang/String;)V
.end method

.method public abstract setDefaultType(S)V
.end method

.method public abstract setEnumAttr(Ljava/lang/String;)V
.end method

.method public abstract setOwnerElements(Lmf/org/apache/xerces/dom3/as/ASObjectList;)V
.end method
