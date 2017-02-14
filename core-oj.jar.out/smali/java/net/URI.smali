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

    invoke-static {p0, p1, p2, p3, p4}, Ljava/net/URI;->match(CJJ)Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 10

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

    const/16 v0, 0x30

    const/16 v1, 0x39

    invoke-static {v0, v1}, Ljava/net/URI;->lowMask(CC)J

    move-result-wide v0

    sput-wide v0, Ljava/net/URI;->L_DIGIT:J

    const/16 v0, 0x5a

    invoke-static {v8, v0}, Ljava/net/URI;->highMask(CC)J

    move-result-wide v0

    sput-wide v0, Ljava/net/URI;->H_UPALPHA:J

    const/16 v0, 0x7a

    invoke-static {v9, v0}, Ljava/net/URI;->highMask(CC)J

    move-result-wide v0

    sput-wide v0, Ljava/net/URI;->H_LOWALPHA:J

    sget-wide v0, Ljava/net/URI;->H_LOWALPHA:J

    sget-wide v2, Ljava/net/URI;->H_UPALPHA:J

    or-long/2addr v0, v2

    sput-wide v0, Ljava/net/URI;->H_ALPHA:J

    sget-wide v0, Ljava/net/URI;->L_DIGIT:J

    or-long/2addr v0, v4

    sput-wide v0, Ljava/net/URI;->L_ALPHANUM:J

    sget-wide v0, Ljava/net/URI;->H_ALPHA:J

    or-long/2addr v0, v4

    sput-wide v0, Ljava/net/URI;->H_ALPHANUM:J

    sget-wide v0, Ljava/net/URI;->L_DIGIT:J

    sput-wide v0, Ljava/net/URI;->L_HEX:J

    const/16 v0, 0x46

    invoke-static {v8, v0}, Ljava/net/URI;->highMask(CC)J

    move-result-wide v0

    const/16 v2, 0x66

    invoke-static {v9, v2}, Ljava/net/URI;->highMask(CC)J

    move-result-wide v2

    or-long/2addr v0, v2

    sput-wide v0, Ljava/net/URI;->H_HEX:J

    const-string/jumbo v0, "-_.!~*\'()"

    invoke-static {v0}, Ljava/net/URI;->lowMask(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Ljava/net/URI;->L_MARK:J

    const-string/jumbo v0, "-_.!~*\'()"

    invoke-static {v0}, Ljava/net/URI;->highMask(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Ljava/net/URI;->H_MARK:J

    sget-wide v0, Ljava/net/URI;->L_ALPHANUM:J

    sget-wide v2, Ljava/net/URI;->L_MARK:J

    or-long/2addr v0, v2

    sput-wide v0, Ljava/net/URI;->L_UNRESERVED:J

    sget-wide v0, Ljava/net/URI;->H_ALPHANUM:J

    sget-wide v2, Ljava/net/URI;->H_MARK:J

    or-long/2addr v0, v2

    sput-wide v0, Ljava/net/URI;->H_UNRESERVED:J

    const-string/jumbo v0, ";/?:@&=+$,[]"

    invoke-static {v0}, Ljava/net/URI;->lowMask(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Ljava/net/URI;->L_RESERVED:J

    const-string/jumbo v0, ";/?:@&=+$,[]"

    invoke-static {v0}, Ljava/net/URI;->highMask(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Ljava/net/URI;->H_RESERVED:J

    sget-wide v0, Ljava/net/URI;->L_RESERVED:J

    sget-wide v2, Ljava/net/URI;->L_UNRESERVED:J

    or-long/2addr v0, v2

    or-long/2addr v0, v6

    sput-wide v0, Ljava/net/URI;->L_URIC:J

    sget-wide v0, Ljava/net/URI;->H_RESERVED:J

    sget-wide v2, Ljava/net/URI;->H_UNRESERVED:J

    or-long/2addr v0, v2

    or-long/2addr v0, v4

    sput-wide v0, Ljava/net/URI;->H_URIC:J

    sget-wide v0, Ljava/net/URI;->L_UNRESERVED:J

    or-long/2addr v0, v6

    const-string/jumbo v2, ":@&=+$,"

    invoke-static {v2}, Ljava/net/URI;->lowMask(Ljava/lang/String;)J

    move-result-wide v2

    or-long/2addr v0, v2

    sput-wide v0, Ljava/net/URI;->L_PCHAR:J

    sget-wide v0, Ljava/net/URI;->H_UNRESERVED:J

    or-long/2addr v0, v4

    const-string/jumbo v2, ":@&=+$,"

    invoke-static {v2}, Ljava/net/URI;->highMask(Ljava/lang/String;)J

    move-result-wide v2

    or-long/2addr v0, v2

    sput-wide v0, Ljava/net/URI;->H_PCHAR:J

    sget-wide v0, Ljava/net/URI;->L_PCHAR:J

    const-string/jumbo v2, ";/"

    invoke-static {v2}, Ljava/net/URI;->lowMask(Ljava/lang/String;)J

    move-result-wide v2

    or-long/2addr v0, v2

    sput-wide v0, Ljava/net/URI;->L_PATH:J

    sget-wide v0, Ljava/net/URI;->H_PCHAR:J

    const-string/jumbo v2, ";/"

    invoke-static {v2}, Ljava/net/URI;->highMask(Ljava/lang/String;)J

    move-result-wide v2

    or-long/2addr v0, v2

    sput-wide v0, Ljava/net/URI;->H_PATH:J

    const-string/jumbo v0, "-"

    invoke-static {v0}, Ljava/net/URI;->lowMask(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Ljava/net/URI;->L_DASH:J

    const-string/jumbo v0, "-"

    invoke-static {v0}, Ljava/net/URI;->highMask(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Ljava/net/URI;->H_DASH:J

    const-string/jumbo v0, "_"

    invoke-static {v0}, Ljava/net/URI;->lowMask(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Ljava/net/URI;->L_UNDERSCORE:J

    const-string/jumbo v0, "_"

    invoke-static {v0}, Ljava/net/URI;->highMask(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Ljava/net/URI;->H_UNDERSCORE:J

    const-string/jumbo v0, "."

    invoke-static {v0}, Ljava/net/URI;->lowMask(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Ljava/net/URI;->L_DOT:J

    const-string/jumbo v0, "."

    invoke-static {v0}, Ljava/net/URI;->highMask(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Ljava/net/URI;->H_DOT:J

    sget-wide v0, Ljava/net/URI;->L_UNRESERVED:J

    or-long/2addr v0, v6

    const-string/jumbo v2, ";:&=+$,"

    invoke-static {v2}, Ljava/net/URI;->lowMask(Ljava/lang/String;)J

    move-result-wide v2

    or-long/2addr v0, v2

    sput-wide v0, Ljava/net/URI;->L_USERINFO:J

    sget-wide v0, Ljava/net/URI;->H_UNRESERVED:J

    or-long/2addr v0, v4

    const-string/jumbo v2, ";:&=+$,"

    invoke-static {v2}, Ljava/net/URI;->highMask(Ljava/lang/String;)J

    move-result-wide v2

    or-long/2addr v0, v2

    sput-wide v0, Ljava/net/URI;->H_USERINFO:J

    sget-wide v0, Ljava/net/URI;->L_UNRESERVED:J

    or-long/2addr v0, v6

    const-string/jumbo v2, "$,;:@&=+"

    invoke-static {v2}, Ljava/net/URI;->lowMask(Ljava/lang/String;)J

    move-result-wide v2

    or-long/2addr v0, v2

    sput-wide v0, Ljava/net/URI;->L_REG_NAME:J

    sget-wide v0, Ljava/net/URI;->H_UNRESERVED:J

    or-long/2addr v0, v4

    const-string/jumbo v2, "$,;:@&=+"

    invoke-static {v2}, Ljava/net/URI;->highMask(Ljava/lang/String;)J

    move-result-wide v2

    or-long/2addr v0, v2

    sput-wide v0, Ljava/net/URI;->H_REG_NAME:J

    sget-wide v0, Ljava/net/URI;->L_USERINFO:J

    sget-wide v2, Ljava/net/URI;->L_ALPHANUM:J

    or-long/2addr v0, v2

    sget-wide v2, Ljava/net/URI;->L_DASH:J

    or-long/2addr v0, v2

    const-string/jumbo v2, ".:@[]"

    invoke-static {v2}, Ljava/net/URI;->lowMask(Ljava/lang/String;)J

    move-result-wide v2

    or-long/2addr v0, v2

    sput-wide v0, Ljava/net/URI;->L_SERVER:J

    sget-wide v0, Ljava/net/URI;->H_USERINFO:J

    sget-wide v2, Ljava/net/URI;->H_ALPHANUM:J

    or-long/2addr v0, v2

    sget-wide v2, Ljava/net/URI;->H_DASH:J

    or-long/2addr v0, v2

    const-string/jumbo v2, ".:@[]"

    invoke-static {v2}, Ljava/net/URI;->highMask(Ljava/lang/String;)J

    move-result-wide v2

    or-long/2addr v0, v2

    sput-wide v0, Ljava/net/URI;->H_SERVER:J

    sget-wide v0, Ljava/net/URI;->L_SERVER:J

    const-string/jumbo v2, "%"

    invoke-static {v2}, Ljava/net/URI;->lowMask(Ljava/lang/String;)J

    move-result-wide v2

    or-long/2addr v0, v2

    sput-wide v0, Ljava/net/URI;->L_SERVER_PERCENT:J

    sget-wide v0, Ljava/net/URI;->H_SERVER:J

    const-string/jumbo v2, "%"

    invoke-static {v2}, Ljava/net/URI;->highMask(Ljava/lang/String;)J

    move-result-wide v2

    or-long/2addr v0, v2

    sput-wide v0, Ljava/net/URI;->H_SERVER_PERCENT:J

    const-string/jumbo v0, "["

    invoke-static {v0}, Ljava/net/URI;->lowMask(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Ljava/net/URI;->L_LEFT_BRACKET:J

    const-string/jumbo v0, "["

    invoke-static {v0}, Ljava/net/URI;->highMask(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Ljava/net/URI;->H_LEFT_BRACKET:J

    sget-wide v0, Ljava/net/URI;->L_DIGIT:J

    or-long/2addr v0, v4

    const-string/jumbo v2, "+-."

    invoke-static {v2}, Ljava/net/URI;->lowMask(Ljava/lang/String;)J

    move-result-wide v2

    or-long/2addr v0, v2

    sput-wide v0, Ljava/net/URI;->L_SCHEME:J

    sget-wide v0, Ljava/net/URI;->H_ALPHA:J

    or-long/2addr v0, v4

    const-string/jumbo v2, "+-."

    invoke-static {v2}, Ljava/net/URI;->highMask(Ljava/lang/String;)J

    move-result-wide v2

    or-long/2addr v0, v2

    sput-wide v0, Ljava/net/URI;->H_SCHEME:J

    sget-wide v0, Ljava/net/URI;->L_UNRESERVED:J

    or-long/2addr v0, v6

    const-string/jumbo v2, ";?:@&=+$,"

    invoke-static {v2}, Ljava/net/URI;->lowMask(Ljava/lang/String;)J

    move-result-wide v2

    or-long/2addr v0, v2

    sput-wide v0, Ljava/net/URI;->L_URIC_NO_SLASH:J

    sget-wide v0, Ljava/net/URI;->H_UNRESERVED:J

    or-long/2addr v0, v4

    const-string/jumbo v2, ";?:@&=+$,"

    invoke-static {v2}, Ljava/net/URI;->highMask(Ljava/lang/String;)J

    move-result-wide v2

    or-long/2addr v0, v2

    sput-wide v0, Ljava/net/URI;->H_URIC_NO_SLASH:J

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Ljava/net/URI;->hexDigits:[C

    return-void

    :cond_0
    const/4 v0, 0x1

    goto/16 :goto_0

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

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Ljava/net/URI;->port:I

    iput-object v1, p0, Ljava/net/URI;->decodedUserInfo:Ljava/lang/String;

    iput-object v1, p0, Ljava/net/URI;->decodedAuthority:Ljava/lang/String;

    iput-object v1, p0, Ljava/net/URI;->decodedPath:Ljava/lang/String;

    iput-object v1, p0, Ljava/net/URI;->decodedQuery:Ljava/lang/String;

    iput-object v1, p0, Ljava/net/URI;->decodedFragment:Ljava/lang/String;

    iput-object v1, p0, Ljava/net/URI;->decodedSchemeSpecificPart:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Ljava/net/URI;->port:I

    iput-object v1, p0, Ljava/net/URI;->decodedUserInfo:Ljava/lang/String;

    iput-object v1, p0, Ljava/net/URI;->decodedAuthority:Ljava/lang/String;

    iput-object v1, p0, Ljava/net/URI;->decodedPath:Ljava/lang/String;

    iput-object v1, p0, Ljava/net/URI;->decodedQuery:Ljava/lang/String;

    iput-object v1, p0, Ljava/net/URI;->decodedFragment:Ljava/lang/String;

    iput-object v1, p0, Ljava/net/URI;->decodedSchemeSpecificPart:Ljava/lang/String;

    new-instance v0, Ljava/net/URI$Parser;

    invoke-direct {v0, p0, p1}, Ljava/net/URI$Parser;-><init>(Ljava/net/URI;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/URI$Parser;->parse(Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    const/4 v6, -0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v6, p0, Ljava/net/URI;->port:I

    iput-object v3, p0, Ljava/net/URI;->decodedUserInfo:Ljava/lang/String;

    iput-object v3, p0, Ljava/net/URI;->decodedAuthority:Ljava/lang/String;

    iput-object v3, p0, Ljava/net/URI;->decodedPath:Ljava/lang/String;

    iput-object v3, p0, Ljava/net/URI;->decodedQuery:Ljava/lang/String;

    iput-object v3, p0, Ljava/net/URI;->decodedFragment:Ljava/lang/String;

    iput-object v3, p0, Ljava/net/URI;->decodedSchemeSpecificPart:Ljava/lang/String;

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

    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Ljava/net/URI$Parser;->parse(Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, -0x1

    iput v1, p0, Ljava/net/URI;->port:I

    const/4 v1, 0x0

    iput-object v1, p0, Ljava/net/URI;->decodedUserInfo:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Ljava/net/URI;->decodedAuthority:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Ljava/net/URI;->decodedPath:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Ljava/net/URI;->decodedQuery:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Ljava/net/URI;->decodedFragment:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Ljava/net/URI;->decodedSchemeSpecificPart:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    move/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    invoke-direct/range {v1 .. v10}, Ljava/net/URI;->toString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p5

    invoke-static {v11, p1, v0}, Ljava/net/URI;->checkPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/net/URI$Parser;

    invoke-direct {v1, p0, v11}, Ljava/net/URI$Parser;-><init>(Ljava/net/URI;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/net/URI$Parser;->parse(Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, v2

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Ljava/net/URI;->port:I

    const/4 v0, 0x0

    iput-object v0, p0, Ljava/net/URI;->decodedUserInfo:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Ljava/net/URI;->decodedAuthority:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Ljava/net/URI;->decodedPath:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Ljava/net/URI;->decodedQuery:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Ljava/net/URI;->decodedFragment:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Ljava/net/URI;->decodedSchemeSpecificPart:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v7, p3

    move-object v8, p4

    move-object/from16 v9, p5

    invoke-direct/range {v0 .. v9}, Ljava/net/URI;->toString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, p1, p3}, Ljava/net/URI;->checkPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/net/URI$Parser;

    invoke-direct {v0, p0, v10}, Ljava/net/URI$Parser;-><init>(Ljava/net/URI;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/URI$Parser;->parse(Z)V

    return-void
.end method

.method private appendAuthority(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 10

    if-eqz p4, :cond_7

    const-string/jumbo v4, "//"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz p3, :cond_0

    sget-wide v4, Ljava/net/URI;->L_USERINFO:J

    sget-wide v6, Ljava/net/URI;->H_USERINFO:J

    invoke-static {p3, v4, v5, v6, v7}, Ljava/net/URI;->quote(Ljava/lang/String;JJ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v4, 0x40

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    const/16 v4, 0x3a

    invoke-virtual {p4, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ltz v4, :cond_1

    const-string/jumbo v4, "["

    invoke-virtual {p4, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_2

    const/16 v4, 0x5b

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_2
    invoke-virtual {p1, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz v3, :cond_3

    const/16 v4, 0x5d

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_3
    const/4 v4, -0x1

    if-eq p5, v4, :cond_4

    const/16 v4, 0x3a

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :cond_4
    :goto_1
    return-void

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

    :cond_7
    if-eqz p2, :cond_4

    const-string/jumbo v4, "//"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v4, "["

    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    const-string/jumbo v4, "]"

    invoke-virtual {p2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    move-object v1, p2

    const-string/jumbo v0, ""

    const/4 v4, -0x1

    if-eq v2, v4, :cond_8

    const-string/jumbo v4, ":"

    invoke-virtual {p2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_8

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v2, v4, :cond_9

    move-object v0, p2

    const-string/jumbo v1, ""

    :cond_8
    :goto_3
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-wide v4, Ljava/net/URI;->L_REG_NAME:J

    sget-wide v6, Ljava/net/URI;->L_SERVER:J

    or-long/2addr v4, v6

    sget-wide v6, Ljava/net/URI;->H_REG_NAME:J

    sget-wide v8, Ljava/net/URI;->H_SERVER:J

    or-long/2addr v6, v8

    invoke-static {v1, v4, v5, v6, v7}, Ljava/net/URI;->quote(Ljava/lang/String;JJ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_9
    add-int/lit8 v4, v2, 0x1

    const/4 v5, 0x0

    invoke-virtual {p2, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_a
    sget-wide v4, Ljava/net/URI;->L_REG_NAME:J

    sget-wide v6, Ljava/net/URI;->L_SERVER:J

    or-long/2addr v4, v6

    sget-wide v6, Ljava/net/URI;->H_REG_NAME:J

    sget-wide v8, Ljava/net/URI;->H_SERVER:J

    or-long/2addr v6, v8

    invoke-static {p2, v4, v5, v6, v7}, Ljava/net/URI;->quote(Ljava/lang/String;JJ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method private static appendEncoded(Ljava/lang/StringBuffer;C)V
    .locals 6

    const/4 v1, 0x0

    :try_start_0
    const-string/jumbo v3, "UTF-8"

    invoke-static {v3}, Lsun/nio/cs/ThreadLocalCoders;->encoderFor(Ljava/lang/Object;)Ljava/nio/charset/CharsetEncoder;

    move-result-object v3

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

    invoke-virtual {v3, v4}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    and-int/lit16 v0, v3, 0xff

    const/16 v3, 0x80

    if-lt v0, v3, :cond_1

    int-to-byte v3, v0

    invoke-static {p0, v3}, Ljava/net/URI;->appendEscape(Ljava/lang/StringBuffer;B)V

    goto :goto_0

    :catch_0
    move-exception v2

    sget-boolean v3, Ljava/net/URI;->-assertionsDisabled:Z

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    :cond_1
    int-to-char v3, v0

    invoke-virtual {p0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static appendEscape(Ljava/lang/StringBuffer;B)V
    .locals 2

    const/16 v0, 0x25

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v0, Ljava/net/URI;->hexDigits:[C

    shr-int/lit8 v1, p1, 0x4

    and-int/lit8 v1, v1, 0xf

    aget-char v0, v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v0, Ljava/net/URI;->hexDigits:[C

    shr-int/lit8 v1, p1, 0x0

    and-int/lit8 v1, v1, 0xf

    aget-char v0, v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-void
.end method

.method private appendFragment(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .locals 4

    if-eqz p2, :cond_0

    const/16 v0, 0x23

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-wide v0, Ljava/net/URI;->L_URIC:J

    sget-wide v2, Ljava/net/URI;->H_URIC:J

    invoke-static {p2, v0, v1, v2, v3}, Ljava/net/URI;->quote(Ljava/lang/String;JJ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    return-void
.end method

.method private appendSchemeSpecificPart(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 11

    if-eqz p2, :cond_3

    const-string/jumbo v2, "//["

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "]"

    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    const/4 v2, -0x1

    if-eq v10, v2, :cond_0

    const-string/jumbo v2, ":"

    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v10, v2, :cond_1

    move-object v8, p2

    const-string/jumbo v9, ""

    :goto_0
    invoke-virtual {p1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-wide v2, Ljava/net/URI;->L_URIC:J

    sget-wide v4, Ljava/net/URI;->H_URIC:J

    invoke-static {v9, v2, v3, v4, v5}, Ljava/net/URI;->quote(Ljava/lang/String;JJ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    :goto_1
    return-void

    :cond_1
    add-int/lit8 v2, v10, 0x1

    const/4 v3, 0x0

    invoke-virtual {p2, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    add-int/lit8 v2, v10, 0x1

    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_0

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

    invoke-direct/range {v2 .. v7}, Ljava/net/URI;->appendAuthority(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    if-eqz p7, :cond_4

    sget-wide v2, Ljava/net/URI;->L_PATH:J

    sget-wide v4, Ljava/net/URI;->H_PATH:J

    move-object/from16 v0, p7

    invoke-static {v0, v2, v3, v4, v5}, Ljava/net/URI;->quote(Ljava/lang/String;JJ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    if-eqz p8, :cond_0

    const/16 v2, 0x3f

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

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
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/net/URISyntaxException;

    const-string/jumbo v1, "Relative path in absolute URI"

    invoke-direct {v0, p0, v1}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private static compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    if-eqz p0, :cond_2

    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, -0x1

    return v0
.end method

.method private static compareIgnoringCase(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7

    const/4 v5, 0x0

    if-ne p0, p1, :cond_0

    return v5

    :cond_0
    if-eqz p0, :cond_5

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_1

    move v2, v3

    :goto_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_3

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/net/URI;->toLower(C)I

    move-result v5

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/net/URI;->toLower(C)I

    move-result v6

    sub-int v0, v5, v6

    if-eqz v0, :cond_2

    return v0

    :cond_1
    move v2, v4

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    sub-int v5, v3, v4

    return v5

    :cond_4
    const/4 v5, 0x1

    return v5

    :cond_5
    const/4 v5, -0x1

    return v5
.end method

.method public static create(Ljava/lang/String;)Ljava/net/URI;
    .locals 3

    :try_start_0
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static decode(CC)B
    .locals 2

    invoke-static {p0}, Ljava/net/URI;->decode(C)I

    move-result v0

    and-int/lit8 v0, v0, 0xf

    shl-int/lit8 v0, v0, 0x4

    invoke-static {p1}, Ljava/net/URI;->decode(C)I

    move-result v1

    and-int/lit8 v1, v1, 0xf

    shl-int/lit8 v1, v1, 0x0

    or-int/2addr v0, v1

    int-to-byte v0, v0

    return v0
.end method

.method private static decode(C)I
    .locals 1

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    add-int/lit8 v0, p0, -0x30

    return v0

    :cond_0
    const/16 v0, 0x61

    if-lt p0, v0, :cond_1

    const/16 v0, 0x66

    if-gt p0, v0, :cond_1

    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    return v0

    :cond_1
    const/16 v0, 0x41

    if-lt p0, v0, :cond_2

    const/16 v0, 0x46

    if-gt p0, v0, :cond_2

    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    return v0

    :cond_2
    sget-boolean v0, Ljava/net/URI;->-assertionsDisabled:Z

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_3
    const/4 v0, -0x1

    return v0
.end method

.method private static decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 15

    const/16 v14, 0x25

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-nez p0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_1

    return-object p0

    :cond_1
    invoke-virtual {p0, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    if-gez v10, :cond_2

    return-object p0

    :cond_2
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8, v7}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v7}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v3

    const-string/jumbo v10, "UTF-8"

    invoke-static {v10}, Lsun/nio/cs/ThreadLocalCoders;->decoderFor(Ljava/lang/Object;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v10

    sget-object v13, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v10, v13}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v10

    sget-object v13, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v10, v13}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v5

    invoke-virtual {p0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/4 v1, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v7, :cond_7

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

    :cond_4
    const/16 v10, 0x5b

    if-ne v2, v10, :cond_8

    const/4 v1, 0x1

    :cond_5
    :goto_2
    if-ne v2, v14, :cond_6

    if-eqz v1, :cond_a

    :cond_6
    invoke-virtual {v8, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v6, v6, 0x1

    if-lt v6, v7, :cond_9

    :cond_7
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    return-object v10

    :cond_8
    if-eqz v1, :cond_5

    const/16 v10, 0x5d

    if-ne v2, v10, :cond_5

    const/4 v1, 0x0

    goto :goto_2

    :cond_9
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v2

    goto :goto_0

    :cond_a
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move v9, v6

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

    add-int/lit8 v6, v6, 0x1

    if-lt v6, v7, :cond_e

    :goto_4
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {v3}, Ljava/nio/CharBuffer;->clear()Ljava/nio/Buffer;

    invoke-virtual {v5}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v5, v0, v3, v11}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v4

    sget-boolean v10, Ljava/net/URI;->-assertionsDisabled:Z

    if-nez v10, :cond_f

    invoke-virtual {v4}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v10

    if-nez v10, :cond_f

    new-instance v10, Ljava/lang/AssertionError;

    invoke-direct {v10}, Ljava/lang/AssertionError;-><init>()V

    throw v10

    :cond_e
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v14, :cond_b

    goto :goto_4

    :cond_f
    invoke-virtual {v5, v3}, Ljava/nio/charset/CharsetDecoder;->flush(Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v4

    sget-boolean v10, Ljava/net/URI;->-assertionsDisabled:Z

    if-nez v10, :cond_10

    invoke-virtual {v4}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v10

    if-nez v10, :cond_10

    new-instance v10, Ljava/lang/AssertionError;

    invoke-direct {v10}, Ljava/lang/AssertionError;-><init>()V

    throw v10

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

    const/4 v2, 0x0

    iget-object v0, p0, Ljava/net/URI;->schemeSpecificPart:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Ljava/net/URI;->host:Ljava/lang/String;

    iget v6, p0, Ljava/net/URI;->port:I

    invoke-virtual {p0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v8

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Ljava/net/URI;->appendSchemeSpecificPart(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/net/URI;->schemeSpecificPart:Ljava/lang/String;

    return-void
.end method

.method private defineString()V
    .locals 6

    const/16 v5, 0x3a

    const/4 v2, 0x0

    iget-object v3, p0, Ljava/net/URI;->string:Ljava/lang/String;

    if-eqz v3, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_1
    invoke-virtual {p0}, Ljava/net/URI;->isOpaque()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v2, p0, Ljava/net/URI;->schemeSpecificPart:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    :goto_0
    iget-object v2, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    if-eqz v2, :cond_3

    const/16 v2, 0x23

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v2, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljava/net/URI;->string:Ljava/lang/String;

    return-void

    :cond_4
    iget-object v3, p0, Ljava/net/URI;->host:Ljava/lang/String;

    if-eqz v3, :cond_d

    const-string/jumbo v3, "//"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    if-eqz v3, :cond_5

    iget-object v3, p0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v3, 0x40

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_5
    iget-object v3, p0, Ljava/net/URI;->host:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_6

    iget-object v3, p0, Ljava/net/URI;->host:Ljava/lang/String;

    const-string/jumbo v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    :cond_6
    move v0, v2

    :goto_1
    if-eqz v0, :cond_7

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_7
    iget-object v2, p0, Ljava/net/URI;->host:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz v0, :cond_8

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_8
    iget v2, p0, Ljava/net/URI;->port:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_9

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget v2, p0, Ljava/net/URI;->port:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :cond_9
    :goto_2
    iget-object v2, p0, Ljava/net/URI;->path:Ljava/lang/String;

    if-eqz v2, :cond_a

    iget-object v2, p0, Ljava/net/URI;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_a
    iget-object v2, p0, Ljava/net/URI;->query:Ljava/lang/String;

    if-eqz v2, :cond_2

    const/16 v2, 0x3f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v2, p0, Ljava/net/URI;->query:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

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

    :cond_d
    iget-object v2, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    if-eqz v2, :cond_9

    const-string/jumbo v2, "//"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2
.end method

.method private static encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    const/16 v9, 0x80

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    return-object p0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v9, :cond_3

    sget-object v7, Ljava/text/Normalizer$Form;->NFC:Ljava/text/Normalizer$Form;

    invoke-static {p0, v7}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object v4

    const/4 v1, 0x0

    :try_start_0
    const-string/jumbo v7, "UTF-8"

    invoke-static {v7}, Lsun/nio/cs/ThreadLocalCoders;->encoderFor(Ljava/lang/Object;)Ljava/nio/charset/CharsetEncoder;

    move-result-object v7

    invoke-static {v4}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_2
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    :goto_0
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v7

    and-int/lit16 v0, v7, 0xff

    if-lt v0, v9, :cond_4

    int-to-byte v7, v0

    invoke-static {v5, v7}, Ljava/net/URI;->appendEscape(Ljava/lang/StringBuffer;B)V

    goto :goto_0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    if-lt v2, v3, :cond_1

    return-object p0

    :catch_0
    move-exception v6

    sget-boolean v7, Ljava/net/URI;->-assertionsDisabled:Z

    if-nez v7, :cond_2

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    :cond_4
    int-to-char v7, v0

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_5
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method private static equal(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9

    const/4 v8, 0x1

    const/16 v7, 0x25

    const/4 v6, 0x0

    if-ne p0, p1, :cond_0

    return v8

    :cond_0
    if-eqz p0, :cond_9

    if-eqz p1, :cond_9

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v4, v5, :cond_1

    return v6

    :cond_1
    invoke-virtual {p0, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-gez v4, :cond_2

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    return v4

    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_8

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v0, v7, :cond_4

    if-eq v0, v1, :cond_3

    return v6

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    if-eq v1, v7, :cond_5

    return v6

    :cond_5
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/net/URI;->toLower(C)I

    move-result v4

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/net/URI;->toLower(C)I

    move-result v5

    if-eq v4, v5, :cond_6

    return v6

    :cond_6
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/net/URI;->toLower(C)I

    move-result v4

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/net/URI;->toLower(C)I

    move-result v5

    if-eq v4, v5, :cond_7

    return v6

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_8
    return v8

    :cond_9
    return v6
.end method

.method private static equalIgnoringCase(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-ne p0, p1, :cond_0

    return v5

    :cond_0
    if-eqz p0, :cond_4

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v2, v1, :cond_1

    return v4

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_3

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/net/URI;->toLower(C)I

    move-result v2

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/net/URI;->toLower(C)I

    move-result v3

    if-eq v2, v3, :cond_2

    return v4

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return v5

    :cond_4
    return v4
.end method

.method private static hash(ILjava/lang/String;)I
    .locals 2

    if-nez p1, :cond_0

    return p0

    :cond_0
    mul-int/lit8 v0, p0, 0x7f

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private static hashIgnoringCase(ILjava/lang/String;)I
    .locals 5

    if-nez p1, :cond_0

    return p0

    :cond_0
    move v0, p0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    mul-int/lit8 v3, v0, 0x1f

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/net/URI;->toLower(C)I

    move-result v4

    add-int v0, v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private static highMask(CC)J
    .locals 8

    const/16 v7, 0x7f

    const/16 v6, 0x40

    const-wide/16 v4, 0x0

    invoke-static {p0, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/lit8 v0, v3, -0x40

    invoke-static {p1, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/lit8 v2, v3, -0x40

    move v1, v0

    :goto_0
    if-gt v1, v2, :cond_0

    const-wide/16 v6, 0x1

    shl-long/2addr v6, v1

    or-long/2addr v4, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-wide v4
.end method

.method private static highMask(Ljava/lang/String;)J
    .locals 8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v4, :cond_1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v5, 0x40

    if-lt v0, v5, :cond_0

    const/16 v5, 0x80

    if-ge v0, v5, :cond_0

    add-int/lit8 v5, v0, -0x40

    const-wide/16 v6, 0x1

    shl-long/2addr v6, v5

    or-long/2addr v2, v6

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-wide v2
.end method

.method private static join([C[I)I
    .locals 10

    const/16 v9, 0x2f

    const/4 v8, 0x0

    array-length v2, p1

    array-length v7, p0

    add-int/lit8 v0, v7, -0x1

    const/4 v3, 0x0

    aget-char v7, p0, v3

    if-nez v7, :cond_0

    const/4 v3, 0x1

    aput-char v9, p0, v8

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_6

    aget v5, p1, v1

    const/4 v7, -0x1

    if-ne v5, v7, :cond_1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-ne v3, v5, :cond_3

    move v4, v3

    :goto_2
    if-gt v4, v0, :cond_2

    aget-char v7, p0, v4

    if-eqz v7, :cond_2

    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_2

    :cond_2
    if-gt v4, v0, :cond_8

    add-int/lit8 v3, v4, 0x1

    aput-char v9, p0, v4

    goto :goto_1

    :cond_3
    if-ge v3, v5, :cond_5

    :goto_3
    move v6, v5

    move v4, v3

    if-gt v6, v0, :cond_4

    aget-char v7, p0, v6

    if-eqz v7, :cond_4

    add-int/lit8 v3, v4, 0x1

    add-int/lit8 v5, v6, 0x1

    aget-char v7, p0, v6

    aput-char v7, p0, v4

    goto :goto_3

    :cond_4
    if-gt v6, v0, :cond_7

    add-int/lit8 v3, v4, 0x1

    aput-char v9, p0, v4

    move v5, v6

    goto :goto_1

    :cond_5
    new-instance v7, Ljava/lang/InternalError;

    invoke-direct {v7}, Ljava/lang/InternalError;-><init>()V

    throw v7

    :cond_6
    return v3

    :cond_7
    move v5, v6

    move v3, v4

    goto :goto_1

    :cond_8
    move v3, v4

    goto :goto_1
.end method

.method private static lowMask(CC)J
    .locals 8

    const/16 v7, 0x3f

    const/4 v6, 0x0

    const-wide/16 v4, 0x0

    invoke-static {p0, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {p1, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    move v1, v0

    :goto_0
    if-gt v1, v2, :cond_0

    const-wide/16 v6, 0x1

    shl-long/2addr v6, v1

    or-long/2addr v4, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-wide v4
.end method

.method private static lowMask(Ljava/lang/String;)J
    .locals 8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v4, :cond_1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v5, 0x40

    if-ge v0, v5, :cond_0

    const-wide/16 v6, 0x1

    shl-long/2addr v6, v0

    or-long/2addr v2, v6

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-wide v2
.end method

.method private static match(CJJ)Z
    .locals 9

    const-wide/16 v6, 0x1

    const-wide/16 v4, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return v1

    :cond_0
    const/16 v2, 0x40

    if-ge p0, v2, :cond_2

    shl-long v2, v6, p0

    and-long/2addr v2, p1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    const/16 v2, 0x80

    if-ge p0, v2, :cond_4

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

    :cond_4
    return v1
.end method

.method private static maybeAddLeadingDot([C[I)V
    .locals 6

    const/4 v5, 0x0

    aget-char v3, p0, v5

    if-nez v3, :cond_0

    return-void

    :cond_0
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    aget v3, p1, v0

    if-ltz v3, :cond_3

    :cond_1
    if-ge v0, v1, :cond_2

    if-nez v0, :cond_4

    :cond_2
    return-void

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    aget v2, p1, v0

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

    :cond_5
    array-length v3, p0

    if-ge v2, v3, :cond_6

    aget-char v3, p0, v2

    if-nez v3, :cond_7

    :cond_6
    return-void

    :cond_7
    const/16 v3, 0x2e

    aput-char v3, p0, v5

    const/4 v3, 0x1

    aput-char v5, p0, v3

    aput v5, p1, v5

    return-void
.end method

.method private static needsNormalization(Ljava/lang/String;)I
    .locals 8

    const/16 v7, 0x2e

    const/16 v6, 0x2f

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    const/4 v3, 0x0

    :goto_0
    if-gt v3, v0, :cond_0

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v6, :cond_4

    :cond_0
    const/4 v5, 0x1

    if-le v3, v5, :cond_1

    const/4 v1, 0x0

    :cond_1
    :goto_1
    if-gt v3, v0, :cond_7

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v7, :cond_3

    if-eq v3, v0, :cond_2

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v6, :cond_2

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v7, :cond_3

    add-int/lit8 v5, v3, 0x1

    if-eq v5, v0, :cond_2

    add-int/lit8 v5, v3, 0x2

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v6, :cond_3

    :cond_2
    const/4 v1, 0x0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    move v4, v3

    :goto_2
    if-gt v4, v0, :cond_9

    add-int/lit8 v3, v4, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v6, :cond_6

    move v4, v3

    goto :goto_2

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    add-int/lit8 v3, v3, 0x1

    :cond_6
    if-gt v3, v0, :cond_1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v6, :cond_5

    goto :goto_1

    :cond_7
    if-eqz v1, :cond_8

    const/4 v2, -0x1

    :cond_8
    return v2

    :cond_9
    move v3, v4

    goto :goto_1
.end method

.method private static normalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/net/URI;->normalize(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static normalize(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 6

    const/4 v5, 0x0

    invoke-static {p0}, Ljava/net/URI;->needsNormalization(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    new-array v3, v0, [I

    invoke-static {v1, v3}, Ljava/net/URI;->split([C[I)V

    invoke-static {v1, v3, p1}, Ljava/net/URI;->removeDots([C[IZ)V

    invoke-static {v1, v3}, Ljava/net/URI;->maybeAddLeadingDot([C[I)V

    new-instance v2, Ljava/lang/String;

    invoke-static {v1, v3}, Ljava/net/URI;->join([C[I)I

    move-result v4

    invoke-direct {v2, v1, v5, v4}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-object p0

    :cond_1
    return-object v2
.end method

.method private static normalize(Ljava/net/URI;)Ljava/net/URI;
    .locals 3

    invoke-virtual {p0}, Ljava/net/URI;->isOpaque()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Ljava/net/URI;->path:Ljava/lang/String;

    if-nez v2, :cond_1

    :cond_0
    return-object p0

    :cond_1
    iget-object v2, p0, Ljava/net/URI;->path:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Ljava/net/URI;->path:Ljava/lang/String;

    invoke-static {v2}, Ljava/net/URI;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Ljava/net/URI;->path:Ljava/lang/String;

    if-ne v0, v2, :cond_2

    return-object p0

    :cond_2
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1}, Ljava/net/URI;-><init>()V

    iget-object v2, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    iput-object v2, v1, Ljava/net/URI;->scheme:Ljava/lang/String;

    iget-object v2, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    iput-object v2, v1, Ljava/net/URI;->fragment:Ljava/lang/String;

    iget-object v2, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    iput-object v2, v1, Ljava/net/URI;->authority:Ljava/lang/String;

    iget-object v2, p0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    iput-object v2, v1, Ljava/net/URI;->userInfo:Ljava/lang/String;

    iget-object v2, p0, Ljava/net/URI;->host:Ljava/lang/String;

    iput-object v2, v1, Ljava/net/URI;->host:Ljava/lang/String;

    iget v2, p0, Ljava/net/URI;->port:I

    iput v2, v1, Ljava/net/URI;->port:I

    iput-object v0, v1, Ljava/net/URI;->path:Ljava/lang/String;

    iget-object v2, p0, Ljava/net/URI;->query:Ljava/lang/String;

    iput-object v2, v1, Ljava/net/URI;->query:Ljava/lang/String;

    return-object v1
.end method

.method private static quote(Ljava/lang/String;JJ)Ljava/lang/String;
    .locals 11

    const/4 v10, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    const-wide/16 v6, 0x1

    and-long/2addr v6, p1

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-eqz v5, :cond_2

    const/4 v0, 0x1

    :goto_0
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_8

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v5, 0x80

    if-ge v1, v5, :cond_4

    invoke-static {v1, p1, p2, p3, p4}, Ljava/net/URI;->match(CJJ)Z

    move-result v5

    if-nez v5, :cond_3

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v10, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    int-to-byte v5, v1

    invoke-static {v4, v5}, Ljava/net/URI;->appendEscape(Ljava/lang/StringBuffer;B)V

    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    if-eqz v4, :cond_1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_4
    if-eqz v0, :cond_7

    invoke-static {v1}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-static {v1}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v5

    if-eqz v5, :cond_7

    :cond_5
    if-nez v4, :cond_6

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v10, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_6
    invoke-static {v4, v1}, Ljava/net/URI;->appendEncoded(Ljava/lang/StringBuffer;C)V

    goto :goto_2

    :cond_7
    if-eqz v4, :cond_1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_8
    if-nez v4, :cond_9

    :goto_3
    return-object p0

    :cond_9
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_3
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, -0x1

    iput v2, p0, Ljava/net/URI;->port:I

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    :try_start_0
    new-instance v2, Ljava/net/URI$Parser;

    iget-object v3, p0, Ljava/net/URI;->string:Ljava/lang/String;

    invoke-direct {v2, p0, v3}, Ljava/net/URI$Parser;-><init>(Ljava/net/URI;Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/net/URI$Parser;->parse(Z)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/InvalidObjectException;

    const-string/jumbo v2, "Invalid URI"

    invoke-direct {v1, v2}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v1
.end method

.method private static relativize(Ljava/net/URI;Ljava/net/URI;)Ljava/net/URI;
    .locals 6

    const/16 v5, 0x2f

    invoke-virtual {p1}, Ljava/net/URI;->isOpaque()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Ljava/net/URI;->isOpaque()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    return-object p1

    :cond_1
    iget-object v3, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    iget-object v4, p1, Ljava/net/URI;->scheme:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/net/URI;->equalIgnoringCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    iget-object v4, p1, Ljava/net/URI;->authority:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/net/URI;->equal(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Ljava/net/URI;->path:Ljava/lang/String;

    invoke-static {v3}, Ljava/net/URI;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p1, Ljava/net/URI;->path:Ljava/lang/String;

    invoke-static {v3}, Ljava/net/URI;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    invoke-virtual {v0, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    return-object p1

    :cond_3
    return-object p1

    :cond_4
    new-instance v2, Ljava/net/URI;

    invoke-direct {v2}, Ljava/net/URI;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Ljava/net/URI;->path:Ljava/lang/String;

    iget-object v3, p1, Ljava/net/URI;->query:Ljava/lang/String;

    iput-object v3, v2, Ljava/net/URI;->query:Ljava/lang/String;

    iget-object v3, p1, Ljava/net/URI;->fragment:Ljava/lang/String;

    iput-object v3, v2, Ljava/net/URI;->fragment:Ljava/lang/String;

    return-object v2
.end method

.method private static removeDots([C[IZ)V
    .locals 10

    const/16 v9, 0x2e

    const/4 v8, -0x1

    array-length v4, p1

    array-length v7, p0

    add-int/lit8 v1, v7, -0x1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_1

    const/4 v0, 0x0

    :goto_1
    aget v5, p1, v2

    aget-char v7, p0, v5

    if-ne v7, v9, :cond_5

    if-ne v5, v1, :cond_2

    const/4 v0, 0x1

    :cond_0
    :goto_2
    if-gt v2, v4, :cond_1

    if-nez v0, :cond_6

    :cond_1
    return-void

    :cond_2
    add-int/lit8 v7, v5, 0x1

    aget-char v7, p0, v7

    if-nez v7, :cond_3

    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v7, v5, 0x1

    aget-char v7, p0, v7

    if-ne v7, v9, :cond_5

    add-int/lit8 v7, v5, 0x1

    if-eq v7, v1, :cond_4

    add-int/lit8 v7, v5, 0x2

    aget-char v7, p0, v7

    if-nez v7, :cond_5

    :cond_4
    const/4 v0, 0x2

    goto :goto_2

    :cond_5
    add-int/lit8 v2, v2, 0x1

    if-ge v2, v4, :cond_0

    goto :goto_1

    :cond_6
    const/4 v7, 0x1

    if-ne v0, v7, :cond_8

    aput v8, p1, v2

    :cond_7
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_8
    add-int/lit8 v3, v2, -0x1

    :goto_4
    if-ltz v3, :cond_9

    aget v7, p1, v3

    if-eq v7, v8, :cond_b

    :cond_9
    if-ltz v3, :cond_d

    aget v6, p1, v3

    aget-char v7, p0, v6

    if-ne v7, v9, :cond_a

    add-int/lit8 v7, v6, 0x1

    aget-char v7, p0, v7

    if-eq v7, v9, :cond_c

    :cond_a
    :goto_5
    aput v8, p1, v2

    aput v8, p1, v3

    goto :goto_3

    :cond_b
    add-int/lit8 v3, v3, -0x1

    goto :goto_4

    :cond_c
    add-int/lit8 v7, v6, 0x2

    aget-char v7, p0, v7

    if-eqz v7, :cond_7

    goto :goto_5

    :cond_d
    if-eqz p2, :cond_7

    aput v8, p1, v2

    goto :goto_3
.end method

.method private static resolve(Ljava/net/URI;Ljava/net/URI;)Ljava/net/URI;
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/net/URI;->isOpaque()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Ljava/net/URI;->isOpaque()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    return-object p1

    :cond_1
    iget-object v1, p1, Ljava/net/URI;->scheme:Ljava/lang/String;

    if-nez v1, :cond_3

    iget-object v1, p1, Ljava/net/URI;->authority:Ljava/lang/String;

    if-nez v1, :cond_3

    iget-object v1, p1, Ljava/net/URI;->path:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p1, Ljava/net/URI;->fragment:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p1, Ljava/net/URI;->query:Ljava/lang/String;

    if-nez v1, :cond_3

    iget-object v1, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p1, Ljava/net/URI;->fragment:Ljava/lang/String;

    iget-object v2, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object p0

    :cond_2
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0}, Ljava/net/URI;-><init>()V

    iget-object v1, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    iput-object v1, v0, Ljava/net/URI;->scheme:Ljava/lang/String;

    iget-object v1, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    iput-object v1, v0, Ljava/net/URI;->authority:Ljava/lang/String;

    iget-object v1, p0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    iput-object v1, v0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    iget-object v1, p0, Ljava/net/URI;->host:Ljava/lang/String;

    iput-object v1, v0, Ljava/net/URI;->host:Ljava/lang/String;

    iget v1, p0, Ljava/net/URI;->port:I

    iput v1, v0, Ljava/net/URI;->port:I

    iget-object v1, p0, Ljava/net/URI;->path:Ljava/lang/String;

    iput-object v1, v0, Ljava/net/URI;->path:Ljava/lang/String;

    iget-object v1, p1, Ljava/net/URI;->fragment:Ljava/lang/String;

    iput-object v1, v0, Ljava/net/URI;->fragment:Ljava/lang/String;

    iget-object v1, p0, Ljava/net/URI;->query:Ljava/lang/String;

    iput-object v1, v0, Ljava/net/URI;->query:Ljava/lang/String;

    return-object v0

    :cond_3
    iget-object v1, p1, Ljava/net/URI;->scheme:Ljava/lang/String;

    if-eqz v1, :cond_4

    return-object p1

    :cond_4
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0}, Ljava/net/URI;-><init>()V

    iget-object v1, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    iput-object v1, v0, Ljava/net/URI;->scheme:Ljava/lang/String;

    iget-object v1, p1, Ljava/net/URI;->query:Ljava/lang/String;

    iput-object v1, v0, Ljava/net/URI;->query:Ljava/lang/String;

    iget-object v1, p1, Ljava/net/URI;->fragment:Ljava/lang/String;

    iput-object v1, v0, Ljava/net/URI;->fragment:Ljava/lang/String;

    iget-object v1, p1, Ljava/net/URI;->authority:Ljava/lang/String;

    if-nez v1, :cond_9

    iget-object v1, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    iput-object v1, v0, Ljava/net/URI;->authority:Ljava/lang/String;

    iget-object v1, p0, Ljava/net/URI;->host:Ljava/lang/String;

    iput-object v1, v0, Ljava/net/URI;->host:Ljava/lang/String;

    iget-object v1, p0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    iput-object v1, v0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    iget v1, p0, Ljava/net/URI;->port:I

    iput v1, v0, Ljava/net/URI;->port:I

    iget-object v1, p1, Ljava/net/URI;->path:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, p1, Ljava/net/URI;->path:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_5
    iget-object v1, p0, Ljava/net/URI;->path:Ljava/lang/String;

    iput-object v1, v0, Ljava/net/URI;->path:Ljava/lang/String;

    iget-object v1, p1, Ljava/net/URI;->query:Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v1, p1, Ljava/net/URI;->query:Ljava/lang/String;

    :goto_0
    iput-object v1, v0, Ljava/net/URI;->query:Ljava/lang/String;

    :goto_1
    return-object v0

    :cond_6
    iget-object v1, p0, Ljava/net/URI;->query:Ljava/lang/String;

    goto :goto_0

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

    iget-object v1, p1, Ljava/net/URI;->path:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Ljava/net/URI;->normalize(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Ljava/net/URI;->path:Ljava/lang/String;

    goto :goto_1

    :cond_8
    iget-object v1, p0, Ljava/net/URI;->path:Ljava/lang/String;

    iget-object v2, p1, Ljava/net/URI;->path:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/net/URI;->isAbsolute()Z

    move-result v3

    invoke-static {v1, v2, v3}, Ljava/net/URI;->resolvePath(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Ljava/net/URI;->path:Ljava/lang/String;

    goto :goto_1

    :cond_9
    iget-object v1, p1, Ljava/net/URI;->authority:Ljava/lang/String;

    iput-object v1, v0, Ljava/net/URI;->authority:Ljava/lang/String;

    iget-object v1, p1, Ljava/net/URI;->host:Ljava/lang/String;

    iput-object v1, v0, Ljava/net/URI;->host:Ljava/lang/String;

    iget-object v1, p1, Ljava/net/URI;->userInfo:Ljava/lang/String;

    iput-object v1, v0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    iget-object v1, p1, Ljava/net/URI;->host:Ljava/lang/String;

    iput-object v1, v0, Ljava/net/URI;->host:Ljava/lang/String;

    iget v1, p1, Ljava/net/URI;->port:I

    iput v1, v0, Ljava/net/URI;->port:I

    iget-object v1, p1, Ljava/net/URI;->path:Ljava/lang/String;

    iput-object v1, v0, Ljava/net/URI;->path:Ljava/lang/String;

    goto :goto_1
.end method

.method private static resolvePath(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 7

    const/4 v6, 0x0

    const/16 v5, 0x2f

    invoke-virtual {p0, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const-string/jumbo v3, ""

    if-nez v0, :cond_1

    if-ltz v1, :cond_0

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p0, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :cond_0
    :goto_0
    const/4 v5, 0x1

    invoke-static {v3, v5}, Ljava/net/URI;->normalize(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_1
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v0

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    if-ltz v1, :cond_2

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p0, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private static split([C[I)V
    .locals 8

    const/16 v7, 0x2f

    const/4 v6, 0x0

    array-length v5, p0

    add-int/lit8 v0, v5, -0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    :goto_0
    if-gt v3, v0, :cond_3

    aget-char v5, p0, v3

    if-eq v5, v7, :cond_0

    move v2, v1

    move v4, v3

    :goto_1
    if-gt v4, v0, :cond_5

    add-int/lit8 v1, v2, 0x1

    add-int/lit8 v3, v4, 0x1

    aput v4, p1, v2

    move v4, v3

    :goto_2
    if-gt v4, v0, :cond_7

    add-int/lit8 v3, v4, 0x1

    aget-char v5, p0, v4

    if-eq v5, v7, :cond_1

    move v4, v3

    goto :goto_2

    :cond_0
    aput-char v6, p0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v5, v3, -0x1

    aput-char v6, p0, v5

    move v4, v3

    :goto_3
    if-gt v4, v0, :cond_2

    aget-char v5, p0, v4

    if-eq v5, v7, :cond_4

    :cond_2
    move v3, v4

    :cond_3
    :goto_4
    move v2, v1

    move v4, v3

    goto :goto_1

    :cond_4
    add-int/lit8 v3, v4, 0x1

    aput-char v6, p0, v4

    move v4, v3

    goto :goto_3

    :cond_5
    array-length v5, p1

    if-eq v2, v5, :cond_6

    new-instance v5, Ljava/lang/InternalError;

    invoke-direct {v5}, Ljava/lang/InternalError;-><init>()V

    throw v5

    :cond_6
    return-void

    :cond_7
    move v3, v4

    goto :goto_4
.end method

.method private static toLower(C)I
    .locals 1

    const/16 v0, 0x41

    if-lt p0, v0, :cond_0

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_0

    add-int/lit8 v0, p0, 0x20

    return v0

    :cond_0
    return p0
.end method

.method private toString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

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

    invoke-direct/range {v1 .. v9}, Ljava/net/URI;->appendSchemeSpecificPart(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p9

    invoke-direct {p0, v2, v0}, Ljava/net/URI;->appendFragment(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/net/URI;->defineString()V

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Ljava/net/URI;

    invoke-virtual {p0, p1}, Ljava/net/URI;->compareTo(Ljava/net/URI;)I

    move-result v0

    return v0
.end method

.method public compareTo(Ljava/net/URI;)I
    .locals 3

    iget-object v1, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    iget-object v2, p1, Ljava/net/URI;->scheme:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/net/URI;->compareIgnoringCase(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/net/URI;->isOpaque()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Ljava/net/URI;->isOpaque()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Ljava/net/URI;->schemeSpecificPart:Ljava/lang/String;

    iget-object v2, p1, Ljava/net/URI;->schemeSpecificPart:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/net/URI;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    return v0

    :cond_1
    iget-object v1, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    iget-object v2, p1, Ljava/net/URI;->fragment:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/net/URI;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1

    :cond_2
    const/4 v1, 0x1

    return v1

    :cond_3
    invoke-virtual {p1}, Ljava/net/URI;->isOpaque()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, -0x1

    return v1

    :cond_4
    iget-object v1, p0, Ljava/net/URI;->host:Ljava/lang/String;

    if-eqz v1, :cond_7

    iget-object v1, p1, Ljava/net/URI;->host:Ljava/lang/String;

    if-eqz v1, :cond_7

    iget-object v1, p0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    iget-object v2, p1, Ljava/net/URI;->userInfo:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/net/URI;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_5

    return v0

    :cond_5
    iget-object v1, p0, Ljava/net/URI;->host:Ljava/lang/String;

    iget-object v2, p1, Ljava/net/URI;->host:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/net/URI;->compareIgnoringCase(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_6

    return v0

    :cond_6
    iget v1, p0, Ljava/net/URI;->port:I

    iget v2, p1, Ljava/net/URI;->port:I

    sub-int v0, v1, v2

    if-eqz v0, :cond_8

    return v0

    :cond_7
    iget-object v1, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    iget-object v2, p1, Ljava/net/URI;->authority:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/net/URI;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_8

    return v0

    :cond_8
    iget-object v1, p0, Ljava/net/URI;->path:Ljava/lang/String;

    iget-object v2, p1, Ljava/net/URI;->path:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/net/URI;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_9

    return v0

    :cond_9
    iget-object v1, p0, Ljava/net/URI;->query:Ljava/lang/String;

    iget-object v2, p1, Ljava/net/URI;->query:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/net/URI;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_a

    return v0

    :cond_a
    iget-object v1, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    iget-object v2, p1, Ljava/net/URI;->fragment:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/net/URI;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-ne p1, p0, :cond_0

    return v4

    :cond_0
    instance-of v1, p1, Ljava/net/URI;

    if-nez v1, :cond_1

    return v3

    :cond_1
    move-object v0, p1

    check-cast v0, Ljava/net/URI;

    invoke-virtual {p0}, Ljava/net/URI;->isOpaque()Z

    move-result v1

    invoke-virtual {v0}, Ljava/net/URI;->isOpaque()Z

    move-result v2

    if-eq v1, v2, :cond_2

    return v3

    :cond_2
    iget-object v1, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    iget-object v2, v0, Ljava/net/URI;->scheme:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/net/URI;->equalIgnoringCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    return v3

    :cond_3
    iget-object v1, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    iget-object v2, v0, Ljava/net/URI;->fragment:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/net/URI;->equal(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    return v3

    :cond_4
    invoke-virtual {p0}, Ljava/net/URI;->isOpaque()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Ljava/net/URI;->schemeSpecificPart:Ljava/lang/String;

    iget-object v2, v0, Ljava/net/URI;->schemeSpecificPart:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/net/URI;->equal(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1

    :cond_5
    iget-object v1, p0, Ljava/net/URI;->path:Ljava/lang/String;

    iget-object v2, v0, Ljava/net/URI;->path:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/net/URI;->equal(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    return v3

    :cond_6
    iget-object v1, p0, Ljava/net/URI;->query:Ljava/lang/String;

    iget-object v2, v0, Ljava/net/URI;->query:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/net/URI;->equal(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    return v3

    :cond_7
    iget-object v1, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    iget-object v2, v0, Ljava/net/URI;->authority:Ljava/lang/String;

    if-ne v1, v2, :cond_8

    return v4

    :cond_8
    iget-object v1, p0, Ljava/net/URI;->host:Ljava/lang/String;

    if-eqz v1, :cond_b

    iget-object v1, p0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    iget-object v2, v0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/net/URI;->equal(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    return v3

    :cond_9
    iget-object v1, p0, Ljava/net/URI;->host:Ljava/lang/String;

    iget-object v2, v0, Ljava/net/URI;->host:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/net/URI;->equalIgnoringCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    return v3

    :cond_a
    iget v1, p0, Ljava/net/URI;->port:I

    iget v2, v0, Ljava/net/URI;->port:I

    if-eq v1, v2, :cond_d

    return v3

    :cond_b
    iget-object v1, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    if-eqz v1, :cond_c

    iget-object v1, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    iget-object v2, v0, Ljava/net/URI;->authority:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/net/URI;->equal(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d

    return v3

    :cond_c
    iget-object v1, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    iget-object v2, v0, Ljava/net/URI;->authority:Ljava/lang/String;

    if-eq v1, v2, :cond_d

    return v3

    :cond_d
    return v4
.end method

.method public getAuthority()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/net/URI;->decodedAuthority:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/URI;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/net/URI;->decodedAuthority:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Ljava/net/URI;->decodedAuthority:Ljava/lang/String;

    return-object v0
.end method

.method public getFragment()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/net/URI;->decodedFragment:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/URI;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/net/URI;->decodedFragment:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Ljava/net/URI;->decodedFragment:Ljava/lang/String;

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/net/URI;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/net/URI;->decodedPath:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Ljava/net/URI;->path:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/net/URI;->path:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/URI;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/net/URI;->decodedPath:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Ljava/net/URI;->decodedPath:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    iget v0, p0, Ljava/net/URI;->port:I

    return v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/net/URI;->decodedQuery:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Ljava/net/URI;->query:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/net/URI;->query:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/URI;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/net/URI;->decodedQuery:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Ljava/net/URI;->decodedQuery:Ljava/lang/String;

    return-object v0
.end method

.method public getRawAuthority()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    return-object v0
.end method

.method public getRawFragment()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    return-object v0
.end method

.method public getRawPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/net/URI;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getRawQuery()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/net/URI;->query:Ljava/lang/String;

    return-object v0
.end method

.method public getRawSchemeSpecificPart()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Ljava/net/URI;->defineSchemeSpecificPart()V

    iget-object v0, p0, Ljava/net/URI;->schemeSpecificPart:Ljava/lang/String;

    return-object v0
.end method

.method public getRawUserInfo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getScheme()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    return-object v0
.end method

.method public getSchemeSpecificPart()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/net/URI;->decodedSchemeSpecificPart:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/net/URI;->getRawSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URI;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/net/URI;->decodedSchemeSpecificPart:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Ljava/net/URI;->decodedSchemeSpecificPart:Ljava/lang/String;

    return-object v0
.end method

.method public getUserInfo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/net/URI;->decodedUserInfo:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/URI;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/net/URI;->decodedUserInfo:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Ljava/net/URI;->decodedUserInfo:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v2, 0x0

    iget v1, p0, Ljava/net/URI;->hash:I

    if-eqz v1, :cond_0

    iget v1, p0, Ljava/net/URI;->hash:I

    return v1

    :cond_0
    iget-object v1, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    invoke-static {v2, v1}, Ljava/net/URI;->hashIgnoringCase(ILjava/lang/String;)I

    move-result v0

    iget-object v1, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/net/URI;->hash(ILjava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Ljava/net/URI;->isOpaque()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Ljava/net/URI;->schemeSpecificPart:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/net/URI;->hash(ILjava/lang/String;)I

    move-result v0

    :goto_0
    iput v0, p0, Ljava/net/URI;->hash:I

    return v0

    :cond_1
    iget-object v1, p0, Ljava/net/URI;->path:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/net/URI;->hash(ILjava/lang/String;)I

    move-result v0

    iget-object v1, p0, Ljava/net/URI;->query:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/net/URI;->hash(ILjava/lang/String;)I

    move-result v0

    iget-object v1, p0, Ljava/net/URI;->host:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/net/URI;->hash(ILjava/lang/String;)I

    move-result v0

    iget-object v1, p0, Ljava/net/URI;->host:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/net/URI;->hashIgnoringCase(ILjava/lang/String;)I

    move-result v0

    iget v1, p0, Ljava/net/URI;->port:I

    mul-int/lit16 v1, v1, 0x79d

    add-int/2addr v0, v1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/net/URI;->hash(ILjava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public isAbsolute()Z
    .locals 1

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

    iget-object v0, p0, Ljava/net/URI;->host:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    return-object p0

    :cond_1
    invoke-direct {p0}, Ljava/net/URI;->defineString()V

    new-instance v0, Ljava/net/URI$Parser;

    iget-object v1, p0, Ljava/net/URI;->string:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Ljava/net/URI$Parser;-><init>(Ljava/net/URI;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/URI$Parser;->parse(Z)V

    return-object p0
.end method

.method public relativize(Ljava/net/URI;)Ljava/net/URI;
    .locals 1

    invoke-static {p0, p1}, Ljava/net/URI;->relativize(Ljava/net/URI;Ljava/net/URI;)Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method

.method public resolve(Ljava/lang/String;)Ljava/net/URI;
    .locals 1

    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/net/URI;->resolve(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method

.method public resolve(Ljava/net/URI;)Ljava/net/URI;
    .locals 1

    invoke-static {p0, p1}, Ljava/net/URI;->resolve(Ljava/net/URI;Ljava/net/URI;)Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method

.method public toASCIIString()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Ljava/net/URI;->defineString()V

    iget-object v0, p0, Ljava/net/URI;->string:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/URI;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Ljava/net/URI;->defineString()V

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

    invoke-virtual {p0}, Ljava/net/URI;->isAbsolute()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "URI is not absolute"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Ljava/net/URL;

    invoke-virtual {p0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
