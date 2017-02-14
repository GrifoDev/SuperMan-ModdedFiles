.class public Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;
.super Ljava/lang/Object;
.source "XPathMatcher.java"


# static fields
.field protected static final DEBUG_ALL:Z = false

.field protected static final DEBUG_ANY:Z = false

.field protected static final DEBUG_MATCH:Z = false

.field protected static final DEBUG_METHODS:Z = false

.field protected static final DEBUG_METHODS2:Z = false

.field protected static final DEBUG_METHODS3:Z = false

.field protected static final DEBUG_STACK:Z = false

.field protected static final MATCHED:I = 0x1

.field protected static final MATCHED_ATTRIBUTE:I = 0x3

.field protected static final MATCHED_DESCENDANT:I = 0x5

.field protected static final MATCHED_DESCENDANT_PREVIOUS:I = 0xd


# instance fields
.field private final fCurrentStep:[I

.field private final fLocationPaths:[Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;

.field private final fMatched:[I

.field protected fMatchedString:Ljava/lang/Object;

.field private final fNoMatchDepth:[I

.field final fQName:Lmf/org/apache/xerces/xni/QName;

.field private final fStepIndexes:[Lmf/org/apache/xerces/util/IntStack;


# direct methods
.method public constructor <init>(Lmf/org/apache/xerces/impl/xpath/XPath;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lmf/org/apache/xerces/xni/QName;

    invoke-direct {v0}, Lmf/org/apache/xerces/xni/QName;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fQName:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xpath/XPath;->getLocationPaths()[Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fLocationPaths:[Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fLocationPaths:[Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;

    array-length v0, v0

    new-array v0, v0, [Lmf/org/apache/xerces/util/IntStack;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fStepIndexes:[Lmf/org/apache/xerces/util/IntStack;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fStepIndexes:[Lmf/org/apache/xerces/util/IntStack;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fStepIndexes:[Lmf/org/apache/xerces/util/IntStack;

    new-instance v2, Lmf/org/apache/xerces/util/IntStack;

    invoke-direct {v2}, Lmf/org/apache/xerces/util/IntStack;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fLocationPaths:[Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fCurrentStep:[I

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fLocationPaths:[Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fNoMatchDepth:[I

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fLocationPaths:[Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fMatched:[I

    return-void
.end method

.method private static matches(Lmf/org/apache/xerces/impl/xpath/XPath$NodeTest;Lmf/org/apache/xerces/xni/QName;)Z
    .locals 3

    const/4 v2, 0x1

    iget-short v0, p0, Lmf/org/apache/xerces/impl/xpath/XPath$NodeTest;->type:S

    if-eq v0, v2, :cond_0

    iget-short v0, p0, Lmf/org/apache/xerces/impl/xpath/XPath$NodeTest;->type:S

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    return v2

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/XPath$NodeTest;->name:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/xni/QName;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/XPath$NodeTest;->name:Lmf/org/apache/xerces/xni/QName;

    iget-object v0, v0, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    iget-object v1, p1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eq v0, v1, :cond_2

    const/4 v0, 0x0

    return v0

    :cond_2
    return v2
.end method

.method private normalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    packed-switch v3, :pswitch_data_0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :pswitch_0
    const-string/jumbo v3, "\\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public endElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xs/XSTypeDefinition;ZLjava/lang/Object;SLmf/org/apache/xerces/xs/ShortList;)V
    .locals 8

    const/4 v7, 0x0

    move v6, v7

    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fLocationPaths:[Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;

    array-length v0, v0

    if-ge v6, v0, :cond_6

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fCurrentStep:[I

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fStepIndexes:[Lmf/org/apache/xerces/util/IntStack;

    aget-object v1, v1, v6

    invoke-virtual {v1}, Lmf/org/apache/xerces/util/IntStack;->pop()I

    move-result v1

    aput v1, v0, v6

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fNoMatchDepth:[I

    aget v0, v0, v6

    if-gtz v0, :cond_2

    move v0, v7

    :goto_1
    if-lt v0, v6, :cond_3

    :cond_0
    if-ge v0, v6, :cond_4

    :cond_1
    :goto_2
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fNoMatchDepth:[I

    aget v1, v0, v6

    add-int/lit8 v1, v1, -0x1

    aput v1, v0, v6

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fMatched:[I

    aget v1, v1, v0

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fMatched:[I

    aget v1, v1, v0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fMatched:[I

    aget v0, v1, v0

    and-int/lit8 v0, v0, 0x3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_5

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move-object v3, p4

    move v4, p5

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->handleContent(Lmf/org/apache/xerces/xs/XSTypeDefinition;ZLjava/lang/Object;SLmf/org/apache/xerces/xs/ShortList;)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fMatched:[I

    aput v7, v0, v6

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fMatched:[I

    aput v7, v0, v6

    goto :goto_2

    :cond_6
    return-void
.end method

.method protected handleContent(Lmf/org/apache/xerces/xs/XSTypeDefinition;ZLjava/lang/Object;SLmf/org/apache/xerces/xs/ShortList;)V
    .locals 0

    return-void
.end method

.method public isMatched()Z
    .locals 5

    const/4 v4, 0x1

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fLocationPaths:[Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;

    array-length v2, v2

    if-ge v0, v2, :cond_4

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fMatched:[I

    aget v2, v2, v0

    and-int/lit8 v2, v2, 0x1

    if-eq v2, v4, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fMatched:[I

    aget v2, v2, v0

    and-int/lit8 v2, v2, 0xd

    const/16 v3, 0xd

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fNoMatchDepth:[I

    aget v2, v2, v0

    if-nez v2, :cond_3

    :cond_2
    return v4

    :cond_3
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fMatched:[I

    aget v2, v2, v0

    and-int/lit8 v2, v2, 0x5

    const/4 v3, 0x5

    if-eq v2, v3, :cond_2

    goto :goto_1

    :cond_4
    return v1
.end method

.method protected matched(Ljava/lang/Object;SLmf/org/apache/xerces/xs/ShortList;Z)V
    .locals 0

    return-void
.end method

.method public startDocumentFragment()V
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fMatchedString:Ljava/lang/Object;

    move v0, v1

    :goto_0
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fLocationPaths:[Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fStepIndexes:[Lmf/org/apache/xerces/util/IntStack;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lmf/org/apache/xerces/util/IntStack;->clear()V

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fCurrentStep:[I

    aput v1, v2, v0

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fNoMatchDepth:[I

    aput v1, v2, v0

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fMatched:[I

    aput v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public startElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;)V
    .locals 11

    const/4 v10, 0x5

    const/4 v9, 0x3

    const/4 v2, 0x1

    const/4 v1, 0x0

    move v3, v1

    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fLocationPaths:[Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;

    array-length v0, v0

    if-ge v3, v0, :cond_18

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fCurrentStep:[I

    aget v4, v0, v3

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fStepIndexes:[Lmf/org/apache/xerces/util/IntStack;

    aget-object v0, v0, v3

    invoke-virtual {v0, v4}, Lmf/org/apache/xerces/util/IntStack;->push(I)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fMatched:[I

    aget v0, v0, v3

    and-int/lit8 v0, v0, 0x5

    if-ne v0, v2, :cond_2

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fNoMatchDepth:[I

    aget v4, v0, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v0, v3

    :cond_1
    :goto_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fNoMatchDepth:[I

    aget v0, v0, v3

    if-gtz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fMatched:[I

    aget v0, v0, v3

    and-int/lit8 v0, v0, 0x5

    if-eq v0, v10, :cond_7

    :goto_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fLocationPaths:[Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;

    aget-object v0, v0, v3

    iget-object v5, v0, Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;->steps:[Lmf/org/apache/xerces/impl/xpath/XPath$Step;

    :goto_3
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fCurrentStep:[I

    aget v0, v0, v3

    array-length v6, v5

    if-lt v0, v6, :cond_8

    :cond_3
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fCurrentStep:[I

    aget v0, v0, v3

    array-length v6, v5

    if-eq v0, v6, :cond_9

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fCurrentStep:[I

    aget v6, v0, v3

    :goto_4
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fCurrentStep:[I

    aget v0, v0, v3

    array-length v7, v5

    if-lt v0, v7, :cond_a

    :cond_4
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fCurrentStep:[I

    aget v0, v0, v3

    if-gt v0, v6, :cond_b

    move v0, v1

    :goto_5
    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fCurrentStep:[I

    aget v7, v7, v3

    array-length v8, v5

    if-eq v7, v8, :cond_c

    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fCurrentStep:[I

    aget v7, v7, v3

    if-ne v7, v4, :cond_d

    :cond_5
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fCurrentStep:[I

    aget v4, v4, v3

    aget-object v4, v5, v4

    iget-object v4, v4, Lmf/org/apache/xerces/impl/xpath/XPath$Step;->axis:Lmf/org/apache/xerces/impl/xpath/XPath$Axis;

    iget-short v4, v4, Lmf/org/apache/xerces/impl/xpath/XPath$Axis;->type:S

    if-eq v4, v2, :cond_e

    :goto_6
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fCurrentStep:[I

    aget v4, v4, v3

    array-length v7, v5

    if-eq v4, v7, :cond_11

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fCurrentStep:[I

    aget v0, v0, v3

    array-length v4, v5

    if-ge v0, v4, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fCurrentStep:[I

    aget v0, v0, v3

    aget-object v0, v5, v0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xpath/XPath$Step;->axis:Lmf/org/apache/xerces/impl/xpath/XPath$Axis;

    iget-short v0, v0, Lmf/org/apache/xerces/impl/xpath/XPath$Axis;->type:S

    const/4 v4, 0x2

    if-ne v0, v4, :cond_1

    invoke-interface {p2}, Lmf/org/apache/xerces/xni/XMLAttributes;->getLength()I

    move-result v4

    if-gtz v4, :cond_13

    :cond_6
    :goto_7
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fMatched:[I

    aget v0, v0, v3

    and-int/lit8 v0, v0, 0x1

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fCurrentStep:[I

    aget v0, v0, v3

    if-gt v0, v6, :cond_17

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fNoMatchDepth:[I

    aget v4, v0, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v0, v3

    goto/16 :goto_1

    :cond_7
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fMatched:[I

    const/16 v5, 0xd

    aput v5, v0, v3

    goto :goto_2

    :cond_8
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fCurrentStep:[I

    aget v0, v0, v3

    aget-object v0, v5, v0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xpath/XPath$Step;->axis:Lmf/org/apache/xerces/impl/xpath/XPath$Axis;

    iget-short v0, v0, Lmf/org/apache/xerces/impl/xpath/XPath$Axis;->type:S

    if-ne v0, v9, :cond_3

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fCurrentStep:[I

    aget v6, v0, v3

    add-int/lit8 v6, v6, 0x1

    aput v6, v0, v3

    goto/16 :goto_3

    :cond_9
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fMatched:[I

    aput v2, v0, v3

    goto/16 :goto_1

    :cond_a
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fCurrentStep:[I

    aget v0, v0, v3

    aget-object v0, v5, v0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xpath/XPath$Step;->axis:Lmf/org/apache/xerces/impl/xpath/XPath$Axis;

    iget-short v0, v0, Lmf/org/apache/xerces/impl/xpath/XPath$Axis;->type:S

    const/4 v7, 0x4

    if-ne v0, v7, :cond_4

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fCurrentStep:[I

    aget v7, v0, v3

    add-int/lit8 v7, v7, 0x1

    aput v7, v0, v3

    goto/16 :goto_4

    :cond_b
    move v0, v2

    goto/16 :goto_5

    :cond_c
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fNoMatchDepth:[I

    aget v4, v0, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v0, v3

    goto/16 :goto_1

    :cond_d
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fCurrentStep:[I

    aget v4, v4, v3

    if-gt v4, v6, :cond_5

    goto/16 :goto_6

    :cond_e
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fCurrentStep:[I

    aget v4, v4, v3

    aget-object v4, v5, v4

    iget-object v4, v4, Lmf/org/apache/xerces/impl/xpath/XPath$Step;->nodeTest:Lmf/org/apache/xerces/impl/xpath/XPath$NodeTest;

    invoke-static {v4, p1}, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->matches(Lmf/org/apache/xerces/impl/xpath/XPath$NodeTest;Lmf/org/apache/xerces/xni/QName;)Z

    move-result v4

    if-eqz v4, :cond_f

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fCurrentStep:[I

    aget v7, v4, v3

    add-int/lit8 v7, v7, 0x1

    aput v7, v4, v3

    goto/16 :goto_6

    :cond_f
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fCurrentStep:[I

    aget v0, v0, v3

    if-gt v0, v6, :cond_10

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fNoMatchDepth:[I

    aget v4, v0, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v0, v3

    goto/16 :goto_1

    :cond_10
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fCurrentStep:[I

    aput v6, v0, v3

    goto/16 :goto_1

    :cond_11
    if-nez v0, :cond_12

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fMatched:[I

    aput v2, v0, v3

    goto/16 :goto_1

    :cond_12
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fCurrentStep:[I

    aput v6, v0, v3

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fMatched:[I

    aput v10, v0, v3

    goto/16 :goto_1

    :cond_13
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fCurrentStep:[I

    aget v0, v0, v3

    aget-object v0, v5, v0

    iget-object v7, v0, Lmf/org/apache/xerces/impl/xpath/XPath$Step;->nodeTest:Lmf/org/apache/xerces/impl/xpath/XPath$NodeTest;

    move v0, v1

    :goto_8
    if-ge v0, v4, :cond_6

    iget-object v8, p0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fQName:Lmf/org/apache/xerces/xni/QName;

    invoke-interface {p2, v0, v8}, Lmf/org/apache/xerces/xni/XMLAttributes;->getName(ILmf/org/apache/xerces/xni/QName;)V

    iget-object v8, p0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fQName:Lmf/org/apache/xerces/xni/QName;

    invoke-static {v7, v8}, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->matches(Lmf/org/apache/xerces/impl/xpath/XPath$NodeTest;Lmf/org/apache/xerces/xni/QName;)Z

    move-result v8

    if-nez v8, :cond_14

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_14
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fCurrentStep:[I

    aget v7, v4, v3

    add-int/lit8 v7, v7, 0x1

    aput v7, v4, v3

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fCurrentStep:[I

    aget v4, v4, v3

    array-length v5, v5

    if-ne v4, v5, :cond_6

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fMatched:[I

    aput v9, v4, v3

    move v4, v1

    :goto_9
    if-lt v4, v3, :cond_16

    :cond_15
    if-ne v4, v3, :cond_6

    invoke-interface {p2, v0}, Lmf/org/apache/xerces/xni/XMLAttributes;->getAugmentations(I)Lmf/org/apache/xerces/xni/Augmentations;

    move-result-object v0

    const-string/jumbo v4, "ATTRIBUTE_PSVI"

    invoke-interface {v0, v4}, Lmf/org/apache/xerces/xni/Augmentations;->getItem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/xs/AttributePSVI;

    invoke-interface {v0}, Lmf/org/apache/xerces/xs/AttributePSVI;->getActualNormalizedValue()Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fMatchedString:Ljava/lang/Object;

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fMatchedString:Ljava/lang/Object;

    invoke-interface {v0}, Lmf/org/apache/xerces/xs/AttributePSVI;->getActualNormalizedValueType()S

    move-result v5

    invoke-interface {v0}, Lmf/org/apache/xerces/xs/AttributePSVI;->getItemValueTypes()Lmf/org/apache/xerces/xs/ShortList;

    move-result-object v0

    invoke-virtual {p0, v4, v5, v0, v1}, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->matched(Ljava/lang/Object;SLmf/org/apache/xerces/xs/ShortList;Z)V

    goto/16 :goto_7

    :cond_16
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fMatched:[I

    aget v5, v5, v4

    and-int/lit8 v5, v5, 0x1

    if-eq v5, v2, :cond_15

    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    :cond_17
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fCurrentStep:[I

    aput v6, v0, v3

    goto/16 :goto_1

    :cond_18
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    const/16 v6, 0x5e

    const/4 v1, 0x0

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_0

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v2, v1

    :goto_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fLocationPaths:[Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;

    array-length v0, v0

    if-ge v2, v0, :cond_5

    const/16 v0, 0x5b

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fLocationPaths:[Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;

    aget-object v0, v0, v2

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;->steps:[Lmf/org/apache/xerces/impl/xpath/XPath$Step;

    move v0, v1

    :goto_2
    array-length v5, v4

    if-ge v0, v5, :cond_3

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fCurrentStep:[I

    aget v5, v5, v2

    if-eq v0, v5, :cond_1

    :goto_3
    aget-object v5, v4, v0

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/xpath/XPath$Step;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    if-lt v0, v5, :cond_2

    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_2
    const/16 v5, 0x2f

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4

    :cond_3
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fCurrentStep:[I

    aget v0, v0, v2

    array-length v4, v4

    if-eq v0, v4, :cond_4

    :goto_5
    const/16 v0, 0x5d

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/16 v0, 0x2c

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_4
    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_5

    :cond_5
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
