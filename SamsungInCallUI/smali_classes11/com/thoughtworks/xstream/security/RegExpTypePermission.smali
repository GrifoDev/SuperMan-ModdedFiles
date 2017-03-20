.class public Lcom/thoughtworks/xstream/security/RegExpTypePermission;
.super Ljava/lang/Object;
.source "RegExpTypePermission.java"

# interfaces
.implements Lcom/thoughtworks/xstream/security/TypePermission;


# instance fields
.field private final patterns:[Ljava/util/regex/Pattern;


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .locals 1
    .param p1, "patterns"    # [Ljava/lang/String;

    .prologue
    .line 23
    invoke-static {p1}, Lcom/thoughtworks/xstream/security/RegExpTypePermission;->getPatterns([Ljava/lang/String;)[Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/thoughtworks/xstream/security/RegExpTypePermission;-><init>([Ljava/util/regex/Pattern;)V

    .line 24
    return-void
.end method

.method public constructor <init>([Ljava/util/regex/Pattern;)V
    .locals 1
    .param p1, "patterns"    # [Ljava/util/regex/Pattern;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    if-nez p1, :cond_0

    const/4 v0, 0x0

    new-array p1, v0, [Ljava/util/regex/Pattern;

    .end local p1    # "patterns":[Ljava/util/regex/Pattern;
    :cond_0
    iput-object p1, p0, Lcom/thoughtworks/xstream/security/RegExpTypePermission;->patterns:[Ljava/util/regex/Pattern;

    .line 28
    return-void
.end method

.method private static getPatterns([Ljava/lang/String;)[Ljava/util/regex/Pattern;
    .locals 3
    .param p0, "patterns"    # [Ljava/lang/String;

    .prologue
    .line 41
    if-nez p0, :cond_1

    .line 42
    const/4 v0, 0x0

    .line 46
    :cond_0
    return-object v0

    .line 43
    :cond_1
    array-length v2, p0

    new-array v0, v2, [Ljava/util/regex/Pattern;

    .line 44
    .local v0, "array":[Ljava/util/regex/Pattern;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 45
    aget-object v2, p0, v1

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    aput-object v2, v0, v1

    .line 44
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public allows(Ljava/lang/Class;)Z
    .locals 3
    .param p1, "type"    # Ljava/lang/Class;

    .prologue
    .line 31
    if-eqz p1, :cond_1

    .line 32
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 33
    .local v1, "name":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/thoughtworks/xstream/security/RegExpTypePermission;->patterns:[Ljava/util/regex/Pattern;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 34
    iget-object v2, p0, Lcom/thoughtworks/xstream/security/RegExpTypePermission;->patterns:[Ljava/util/regex/Pattern;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 35
    const/4 v2, 0x1

    .line 37
    .end local v0    # "i":I
    .end local v1    # "name":Ljava/lang/String;
    :goto_1
    return v2

    .line 33
    .restart local v0    # "i":I
    .restart local v1    # "name":Ljava/lang/String;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 37
    .end local v0    # "i":I
    .end local v1    # "name":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method
