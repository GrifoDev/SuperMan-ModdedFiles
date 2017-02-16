.class public Lsun/net/www/ParseUtil;
.super Ljava/lang/Object;
.source "ParseUtil.java"


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final H_ALPHA:J

.field private static final H_ALPHANUM:J

.field private static final H_DASH:J

.field private static final H_DIGIT:J = 0x0L

.field private static final H_ESCAPED:J = 0x0L

.field private static final H_HEX:J

.field private static final H_LOWALPHA:J

.field private static final H_MARK:J

.field private static final H_PATH:J

.field private static final H_PCHAR:J

.field private static final H_REG_NAME:J

.field private static final H_RESERVED:J

.field private static final H_SERVER:J

.field private static final H_UNRESERVED:J

.field private static final H_UPALPHA:J

.field private static final H_URIC:J

.field private static final H_USERINFO:J

.field private static final L_ALPHA:J = 0x0L

.field private static final L_ALPHANUM:J

.field private static final L_DASH:J

.field private static final L_DIGIT:J

.field private static final L_ESCAPED:J = 0x1L

.field private static final L_HEX:J

.field private static final L_LOWALPHA:J

.field private static final L_MARK:J

.field private static final L_PATH:J

.field private static final L_PCHAR:J

.field private static final L_REG_NAME:J

.field private static final L_RESERVED:J

.field private static final L_SERVER:J

.field private static final L_UNRESERVED:J

.field private static final L_UPALPHA:J

.field private static final L_URIC:J

.field private static final L_USERINFO:J

.field static encodedInPath:Ljava/util/BitSet;

.field private static final hexDigits:[C


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    const/16 v11, 0x61

    const/16 v10, 0x41

    const/16 v3, 0x20

    const-wide/16 v8, 0x1

    const-wide/16 v6, 0x0

    const-class v1, Lsun/net/www/ParseUtil;

    invoke-virtual {v1}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    sput-boolean v1, Lsun/net/www/ParseUtil;->-assertionsDisabled:Z

    .line 52
    new-instance v1, Ljava/util/BitSet;

    const/16 v2, 0x100

    invoke-direct {v1, v2}, Ljava/util/BitSet;-><init>(I)V

    sput-object v1, Lsun/net/www/ParseUtil;->encodedInPath:Ljava/util/BitSet;

    .line 59
    sget-object v1, Lsun/net/www/ParseUtil;->encodedInPath:Ljava/util/BitSet;

    const/16 v2, 0x3d

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 60
    sget-object v1, Lsun/net/www/ParseUtil;->encodedInPath:Ljava/util/BitSet;

    const/16 v2, 0x3b

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 61
    sget-object v1, Lsun/net/www/ParseUtil;->encodedInPath:Ljava/util/BitSet;

    const/16 v2, 0x3f

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 62
    sget-object v1, Lsun/net/www/ParseUtil;->encodedInPath:Ljava/util/BitSet;

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 66
    sget-object v1, Lsun/net/www/ParseUtil;->encodedInPath:Ljava/util/BitSet;

    const/16 v2, 0x23

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 67
    sget-object v1, Lsun/net/www/ParseUtil;->encodedInPath:Ljava/util/BitSet;

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->set(I)V

    .line 68
    sget-object v1, Lsun/net/www/ParseUtil;->encodedInPath:Ljava/util/BitSet;

    const/16 v2, 0x3c

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 69
    sget-object v1, Lsun/net/www/ParseUtil;->encodedInPath:Ljava/util/BitSet;

    const/16 v2, 0x3e

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 70
    sget-object v1, Lsun/net/www/ParseUtil;->encodedInPath:Ljava/util/BitSet;

    const/16 v2, 0x25

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 71
    sget-object v1, Lsun/net/www/ParseUtil;->encodedInPath:Ljava/util/BitSet;

    const/16 v2, 0x22

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 72
    sget-object v1, Lsun/net/www/ParseUtil;->encodedInPath:Ljava/util/BitSet;

    const/16 v2, 0x7b

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 73
    sget-object v1, Lsun/net/www/ParseUtil;->encodedInPath:Ljava/util/BitSet;

    const/16 v2, 0x7d

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 74
    sget-object v1, Lsun/net/www/ParseUtil;->encodedInPath:Ljava/util/BitSet;

    const/16 v2, 0x7c

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 75
    sget-object v1, Lsun/net/www/ParseUtil;->encodedInPath:Ljava/util/BitSet;

    const/16 v2, 0x5c

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 76
    sget-object v1, Lsun/net/www/ParseUtil;->encodedInPath:Ljava/util/BitSet;

    const/16 v2, 0x5e

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 77
    sget-object v1, Lsun/net/www/ParseUtil;->encodedInPath:Ljava/util/BitSet;

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 78
    sget-object v1, Lsun/net/www/ParseUtil;->encodedInPath:Ljava/util/BitSet;

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 79
    sget-object v1, Lsun/net/www/ParseUtil;->encodedInPath:Ljava/util/BitSet;

    const/16 v2, 0x60

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 82
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v3, :cond_1

    .line 83
    sget-object v1, Lsun/net/www/ParseUtil;->encodedInPath:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    .line 82
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    :cond_0
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 84
    .restart local v0    # "i":I
    :cond_1
    sget-object v1, Lsun/net/www/ParseUtil;->encodedInPath:Ljava/util/BitSet;

    const/16 v2, 0x7f

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 507
    const/16 v1, 0x10

    new-array v1, v1, [C

    fill-array-data v1, :array_0

    sput-object v1, Lsun/net/www/ParseUtil;->hexDigits:[C

    .line 594
    const/16 v1, 0x30

    const/16 v2, 0x39

    invoke-static {v1, v2}, Lsun/net/www/ParseUtil;->lowMask(CC)J

    move-result-wide v2

    sput-wide v2, Lsun/net/www/ParseUtil;->L_DIGIT:J

    .line 599
    sget-wide v2, Lsun/net/www/ParseUtil;->L_DIGIT:J

    sput-wide v2, Lsun/net/www/ParseUtil;->L_HEX:J

    .line 600
    const/16 v1, 0x46

    invoke-static {v10, v1}, Lsun/net/www/ParseUtil;->highMask(CC)J

    move-result-wide v2

    const/16 v1, 0x66

    invoke-static {v11, v1}, Lsun/net/www/ParseUtil;->highMask(CC)J

    move-result-wide v4

    or-long/2addr v2, v4

    sput-wide v2, Lsun/net/www/ParseUtil;->H_HEX:J

    .line 606
    const/16 v1, 0x5a

    invoke-static {v10, v1}, Lsun/net/www/ParseUtil;->highMask(CC)J

    move-result-wide v2

    sput-wide v2, Lsun/net/www/ParseUtil;->H_UPALPHA:J

    .line 612
    const/16 v1, 0x7a

    invoke-static {v11, v1}, Lsun/net/www/ParseUtil;->highMask(CC)J

    move-result-wide v2

    sput-wide v2, Lsun/net/www/ParseUtil;->H_LOWALPHA:J

    .line 616
    sget-wide v2, Lsun/net/www/ParseUtil;->H_LOWALPHA:J

    sget-wide v4, Lsun/net/www/ParseUtil;->H_UPALPHA:J

    or-long/2addr v2, v4

    sput-wide v2, Lsun/net/www/ParseUtil;->H_ALPHA:J

    .line 619
    sget-wide v2, Lsun/net/www/ParseUtil;->L_DIGIT:J

    or-long/2addr v2, v6

    sput-wide v2, Lsun/net/www/ParseUtil;->L_ALPHANUM:J

    .line 620
    sget-wide v2, Lsun/net/www/ParseUtil;->H_ALPHA:J

    or-long/2addr v2, v6

    sput-wide v2, Lsun/net/www/ParseUtil;->H_ALPHANUM:J

    .line 624
    const-string/jumbo v1, "-_.!~*\'()"

    invoke-static {v1}, Lsun/net/www/ParseUtil;->lowMask(Ljava/lang/String;)J

    move-result-wide v2

    sput-wide v2, Lsun/net/www/ParseUtil;->L_MARK:J

    .line 625
    const-string/jumbo v1, "-_.!~*\'()"

    invoke-static {v1}, Lsun/net/www/ParseUtil;->highMask(Ljava/lang/String;)J

    move-result-wide v2

    sput-wide v2, Lsun/net/www/ParseUtil;->H_MARK:J

    .line 628
    sget-wide v2, Lsun/net/www/ParseUtil;->L_ALPHANUM:J

    sget-wide v4, Lsun/net/www/ParseUtil;->L_MARK:J

    or-long/2addr v2, v4

    sput-wide v2, Lsun/net/www/ParseUtil;->L_UNRESERVED:J

    .line 629
    sget-wide v2, Lsun/net/www/ParseUtil;->H_ALPHANUM:J

    sget-wide v4, Lsun/net/www/ParseUtil;->H_MARK:J

    or-long/2addr v2, v4

    sput-wide v2, Lsun/net/www/ParseUtil;->H_UNRESERVED:J

    .line 634
    const-string/jumbo v1, ";/?:@&=+$,[]"

    invoke-static {v1}, Lsun/net/www/ParseUtil;->lowMask(Ljava/lang/String;)J

    move-result-wide v2

    sput-wide v2, Lsun/net/www/ParseUtil;->L_RESERVED:J

    .line 635
    const-string/jumbo v1, ";/?:@&=+$,[]"

    invoke-static {v1}, Lsun/net/www/ParseUtil;->highMask(Ljava/lang/String;)J

    move-result-wide v2

    sput-wide v2, Lsun/net/www/ParseUtil;->H_RESERVED:J

    .line 643
    const-string/jumbo v1, "-"

    invoke-static {v1}, Lsun/net/www/ParseUtil;->lowMask(Ljava/lang/String;)J

    move-result-wide v2

    sput-wide v2, Lsun/net/www/ParseUtil;->L_DASH:J

    .line 644
    const-string/jumbo v1, "-"

    invoke-static {v1}, Lsun/net/www/ParseUtil;->highMask(Ljava/lang/String;)J

    move-result-wide v2

    sput-wide v2, Lsun/net/www/ParseUtil;->H_DASH:J

    .line 647
    sget-wide v2, Lsun/net/www/ParseUtil;->L_RESERVED:J

    sget-wide v4, Lsun/net/www/ParseUtil;->L_UNRESERVED:J

    or-long/2addr v2, v4

    or-long/2addr v2, v8

    sput-wide v2, Lsun/net/www/ParseUtil;->L_URIC:J

    .line 648
    sget-wide v2, Lsun/net/www/ParseUtil;->H_RESERVED:J

    sget-wide v4, Lsun/net/www/ParseUtil;->H_UNRESERVED:J

    or-long/2addr v2, v4

    or-long/2addr v2, v6

    sput-wide v2, Lsun/net/www/ParseUtil;->H_URIC:J

    .line 653
    sget-wide v2, Lsun/net/www/ParseUtil;->L_UNRESERVED:J

    or-long/2addr v2, v8

    const-string/jumbo v1, ":@&=+$,"

    invoke-static {v1}, Lsun/net/www/ParseUtil;->lowMask(Ljava/lang/String;)J

    move-result-wide v4

    or-long/2addr v2, v4

    .line 652
    sput-wide v2, Lsun/net/www/ParseUtil;->L_PCHAR:J

    .line 655
    sget-wide v2, Lsun/net/www/ParseUtil;->H_UNRESERVED:J

    or-long/2addr v2, v6

    const-string/jumbo v1, ":@&=+$,"

    invoke-static {v1}, Lsun/net/www/ParseUtil;->highMask(Ljava/lang/String;)J

    move-result-wide v4

    or-long/2addr v2, v4

    .line 654
    sput-wide v2, Lsun/net/www/ParseUtil;->H_PCHAR:J

    .line 658
    sget-wide v2, Lsun/net/www/ParseUtil;->L_PCHAR:J

    const-string/jumbo v1, ";/"

    invoke-static {v1}, Lsun/net/www/ParseUtil;->lowMask(Ljava/lang/String;)J

    move-result-wide v4

    or-long/2addr v2, v4

    sput-wide v2, Lsun/net/www/ParseUtil;->L_PATH:J

    .line 659
    sget-wide v2, Lsun/net/www/ParseUtil;->H_PCHAR:J

    const-string/jumbo v1, ";/"

    invoke-static {v1}, Lsun/net/www/ParseUtil;->highMask(Ljava/lang/String;)J

    move-result-wide v4

    or-long/2addr v2, v4

    sput-wide v2, Lsun/net/www/ParseUtil;->H_PATH:J

    .line 664
    sget-wide v2, Lsun/net/www/ParseUtil;->L_UNRESERVED:J

    or-long/2addr v2, v8

    const-string/jumbo v1, ";:&=+$,"

    invoke-static {v1}, Lsun/net/www/ParseUtil;->lowMask(Ljava/lang/String;)J

    move-result-wide v4

    or-long/2addr v2, v4

    .line 663
    sput-wide v2, Lsun/net/www/ParseUtil;->L_USERINFO:J

    .line 666
    sget-wide v2, Lsun/net/www/ParseUtil;->H_UNRESERVED:J

    or-long/2addr v2, v6

    const-string/jumbo v1, ";:&=+$,"

    invoke-static {v1}, Lsun/net/www/ParseUtil;->highMask(Ljava/lang/String;)J

    move-result-wide v4

    or-long/2addr v2, v4

    .line 665
    sput-wide v2, Lsun/net/www/ParseUtil;->H_USERINFO:J

    .line 671
    sget-wide v2, Lsun/net/www/ParseUtil;->L_UNRESERVED:J

    or-long/2addr v2, v8

    const-string/jumbo v1, "$,;:@&=+"

    invoke-static {v1}, Lsun/net/www/ParseUtil;->lowMask(Ljava/lang/String;)J

    move-result-wide v4

    or-long/2addr v2, v4

    .line 670
    sput-wide v2, Lsun/net/www/ParseUtil;->L_REG_NAME:J

    .line 673
    sget-wide v2, Lsun/net/www/ParseUtil;->H_UNRESERVED:J

    or-long/2addr v2, v6

    const-string/jumbo v1, "$,;:@&=+"

    invoke-static {v1}, Lsun/net/www/ParseUtil;->highMask(Ljava/lang/String;)J

    move-result-wide v4

    or-long/2addr v2, v4

    .line 672
    sput-wide v2, Lsun/net/www/ParseUtil;->H_REG_NAME:J

    .line 677
    sget-wide v2, Lsun/net/www/ParseUtil;->L_USERINFO:J

    sget-wide v4, Lsun/net/www/ParseUtil;->L_ALPHANUM:J

    or-long/2addr v2, v4

    sget-wide v4, Lsun/net/www/ParseUtil;->L_DASH:J

    or-long/2addr v2, v4

    const-string/jumbo v1, ".:@[]"

    invoke-static {v1}, Lsun/net/www/ParseUtil;->lowMask(Ljava/lang/String;)J

    move-result-wide v4

    or-long/2addr v2, v4

    .line 676
    sput-wide v2, Lsun/net/www/ParseUtil;->L_SERVER:J

    .line 679
    sget-wide v2, Lsun/net/www/ParseUtil;->H_USERINFO:J

    sget-wide v4, Lsun/net/www/ParseUtil;->H_ALPHANUM:J

    or-long/2addr v2, v4

    sget-wide v4, Lsun/net/www/ParseUtil;->H_DASH:J

    or-long/2addr v2, v4

    const-string/jumbo v1, ".:@[]"

    invoke-static {v1}, Lsun/net/www/ParseUtil;->highMask(Ljava/lang/String;)J

    move-result-wide v4

    or-long/2addr v2, v4

    .line 678
    sput-wide v2, Lsun/net/www/ParseUtil;->H_SERVER:J

    .line 48
    return-void

    .line 507
    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static appendAuthority(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 10
    .param p0, "sb"    # Ljava/lang/StringBuffer;
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "userInfo"    # Ljava/lang/String;
    .param p3, "host"    # Ljava/lang/String;
    .param p4, "port"    # I

    .prologue
    .line 392
    if-eqz p3, :cond_7

    .line 393
    const-string/jumbo v4, "//"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 394
    if-eqz p2, :cond_0

    .line 395
    sget-wide v4, Lsun/net/www/ParseUtil;->L_USERINFO:J

    sget-wide v6, Lsun/net/www/ParseUtil;->H_USERINFO:J

    invoke-static {p2, v4, v5, v6, v7}, Lsun/net/www/ParseUtil;->quote(Ljava/lang/String;JJ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 396
    const/16 v4, 0x40

    invoke-virtual {p0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 398
    :cond_0
    const/16 v4, 0x3a

    invoke-virtual {p3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ltz v4, :cond_1

    .line 399
    const-string/jumbo v4, "["

    invoke-virtual {p3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 398
    :cond_1
    const/4 v3, 0x0

    .line 401
    .local v3, "needBrackets":Z
    :goto_0
    if-eqz v3, :cond_2

    const/16 v4, 0x5b

    invoke-virtual {p0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 402
    :cond_2
    invoke-virtual {p0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 403
    if-eqz v3, :cond_3

    const/16 v4, 0x5d

    invoke-virtual {p0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 404
    :cond_3
    const/4 v4, -0x1

    if-eq p4, v4, :cond_4

    .line 405
    const/16 v4, 0x3a

    invoke-virtual {p0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 406
    invoke-virtual {p0, p4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 390
    .end local v3    # "needBrackets":Z
    :cond_4
    :goto_1
    return-void

    .line 400
    :cond_5
    const-string/jumbo v4, "]"

    invoke-virtual {p3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v4, 0x0

    :goto_2
    move v3, v4

    goto :goto_0

    :cond_6
    const/4 v4, 0x1

    goto :goto_2

    .line 408
    :cond_7
    if-eqz p1, :cond_4

    .line 409
    const-string/jumbo v4, "//"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 410
    const-string/jumbo v4, "["

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 411
    const-string/jumbo v4, "]"

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 412
    .local v2, "end":I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_4

    const-string/jumbo v4, ":"

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_4

    .line 414
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v2, v4, :cond_8

    .line 415
    move-object v0, p1

    .line 416
    .local v0, "dontquote":Ljava/lang/String;
    const-string/jumbo v1, ""

    .line 421
    .local v1, "doquote":Ljava/lang/String;
    :goto_3
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 423
    sget-wide v4, Lsun/net/www/ParseUtil;->L_REG_NAME:J

    sget-wide v6, Lsun/net/www/ParseUtil;->L_SERVER:J

    or-long/2addr v4, v6

    .line 424
    sget-wide v6, Lsun/net/www/ParseUtil;->H_REG_NAME:J

    sget-wide v8, Lsun/net/www/ParseUtil;->H_SERVER:J

    or-long/2addr v6, v8

    .line 422
    invoke-static {v1, v4, v5, v6, v7}, Lsun/net/www/ParseUtil;->quote(Ljava/lang/String;JJ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 418
    .end local v0    # "dontquote":Ljava/lang/String;
    .end local v1    # "doquote":Ljava/lang/String;
    :cond_8
    add-int/lit8 v4, v2, 0x1

    const/4 v5, 0x0

    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 419
    .restart local v0    # "dontquote":Ljava/lang/String;
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "doquote":Ljava/lang/String;
    goto :goto_3

    .line 428
    .end local v0    # "dontquote":Ljava/lang/String;
    .end local v1    # "doquote":Ljava/lang/String;
    .end local v2    # "end":I
    :cond_9
    sget-wide v4, Lsun/net/www/ParseUtil;->L_REG_NAME:J

    sget-wide v6, Lsun/net/www/ParseUtil;->L_SERVER:J

    or-long/2addr v4, v6

    .line 429
    sget-wide v6, Lsun/net/www/ParseUtil;->H_REG_NAME:J

    sget-wide v8, Lsun/net/www/ParseUtil;->H_SERVER:J

    or-long/2addr v6, v8

    .line 427
    invoke-static {p1, v4, v5, v6, v7}, Lsun/net/www/ParseUtil;->quote(Ljava/lang/String;JJ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method private static appendEncoded(Ljava/lang/StringBuffer;C)V
    .locals 6
    .param p0, "sb"    # Ljava/lang/StringBuffer;
    .param p1, "c"    # C

    .prologue
    .line 491
    const/4 v1, 0x0

    .line 493
    .local v1, "bb":Ljava/nio/ByteBuffer;
    :try_start_0
    const-string/jumbo v3, "UTF-8"

    invoke-static {v3}, Lsun/nio/cs/ThreadLocalCoders;->encoderFor(Ljava/lang/Object;)Ljava/nio/charset/CharsetEncoder;

    move-result-object v3

    .line 494
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object v4

    .line 493
    invoke-virtual {v3, v4}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 498
    .end local v1    # "bb":Ljava/nio/ByteBuffer;
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 499
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    and-int/lit16 v0, v3, 0xff

    .line 500
    .local v0, "b":I
    const/16 v3, 0x80

    if-lt v0, v3, :cond_1

    .line 501
    int-to-byte v3, v0

    invoke-static {p0, v3}, Lsun/net/www/ParseUtil;->appendEscape(Ljava/lang/StringBuffer;B)V

    goto :goto_0

    .line 495
    .end local v0    # "b":I
    .restart local v1    # "bb":Ljava/nio/ByteBuffer;
    :catch_0
    move-exception v2

    .line 496
    .local v2, "x":Ljava/nio/charset/CharacterCodingException;
    sget-boolean v3, Lsun/net/www/ParseUtil;->-assertionsDisabled:Z

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 503
    .end local v1    # "bb":Ljava/nio/ByteBuffer;
    .end local v2    # "x":Ljava/nio/charset/CharacterCodingException;
    .restart local v0    # "b":I
    :cond_1
    int-to-char v3, v0

    invoke-virtual {p0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 490
    .end local v0    # "b":I
    :cond_2
    return-void
.end method

.method private static appendEscape(Ljava/lang/StringBuffer;B)V
    .locals 2
    .param p0, "sb"    # Ljava/lang/StringBuffer;
    .param p1, "b"    # B

    .prologue
    .line 513
    const/16 v0, 0x25

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 514
    sget-object v0, Lsun/net/www/ParseUtil;->hexDigits:[C

    shr-int/lit8 v1, p1, 0x4

    and-int/lit8 v1, v1, 0xf

    aget-char v0, v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 515
    sget-object v0, Lsun/net/www/ParseUtil;->hexDigits:[C

    shr-int/lit8 v1, p1, 0x0

    and-int/lit8 v1, v1, 0xf

    aget-char v0, v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 512
    return-void
.end method

.method private static appendFragment(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .locals 4
    .param p0, "sb"    # Ljava/lang/StringBuffer;
    .param p1, "fragment"    # Ljava/lang/String;

    .prologue
    .line 435
    if-eqz p1, :cond_0

    .line 436
    const/16 v0, 0x23

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 437
    sget-wide v0, Lsun/net/www/ParseUtil;->L_URIC:J

    sget-wide v2, Lsun/net/www/ParseUtil;->H_URIC:J

    invoke-static {p1, v0, v1, v2, v3}, Lsun/net/www/ParseUtil;->quote(Ljava/lang/String;JJ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 434
    :cond_0
    return-void
.end method

.method private static appendSchemeSpecificPart(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p0, "sb"    # Ljava/lang/StringBuffer;
    .param p1, "opaquePart"    # Ljava/lang/String;
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "userInfo"    # Ljava/lang/String;
    .param p4, "host"    # Ljava/lang/String;
    .param p5, "port"    # I
    .param p6, "path"    # Ljava/lang/String;
    .param p7, "query"    # Ljava/lang/String;

    .prologue
    const/4 v4, -0x1

    .line 354
    if-eqz p1, :cond_3

    .line 358
    const-string/jumbo v3, "//["

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 359
    const-string/jumbo v3, "]"

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 360
    .local v2, "end":I
    if-eq v2, v4, :cond_0

    const-string/jumbo v3, ":"

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v4, :cond_0

    .line 362
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 363
    move-object v0, p1

    .line 364
    .local v0, "dontquote":Ljava/lang/String;
    const-string/jumbo v1, ""

    .line 369
    .local v1, "doquote":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 370
    sget-wide v4, Lsun/net/www/ParseUtil;->L_URIC:J

    sget-wide v6, Lsun/net/www/ParseUtil;->H_URIC:J

    invoke-static {v1, v4, v5, v6, v7}, Lsun/net/www/ParseUtil;->quote(Ljava/lang/String;JJ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 352
    .end local v0    # "dontquote":Ljava/lang/String;
    .end local v1    # "doquote":Ljava/lang/String;
    .end local v2    # "end":I
    :cond_0
    :goto_1
    return-void

    .line 366
    .restart local v2    # "end":I
    :cond_1
    add-int/lit8 v3, v2, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 367
    .restart local v0    # "dontquote":Ljava/lang/String;
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "doquote":Ljava/lang/String;
    goto :goto_0

    .line 373
    .end local v0    # "dontquote":Ljava/lang/String;
    .end local v1    # "doquote":Ljava/lang/String;
    .end local v2    # "end":I
    :cond_2
    sget-wide v4, Lsun/net/www/ParseUtil;->L_URIC:J

    sget-wide v6, Lsun/net/www/ParseUtil;->H_URIC:J

    invoke-static {p1, v4, v5, v6, v7}, Lsun/net/www/ParseUtil;->quote(Ljava/lang/String;JJ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 376
    :cond_3
    invoke-static {p0, p2, p3, p4, p5}, Lsun/net/www/ParseUtil;->appendAuthority(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 377
    if-eqz p6, :cond_4

    .line 378
    sget-wide v4, Lsun/net/www/ParseUtil;->L_PATH:J

    sget-wide v6, Lsun/net/www/ParseUtil;->H_PATH:J

    invoke-static {p6, v4, v5, v6, v7}, Lsun/net/www/ParseUtil;->quote(Ljava/lang/String;JJ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 379
    :cond_4
    if-eqz p7, :cond_0

    .line 380
    const/16 v3, 0x3f

    invoke-virtual {p0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 381
    sget-wide v4, Lsun/net/www/ParseUtil;->L_URIC:J

    sget-wide v6, Lsun/net/www/ParseUtil;->H_URIC:J

    invoke-static {p7, v4, v5, v6, v7}, Lsun/net/www/ParseUtil;->quote(Ljava/lang/String;JJ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method private static checkPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "scheme"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 532
    if-eqz p1, :cond_0

    .line 533
    if-eqz p2, :cond_0

    .line 534
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_0

    .line 535
    new-instance v0, Ljava/net/URISyntaxException;

    .line 536
    const-string/jumbo v1, "Relative path in absolute URI"

    .line 535
    invoke-direct {v0, p0, v1}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 530
    :cond_0
    return-void
.end method

.method private static createURI(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/URI;
    .locals 10
    .param p0, "scheme"    # Ljava/lang/String;
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "query"    # Ljava/lang/String;
    .param p4, "fragment"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 317
    const/4 v5, -0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, v1

    move-object v4, v1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    .line 316
    invoke-static/range {v0 .. v8}, Lsun/net/www/ParseUtil;->toString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 319
    .local v9, "s":Ljava/lang/String;
    invoke-static {v9, p0, p2}, Lsun/net/www/ParseUtil;->checkPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, v9}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 15
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/16 v14, 0x25

    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 174
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    .line 175
    .local v7, "n":I
    if-eqz v7, :cond_0

    invoke-virtual {p0, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    if-gez v10, :cond_1

    .line 176
    :cond_0
    return-object p0

    .line 178
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 179
    .local v8, "sb":Ljava/lang/StringBuilder;
    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 180
    .local v0, "bb":Ljava/nio/ByteBuffer;
    invoke-static {v7}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v2

    .line 181
    .local v2, "cb":Ljava/nio/CharBuffer;
    const-string/jumbo v10, "UTF-8"

    invoke-static {v10}, Lsun/nio/cs/ThreadLocalCoders;->decoderFor(Ljava/lang/Object;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v10

    .line 182
    sget-object v13, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    .line 181
    invoke-virtual {v10, v13}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v10

    .line 183
    sget-object v13, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    .line 181
    invoke-virtual {v10, v13}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v4

    .line 185
    .local v4, "dec":Ljava/nio/charset/CharsetDecoder;
    invoke-virtual {p0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 186
    .local v1, "c":C
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v7, :cond_4

    .line 187
    sget-boolean v10, Lsun/net/www/ParseUtil;->-assertionsDisabled:Z

    if-nez v10, :cond_3

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-ne v1, v10, :cond_2

    move v10, v11

    :goto_1
    if-nez v10, :cond_3

    new-instance v10, Ljava/lang/AssertionError;

    invoke-direct {v10}, Ljava/lang/AssertionError;-><init>()V

    throw v10

    :cond_2
    move v10, v12

    goto :goto_1

    .line 188
    :cond_3
    if-eq v1, v14, :cond_6

    .line 189
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 190
    add-int/lit8 v6, v6, 0x1

    if-lt v6, v7, :cond_5

    .line 223
    :cond_4
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    return-object v10

    .line 192
    :cond_5
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_0

    .line 195
    :cond_6
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 196
    move v9, v6

    .line 198
    .local v9, "ui":I
    :cond_7
    sget-boolean v10, Lsun/net/www/ParseUtil;->-assertionsDisabled:Z

    if-nez v10, :cond_9

    sub-int v10, v7, v6

    const/4 v13, 0x2

    if-lt v10, v13, :cond_8

    move v10, v11

    :goto_2
    if-nez v10, :cond_9

    new-instance v10, Ljava/lang/AssertionError;

    invoke-direct {v10}, Ljava/lang/AssertionError;-><init>()V

    throw v10

    :cond_8
    move v10, v12

    goto :goto_2

    .line 200
    :cond_9
    :try_start_0
    invoke-static {p0, v6}, Lsun/net/www/ParseUtil;->unescape(Ljava/lang/String;I)B

    move-result v10

    invoke-virtual {v0, v10}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    add-int/lit8 v6, v6, 0x3

    .line 205
    if-lt v6, v7, :cond_a

    .line 211
    :goto_3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 212
    invoke-virtual {v2}, Ljava/nio/CharBuffer;->clear()Ljava/nio/Buffer;

    .line 213
    invoke-virtual {v4}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    .line 214
    invoke-virtual {v4, v0, v2, v11}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v3

    .line 215
    .local v3, "cr":Ljava/nio/charset/CoderResult;
    invoke-virtual {v3}, Ljava/nio/charset/CoderResult;->isError()Z

    move-result v10

    if-eqz v10, :cond_b

    .line 216
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v11, "Error decoding percent encoded characters"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 201
    .end local v3    # "cr":Ljava/nio/charset/CoderResult;
    :catch_0
    move-exception v5

    .line 202
    .local v5, "e":Ljava/lang/NumberFormatException;
    new-instance v10, Ljava/lang/IllegalArgumentException;

    invoke-direct {v10}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v10

    .line 207
    .end local v5    # "e":Ljava/lang/NumberFormatException;
    :cond_a
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 208
    if-eq v1, v14, :cond_7

    goto :goto_3

    .line 217
    .restart local v3    # "cr":Ljava/nio/charset/CoderResult;
    :cond_b
    invoke-virtual {v4, v2}, Ljava/nio/charset/CharsetDecoder;->flush(Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v3

    .line 218
    invoke-virtual {v3}, Ljava/nio/charset/CoderResult;->isError()Z

    move-result v10

    if-eqz v10, :cond_c

    .line 219
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v11, "Error decoding percent encoded characters"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 220
    :cond_c
    invoke-virtual {v2}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/nio/Buffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0
.end method

.method public static encodePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 97
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lsun/net/www/ParseUtil;->encodePath(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodePath(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 13
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "flag"    # Z

    .prologue
    const/16 v12, 0x2f

    const/4 v11, 0x0

    .line 105
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    mul-int/lit8 v9, v9, 0x2

    add-int/lit8 v9, v9, 0x10

    new-array v6, v9, [C

    .line 106
    .local v6, "retCC":[C
    const/4 v7, 0x0

    .line 107
    .local v7, "retLen":I
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    .line 109
    .local v5, "pathCC":[C
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 110
    .local v3, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    move v8, v7

    .end local v7    # "retLen":I
    .local v8, "retLen":I
    :goto_0
    if-ge v2, v3, :cond_c

    .line 111
    aget-char v1, v5, v2

    .line 112
    .local v1, "c":C
    if-nez p1, :cond_3

    if-ne v1, v12, :cond_3

    .line 113
    :cond_0
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "retLen":I
    .restart local v7    # "retLen":I
    aput-char v12, v6, v8

    .line 136
    :goto_1
    add-int/lit8 v9, v7, 0x9

    array-length v10, v6

    if-le v9, v10, :cond_2

    .line 137
    array-length v9, v6

    mul-int/lit8 v9, v9, 0x2

    add-int/lit8 v4, v9, 0x10

    .line 138
    .local v4, "newLen":I
    if-gez v4, :cond_1

    .line 139
    const v4, 0x7fffffff

    .line 141
    :cond_1
    new-array v0, v4, [C

    .line 142
    .local v0, "buf":[C
    invoke-static {v6, v11, v0, v11, v7}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 143
    move-object v6, v0

    .line 110
    .end local v0    # "buf":[C
    .end local v4    # "newLen":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    move v8, v7

    .end local v7    # "retLen":I
    .restart local v8    # "retLen":I
    goto :goto_0

    .line 112
    :cond_3
    if-eqz p1, :cond_4

    sget-char v9, Ljava/io/File;->separatorChar:C

    if-eq v1, v9, :cond_0

    .line 115
    :cond_4
    const/16 v9, 0x7f

    if-gt v1, v9, :cond_a

    .line 116
    const/16 v9, 0x61

    if-lt v1, v9, :cond_6

    const/16 v9, 0x7a

    if-gt v1, v9, :cond_6

    .line 119
    :cond_5
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "retLen":I
    .restart local v7    # "retLen":I
    aput-char v1, v6, v8

    goto :goto_1

    .line 117
    .end local v7    # "retLen":I
    .restart local v8    # "retLen":I
    :cond_6
    const/16 v9, 0x41

    if-lt v1, v9, :cond_7

    const/16 v9, 0x5a

    if-le v1, v9, :cond_5

    .line 118
    :cond_7
    const/16 v9, 0x30

    if-lt v1, v9, :cond_8

    const/16 v9, 0x39

    if-le v1, v9, :cond_5

    .line 121
    :cond_8
    sget-object v9, Lsun/net/www/ParseUtil;->encodedInPath:Ljava/util/BitSet;

    invoke-virtual {v9, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 122
    invoke-static {v6, v1, v8}, Lsun/net/www/ParseUtil;->escape([CCI)I

    move-result v7

    .end local v8    # "retLen":I
    .restart local v7    # "retLen":I
    goto :goto_1

    .line 124
    .end local v7    # "retLen":I
    .restart local v8    # "retLen":I
    :cond_9
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "retLen":I
    .restart local v7    # "retLen":I
    aput-char v1, v6, v8

    goto :goto_1

    .line 125
    .end local v7    # "retLen":I
    .restart local v8    # "retLen":I
    :cond_a
    const/16 v9, 0x7ff

    if-le v1, v9, :cond_b

    .line 126
    shr-int/lit8 v9, v1, 0xc

    and-int/lit8 v9, v9, 0xf

    or-int/lit16 v9, v9, 0xe0

    int-to-char v9, v9

    invoke-static {v6, v9, v8}, Lsun/net/www/ParseUtil;->escape([CCI)I

    move-result v7

    .line 127
    .end local v8    # "retLen":I
    .restart local v7    # "retLen":I
    shr-int/lit8 v9, v1, 0x6

    and-int/lit8 v9, v9, 0x3f

    or-int/lit16 v9, v9, 0x80

    int-to-char v9, v9

    invoke-static {v6, v9, v7}, Lsun/net/www/ParseUtil;->escape([CCI)I

    move-result v7

    .line 128
    shr-int/lit8 v9, v1, 0x0

    and-int/lit8 v9, v9, 0x3f

    or-int/lit16 v9, v9, 0x80

    int-to-char v9, v9

    invoke-static {v6, v9, v7}, Lsun/net/www/ParseUtil;->escape([CCI)I

    move-result v7

    goto :goto_1

    .line 130
    .end local v7    # "retLen":I
    .restart local v8    # "retLen":I
    :cond_b
    shr-int/lit8 v9, v1, 0x6

    and-int/lit8 v9, v9, 0x1f

    or-int/lit16 v9, v9, 0xc0

    int-to-char v9, v9

    invoke-static {v6, v9, v8}, Lsun/net/www/ParseUtil;->escape([CCI)I

    move-result v7

    .line 131
    .end local v8    # "retLen":I
    .restart local v7    # "retLen":I
    shr-int/lit8 v9, v1, 0x0

    and-int/lit8 v9, v9, 0x3f

    or-int/lit16 v9, v9, 0x80

    int-to-char v9, v9

    invoke-static {v6, v9, v7}, Lsun/net/www/ParseUtil;->escape([CCI)I

    move-result v7

    goto/16 :goto_1

    .line 146
    .end local v1    # "c":C
    .end local v7    # "retLen":I
    .restart local v8    # "retLen":I
    :cond_c
    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v6, v11, v8}, Ljava/lang/String;-><init>([CII)V

    return-object v9
.end method

.method private static escape([CCI)I
    .locals 3
    .param p0, "cc"    # [C
    .param p1, "c"    # C
    .param p2, "index"    # I

    .prologue
    const/16 v2, 0x10

    .line 154
    add-int/lit8 v0, p2, 0x1

    .end local p2    # "index":I
    .local v0, "index":I
    const/16 v1, 0x25

    aput-char v1, p0, p2

    .line 155
    add-int/lit8 p2, v0, 0x1

    .end local v0    # "index":I
    .restart local p2    # "index":I
    shr-int/lit8 v1, p1, 0x4

    and-int/lit8 v1, v1, 0xf

    invoke-static {v1, v2}, Ljava/lang/Character;->forDigit(II)C

    move-result v1

    aput-char v1, p0, v0

    .line 156
    add-int/lit8 v0, p2, 0x1

    .end local p2    # "index":I
    .restart local v0    # "index":I
    and-int/lit8 v1, p1, 0xf

    invoke-static {v1, v2}, Ljava/lang/Character;->forDigit(II)C

    move-result v1

    aput-char v1, p0, p2

    .line 157
    return v0
.end method

.method public static fileToEncodedURL(Ljava/io/File;)Ljava/net/URL;
    .locals 4
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 264
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 265
    .local v0, "path":Ljava/lang/String;
    invoke-static {v0}, Lsun/net/www/ParseUtil;->encodePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 266
    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 267
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 269
    :cond_0
    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 270
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 272
    :cond_1
    new-instance v1, Ljava/net/URL;

    const-string/jumbo v2, "file"

    const-string/jumbo v3, ""

    invoke-direct {v1, v2, v3, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method private static highMask(CC)J
    .locals 8
    .param p0, "first"    # C
    .param p1, "last"    # C

    .prologue
    const/16 v7, 0x7f

    const/16 v6, 0x40

    .line 569
    const-wide/16 v4, 0x0

    .line 570
    .local v4, "m":J
    invoke-static {p0, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/lit8 v0, v3, -0x40

    .line 571
    .local v0, "f":I
    invoke-static {p1, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/lit8 v2, v3, -0x40

    .line 572
    .local v2, "l":I
    move v1, v0

    .local v1, "i":I
    :goto_0
    if-gt v1, v2, :cond_0

    .line 573
    const-wide/16 v6, 0x1

    shl-long/2addr v6, v1

    or-long/2addr v4, v6

    .line 572
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 574
    :cond_0
    return-wide v4
.end method

.method private static highMask(Ljava/lang/String;)J
    .locals 8
    .param p0, "chars"    # Ljava/lang/String;

    .prologue
    .line 579
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 580
    .local v4, "n":I
    const-wide/16 v2, 0x0

    .line 581
    .local v2, "m":J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_1

    .line 582
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 583
    .local v0, "c":C
    const/16 v5, 0x40

    if-lt v0, v5, :cond_0

    const/16 v5, 0x80

    if-ge v0, v5, :cond_0

    .line 584
    add-int/lit8 v5, v0, -0x40

    const-wide/16 v6, 0x1

    shl-long/2addr v6, v5

    or-long/2addr v2, v6

    .line 581
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 586
    .end local v0    # "c":C
    :cond_1
    return-wide v2
.end method

.method private static isEscaped(Ljava/lang/String;I)Z
    .locals 6
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "pos"    # I

    .prologue
    const/4 v0, 0x0

    .line 482
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v2, p1, 0x2

    if-gt v1, v2, :cond_1

    .line 483
    :cond_0
    return v0

    .line 485
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x25

    if-ne v1, v2, :cond_2

    .line 486
    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sget-wide v2, Lsun/net/www/ParseUtil;->L_HEX:J

    sget-wide v4, Lsun/net/www/ParseUtil;->H_HEX:J

    invoke-static {v1, v2, v3, v4, v5}, Lsun/net/www/ParseUtil;->match(CJJ)Z

    move-result v1

    .line 485
    if-eqz v1, :cond_2

    .line 487
    add-int/lit8 v0, p1, 0x2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sget-wide v2, Lsun/net/www/ParseUtil;->L_HEX:J

    sget-wide v4, Lsun/net/www/ParseUtil;->H_HEX:J

    invoke-static {v0, v2, v3, v4, v5}, Lsun/net/www/ParseUtil;->match(CJJ)Z

    move-result v0

    .line 485
    :cond_2
    return v0
.end method

.method private static lowMask(CC)J
    .locals 8
    .param p0, "first"    # C
    .param p1, "last"    # C

    .prologue
    const/16 v7, 0x3f

    const/4 v6, 0x0

    .line 546
    const-wide/16 v4, 0x0

    .line 547
    .local v4, "m":J
    invoke-static {p0, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 548
    .local v0, "f":I
    invoke-static {p1, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 549
    .local v2, "l":I
    move v1, v0

    .local v1, "i":I
    :goto_0
    if-gt v1, v2, :cond_0

    .line 550
    const-wide/16 v6, 0x1

    shl-long/2addr v6, v1

    or-long/2addr v4, v6

    .line 549
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 551
    :cond_0
    return-wide v4
.end method

.method private static lowMask(Ljava/lang/String;)J
    .locals 8
    .param p0, "chars"    # Ljava/lang/String;

    .prologue
    .line 556
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 557
    .local v4, "n":I
    const-wide/16 v2, 0x0

    .line 558
    .local v2, "m":J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_1

    .line 559
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 560
    .local v0, "c":C
    const/16 v5, 0x40

    if-ge v0, v5, :cond_0

    .line 561
    const-wide/16 v6, 0x1

    shl-long/2addr v6, v0

    or-long/2addr v2, v6

    .line 558
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 563
    .end local v0    # "c":C
    :cond_1
    return-wide v2
.end method

.method private static match(CJJ)Z
    .locals 9
    .param p0, "c"    # C
    .param p1, "lowMask"    # J
    .param p3, "highMask"    # J

    .prologue
    const-wide/16 v6, 0x1

    const-wide/16 v4, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 520
    const/16 v2, 0x40

    if-ge p0, v2, :cond_1

    .line 521
    shl-long v2, v6, p0

    and-long/2addr v2, p1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    .line 522
    :cond_1
    const/16 v2, 0x80

    if-ge p0, v2, :cond_3

    .line 523
    add-int/lit8 v2, p0, -0x40

    shl-long v2, v6, v2

    and-long/2addr v2, p3

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    :goto_1
    return v0

    :cond_2
    move v0, v1

    goto :goto_1

    .line 524
    :cond_3
    return v1
.end method

.method private static quote(Ljava/lang/String;JJ)Ljava/lang/String;
    .locals 11
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "lowMask"    # J
    .param p3, "highMask"    # J

    .prologue
    const/4 v10, 0x0

    .line 445
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 446
    .local v3, "n":I
    const/4 v4, 0x0

    .line 447
    .local v4, "sb":Ljava/lang/StringBuffer;
    const-wide/16 v6, 0x1

    and-long/2addr v6, p1

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-eqz v5, :cond_2

    const/4 v0, 0x1

    .line 448
    .local v0, "allowNonASCII":Z
    :goto_0
    const/4 v2, 0x0

    .end local v4    # "sb":Ljava/lang/StringBuffer;
    .local v2, "i":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_9

    .line 449
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 450
    .local v1, "c":C
    const/16 v5, 0x80

    if-ge v1, v5, :cond_5

    .line 451
    invoke-static {v1, p1, p2, p3, p4}, Lsun/net/www/ParseUtil;->match(CJJ)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {p0, v2}, Lsun/net/www/ParseUtil;->isEscaped(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 458
    :cond_0
    if-eqz v4, :cond_1

    .line 459
    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 448
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 447
    .end local v0    # "allowNonASCII":Z
    .end local v1    # "c":C
    .end local v2    # "i":I
    .restart local v4    # "sb":Ljava/lang/StringBuffer;
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "allowNonASCII":Z
    goto :goto_0

    .line 452
    .end local v4    # "sb":Ljava/lang/StringBuffer;
    .restart local v1    # "c":C
    .restart local v2    # "i":I
    :cond_3
    if-nez v4, :cond_4

    .line 453
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 454
    .local v4, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {p0, v10, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 456
    .end local v4    # "sb":Ljava/lang/StringBuffer;
    :cond_4
    int-to-byte v5, v1

    invoke-static {v4, v5}, Lsun/net/www/ParseUtil;->appendEscape(Ljava/lang/StringBuffer;B)V

    goto :goto_2

    .line 461
    :cond_5
    if-eqz v0, :cond_8

    .line 462
    invoke-static {v1}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v5

    if-nez v5, :cond_6

    .line 463
    invoke-static {v1}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v5

    .line 461
    if-eqz v5, :cond_8

    .line 464
    :cond_6
    if-nez v4, :cond_7

    .line 465
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 466
    .restart local v4    # "sb":Ljava/lang/StringBuffer;
    invoke-virtual {p0, v10, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 468
    .end local v4    # "sb":Ljava/lang/StringBuffer;
    :cond_7
    invoke-static {v4, v1}, Lsun/net/www/ParseUtil;->appendEncoded(Ljava/lang/StringBuffer;C)V

    goto :goto_2

    .line 470
    :cond_8
    if-eqz v4, :cond_1

    .line 471
    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 474
    .end local v1    # "c":C
    :cond_9
    if-nez v4, :cond_a

    .end local p0    # "s":Ljava/lang/String;
    :goto_3
    return-object p0

    .restart local p0    # "s":Ljava/lang/String;
    :cond_a
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_3
.end method

.method private static toString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "scheme"    # Ljava/lang/String;
    .param p1, "opaquePart"    # Ljava/lang/String;
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "userInfo"    # Ljava/lang/String;
    .param p4, "host"    # Ljava/lang/String;
    .param p5, "port"    # I
    .param p6, "path"    # Ljava/lang/String;
    .param p7, "query"    # Ljava/lang/String;
    .param p8, "fragment"    # Ljava/lang/String;

    .prologue
    .line 333
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 334
    .local v1, "sb":Ljava/lang/StringBuffer;
    if-eqz p0, :cond_0

    .line 335
    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 336
    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    .line 338
    invoke-static/range {v1 .. v8}, Lsun/net/www/ParseUtil;->appendSchemeSpecificPart(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 341
    move-object/from16 v0, p8

    invoke-static {v1, v0}, Lsun/net/www/ParseUtil;->appendFragment(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 342
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static toURI(Ljava/net/URL;)Ljava/net/URI;
    .locals 9
    .param p0, "url"    # Ljava/net/URL;

    .prologue
    .line 276
    invoke-virtual {p0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v3

    .line 277
    .local v3, "protocol":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/net/URL;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 278
    .local v0, "auth":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 279
    .local v2, "path":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v4

    .line 280
    .local v4, "query":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/net/URL;->getRef()Ljava/lang/String;

    move-result-object v5

    .line 281
    .local v5, "ref":Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string/jumbo v7, "/"

    invoke-virtual {v2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 288
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    const-string/jumbo v7, ":-1"

    invoke-virtual {v0, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 289
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x3

    const/4 v8, 0x0

    invoke-virtual {v0, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 293
    :cond_1
    :try_start_0
    invoke-static {v3, v0, v2, v4, v5}, Lsun/net/www/ParseUtil;->createURI(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/URI;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 297
    :goto_1
    return-object v6

    .line 282
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 294
    :catch_0
    move-exception v1

    .line 295
    .local v1, "e":Ljava/net/URISyntaxException;
    const/4 v6, 0x0

    .local v6, "uri":Ljava/net/URI;
    goto :goto_1
.end method

.method private static unescape(Ljava/lang/String;I)B
    .locals 2
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "i"    # I

    .prologue
    .line 164
    add-int/lit8 v0, p1, 0x1

    add-int/lit8 v1, p1, 0x3

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    int-to-byte v0, v0

    return v0
.end method


# virtual methods
.method public canonizeString(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "file"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x2f

    const/4 v4, 0x0

    .line 230
    const/4 v0, 0x0

    .line 231
    .local v0, "i":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 234
    .local v1, "lim":I
    :goto_0
    const-string/jumbo v2, "/../"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_1

    .line 235
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p1, v5, v2}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v1

    if-ltz v1, :cond_0

    .line 236
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v0, 0x3

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 238
    :cond_0
    add-int/lit8 v2, v0, 0x3

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 242
    :cond_1
    :goto_1
    const-string/jumbo v2, "/./"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_2

    .line 243
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v0, 0x2

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 246
    :cond_2
    :goto_2
    const-string/jumbo v2, "/.."

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 247
    const-string/jumbo v2, "/.."

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 248
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p1, v5, v2}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v1

    if-ltz v1, :cond_3

    .line 249
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 251
    :cond_3
    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 255
    :cond_4
    const-string/jumbo v2, "/."

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 256
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 258
    :cond_5
    return-object p1
.end method
