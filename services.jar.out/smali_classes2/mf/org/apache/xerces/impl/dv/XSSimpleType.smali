.class public interface abstract Lmf/org/apache/xerces/impl/dv/XSSimpleType;
.super Ljava/lang/Object;
.source "XSSimpleType.java"

# interfaces
.implements Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;


# static fields
.field public static final PRIMITIVE_ANYURI:S = 0x11s

.field public static final PRIMITIVE_BASE64BINARY:S = 0x10s

.field public static final PRIMITIVE_BOOLEAN:S = 0x2s

.field public static final PRIMITIVE_DATE:S = 0x9s

.field public static final PRIMITIVE_DATETIME:S = 0x7s

.field public static final PRIMITIVE_DECIMAL:S = 0x3s

.field public static final PRIMITIVE_DOUBLE:S = 0x5s

.field public static final PRIMITIVE_DURATION:S = 0x6s

.field public static final PRIMITIVE_FLOAT:S = 0x4s

.field public static final PRIMITIVE_GDAY:S = 0xds

.field public static final PRIMITIVE_GMONTH:S = 0xes

.field public static final PRIMITIVE_GMONTHDAY:S = 0xcs

.field public static final PRIMITIVE_GYEAR:S = 0xbs

.field public static final PRIMITIVE_GYEARMONTH:S = 0xas

.field public static final PRIMITIVE_HEXBINARY:S = 0xfs

.field public static final PRIMITIVE_NOTATION:S = 0x14s

.field public static final PRIMITIVE_PRECISIONDECIMAL:S = 0x13s

.field public static final PRIMITIVE_QNAME:S = 0x12s

.field public static final PRIMITIVE_STRING:S = 0x1s

.field public static final PRIMITIVE_TIME:S = 0x8s

.field public static final WS_COLLAPSE:S = 0x2s

.field public static final WS_PRESERVE:S = 0x0s

.field public static final WS_REPLACE:S = 0x1s


# virtual methods
.method public abstract applyFacets(Lmf/org/apache/xerces/impl/dv/XSFacets;SSLmf/org/apache/xerces/impl/dv/ValidationContext;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/dv/InvalidDatatypeFacetException;
        }
    .end annotation
.end method

.method public abstract getPrimitiveKind()S
.end method

.method public abstract getWhitespace()S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/dv/DatatypeException;
        }
    .end annotation
.end method

.method public abstract isEqual(Ljava/lang/Object;Ljava/lang/Object;)Z
.end method

.method public abstract isIDType()Z
.end method

.method public abstract validate(Ljava/lang/Object;Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;
        }
    .end annotation
.end method

.method public abstract validate(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;
        }
    .end annotation
.end method

.method public abstract validate(Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;
        }
    .end annotation
.end method
