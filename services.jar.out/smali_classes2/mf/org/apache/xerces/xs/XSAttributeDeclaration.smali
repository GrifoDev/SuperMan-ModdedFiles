.class public interface abstract Lmf/org/apache/xerces/xs/XSAttributeDeclaration;
.super Ljava/lang/Object;
.source "XSAttributeDeclaration.java"

# interfaces
.implements Lmf/org/apache/xerces/xs/XSObject;


# virtual methods
.method public abstract getActualVC()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xs/XSException;
        }
    .end annotation
.end method

.method public abstract getActualVCType()S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xs/XSException;
        }
    .end annotation
.end method

.method public abstract getAnnotation()Lmf/org/apache/xerces/xs/XSAnnotation;
.end method

.method public abstract getAnnotations()Lmf/org/apache/xerces/xs/XSObjectList;
.end method

.method public abstract getConstraintType()S
.end method

.method public abstract getConstraintValue()Ljava/lang/String;
.end method

.method public abstract getEnclosingCTDefinition()Lmf/org/apache/xerces/xs/XSComplexTypeDefinition;
.end method

.method public abstract getItemValueTypes()Lmf/org/apache/xerces/xs/ShortList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xs/XSException;
        }
    .end annotation
.end method

.method public abstract getScope()S
.end method

.method public abstract getTypeDefinition()Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;
.end method

.method public abstract getValueConstraintValue()Lmf/org/apache/xerces/xs/XSValue;
.end method
