.class public interface abstract Lmf/org/apache/xerces/dom3/as/ASObject;
.super Ljava/lang/Object;
.source "ASObject.java"


# static fields
.field public static final AS_ATTRIBUTE_DECLARATION:S = 0x2s

.field public static final AS_CONTENTMODEL:S = 0x5s

.field public static final AS_ELEMENT_DECLARATION:S = 0x1s

.field public static final AS_ENTITY_DECLARATION:S = 0x4s

.field public static final AS_MODEL:S = 0x6s

.field public static final AS_NOTATION_DECLARATION:S = 0x3s


# virtual methods
.method public abstract cloneASObject(Z)Lmf/org/apache/xerces/dom3/as/ASObject;
.end method

.method public abstract getAsNodeType()S
.end method

.method public abstract getLocalName()Ljava/lang/String;
.end method

.method public abstract getNamespaceURI()Ljava/lang/String;
.end method

.method public abstract getNodeName()Ljava/lang/String;
.end method

.method public abstract getOwnerASModel()Lmf/org/apache/xerces/dom3/as/ASModel;
.end method

.method public abstract getPrefix()Ljava/lang/String;
.end method

.method public abstract setLocalName(Ljava/lang/String;)V
.end method

.method public abstract setNamespaceURI(Ljava/lang/String;)V
.end method

.method public abstract setNodeName(Ljava/lang/String;)V
.end method

.method public abstract setOwnerASModel(Lmf/org/apache/xerces/dom3/as/ASModel;)V
.end method

.method public abstract setPrefix(Ljava/lang/String;)V
.end method
