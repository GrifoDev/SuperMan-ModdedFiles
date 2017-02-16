.class public final Ljava/net/HttpCookie;
.super Ljava/lang/Object;
.source "HttpCookie.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/net/HttpCookie$10;,
        Ljava/net/HttpCookie$11;,
        Ljava/net/HttpCookie$1;,
        Ljava/net/HttpCookie$2;,
        Ljava/net/HttpCookie$3;,
        Ljava/net/HttpCookie$4;,
        Ljava/net/HttpCookie$5;,
        Ljava/net/HttpCookie$6;,
        Ljava/net/HttpCookie$7;,
        Ljava/net/HttpCookie$8;,
        Ljava/net/HttpCookie$9;,
        Ljava/net/HttpCookie$CookieAttributeAssignor;
    }
.end annotation


# static fields
.field private static final COOKIE_DATE_FORMATS:[Ljava/lang/String;

.field static final GMT:Ljava/util/TimeZone;

.field private static final MAX_AGE_UNSPECIFIED:J = -0x1L

.field private static final RESERVED_NAMES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SET_COOKIE:Ljava/lang/String; = "set-cookie:"

.field private static final SET_COOKIE2:Ljava/lang/String; = "set-cookie2:"

.field static assignors:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/net/HttpCookie$CookieAttributeAssignor;",
            ">;"
        }
    .end annotation
.end field

.field private static final tspecials:Ljava/lang/String; = ",;= \t"


# instance fields
.field private comment:Ljava/lang/String;

.field private commentURL:Ljava/lang/String;

.field private domain:Ljava/lang/String;

.field public final header:Ljava/lang/String;

.field private httpOnly:Z

.field private maxAge:J

.field private name:Ljava/lang/String;

.field private path:Ljava/lang/String;

.field private portlist:Ljava/lang/String;

.field private secure:Z

.field private toDiscard:Z

.field private value:Ljava/lang/String;

.field private version:I

.field private whenCreated:J


# direct methods
.method static synthetic -wrap0(Ljava/net/HttpCookie;Ljava/lang/String;)J
    .locals 2
    .param p1, "dateString"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Ljava/net/HttpCookie;->expiryDate2DeltaSeconds(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 68
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Ljava/net/HttpCookie;->RESERVED_NAMES:Ljava/util/Set;

    .line 71
    sget-object v0, Ljava/net/HttpCookie;->RESERVED_NAMES:Ljava/util/Set;

    const-string/jumbo v1, "comment"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 72
    sget-object v0, Ljava/net/HttpCookie;->RESERVED_NAMES:Ljava/util/Set;

    const-string/jumbo v1, "commenturl"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 73
    sget-object v0, Ljava/net/HttpCookie;->RESERVED_NAMES:Ljava/util/Set;

    const-string/jumbo v1, "discard"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 74
    sget-object v0, Ljava/net/HttpCookie;->RESERVED_NAMES:Ljava/util/Set;

    const-string/jumbo v1, "domain"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 75
    sget-object v0, Ljava/net/HttpCookie;->RESERVED_NAMES:Ljava/util/Set;

    const-string/jumbo v1, "expires"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 76
    sget-object v0, Ljava/net/HttpCookie;->RESERVED_NAMES:Ljava/util/Set;

    const-string/jumbo v1, "httponly"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 77
    sget-object v0, Ljava/net/HttpCookie;->RESERVED_NAMES:Ljava/util/Set;

    const-string/jumbo v1, "max-age"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 78
    sget-object v0, Ljava/net/HttpCookie;->RESERVED_NAMES:Ljava/util/Set;

    const-string/jumbo v1, "path"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 79
    sget-object v0, Ljava/net/HttpCookie;->RESERVED_NAMES:Ljava/util/Set;

    const-string/jumbo v1, "port"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 80
    sget-object v0, Ljava/net/HttpCookie;->RESERVED_NAMES:Ljava/util/Set;

    const-string/jumbo v1, "secure"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 81
    sget-object v0, Ljava/net/HttpCookie;->RESERVED_NAMES:Ljava/util/Set;

    const-string/jumbo v1, "version"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 135
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    .line 136
    const-string/jumbo v1, "EEE\',\' dd-MMM-yyyy HH:mm:ss \'GMT\'"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 137
    const-string/jumbo v1, "EEE\',\' dd MMM yyyy HH:mm:ss \'GMT\'"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 138
    const-string/jumbo v1, "EEE MMM dd yyyy HH:mm:ss \'GMT\'Z"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 139
    const-string/jumbo v1, "EEE\',\' dd-MMM-yy HH:mm:ss \'GMT\'"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 140
    const-string/jumbo v1, "EEE\',\' dd MMM yy HH:mm:ss \'GMT\'"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 141
    const-string/jumbo v1, "EEE MMM dd yy HH:mm:ss \'GMT\'Z"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 135
    sput-object v0, Ljava/net/HttpCookie;->COOKIE_DATE_FORMATS:[Ljava/lang/String;

    .line 1034
    const/4 v0, 0x0

    sput-object v0, Ljava/net/HttpCookie;->assignors:Ljava/util/Map;

    .line 1036
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ljava/net/HttpCookie;->assignors:Ljava/util/Map;

    .line 1037
    sget-object v0, Ljava/net/HttpCookie;->assignors:Ljava/util/Map;

    const-string/jumbo v1, "comment"

    new-instance v2, Ljava/net/HttpCookie$1;

    invoke-direct {v2}, Ljava/net/HttpCookie$1;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1042
    sget-object v0, Ljava/net/HttpCookie;->assignors:Ljava/util/Map;

    const-string/jumbo v1, "commenturl"

    new-instance v2, Ljava/net/HttpCookie$2;

    invoke-direct {v2}, Ljava/net/HttpCookie$2;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1047
    sget-object v0, Ljava/net/HttpCookie;->assignors:Ljava/util/Map;

    const-string/jumbo v1, "discard"

    new-instance v2, Ljava/net/HttpCookie$3;

    invoke-direct {v2}, Ljava/net/HttpCookie$3;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1052
    sget-object v0, Ljava/net/HttpCookie;->assignors:Ljava/util/Map;

    const-string/jumbo v1, "domain"

    new-instance v2, Ljava/net/HttpCookie$4;

    invoke-direct {v2}, Ljava/net/HttpCookie$4;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1057
    sget-object v0, Ljava/net/HttpCookie;->assignors:Ljava/util/Map;

    const-string/jumbo v1, "max-age"

    new-instance v2, Ljava/net/HttpCookie$5;

    invoke-direct {v2}, Ljava/net/HttpCookie$5;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1067
    sget-object v0, Ljava/net/HttpCookie;->assignors:Ljava/util/Map;

    const-string/jumbo v1, "path"

    new-instance v2, Ljava/net/HttpCookie$6;

    invoke-direct {v2}, Ljava/net/HttpCookie$6;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1072
    sget-object v0, Ljava/net/HttpCookie;->assignors:Ljava/util/Map;

    const-string/jumbo v1, "port"

    new-instance v2, Ljava/net/HttpCookie$7;

    invoke-direct {v2}, Ljava/net/HttpCookie$7;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1077
    sget-object v0, Ljava/net/HttpCookie;->assignors:Ljava/util/Map;

    const-string/jumbo v1, "secure"

    new-instance v2, Ljava/net/HttpCookie$8;

    invoke-direct {v2}, Ljava/net/HttpCookie$8;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1082
    sget-object v0, Ljava/net/HttpCookie;->assignors:Ljava/util/Map;

    const-string/jumbo v1, "httponly"

    new-instance v2, Ljava/net/HttpCookie$9;

    invoke-direct {v2}, Ljava/net/HttpCookie$9;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1087
    sget-object v0, Ljava/net/HttpCookie;->assignors:Ljava/util/Map;

    const-string/jumbo v1, "version"

    new-instance v2, Ljava/net/HttpCookie$10;

    invoke-direct {v2}, Ljava/net/HttpCookie$10;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1097
    sget-object v0, Ljava/net/HttpCookie;->assignors:Ljava/util/Map;

    const-string/jumbo v1, "expires"

    new-instance v2, Ljava/net/HttpCookie$11;

    invoke-direct {v2}, Ljava/net/HttpCookie$11;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1158
    const-string/jumbo v0, "GMT"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Ljava/net/HttpCookie;->GMT:Ljava/util/TimeZone;

    .line 66
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 185
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ljava/net/HttpCookie;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "header"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Ljava/net/HttpCookie;->maxAge:J

    .line 107
    const/4 v0, 0x1

    iput v0, p0, Ljava/net/HttpCookie;->version:I

    .line 121
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljava/net/HttpCookie;->whenCreated:J

    .line 189
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 190
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/net/HttpCookie;->isToken(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x24

    if-ne v0, v1, :cond_1

    .line 191
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Illegal cookie name"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 194
    :cond_1
    iput-object p1, p0, Ljava/net/HttpCookie;->name:Ljava/lang/String;

    .line 195
    iput-object p2, p0, Ljava/net/HttpCookie;->value:Ljava/lang/String;

    .line 196
    iput-boolean v2, p0, Ljava/net/HttpCookie;->toDiscard:Z

    .line 197
    iput-boolean v2, p0, Ljava/net/HttpCookie;->secure:Z

    .line 199
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Ljava/net/HttpCookie;->whenCreated:J

    .line 200
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/net/HttpCookie;->portlist:Ljava/lang/String;

    .line 201
    iput-object p3, p0, Ljava/net/HttpCookie;->header:Ljava/lang/String;

    .line 188
    return-void
.end method

.method private static assignAttribute(Ljava/net/HttpCookie;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "cookie"    # Ljava/net/HttpCookie;
    .param p1, "attrName"    # Ljava/lang/String;
    .param p2, "attrValue"    # Ljava/lang/String;

    .prologue
    .line 1110
    invoke-static {p2}, Ljava/net/HttpCookie;->stripOffSurroundingQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1112
    sget-object v1, Ljava/net/HttpCookie;->assignors:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/HttpCookie$CookieAttributeAssignor;

    .line 1113
    .local v0, "assignor":Ljava/net/HttpCookie$CookieAttributeAssignor;
    if-eqz v0, :cond_0

    .line 1114
    invoke-interface {v0, p0, p1, p2}, Ljava/net/HttpCookie$CookieAttributeAssignor;->assign(Ljava/net/HttpCookie;Ljava/lang/String;Ljava/lang/String;)V

    .line 1107
    :cond_0
    return-void
.end method

.method public static domainMatches(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12
    .param p0, "domain"    # Ljava/lang/String;
    .param p1, "host"    # Ljava/lang/String;

    .prologue
    const/4 v11, -0x1

    const/16 v10, 0x2e

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 792
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 793
    :cond_0
    return v8

    .line 796
    :cond_1
    const-string/jumbo v9, ".local"

    invoke-virtual {v9, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    .line 797
    .local v5, "isLocalDomain":Z
    invoke-virtual {p0, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 798
    .local v3, "embeddedDotInDomain":I
    if-nez v3, :cond_2

    .line 799
    invoke-virtual {p0, v10, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 800
    :cond_2
    if-nez v5, :cond_4

    .line 801
    if-eq v3, v11, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-ne v3, v9, :cond_4

    .line 802
    :cond_3
    return v8

    .line 805
    :cond_4
    invoke-virtual {p1, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 806
    .local v4, "firstDotInHost":I
    if-ne v4, v11, :cond_5

    if-eqz v5, :cond_5

    .line 807
    return v7

    .line 809
    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 810
    .local v2, "domainLength":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    sub-int v6, v9, v2

    .line 811
    .local v6, "lengthDiff":I
    if-nez v6, :cond_6

    .line 813
    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    return v7

    .line 815
    :cond_6
    if-lez v6, :cond_a

    .line 817
    invoke-virtual {p1, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 818
    .local v1, "H":Ljava/lang/String;
    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 822
    .local v0, "D":Ljava/lang/String;
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9

    const-string/jumbo v8, "."

    invoke-virtual {p0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-static {p0, v7}, Ljava/net/HttpCookie;->isFullyQualifiedDomainName(Ljava/lang/String;I)Z

    move-result v8

    if-nez v8, :cond_8

    .end local v5    # "isLocalDomain":Z
    :cond_7
    :goto_0
    return v5

    .restart local v5    # "isLocalDomain":Z
    :cond_8
    move v5, v7

    goto :goto_0

    :cond_9
    move v5, v8

    goto :goto_0

    .line 826
    .end local v0    # "D":Ljava/lang/String;
    .end local v1    # "H":Ljava/lang/String;
    :cond_a
    if-ne v6, v11, :cond_c

    .line 828
    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v10, :cond_b

    .line 829
    invoke-virtual {p0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    .line 828
    :cond_b
    return v8

    .line 832
    :cond_c
    return v8
.end method

.method private static equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "t"    # Ljava/lang/String;

    .prologue
    .line 1236
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 1237
    :cond_0
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 1238
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 1240
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private expiryDate2DeltaSeconds(Ljava/lang/String;)J
    .locals 14
    .param p1, "dateString"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1168
    new-instance v0, Ljava/util/GregorianCalendar;

    sget-object v1, Ljava/net/HttpCookie;->GMT:Ljava/util/TimeZone;

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 1169
    .local v0, "cal":Ljava/util/Calendar;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    sget-object v1, Ljava/net/HttpCookie;->COOKIE_DATE_FORMATS:[Ljava/lang/String;

    array-length v1, v1

    if-ge v9, v1, :cond_2

    .line 1170
    new-instance v7, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/net/HttpCookie;->COOKIE_DATE_FORMATS:[Ljava/lang/String;

    aget-object v1, v1, v9

    .line 1171
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 1170
    invoke-direct {v7, v1, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1172
    .local v7, "df":Ljava/text/SimpleDateFormat;
    const/16 v1, 0x7b2

    move v4, v2

    move v5, v2

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 1173
    sget-object v1, Ljava/net/HttpCookie;->GMT:Ljava/util/TimeZone;

    invoke-virtual {v7, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1174
    invoke-virtual {v7, v2}, Ljava/text/SimpleDateFormat;->setLenient(Z)V

    .line 1175
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/text/SimpleDateFormat;->set2DigitYearStart(Ljava/util/Date;)V

    .line 1177
    :try_start_0
    invoke-virtual {v7, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1178
    sget-object v1, Ljava/net/HttpCookie;->COOKIE_DATE_FORMATS:[Ljava/lang/String;

    aget-object v1, v1, v9

    const-string/jumbo v4, "yyyy"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1181
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v10

    .line 1182
    .local v10, "year":I
    rem-int/lit8 v10, v10, 0x64

    .line 1183
    const/16 v1, 0x46

    if-ge v10, v1, :cond_1

    .line 1184
    add-int/lit16 v10, v10, 0x7d0

    .line 1188
    :goto_1
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v10}, Ljava/util/Calendar;->set(II)V

    .line 1190
    .end local v10    # "year":I
    :cond_0
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    iget-wide v12, p0, Ljava/net/HttpCookie;->whenCreated:J

    sub-long/2addr v4, v12

    const-wide/16 v12, 0x3e8

    div-long v2, v4, v12
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v2

    .line 1186
    .restart local v10    # "year":I
    :cond_1
    add-int/lit16 v10, v10, 0x76c

    goto :goto_1

    .line 1191
    .end local v10    # "year":I
    :catch_0
    move-exception v8

    .line 1169
    .local v8, "e":Ljava/lang/Exception;
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1195
    .end local v7    # "df":Ljava/text/SimpleDateFormat;
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_2
    const-wide/16 v2, 0x0

    return-wide v2
.end method

.method private static guessCookieVersion(Ljava/lang/String;)I
    .locals 3
    .param p0, "header"    # Ljava/lang/String;

    .prologue
    const/4 v2, -0x1

    .line 1203
    const/4 v0, 0x0

    .line 1205
    .local v0, "version":I
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 1206
    const-string/jumbo v1, "expires="

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_1

    .line 1208
    const/4 v0, 0x0

    .line 1220
    :cond_0
    :goto_0
    return v0

    .line 1209
    :cond_1
    const-string/jumbo v1, "version="

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_2

    .line 1211
    const/4 v0, 0x1

    goto :goto_0

    .line 1212
    :cond_2
    const-string/jumbo v1, "max-age"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_3

    .line 1214
    const/4 v0, 0x1

    goto :goto_0

    .line 1215
    :cond_3
    const-string/jumbo v1, "set-cookie2:"

    invoke-static {p0, v1}, Ljava/net/HttpCookie;->startsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1217
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private header()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1125
    iget-object v0, p0, Ljava/net/HttpCookie;->header:Ljava/lang/String;

    return-object v0
.end method

.method private static isFullyQualifiedDomainName(Ljava/lang/String;I)Z
    .locals 4
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "firstCharacter"    # I

    .prologue
    const/4 v1, 0x0

    .line 837
    const/16 v2, 0x2e

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 838
    .local v0, "dotPosition":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private static isToken(Ljava/lang/String;)Z
    .locals 6
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 948
    sget-object v3, Ljava/net/HttpCookie;->RESERVED_NAMES:Ljava/util/Set;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 949
    return v5

    .line 953
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 955
    .local v2, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_3

    .line 956
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 958
    .local v0, "c":C
    const/16 v3, 0x20

    if-lt v0, v3, :cond_1

    const/16 v3, 0x7f

    if-lt v0, v3, :cond_2

    .line 959
    :cond_1
    return v5

    .line 958
    :cond_2
    const-string/jumbo v3, ",;= \t"

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 955
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 961
    .end local v0    # "c":C
    :cond_3
    const/4 v3, 0x1

    return v3
.end method

.method public static parse(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p0, "header"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/net/HttpCookie;",
            ">;"
        }
    .end annotation

    .prologue
    .line 223
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/net/HttpCookie;->parse(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/lang/String;Z)Ljava/util/List;
    .locals 8
    .param p0, "header"    # Ljava/lang/String;
    .param p1, "retainHeader"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Ljava/net/HttpCookie;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 234
    invoke-static {p0}, Ljava/net/HttpCookie;->guessCookieVersion(Ljava/lang/String;)I

    move-result v5

    .line 237
    .local v5, "version":I
    const-string/jumbo v6, "set-cookie2:"

    invoke-static {p0, v6}, Ljava/net/HttpCookie;->startsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 238
    const-string/jumbo v6, "set-cookie2:"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 244
    :cond_0
    :goto_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 248
    .local v4, "cookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    if-nez v5, :cond_3

    .line 250
    invoke-static {p0, p1}, Ljava/net/HttpCookie;->parseInternal(Ljava/lang/String;Z)Ljava/net/HttpCookie;

    move-result-object v0

    .line 251
    .local v0, "cookie":Ljava/net/HttpCookie;
    invoke-virtual {v0, v7}, Ljava/net/HttpCookie;->setVersion(I)V

    .line 252
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 265
    .end local v0    # "cookie":Ljava/net/HttpCookie;
    :cond_1
    return-object v4

    .line 239
    .end local v4    # "cookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    :cond_2
    const-string/jumbo v6, "set-cookie:"

    invoke-static {p0, v6}, Ljava/net/HttpCookie;->startsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 240
    const-string/jumbo v6, "set-cookie:"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 257
    .restart local v4    # "cookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    :cond_3
    invoke-static {p0}, Ljava/net/HttpCookie;->splitMultiCookies(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 258
    .local v3, "cookieStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "cookieStr$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 259
    .local v1, "cookieStr":Ljava/lang/String;
    invoke-static {v1, p1}, Ljava/net/HttpCookie;->parseInternal(Ljava/lang/String;Z)Ljava/net/HttpCookie;

    move-result-object v0

    .line 260
    .restart local v0    # "cookie":Ljava/net/HttpCookie;
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Ljava/net/HttpCookie;->setVersion(I)V

    .line 261
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private static parseInternal(Ljava/lang/String;Z)Ljava/net/HttpCookie;
    .locals 11
    .param p0, "header"    # Ljava/lang/String;
    .param p1, "retainHeader"    # Z

    .prologue
    const/16 v10, 0x3d

    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 978
    const/4 v0, 0x0

    .line 979
    .local v0, "cookie":Ljava/net/HttpCookie;
    const/4 v4, 0x0

    .line 981
    .local v4, "namevaluePair":Ljava/lang/String;
    new-instance v5, Ljava/util/StringTokenizer;

    const-string/jumbo v7, ";"

    invoke-direct {v5, p0, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 986
    .local v5, "tokenizer":Ljava/util/StringTokenizer;
    :try_start_0
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    .line 987
    .local v4, "namevaluePair":Ljava/lang/String;
    const/16 v7, 0x3d

    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 988
    .local v2, "index":I
    if-eq v2, v8, :cond_1

    .line 989
    const/4 v7, 0x0

    invoke-virtual {v4, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 990
    .local v3, "name":Ljava/lang/String;
    add-int/lit8 v7, v2, 0x1

    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 991
    .local v6, "value":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 992
    new-instance v0, Ljava/net/HttpCookie;

    .line 993
    .end local v0    # "cookie":Ljava/net/HttpCookie;
    invoke-static {v6}, Ljava/net/HttpCookie;->stripOffSurroundingQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 992
    invoke-direct {v0, v3, v7, p0}, Ljava/net/HttpCookie;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1007
    .end local v6    # "value":Ljava/lang/String;
    .local v0, "cookie":Ljava/net/HttpCookie;
    :goto_0
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1008
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    .line 1009
    invoke-virtual {v4, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 1011
    if-eq v2, v8, :cond_2

    .line 1012
    invoke-virtual {v4, v9, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 1013
    add-int/lit8 v7, v2, 0x1

    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 1020
    :goto_1
    invoke-static {v0, v3, v6}, Ljava/net/HttpCookie;->assignAttribute(Ljava/net/HttpCookie;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 996
    .local v0, "cookie":Ljava/net/HttpCookie;
    .restart local v6    # "value":Ljava/lang/String;
    :cond_0
    :try_start_1
    new-instance v0, Ljava/net/HttpCookie;

    .line 997
    .end local v0    # "cookie":Ljava/net/HttpCookie;
    invoke-static {v6}, Ljava/net/HttpCookie;->stripOffSurroundingQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 996
    invoke-direct {v0, v3, v7}, Ljava/net/HttpCookie;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v0, "cookie":Ljava/net/HttpCookie;
    goto :goto_0

    .line 1000
    .end local v3    # "name":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/String;
    .local v0, "cookie":Ljava/net/HttpCookie;
    :cond_1
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v8, "Invalid cookie name-value pair"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1002
    .end local v0    # "cookie":Ljava/net/HttpCookie;
    .end local v2    # "index":I
    .end local v4    # "namevaluePair":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1003
    .local v1, "ignored":Ljava/util/NoSuchElementException;
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v8, "Empty cookie header string"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1015
    .end local v1    # "ignored":Ljava/util/NoSuchElementException;
    .local v0, "cookie":Ljava/net/HttpCookie;
    .restart local v2    # "index":I
    .restart local v3    # "name":Ljava/lang/String;
    .restart local v4    # "namevaluePair":Ljava/lang/String;
    :cond_2
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 1016
    const/4 v6, 0x0

    .local v6, "value":Ljava/lang/String;
    goto :goto_1

    .line 1023
    .end local v6    # "value":Ljava/lang/String;
    :cond_3
    return-object v0
.end method

.method private static splitMultiCookies(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p0, "header"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1266
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1267
    .local v1, "cookies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 1270
    .local v4, "quoteCount":I
    const/4 v2, 0x0

    .local v2, "p":I
    const/4 v3, 0x0

    .local v3, "q":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_2

    .line 1271
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1272
    .local v0, "c":C
    const/16 v5, 0x22

    if-ne v0, v5, :cond_0

    add-int/lit8 v4, v4, 0x1

    .line 1273
    :cond_0
    const/16 v5, 0x2c

    if-ne v0, v5, :cond_1

    rem-int/lit8 v5, v4, 0x2

    if-nez v5, :cond_1

    .line 1274
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1275
    add-int/lit8 v3, v2, 0x1

    .line 1270
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1279
    .end local v0    # "c":C
    :cond_2
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1281
    return-object v1
.end method

.method private static startsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "start"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1244
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    return v2

    .line 1246
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_2

    .line 1247
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 1246
    if-eqz v0, :cond_2

    .line 1248
    const/4 v0, 0x1

    return v0

    .line 1251
    :cond_2
    return v2
.end method

.method private static stripOffSurroundingQuote(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x27

    const/16 v4, 0x22

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1224
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_0

    .line 1225
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v4, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v4, :cond_0

    .line 1226
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1228
    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_1

    .line 1229
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v5, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v5, :cond_1

    .line 1230
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1232
    :cond_1
    return-object p0
.end method

.method private toNetscapeHeaderString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1135
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/net/HttpCookie;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/net/HttpCookie;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1137
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private toRFC2965HeaderString()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x22

    .line 1145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1147
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/net/HttpCookie;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/net/HttpCookie;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1148
    invoke-virtual {p0}, Ljava/net/HttpCookie;->getPath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1149
    const-string/jumbo v1, ";$Path=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/net/HttpCookie;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1150
    :cond_0
    invoke-virtual {p0}, Ljava/net/HttpCookie;->getDomain()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1151
    const-string/jumbo v1, ";$Domain=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/net/HttpCookie;->getDomain()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1152
    :cond_1
    invoke-virtual {p0}, Ljava/net/HttpCookie;->getPortlist()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1153
    const-string/jumbo v1, ";$Port=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/net/HttpCookie;->getPortlist()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1155
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 918
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 919
    :catch_0
    move-exception v0

    .line 920
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 872
    if-ne p1, p0, :cond_0

    .line 873
    const/4 v1, 0x1

    return v1

    .line 874
    :cond_0
    instance-of v2, p1, Ljava/net/HttpCookie;

    if-nez v2, :cond_1

    .line 875
    return v1

    :cond_1
    move-object v0, p1

    .line 876
    check-cast v0, Ljava/net/HttpCookie;

    .line 882
    .local v0, "other":Ljava/net/HttpCookie;
    invoke-virtual {p0}, Ljava/net/HttpCookie;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/HttpCookie;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/net/HttpCookie;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 883
    invoke-virtual {p0}, Ljava/net/HttpCookie;->getDomain()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/HttpCookie;->getDomain()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/net/HttpCookie;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 882
    if-eqz v2, :cond_2

    .line 884
    invoke-virtual {p0}, Ljava/net/HttpCookie;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/HttpCookie;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    .line 882
    :cond_2
    return v1
.end method

.method public getComment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Ljava/net/HttpCookie;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public getCommentURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Ljava/net/HttpCookie;->commentURL:Ljava/lang/String;

    return-object v0
.end method

.method public getDiscard()Z
    .locals 1

    .prologue
    .line 393
    iget-boolean v0, p0, Ljava/net/HttpCookie;->toDiscard:Z

    return v0
.end method

.method public getDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 467
    iget-object v0, p0, Ljava/net/HttpCookie;->domain:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxAge()J
    .locals 2

    .prologue
    .line 514
    iget-wide v0, p0, Ljava/net/HttpCookie;->maxAge:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 619
    iget-object v0, p0, Ljava/net/HttpCookie;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 562
    iget-object v0, p0, Ljava/net/HttpCookie;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getPortlist()Ljava/lang/String;
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Ljava/net/HttpCookie;->portlist:Ljava/lang/String;

    return-object v0
.end method

.method public getSecure()Z
    .locals 1

    .prologue
    .line 603
    iget-boolean v0, p0, Ljava/net/HttpCookie;->secure:Z

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 662
    iget-object v0, p0, Ljava/net/HttpCookie;->value:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 685
    iget v0, p0, Ljava/net/HttpCookie;->version:I

    return v0
.end method

.method public hasExpired()Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 281
    iget-wide v2, p0, Ljava/net/HttpCookie;->maxAge:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    return v7

    .line 286
    :cond_0
    iget-wide v2, p0, Ljava/net/HttpCookie;->maxAge:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    return v6

    .line 288
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Ljava/net/HttpCookie;->whenCreated:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    div-long v0, v2, v4

    .line 289
    .local v0, "deltaSecond":J
    iget-wide v2, p0, Ljava/net/HttpCookie;->maxAge:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    .line 290
    return v7

    .line 292
    :cond_2
    return v6
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 903
    iget-object v3, p0, Ljava/net/HttpCookie;->name:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 904
    .local v0, "h1":I
    iget-object v3, p0, Ljava/net/HttpCookie;->domain:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Ljava/net/HttpCookie;->domain:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v1

    .line 905
    .local v1, "h2":I
    :goto_0
    iget-object v3, p0, Ljava/net/HttpCookie;->path:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, p0, Ljava/net/HttpCookie;->path:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v2

    .line 907
    .local v2, "h3":I
    :goto_1
    add-int v3, v0, v1

    add-int/2addr v3, v2

    return v3

    .line 904
    .end local v1    # "h2":I
    .end local v2    # "h3":I
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "h2":I
    goto :goto_0

    .line 905
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public isHttpOnly()Z
    .locals 1

    .prologue
    .line 725
    iget-boolean v0, p0, Ljava/net/HttpCookie;->httpOnly:Z

    return v0
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 0
    .param p1, "purpose"    # Ljava/lang/String;

    .prologue
    .line 310
    iput-object p1, p0, Ljava/net/HttpCookie;->comment:Ljava/lang/String;

    .line 309
    return-void
.end method

.method public setCommentURL(Ljava/lang/String;)V
    .locals 0
    .param p1, "purpose"    # Ljava/lang/String;

    .prologue
    .line 346
    iput-object p1, p0, Ljava/net/HttpCookie;->commentURL:Ljava/lang/String;

    .line 345
    return-void
.end method

.method public setDiscard(Z)V
    .locals 0
    .param p1, "discard"    # Z

    .prologue
    .line 378
    iput-boolean p1, p0, Ljava/net/HttpCookie;->toDiscard:Z

    .line 377
    return-void
.end method

.method public setDomain(Ljava/lang/String;)V
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;

    .prologue
    .line 446
    if-eqz p1, :cond_0

    .line 447
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/net/HttpCookie;->domain:Ljava/lang/String;

    .line 445
    :goto_0
    return-void

    .line 449
    :cond_0
    iput-object p1, p0, Ljava/net/HttpCookie;->domain:Ljava/lang/String;

    goto :goto_0
.end method

.method public setHttpOnly(Z)V
    .locals 0
    .param p1, "httpOnly"    # Z

    .prologue
    .line 739
    iput-boolean p1, p0, Ljava/net/HttpCookie;->httpOnly:Z

    .line 737
    return-void
.end method

.method public setMaxAge(J)V
    .locals 1
    .param p1, "expiry"    # J

    .prologue
    .line 493
    iput-wide p1, p0, Ljava/net/HttpCookie;->maxAge:J

    .line 492
    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 542
    iput-object p1, p0, Ljava/net/HttpCookie;->path:Ljava/lang/String;

    .line 541
    return-void
.end method

.method public setPortlist(Ljava/lang/String;)V
    .locals 0
    .param p1, "ports"    # Ljava/lang/String;

    .prologue
    .line 407
    iput-object p1, p0, Ljava/net/HttpCookie;->portlist:Ljava/lang/String;

    .line 406
    return-void
.end method

.method public setSecure(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 584
    iput-boolean p1, p0, Ljava/net/HttpCookie;->secure:Z

    .line 583
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "newValue"    # Ljava/lang/String;

    .prologue
    .line 645
    iput-object p1, p0, Ljava/net/HttpCookie;->value:Ljava/lang/String;

    .line 644
    return-void
.end method

.method public setVersion(I)V
    .locals 2
    .param p1, "v"    # I

    .prologue
    .line 708
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 709
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "cookie version should be 0 or 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 712
    :cond_0
    iput p1, p0, Ljava/net/HttpCookie;->version:I

    .line 707
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 851
    invoke-virtual {p0}, Ljava/net/HttpCookie;->getVersion()I

    move-result v0

    if-lez v0, :cond_0

    .line 852
    invoke-direct {p0}, Ljava/net/HttpCookie;->toRFC2965HeaderString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 854
    :cond_0
    invoke-direct {p0}, Ljava/net/HttpCookie;->toNetscapeHeaderString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
