.class Lmf/org/apache/xerces/xpointer/XPointerHandler$Scanner;
.super Ljava/lang/Object;
.source "XPointerHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/xpointer/XPointerHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Scanner"
.end annotation


# static fields
.field private static final CHARTYPE_CARRET:B = 0x3t

.field private static final CHARTYPE_CLOSE_PAREN:B = 0x5t

.field private static final CHARTYPE_COLON:B = 0xat

.field private static final CHARTYPE_DIGIT:B = 0x9t

.field private static final CHARTYPE_EQUAL:B = 0xbt

.field private static final CHARTYPE_INVALID:B = 0x0t

.field private static final CHARTYPE_LETTER:B = 0xct

.field private static final CHARTYPE_MINUS:B = 0x6t

.field private static final CHARTYPE_NONASCII:B = 0xet

.field private static final CHARTYPE_OPEN_PAREN:B = 0x4t

.field private static final CHARTYPE_OTHER:B = 0x1t

.field private static final CHARTYPE_PERIOD:B = 0x7t

.field private static final CHARTYPE_SLASH:B = 0x8t

.field private static final CHARTYPE_UNDERSCORE:B = 0xdt

.field private static final CHARTYPE_WHITESPACE:B = 0x2t


# instance fields
.field private final fASCIICharMap:[B

.field private fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

.field final synthetic this$0:Lmf/org/apache/xerces/xpointer/XPointerHandler;


# direct methods
.method private constructor <init>(Lmf/org/apache/xerces/xpointer/XPointerHandler;Lmf/org/apache/xerces/util/SymbolTable;)V
    .locals 7

    const/16 v6, 0xa

    const/4 v2, 0x2

    const/16 v5, 0x9

    const/4 v4, 0x1

    const/16 v3, 0xc

    iput-object p1, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Scanner;->this$0:Lmf/org/apache/xerces/xpointer/XPointerHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x80

    new-array v0, v0, [B

    aput-byte v2, v0, v5

    aput-byte v2, v0, v6

    const/16 v1, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x20

    aput-byte v2, v0, v1

    const/16 v1, 0x21

    aput-byte v4, v0, v1

    const/16 v1, 0x22

    aput-byte v4, v0, v1

    const/16 v1, 0x23

    aput-byte v4, v0, v1

    const/16 v1, 0x24

    aput-byte v4, v0, v1

    const/16 v1, 0x25

    aput-byte v4, v0, v1

    const/16 v1, 0x26

    aput-byte v4, v0, v1

    const/16 v1, 0x27

    aput-byte v4, v0, v1

    const/16 v1, 0x28

    const/4 v2, 0x4

    aput-byte v2, v0, v1

    const/16 v1, 0x29

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x2a

    aput-byte v4, v0, v1

    const/16 v1, 0x2b

    aput-byte v4, v0, v1

    const/16 v1, 0x2c

    aput-byte v4, v0, v1

    const/16 v1, 0x2d

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    const/16 v1, 0x2e

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0x2f

    const/16 v2, 0x8

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

    aput-byte v6, v0, v1

    const/16 v1, 0x3b

    aput-byte v4, v0, v1

    const/16 v1, 0x3c

    aput-byte v4, v0, v1

    const/16 v1, 0x3d

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0x3e

    aput-byte v4, v0, v1

    const/16 v1, 0x3f

    aput-byte v4, v0, v1

    const/16 v1, 0x40

    aput-byte v4, v0, v1

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

    aput-byte v4, v0, v1

    const/16 v1, 0x5c

    aput-byte v4, v0, v1

    const/16 v1, 0x5d

    aput-byte v4, v0, v1

    const/16 v1, 0x5e

    const/4 v2, 0x3

    aput-byte v2, v0, v1

    const/16 v1, 0x5f

    const/16 v2, 0xd

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

    aput-byte v4, v0, v1

    const/16 v1, 0x7d

    aput-byte v4, v0, v1

    const/16 v1, 0x7e

    aput-byte v4, v0, v1

    const/16 v1, 0x7f

    aput-byte v4, v0, v1

    iput-object v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Scanner;->fASCIICharMap:[B

    iput-object p2, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Scanner;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    return-void
.end method

.method synthetic constructor <init>(Lmf/org/apache/xerces/xpointer/XPointerHandler;Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xpointer/XPointerHandler$Scanner;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Scanner;-><init>(Lmf/org/apache/xerces/xpointer/XPointerHandler;Lmf/org/apache/xerces/util/SymbolTable;)V

    return-void
.end method

.method static synthetic access$1(Lmf/org/apache/xerces/xpointer/XPointerHandler$Scanner;Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;Ljava/lang/String;II)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    invoke-direct/range {p0 .. p5}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Scanner;->scanExpr(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method private scanData(Ljava/lang/String;Ljava/lang/StringBuffer;II)I
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/16 v5, 0x80

    const/16 v1, 0xe

    const/4 v4, 0x5

    move v2, p4

    :goto_0
    if-eq v2, p3, :cond_0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ge v3, v5, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Scanner;->fASCIICharMap:[B

    aget-byte v0, v0, v3

    :goto_1
    if-eq v0, v7, :cond_2

    if-eq v0, v4, :cond_6

    if-eq v0, v6, :cond_7

    int-to-char v0, v3

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_2
    return v0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v2, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Scanner;->scanData(Ljava/lang/String;Ljava/lang/StringBuffer;II)I

    move-result v2

    if-eq v2, p3, :cond_3

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ge v3, v5, :cond_4

    iget-object v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Scanner;->fASCIICharMap:[B

    aget-byte v0, v0, v3

    :goto_3
    if-ne v0, v4, :cond_5

    int-to-char v0, v3

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v2

    :cond_4
    move v0, v1

    goto :goto_3

    :cond_5
    return p3

    :cond_6
    return v2

    :cond_7
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ge v3, v5, :cond_9

    iget-object v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Scanner;->fASCIICharMap:[B

    aget-byte v0, v0, v3

    :goto_4
    if-ne v0, v6, :cond_a

    :cond_8
    int-to-char v0, v3

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_9
    move v0, v1

    goto :goto_4

    :cond_a
    if-eq v0, v7, :cond_8

    if-eq v0, v4, :cond_8

    move v0, v2

    goto :goto_2
.end method

.method private scanExpr(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;Ljava/lang/String;II)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x0

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    move-object v3, v2

    move v4, v0

    move v5, v1

    move v1, p4

    :goto_0
    if-eq v1, p5, :cond_11

    invoke-virtual {p3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    move v2, v0

    move v0, v1

    :goto_1
    const/16 v1, 0x20

    if-ne v2, v1, :cond_3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    if-eq v0, p5, :cond_1

    invoke-virtual {p3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    move v2, v1

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_2
    if-eq v1, p5, :cond_11

    const/16 v0, 0x80

    if-ge v2, v0, :cond_4

    iget-object v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Scanner;->fASCIICharMap:[B

    aget-byte v0, v0, v2

    :goto_3
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    if-eqz v5, :cond_5

    if-gtz v5, :cond_e

    :cond_2
    const/4 v0, 0x0

    return v0

    :cond_3
    const/16 v1, 0xa

    if-eq v2, v1, :cond_0

    const/16 v1, 0x9

    if-eq v2, v1, :cond_0

    const/16 v1, 0xd

    if-eq v2, v1, :cond_0

    move v1, v0

    goto :goto_2

    :cond_4
    const/16 v0, 0xe

    goto :goto_3

    :pswitch_1
    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Scanner;->addToken(Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;I)V

    add-int/lit8 v0, v5, 0x1

    add-int/lit8 v1, v1, 0x1

    move v5, v0

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x1

    invoke-virtual {p0, p2, v0}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Scanner;->addToken(Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;I)V

    add-int/lit8 v0, v4, 0x1

    add-int/lit8 v1, v1, 0x1

    move v4, v0

    goto :goto_0

    :cond_5
    invoke-direct {p0, p3, p5, v1}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Scanner;->scanNCName(Ljava/lang/String;II)I

    move-result v3

    if-eq v3, v1, :cond_6

    if-lt v3, p5, :cond_7

    const/4 v0, -0x1

    :goto_4
    invoke-virtual {p3, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v1, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    const/16 v4, 0x3a

    if-eq v0, v4, :cond_8

    move-object v0, v1

    move v1, v3

    :goto_5
    if-ne v1, p5, :cond_c

    if-eq v1, p5, :cond_d

    :goto_6
    const/4 v0, 0x0

    move-object v3, v2

    move v4, v0

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Scanner;->this$0:Lmf/org/apache/xerces/xpointer/XPointerHandler;

    const-string/jumbo v1, "InvalidShortHandPointer"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    invoke-static {v0, v1, v2}, Lmf/org/apache/xerces/xpointer/XPointerHandler;->access$0(Lmf/org/apache/xerces/xpointer/XPointerHandler;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    return v0

    :cond_7
    invoke-virtual {p3, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_4

    :cond_8
    add-int/lit8 v0, v3, 0x1

    if-eq v0, p5, :cond_9

    invoke-virtual {p3, v0}, Ljava/lang/String;->charAt(I)C

    invoke-direct {p0, p3, p5, v0}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Scanner;->scanNCName(Ljava/lang/String;II)I

    move-result v1

    if-eq v1, v0, :cond_a

    if-lt v1, p5, :cond_b

    :goto_7
    invoke-virtual {p3, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v7, v2

    move-object v2, v0

    move-object v0, v7

    goto :goto_5

    :cond_9
    const/4 v0, 0x0

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0

    :cond_b
    invoke-virtual {p3, v1}, Ljava/lang/String;->charAt(I)C

    goto :goto_7

    :cond_c
    const/4 v3, 0x3

    invoke-virtual {p0, p2, v3}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Scanner;->addToken(Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;I)V

    invoke-static {p2, v0}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->access$0(Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;Ljava/lang/String;)V

    invoke-static {p2, v2}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->access$0(Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;Ljava/lang/String;)V

    goto :goto_6

    :cond_d
    const/4 v0, 0x2

    invoke-virtual {p0, p2, v0}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Scanner;->addToken(Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;I)V

    invoke-static {p2, v2}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->access$0(Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;Ljava/lang/String;)V

    goto :goto_6

    :cond_e
    if-nez v4, :cond_2

    if-eqz v3, :cond_2

    invoke-direct {p0, p3, v6, p5, v1}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Scanner;->scanData(Ljava/lang/String;Ljava/lang/StringBuffer;II)I

    move-result p4

    if-eq p4, v1, :cond_f

    if-lt p4, p5, :cond_10

    :goto_8
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p0, p2, v1}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Scanner;->addToken(Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;I)V

    invoke-static {p2, v0}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->access$0(Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    move v5, v0

    move v1, p4

    goto/16 :goto_0

    :cond_f
    iget-object v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Scanner;->this$0:Lmf/org/apache/xerces/xpointer/XPointerHandler;

    const-string/jumbo v1, "InvalidSchemeDataInXPointer"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    invoke-static {v0, v1, v2}, Lmf/org/apache/xerces/xpointer/XPointerHandler;->access$0(Lmf/org/apache/xerces/xpointer/XPointerHandler;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    return v0

    :cond_10
    invoke-virtual {p3, p4}, Ljava/lang/String;->charAt(I)C

    goto :goto_8

    :cond_11
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private scanNCName(Ljava/lang/String;II)I
    .locals 5

    const/16 v4, 0x80

    const/16 v3, 0xd

    const/16 v2, 0xc

    invoke-virtual {p1, p3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ge v0, v4, :cond_2

    iget-object v1, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Scanner;->fASCIICharMap:[B

    aget-byte v0, v1, v0

    if-ne v0, v2, :cond_3

    :cond_0
    :goto_0
    add-int/lit8 p3, p3, 0x1

    if-ge p3, p2, :cond_1

    invoke-virtual {p1, p3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ge v0, v4, :cond_4

    iget-object v1, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Scanner;->fASCIICharMap:[B

    aget-byte v0, v1, v0

    if-eq v0, v2, :cond_0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    const/4 v1, 0x6

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


# virtual methods
.method protected addToken(Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    invoke-static {p1, p2}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->access$1(Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;I)V

    return-void
.end method
