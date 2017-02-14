.class public interface abstract Lmf/org/apache/xerces/xs/XSElementDeclaration;
.super Ljava/lang/Object;
.source "XSElementDeclaration.java"

# interfaces
.implements Lmf/org/apache/xerces/xs/XSTerm;


# virtual methods
.method public abstract getAbstract()Z
.end method

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

.method public abstract getDisallowedSubstitutions()S
.end method

.method public abstract getEnclosingCTDefinition()Lmf/org/apache/xerces/xs/XSComplexTypeDefinition;
.end method

.method public abstract getIdentityConstraints()Lmf/org/apache/xerces/xs/XSNamedMap;
.end method

.method public abstract getItemValueTypes()Lmf/org/apache/xerces/xs/ShortList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xs/XSException;
        }
    .end annotation
.end method

.method public abstract getNillable()Z
.end method

.method public abstract getScope()S
.end method

.method public abstract getSubstitutionGroupAffiliation()Lmf/org/apache/xerces/xs/XSElementDeclaration;
.end method

.method public abstract getSubstitutionGroupExclusions()S
.end method

.method public abstract getTypeDefinition()Lmf/org/apache/xerces/xs/XSTypeDefinition;
.end method

.method public abstract getValueConstraintValue()Lmf/org/apache/xerces/xs/XSValue;
.end method

.method public abstract isDisallowedSubstitution(S)Z
.end method

.method public abstract isSubstitutionGroupExclusion(S)Z
.end method
