.class public interface abstract Lmf/org/apache/xerces/dom3/as/ASModel;
.super Ljava/lang/Object;
.source "ASModel.java"

# interfaces
.implements Lmf/org/apache/xerces/dom3/as/ASObject;


# virtual methods
.method public abstract addASModel(Lmf/org/apache/xerces/dom3/as/ASModel;)V
.end method

.method public abstract createASAttributeDeclaration(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/dom3/as/ASAttributeDeclaration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation
.end method

.method public abstract createASContentModel(IIS)Lmf/org/apache/xerces/dom3/as/ASContentModel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/dom3/as/DOMASException;
        }
    .end annotation
.end method

.method public abstract createASElementDeclaration(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/dom3/as/ASElementDeclaration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation
.end method

.method public abstract createASEntityDeclaration(Ljava/lang/String;)Lmf/org/apache/xerces/dom3/as/ASEntityDeclaration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation
.end method

.method public abstract createASNotationDeclaration(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/dom3/as/ASNotationDeclaration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation
.end method

.method public abstract getASModels()Lmf/org/apache/xerces/dom3/as/ASObjectList;
.end method

.method public abstract getAsHint()Ljava/lang/String;
.end method

.method public abstract getAsLocation()Ljava/lang/String;
.end method

.method public abstract getAttributeDeclarations()Lmf/org/apache/xerces/dom3/as/ASNamedObjectMap;
.end method

.method public abstract getContentModelDeclarations()Lmf/org/apache/xerces/dom3/as/ASNamedObjectMap;
.end method

.method public abstract getElementDeclarations()Lmf/org/apache/xerces/dom3/as/ASNamedObjectMap;
.end method

.method public abstract getEntityDeclarations()Lmf/org/apache/xerces/dom3/as/ASNamedObjectMap;
.end method

.method public abstract getIsNamespaceAware()Z
.end method

.method public abstract getNotationDeclarations()Lmf/org/apache/xerces/dom3/as/ASNamedObjectMap;
.end method

.method public abstract getUsageLocation()S
.end method

.method public abstract removeAS(Lmf/org/apache/xerces/dom3/as/ASModel;)V
.end method

.method public abstract setAsHint(Ljava/lang/String;)V
.end method

.method public abstract setAsLocation(Ljava/lang/String;)V
.end method

.method public abstract validate()Z
.end method
