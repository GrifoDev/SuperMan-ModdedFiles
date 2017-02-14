.class public interface abstract Lmf/org/apache/xerces/dom3/as/DocumentAS;
.super Ljava/lang/Object;
.source "DocumentAS.java"


# virtual methods
.method public abstract addAS(Lmf/org/apache/xerces/dom3/as/ASModel;)V
.end method

.method public abstract getActiveASModel()Lmf/org/apache/xerces/dom3/as/ASModel;
.end method

.method public abstract getBoundASModels()Lmf/org/apache/xerces/dom3/as/ASObjectList;
.end method

.method public abstract getElementDeclaration()Lmf/org/apache/xerces/dom3/as/ASElementDeclaration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation
.end method

.method public abstract getInternalAS()Lmf/org/apache/xerces/dom3/as/ASModel;
.end method

.method public abstract removeAS(Lmf/org/apache/xerces/dom3/as/ASModel;)V
.end method

.method public abstract setActiveASModel(Lmf/org/apache/xerces/dom3/as/ASModel;)V
.end method

.method public abstract setBoundASModels(Lmf/org/apache/xerces/dom3/as/ASObjectList;)V
.end method

.method public abstract setInternalAS(Lmf/org/apache/xerces/dom3/as/ASModel;)V
.end method

.method public abstract validate()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/dom3/as/DOMASException;
        }
    .end annotation
.end method
