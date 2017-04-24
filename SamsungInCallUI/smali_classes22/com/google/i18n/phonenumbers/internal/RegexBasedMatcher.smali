.class public final Lcom/google/i18n/phonenumbers/internal/RegexBasedMatcher;
.super Ljava/lang/Object;
.source "RegexBasedMatcher.java"

# interfaces
.implements Lcom/google/i18n/phonenumbers/internal/MatcherApi;


# instance fields
.field private final regexCache:Lcom/google/i18n/phonenumbers/RegexCache;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/i18n/phonenumbers/RegexCache;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Lcom/google/i18n/phonenumbers/RegexCache;-><init>(I)V

    iput-object v0, p0, Lcom/google/i18n/phonenumbers/internal/RegexBasedMatcher;->regexCache:Lcom/google/i18n/phonenumbers/RegexCache;

    return-void
.end method

.method public static create()Lcom/google/i18n/phonenumbers/internal/MatcherApi;
    .locals 1

    new-instance v0, Lcom/google/i18n/phonenumbers/internal/RegexBasedMatcher;

    invoke-direct {v0}, Lcom/google/i18n/phonenumbers/internal/RegexBasedMatcher;-><init>()V

    return-object v0
.end method


# virtual methods
.method public matchesNationalNumber(Ljava/lang/String;Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;Z)Z
    .locals 3

    iget-object v1, p0, Lcom/google/i18n/phonenumbers/internal/RegexBasedMatcher;->regexCache:Lcom/google/i18n/phonenumbers/RegexCache;

    invoke-virtual {p2}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->getNationalNumberPattern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/i18n/phonenumbers/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p3, :cond_1

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
