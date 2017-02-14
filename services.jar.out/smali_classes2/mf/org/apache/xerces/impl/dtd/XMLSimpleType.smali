.class public Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;
.super Ljava/lang/Object;
.source "XMLSimpleType.java"


# static fields
.field public static final DEFAULT_TYPE_DEFAULT:S = 0x3s

.field public static final DEFAULT_TYPE_FIXED:S = 0x1s

.field public static final DEFAULT_TYPE_IMPLIED:S = 0x0s

.field public static final DEFAULT_TYPE_REQUIRED:S = 0x2s

.field public static final TYPE_CDATA:S = 0x0s

.field public static final TYPE_ENTITY:S = 0x1s

.field public static final TYPE_ENUMERATION:S = 0x2s

.field public static final TYPE_ID:S = 0x3s

.field public static final TYPE_IDREF:S = 0x4s

.field public static final TYPE_NAMED:S = 0x7s

.field public static final TYPE_NMTOKEN:S = 0x5s

.field public static final TYPE_NOTATION:S = 0x6s


# instance fields
.field public datatypeValidator:Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

.field public defaultType:S

.field public defaultValue:Ljava/lang/String;

.field public enumeration:[Ljava/lang/String;

.field public list:Z

.field public name:Ljava/lang/String;

.field public nonNormalizedDefaultValue:Ljava/lang/String;

.field public type:S


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    const/4 v2, -0x1

    const/4 v1, 0x0

    iput-short v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->type:S

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->name:Ljava/lang/String;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->enumeration:[Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->list:Z

    iput-short v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->defaultType:S

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->defaultValue:Ljava/lang/String;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->nonNormalizedDefaultValue:Ljava/lang/String;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->datatypeValidator:Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

    return-void
.end method

.method public setValues(Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;)V
    .locals 4

    const/4 v1, 0x0

    const/4 v3, 0x0

    iget-short v0, p1, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->type:S

    int-to-short v0, v0

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->type:S

    iget-object v0, p1, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->name:Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->name:Ljava/lang/String;

    iget-object v0, p1, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->enumeration:[Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    iput-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->enumeration:[Ljava/lang/String;

    :goto_0
    iget-boolean v0, p1, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->list:Z

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->list:Z

    iget-short v0, p1, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->defaultType:S

    int-to-short v0, v0

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->defaultType:S

    iget-object v0, p1, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->defaultValue:Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->defaultValue:Ljava/lang/String;

    iget-object v0, p1, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->nonNormalizedDefaultValue:Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->nonNormalizedDefaultValue:Ljava/lang/String;

    iget-object v0, p1, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->datatypeValidator:Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->datatypeValidator:Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

    return-void

    :cond_1
    iget-object v0, p1, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->enumeration:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_0

    iget-object v0, p1, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->enumeration:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->enumeration:[Ljava/lang/String;

    iget-object v0, p1, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->enumeration:[Ljava/lang/String;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->enumeration:[Ljava/lang/String;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->enumeration:[Ljava/lang/String;

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public setValues(SLjava/lang/String;[Ljava/lang/String;ZSLjava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/DatatypeValidator;)V
    .locals 3

    const/4 v1, 0x0

    const/4 v2, 0x0

    int-to-short v0, p1

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->type:S

    iput-object p2, p0, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->name:Ljava/lang/String;

    if-nez p3, :cond_1

    :cond_0
    iput-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->enumeration:[Ljava/lang/String;

    :goto_0
    iput-boolean p4, p0, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->list:Z

    int-to-short v0, p5

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->defaultType:S

    iput-object p6, p0, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->defaultValue:Ljava/lang/String;

    iput-object p7, p0, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->nonNormalizedDefaultValue:Ljava/lang/String;

    iput-object p8, p0, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->datatypeValidator:Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

    return-void

    :cond_1
    array-length v0, p3

    if-lez v0, :cond_0

    array-length v0, p3

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->enumeration:[Ljava/lang/String;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->enumeration:[Ljava/lang/String;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->enumeration:[Ljava/lang/String;

    array-length v1, v1

    invoke-static {p3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method
