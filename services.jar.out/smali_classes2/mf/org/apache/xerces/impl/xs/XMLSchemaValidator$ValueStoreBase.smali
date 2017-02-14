.class public abstract Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;
.super Ljava/lang/Object;
.source "XMLSchemaValidator.java"

# interfaces
.implements Lmf/org/apache/xerces/impl/xs/identity/ValueStore;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x404
    name = "ValueStoreBase"
.end annotation


# instance fields
.field protected fFieldCount:I

.field protected fFields:[Lmf/org/apache/xerces/impl/xs/identity/Field;

.field protected fIdentityConstraint:Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

.field private fItemValueType:Lmf/org/apache/xerces/xs/ShortList;

.field public fItemValueTypes:Ljava/util/Vector;

.field private fItemValueTypesLength:I

.field protected fLocalItemValueTypes:[Lmf/org/apache/xerces/xs/ShortList;

.field protected fLocalValueTypes:[S

.field protected fLocalValues:[Ljava/lang/Object;

.field final fTempBuffer:Ljava/lang/StringBuffer;

.field private fUseItemValueTypeVector:Z

.field private fUseValueTypeVector:Z

.field private fValueType:S

.field public fValueTypes:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ShortVector;

.field private fValueTypesLength:I

.field public final fValues:Ljava/util/Vector;

.field protected fValuesCount:I

.field final synthetic this$0:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;


# direct methods
.method protected constructor <init>(Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->this$0:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fFieldCount:I

    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fFields:[Lmf/org/apache/xerces/impl/xs/identity/Field;

    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fLocalValues:[Ljava/lang/Object;

    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fLocalValueTypes:[S

    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fLocalItemValueTypes:[Lmf/org/apache/xerces/xs/ShortList;

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValues:Ljava/util/Vector;

    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValueTypes:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ShortVector;

    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fItemValueTypes:Ljava/util/Vector;

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fUseValueTypeVector:Z

    iput v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValueTypesLength:I

    iput-short v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValueType:S

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fUseItemValueTypeVector:Z

    iput v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fItemValueTypesLength:I

    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fItemValueType:Lmf/org/apache/xerces/xs/ShortList;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fTempBuffer:Ljava/lang/StringBuffer;

    iput-object p2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fIdentityConstraint:Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fIdentityConstraint:Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->getFieldCount()I

    move-result v1

    iput v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fFieldCount:I

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fFieldCount:I

    new-array v1, v1, [Lmf/org/apache/xerces/impl/xs/identity/Field;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fFields:[Lmf/org/apache/xerces/impl/xs/identity/Field;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fFieldCount:I

    new-array v1, v1, [Ljava/lang/Object;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fLocalValues:[Ljava/lang/Object;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fFieldCount:I

    new-array v1, v1, [S

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fLocalValueTypes:[S

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fFieldCount:I

    new-array v1, v1, [Lmf/org/apache/xerces/xs/ShortList;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fLocalItemValueTypes:[Lmf/org/apache/xerces/xs/ShortList;

    :goto_0
    iget v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fFieldCount:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fFields:[Lmf/org/apache/xerces/impl/xs/identity/Field;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fIdentityConstraint:Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    invoke-virtual {v2, v0}, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->getFieldAt(I)Lmf/org/apache/xerces/impl/xs/identity/Field;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private addItemValueType(Lmf/org/apache/xerces/xs/ShortList;)V
    .locals 3

    const/4 v0, 0x1

    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fUseItemValueTypeVector:Z

    if-nez v1, :cond_0

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fItemValueTypesLength:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fItemValueTypesLength:I

    if-eqz v1, :cond_1

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fItemValueType:Lmf/org/apache/xerces/xs/ShortList;

    if-ne v1, p1, :cond_2

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fItemValueTypes:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fItemValueType:Lmf/org/apache/xerces/xs/ShortList;

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fItemValueType:Lmf/org/apache/xerces/xs/ShortList;

    if-nez v1, :cond_4

    :cond_3
    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fUseItemValueTypeVector:Z

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fItemValueTypes:Ljava/util/Vector;

    if-eqz v1, :cond_5

    :goto_1
    iget v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fItemValueTypesLength:I

    if-ge v0, v1, :cond_6

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fItemValueTypes:Ljava/util/Vector;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fItemValueType:Lmf/org/apache/xerces/xs/ShortList;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fItemValueType:Lmf/org/apache/xerces/xs/ShortList;

    invoke-interface {v1, p1}, Lmf/org/apache/xerces/xs/ShortList;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_5
    new-instance v1, Ljava/util/Vector;

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fItemValueTypesLength:I

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/Vector;-><init>(I)V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fItemValueTypes:Ljava/util/Vector;

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fItemValueTypes:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private addValueType(S)V
    .locals 3

    const/4 v0, 0x1

    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fUseValueTypeVector:Z

    if-nez v1, :cond_0

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValueTypesLength:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValueTypesLength:I

    if-eqz v1, :cond_1

    iget-short v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValueType:S

    if-ne v1, p1, :cond_2

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValueTypes:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ShortVector;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ShortVector;->add(S)V

    goto :goto_0

    :cond_1
    int-to-short v0, p1

    iput-short v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValueType:S

    goto :goto_0

    :cond_2
    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fUseValueTypeVector:Z

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValueTypes:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ShortVector;

    if-eqz v1, :cond_3

    :goto_1
    iget v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValueTypesLength:I

    if-ge v0, v1, :cond_4

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValueTypes:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ShortVector;

    iget-short v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValueType:S

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ShortVector;->add(S)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    new-instance v1, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ShortVector;

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValueTypesLength:I

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ShortVector;-><init>(I)V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValueTypes:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ShortVector;

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValueTypes:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ShortVector;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ShortVector;->add(S)V

    goto :goto_0
.end method

.method private getItemValueTypeAt(I)Lmf/org/apache/xerces/xs/ShortList;
    .locals 1

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fUseItemValueTypeVector:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fItemValueType:Lmf/org/apache/xerces/xs/ShortList;

    return-object v0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fItemValueTypes:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/xs/ShortList;

    return-object v0
.end method

.method private getValueTypeAt(I)S
    .locals 1

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fUseValueTypeVector:Z

    if-nez v0, :cond_0

    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValueType:S

    return v0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValueTypes:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ShortVector;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ShortVector;->valueAt(I)S

    move-result v0

    return v0
.end method

.method private itemValueTypeContains(Lmf/org/apache/xerces/xs/ShortList;)Z
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fUseItemValueTypeVector:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fItemValueType:Lmf/org/apache/xerces/xs/ShortList;

    if-ne v0, p1, :cond_1

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fItemValueTypes:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fItemValueType:Lmf/org/apache/xerces/xs/ShortList;

    if-nez v0, :cond_3

    :cond_2
    return v1

    :cond_3
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fItemValueType:Lmf/org/apache/xerces/xs/ShortList;

    invoke-interface {v0, p1}, Lmf/org/apache/xerces/xs/ShortList;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0
.end method

.method private valueTypeContains(S)Z
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fUseValueTypeVector:Z

    if-nez v0, :cond_0

    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValueType:S

    if-eq v0, p1, :cond_1

    return v1

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValueTypes:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ShortVector;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ShortVector;->contains(S)Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public addValue(Lmf/org/apache/xerces/impl/xs/identity/Field;ZLjava/lang/Object;SLmf/org/apache/xerces/xs/ShortList;)V
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v3, -0x1

    const/4 v0, 0x0

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fFieldCount:I

    :cond_0
    add-int/lit8 v1, v1, -0x1

    if-le v1, v3, :cond_1

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fFields:[Lmf/org/apache/xerces/impl/xs/identity/Field;

    aget-object v2, v2, v1

    if-ne v2, p1, :cond_0

    :cond_1
    if-eq v1, v3, :cond_3

    if-eqz p2, :cond_4

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValuesCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValuesCount:I

    :goto_0
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fLocalValues:[Ljava/lang/Object;

    aput-object p3, v2, v1

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fLocalValueTypes:[S

    int-to-short v3, p4

    aput-short v3, v2, v1

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fLocalItemValueTypes:[Lmf/org/apache/xerces/xs/ShortList;

    aput-object p5, v2, v1

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValuesCount:I

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fFieldCount:I

    if-eq v1, v2, :cond_5

    :cond_2
    return-void

    :cond_3
    const-string/jumbo v1, "UnknownField"

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fIdentityConstraint:Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->getElementName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fIdentityConstraint:Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->getIdentityConstraintName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->this$0:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/identity/Field;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    aput-object v2, v5, v7

    aput-object v3, v5, v8

    invoke-virtual {v4, v1, v5}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_4
    const-string/jumbo v2, "FieldMultipleMatch"

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fIdentityConstraint:Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->getIdentityConstraintName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->this$0:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    new-array v5, v8, [Ljava/lang/Object;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/identity/Field;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    aput-object v3, v5, v7

    invoke-virtual {v4, v2, v5}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->checkDuplicateValues()V

    :goto_1
    iget v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fFieldCount:I

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValues:Ljava/util/Vector;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fLocalValues:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fLocalValueTypes:[S

    aget-short v1, v1, v0

    invoke-direct {p0, v1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->addValueType(S)V

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fLocalItemValueTypes:[Lmf/org/apache/xerces/xs/ShortList;

    aget-object v1, v1, v0

    invoke-direct {p0, v1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->addItemValueType(Lmf/org/apache/xerces/xs/ShortList;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public append(Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p1, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValues:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValues:Ljava/util/Vector;

    iget-object v2, p1, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValues:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected checkDuplicateValues()V
    .locals 0

    return-void
.end method

.method public clear()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    iput v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValuesCount:I

    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fUseValueTypeVector:Z

    iput v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValueTypesLength:I

    iput-short v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValueType:S

    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fUseItemValueTypeVector:Z

    iput v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fItemValueTypesLength:I

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fItemValueType:Lmf/org/apache/xerces/xs/ShortList;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValues:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->setSize(I)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValueTypes:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ShortVector;

    if-nez v0, :cond_0

    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fItemValueTypes:Ljava/util/Vector;

    if-nez v0, :cond_1

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValueTypes:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ShortVector;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ShortVector;->clear()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fItemValueTypes:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->setSize(I)V

    goto :goto_1
.end method

.method public contains(Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;)I
    .locals 13

    const/16 v12, 0x2c

    const/16 v11, 0x2b

    const/4 v1, 0x0

    iget-object v4, p1, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValues:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v5

    iget v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fFieldCount:I

    const/4 v2, 0x1

    if-le v0, v2, :cond_4

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValues:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v6

    move v2, v1

    :goto_0
    if-ge v2, v5, :cond_d

    move v3, v1

    :goto_1
    if-ge v3, v6, :cond_b

    move v0, v1

    :goto_2
    iget v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fFieldCount:I

    if-ge v0, v7, :cond_c

    add-int v7, v2, v0

    invoke-virtual {v4, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    iget-object v8, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValues:Ljava/util/Vector;

    add-int v9, v3, v0

    invoke-virtual {v8, v9}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v8

    add-int v9, v2, v0

    invoke-direct {p1, v9}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->getValueTypeAt(I)S

    move-result v9

    add-int v10, v3, v0

    invoke-direct {p0, v10}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->getValueTypeAt(I)S

    move-result v10

    if-ne v7, v8, :cond_8

    :goto_3
    if-ne v9, v12, :cond_9

    :cond_0
    add-int v7, v2, v0

    invoke-direct {p1, v7}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->getItemValueTypeAt(I)Lmf/org/apache/xerces/xs/ShortList;

    move-result-object v7

    add-int v8, v3, v0

    invoke-direct {p0, v8}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->getItemValueTypeAt(I)Lmf/org/apache/xerces/xs/ShortList;

    move-result-object v8

    if-nez v7, :cond_a

    :cond_1
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fFieldCount:I

    add-int/2addr v0, v3

    move v3, v0

    goto :goto_1

    :cond_2
    if-eq v0, v11, :cond_7

    :cond_3
    add-int/lit8 v1, v1, 0x1

    :cond_4
    if-ge v1, v5, :cond_d

    invoke-direct {p1, v1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->getValueTypeAt(I)S

    move-result v0

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->valueTypeContains(S)Z

    move-result v2

    if-nez v2, :cond_6

    :cond_5
    return v1

    :cond_6
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValues:Ljava/util/Vector;

    invoke-virtual {v4, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    if-ne v0, v12, :cond_2

    :cond_7
    invoke-direct {p1, v1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->getItemValueTypeAt(I)Lmf/org/apache/xerces/xs/ShortList;

    move-result-object v0

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->itemValueTypeContains(Lmf/org/apache/xerces/xs/ShortList;)Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    :cond_8
    if-ne v9, v10, :cond_1

    if-eqz v7, :cond_1

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_3

    :cond_9
    if-eq v9, v11, :cond_0

    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_a
    if-eqz v8, :cond_1

    invoke-interface {v7, v8}, Lmf/org/apache/xerces/xs/ShortList;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_4

    :cond_b
    return v2

    :cond_c
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fFieldCount:I

    add-int/2addr v0, v2

    move v2, v0

    goto/16 :goto_0

    :cond_d
    const/4 v0, -0x1

    return v0
.end method

.method public contains()Z
    .locals 9

    const/4 v1, 0x0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValues:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v4

    move v0, v1

    :goto_0
    if-ge v0, v4, :cond_5

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fFieldCount:I

    add-int v3, v0, v2

    move v2, v0

    move v0, v1

    :goto_1
    iget v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fFieldCount:I

    if-ge v0, v5, :cond_4

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fLocalValues:[Ljava/lang/Object;

    aget-object v5, v5, v0

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValues:Ljava/util/Vector;

    invoke-virtual {v6, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fLocalValueTypes:[S

    aget-short v7, v7, v0

    invoke-direct {p0, v2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->getValueTypeAt(I)S

    move-result v8

    if-nez v5, :cond_1

    :cond_0
    move v0, v3

    goto :goto_0

    :cond_1
    if-eqz v6, :cond_0

    if-ne v7, v8, :cond_0

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x2c

    if-ne v7, v5, :cond_3

    :cond_2
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fLocalItemValueTypes:[Lmf/org/apache/xerces/xs/ShortList;

    aget-object v5, v5, v0

    invoke-direct {p0, v2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->getItemValueTypeAt(I)Lmf/org/apache/xerces/xs/ShortList;

    move-result-object v6

    if-eqz v5, :cond_0

    if-eqz v6, :cond_0

    invoke-interface {v5, v6}, Lmf/org/apache/xerces/xs/ShortList;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    :goto_2
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    const/16 v5, 0x2b

    if-eq v7, v5, :cond_2

    goto :goto_2

    :cond_4
    const/4 v0, 0x1

    return v0

    :cond_5
    return v1
.end method

.method public endDocument()V
    .locals 0

    return-void
.end method

.method public endDocumentFragment()V
    .locals 0

    return-void
.end method

.method public endValueScope()V
    .locals 7

    const/4 v4, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    iget v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValuesCount:I

    if-eqz v0, :cond_0

    iget v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValuesCount:I

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fFieldCount:I

    if-ne v0, v1, :cond_2

    return-void

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fIdentityConstraint:Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->getCategory()S

    move-result v0

    if-eq v0, v5, :cond_1

    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "AbsentKeyValue"

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fIdentityConstraint:Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->getElementName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fIdentityConstraint:Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->getIdentityConstraintName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->this$0:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v6

    aput-object v2, v4, v5

    invoke-virtual {v3, v0, v4}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fIdentityConstraint:Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->getCategory()S

    move-result v0

    if-eq v0, v5, :cond_3

    :goto_1
    return-void

    :cond_3
    const-string/jumbo v1, "KeyNotEnoughValues"

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fIdentityConstraint:Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    check-cast v0, Lmf/org/apache/xerces/impl/xs/identity/UniqueOrKey;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fIdentityConstraint:Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->getElementName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/identity/UniqueOrKey;->getIdentityConstraintName()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->this$0:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v6

    aput-object v0, v4, v5

    invoke-virtual {v3, v1, v4}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public reportError(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->this$0:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    invoke-virtual {v0, p1, p2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public startValueScope()V
    .locals 4

    const/4 v3, 0x0

    const/4 v1, 0x0

    iput v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValuesCount:I

    move v0, v1

    :goto_0
    iget v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fFieldCount:I

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fLocalValues:[Ljava/lang/Object;

    aput-object v3, v2, v0

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fLocalValueTypes:[S

    aput-short v1, v2, v0

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fLocalItemValueTypes:[Lmf/org/apache/xerces/xs/ShortList;

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v2, -0x1

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-ne v1, v2, :cond_0

    :goto_0
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-ne v1, v2, :cond_1

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x5b

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fIdentityConstraint:Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method protected toString(Ljava/util/Vector;II)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    const/4 v1, 0x1

    if-eq p3, v1, :cond_1

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    :goto_0
    if-ge v0, p3, :cond_3

    if-gtz v0, :cond_2

    :goto_1
    add-int v2, p2, v0

    invoke-virtual {p1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string/jumbo v0, ""

    return-object v0

    :cond_1
    invoke-virtual {p1, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected toString([Ljava/lang/Object;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    array-length v1, p1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fTempBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    :goto_0
    if-ge v0, v1, :cond_2

    if-gtz v0, :cond_1

    :goto_1
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fTempBuffer:Ljava/lang/StringBuffer;

    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string/jumbo v0, ""

    return-object v0

    :cond_1
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fTempBuffer:Ljava/lang/StringBuffer;

    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fTempBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
