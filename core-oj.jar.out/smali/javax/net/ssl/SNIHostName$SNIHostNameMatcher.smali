.class final Ljavax/net/ssl/SNIHostName$SNIHostNameMatcher;
.super Ljavax/net/ssl/SNIMatcher;
.source "SNIHostName.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/net/ssl/SNIHostName;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SNIHostNameMatcher"
.end annotation


# instance fields
.field private final pattern:Ljava/util/regex/Pattern;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljavax/net/ssl/SNIMatcher;-><init>(I)V

    const/4 v0, 0x2

    invoke-static {p1, v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Ljavax/net/ssl/SNIHostName$SNIHostNameMatcher;->pattern:Ljava/util/regex/Pattern;

    return-void
.end method


# virtual methods
.method public matches(Ljavax/net/ssl/SNIServerName;)Z
    .locals 5

    const/4 v4, 0x0

    if-nez p1, :cond_0

    new-instance v3, Ljava/lang/NullPointerException;

    const-string/jumbo v4, "The SNIServerName argument cannot be null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    instance-of v3, p1, Ljavax/net/ssl/SNIHostName;

    if-nez v3, :cond_2

    invoke-virtual {p1}, Ljavax/net/ssl/SNIServerName;->getType()I

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "The server name type is not host_name"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    :try_start_0
    new-instance v2, Ljavax/net/ssl/SNIHostName;

    invoke-virtual {p1}, Ljavax/net/ssl/SNIServerName;->getEncoded()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/net/ssl/SNIHostName;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {v2}, Ljavax/net/ssl/SNIHostName;->getAsciiName()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Ljavax/net/ssl/SNIHostName$SNIHostNameMatcher;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    return v3

    :catch_0
    move-exception v1

    return v4

    :cond_2
    move-object v2, p1

    nop

    nop

    goto :goto_0

    :cond_3
    iget-object v3, p0, Ljavax/net/ssl/SNIHostName$SNIHostNameMatcher;->pattern:Ljava/util/regex/Pattern;

    invoke-static {v0}, Ljava/net/IDN;->toUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    return v3
.end method
