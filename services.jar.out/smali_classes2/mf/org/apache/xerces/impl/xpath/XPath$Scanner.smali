.class Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;
.super Ljava/lang/Object;
.source "XPath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/impl/xpath/XPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Scanner"
.end annotation


# static fields
.field private static final CHARTYPE_ATSIGN:B = 0x13t

.field private static final CHARTYPE_CLOSE_BRACKET:B = 0x16t

.field private static final CHARTYPE_CLOSE_PAREN:B = 0x7t

.field private static final CHARTYPE_COLON:B = 0xft

.field private static final CHARTYPE_COMMA:B = 0xat

.field private static final CHARTYPE_DIGIT:B = 0xet

.field private static final CHARTYPE_DOLLAR:B = 0x5t

.field private static final CHARTYPE_EQUAL:B = 0x11t

.field private static final CHARTYPE_EXCLAMATION:B = 0x3t

.field private static final CHARTYPE_GREATER:B = 0x12t

.field private static final CHARTYPE_INVALID:B = 0x0t

.field private static final CHARTYPE_LESS:B = 0x10t

.field private static final CHARTYPE_LETTER:B = 0x14t

.field private static final CHARTYPE_MINUS:B = 0xbt

.field private static final CHARTYPE_NONASCII:B = 0x19t

.field private static final CHARTYPE_OPEN_BRACKET:B = 0x15t

.field private static final CHARTYPE_OPEN_PAREN:B = 0x6t

.field private static final CHARTYPE_OTHER:B = 0x1t

.field private static final CHARTYPE_PERIOD:B = 0xct

.field private static final CHARTYPE_PLUS:B = 0x9t

.field private static final CHARTYPE_QUOTE:B = 0x4t

.field private static final CHARTYPE_SLASH:B = 0xdt

.field private static final CHARTYPE_STAR:B = 0x8t

.field private static final CHARTYPE_UNDERSCORE:B = 0x17t

.field private static final CHARTYPE_UNION:B = 0x18t

.field private static final CHARTYPE_WHITESPACE:B = 0x2t

.field private static final fASCIICharMap:[B

.field private static final fAncestorOrSelfSymbol:Ljava/lang/String;

.field private static final fAncestorSymbol:Ljava/lang/String;

.field private static final fAndSymbol:Ljava/lang/String;

.field private static final fAttributeSymbol:Ljava/lang/String;

.field private static final fChildSymbol:Ljava/lang/String;

.field private static final fCommentSymbol:Ljava/lang/String;

.field private static final fDescendantOrSelfSymbol:Ljava/lang/String;

.field private static final fDescendantSymbol:Ljava/lang/String;

.field private static final fDivSymbol:Ljava/lang/String;

.field private static final fFollowingSiblingSymbol:Ljava/lang/String;

.field private static final fFollowingSymbol:Ljava/lang/String;

.field private static final fModSymbol:Ljava/lang/String;

.field private static final fNamespaceSymbol:Ljava/lang/String;

.field private static final fNodeSymbol:Ljava/lang/String;

.field private static final fOrSymbol:Ljava/lang/String;

.field private static final fPISymbol:Ljava/lang/String;

.field private static final fParentSymbol:Ljava/lang/String;

.field private static final fPrecedingSiblingSymbol:Ljava/lang/String;

.field private static final fPrecedingSymbol:Ljava/lang/String;

.field private static final fSelfSymbol:Ljava/lang/String;

.field private static final fTextSymbol:Ljava/lang/String;


# instance fields
.field private fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v2, 0x2

    const/16 v5, 0xe

    const/4 v4, 0x1

    const/16 v3, 0x14

    const/16 v0, 0x80

    new-array v0, v0, [B

    const/16 v1, 0x9

    aput-byte v2, v0, v1

    const/16 v1, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x20

    aput-byte v2, v0, v1

    const/16 v1, 0x21

    const/4 v2, 0x3

    aput-byte v2, v0, v1

    const/16 v1, 0x22

    aput-byte v6, v0, v1

    const/16 v1, 0x23

    aput-byte v4, v0, v1

    const/16 v1, 0x24

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x25

    aput-byte v4, v0, v1

    const/16 v1, 0x26

    aput-byte v4, v0, v1

    const/16 v1, 0x27

    aput-byte v6, v0, v1

    const/16 v1, 0x28

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    const/16 v1, 0x29

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0x2a

    const/16 v2, 0x8

    aput-byte v2, v0, v1

    const/16 v1, 0x2b

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    const/16 v1, 0x2c

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0x2d

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0x2e

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x2f

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x30

    aput-byte v5, v0, v1

    const/16 v1, 0x31

    aput-byte v5, v0, v1

    const/16 v1, 0x32

    aput-byte v5, v0, v1

    const/16 v1, 0x33

    aput-byte v5, v0, v1

    const/16 v1, 0x34

    aput-byte v5, v0, v1

    const/16 v1, 0x35

    aput-byte v5, v0, v1

    const/16 v1, 0x36

    aput-byte v5, v0, v1

    const/16 v1, 0x37

    aput-byte v5, v0, v1

    const/16 v1, 0x38

    aput-byte v5, v0, v1

    const/16 v1, 0x39

    aput-byte v5, v0, v1

    const/16 v1, 0x3a

    const/16 v2, 0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x3b

    aput-byte v4, v0, v1

    const/16 v1, 0x3c

    const/16 v2, 0x10

    aput-byte v2, v0, v1

    const/16 v1, 0x3d

    const/16 v2, 0x11

    aput-byte v2, v0, v1

    const/16 v1, 0x3e

    const/16 v2, 0x12

    aput-byte v2, v0, v1

    const/16 v1, 0x3f

    aput-byte v4, v0, v1

    const/16 v1, 0x40

    const/16 v2, 0x13

    aput-byte v2, v0, v1

    const/16 v1, 0x41

    aput-byte v3, v0, v1

    const/16 v1, 0x42

    aput-byte v3, v0, v1

    const/16 v1, 0x43

    aput-byte v3, v0, v1

    const/16 v1, 0x44

    aput-byte v3, v0, v1

    const/16 v1, 0x45

    aput-byte v3, v0, v1

    const/16 v1, 0x46

    aput-byte v3, v0, v1

    const/16 v1, 0x47

    aput-byte v3, v0, v1

    const/16 v1, 0x48

    aput-byte v3, v0, v1

    const/16 v1, 0x49

    aput-byte v3, v0, v1

    const/16 v1, 0x4a

    aput-byte v3, v0, v1

    const/16 v1, 0x4b

    aput-byte v3, v0, v1

    const/16 v1, 0x4c

    aput-byte v3, v0, v1

    const/16 v1, 0x4d

    aput-byte v3, v0, v1

    const/16 v1, 0x4e

    aput-byte v3, v0, v1

    const/16 v1, 0x4f

    aput-byte v3, v0, v1

    const/16 v1, 0x50

    aput-byte v3, v0, v1

    const/16 v1, 0x51

    aput-byte v3, v0, v1

    const/16 v1, 0x52

    aput-byte v3, v0, v1

    const/16 v1, 0x53

    aput-byte v3, v0, v1

    const/16 v1, 0x54

    aput-byte v3, v0, v1

    const/16 v1, 0x55

    aput-byte v3, v0, v1

    const/16 v1, 0x56

    aput-byte v3, v0, v1

    const/16 v1, 0x57

    aput-byte v3, v0, v1

    const/16 v1, 0x58

    aput-byte v3, v0, v1

    const/16 v1, 0x59

    aput-byte v3, v0, v1

    const/16 v1, 0x5a

    aput-byte v3, v0, v1

    const/16 v1, 0x5b

    const/16 v2, 0x15

    aput-byte v2, v0, v1

    const/16 v1, 0x5c

    aput-byte v4, v0, v1

    const/16 v1, 0x5d

    const/16 v2, 0x16

    aput-byte v2, v0, v1

    const/16 v1, 0x5e

    aput-byte v4, v0, v1

    const/16 v1, 0x5f

    const/16 v2, 0x17

    aput-byte v2, v0, v1

    const/16 v1, 0x60

    aput-byte v4, v0, v1

    const/16 v1, 0x61

    aput-byte v3, v0, v1

    const/16 v1, 0x62

    aput-byte v3, v0, v1

    const/16 v1, 0x63

    aput-byte v3, v0, v1

    const/16 v1, 0x64

    aput-byte v3, v0, v1

    const/16 v1, 0x65

    aput-byte v3, v0, v1

    const/16 v1, 0x66

    aput-byte v3, v0, v1

    const/16 v1, 0x67

    aput-byte v3, v0, v1

    const/16 v1, 0x68

    aput-byte v3, v0, v1

    const/16 v1, 0x69

    aput-byte v3, v0, v1

    const/16 v1, 0x6a

    aput-byte v3, v0, v1

    const/16 v1, 0x6b

    aput-byte v3, v0, v1

    const/16 v1, 0x6c

    aput-byte v3, v0, v1

    const/16 v1, 0x6d

    aput-byte v3, v0, v1

    const/16 v1, 0x6e

    aput-byte v3, v0, v1

    const/16 v1, 0x6f

    aput-byte v3, v0, v1

    const/16 v1, 0x70

    aput-byte v3, v0, v1

    const/16 v1, 0x71

    aput-byte v3, v0, v1

    const/16 v1, 0x72

    aput-byte v3, v0, v1

    const/16 v1, 0x73

    aput-byte v3, v0, v1

    const/16 v1, 0x74

    aput-byte v3, v0, v1

    const/16 v1, 0x75

    aput-byte v3, v0, v1

    const/16 v1, 0x76

    aput-byte v3, v0, v1

    const/16 v1, 0x77

    aput-byte v3, v0, v1

    const/16 v1, 0x78

    aput-byte v3, v0, v1

    const/16 v1, 0x79

    aput-byte v3, v0, v1

    const/16 v1, 0x7a

    aput-byte v3, v0, v1

    const/16 v1, 0x7b

    aput-byte v4, v0, v1

    const/16 v1, 0x7c

    const/16 v2, 0x18

    aput-byte v2, v0, v1

    const/16 v1, 0x7d

    aput-byte v4, v0, v1

    const/16 v1, 0x7e

    aput-byte v4, v0, v1

    const/16 v1, 0x7f

    aput-byte v4, v0, v1

    sput-object v0, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fASCIICharMap:[B

    const-string/jumbo v0, "and"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fAndSymbol:Ljava/lang/String;

    const-string/jumbo v0, "or"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fOrSymbol:Ljava/lang/String;

    const-string/jumbo v0, "mod"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fModSymbol:Ljava/lang/String;

    const-string/jumbo v0, "div"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fDivSymbol:Ljava/lang/String;

    const-string/jumbo v0, "comment"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fCommentSymbol:Ljava/lang/String;

    const-string/jumbo v0, "text"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fTextSymbol:Ljava/lang/String;

    const-string/jumbo v0, "processing-instruction"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fPISymbol:Ljava/lang/String;

    const-string/jumbo v0, "node"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fNodeSymbol:Ljava/lang/String;

    const-string/jumbo v0, "ancestor"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fAncestorSymbol:Ljava/lang/String;

    const-string/jumbo v0, "ancestor-or-self"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fAncestorOrSelfSymbol:Ljava/lang/String;

    const-string/jumbo v0, "attribute"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fAttributeSymbol:Ljava/lang/String;

    const-string/jumbo v0, "child"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fChildSymbol:Ljava/lang/String;

    const-string/jumbo v0, "descendant"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fDescendantSymbol:Ljava/lang/String;

    const-string/jumbo v0, "descendant-or-self"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fDescendantOrSelfSymbol:Ljava/lang/String;

    const-string/jumbo v0, "following"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fFollowingSymbol:Ljava/lang/String;

    const-string/jumbo v0, "following-sibling"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fFollowingSiblingSymbol:Ljava/lang/String;

    const-string/jumbo v0, "namespace"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fNamespaceSymbol:Ljava/lang/String;

    const-string/jumbo v0, "parent"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fParentSymbol:Ljava/lang/String;

    const-string/jumbo v0, "preceding"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fPrecedingSymbol:Ljava/lang/String;

    const-string/jumbo v0, "preceding-sibling"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fPrecedingSiblingSymbol:Ljava/lang/String;

    const-string/jumbo v0, "self"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fSelfSymbol:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/util/SymbolTable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    return-void
.end method

.method private scanNumber(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;Ljava/lang/String;II)I
    .locals 7

    const/16 v6, 0x39

    const/16 v5, 0x30

    const/4 v0, 0x0

    invoke-virtual {p2, p4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    move v4, v1

    move v2, p4

    move v1, v0

    :goto_0
    if-ge v4, v5, :cond_1

    move v3, v1

    move v1, v2

    :goto_1
    const/16 v2, 0x2e

    if-eq v4, v2, :cond_3

    :cond_0
    invoke-virtual {p1, v3}, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->addToken(I)V

    invoke-virtual {p1, v0}, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->addToken(I)V

    return v1

    :cond_1
    if-gt v4, v6, :cond_6

    mul-int/lit8 v1, v1, 0xa

    add-int/lit8 v3, v4, -0x30

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    if-eq v2, p3, :cond_2

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    move v4, v3

    goto :goto_0

    :cond_2
    move v3, v1

    move v1, v2

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    if-ge v1, p3, :cond_0

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    :goto_2
    if-ge v2, v5, :cond_5

    :cond_4
    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "find a solution!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    if-gt v2, v6, :cond_4

    mul-int/lit8 v0, v0, 0xa

    add-int/lit8 v2, v2, -0x30

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    if-eq v1, p3, :cond_4

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    goto :goto_2

    :cond_6
    move v3, v1

    move v1, v2

    goto :goto_1
.end method


# virtual methods
.method protected addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/XPathException;
        }
    .end annotation

    invoke-virtual {p1, p2}, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->addToken(I)V

    return-void
.end method

.method public scanExpr(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;Ljava/lang/String;II)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/XPathException;
        }
    .end annotation

    const/4 v0, 0x0

    move v7, v0

    move v1, p4

    :goto_0
    if-eq v1, p5, :cond_66

    invoke-virtual {p3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    move v3, v0

    :goto_1
    const/16 v0, 0x20

    if-ne v3, v0, :cond_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    if-eq v1, p5, :cond_2

    invoke-virtual {p3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    move v3, v0

    goto :goto_1

    :cond_1
    const/16 v0, 0xa

    if-eq v3, v0, :cond_0

    const/16 v0, 0x9

    if-eq v3, v0, :cond_0

    const/16 v0, 0xd

    if-eq v3, v0, :cond_0

    :cond_2
    if-eq v1, p5, :cond_66

    const/16 v0, 0x80

    if-ge v3, v0, :cond_3

    sget-object v0, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fASCIICharMap:[B

    aget-byte v0, v0, v3

    :goto_2
    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :cond_3
    const/16 v0, 0x19

    goto :goto_2

    :pswitch_0
    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    const/4 v0, 0x0

    add-int/lit8 v1, v1, 0x1

    if-eq v1, p5, :cond_4

    move v7, v0

    goto :goto_0

    :cond_4
    move v7, v0

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x1

    invoke-virtual {p0, p2, v0}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    const/4 v0, 0x1

    add-int/lit8 v1, v1, 0x1

    if-eq v1, p5, :cond_5

    move v7, v0

    goto :goto_0

    :cond_5
    move v7, v0

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x2

    invoke-virtual {p0, p2, v0}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    const/4 v0, 0x0

    add-int/lit8 v1, v1, 0x1

    if-eq v1, p5, :cond_6

    move v7, v0

    goto :goto_0

    :cond_6
    move v7, v0

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x3

    invoke-virtual {p0, p2, v0}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    const/4 v0, 0x1

    add-int/lit8 v1, v1, 0x1

    if-eq v1, p5, :cond_7

    move v7, v0

    goto :goto_0

    :cond_7
    move v7, v0

    goto :goto_0

    :pswitch_4
    add-int/lit8 v0, v1, 0x1

    if-eq v0, p5, :cond_c

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x2e

    if-eq v0, v2, :cond_d

    const/16 v2, 0x30

    if-ge v0, v2, :cond_e

    :cond_8
    const/16 v2, 0x2f

    if-eq v0, v2, :cond_f

    const/16 v2, 0x7c

    if-eq v0, v2, :cond_10

    const/16 v2, 0x20

    if-ne v0, v2, :cond_11

    :cond_9
    add-int/lit8 v1, v1, 0x1

    if-eq v1, p5, :cond_a

    invoke-virtual {p3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x20

    if-eq v0, v2, :cond_9

    const/16 v2, 0xa

    if-eq v0, v2, :cond_9

    const/16 v2, 0x9

    if-eq v0, v2, :cond_9

    const/16 v2, 0xd

    if-eq v0, v2, :cond_9

    :cond_a
    if-ne v1, p5, :cond_12

    :cond_b
    const/4 v0, 0x4

    invoke-virtual {p0, p2, v0}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    const/4 v0, 0x1

    move v7, v0

    goto/16 :goto_0

    :cond_c
    const/4 v0, 0x4

    invoke-virtual {p0, p2, v0}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    const/4 v0, 0x1

    add-int/lit8 v1, v1, 0x1

    move v7, v0

    goto/16 :goto_0

    :cond_d
    const/4 v0, 0x5

    invoke-virtual {p0, p2, v0}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    const/4 v0, 0x1

    add-int/lit8 v1, v1, 0x2

    :goto_3
    if-eq v1, p5, :cond_13

    move v7, v0

    goto/16 :goto_0

    :cond_e
    const/16 v2, 0x39

    if-gt v0, v2, :cond_8

    const/16 v0, 0x2f

    invoke-virtual {p0, p2, v0}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    const/4 v0, 0x1

    invoke-direct {p0, p2, p3, p5, v1}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->scanNumber(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;Ljava/lang/String;II)I

    move-result v1

    goto :goto_3

    :cond_f
    const/4 v0, 0x4

    invoke-virtual {p0, p2, v0}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    const/4 v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_10
    const/4 v0, 0x4

    invoke-virtual {p0, p2, v0}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    const/4 v0, 0x1

    add-int/lit8 v1, v1, 0x1

    move v7, v0

    goto/16 :goto_0

    :cond_11
    const/16 v2, 0xa

    if-eq v0, v2, :cond_9

    const/16 v2, 0x9

    if-eq v0, v2, :cond_9

    const/16 v2, 0xd

    if-eq v0, v2, :cond_9

    new-instance v0, Lmf/org/apache/xerces/impl/xpath/XPathException;

    const-string/jumbo v1, "c-general-xpath"

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/impl/xpath/XPathException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    const/16 v2, 0x7c

    if-eq v0, v2, :cond_b

    new-instance v0, Lmf/org/apache/xerces/impl/xpath/XPathException;

    const-string/jumbo v1, "c-general-xpath"

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/impl/xpath/XPathException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    move v7, v0

    goto/16 :goto_0

    :pswitch_5
    const/4 v0, 0x6

    invoke-virtual {p0, p2, v0}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    const/4 v0, 0x0

    add-int/lit8 v1, v1, 0x1

    if-eq v1, p5, :cond_14

    move v7, v0

    goto/16 :goto_0

    :cond_14
    move v7, v0

    goto/16 :goto_0

    :pswitch_6
    const/4 v0, 0x7

    invoke-virtual {p0, p2, v0}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    const/4 v0, 0x0

    add-int/lit8 v1, v1, 0x1

    if-eq v1, p5, :cond_15

    move v7, v0

    goto/16 :goto_0

    :cond_15
    move v7, v0

    goto/16 :goto_0

    :pswitch_7
    add-int/lit8 v1, v1, 0x1

    if-eq v1, p5, :cond_16

    invoke-virtual {p3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x3a

    if-ne v0, v2, :cond_17

    const/16 v0, 0x8

    invoke-virtual {p0, p2, v0}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    const/4 v0, 0x0

    add-int/lit8 v1, v1, 0x1

    if-eq v1, p5, :cond_18

    move v7, v0

    goto/16 :goto_0

    :cond_16
    const/4 v0, 0x0

    return v0

    :cond_17
    const/4 v0, 0x0

    return v0

    :cond_18
    move v7, v0

    goto/16 :goto_0

    :pswitch_8
    add-int/lit8 v1, v1, 0x1

    if-eq v1, p5, :cond_19

    invoke-virtual {p3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x2f

    if-eq v0, v2, :cond_1a

    const/16 v0, 0x15

    invoke-virtual {p0, p2, v0}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    const/4 v0, 0x0

    move v7, v0

    goto/16 :goto_0

    :cond_19
    const/16 v0, 0x15

    invoke-virtual {p0, p2, v0}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    const/4 v0, 0x0

    move v7, v0

    goto/16 :goto_0

    :cond_1a
    const/16 v0, 0x16

    invoke-virtual {p0, p2, v0}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    const/4 v0, 0x0

    add-int/lit8 v1, v1, 0x1

    if-eq v1, p5, :cond_1b

    move v7, v0

    goto/16 :goto_0

    :cond_1b
    move v7, v0

    goto/16 :goto_0

    :pswitch_9
    const/16 v0, 0x17

    invoke-virtual {p0, p2, v0}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    const/4 v0, 0x0

    add-int/lit8 v1, v1, 0x1

    if-eq v1, p5, :cond_1c

    move v7, v0

    goto/16 :goto_0

    :cond_1c
    move v7, v0

    goto/16 :goto_0

    :pswitch_a
    const/16 v0, 0x18

    invoke-virtual {p0, p2, v0}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    const/4 v0, 0x0

    add-int/lit8 v1, v1, 0x1

    if-eq v1, p5, :cond_1d

    move v7, v0

    goto/16 :goto_0

    :cond_1d
    move v7, v0

    goto/16 :goto_0

    :pswitch_b
    const/16 v0, 0x19

    invoke-virtual {p0, p2, v0}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    const/4 v0, 0x0

    add-int/lit8 v1, v1, 0x1

    if-eq v1, p5, :cond_1e

    move v7, v0

    goto/16 :goto_0

    :cond_1e
    move v7, v0

    goto/16 :goto_0

    :pswitch_c
    const/16 v0, 0x1a

    invoke-virtual {p0, p2, v0}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    const/4 v0, 0x0

    add-int/lit8 v1, v1, 0x1

    if-eq v1, p5, :cond_1f

    move v7, v0

    goto/16 :goto_0

    :cond_1f
    move v7, v0

    goto/16 :goto_0

    :pswitch_d
    add-int/lit8 v1, v1, 0x1

    if-eq v1, p5, :cond_20

    invoke-virtual {p3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x3d

    if-ne v0, v2, :cond_21

    const/16 v0, 0x1b

    invoke-virtual {p0, p2, v0}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    const/4 v0, 0x0

    add-int/lit8 v1, v1, 0x1

    if-eq v1, p5, :cond_22

    move v7, v0

    goto/16 :goto_0

    :cond_20
    const/4 v0, 0x0

    return v0

    :cond_21
    const/4 v0, 0x0

    return v0

    :cond_22
    move v7, v0

    goto/16 :goto_0

    :pswitch_e
    add-int/lit8 v1, v1, 0x1

    if-eq v1, p5, :cond_23

    invoke-virtual {p3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x3d

    if-eq v0, v2, :cond_24

    const/16 v0, 0x1c

    invoke-virtual {p0, p2, v0}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    const/4 v0, 0x0

    move v7, v0

    goto/16 :goto_0

    :cond_23
    const/16 v0, 0x1c

    invoke-virtual {p0, p2, v0}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    const/4 v0, 0x0

    move v7, v0

    goto/16 :goto_0

    :cond_24
    const/16 v0, 0x1d

    invoke-virtual {p0, p2, v0}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    const/4 v0, 0x0

    add-int/lit8 v1, v1, 0x1

    if-eq v1, p5, :cond_25

    move v7, v0

    goto/16 :goto_0

    :cond_25
    move v7, v0

    goto/16 :goto_0

    :pswitch_f
    add-int/lit8 v1, v1, 0x1

    if-eq v1, p5, :cond_26

    invoke-virtual {p3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x3d

    if-eq v0, v2, :cond_27

    const/16 v0, 0x1e

    invoke-virtual {p0, p2, v0}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    const/4 v0, 0x0

    move v7, v0

    goto/16 :goto_0

    :cond_26
    const/16 v0, 0x1e

    invoke-virtual {p0, p2, v0}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    const/4 v0, 0x0

    move v7, v0

    goto/16 :goto_0

    :cond_27
    const/16 v0, 0x1f

    invoke-virtual {p0, p2, v0}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    const/4 v0, 0x0

    add-int/lit8 v1, v1, 0x1

    if-eq v1, p5, :cond_28

    move v7, v0

    goto/16 :goto_0

    :cond_28
    move v7, v0

    goto/16 :goto_0

    :pswitch_10
    add-int/lit8 v2, v1, 0x1

    if-eq v2, p5, :cond_29

    invoke-virtual {p3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    move v1, v2

    :goto_4
    if-eq v0, v3, :cond_2b

    add-int/lit8 v1, v1, 0x1

    if-eq v1, p5, :cond_2a

    invoke-virtual {p3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_4

    :cond_29
    const/4 v0, 0x0

    return v0

    :cond_2a
    const/4 v0, 0x0

    return v0

    :cond_2b
    sub-int v3, v1, v2

    const/16 v0, 0x2e

    invoke-virtual {p0, p2, v0}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    const/4 v0, 0x1

    add-int/2addr v3, v2

    invoke-virtual {p3, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->addToken(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    if-eq v1, p5, :cond_2c

    move v7, v0

    goto/16 :goto_0

    :cond_2c
    move v7, v0

    goto/16 :goto_0

    :pswitch_11
    const/16 v0, 0x2f

    invoke-virtual {p0, p2, v0}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    const/4 v0, 0x1

    invoke-direct {p0, p2, p3, p5, v1}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->scanNumber(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;Ljava/lang/String;II)I

    move-result v1

    move v7, v0

    goto/16 :goto_0

    :pswitch_12
    add-int/lit8 v1, v1, 0x1

    if-eq v1, p5, :cond_2d

    invoke-virtual {p0, p3, p5, v1}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->scanNCName(Ljava/lang/String;II)I

    move-result v2

    if-eq v2, v1, :cond_2e

    if-lt v2, p5, :cond_2f

    const/4 v0, -0x1

    :goto_5
    invoke-virtual {p3, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x3a

    if-ne v0, v3, :cond_30

    add-int/lit8 v0, v2, 0x1

    if-eq v0, p5, :cond_31

    invoke-virtual {p0, p3, p5, v0}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->scanNCName(Ljava/lang/String;II)I

    move-result v2

    if-eq v2, v0, :cond_32

    if-lt v2, p5, :cond_33

    :goto_6
    invoke-virtual {p3, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    :goto_7
    const/16 v3, 0x30

    invoke-virtual {p0, p2, v3}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    const/4 v3, 0x1

    invoke-virtual {p2, v0}, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->addToken(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->addToken(Ljava/lang/String;)V

    move v7, v3

    move v1, v2

    goto/16 :goto_0

    :cond_2d
    const/4 v0, 0x0

    return v0

    :cond_2e
    const/4 v0, 0x0

    return v0

    :cond_2f
    invoke-virtual {p3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_5

    :cond_30
    sget-object v0, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    goto :goto_7

    :cond_31
    const/4 v0, 0x0

    return v0

    :cond_32
    const/4 v0, 0x0

    return v0

    :cond_33
    invoke-virtual {p3, v2}, Ljava/lang/String;->charAt(I)C

    goto :goto_6

    :pswitch_13
    if-nez v7, :cond_34

    const/16 v0, 0x9

    invoke-virtual {p0, p2, v0}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    const/4 v0, 0x1

    :goto_8
    add-int/lit8 v1, v1, 0x1

    if-eq v1, p5, :cond_35

    move v7, v0

    goto/16 :goto_0

    :cond_34
    const/16 v0, 0x14

    invoke-virtual {p0, p2, v0}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    const/4 v0, 0x0

    goto :goto_8

    :cond_35
    move v7, v0

    goto/16 :goto_0

    :pswitch_14
    invoke-virtual {p0, p3, p5, v1}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->scanNCName(Ljava/lang/String;II)I

    move-result v5

    if-eq v5, v1, :cond_37

    if-lt v5, p5, :cond_38

    const/4 v0, -0x1

    :goto_9
    invoke-virtual {p3, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x0

    const/4 v1, 0x0

    sget-object v3, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    const/16 v6, 0x3a

    if-eq v0, v6, :cond_39

    move v6, v0

    move v0, v5

    move-object v5, v4

    move-object v4, v3

    move v3, v2

    move v2, v1

    :goto_a
    const/16 v1, 0x20

    if-ne v6, v1, :cond_44

    :cond_36
    add-int/lit8 v0, v0, 0x1

    if-eq v0, p5, :cond_41

    invoke-virtual {p3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    move v6, v1

    goto :goto_a

    :cond_37
    const/4 v0, 0x0

    return v0

    :cond_38
    invoke-virtual {p3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_9

    :cond_39
    add-int/lit8 v6, v5, 0x1

    if-eq v6, p5, :cond_3a

    invoke-virtual {p3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v5, 0x2a

    if-eq v0, v5, :cond_3b

    const/16 v5, 0x3a

    if-eq v0, v5, :cond_3d

    invoke-virtual {p0, p3, p5, v6}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->scanNCName(Ljava/lang/String;II)I

    move-result v5

    if-eq v5, v6, :cond_3f

    if-lt v5, p5, :cond_40

    const/4 v0, -0x1

    :goto_b
    invoke-virtual {p3, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move v6, v0

    move v0, v5

    move-object v5, v3

    move v3, v2

    move v2, v1

    goto :goto_a

    :cond_3a
    const/4 v0, 0x0

    return v0

    :cond_3b
    add-int/lit8 v5, v6, 0x1

    if-lt v5, p5, :cond_3c

    :goto_c
    const/4 v2, 0x1

    move v6, v0

    move v0, v5

    move-object v5, v4

    move-object v4, v3

    move v3, v2

    move v2, v1

    goto :goto_a

    :cond_3c
    invoke-virtual {p3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_c

    :cond_3d
    add-int/lit8 v5, v6, 0x1

    if-lt v5, p5, :cond_3e

    :goto_d
    const/4 v1, 0x1

    move v6, v0

    move v0, v5

    move-object v5, v4

    move-object v4, v3

    move v3, v2

    move v2, v1

    goto :goto_a

    :cond_3e
    invoke-virtual {p3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_d

    :cond_3f
    const/4 v0, 0x0

    return v0

    :cond_40
    invoke-virtual {p3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_b

    :cond_41
    move v1, v0

    :goto_e
    if-nez v7, :cond_45

    const/16 v0, 0x28

    if-eq v6, v0, :cond_4c

    :cond_42
    if-eqz v2, :cond_52

    :cond_43
    sget-object v0, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fAncestorSymbol:Ljava/lang/String;

    if-eq v5, v0, :cond_55

    sget-object v0, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fAncestorOrSelfSymbol:Ljava/lang/String;

    if-eq v5, v0, :cond_56

    sget-object v0, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fAttributeSymbol:Ljava/lang/String;

    if-eq v5, v0, :cond_57

    sget-object v0, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fChildSymbol:Ljava/lang/String;

    if-eq v5, v0, :cond_58

    sget-object v0, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fDescendantSymbol:Ljava/lang/String;

    if-eq v5, v0, :cond_59

    sget-object v0, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fDescendantOrSelfSymbol:Ljava/lang/String;

    if-eq v5, v0, :cond_5a

    sget-object v0, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fFollowingSymbol:Ljava/lang/String;

    if-eq v5, v0, :cond_5b

    sget-object v0, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fFollowingSiblingSymbol:Ljava/lang/String;

    if-eq v5, v0, :cond_5c

    sget-object v0, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fNamespaceSymbol:Ljava/lang/String;

    if-eq v5, v0, :cond_5d

    sget-object v0, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fParentSymbol:Ljava/lang/String;

    if-eq v5, v0, :cond_5e

    sget-object v0, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fPrecedingSymbol:Ljava/lang/String;

    if-eq v5, v0, :cond_5f

    sget-object v0, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fPrecedingSiblingSymbol:Ljava/lang/String;

    if-eq v5, v0, :cond_60

    sget-object v0, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fSelfSymbol:Ljava/lang/String;

    if-eq v5, v0, :cond_61

    const/4 v0, 0x0

    return v0

    :cond_44
    const/16 v1, 0xa

    if-eq v6, v1, :cond_36

    const/16 v1, 0x9

    if-eq v6, v1, :cond_36

    const/16 v1, 0xd

    if-eq v6, v1, :cond_36

    move v1, v0

    goto :goto_e

    :cond_45
    sget-object v0, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fAndSymbol:Ljava/lang/String;

    if-eq v5, v0, :cond_46

    sget-object v0, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fOrSymbol:Ljava/lang/String;

    if-eq v5, v0, :cond_47

    sget-object v0, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fModSymbol:Ljava/lang/String;

    if-eq v5, v0, :cond_48

    sget-object v0, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fDivSymbol:Ljava/lang/String;

    if-eq v5, v0, :cond_49

    const/4 v0, 0x0

    return v0

    :cond_46
    const/16 v0, 0x10

    invoke-virtual {p0, p2, v0}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    const/4 v0, 0x0

    :goto_f
    if-nez v3, :cond_4a

    if-nez v2, :cond_4b

    move v7, v0

    goto/16 :goto_0

    :cond_47
    const/16 v0, 0x11

    invoke-virtual {p0, p2, v0}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    const/4 v0, 0x0

    goto :goto_f

    :cond_48
    const/16 v0, 0x12

    invoke-virtual {p0, p2, v0}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    const/4 v0, 0x0

    goto :goto_f

    :cond_49
    const/16 v0, 0x13

    invoke-virtual {p0, p2, v0}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    const/4 v0, 0x0

    goto :goto_f

    :cond_4a
    const/4 v0, 0x0

    return v0

    :cond_4b
    const/4 v0, 0x0

    return v0

    :cond_4c
    if-nez v3, :cond_42

    if-nez v2, :cond_42

    sget-object v0, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fCommentSymbol:Ljava/lang/String;

    if-eq v5, v0, :cond_4d

    sget-object v0, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fTextSymbol:Ljava/lang/String;

    if-eq v5, v0, :cond_4e

    sget-object v0, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fPISymbol:Ljava/lang/String;

    if-eq v5, v0, :cond_4f

    sget-object v0, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fNodeSymbol:Ljava/lang/String;

    if-eq v5, v0, :cond_50

    const/16 v0, 0x20

    invoke-virtual {p0, p2, v0}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    invoke-virtual {p2, v4}, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->addToken(Ljava/lang/String;)V

    invoke-virtual {p2, v5}, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->addToken(Ljava/lang/String;)V

    :goto_10
    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    const/4 v0, 0x0

    add-int/lit8 v1, v1, 0x1

    if-eq v1, p5, :cond_51

    move v7, v0

    goto/16 :goto_0

    :cond_4d
    const/16 v0, 0xc

    invoke-virtual {p0, p2, v0}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    goto :goto_10

    :cond_4e
    const/16 v0, 0xd

    invoke-virtual {p0, p2, v0}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    goto :goto_10

    :cond_4f
    const/16 v0, 0xe

    invoke-virtual {p0, p2, v0}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    goto :goto_10

    :cond_50
    const/16 v0, 0xf

    invoke-virtual {p0, p2, v0}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    goto :goto_10

    :cond_51
    move v7, v0

    goto/16 :goto_0

    :cond_52
    const/16 v0, 0x3a

    if-eq v6, v0, :cond_54

    :cond_53
    :goto_11
    if-nez v3, :cond_65

    const/16 v0, 0xb

    invoke-virtual {p0, p2, v0}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    const/4 v0, 0x1

    invoke-virtual {p2, v4}, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->addToken(Ljava/lang/String;)V

    invoke-virtual {p2, v5}, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->addToken(Ljava/lang/String;)V

    move v7, v0

    goto/16 :goto_0

    :cond_54
    add-int/lit8 v0, v1, 0x1

    if-ge v0, p5, :cond_53

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v6, 0x3a

    if-eq v0, v6, :cond_43

    goto :goto_11

    :cond_55
    const/16 v0, 0x21

    invoke-virtual {p0, p2, v0}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    :goto_12
    if-nez v3, :cond_62

    const/16 v0, 0x8

    invoke-virtual {p0, p2, v0}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    const/4 v0, 0x0

    if-eqz v2, :cond_63

    move v7, v0

    goto/16 :goto_0

    :cond_56
    const/16 v0, 0x22

    invoke-virtual {p0, p2, v0}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    goto :goto_12

    :cond_57
    const/16 v0, 0x23

    invoke-virtual {p0, p2, v0}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    goto :goto_12

    :cond_58
    const/16 v0, 0x24

    invoke-virtual {p0, p2, v0}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    goto :goto_12

    :cond_59
    const/16 v0, 0x25

    invoke-virtual {p0, p2, v0}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    goto :goto_12

    :cond_5a
    const/16 v0, 0x26

    invoke-virtual {p0, p2, v0}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    goto :goto_12

    :cond_5b
    const/16 v0, 0x27

    invoke-virtual {p0, p2, v0}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    goto :goto_12

    :cond_5c
    const/16 v0, 0x28

    invoke-virtual {p0, p2, v0}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    goto :goto_12

    :cond_5d
    const/16 v0, 0x29

    invoke-virtual {p0, p2, v0}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    goto :goto_12

    :cond_5e
    const/16 v0, 0x2a

    invoke-virtual {p0, p2, v0}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    goto :goto_12

    :cond_5f
    const/16 v0, 0x2b

    invoke-virtual {p0, p2, v0}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    goto :goto_12

    :cond_60
    const/16 v0, 0x2c

    invoke-virtual {p0, p2, v0}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    goto :goto_12

    :cond_61
    const/16 v0, 0x2d

    invoke-virtual {p0, p2, v0}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    goto :goto_12

    :cond_62
    const/4 v0, 0x0

    return v0

    :cond_63
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, 0x1

    if-eq v1, p5, :cond_64

    move v7, v0

    goto/16 :goto_0

    :cond_64
    move v7, v0

    goto/16 :goto_0

    :cond_65
    const/16 v0, 0xa

    invoke-virtual {p0, p2, v0}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    const/4 v0, 0x1

    invoke-virtual {p2, v5}, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->addToken(Ljava/lang/String;)V

    move v7, v0

    goto/16 :goto_0

    :cond_66
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_d
        :pswitch_10
        :pswitch_12
        :pswitch_0
        :pswitch_1
        :pswitch_13
        :pswitch_a
        :pswitch_6
        :pswitch_b
        :pswitch_4
        :pswitch_8
        :pswitch_11
        :pswitch_7
        :pswitch_e
        :pswitch_c
        :pswitch_f
        :pswitch_5
        :pswitch_14
        :pswitch_2
        :pswitch_3
        :pswitch_14
        :pswitch_9
        :pswitch_14
    .end packed-switch
.end method

.method scanNCName(Ljava/lang/String;II)I
    .locals 5

    const/16 v4, 0x80

    const/16 v3, 0x17

    const/16 v2, 0x14

    invoke-virtual {p1, p3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ge v0, v4, :cond_2

    sget-object v1, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fASCIICharMap:[B

    aget-byte v0, v1, v0

    if-ne v0, v2, :cond_3

    :cond_0
    :goto_0
    add-int/lit8 p3, p3, 0x1

    if-ge p3, p2, :cond_1

    invoke-virtual {p1, p3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ge v0, v4, :cond_4

    sget-object v1, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fASCIICharMap:[B

    aget-byte v0, v1, v0

    if-eq v0, v2, :cond_0

    const/16 v1, 0xe

    if-eq v0, v1, :cond_0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    if-eq v0, v3, :cond_0

    :cond_1
    return p3

    :cond_2
    invoke-static {v0}, Lmf/org/apache/xerces/util/XMLChar;->isNameStart(I)Z

    move-result v0

    if-nez v0, :cond_0

    return p3

    :cond_3
    if-eq v0, v3, :cond_0

    return p3

    :cond_4
    invoke-static {v0}, Lmf/org/apache/xerces/util/XMLChar;->isName(I)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0
.end method
