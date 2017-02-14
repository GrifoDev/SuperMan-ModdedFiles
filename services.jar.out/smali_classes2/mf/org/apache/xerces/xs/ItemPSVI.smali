.class public interface abstract Lmf/org/apache/xerces/xs/ItemPSVI;
.super Ljava/lang/Object;
.source "ItemPSVI.java"


# static fields
.field public static final VALIDATION_FULL:S = 0x2s

.field public static final VALIDATION_NONE:S = 0x0s

.field public static final VALIDATION_PARTIAL:S = 0x1s

.field public static final VALIDITY_INVALID:S = 0x1s

.field public static final VALIDITY_NOTKNOWN:S = 0x0s

.field public static final VALIDITY_VALID:S = 0x2s


# virtual methods
.method public abstract getActualNormalizedValue()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xs/XSException;
        }
    .end annotation
.end method

.method public abstract getActualNormalizedValueType()S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xs/XSException;
        }
    .end annotation
.end method

.method public abstract getErrorCodes()Lmf/org/apache/xerces/xs/StringList;
.end method

.method public abstract getErrorMessages()Lmf/org/apache/xerces/xs/StringList;
.end method

.method public abstract getIsSchemaSpecified()Z
.end method

.method public abstract getItemValueTypes()Lmf/org/apache/xerces/xs/ShortList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xs/XSException;
        }
    .end annotation
.end method

.method public abstract getMemberTypeDefinition()Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;
.end method

.method public abstract getSchemaDefault()Ljava/lang/String;
.end method

.method public abstract getSchemaNormalizedValue()Ljava/lang/String;
.end method

.method public abstract getSchemaValue()Lmf/org/apache/xerces/xs/XSValue;
.end method

.method public abstract getTypeDefinition()Lmf/org/apache/xerces/xs/XSTypeDefinition;
.end method

.method public abstract getValidationAttempted()S
.end method

.method public abstract getValidationContext()Ljava/lang/String;
.end method

.method public abstract getValidity()S
.end method
