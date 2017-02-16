.class public final Ljava/net/URI;
.super Ljava/lang/Object;
.source "URI.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/net/URI$Parser;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/net/URI;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final H_ALPHA:J

.field private static final H_ALPHANUM:J

.field private static final H_DASH:J

.field private static final H_DIGIT:J = 0x0L

.field private static final H_DOT:J

.field private static final H_ESCAPED:J = 0x0L

.field private static final H_HEX:J

.field private static final H_LEFT_BRACKET:J

.field private static final H_LOWALPHA:J

.field private static final H_MARK:J

.field private static final H_PATH:J

.field private static final H_PCHAR:J

.field private static final H_REG_NAME:J

.field private static final H_RESERVED:J

.field private static final H_SCHEME:J

.field private static final H_SERVER:J

.field private static final H_SERVER_PERCENT:J

.field private static final H_UNDERSCORE:J

.field private static final H_UNRESERVED:J

.field private static final H_UPALPHA:J

.field private static final H_URIC:J

.field private static final H_URIC_NO_SLASH:J

.field private static final H_USERINFO:J

.field private static final L_ALPHA:J = 0x0L

.field private static final L_ALPHANUM:J

.field private static final L_DASH:J

.field private static final L_DIGIT:J

.field private static final L_DOT:J

.field private static final L_ESCAPED:J = 0x1L

.field private static final L_HEX:J

.field private static final L_LEFT_BRACKET:J

.field private static final L_LOWALPHA:J = 0x0L

.field private static final L_MARK:J

.field private static final L_PATH:J

.field private static final L_PCHAR:J

.field private static final L_REG_NAME:J

.field private static final L_RESERVED:J

.field private static final L_SCHEME:J

.field private static final L_SERVER:J

.field private static final L_SERVER_PERCENT:J

.field private static final L_UNDERSCORE:J

.field private static final L_UNRESERVED:J

.field private static final L_UPALPHA:J = 0x0L

.field private static final L_URIC:J

.field private static final L_URIC_NO_SLASH:J

.field private static final L_USERINFO:J

.field private static final hexDigits:[C

.field static final serialVersionUID:J = -0x53fe87d1bc61b655L


# instance fields
.field private transient authority:Ljava/lang/String;

.field private volatile transient decodedAuthority:Ljava/lang/String;

.field private volatile transient decodedFragment:Ljava/lang/String;

.field private volatile transient decodedPath:Ljava/lang/String;

.field private volatile transient decodedQuery:Ljava/lang/String;

.field private volatile transient decodedSchemeSpecificPart:Ljava/lang/String;

.field private volatile transient decodedUserInfo:Ljava/lang/String;

.field private transient fragment:Ljava/lang/String;

.field private volatile transient hash:I

.field private transient host:Ljava/lang/String;

.field private transient path:Ljava/lang/String;

.field private transient port:I

.field private transient query:Ljava/lang/String;

.field private transient scheme:Ljava/lang/String;

.field private volatile transient schemeSpecificPart:Ljava/lang/String;

.field private volatile string:Ljava/lang/String;

.field private transient userInfo:Ljava/lang/String;


# direct methods
.method static synthetic -get0()J
    .locals 2

    sget-wide v0, Ljava/net/URI;->H_ALPHA:J

    return-wide v0
.end method

.method static synthetic -get1()J
    .locals 2

    sget-wide v0, Ljava/net/URI;->H_ALPHANUM:J

    return-wide v0
.end method

.method static synthetic -get10()J
    .locals 2

    sget-wide v0, Ljava/net/URI;->H_UNDERSCORE:J

    return-wide v0
.end method

.method static synthetic -get11()J
    .locals 2

    sget-wide v0, Ljava/net/URI;->H_URIC:J

    return-wide v0
.end method

.method static synthetic -get12()J
    .locals 2

    sget-wide v0, Ljava/net/URI;->H_USERINFO:J

    return-wide v0
.end method

.method static synthetic -get13()J
    .locals 2

    sget-wide v0, Ljava/net/URI;->L_ALPHANUM:J

    return-wide v0
.end method

.method static synthetic -get14()J
    .locals 2

    sget-wide v0, Ljava/net/URI;->L_DASH:J

    return-wide v0
.end method

.method static synthetic -get15()J
    .locals 2

    sget-wide v0, Ljava/net/URI;->L_DIGIT:J

    return-wide v0
.end method

.method static synthetic -get16()J
    .locals 2

    sget-wide v0, Ljava/net/URI;->L_DOT:J

    return-wide v0
.end method

.method static synthetic -get17()J
    .locals 2

    sget-wide v0, Ljava/net/URI;->L_HEX:J

    return-wide v0
.end method

.method static synthetic -get18()J
    .locals 2

    sget-wide v0, Ljava/net/URI;->L_PATH:J

    return-wide v0
.end method

.method static synthetic -get19()J
    .locals 2

    sget-wide v0, Ljava/net/URI;->L_REG_NAME:J

    return-wide v0
.end method

.method static synthetic -get2()J
    .locals 2

    sget-wide v0, Ljava/net/URI;->H_DASH:J

    return-wide v0
.end method

.method static synthetic -get20()J
    .locals 2

    sget-wide v0, Ljava/net/URI;->L_SCHEME:J

    return-wide v0
.end method

.method static synthetic -get21()J
    .locals 2

    sget-wide v0, Ljava/net/URI;->L_SERVER:J

    return-wide v0
.end method

.method static synthetic -get22()J
    .locals 2

    sget-wide v0, Ljava/net/URI;->L_SERVER_PERCENT:J

    return-wide v0
.end method

.method static synthetic -get23()J
    .locals 2

    sget-wide v0, Ljava/net/URI;->L_UNDERSCORE:J

    return-wide v0
.end method

.method static synthetic -get24()J
    .locals 2

    sget-wide v0, Ljava/net/URI;->L_URIC:J

    return-wide v0
.end method

.method static synthetic -get25()J
    .locals 2

    sget-wide v0, Ljava/net/URI;->L_USERINFO:J

    return-wide v0
.end method

.method static synthetic -get3()J
    .locals 2

    sget-wide v0, Ljava/net/URI;->H_DOT:J

    return-wide v0
.end method

.method static synthetic -get4()J
    .locals 2

    sget-wide v0, Ljava/net/URI;->H_HEX:J

    return-wide v0
.end method

.method static synthetic -get5()J
    .locals 2

    sget-wide v0, Ljava/net/URI;->H_PATH:J

    return-wide v0
.end method

.method static synthetic -get6()J
    .locals 2

    sget-wide v0, Ljava/net/URI;->H_REG_NAME:J

    return-wide v0
.end method

.method static synthetic -get7()J
    .locals 2

    sget-wide v0, Ljava/net/URI;->H_SCHEME:J

    return-wide v0
.end method

.method static synthetic -get8()J
    .locals 2

    sget-wide v0, Ljava/net/URI;->H_SERVER:J

    return-wide v0
.end method

.method static synthetic -get9()J
    .locals 2

    sget-wide v0, Ljava/net/URI;->H_SERVER_PERCENT:J

    return-wide v0
.end method

.method static synthetic -set0(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set1(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set2(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Ljava/net/URI;->host:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set3(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Ljava/net/URI;->path:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set4(Ljava/net/URI;I)I
    .locals 0

    iput p1, p0, Ljava/net/URI;->port:I

    return p1
.end method

.method static synthetic -set5(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Ljava/net/URI;->query:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set6(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set7(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Ljava/net/URI;->schemeSpecificPart:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set8(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Ljava/net/URI;->string:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set9(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -wrap0(CJJ)Z
    .locals 1
    .param p0, "c"    # C
    .param p1, "lowMask"    # J
    .param p3, "highMask"    # J

    .prologue
    invoke-static {p0, p1, p2, p3, p4}, Ljava/net/URI;->match(CJJ)Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/16 v9, 0x61

    const/16 v8, 0x41

    const-wide/16 v6, 0x1

    const-wide/16 v4, 0x0

    const-class v0, Ljava/net/URI;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Ljava/net/URI;->-assertionsDisabled:Z

    .line 2532
    const/16 v0, 0x30

    const/16 v1, 0x39

    invoke-static {v0, v1}, Ljava/net/URI;->lowMask(CC)J

    move-result-wide v0

    sput-wide v0, Ljava/net/URI;->L_DIGIT:J

    .line 2539
    const/16 v0, 0x5a

    invoke-static {v8, v0}, Ljava/net/URI;->highMask(CC)J

    move-result-wide v0

    sput-wide v0, Ljava/net/URI;->H_UPALPHA:J

    .line 2545
    const/16 v0, 0x7a

    invoke-static {v9, v0}, Ljava/net/URI;->highMask(CC)J

    move-result-wide v0

    sput-wide v0, Ljava/net/URI;->H_LOWALPHA:J

    .line 2549
    sget-wide v0, Ljava/net/URI;->H_LOWALPHA:J

    sget-wide v2, Ljava/net/URI;->H_UPALPHA:J

    or-long/2addr v0, v2

    sput-wide v0, Ljava/net/URI;->H_ALPHA:J

    .line 2552
    sget-wide v0, Ljava/net/URI;->L_DIGIT:J

    or-long/2addr v0, v4

    sput-wide v0, Ljava/net/URI;->L_ALPHANUM:J

    .line 2553
    sget-wide v0, Ljava/net/URI;->H_ALPHA:J

    or-long/2addr v0, v4

    sput-wide v0, Ljava/net/URI;->H_ALPHANUM:J

    .line 2557
    sget-wide v0, Ljava/net/URI;->L_DIGIT:J

    sput-wide v0, Ljava/net/URI;->L_HEX:J

    .line 2558
    const/16 v0, 0x46

    invoke-static {v8, v0}, Ljava/net/URI;->highMask(CC)J

    move-result-wide v0

    const/16 v2, 0x66

    invoke-static {v9, v2}, Ljava/net/URI;->highMask(CC)J

    move-result-wide v2

    or-long/2addr v0, v2

    sput-wide v0, Ljava/net/URI;->H_HEX:J

    .line 2562
    const-string/jumbo v0, "-_.!~*\'()"

    invoke-static {v0}, Ljava/net/URI;->lowMask(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Ljava/net/URI;->L_MARK:J

    .line 2563
    const-string/jumbo v0, "-_.!~*\'()"

    invoke-static {v0}, Ljava/net/URI;->highMask(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Ljava/net/URI;->H_MARK:J

    .line 2566
    sget-wide v0, Ljava/net/URI;->L_ALPHANUM:J

    sget-wide v2, Ljava/net/URI;->L_MARK:J

    or-long/2addr v0, v2

    sput-wide v0, Ljava/net/URI;->L_UNRESERVED:J

    .line 2567
    sget-wide v0, Ljava/net/URI;->H_ALPHANUM:J

    sget-wide v2, Ljava/net/URI;->H_MARK:J

    or-long/2addr v0, v2

    sput-wide v0, Ljava/net/URI;->H_UNRESERVED:J

    .line 2572
    const-string/jumbo v0, ";/?:@&=+$,[]"

    invoke-static {v0}, Ljava/net/URI;->lowMask(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Ljava/net/URI;->L_RESERVED:J

    .line 2573
    const-string/jumbo v0, ";/?:@&=+$,[]"

    invoke-static {v0}, Ljava/net/URI;->highMask(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Ljava/net/URI;->H_RESERVED:J

    .line 2581
    sget-wide v0, Ljava/net/URI;->L_RESERVED:J

    sget-wide v2, Ljava/net/URI;->L_UNRESERVED:J

    or-long/2addr v0, v2

    or-long/2addr v0, v6

    sput-wide v0, Ljava/net/URI;->L_URIC:J

    .line 2582
    sget-wide v0, Ljava/net/URI;->H_RESERVED:J

    sget-wide v2, Ljava/net/URI;->H_UNRESERVED:J

    or-long/2addr v0, v2

    or-long/2addr v0, v4

    sput-wide v0, Ljava/net/URI;->H_URIC:J

    .line 2587
    sget-wide v0, Ljava/net/URI;->L_UNRESERVED:J

    or-long/2addr v0, v6

    const-string/jumbo v2, ":@&=+$,"

    invoke-static {v2}, Ljava/net/URI;->lowMask(Ljava/lang/String;)J

    move-result-wide v2

    or-long/2addr v0, v2

    .line 2586
    sput-wide v0, Ljava/net/URI;->L_PCHAR:J

    .line 2589
    sget-wide v0, Ljava/net/URI;->H_UNRESERVED:J

    or-long/2addr v0, v4

    const-string/jumbo v2, ":@&=+$,"

    invoke-static {v2}, Ljava/net/URI;->highMask(Ljava/lang/String;)J

    move-result-wide v2

    or-long/2addr v0, v2

    .line 2588
    sput-wide v0, Ljava/net/URI;->H_PCHAR:J

    .line 2592
    sget-wide v0, Ljava/net/URI;->L_PCHAR:J

    const-string/jumbo v2, ";/"

    invoke-static {v2}, Ljava/net/URI;->lowMask(Ljava/lang/String;)J

    move-result-wide v2

    or-long/2addr v0, v2

    sput-wide v0, Ljava/net/URI;->L_PATH:J

    .line 2593
    sget-wide v0, Ljava/net/URI;->H_PCHAR:J

    const-string/jumbo v2, ";/"

    invoke-static {v2}, Ljava/net/URI;->highMask(Ljava/lang/String;)J

    move-result-wide v2

    or-long/2addr v0, v2

    sput-wide v0, Ljava/net/URI;->H_PATH:J

    .line 2596
    const-string/jumbo v0, "-"

    invoke-static {v0}, Ljava/net/URI;->lowMask(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Ljava/net/URI;->L_DASH:J

    .line 2597
    const-string/jumbo v0, "-"

    invoke-static {v0}, Ljava/net/URI;->highMask(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Ljava/net/URI;->H_DASH:J

    .line 2600
    const-string/jumbo v0, "_"

    invoke-static {v0}, Ljava/net/URI;->lowMask(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Ljava/net/URI;->L_UNDERSCORE:J

    .line 2601
    const-string/jumbo v0, "_"

    invoke-static {v0}, Ljava/net/URI;->highMask(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Ljava/net/URI;->H_UNDERSCORE:J

    .line 2604
    const-string/jumbo v0, "."

    invoke-static {v0}, Ljava/net/URI;->lowMask(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Ljava/net/URI;->L_DOT:J

    .line 2605
    const-string/jumbo v0, "."

    invoke-static {v0}, Ljava/net/URI;->highMask(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Ljava/net/URI;->H_DOT:J

    .line 2610
    sget-wide v0, Ljava/net/URI;->L_UNRESERVED:J

    or-long/2addr v0, v6

    const-string/jumbo v2, ";:&=+$,"

    invoke-static {v2}, Ljava/net/URI;->lowMask(Ljava/lang/String;)J

    move-result-wide v2

    or-long/2addr v0, v2

    .line 2609
    sput-wide v0, Ljava/net/URI;->L_USERINFO:J

    .line 2612
    sget-wide v0, Ljava/net/URI;->H_UNRESERVED:J

    or-long/2addr v0, v4

    const-string/jumbo v2, ";:&=+$,"

    invoke-static {v2}, Ljava/net/URI;->highMask(Ljava/lang/String;)J

    move-result-wide v2

    or-long/2addr v0, v2

    .line 2611
    sput-wide v0, Ljava/net/URI;->H_USERINFO:J

    .line 2617
    sget-wide v0, Ljava/net/URI;->L_UNRESERVED:J

    or-long/2addr v0, v6

    const-string/jumbo v2, "$,;:@&=+"

    invoke-static {v2}, Ljava/net/URI;->lowMask(Ljava/lang/String;)J

    move-result-wide v2

    or-long/2addr v0, v2

    .line 2616
    sput-wide v0, Ljava/net/URI;->L_REG_NAME:J

    .line 2619
    sget-wide v0, Ljava/net/URI;->H_UNRESERVED:J

    or-long/2addr v0, v4

    const-string/jumbo v2, "$,;:@&=+"

    invoke-static {v2}, Ljava/net/URI;->highMask(Ljava/lang/String;)J

    move-result-wide v2

    or-long/2addr v0, v2

    .line 2618
    sput-wide v0, Ljava/net/URI;->H_REG_NAME:J

    .line 2623
    sget-wide v0, Ljava/net/URI;->L_USERINFO:J

    sget-wide v2, Ljava/net/URI;->L_ALPHANUM:J

    or-long/2addr v0, v2

    sget-wide v2, Ljava/net/URI;->L_DASH:J

    or-long/2addr v0, v2

    const-string/jumbo v2, ".:@[]"

    invoke-static {v2}, Ljava/net/URI;->lowMask(Ljava/lang/String;)J

    move-result-wide v2

    or-long/2addr v0, v2

    .line 2622
    sput-wide v0, Ljava/net/URI;->L_SERVER:J

    .line 2625
    sget-wide v0, Ljava/net/URI;->H_USERINFO:J

    sget-wide v2, Ljava/net/URI;->H_ALPHANUM:J

    or-long/2addr v0, v2

    sget-wide v2, Ljava/net/URI;->H_DASH:J

    or-long/2addr v0, v2

    const-string/jumbo v2, ".:@[]"

    invoke-static {v2}, Ljava/net/URI;->highMask(Ljava/lang/String;)J

    move-result-wide v2

    or-long/2addr v0, v2

    .line 2624
    sput-wide v0, Ljava/net/URI;->H_SERVER:J

    .line 2630
    sget-wide v0, Ljava/net/URI;->L_SERVER:J

    const-string/jumbo v2, "%"

    invoke-static {v2}, Ljava/net/URI;->lowMask(Ljava/lang/String;)J

    move-result-wide v2

    or-long/2addr v0, v2

    .line 2629
    sput-wide v0, Ljava/net/URI;->L_SERVER_PERCENT:J

    .line 2632
    sget-wide v0, Ljava/net/URI;->H_SERVER:J

    const-string/jumbo v2, "%"

    invoke-static {v2}, Ljava/net/URI;->highMask(Ljava/lang/String;)J

    move-result-wide v2

    or-long/2addr v0, v2

    .line 2631
    sput-wide v0, Ljava/net/URI;->H_SERVER_PERCENT:J

    .line 2633
    const-string/jumbo v0, "["

    invoke-static {v0}, Ljava/net/URI;->lowMask(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Ljava/net/URI;->L_LEFT_BRACKET:J

    .line 2634
    const-string/jumbo v0, "["

    invoke-static {v0}, Ljava/net/URI;->highMask(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Ljava/net/URI;->H_LEFT_BRACKET:J

    .line 2637
    sget-wide v0, Ljava/net/URI;->L_DIGIT:J

    or-long/2addr v0, v4

    const-string/jumbo v2, "+-."

    invoke-static {v2}, Ljava/net/URI;->lowMask(Ljava/lang/String;)J

    move-result-wide v2

    or-long/2addr v0, v2

    sput-wide v0, Ljava/net/URI;->L_SCHEME:J

    .line 2638
    sget-wide v0, Ljava/net/URI;->H_ALPHA:J

    or-long/2addr v0, v4

    const-string/jumbo v2, "+-."

    invoke-static {v2}, Ljava/net/URI;->highMask(Ljava/lang/String;)J

    move-result-wide v2

    or-long/2addr v0, v2

    sput-wide v0, Ljava/net/URI;->H_SCHEME:J

    .line 2643
    sget-wide v0, Ljava/net/URI;->L_UNRESERVED:J

    or-long/2addr v0, v6

    const-string/jumbo v2, ";?:@&=+$,"

    invoke-static {v2}, Ljava/net/URI;->lowMask(Ljava/lang/String;)J

    move-result-wide v2

    or-long/2addr v0, v2

    .line 2642
    sput-wide v0, Ljava/net/URI;->L_URIC_NO_SLASH:J

    .line 2645
    sget-wide v0, Ljava/net/URI;->H_UNRESERVED:J

    or-long/2addr v0, v4

    const-string/jumbo v2, ";?:@&=+$,"

    invoke-static {v2}, Ljava/net/URI;->highMask(Ljava/lang/String;)J

    move-result-wide v2

    or-long/2addr v0, v2

    .line 2644
    sput-wide v0, Ljava/net/URI;->H_URIC_NO_SLASH:J

    .line 2650
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Ljava/net/URI;->hexDigits:[C

    .line 466
    return-void

    :cond_0
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 2650
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

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 517
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 488
    const/4 v0, -0x1

    iput v0, p0, Ljava/net/URI;->port:I

    .line 499
    iput-object v1, p0, Ljava/net/URI;->decodedUserInfo:Ljava/lang/String;

    .line 500
    iput-object v1, p0, Ljava/net/URI;->decodedAuthority:Ljava/lang/String;

    .line 501
    iput-object v1, p0, Ljava/net/URI;->decodedPath:Ljava/lang/String;

    .line 502
    iput-object v1, p0, Ljava/net/URI;->decodedQuery:Ljava/lang/String;

    .line 503
    iput-object v1, p0, Ljava/net/URI;->decodedFragment:Ljava/lang/String;

    .line 504
    iput-object v1, p0, Ljava/net/URI;->decodedSchemeSpecificPart:Ljava/lang/String;

    .line 517
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 588
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 488
    const/4 v0, -0x1

    iput v0, p0, Ljava/net/URI;->port:I

    .line 499
    iput-object v1, p0, Ljava/net/URI;->decodedUserInfo:Ljava/lang/String;

    .line 500
    iput-object v1, p0, Ljava/net/URI;->decodedAuthority:Ljava/lang/String;

    .line 501
    iput-object v1, p0, Ljava/net/URI;->decodedPath:Ljava/lang/String;

    .line 502
    iput-object v1, p0, Ljava/net/URI;->decodedQuery:Ljava/lang/String;

    .line 503
    iput-object v1, p0, Ljava/net/URI;->decodedFragment:Ljava/lang/String;

    .line 504
    iput-object v1, p0, Ljava/net/URI;->decodedSchemeSpecificPart:Ljava/lang/String;

    .line 589
    new-instance v0, Ljava/net/URI$Parser;

    invoke-direct {v0, p0, p1}, Ljava/net/URI$Parser;-><init>(Ljava/net/URI;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/URI$Parser;->parse(Z)V

    .line 588
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1, "scheme"    # Ljava/lang/String;
    .param p2, "ssp"    # Ljava/lang/String;
    .param p3, "fragment"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    const/4 v6, -0x1

    const/4 v3, 0x0

    .line 815
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 488
    iput v6, p0, Ljava/net/URI;->port:I

    .line 499
    iput-object v3, p0, Ljava/net/URI;->decodedUserInfo:Ljava/lang/String;

    .line 500
    iput-object v3, p0, Ljava/net/URI;->decodedAuthority:Ljava/lang/String;

    .line 501
    iput-object v3, p0, Ljava/net/URI;->decodedPath:Ljava/lang/String;

    .line 502
    iput-object v3, p0, Ljava/net/URI;->decodedQuery:Ljava/lang/String;

    .line 503
    iput-object v3, p0, Ljava/net/URI;->decodedFragment:Ljava/lang/String;

    .line 504
    iput-object v3, p0, Ljava/net/URI;->decodedSchemeSpecificPart:Ljava/lang/String;

    .line 818
    new-instance v10, Ljava/net/URI$Parser;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, v3

    move-object v7, v3

    move-object v8, v3

    move-object v9, p3

    invoke-direct/range {v0 .. v9}, Ljava/net/URI;->toString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, p0, v0}, Ljava/net/URI$Parser;-><init>(Ljava/net/URI;Ljava/lang/String;)V

    .line 821
    const/4 v0, 0x0

    .line 818
    invoke-virtual {v10, v0}, Ljava/net/URI$Parser;->parse(Z)V

    .line 816
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p1, "scheme"    # Ljava/lang/String;
    .param p2, "userInfo"    # Ljava/lang/String;
    .param p3, "host"    # Ljava/lang/String;
    .param p4, "port"    # I
    .param p5, "path"    # Ljava/lang/String;
    .param p6, "query"    # Ljava/lang/String;
    .param p7, "fragment"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 665
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 488
    const/4 v1, -0x1

    iput v1, p0, Ljava/net/URI;->port:I

    .line 499
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/net/URI;->decodedUserInfo:Ljava/lang/String;

    .line 500
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/net/URI;->decodedAuthority:Ljava/lang/String;

    .line 501
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/net/URI;->decodedPath:Ljava/lang/String;

    .line 502
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/net/URI;->decodedQuery:Ljava/lang/String;

    .line 503
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/net/URI;->decodedFragment:Ljava/lang/String;

    .line 504
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/net/URI;->decodedSchemeSpecificPart:Ljava/lang/String;

    .line 670
    const/4 v3, 0x0

    .line 671
    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    move/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    .line 670
    invoke-direct/range {v1 .. v10}, Ljava/net/URI;->toString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 673
    .local v11, "s":Ljava/lang/String;
    move-object/from16 v0, p5

    invoke-static {v11, p1, v0}, Ljava/net/URI;->checkPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    new-instance v1, Ljava/net/URI$Parser;

    invoke-direct {v1, p0, v11}, Ljava/net/URI$Parser;-><init>(Ljava/net/URI;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/net/URI$Parser;->parse(Z)V

    .line 668
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "scheme"    # Ljava/lang/String;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "fragment"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 775
    const/4 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, v2

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 773
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1, "scheme"    # Ljava/lang/String;
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "query"    # Ljava/lang/String;
    .param p5, "fragment"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 738
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 488
    const/4 v0, -0x1

    iput v0, p0, Ljava/net/URI;->port:I

    .line 499
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/net/URI;->decodedUserInfo:Ljava/lang/String;

    .line 500
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/net/URI;->decodedAuthority:Ljava/lang/String;

    .line 501
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/net/URI;->decodedPath:Ljava/lang/String;

    .line 502
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/net/URI;->decodedQuery:Ljava/lang/String;

    .line 503
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/net/URI;->decodedFragment:Ljava/lang/String;

    .line 504
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/net/URI;->decodedSchemeSpecificPart:Ljava/lang/String;

    .line 743
    const/4 v2, 0x0

    .line 744
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v7, p3

    move-object v8, p4

    move-object/from16 v9, p5

    .line 743
    invoke-direct/range {v0 .. v9}, Ljava/net/URI;->toString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 746
    .local v10, "s":Ljava/lang/String;
    invoke-static {v10, p1, p3}, Ljava/net/URI;->checkPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    new-instance v0, Ljava/net/URI$Parser;

    invoke-direct {v0, p0, v10}, Ljava/net/URI$Parser;-><init>(Ljava/net/URI;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/URI$Parser;->parse(Z)V

    .line 741
    return-void
.end method

.method private appendAuthority(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 10
    .param p1, "sb"    # Ljava/lang/StringBuffer;
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "userInfo"    # Ljava/lang/String;
    .param p4, "host"    # Ljava/lang/String;
    .param p5, "port"    # I

    .prologue
    .line 1809
    if-eqz p4, :cond_7

    .line 1810
    const-string/jumbo v4, "//"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1811
    if-eqz p3, :cond_0

    .line 1812
    sget-wide v4, Ljava/net/URI;->L_USERINFO:J

    sget-wide v6, Ljava/net/URI;->H_USERINFO:J

    invoke-static {p3, v4, v5, v6, v7}, Ljava/net/URI;->quote(Ljava/lang/String;JJ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1813
    const/16 v4, 0x40

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1815
    :cond_0
    const/16 v4, 0x3a

    invoke-virtual {p4, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ltz v4, :cond_1

    .line 1816
    const-string/jumbo v4, "["

    invoke-virtual {p4, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1815
    :cond_1
    const/4 v3, 0x0

    .line 1818
    .local v3, "needBrackets":Z
    :goto_0
    if-eqz v3, :cond_2

    const/16 v4, 0x5b

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1819
    :cond_2
    invoke-virtual {p1, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1820
    if-eqz v3, :cond_3

    const/16 v4, 0x5d

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1821
    :cond_3
    const/4 v4, -0x1

    if-eq p5, v4, :cond_4

    .line 1822
    const/16 v4, 0x3a

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1823
    invoke-virtual {p1, p5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1807
    .end local v3    # "needBrackets":Z
    :cond_4
    :goto_1
    return-void

    .line 1817
    :cond_5
    const-string/jumbo v4, "]"

    invoke-virtual {p4, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v4, 0x0

    :goto_2
    move v3, v4

    goto :goto_0

    :cond_6
    const/4 v4, 0x1

    goto :goto_2

    .line 1825
    :cond_7
    if-eqz p2, :cond_4

    .line 1826
    const-string/jumbo v4, "//"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1827
    const-string/jumbo v4, "["

    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1829
    const-string/jumbo v4, "]"

    invoke-virtual {p2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 1830
    .local v2, "end":I
    move-object v1, p2

    .local v1, "doquote":Ljava/lang/String;
    const-string/jumbo v0, ""

    .line 1831
    .local v0, "dontquote":Ljava/lang/String;
    const/4 v4, -0x1

    if-eq v2, v4, :cond_8

    const-string/jumbo v4, ":"

    invoke-virtual {p2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_8

    .line 1833
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v2, v4, :cond_9

    .line 1834
    move-object v0, p2

    .line 1835
    const-string/jumbo v1, ""

    .line 1841
    :cond_8
    :goto_3
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1843
    sget-wide v4, Ljava/net/URI;->L_REG_NAME:J

    sget-wide v6, Ljava/net/URI;->L_SERVER:J

    or-long/2addr v4, v6

    .line 1844
    sget-wide v6, Ljava/net/URI;->H_REG_NAME:J

    sget-wide v8, Ljava/net/URI;->H_SERVER:J

    or-long/2addr v6, v8

    .line 1842
    invoke-static {v1, v4, v5, v6, v7}, Ljava/net/URI;->quote(Ljava/lang/String;JJ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 1837
    :cond_9
    add-int/lit8 v4, v2, 0x1

    const/4 v5, 0x0

    invoke-virtual {p2, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1838
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 1847
    .end local v0    # "dontquote":Ljava/lang/String;
    .end local v1    # "doquote":Ljava/lang/String;
    .end local v2    # "end":I
    :cond_a
    sget-wide v4, Ljava/net/URI;->L_REG_NAME:J

    sget-wide v6, Ljava/net/URI;->L_SERVER:J

    or-long/2addr v4, v6

    .line 1848
    sget-wide v6, Ljava/net/URI;->H_REG_NAME:J

    sget-wide v8, Ljava/net/URI;->H_SERVER:J

    or-long/2addr v6, v8

    .line 1846
    invoke-static {p2, v4, v5, v6, v7}, Ljava/net/URI;->quote(Ljava/lang/String;JJ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method private static appendEncoded(Ljava/lang/StringBuffer;C)V
    .locals 6
    .param p0, "sb"    # Ljava/lang/StringBuffer;
    .param p1, "c"    # C

    .prologue
    .line 2662
    const/4 v1, 0x0

    .line 2664
    .local v1, "bb":Ljava/nio/ByteBuffer;
    :try_start_0
    const-string/jumbo v3, "UTF-8"

    invoke-static {v3}, Lsun/nio/cs/ThreadLocalCoders;->encoderFor(Ljava/lang/Object;)Ljava/nio/charset/CharsetEncoder;

    move-result-object v3

    .line 2665
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

    .line 2664
    invoke-virtual {v3, v4}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2669
    .end local v1    # "bb":Ljava/nio/ByteBuffer;
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2670
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    and-int/lit16 v0, v3, 0xff

    .line 2671
    .local v0, "b":I
    const/16 v3, 0x80

    if-lt v0, v3, :cond_1

    .line 2672
    int-to-byte v3, v0

    invoke-static {p0, v3}, Ljava/net/URI;->appendEscape(Ljava/lang/StringBuffer;B)V

    goto :goto_0

    .line 2666
    .end local v0    # "b":I
    .restart local v1    # "bb":Ljava/nio/ByteBuffer;
    :catch_0
    move-exception v2

    .line 2667
    .local v2, "x":Ljava/nio/charset/CharacterCodingException;
    sget-boolean v3, Ljava/net/URI;->-assertionsDisabled:Z

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 2674
    .end local v1    # "bb":Ljava/nio/ByteBuffer;
    .end local v2    # "x":Ljava/nio/charset/CharacterCodingException;
    .restart local v0    # "b":I
    :cond_1
    int-to-char v3, v0

    invoke-virtual {p0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 2661
    .end local v0    # "b":I
    :cond_2
    return-void
.end method

.method private static appendEscape(Ljava/lang/StringBuffer;B)V
    .locals 2
    .param p0, "sb"    # Ljava/lang/StringBuffer;
    .param p1, "b"    # B

    .prologue
    .line 2656
    const/16 v0, 0x25

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2657
    sget-object v0, Ljava/net/URI;->hexDigits:[C

    shr-int/lit8 v1, p1, 0x4

    and-int/lit8 v1, v1, 0xf

    aget-char v0, v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2658
    sget-object v0, Ljava/net/URI;->hexDigits:[C

    shr-int/lit8 v1, p1, 0x0

    and-int/lit8 v1, v1, 0xf

    aget-char v0, v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2655
    return-void
.end method

.method private appendFragment(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .locals 4
    .param p1, "sb"    # Ljava/lang/StringBuffer;
    .param p2, "fragment"    # Ljava/lang/String;

    .prologue
    .line 1895
    if-eqz p2, :cond_0

    .line 1896
    const/16 v0, 0x23

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1897
    sget-wide v0, Ljava/net/URI;->L_URIC:J

    sget-wide v2, Ljava/net/URI;->H_URIC:J

    invoke-static {p2, v0, v1, v2, v3}, Ljava/net/URI;->quote(Ljava/lang/String;JJ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1894
    :cond_0
    return-void
.end method

.method private appendSchemeSpecificPart(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1, "sb"    # Ljava/lang/StringBuffer;
    .param p2, "opaquePart"    # Ljava/lang/String;
    .param p3, "authority"    # Ljava/lang/String;
    .param p4, "userInfo"    # Ljava/lang/String;
    .param p5, "host"    # Ljava/lang/String;
    .param p6, "port"    # I
    .param p7, "path"    # Ljava/lang/String;
    .param p8, "query"    # Ljava/lang/String;

    .prologue
    .line 1862
    if-eqz p2, :cond_3

    .line 1866
    const-string/jumbo v2, "//["

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1867
    const-string/jumbo v2, "]"

    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    .line 1868
    .local v10, "end":I
    const/4 v2, -0x1

    if-eq v10, v2, :cond_0

    const-string/jumbo v2, ":"

    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 1870
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v10, v2, :cond_1

    .line 1871
    move-object v8, p2

    .line 1872
    .local v8, "dontquote":Ljava/lang/String;
    const-string/jumbo v9, ""

    .line 1877
    .local v9, "doquote":Ljava/lang/String;
    :goto_0
    invoke-virtual {p1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1878
    sget-wide v2, Ljava/net/URI;->L_URIC:J

    sget-wide v4, Ljava/net/URI;->H_URIC:J

    invoke-static {v9, v2, v3, v4, v5}, Ljava/net/URI;->quote(Ljava/lang/String;JJ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1860
    .end local v8    # "dontquote":Ljava/lang/String;
    .end local v9    # "doquote":Ljava/lang/String;
    .end local v10    # "end":I
    :cond_0
    :goto_1
    return-void

    .line 1874
    .restart local v10    # "end":I
    :cond_1
    add-int/lit8 v2, v10, 0x1

    const/4 v3, 0x0

    invoke-virtual {p2, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 1875
    .restart local v8    # "dontquote":Ljava/lang/String;
    add-int/lit8 v2, v10, 0x1

    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .restart local v9    # "doquote":Ljava/lang/String;
    goto :goto_0

    .line 1881
    .end local v8    # "dontquote":Ljava/lang/String;
    .end local v9    # "doquote":Ljava/lang/String;
    .end local v10    # "end":I
    :cond_2
    sget-wide v2, Ljava/net/URI;->L_URIC:J

    sget-wide v4, Ljava/net/URI;->H_URIC:J

    invoke-static {p2, v2, v3, v4, v5}, Ljava/net/URI;->quote(Ljava/lang/String;JJ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_3
    move-object v2, p0

    move-object v3, p1

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    .line 1884
    invoke-direct/range {v2 .. v7}, Ljava/net/URI;->appendAuthority(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1885
    if-eqz p7, :cond_4

    .line 1886
    sget-wide v2, Ljava/net/URI;->L_PATH:J

    sget-wide v4, Ljava/net/URI;->H_PATH:J

    move-object/from16 v0, p7

    invoke-static {v0, v2, v3, v4, v5}, Ljava/net/URI;->quote(Ljava/lang/String;JJ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1887
    :cond_4
    if-eqz p8, :cond_0

    .line 1888
    const/16 v2, 0x3f

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1889
    sget-wide v2, Ljava/net/URI;->L_URIC:J

    sget-wide v4, Ljava/net/URI;->H_URIC:J

    move-object/from16 v0, p8

    invoke-static {v0, v2, v3, v4, v5}, Ljava/net/URI;->quote(Ljava/lang/String;JJ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

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

    .line 1795
    if-eqz p1, :cond_0

    .line 1796
    if-eqz p2, :cond_0

    .line 1797
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_0

    .line 1798
    new-instance v0, Ljava/net/URISyntaxException;

    .line 1799
    const-string/jumbo v1, "Relative path in absolute URI"

    .line 1798
    invoke-direct {v0, p0, v1}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 1793
    :cond_0
    return-void
.end method

.method private static compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "t"    # Ljava/lang/String;

    .prologue
    .line 1755
    if-ne p0, p1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1756
    :cond_0
    if-eqz p0, :cond_2

    .line 1757
    if-eqz p1, :cond_1

    .line 1758
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 1760
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 1762
    :cond_2
    const/4 v0, -0x1

    return v0
.end method

.method private static compareIgnoringCase(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "t"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 1768
    if-ne p0, p1, :cond_0

    return v5

    .line 1769
    :cond_0
    if-eqz p0, :cond_5

    .line 1770
    if-eqz p1, :cond_4

    .line 1771
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 1772
    .local v3, "sn":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 1773
    .local v4, "tn":I
    if-ge v3, v4, :cond_1

    move v2, v3

    .line 1774
    .local v2, "n":I
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_3

    .line 1775
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/net/URI;->toLower(C)I

    move-result v5

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/net/URI;->toLower(C)I

    move-result v6

    sub-int v0, v5, v6

    .line 1776
    .local v0, "c":I
    if-eqz v0, :cond_2

    .line 1777
    return v0

    .line 1773
    .end local v0    # "c":I
    .end local v1    # "i":I
    .end local v2    # "n":I
    :cond_1
    move v2, v4

    .restart local v2    # "n":I
    goto :goto_0

    .line 1774
    .restart local v0    # "c":I
    .restart local v1    # "i":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1779
    .end local v0    # "c":I
    :cond_3
    sub-int v5, v3, v4

    return v5

    .line 1781
    .end local v1    # "i":I
    .end local v2    # "n":I
    .end local v3    # "sn":I
    .end local v4    # "tn":I
    :cond_4
    const/4 v5, 0x1

    return v5

    .line 1783
    :cond_5
    const/4 v5, -0x1

    return v5
.end method

.method public static create(Ljava/lang/String;)Ljava/net/URI;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 851
    :try_start_0
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 852
    :catch_0
    move-exception v0

    .line 853
    .local v0, "x":Ljava/net/URISyntaxException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static decode(CC)B
    .locals 2
    .param p0, "c1"    # C
    .param p1, "c2"    # C

    .prologue
    .line 2762
    invoke-static {p0}, Ljava/net/URI;->decode(C)I

    move-result v0

    and-int/lit8 v0, v0, 0xf

    shl-int/lit8 v0, v0, 0x4

    .line 2763
    invoke-static {p1}, Ljava/net/URI;->decode(C)I

    move-result v1

    and-int/lit8 v1, v1, 0xf

    shl-int/lit8 v1, v1, 0x0

    .line 2762
    or-int/2addr v0, v1

    int-to-byte v0, v0

    return v0
.end method

.method private static decode(C)I
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 2751
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    .line 2752
    add-int/lit8 v0, p0, -0x30

    return v0

    .line 2753
    :cond_0
    const/16 v0, 0x61

    if-lt p0, v0, :cond_1

    const/16 v0, 0x66

    if-gt p0, v0, :cond_1

    .line 2754
    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    return v0

    .line 2755
    :cond_1
    const/16 v0, 0x41

    if-lt p0, v0, :cond_2

    const/16 v0, 0x46

    if-gt p0, v0, :cond_2

    .line 2756
    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    return v0

    .line 2757
    :cond_2
    sget-boolean v0, Ljava/net/URI;->-assertionsDisabled:Z

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2758
    :cond_3
    const/4 v0, -0x1

    return v0
.end method

.method private static decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 15
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/16 v14, 0x25

    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 2774
    if-nez p0, :cond_0

    .line 2775
    return-object p0

    .line 2776
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    .line 2777
    .local v7, "n":I
    if-nez v7, :cond_1

    .line 2778
    return-object p0

    .line 2779
    :cond_1
    invoke-virtual {p0, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    if-gez v10, :cond_2

    .line 2780
    return-object p0

    .line 2782
    :cond_2
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8, v7}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 2783
    .local v8, "sb":Ljava/lang/StringBuffer;
    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 2784
    .local v0, "bb":Ljava/nio/ByteBuffer;
    invoke-static {v7}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v3

    .line 2785
    .local v3, "cb":Ljava/nio/CharBuffer;
    const-string/jumbo v10, "UTF-8"

    invoke-static {v10}, Lsun/nio/cs/ThreadLocalCoders;->decoderFor(Ljava/lang/Object;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v10

    .line 2786
    sget-object v13, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    .line 2785
    invoke-virtual {v10, v13}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v10

    .line 2787
    sget-object v13, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    .line 2785
    invoke-virtual {v10, v13}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v5

    .line 2790
    .local v5, "dec":Ljava/nio/charset/CharsetDecoder;
    invoke-virtual {p0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 2791
    .local v2, "c":C
    const/4 v1, 0x0

    .line 2793
    .local v1, "betweenBrackets":Z
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v7, :cond_7

    .line 2794
    sget-boolean v10, Ljava/net/URI;->-assertionsDisabled:Z

    if-nez v10, :cond_4

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-ne v2, v10, :cond_3

    move v10, v11

    :goto_1
    if-nez v10, :cond_4

    new-instance v10, Ljava/lang/AssertionError;

    invoke-direct {v10}, Ljava/lang/AssertionError;-><init>()V

    throw v10

    :cond_3
    move v10, v12

    goto :goto_1

    .line 2795
    :cond_4
    const/16 v10, 0x5b

    if-ne v2, v10, :cond_8

    .line 2796
    const/4 v1, 0x1

    .line 2800
    :cond_5
    :goto_2
    if-ne v2, v14, :cond_6

    if-eqz v1, :cond_a

    .line 2801
    :cond_6
    invoke-virtual {v8, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2802
    add-int/lit8 v6, v6, 0x1

    if-lt v6, v7, :cond_9

    .line 2828
    :cond_7
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    return-object v10

    .line 2797
    :cond_8
    if-eqz v1, :cond_5

    const/16 v10, 0x5d

    if-ne v2, v10, :cond_5

    .line 2798
    const/4 v1, 0x0

    goto :goto_2

    .line 2804
    :cond_9
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v2

    goto :goto_0

    .line 2807
    :cond_a
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 2808
    move v9, v6

    .line 2810
    .local v9, "ui":I
    :cond_b
    sget-boolean v10, Ljava/net/URI;->-assertionsDisabled:Z

    if-nez v10, :cond_d

    sub-int v10, v7, v6

    const/4 v13, 0x2

    if-lt v10, v13, :cond_c

    move v10, v11

    :goto_3
    if-nez v10, :cond_d

    new-instance v10, Ljava/lang/AssertionError;

    invoke-direct {v10}, Ljava/lang/AssertionError;-><init>()V

    throw v10

    :cond_c
    move v10, v12

    goto :goto_3

    .line 2811
    :cond_d
    add-int/lit8 v6, v6, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v10

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v13

    invoke-static {v10, v13}, Ljava/net/URI;->decode(CC)B

    move-result v10

    invoke-virtual {v0, v10}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 2812
    add-int/lit8 v6, v6, 0x1

    if-lt v6, v7, :cond_e

    .line 2818
    :goto_4
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 2819
    invoke-virtual {v3}, Ljava/nio/CharBuffer;->clear()Ljava/nio/Buffer;

    .line 2820
    invoke-virtual {v5}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    .line 2821
    invoke-virtual {v5, v0, v3, v11}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v4

    .line 2822
    .local v4, "cr":Ljava/nio/charset/CoderResult;
    sget-boolean v10, Ljava/net/URI;->-assertionsDisabled:Z

    if-nez v10, :cond_f

    invoke-virtual {v4}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v10

    if-nez v10, :cond_f

    new-instance v10, Ljava/lang/AssertionError;

    invoke-direct {v10}, Ljava/lang/AssertionError;-><init>()V

    throw v10

    .line 2814
    .end local v4    # "cr":Ljava/nio/charset/CoderResult;
    :cond_e
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 2815
    if-eq v2, v14, :cond_b

    goto :goto_4

    .line 2823
    .restart local v4    # "cr":Ljava/nio/charset/CoderResult;
    :cond_f
    invoke-virtual {v5, v3}, Ljava/nio/charset/CharsetDecoder;->flush(Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v4

    .line 2824
    sget-boolean v10, Ljava/net/URI;->-assertionsDisabled:Z

    if-nez v10, :cond_10

    invoke-virtual {v4}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v10

    if-nez v10, :cond_10

    new-instance v10, Ljava/lang/AssertionError;

    invoke-direct {v10}, Ljava/lang/AssertionError;-><init>()V

    throw v10

    .line 2825
    :cond_10
    invoke-virtual {v3}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/nio/Buffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0
.end method

.method private defineSchemeSpecificPart()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 1924
    iget-object v0, p0, Ljava/net/URI;->schemeSpecificPart:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-void

    .line 1925
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 1926
    .local v1, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v4

    .line 1927
    iget-object v5, p0, Ljava/net/URI;->host:Ljava/lang/String;

    iget v6, p0, Ljava/net/URI;->port:I

    invoke-virtual {p0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v8

    move-object v0, p0

    .line 1926
    invoke-direct/range {v0 .. v8}, Ljava/net/URI;->appendSchemeSpecificPart(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 1928
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 1929
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/net/URI;->schemeSpecificPart:Ljava/lang/String;

    .line 1923
    return-void
.end method

.method private defineString()V
    .locals 6

    .prologue
    const/16 v5, 0x3a

    const/4 v2, 0x0

    .line 1933
    iget-object v3, p0, Ljava/net/URI;->string:Ljava/lang/String;

    if-eqz v3, :cond_0

    return-void

    .line 1935
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 1936
    .local v1, "sb":Ljava/lang/StringBuffer;
    iget-object v3, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 1937
    iget-object v3, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1938
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1940
    :cond_1
    invoke-virtual {p0}, Ljava/net/URI;->isOpaque()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1941
    iget-object v2, p0, Ljava/net/URI;->schemeSpecificPart:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1970
    :cond_2
    :goto_0
    iget-object v2, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 1971
    const/16 v2, 0x23

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1972
    iget-object v2, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1974
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljava/net/URI;->string:Ljava/lang/String;

    .line 1932
    return-void

    .line 1943
    :cond_4
    iget-object v3, p0, Ljava/net/URI;->host:Ljava/lang/String;

    if-eqz v3, :cond_d

    .line 1944
    const-string/jumbo v3, "//"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1945
    iget-object v3, p0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    if-eqz v3, :cond_5

    .line 1946
    iget-object v3, p0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1947
    const/16 v3, 0x40

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1949
    :cond_5
    iget-object v3, p0, Ljava/net/URI;->host:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_6

    .line 1950
    iget-object v3, p0, Ljava/net/URI;->host:Ljava/lang/String;

    const-string/jumbo v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    :cond_6
    move v0, v2

    .line 1952
    .local v0, "needBrackets":Z
    :goto_1
    if-eqz v0, :cond_7

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1953
    :cond_7
    iget-object v2, p0, Ljava/net/URI;->host:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1954
    if-eqz v0, :cond_8

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1955
    :cond_8
    iget v2, p0, Ljava/net/URI;->port:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_9

    .line 1956
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1957
    iget v2, p0, Ljava/net/URI;->port:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1963
    .end local v0    # "needBrackets":Z
    :cond_9
    :goto_2
    iget-object v2, p0, Ljava/net/URI;->path:Ljava/lang/String;

    if-eqz v2, :cond_a

    .line 1964
    iget-object v2, p0, Ljava/net/URI;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1965
    :cond_a
    iget-object v2, p0, Ljava/net/URI;->query:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 1966
    const/16 v2, 0x3f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1967
    iget-object v2, p0, Ljava/net/URI;->query:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 1951
    :cond_b
    iget-object v3, p0, Ljava/net/URI;->host:Ljava/lang/String;

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    :goto_3
    move v0, v2

    goto :goto_1

    :cond_c
    const/4 v2, 0x1

    goto :goto_3

    .line 1959
    :cond_d
    iget-object v2, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    if-eqz v2, :cond_9

    .line 1960
    const-string/jumbo v2, "//"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1961
    iget-object v2, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2
.end method

.method private static encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/16 v9, 0x80

    .line 2718
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 2719
    .local v3, "n":I
    if-nez v3, :cond_0

    .line 2720
    return-object p0

    .line 2723
    :cond_0
    const/4 v2, 0x0

    .line 2724
    .local v2, "i":I
    :cond_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v9, :cond_3

    .line 2730
    sget-object v7, Ljava/text/Normalizer$Form;->NFC:Ljava/text/Normalizer$Form;

    invoke-static {p0, v7}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object v4

    .line 2731
    .local v4, "ns":Ljava/lang/String;
    const/4 v1, 0x0

    .line 2733
    .local v1, "bb":Ljava/nio/ByteBuffer;
    :try_start_0
    const-string/jumbo v7, "UTF-8"

    invoke-static {v7}, Lsun/nio/cs/ThreadLocalCoders;->encoderFor(Ljava/lang/Object;)Ljava/nio/charset/CharsetEncoder;

    move-result-object v7

    .line 2734
    invoke-static {v4}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object v8

    .line 2733
    invoke-virtual {v7, v8}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2739
    .end local v1    # "bb":Ljava/nio/ByteBuffer;
    :cond_2
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 2740
    .local v5, "sb":Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 2741
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v7

    and-int/lit16 v0, v7, 0xff

    .line 2742
    .local v0, "b":I
    if-lt v0, v9, :cond_4

    .line 2743
    int-to-byte v7, v0

    invoke-static {v5, v7}, Ljava/net/URI;->appendEscape(Ljava/lang/StringBuffer;B)V

    goto :goto_0

    .line 2726
    .end local v0    # "b":I
    .end local v4    # "ns":Ljava/lang/String;
    .end local v5    # "sb":Ljava/lang/StringBuffer;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    if-lt v2, v3, :cond_1

    .line 2727
    return-object p0

    .line 2735
    .restart local v1    # "bb":Ljava/nio/ByteBuffer;
    .restart local v4    # "ns":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 2736
    .local v6, "x":Ljava/nio/charset/CharacterCodingException;
    sget-boolean v7, Ljava/net/URI;->-assertionsDisabled:Z

    if-nez v7, :cond_2

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 2745
    .end local v1    # "bb":Ljava/nio/ByteBuffer;
    .end local v6    # "x":Ljava/nio/charset/CharacterCodingException;
    .restart local v0    # "b":I
    .restart local v5    # "sb":Ljava/lang/StringBuffer;
    :cond_4
    int-to-char v7, v0

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 2747
    .end local v0    # "b":I
    :cond_5
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method private static equal(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "t"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/16 v7, 0x25

    const/4 v6, 0x0

    .line 1692
    if-ne p0, p1, :cond_0

    return v8

    .line 1693
    :cond_0
    if-eqz p0, :cond_9

    if-eqz p1, :cond_9

    .line 1694
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v4, v5, :cond_1

    .line 1695
    return v6

    .line 1696
    :cond_1
    invoke-virtual {p0, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-gez v4, :cond_2

    .line 1697
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    return v4

    .line 1698
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 1699
    .local v3, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_8

    .line 1700
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1701
    .local v0, "c":C
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1702
    .local v1, "d":C
    if-eq v0, v7, :cond_4

    .line 1703
    if-eq v0, v1, :cond_3

    .line 1704
    return v6

    .line 1705
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 1706
    goto :goto_0

    .line 1708
    :cond_4
    if-eq v1, v7, :cond_5

    .line 1709
    return v6

    .line 1710
    :cond_5
    add-int/lit8 v2, v2, 0x1

    .line 1711
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/net/URI;->toLower(C)I

    move-result v4

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/net/URI;->toLower(C)I

    move-result v5

    if-eq v4, v5, :cond_6

    .line 1712
    return v6

    .line 1713
    :cond_6
    add-int/lit8 v2, v2, 0x1

    .line 1714
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/net/URI;->toLower(C)I

    move-result v4

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/net/URI;->toLower(C)I

    move-result v5

    if-eq v4, v5, :cond_7

    .line 1715
    return v6

    .line 1716
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1718
    .end local v0    # "c":C
    .end local v1    # "d":C
    :cond_8
    return v8

    .line 1720
    .end local v2    # "i":I
    .end local v3    # "n":I
    :cond_9
    return v6
.end method

.method private static equalIgnoringCase(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "t"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1725
    if-ne p0, p1, :cond_0

    return v5

    .line 1726
    :cond_0
    if-eqz p0, :cond_4

    if-eqz p1, :cond_4

    .line 1727
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 1728
    .local v1, "n":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v2, v1, :cond_1

    .line 1729
    return v4

    .line 1730
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_3

    .line 1731
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/net/URI;->toLower(C)I

    move-result v2

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/net/URI;->toLower(C)I

    move-result v3

    if-eq v2, v3, :cond_2

    .line 1732
    return v4

    .line 1730
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1734
    :cond_3
    return v5

    .line 1736
    .end local v0    # "i":I
    .end local v1    # "n":I
    :cond_4
    return v4
.end method

.method private static hash(ILjava/lang/String;)I
    .locals 2
    .param p0, "hash"    # I
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 1740
    if-nez p1, :cond_0

    return p0

    .line 1741
    :cond_0
    mul-int/lit8 v0, p0, 0x7f

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private static hashIgnoringCase(ILjava/lang/String;)I
    .locals 5
    .param p0, "hash"    # I
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 1746
    if-nez p1, :cond_0

    return p0

    .line 1747
    :cond_0
    move v0, p0

    .line 1748
    .local v0, "h":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 1749
    .local v2, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 1750
    mul-int/lit8 v3, v0, 0x1f

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/net/URI;->toLower(C)I

    move-result v4

    add-int v0, v3, v4

    .line 1749
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1751
    :cond_1
    return v0
.end method

.method private static highMask(CC)J
    .locals 8
    .param p0, "first"    # C
    .param p1, "last"    # C

    .prologue
    const/16 v7, 0x7f

    const/16 v6, 0x40

    .line 2508
    const-wide/16 v4, 0x0

    .line 2509
    .local v4, "m":J
    invoke-static {p0, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/lit8 v0, v3, -0x40

    .line 2510
    .local v0, "f":I
    invoke-static {p1, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/lit8 v2, v3, -0x40

    .line 2511
    .local v2, "l":I
    move v1, v0

    .local v1, "i":I
    :goto_0
    if-gt v1, v2, :cond_0

    .line 2512
    const-wide/16 v6, 0x1

    shl-long/2addr v6, v1

    or-long/2addr v4, v6

    .line 2511
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2513
    :cond_0
    return-wide v4
.end method

.method private static highMask(Ljava/lang/String;)J
    .locals 8
    .param p0, "chars"    # Ljava/lang/String;

    .prologue
    .line 2484
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 2485
    .local v4, "n":I
    const-wide/16 v2, 0x0

    .line 2486
    .local v2, "m":J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_1

    .line 2487
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2488
    .local v0, "c":C
    const/16 v5, 0x40

    if-lt v0, v5, :cond_0

    const/16 v5, 0x80

    if-ge v0, v5, :cond_0

    .line 2489
    add-int/lit8 v5, v0, -0x40

    const-wide/16 v6, 0x1

    shl-long/2addr v6, v5

    or-long/2addr v2, v6

    .line 2486
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2491
    .end local v0    # "c":C
    :cond_1
    return-wide v2
.end method

.method private static join([C[I)I
    .locals 10
    .param p0, "path"    # [C
    .param p1, "segs"    # [I

    .prologue
    const/16 v9, 0x2f

    const/4 v8, 0x0

    .line 2280
    array-length v2, p1

    .line 2281
    .local v2, "ns":I
    array-length v7, p0

    add-int/lit8 v0, v7, -0x1

    .line 2282
    .local v0, "end":I
    const/4 v3, 0x0

    .line 2284
    .local v3, "p":I
    aget-char v7, p0, v3

    if-nez v7, :cond_0

    .line 2286
    const/4 v3, 0x1

    aput-char v9, p0, v8

    .line 2289
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_6

    .line 2290
    aget v5, p1, v1

    .line 2291
    .local v5, "q":I
    const/4 v7, -0x1

    if-ne v5, v7, :cond_1

    .line 2289
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2295
    :cond_1
    if-ne v3, v5, :cond_3

    move v4, v3

    .line 2297
    .end local v3    # "p":I
    .local v4, "p":I
    :goto_2
    if-gt v4, v0, :cond_2

    aget-char v7, p0, v4

    if-eqz v7, :cond_2

    .line 2298
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "p":I
    .restart local v3    # "p":I
    move v4, v3

    .end local v3    # "p":I
    .restart local v4    # "p":I
    goto :goto_2

    .line 2299
    :cond_2
    if-gt v4, v0, :cond_8

    .line 2301
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "p":I
    .restart local v3    # "p":I
    aput-char v9, p0, v4

    goto :goto_1

    .line 2303
    :cond_3
    if-ge v3, v5, :cond_5

    :goto_3
    move v6, v5

    .end local v5    # "q":I
    .local v6, "q":I
    move v4, v3

    .line 2305
    .end local v3    # "p":I
    .restart local v4    # "p":I
    if-gt v6, v0, :cond_4

    aget-char v7, p0, v6

    if-eqz v7, :cond_4

    .line 2306
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "p":I
    .restart local v3    # "p":I
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "q":I
    .restart local v5    # "q":I
    aget-char v7, p0, v6

    aput-char v7, p0, v4

    goto :goto_3

    .line 2307
    .end local v3    # "p":I
    .end local v5    # "q":I
    .restart local v4    # "p":I
    .restart local v6    # "q":I
    :cond_4
    if-gt v6, v0, :cond_7

    .line 2309
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "p":I
    .restart local v3    # "p":I
    aput-char v9, p0, v4

    move v5, v6

    .end local v6    # "q":I
    .restart local v5    # "q":I
    goto :goto_1

    .line 2312
    :cond_5
    new-instance v7, Ljava/lang/InternalError;

    invoke-direct {v7}, Ljava/lang/InternalError;-><init>()V

    throw v7

    .line 2315
    .end local v5    # "q":I
    :cond_6
    return v3

    .end local v3    # "p":I
    .restart local v4    # "p":I
    .restart local v6    # "q":I
    :cond_7
    move v5, v6

    .end local v6    # "q":I
    .restart local v5    # "q":I
    move v3, v4

    .end local v4    # "p":I
    .restart local v3    # "p":I
    goto :goto_1

    .end local v3    # "p":I
    .restart local v4    # "p":I
    :cond_8
    move v3, v4

    .end local v4    # "p":I
    .restart local v3    # "p":I
    goto :goto_1
.end method

.method private static lowMask(CC)J
    .locals 8
    .param p0, "first"    # C
    .param p1, "last"    # C

    .prologue
    const/16 v7, 0x3f

    const/4 v6, 0x0

    .line 2497
    const-wide/16 v4, 0x0

    .line 2498
    .local v4, "m":J
    invoke-static {p0, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2499
    .local v0, "f":I
    invoke-static {p1, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 2500
    .local v2, "l":I
    move v1, v0

    .local v1, "i":I
    :goto_0
    if-gt v1, v2, :cond_0

    .line 2501
    const-wide/16 v6, 0x1

    shl-long/2addr v6, v1

    or-long/2addr v4, v6

    .line 2500
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2502
    :cond_0
    return-wide v4
.end method

.method private static lowMask(Ljava/lang/String;)J
    .locals 8
    .param p0, "chars"    # Ljava/lang/String;

    .prologue
    .line 2472
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 2473
    .local v4, "n":I
    const-wide/16 v2, 0x0

    .line 2474
    .local v2, "m":J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_1

    .line 2475
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2476
    .local v0, "c":C
    const/16 v5, 0x40

    if-ge v0, v5, :cond_0

    .line 2477
    const-wide/16 v6, 0x1

    shl-long/2addr v6, v0

    or-long/2addr v2, v6

    .line 2474
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2479
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

    .line 2518
    if-nez p0, :cond_0

    .line 2519
    return v1

    .line 2520
    :cond_0
    const/16 v2, 0x40

    if-ge p0, v2, :cond_2

    .line 2521
    shl-long v2, v6, p0

    and-long/2addr v2, p1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    .line 2522
    :cond_2
    const/16 v2, 0x80

    if-ge p0, v2, :cond_4

    .line 2523
    add-int/lit8 v2, p0, -0x40

    shl-long v2, v6, v2

    and-long/2addr v2, p3

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    :goto_1
    return v0

    :cond_3
    move v0, v1

    goto :goto_1

    .line 2524
    :cond_4
    return v1
.end method

.method private static maybeAddLeadingDot([C[I)V
    .locals 6
    .param p0, "path"    # [C
    .param p1, "segs"    # [I

    .prologue
    const/4 v5, 0x0

    .line 2385
    aget-char v3, p0, v5

    if-nez v3, :cond_0

    .line 2387
    return-void

    .line 2389
    :cond_0
    array-length v1, p1

    .line 2390
    .local v1, "ns":I
    const/4 v0, 0x0

    .line 2391
    .local v0, "f":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 2392
    aget v3, p1, v0

    if-ltz v3, :cond_3

    .line 2396
    :cond_1
    if-ge v0, v1, :cond_2

    if-nez v0, :cond_4

    .line 2399
    :cond_2
    return-void

    .line 2394
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2401
    :cond_4
    aget v2, p1, v0

    .line 2402
    .local v2, "p":I
    :goto_1
    array-length v3, p0

    if-ge v2, v3, :cond_5

    aget-char v3, p0, v2

    const/16 v4, 0x3a

    if-eq v3, v4, :cond_5

    aget-char v3, p0, v2

    if-eqz v3, :cond_5

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2403
    :cond_5
    array-length v3, p0

    if-ge v2, v3, :cond_6

    aget-char v3, p0, v2

    if-nez v3, :cond_7

    .line 2405
    :cond_6
    return-void

    .line 2409
    :cond_7
    const/16 v3, 0x2e

    aput-char v3, p0, v5

    .line 2410
    const/4 v3, 0x1

    aput-char v5, p0, v3

    .line 2411
    aput v5, p1, v5

    .line 2383
    return-void
.end method

.method private static needsNormalization(Ljava/lang/String;)I
    .locals 8
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0x2e

    const/16 v6, 0x2f

    .line 2174
    const/4 v1, 0x1

    .line 2175
    .local v1, "normal":Z
    const/4 v2, 0x0

    .line 2176
    .local v2, "ns":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .line 2177
    .local v0, "end":I
    const/4 v3, 0x0

    .line 2180
    .local v3, "p":I
    :goto_0
    if-gt v3, v0, :cond_0

    .line 2181
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v6, :cond_4

    .line 2184
    :cond_0
    const/4 v5, 0x1

    if-le v3, v5, :cond_1

    const/4 v1, 0x0

    .line 2187
    :cond_1
    :goto_1
    if-gt v3, v0, :cond_7

    .line 2190
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v7, :cond_3

    .line 2191
    if-eq v3, v0, :cond_2

    .line 2192
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v6, :cond_2

    .line 2193
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v7, :cond_3

    .line 2194
    add-int/lit8 v5, v3, 0x1

    if-eq v5, v0, :cond_2

    .line 2195
    add-int/lit8 v5, v3, 0x2

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v6, :cond_3

    .line 2196
    :cond_2
    const/4 v1, 0x0

    .line 2198
    :cond_3
    add-int/lit8 v2, v2, 0x1

    move v4, v3

    .line 2201
    .end local v3    # "p":I
    .local v4, "p":I
    :goto_2
    if-gt v4, v0, :cond_9

    .line 2202
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "p":I
    .restart local v3    # "p":I
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v6, :cond_6

    move v4, v3

    .line 2203
    .end local v3    # "p":I
    .restart local v4    # "p":I
    goto :goto_2

    .line 2182
    .end local v4    # "p":I
    .restart local v3    # "p":I
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2208
    :cond_5
    const/4 v1, 0x0

    .line 2209
    add-int/lit8 v3, v3, 0x1

    .line 2206
    :cond_6
    if-gt v3, v0, :cond_1

    .line 2207
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v6, :cond_5

    goto :goto_1

    .line 2216
    :cond_7
    if-eqz v1, :cond_8

    const/4 v2, -0x1

    .end local v2    # "ns":I
    :cond_8
    return v2

    .end local v3    # "p":I
    .restart local v2    # "ns":I
    .restart local v4    # "p":I
    :cond_9
    move v3, v4

    .end local v4    # "p":I
    .restart local v3    # "p":I
    goto :goto_1
.end method

.method private static normalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "ps"    # Ljava/lang/String;

    .prologue
    .line 2422
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/net/URI;->normalize(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static normalize(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 6
    .param p0, "ps"    # Ljava/lang/String;
    .param p1, "removeLeading"    # Z

    .prologue
    const/4 v5, 0x0

    .line 2428
    invoke-static {p0}, Ljava/net/URI;->needsNormalization(Ljava/lang/String;)I

    move-result v0

    .line 2429
    .local v0, "ns":I
    if-gez v0, :cond_0

    .line 2431
    return-object p0

    .line 2433
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 2436
    .local v1, "path":[C
    new-array v3, v0, [I

    .line 2437
    .local v3, "segs":[I
    invoke-static {v1, v3}, Ljava/net/URI;->split([C[I)V

    .line 2440
    invoke-static {v1, v3, p1}, Ljava/net/URI;->removeDots([C[IZ)V

    .line 2443
    invoke-static {v1, v3}, Ljava/net/URI;->maybeAddLeadingDot([C[I)V

    .line 2446
    new-instance v2, Ljava/lang/String;

    invoke-static {v1, v3}, Ljava/net/URI;->join([C[I)I

    move-result v4

    invoke-direct {v2, v1, v5, v4}, Ljava/lang/String;-><init>([CII)V

    .line 2447
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2449
    return-object p0

    .line 2451
    :cond_1
    return-object v2
.end method

.method private static normalize(Ljava/net/URI;)Ljava/net/URI;
    .locals 3
    .param p0, "u"    # Ljava/net/URI;

    .prologue
    .line 2091
    invoke-virtual {p0}, Ljava/net/URI;->isOpaque()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Ljava/net/URI;->path:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 2092
    :cond_0
    return-object p0

    .line 2091
    :cond_1
    iget-object v2, p0, Ljava/net/URI;->path:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 2094
    iget-object v2, p0, Ljava/net/URI;->path:Ljava/lang/String;

    invoke-static {v2}, Ljava/net/URI;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2095
    .local v0, "np":Ljava/lang/String;
    iget-object v2, p0, Ljava/net/URI;->path:Ljava/lang/String;

    if-ne v0, v2, :cond_2

    .line 2096
    return-object p0

    .line 2098
    :cond_2
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1}, Ljava/net/URI;-><init>()V

    .line 2099
    .local v1, "v":Ljava/net/URI;
    iget-object v2, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    iput-object v2, v1, Ljava/net/URI;->scheme:Ljava/lang/String;

    .line 2100
    iget-object v2, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    iput-object v2, v1, Ljava/net/URI;->fragment:Ljava/lang/String;

    .line 2101
    iget-object v2, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    iput-object v2, v1, Ljava/net/URI;->authority:Ljava/lang/String;

    .line 2102
    iget-object v2, p0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    iput-object v2, v1, Ljava/net/URI;->userInfo:Ljava/lang/String;

    .line 2103
    iget-object v2, p0, Ljava/net/URI;->host:Ljava/lang/String;

    iput-object v2, v1, Ljava/net/URI;->host:Ljava/lang/String;

    .line 2104
    iget v2, p0, Ljava/net/URI;->port:I

    iput v2, v1, Ljava/net/URI;->port:I

    .line 2105
    iput-object v0, v1, Ljava/net/URI;->path:Ljava/lang/String;

    .line 2106
    iget-object v2, p0, Ljava/net/URI;->query:Ljava/lang/String;

    iput-object v2, v1, Ljava/net/URI;->query:Ljava/lang/String;

    .line 2107
    return-object v1
.end method

.method private static quote(Ljava/lang/String;JJ)Ljava/lang/String;
    .locals 11
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "lowMask"    # J
    .param p3, "highMask"    # J

    .prologue
    const/4 v10, 0x0

    .line 2682
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 2683
    .local v3, "n":I
    const/4 v4, 0x0

    .line 2684
    .local v4, "sb":Ljava/lang/StringBuffer;
    const-wide/16 v6, 0x1

    and-long/2addr v6, p1

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-eqz v5, :cond_2

    const/4 v0, 0x1

    .line 2685
    .local v0, "allowNonASCII":Z
    :goto_0
    const/4 v2, 0x0

    .end local v4    # "sb":Ljava/lang/StringBuffer;
    .local v2, "i":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_8

    .line 2686
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 2687
    .local v1, "c":C
    const/16 v5, 0x80

    if-ge v1, v5, :cond_4

    .line 2688
    invoke-static {v1, p1, p2, p3, p4}, Ljava/net/URI;->match(CJJ)Z

    move-result v5

    if-nez v5, :cond_3

    .line 2689
    if-nez v4, :cond_0

    .line 2690
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 2691
    .local v4, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {p0, v10, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2693
    .end local v4    # "sb":Ljava/lang/StringBuffer;
    :cond_0
    int-to-byte v5, v1

    invoke-static {v4, v5}, Ljava/net/URI;->appendEscape(Ljava/lang/StringBuffer;B)V

    .line 2685
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2684
    .end local v0    # "allowNonASCII":Z
    .end local v1    # "c":C
    .end local v2    # "i":I
    .local v4, "sb":Ljava/lang/StringBuffer;
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "allowNonASCII":Z
    goto :goto_0

    .line 2695
    .end local v4    # "sb":Ljava/lang/StringBuffer;
    .restart local v1    # "c":C
    .restart local v2    # "i":I
    :cond_3
    if-eqz v4, :cond_1

    .line 2696
    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 2698
    :cond_4
    if-eqz v0, :cond_7

    .line 2699
    invoke-static {v1}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v5

    if-nez v5, :cond_5

    .line 2700
    invoke-static {v1}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v5

    .line 2698
    if-eqz v5, :cond_7

    .line 2701
    :cond_5
    if-nez v4, :cond_6

    .line 2702
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 2703
    .local v4, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {p0, v10, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2705
    .end local v4    # "sb":Ljava/lang/StringBuffer;
    :cond_6
    invoke-static {v4, v1}, Ljava/net/URI;->appendEncoded(Ljava/lang/StringBuffer;C)V

    goto :goto_2

    .line 2707
    :cond_7
    if-eqz v4, :cond_1

    .line 2708
    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 2711
    .end local v1    # "c":C
    :cond_8
    if-nez v4, :cond_9

    .end local p0    # "s":Ljava/lang/String;
    :goto_3
    return-object p0

    .restart local p0    # "s":Ljava/lang/String;
    :cond_9
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_3
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 4
    .param p1, "is"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1660
    const/4 v2, -0x1

    iput v2, p0, Ljava/net/URI;->port:I

    .line 1661
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1663
    :try_start_0
    new-instance v2, Ljava/net/URI$Parser;

    iget-object v3, p0, Ljava/net/URI;->string:Ljava/lang/String;

    invoke-direct {v2, p0, v3}, Ljava/net/URI$Parser;-><init>(Ljava/net/URI;Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/net/URI$Parser;->parse(Z)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1658
    return-void

    .line 1664
    :catch_0
    move-exception v0

    .line 1665
    .local v0, "x":Ljava/net/URISyntaxException;
    new-instance v1, Ljava/io/InvalidObjectException;

    const-string/jumbo v2, "Invalid URI"

    invoke-direct {v1, v2}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    .line 1666
    .local v1, "y":Ljava/io/IOException;
    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1667
    throw v1
.end method

.method private static relativize(Ljava/net/URI;Ljava/net/URI;)Ljava/net/URI;
    .locals 6
    .param p0, "base"    # Ljava/net/URI;
    .param p1, "child"    # Ljava/net/URI;

    .prologue
    const/16 v5, 0x2f

    .line 2118
    invoke-virtual {p1}, Ljava/net/URI;->isOpaque()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Ljava/net/URI;->isOpaque()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2119
    :cond_0
    return-object p1

    .line 2120
    :cond_1
    iget-object v3, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    iget-object v4, p1, Ljava/net/URI;->scheme:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/net/URI;->equalIgnoringCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2121
    iget-object v3, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    iget-object v4, p1, Ljava/net/URI;->authority:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/net/URI;->equal(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2124
    iget-object v3, p0, Ljava/net/URI;->path:Ljava/lang/String;

    invoke-static {v3}, Ljava/net/URI;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2125
    .local v0, "bp":Ljava/lang/String;
    iget-object v3, p1, Ljava/net/URI;->path:Ljava/lang/String;

    invoke-static {v3}, Ljava/net/URI;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2126
    .local v1, "cp":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 2133
    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 2134
    invoke-virtual {v0, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 2137
    :cond_2
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 2138
    return-object p1

    .line 2122
    .end local v0    # "bp":Ljava/lang/String;
    .end local v1    # "cp":Ljava/lang/String;
    :cond_3
    return-object p1

    .line 2141
    .restart local v0    # "bp":Ljava/lang/String;
    .restart local v1    # "cp":Ljava/lang/String;
    :cond_4
    new-instance v2, Ljava/net/URI;

    invoke-direct {v2}, Ljava/net/URI;-><init>()V

    .line 2142
    .local v2, "v":Ljava/net/URI;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Ljava/net/URI;->path:Ljava/lang/String;

    .line 2143
    iget-object v3, p1, Ljava/net/URI;->query:Ljava/lang/String;

    iput-object v3, v2, Ljava/net/URI;->query:Ljava/lang/String;

    .line 2144
    iget-object v3, p1, Ljava/net/URI;->fragment:Ljava/lang/String;

    iput-object v3, v2, Ljava/net/URI;->fragment:Ljava/lang/String;

    .line 2145
    return-object v2
.end method

.method private static removeDots([C[IZ)V
    .locals 10
    .param p0, "path"    # [C
    .param p1, "segs"    # [I
    .param p2, "removeLeading"    # Z

    .prologue
    const/16 v9, 0x2e

    const/4 v8, -0x1

    .line 2323
    array-length v4, p1

    .line 2324
    .local v4, "ns":I
    array-length v7, p0

    add-int/lit8 v1, v7, -0x1

    .line 2326
    .local v1, "end":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_1

    .line 2327
    const/4 v0, 0x0

    .line 2331
    .local v0, "dots":I
    :goto_1
    aget v5, p1, v2

    .line 2332
    .local v5, "p":I
    aget-char v7, p0, v5

    if-ne v7, v9, :cond_5

    .line 2333
    if-ne v5, v1, :cond_2

    .line 2334
    const/4 v0, 0x1

    .line 2348
    :cond_0
    :goto_2
    if-gt v2, v4, :cond_1

    if-nez v0, :cond_6

    .line 2322
    .end local v0    # "dots":I
    .end local v5    # "p":I
    :cond_1
    return-void

    .line 2336
    .restart local v0    # "dots":I
    .restart local v5    # "p":I
    :cond_2
    add-int/lit8 v7, v5, 0x1

    aget-char v7, p0, v7

    if-nez v7, :cond_3

    .line 2337
    const/4 v0, 0x1

    .line 2338
    goto :goto_2

    .line 2339
    :cond_3
    add-int/lit8 v7, v5, 0x1

    aget-char v7, p0, v7

    if-ne v7, v9, :cond_5

    .line 2340
    add-int/lit8 v7, v5, 0x1

    if-eq v7, v1, :cond_4

    .line 2341
    add-int/lit8 v7, v5, 0x2

    aget-char v7, p0, v7

    if-nez v7, :cond_5

    .line 2342
    :cond_4
    const/4 v0, 0x2

    .line 2343
    goto :goto_2

    .line 2346
    :cond_5
    add-int/lit8 v2, v2, 0x1

    .line 2347
    if-ge v2, v4, :cond_0

    goto :goto_1

    .line 2351
    :cond_6
    const/4 v7, 0x1

    if-ne v0, v7, :cond_8

    .line 2353
    aput v8, p1, v2

    .line 2326
    :cond_7
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2358
    :cond_8
    add-int/lit8 v3, v2, -0x1

    .local v3, "j":I
    :goto_4
    if-ltz v3, :cond_9

    .line 2359
    aget v7, p1, v3

    if-eq v7, v8, :cond_b

    .line 2361
    :cond_9
    if-ltz v3, :cond_d

    .line 2362
    aget v6, p1, v3

    .line 2363
    .local v6, "q":I
    aget-char v7, p0, v6

    if-ne v7, v9, :cond_a

    .line 2364
    add-int/lit8 v7, v6, 0x1

    aget-char v7, p0, v7

    if-eq v7, v9, :cond_c

    .line 2366
    :cond_a
    :goto_5
    aput v8, p1, v2

    .line 2367
    aput v8, p1, v3

    goto :goto_3

    .line 2358
    .end local v6    # "q":I
    :cond_b
    add-int/lit8 v3, v3, -0x1

    goto :goto_4

    .line 2365
    .restart local v6    # "q":I
    :cond_c
    add-int/lit8 v7, v6, 0x2

    aget-char v7, p0, v7

    if-eqz v7, :cond_7

    goto :goto_5

    .line 2369
    .end local v6    # "q":I
    :cond_d
    if-eqz p2, :cond_7

    .line 2373
    aput v8, p1, v2

    goto :goto_3
.end method

.method private static resolve(Ljava/net/URI;Ljava/net/URI;)Ljava/net/URI;
    .locals 4
    .param p0, "base"    # Ljava/net/URI;
    .param p1, "child"    # Ljava/net/URI;

    .prologue
    const/4 v3, 0x0

    .line 2015
    invoke-virtual {p1}, Ljava/net/URI;->isOpaque()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Ljava/net/URI;->isOpaque()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2016
    :cond_0
    return-object p1

    .line 2019
    :cond_1
    iget-object v1, p1, Ljava/net/URI;->scheme:Ljava/lang/String;

    if-nez v1, :cond_3

    iget-object v1, p1, Ljava/net/URI;->authority:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 2020
    iget-object v1, p1, Ljava/net/URI;->path:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 2019
    if-eqz v1, :cond_3

    .line 2020
    iget-object v1, p1, Ljava/net/URI;->fragment:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 2021
    iget-object v1, p1, Ljava/net/URI;->query:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 2022
    iget-object v1, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 2023
    iget-object v1, p1, Ljava/net/URI;->fragment:Ljava/lang/String;

    iget-object v2, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 2022
    if-eqz v1, :cond_2

    .line 2024
    return-object p0

    .line 2026
    :cond_2
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0}, Ljava/net/URI;-><init>()V

    .line 2027
    .local v0, "ru":Ljava/net/URI;
    iget-object v1, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    iput-object v1, v0, Ljava/net/URI;->scheme:Ljava/lang/String;

    .line 2028
    iget-object v1, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    iput-object v1, v0, Ljava/net/URI;->authority:Ljava/lang/String;

    .line 2029
    iget-object v1, p0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    iput-object v1, v0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    .line 2030
    iget-object v1, p0, Ljava/net/URI;->host:Ljava/lang/String;

    iput-object v1, v0, Ljava/net/URI;->host:Ljava/lang/String;

    .line 2031
    iget v1, p0, Ljava/net/URI;->port:I

    iput v1, v0, Ljava/net/URI;->port:I

    .line 2032
    iget-object v1, p0, Ljava/net/URI;->path:Ljava/lang/String;

    iput-object v1, v0, Ljava/net/URI;->path:Ljava/lang/String;

    .line 2033
    iget-object v1, p1, Ljava/net/URI;->fragment:Ljava/lang/String;

    iput-object v1, v0, Ljava/net/URI;->fragment:Ljava/lang/String;

    .line 2034
    iget-object v1, p0, Ljava/net/URI;->query:Ljava/lang/String;

    iput-object v1, v0, Ljava/net/URI;->query:Ljava/lang/String;

    .line 2035
    return-object v0

    .line 2039
    .end local v0    # "ru":Ljava/net/URI;
    :cond_3
    iget-object v1, p1, Ljava/net/URI;->scheme:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 2040
    return-object p1

    .line 2042
    :cond_4
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0}, Ljava/net/URI;-><init>()V

    .line 2043
    .restart local v0    # "ru":Ljava/net/URI;
    iget-object v1, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    iput-object v1, v0, Ljava/net/URI;->scheme:Ljava/lang/String;

    .line 2044
    iget-object v1, p1, Ljava/net/URI;->query:Ljava/lang/String;

    iput-object v1, v0, Ljava/net/URI;->query:Ljava/lang/String;

    .line 2045
    iget-object v1, p1, Ljava/net/URI;->fragment:Ljava/lang/String;

    iput-object v1, v0, Ljava/net/URI;->fragment:Ljava/lang/String;

    .line 2048
    iget-object v1, p1, Ljava/net/URI;->authority:Ljava/lang/String;

    if-nez v1, :cond_9

    .line 2049
    iget-object v1, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    iput-object v1, v0, Ljava/net/URI;->authority:Ljava/lang/String;

    .line 2050
    iget-object v1, p0, Ljava/net/URI;->host:Ljava/lang/String;

    iput-object v1, v0, Ljava/net/URI;->host:Ljava/lang/String;

    .line 2051
    iget-object v1, p0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    iput-object v1, v0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    .line 2052
    iget v1, p0, Ljava/net/URI;->port:I

    iput v1, v0, Ljava/net/URI;->port:I

    .line 2054
    iget-object v1, p1, Ljava/net/URI;->path:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, p1, Ljava/net/URI;->path:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2061
    :cond_5
    iget-object v1, p0, Ljava/net/URI;->path:Ljava/lang/String;

    iput-object v1, v0, Ljava/net/URI;->path:Ljava/lang/String;

    .line 2062
    iget-object v1, p1, Ljava/net/URI;->query:Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v1, p1, Ljava/net/URI;->query:Ljava/lang/String;

    :goto_0
    iput-object v1, v0, Ljava/net/URI;->query:Ljava/lang/String;

    .line 2084
    :goto_1
    return-object v0

    .line 2062
    :cond_6
    iget-object v1, p0, Ljava/net/URI;->query:Ljava/lang/String;

    goto :goto_0

    .line 2063
    :cond_7
    iget-object v1, p1, Ljava/net/URI;->path:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_8

    iget-object v1, p1, Ljava/net/URI;->path:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2f

    if-ne v1, v2, :cond_8

    .line 2069
    iget-object v1, p1, Ljava/net/URI;->path:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Ljava/net/URI;->normalize(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Ljava/net/URI;->path:Ljava/lang/String;

    goto :goto_1

    .line 2072
    :cond_8
    iget-object v1, p0, Ljava/net/URI;->path:Ljava/lang/String;

    iget-object v2, p1, Ljava/net/URI;->path:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/net/URI;->isAbsolute()Z

    move-result v3

    invoke-static {v1, v2, v3}, Ljava/net/URI;->resolvePath(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Ljava/net/URI;->path:Ljava/lang/String;

    goto :goto_1

    .line 2075
    :cond_9
    iget-object v1, p1, Ljava/net/URI;->authority:Ljava/lang/String;

    iput-object v1, v0, Ljava/net/URI;->authority:Ljava/lang/String;

    .line 2076
    iget-object v1, p1, Ljava/net/URI;->host:Ljava/lang/String;

    iput-object v1, v0, Ljava/net/URI;->host:Ljava/lang/String;

    .line 2077
    iget-object v1, p1, Ljava/net/URI;->userInfo:Ljava/lang/String;

    iput-object v1, v0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    .line 2078
    iget-object v1, p1, Ljava/net/URI;->host:Ljava/lang/String;

    iput-object v1, v0, Ljava/net/URI;->host:Ljava/lang/String;

    .line 2079
    iget v1, p1, Ljava/net/URI;->port:I

    iput v1, v0, Ljava/net/URI;->port:I

    .line 2080
    iget-object v1, p1, Ljava/net/URI;->path:Ljava/lang/String;

    iput-object v1, v0, Ljava/net/URI;->path:Ljava/lang/String;

    goto :goto_1
.end method

.method private static resolvePath(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 7
    .param p0, "base"    # Ljava/lang/String;
    .param p1, "child"    # Ljava/lang/String;
    .param p2, "absolute"    # Z

    .prologue
    const/4 v6, 0x0

    .line 1984
    const/16 v5, 0x2f

    invoke-virtual {p0, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 1985
    .local v1, "i":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 1986
    .local v0, "cn":I
    const-string/jumbo v3, ""

    .line 1988
    .local v3, "path":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 1990
    if-ltz v1, :cond_0

    .line 1991
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p0, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 2003
    :cond_0
    :goto_0
    const/4 v5, 0x1

    invoke-static {v3, v5}, Ljava/net/URI;->normalize(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 2008
    .local v2, "np":Ljava/lang/String;
    return-object v2

    .line 1993
    .end local v2    # "np":Ljava/lang/String;
    :cond_1
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v0

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 1995
    .local v4, "sb":Ljava/lang/StringBuffer;
    if-ltz v1, :cond_2

    .line 1996
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p0, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1998
    :cond_2
    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1999
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private static split([C[I)V
    .locals 8
    .param p0, "path"    # [C
    .param p1, "segs"    # [I

    .prologue
    const/16 v7, 0x2f

    const/4 v6, 0x0

    .line 2231
    array-length v5, p0

    add-int/lit8 v0, v5, -0x1

    .line 2232
    .local v0, "end":I
    const/4 v3, 0x0

    .line 2233
    .local v3, "p":I
    const/4 v1, 0x0

    .line 2236
    .local v1, "i":I
    :goto_0
    if-gt v3, v0, :cond_3

    .line 2237
    aget-char v5, p0, v3

    if-eq v5, v7, :cond_0

    move v2, v1

    .end local v1    # "i":I
    .local v2, "i":I
    move v4, v3

    .line 2242
    .end local v3    # "p":I
    .local v4, "p":I
    :goto_1
    if-gt v4, v0, :cond_5

    .line 2245
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "p":I
    .restart local v3    # "p":I
    aput v4, p1, v2

    move v4, v3

    .line 2248
    .end local v3    # "p":I
    .restart local v4    # "p":I
    :goto_2
    if-gt v4, v0, :cond_7

    .line 2249
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "p":I
    .restart local v3    # "p":I
    aget-char v5, p0, v4

    if-eq v5, v7, :cond_1

    move v4, v3

    .line 2250
    .end local v3    # "p":I
    .restart local v4    # "p":I
    goto :goto_2

    .line 2238
    .end local v4    # "p":I
    .restart local v3    # "p":I
    :cond_0
    aput-char v6, p0, v3

    .line 2239
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2251
    :cond_1
    add-int/lit8 v5, v3, -0x1

    aput-char v6, p0, v5

    move v4, v3

    .line 2254
    .end local v3    # "p":I
    .restart local v4    # "p":I
    :goto_3
    if-gt v4, v0, :cond_2

    .line 2255
    aget-char v5, p0, v4

    if-eq v5, v7, :cond_4

    :cond_2
    move v3, v4

    .end local v4    # "p":I
    .restart local v3    # "p":I
    :cond_3
    :goto_4
    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    move v4, v3

    .end local v3    # "p":I
    .restart local v4    # "p":I
    goto :goto_1

    .line 2256
    .end local v2    # "i":I
    .restart local v1    # "i":I
    :cond_4
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "p":I
    .restart local v3    # "p":I
    aput-char v6, p0, v4

    move v4, v3

    .end local v3    # "p":I
    .restart local v4    # "p":I
    goto :goto_3

    .line 2262
    .end local v1    # "i":I
    .restart local v2    # "i":I
    :cond_5
    array-length v5, p1

    if-eq v2, v5, :cond_6

    .line 2263
    new-instance v5, Ljava/lang/InternalError;

    invoke-direct {v5}, Ljava/lang/InternalError;-><init>()V

    throw v5

    .line 2230
    :cond_6
    return-void

    .end local v2    # "i":I
    .restart local v1    # "i":I
    :cond_7
    move v3, v4

    .end local v4    # "p":I
    .restart local v3    # "p":I
    goto :goto_4
.end method

.method private static toLower(C)I
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 1686
    const/16 v0, 0x41

    if-lt p0, v0, :cond_0

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_0

    .line 1687
    add-int/lit8 v0, p0, 0x20

    return v0

    .line 1688
    :cond_0
    return p0
.end method

.method private toString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "scheme"    # Ljava/lang/String;
    .param p2, "opaquePart"    # Ljava/lang/String;
    .param p3, "authority"    # Ljava/lang/String;
    .param p4, "userInfo"    # Ljava/lang/String;
    .param p5, "host"    # Ljava/lang/String;
    .param p6, "port"    # I
    .param p7, "path"    # Ljava/lang/String;
    .param p8, "query"    # Ljava/lang/String;
    .param p9, "fragment"    # Ljava/lang/String;

    .prologue
    .line 1911
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 1912
    .local v2, "sb":Ljava/lang/StringBuffer;
    if-eqz p1, :cond_0

    .line 1913
    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1914
    const/16 v1, 0x3a

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    .line 1916
    invoke-direct/range {v1 .. v9}, Ljava/net/URI;->appendSchemeSpecificPart(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 1919
    move-object/from16 v0, p9

    invoke-direct {p0, v2, v0}, Ljava/net/URI;->appendFragment(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 1920
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0
    .param p1, "os"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1643
    invoke-direct {p0}, Ljava/net/URI;->defineString()V

    .line 1644
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 1641
    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "that"    # Ljava/lang/Object;

    .prologue
    .line 1546
    check-cast p1, Ljava/net/URI;

    .end local p1    # "that":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/net/URI;->compareTo(Ljava/net/URI;)I

    move-result v0

    return v0
.end method

.method public compareTo(Ljava/net/URI;)I
    .locals 3
    .param p1, "that"    # Ljava/net/URI;

    .prologue
    .line 1549
    iget-object v1, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    iget-object v2, p1, Ljava/net/URI;->scheme:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/net/URI;->compareIgnoringCase(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .local v0, "c":I
    if-eqz v0, :cond_0

    .line 1550
    return v0

    .line 1552
    :cond_0
    invoke-virtual {p0}, Ljava/net/URI;->isOpaque()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1553
    invoke-virtual {p1}, Ljava/net/URI;->isOpaque()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1555
    iget-object v1, p0, Ljava/net/URI;->schemeSpecificPart:Ljava/lang/String;

    .line 1556
    iget-object v2, p1, Ljava/net/URI;->schemeSpecificPart:Ljava/lang/String;

    .line 1555
    invoke-static {v1, v2}, Ljava/net/URI;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 1557
    return v0

    .line 1558
    :cond_1
    iget-object v1, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    iget-object v2, p1, Ljava/net/URI;->fragment:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/net/URI;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1

    .line 1560
    :cond_2
    const/4 v1, 0x1

    return v1

    .line 1561
    :cond_3
    invoke-virtual {p1}, Ljava/net/URI;->isOpaque()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1562
    const/4 v1, -0x1

    return v1

    .line 1566
    :cond_4
    iget-object v1, p0, Ljava/net/URI;->host:Ljava/lang/String;

    if-eqz v1, :cond_7

    iget-object v1, p1, Ljava/net/URI;->host:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 1568
    iget-object v1, p0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    iget-object v2, p1, Ljava/net/URI;->userInfo:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/net/URI;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_5

    .line 1569
    return v0

    .line 1570
    :cond_5
    iget-object v1, p0, Ljava/net/URI;->host:Ljava/lang/String;

    iget-object v2, p1, Ljava/net/URI;->host:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/net/URI;->compareIgnoringCase(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_6

    .line 1571
    return v0

    .line 1572
    :cond_6
    iget v1, p0, Ljava/net/URI;->port:I

    iget v2, p1, Ljava/net/URI;->port:I

    sub-int v0, v1, v2

    if-eqz v0, :cond_8

    .line 1573
    return v0

    .line 1581
    :cond_7
    iget-object v1, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    iget-object v2, p1, Ljava/net/URI;->authority:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/net/URI;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_8

    return v0

    .line 1584
    :cond_8
    iget-object v1, p0, Ljava/net/URI;->path:Ljava/lang/String;

    iget-object v2, p1, Ljava/net/URI;->path:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/net/URI;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_9

    return v0

    .line 1585
    :cond_9
    iget-object v1, p0, Ljava/net/URI;->query:Ljava/lang/String;

    iget-object v2, p1, Ljava/net/URI;->query:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/net/URI;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_a

    return v0

    .line 1586
    :cond_a
    iget-object v1, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    iget-object v2, p1, Ljava/net/URI;->fragment:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/net/URI;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "ob"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1415
    if-ne p1, p0, :cond_0

    .line 1416
    return v4

    .line 1417
    :cond_0
    instance-of v1, p1, Ljava/net/URI;

    if-nez v1, :cond_1

    .line 1418
    return v3

    :cond_1
    move-object v0, p1

    .line 1419
    check-cast v0, Ljava/net/URI;

    .line 1420
    .local v0, "that":Ljava/net/URI;
    invoke-virtual {p0}, Ljava/net/URI;->isOpaque()Z

    move-result v1

    invoke-virtual {v0}, Ljava/net/URI;->isOpaque()Z

    move-result v2

    if-eq v1, v2, :cond_2

    return v3

    .line 1421
    :cond_2
    iget-object v1, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    iget-object v2, v0, Ljava/net/URI;->scheme:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/net/URI;->equalIgnoringCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    return v3

    .line 1422
    :cond_3
    iget-object v1, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    iget-object v2, v0, Ljava/net/URI;->fragment:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/net/URI;->equal(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    return v3

    .line 1425
    :cond_4
    invoke-virtual {p0}, Ljava/net/URI;->isOpaque()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1426
    iget-object v1, p0, Ljava/net/URI;->schemeSpecificPart:Ljava/lang/String;

    iget-object v2, v0, Ljava/net/URI;->schemeSpecificPart:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/net/URI;->equal(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 1429
    :cond_5
    iget-object v1, p0, Ljava/net/URI;->path:Ljava/lang/String;

    iget-object v2, v0, Ljava/net/URI;->path:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/net/URI;->equal(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    return v3

    .line 1430
    :cond_6
    iget-object v1, p0, Ljava/net/URI;->query:Ljava/lang/String;

    iget-object v2, v0, Ljava/net/URI;->query:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/net/URI;->equal(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    return v3

    .line 1433
    :cond_7
    iget-object v1, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    iget-object v2, v0, Ljava/net/URI;->authority:Ljava/lang/String;

    if-ne v1, v2, :cond_8

    return v4

    .line 1434
    :cond_8
    iget-object v1, p0, Ljava/net/URI;->host:Ljava/lang/String;

    if-eqz v1, :cond_b

    .line 1436
    iget-object v1, p0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    iget-object v2, v0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/net/URI;->equal(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    return v3

    .line 1437
    :cond_9
    iget-object v1, p0, Ljava/net/URI;->host:Ljava/lang/String;

    iget-object v2, v0, Ljava/net/URI;->host:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/net/URI;->equalIgnoringCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    return v3

    .line 1438
    :cond_a
    iget v1, p0, Ljava/net/URI;->port:I

    iget v2, v0, Ljava/net/URI;->port:I

    if-eq v1, v2, :cond_d

    return v3

    .line 1439
    :cond_b
    iget-object v1, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    if-eqz v1, :cond_c

    .line 1441
    iget-object v1, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    iget-object v2, v0, Ljava/net/URI;->authority:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/net/URI;->equal(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d

    return v3

    .line 1442
    :cond_c
    iget-object v1, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    iget-object v2, v0, Ljava/net/URI;->authority:Ljava/lang/String;

    if-eq v1, v2, :cond_d

    .line 1443
    return v3

    .line 1446
    :cond_d
    return v4
.end method

.method public getAuthority()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1197
    iget-object v0, p0, Ljava/net/URI;->decodedAuthority:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1198
    iget-object v0, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/URI;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/net/URI;->decodedAuthority:Ljava/lang/String;

    .line 1199
    :cond_0
    iget-object v0, p0, Ljava/net/URI;->decodedAuthority:Ljava/lang/String;

    return-object v0
.end method

.method public getFragment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1369
    iget-object v0, p0, Ljava/net/URI;->decodedFragment:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1370
    iget-object v0, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/URI;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/net/URI;->decodedFragment:Ljava/lang/String;

    .line 1371
    :cond_0
    iget-object v0, p0, Ljava/net/URI;->decodedFragment:Ljava/lang/String;

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1269
    iget-object v0, p0, Ljava/net/URI;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1311
    iget-object v0, p0, Ljava/net/URI;->decodedPath:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Ljava/net/URI;->path:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1312
    iget-object v0, p0, Ljava/net/URI;->path:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/URI;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/net/URI;->decodedPath:Ljava/lang/String;

    .line 1313
    :cond_0
    iget-object v0, p0, Ljava/net/URI;->decodedPath:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 1282
    iget v0, p0, Ljava/net/URI;->port:I

    return v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1340
    iget-object v0, p0, Ljava/net/URI;->decodedQuery:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Ljava/net/URI;->query:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1341
    iget-object v0, p0, Ljava/net/URI;->query:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/URI;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/net/URI;->decodedQuery:Ljava/lang/String;

    .line 1342
    :cond_0
    iget-object v0, p0, Ljava/net/URI;->decodedQuery:Ljava/lang/String;

    return-object v0
.end method

.method public getRawAuthority()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1183
    iget-object v0, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    return-object v0
.end method

.method public getRawFragment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1355
    iget-object v0, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    return-object v0
.end method

.method public getRawPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1297
    iget-object v0, p0, Ljava/net/URI;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getRawQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1326
    iget-object v0, p0, Ljava/net/URI;->query:Ljava/lang/String;

    return-object v0
.end method

.method public getRawSchemeSpecificPart()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1148
    invoke-direct {p0}, Ljava/net/URI;->defineSchemeSpecificPart()V

    .line 1149
    iget-object v0, p0, Ljava/net/URI;->schemeSpecificPart:Ljava/lang/String;

    return-object v0
.end method

.method public getRawUserInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1213
    iget-object v0, p0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getScheme()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1109
    iget-object v0, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    return-object v0
.end method

.method public getSchemeSpecificPart()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1164
    iget-object v0, p0, Ljava/net/URI;->decodedSchemeSpecificPart:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1165
    invoke-virtual {p0}, Ljava/net/URI;->getRawSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URI;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/net/URI;->decodedSchemeSpecificPart:Ljava/lang/String;

    .line 1166
    :cond_0
    iget-object v0, p0, Ljava/net/URI;->decodedSchemeSpecificPart:Ljava/lang/String;

    return-object v0
.end method

.method public getUserInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1227
    iget-object v0, p0, Ljava/net/URI;->decodedUserInfo:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1228
    iget-object v0, p0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/URI;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/net/URI;->decodedUserInfo:Ljava/lang/String;

    .line 1229
    :cond_0
    iget-object v0, p0, Ljava/net/URI;->decodedUserInfo:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1457
    iget v1, p0, Ljava/net/URI;->hash:I

    if-eqz v1, :cond_0

    .line 1458
    iget v1, p0, Ljava/net/URI;->hash:I

    return v1

    .line 1459
    :cond_0
    iget-object v1, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    invoke-static {v2, v1}, Ljava/net/URI;->hashIgnoringCase(ILjava/lang/String;)I

    move-result v0

    .line 1460
    .local v0, "h":I
    iget-object v1, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/net/URI;->hash(ILjava/lang/String;)I

    move-result v0

    .line 1461
    invoke-virtual {p0}, Ljava/net/URI;->isOpaque()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1462
    iget-object v1, p0, Ljava/net/URI;->schemeSpecificPart:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/net/URI;->hash(ILjava/lang/String;)I

    move-result v0

    .line 1474
    :goto_0
    iput v0, p0, Ljava/net/URI;->hash:I

    .line 1475
    return v0

    .line 1464
    :cond_1
    iget-object v1, p0, Ljava/net/URI;->path:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/net/URI;->hash(ILjava/lang/String;)I

    move-result v0

    .line 1465
    iget-object v1, p0, Ljava/net/URI;->query:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/net/URI;->hash(ILjava/lang/String;)I

    move-result v0

    .line 1466
    iget-object v1, p0, Ljava/net/URI;->host:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 1467
    iget-object v1, p0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/net/URI;->hash(ILjava/lang/String;)I

    move-result v0

    .line 1468
    iget-object v1, p0, Ljava/net/URI;->host:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/net/URI;->hashIgnoringCase(ILjava/lang/String;)I

    move-result v0

    .line 1469
    iget v1, p0, Ljava/net/URI;->port:I

    mul-int/lit16 v1, v1, 0x79d

    add-int/2addr v0, v1

    goto :goto_0

    .line 1471
    :cond_2
    iget-object v1, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/net/URI;->hash(ILjava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public isAbsolute()Z
    .locals 1

    .prologue
    .line 1120
    iget-object v0, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOpaque()Z
    .locals 1

    .prologue
    .line 1134
    iget-object v0, p0, Ljava/net/URI;->path:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public normalize()Ljava/net/URI;
    .locals 1

    .prologue
    .line 958
    invoke-static {p0}, Ljava/net/URI;->normalize(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method

.method public parseServerAuthority()Ljava/net/URI;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 913
    iget-object v0, p0, Ljava/net/URI;->host:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 914
    :cond_0
    return-object p0

    .line 915
    :cond_1
    invoke-direct {p0}, Ljava/net/URI;->defineString()V

    .line 916
    new-instance v0, Ljava/net/URI$Parser;

    iget-object v1, p0, Ljava/net/URI;->string:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Ljava/net/URI$Parser;-><init>(Ljava/net/URI;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/URI$Parser;->parse(Z)V

    .line 917
    return-object p0
.end method

.method public relativize(Ljava/net/URI;)Ljava/net/URI;
    .locals 1
    .param p1, "uri"    # Ljava/net/URI;

    .prologue
    .line 1067
    invoke-static {p0, p1}, Ljava/net/URI;->relativize(Ljava/net/URI;Ljava/net/URI;)Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method

.method public resolve(Ljava/lang/String;)Ljava/net/URI;
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 1037
    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/net/URI;->resolve(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method

.method public resolve(Ljava/net/URI;)Ljava/net/URI;
    .locals 1
    .param p1, "uri"    # Ljava/net/URI;

    .prologue
    .line 1016
    invoke-static {p0, p1}, Ljava/net/URI;->resolve(Ljava/net/URI;Ljava/net/URI;)Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method

.method public toASCIIString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1622
    invoke-direct {p0}, Ljava/net/URI;->defineString()V

    .line 1623
    iget-object v0, p0, Ljava/net/URI;->string:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/URI;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1604
    invoke-direct {p0}, Ljava/net/URI;->defineString()V

    .line 1605
    iget-object v0, p0, Ljava/net/URI;->string:Ljava/lang/String;

    return-object v0
.end method

.method public toURL()Ljava/net/URL;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 1088
    invoke-virtual {p0}, Ljava/net/URI;->isAbsolute()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1089
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "URI is not absolute"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1090
    :cond_0
    new-instance v0, Ljava/net/URL;

    invoke-virtual {p0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
