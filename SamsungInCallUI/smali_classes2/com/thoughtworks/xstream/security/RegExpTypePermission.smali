.class public Lcom/thoughtworks/xstream/security/RegExpTypePermission;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/thoughtworks/xstream/security/TypePermission;


# instance fields
.field private final patterns:[Ljava/util/regex/Pattern;


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lcom/thoughtworks/xstream/security/RegExpTypePermission;->getPatterns([Ljava/lang/String;)[Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/thoughtworks/xstream/security/RegExpTypePermission;-><init>([Ljava/util/regex/Pattern;)V

    return-void
.end method

.method public constructor <init>([Ljava/util/regex/Pattern;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    const/4 v0, 0x0

    new-array p1, v0, [Ljava/util/regex/Pattern;

    :cond_0
    iput-object p1, p0, Lcom/thoughtworks/xstream/security/RegExpTypePermission;->patterns:[Ljava/util/regex/Pattern;

    return-void
.end method

.method private static getPatterns([Ljava/lang/String;)[Ljava/util/regex/Pattern;
    .locals 3

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    array-length v0, p0

    new-array v1, v0, [Ljava/util/regex/Pattern;

    const/4 v0, 0x0

    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object v2, p0, v0

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public allows(Ljava/lang/Class;)Z
    .locals 4

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/thoughtworks/xstream/security/RegExpTypePermission;->patterns:[Ljava/util/regex/Pattern;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Lcom/thoughtworks/xstream/security/RegExpTypePermission;->patterns:[Ljava/util/regex/Pattern;

    aget-object v3, v3, v0

    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
