.class public Lmf/org/apache/xerces/impl/dv/XSFacets;
.super Ljava/lang/Object;
.source "XSFacets.java"


# instance fields
.field public enumAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

.field public enumNSDecls:Ljava/util/Vector;

.field public enumeration:Ljava/util/Vector;

.field public fractionDigits:I

.field public fractionDigitsAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

.field public length:I

.field public lengthAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

.field public maxExclusive:Ljava/lang/String;

.field public maxExclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

.field public maxInclusive:Ljava/lang/String;

.field public maxInclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

.field public maxLength:I

.field public maxLengthAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

.field public minExclusive:Ljava/lang/String;

.field public minExclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

.field public minInclusive:Ljava/lang/String;

.field public minInclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

.field public minLength:I

.field public minLengthAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

.field public pattern:Ljava/lang/String;

.field public patternAnnotations:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

.field public totalDigits:I

.field public totalDigitsAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

.field public whiteSpace:S

.field public whiteSpaceAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/XSFacets;->lengthAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/XSFacets;->minLengthAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/XSFacets;->maxLengthAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/XSFacets;->whiteSpaceAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/XSFacets;->totalDigitsAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/XSFacets;->fractionDigitsAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/XSFacets;->patternAnnotations:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/XSFacets;->enumAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/XSFacets;->maxInclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/XSFacets;->maxExclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/XSFacets;->minInclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/XSFacets;->minExclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    return-void
.end method
