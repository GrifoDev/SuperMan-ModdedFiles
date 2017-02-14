.class public interface abstract Lmf/org/apache/xerces/xs/XSAttributeUse;
.super Ljava/lang/Object;
.source "XSAttributeUse.java"

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

.method public abstract getAnnotations()Lmf/org/apache/xerces/xs/XSObjectList;
.end method

.method public abstract getAttrDeclaration()Lmf/org/apache/xerces/xs/XSAttributeDeclaration;
.end method

.method public abstract getConstraintType()S
.end method

.method public abstract getConstraintValue()Ljava/lang/String;
.end method

.method public abstract getItemValueTypes()Lmf/org/apache/xerces/xs/ShortList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xs/XSException;
        }
    .end annotation
.end method

.method public abstract getRequired()Z
.end method

.method public abstract getValueConstraintValue()Lmf/org/apache/xerces/xs/XSValue;
.end method
