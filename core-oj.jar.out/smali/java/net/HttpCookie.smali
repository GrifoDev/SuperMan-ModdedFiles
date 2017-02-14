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

    invoke-direct {p0, p1}, Ljava/net/HttpCookie;->expiryDate2DeltaSeconds(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Ljava/net/HttpCookie;->RESERVED_NAMES:Ljava/util/Set;

    sget-object v0, Ljava/net/HttpCookie;->RESERVED_NAMES:Ljava/util/Set;

    const-string/jumbo v1, "comment"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Ljava/net/HttpCookie;->RESERVED_NAMES:Ljava/util/Set;

    const-string/jumbo v1, "commenturl"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Ljava/net/HttpCookie;->RESERVED_NAMES:Ljava/util/Set;

    const-string/jumbo v1, "discard"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Ljava/net/HttpCookie;->RESERVED_NAMES:Ljava/util/Set;

    const-string/jumbo v1, "domain"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Ljava/net/HttpCookie;->RESERVED_NAMES:Ljava/util/Set;

    const-string/jumbo v1, "expires"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Ljava/net/HttpCookie;->RESERVED_NAMES:Ljava/util/Set;

    const-string/jumbo v1, "httponly"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Ljava/net/HttpCookie;->RESERVED_NAMES:Ljava/util/Set;

    const-string/jumbo v1, "max-age"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Ljava/net/HttpCookie;->RESERVED_NAMES:Ljava/util/Set;

    const-string/jumbo v1, "path"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Ljava/net/HttpCookie;->RESERVED_NAMES:Ljava/util/Set;

    const-string/jumbo v1, "port"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Ljava/net/HttpCookie;->RESERVED_NAMES:Ljava/util/Set;

    const-string/jumbo v1, "secure"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Ljava/net/HttpCookie;->RESERVED_NAMES:Ljava/util/Set;

    const-string/jumbo v1, "version"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "EEE\',\' dd-MMM-yyyy HH:mm:ss \'GMT\'"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "EEE\',\' dd MMM yyyy HH:mm:ss \'GMT\'"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "EEE MMM dd yyyy HH:mm:ss \'GMT\'Z"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "EEE\',\' dd-MMM-yy HH:mm:ss \'GMT\'"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "EEE\',\' dd MMM yy HH:mm:ss \'GMT\'"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "EEE MMM dd yy HH:mm:ss \'GMT\'Z"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sput-object v0, Ljava/net/HttpCookie;->COOKIE_DATE_FORMATS:[Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Ljava/net/HttpCookie;->assignors:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ljava/net/HttpCookie;->assignors:Ljava/util/Map;

    sget-object v0, Ljava/net/HttpCookie;->assignors:Ljava/util/Map;

    const-string/jumbo v1, "comment"

    new-instance v2, Ljava/net/HttpCookie$1;

    invoke-direct {v2}, Ljava/net/HttpCookie$1;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ljava/net/HttpCookie;->assignors:Ljava/util/Map;

    const-string/jumbo v1, "commenturl"

    new-instance v2, Ljava/net/HttpCookie$2;

    invoke-direct {v2}, Ljava/net/HttpCookie$2;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ljava/net/HttpCookie;->assignors:Ljava/util/Map;

    const-string/jumbo v1, "discard"

    new-instance v2, Ljava/net/HttpCookie$3;

    invoke-direct {v2}, Ljava/net/HttpCookie$3;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ljava/net/HttpCookie;->assignors:Ljava/util/Map;

    const-string/jumbo v1, "domain"

    new-instance v2, Ljava/net/HttpCookie$4;

    invoke-direct {v2}, Ljava/net/HttpCookie$4;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ljava/net/HttpCookie;->assignors:Ljava/util/Map;

    const-string/jumbo v1, "max-age"

    new-instance v2, Ljava/net/HttpCookie$5;

    invoke-direct {v2}, Ljava/net/HttpCookie$5;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ljava/net/HttpCookie;->assignors:Ljava/util/Map;

    const-string/jumbo v1, "path"

    new-instance v2, Ljava/net/HttpCookie$6;

    invoke-direct {v2}, Ljava/net/HttpCookie$6;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ljava/net/HttpCookie;->assignors:Ljava/util/Map;

    const-string/jumbo v1, "port"

    new-instance v2, Ljava/net/HttpCookie$7;

    invoke-direct {v2}, Ljava/net/HttpCookie$7;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ljava/net/HttpCookie;->assignors:Ljava/util/Map;

    const-string/jumbo v1, "secure"

    new-instance v2, Ljava/net/HttpCookie$8;

    invoke-direct {v2}, Ljava/net/HttpCookie$8;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ljava/net/HttpCookie;->assignors:Ljava/util/Map;

    const-string/jumbo v1, "httponly"

    new-instance v2, Ljava/net/HttpCookie$9;

    invoke-direct {v2}, Ljava/net/HttpCookie$9;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ljava/net/HttpCookie;->assignors:Ljava/util/Map;

    const-string/jumbo v1, "version"

    new-instance v2, Ljava/net/HttpCookie$10;

    invoke-direct {v2}, Ljava/net/HttpCookie$10;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ljava/net/HttpCookie;->assignors:Ljava/util/Map;

    const-string/jumbo v1, "expires"

    new-instance v2, Ljava/net/HttpCookie$11;

    invoke-direct {v2}, Ljava/net/HttpCookie$11;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "GMT"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Ljava/net/HttpCookie;->GMT:Ljava/util/TimeZone;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ljava/net/HttpCookie;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Ljava/net/HttpCookie;->maxAge:J

    const/4 v0, 0x1

    iput v0, p0, Ljava/net/HttpCookie;->version:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljava/net/HttpCookie;->whenCreated:J

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

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

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Illegal cookie name"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Ljava/net/HttpCookie;->name:Ljava/lang/String;

    iput-object p2, p0, Ljava/net/HttpCookie;->value:Ljava/lang/String;

    iput-boolean v2, p0, Ljava/net/HttpCookie;->toDiscard:Z

    iput-boolean v2, p0, Ljava/net/HttpCookie;->secure:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Ljava/net/HttpCookie;->whenCreated:J

    const/4 v0, 0x0

    iput-object v0, p0, Ljava/net/HttpCookie;->portlist:Ljava/lang/String;

    iput-object p3, p0, Ljava/net/HttpCookie;->header:Ljava/lang/String;

    return-void
.end method

.method private static assignAttribute(Ljava/net/HttpCookie;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-static {p2}, Ljava/net/HttpCookie;->stripOffSurroundingQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    sget-object v1, Ljava/net/HttpCookie;->assignors:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/HttpCookie$CookieAttributeAssignor;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1, p2}, Ljava/net/HttpCookie$CookieAttributeAssignor;->assign(Ljava/net/HttpCookie;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static domainMatches(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12

    const/4 v11, -0x1

    const/16 v10, 0x2e

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    return v8

    :cond_1
    const-string/jumbo v9, ".local"

    invoke-virtual {v9, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {p0, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p0, v10, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    :cond_2
    if-nez v5, :cond_4

    if-eq v3, v11, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-ne v3, v9, :cond_4

    :cond_3
    return v8

    :cond_4
    invoke-virtual {p1, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ne v4, v11, :cond_5

    if-eqz v5, :cond_5

    return v7

    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    sub-int v6, v9, v2

    if-nez v6, :cond_6

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    return v7

    :cond_6
    if-lez v6, :cond_a

    invoke-virtual {p1, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

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

    :cond_7
    :goto_0
    return v5

    :cond_8
    move v5, v7

    goto :goto_0

    :cond_9
    move v5, v8

    goto :goto_0

    :cond_a
    if-ne v6, v11, :cond_c

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v10, :cond_b

    invoke-virtual {p0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    :cond_b
    return v8

    :cond_c
    return v8
.end method

.method private static equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private expiryDate2DeltaSeconds(Ljava/lang/String;)J
    .locals 14

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Ljava/util/GregorianCalendar;

    sget-object v1, Ljava/net/HttpCookie;->GMT:Ljava/util/TimeZone;

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    const/4 v9, 0x0

    :goto_0
    sget-object v1, Ljava/net/HttpCookie;->COOKIE_DATE_FORMATS:[Ljava/lang/String;

    array-length v1, v1

    if-ge v9, v1, :cond_2

    new-instance v7, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/net/HttpCookie;->COOKIE_DATE_FORMATS:[Ljava/lang/String;

    aget-object v1, v1, v9

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v7, v1, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const/16 v1, 0x7b2

    move v4, v2

    move v5, v2

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    sget-object v1, Ljava/net/HttpCookie;->GMT:Ljava/util/TimeZone;

    invoke-virtual {v7, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    invoke-virtual {v7, v2}, Ljava/text/SimpleDateFormat;->setLenient(Z)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/text/SimpleDateFormat;->set2DigitYearStart(Ljava/util/Date;)V

    :try_start_0
    invoke-virtual {v7, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    sget-object v1, Ljava/net/HttpCookie;->COOKIE_DATE_FORMATS:[Ljava/lang/String;

    aget-object v1, v1, v9

    const-string/jumbo v4, "yyyy"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v10

    rem-int/lit8 v10, v10, 0x64

    const/16 v1, 0x46

    if-ge v10, v1, :cond_1

    add-int/lit16 v10, v10, 0x7d0

    :goto_1
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v10}, Ljava/util/Calendar;->set(II)V

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

    :cond_1
    add-int/lit16 v10, v10, 0x76c

    goto :goto_1

    :catch_0
    move-exception v8

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_2
    const-wide/16 v2, 0x0

    return-wide v2
.end method

.method private static guessCookieVersion(Ljava/lang/String;)I
    .locals 3

    const/4 v2, -0x1

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v1, "expires="

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string/jumbo v1, "version="

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "max-age"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "set-cookie2:"

    invoke-static {p0, v1}, Ljava/net/HttpCookie;->startsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private header()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/net/HttpCookie;->header:Ljava/lang/String;

    return-object v0
.end method

.method private static isFullyQualifiedDomainName(Ljava/lang/String;I)Z
    .locals 4

    const/4 v1, 0x0

    const/16 v2, 0x2e

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v0

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

    const/4 v5, 0x0

    sget-object v3, Ljava/net/HttpCookie;->RESERVED_NAMES:Ljava/util/Set;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return v5

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_3

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x20

    if-lt v0, v3, :cond_1

    const/16 v3, 0x7f

    if-lt v0, v3, :cond_2

    :cond_1
    return v5

    :cond_2
    const-string/jumbo v3, ",;= \t"

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v3, 0x1

    return v3
.end method

.method public static parse(Ljava/lang/String;)Ljava/util/List;
    .locals 1
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

    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/net/HttpCookie;->parse(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/lang/String;Z)Ljava/util/List;
    .locals 8
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

    const/4 v7, 0x0

    invoke-static {p0}, Ljava/net/HttpCookie;->guessCookieVersion(Ljava/lang/String;)I

    move-result v5

    const-string/jumbo v6, "set-cookie2:"

    invoke-static {p0, v6}, Ljava/net/HttpCookie;->startsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string/jumbo v6, "set-cookie2:"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_0
    :goto_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    if-nez v5, :cond_3

    invoke-static {p0, p1}, Ljava/net/HttpCookie;->parseInternal(Ljava/lang/String;Z)Ljava/net/HttpCookie;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/net/HttpCookie;->setVersion(I)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v4

    :cond_2
    const-string/jumbo v6, "set-cookie:"

    invoke-static {p0, v6}, Ljava/net/HttpCookie;->startsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string/jumbo v6, "set-cookie:"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_3
    invoke-static {p0}, Ljava/net/HttpCookie;->splitMultiCookies(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1, p1}, Ljava/net/HttpCookie;->parseInternal(Ljava/lang/String;Z)Ljava/net/HttpCookie;

    move-result-object v0

    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Ljava/net/HttpCookie;->setVersion(I)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private static parseInternal(Ljava/lang/String;Z)Ljava/net/HttpCookie;
    .locals 11

    const/16 v10, 0x3d

    const/4 v9, 0x0

    const/4 v8, -0x1

    const/4 v0, 0x0

    const/4 v4, 0x0

    new-instance v5, Ljava/util/StringTokenizer;

    const-string/jumbo v7, ";"

    invoke-direct {v5, p0, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    const/16 v7, 0x3d

    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-eq v2, v8, :cond_1

    const/4 v7, 0x0

    invoke-virtual {v4, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v7, v2, 0x1

    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    if-eqz p1, :cond_0

    new-instance v0, Ljava/net/HttpCookie;

    invoke-static {v6}, Ljava/net/HttpCookie;->stripOffSurroundingQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v3, v7, p0}, Ljava/net/HttpCookie;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-eq v2, v8, :cond_2

    invoke-virtual {v4, v9, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v7, v2, 0x1

    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    :goto_1
    invoke-static {v0, v3, v6}, Ljava/net/HttpCookie;->assignAttribute(Ljava/net/HttpCookie;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance v0, Ljava/net/HttpCookie;

    invoke-static {v6}, Ljava/net/HttpCookie;->stripOffSurroundingQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v3, v7}, Ljava/net/HttpCookie;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v8, "Invalid cookie name-value pair"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v1

    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v8, "Empty cookie header string"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_2
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    goto :goto_1

    :cond_3
    return-object v0
.end method

.method private static splitMultiCookies(Ljava/lang/String;)Ljava/util/List;
    .locals 6
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

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v5, 0x22

    if-ne v0, v5, :cond_0

    add-int/lit8 v4, v4, 0x1

    :cond_0
    const/16 v5, 0x2c

    if-ne v0, v5, :cond_1

    rem-int/lit8 v5, v4, 0x2

    if-nez v5, :cond_1

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v2, 0x1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method private static startsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    return v2

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    return v2
.end method

.method private static stripOffSurroundingQuote(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/16 v5, 0x27

    const/16 v4, 0x22

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v4, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v4, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v5, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v5, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    return-object p0
.end method

.method private toNetscapeHeaderString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

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

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private toRFC2965HeaderString()Ljava/lang/String;
    .locals 4

    const/16 v3, 0x22

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

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

    invoke-virtual {p0}, Ljava/net/HttpCookie;->getPath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, ";$Path=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/net/HttpCookie;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p0}, Ljava/net/HttpCookie;->getDomain()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, ";$Domain=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/net/HttpCookie;->getDomain()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {p0}, Ljava/net/HttpCookie;->getPortlist()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, ";$Port=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/net/HttpCookie;->getPortlist()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 3

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x0

    if-ne p1, p0, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    instance-of v2, p1, Ljava/net/HttpCookie;

    if-nez v2, :cond_1

    return v1

    :cond_1
    move-object v0, p1

    check-cast v0, Ljava/net/HttpCookie;

    invoke-virtual {p0}, Ljava/net/HttpCookie;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/HttpCookie;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/net/HttpCookie;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Ljava/net/HttpCookie;->getDomain()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/HttpCookie;->getDomain()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/net/HttpCookie;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Ljava/net/HttpCookie;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/HttpCookie;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    :cond_2
    return v1
.end method

.method public getComment()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/net/HttpCookie;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public getCommentURL()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/net/HttpCookie;->commentURL:Ljava/lang/String;

    return-object v0
.end method

.method public getDiscard()Z
    .locals 1

    iget-boolean v0, p0, Ljava/net/HttpCookie;->toDiscard:Z

    return v0
.end method

.method public getDomain()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/net/HttpCookie;->domain:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxAge()J
    .locals 2

    iget-wide v0, p0, Ljava/net/HttpCookie;->maxAge:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/net/HttpCookie;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/net/HttpCookie;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getPortlist()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/net/HttpCookie;->portlist:Ljava/lang/String;

    return-object v0
.end method

.method public getSecure()Z
    .locals 1

    iget-boolean v0, p0, Ljava/net/HttpCookie;->secure:Z

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/net/HttpCookie;->value:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    iget v0, p0, Ljava/net/HttpCookie;->version:I

    return v0
.end method

.method public hasExpired()Z
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-wide v2, p0, Ljava/net/HttpCookie;->maxAge:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    return v7

    :cond_0
    iget-wide v2, p0, Ljava/net/HttpCookie;->maxAge:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    return v6

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Ljava/net/HttpCookie;->whenCreated:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    div-long v0, v2, v4

    iget-wide v2, p0, Ljava/net/HttpCookie;->maxAge:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    return v7

    :cond_2
    return v6
.end method

.method public hashCode()I
    .locals 4

    iget-object v3, p0, Ljava/net/HttpCookie;->name:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v3, p0, Ljava/net/HttpCookie;->domain:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Ljava/net/HttpCookie;->domain:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    iget-object v3, p0, Ljava/net/HttpCookie;->path:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, p0, Ljava/net/HttpCookie;->path:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int v3, v0, v1

    add-int/2addr v3, v2

    return v3

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public isHttpOnly()Z
    .locals 1

    iget-boolean v0, p0, Ljava/net/HttpCookie;->httpOnly:Z

    return v0
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ljava/net/HttpCookie;->comment:Ljava/lang/String;

    return-void
.end method

.method public setCommentURL(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ljava/net/HttpCookie;->commentURL:Ljava/lang/String;

    return-void
.end method

.method public setDiscard(Z)V
    .locals 0

    iput-boolean p1, p0, Ljava/net/HttpCookie;->toDiscard:Z

    return-void
.end method

.method public setDomain(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/net/HttpCookie;->domain:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Ljava/net/HttpCookie;->domain:Ljava/lang/String;

    goto :goto_0
.end method

.method public setHttpOnly(Z)V
    .locals 0

    iput-boolean p1, p0, Ljava/net/HttpCookie;->httpOnly:Z

    return-void
.end method

.method public setMaxAge(J)V
    .locals 1

    iput-wide p1, p0, Ljava/net/HttpCookie;->maxAge:J

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ljava/net/HttpCookie;->path:Ljava/lang/String;

    return-void
.end method

.method public setPortlist(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ljava/net/HttpCookie;->portlist:Ljava/lang/String;

    return-void
.end method

.method public setSecure(Z)V
    .locals 0

    iput-boolean p1, p0, Ljava/net/HttpCookie;->secure:Z

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ljava/net/HttpCookie;->value:Ljava/lang/String;

    return-void
.end method

.method public setVersion(I)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "cookie version should be 0 or 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Ljava/net/HttpCookie;->version:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/net/HttpCookie;->getVersion()I

    move-result v0

    if-lez v0, :cond_0

    invoke-direct {p0}, Ljava/net/HttpCookie;->toRFC2965HeaderString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-direct {p0}, Ljava/net/HttpCookie;->toNetscapeHeaderString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
