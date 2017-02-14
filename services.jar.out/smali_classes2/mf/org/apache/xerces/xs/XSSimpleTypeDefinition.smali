.class public interface abstract Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;
.super Ljava/lang/Object;
.source "XSSimpleTypeDefinition.java"

# interfaces
.implements Lmf/org/apache/xerces/xs/XSTypeDefinition;


# static fields
.field public static final FACET_ENUMERATION:S = 0x800s

.field public static final FACET_FRACTIONDIGITS:S = 0x400s

.field public static final FACET_LENGTH:S = 0x1s

.field public static final FACET_MAXEXCLUSIVE:S = 0x40s

.field public static final FACET_MAXINCLUSIVE:S = 0x20s

.field public static final FACET_MAXLENGTH:S = 0x4s

.field public static final FACET_MINEXCLUSIVE:S = 0x80s

.field public static final FACET_MININCLUSIVE:S = 0x100s

.field public static final FACET_MINLENGTH:S = 0x2s

.field public static final FACET_NONE:S = 0x0s

.field public static final FACET_PATTERN:S = 0x8s

.field public static final FACET_TOTALDIGITS:S = 0x200s

.field public static final FACET_WHITESPACE:S = 0x10s

.field public static final ORDERED_FALSE:S = 0x0s

.field public static final ORDERED_PARTIAL:S = 0x1s

.field public static final ORDERED_TOTAL:S = 0x2s

.field public static final VARIETY_ABSENT:S = 0x0s

.field public static final VARIETY_ATOMIC:S = 0x1s

.field public static final VARIETY_LIST:S = 0x2s

.field public static final VARIETY_UNION:S = 0x3s


# virtual methods
.method public abstract getAnnotations()Lmf/org/apache/xerces/xs/XSObjectList;
.end method

.method public abstract getBounded()Z
.end method

.method public abstract getBuiltInKind()S
.end method

.method public abstract getDefinedFacets()S
.end method

.method public abstract getFacet(I)Lmf/org/apache/xerces/xs/XSObject;
.end method

.method public abstract getFacets()Lmf/org/apache/xerces/xs/XSObjectList;
.end method

.method public abstract getFinite()Z
.end method

.method public abstract getFixedFacets()S
.end method

.method public abstract getItemType()Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;
.end method

.method public abstract getLexicalEnumeration()Lmf/org/apache/xerces/xs/StringList;
.end method

.method public abstract getLexicalFacetValue(S)Ljava/lang/String;
.end method

.method public abstract getLexicalPattern()Lmf/org/apache/xerces/xs/StringList;
.end method

.method public abstract getMemberTypes()Lmf/org/apache/xerces/xs/XSObjectList;
.end method

.method public abstract getMultiValueFacets()Lmf/org/apache/xerces/xs/XSObjectList;
.end method

.method public abstract getNumeric()Z
.end method

.method public abstract getOrdered()S
.end method

.method public abstract getPrimitiveType()Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;
.end method

.method public abstract getVariety()S
.end method

.method public abstract isDefinedFacet(S)Z
.end method

.method public abstract isFixedFacet(S)Z
.end method
