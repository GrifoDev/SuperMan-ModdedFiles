.class public final Lcn/com/xy/sms/sdk/net/util/e;
.super Ljava/lang/Object;
.source "Unknown"


# static fields
.field private static final a:Ljava/lang/String; = "-noWait"

.field private static final b:Ljava/lang/String; = "-wait="

.field private static final c:Ljava/lang/String; = "-ids="

.field private static final d:Ljava/lang/String; = "-domain="

.field private static final e:Ljava/lang/String; = "-sql="


# instance fields
.field private f:I

.field private g:Z

.field private h:I

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:[Ljava/lang/String;

.field private l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/com/xy/sms/sdk/net/util/e;->g:Z

    const/4 v0, -0x1

    iput v0, p0, Lcn/com/xy/sms/sdk/net/util/e;->h:I

    iput p1, p0, Lcn/com/xy/sms/sdk/net/util/e;->f:I

    iput-object p2, p0, Lcn/com/xy/sms/sdk/net/util/e;->m:Ljava/lang/String;

    invoke-direct {p0}, Lcn/com/xy/sms/sdk/net/util/e;->d()V

    return-void
.end method

.method private a(I)V
    .locals 0

    iput p1, p0, Lcn/com/xy/sms/sdk/net/util/e;->f:I

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/com/xy/sms/sdk/net/util/e;->i:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcn/com/xy/sms/sdk/net/util/e;->l:Ljava/util/Map;

    return-void
.end method

.method private a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcn/com/xy/sms/sdk/net/util/e;->g:Z

    return-void
.end method

.method private a([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/com/xy/sms/sdk/net/util/e;->k:[Ljava/lang/String;

    return-void
.end method

.method private b(I)V
    .locals 0

    iput p1, p0, Lcn/com/xy/sms/sdk/net/util/e;->h:I

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/com/xy/sms/sdk/net/util/e;->j:Ljava/lang/String;

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/com/xy/sms/sdk/net/util/e;->m:Ljava/lang/String;

    return-void
.end method

.method private d()V
    .locals 9

    const/4 v8, 0x5

    const/4 v7, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcn/com/xy/sms/sdk/net/util/e;->m:Ljava/lang/String;

    const-string/jumbo v2, "\\s(?=-[a-zA-Z]+)"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_7

    aget-object v4, v2, v0

    const-string/jumbo v5, "-noWait"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string/jumbo v5, "-wait="

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string/jumbo v5, "-ids="

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "-domain="

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string/jumbo v5, "-sql="

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p0, Lcn/com/xy/sms/sdk/net/util/e;->l:Ljava/util/Map;

    if-eqz v5, :cond_5

    :goto_1
    const-string/jumbo v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x2

    if-lt v5, v6, :cond_6

    iget-object v5, p0, Lcn/com/xy/sms/sdk/net/util/e;->l:Ljava/util/Map;

    aget-object v6, v4, v1

    aget-object v4, v4, v7

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v4, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcn/com/xy/sms/sdk/net/util/e;->k:[Ljava/lang/String;

    :cond_1
    iput-boolean v7, p0, Lcn/com/xy/sms/sdk/net/util/e;->g:Z

    goto :goto_2

    :cond_2
    const/4 v5, 0x6

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, p0, Lcn/com/xy/sms/sdk/net/util/e;->h:I

    goto :goto_2

    :cond_3
    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcn/com/xy/sms/sdk/net/util/e;->i:Ljava/lang/String;

    goto :goto_2

    :cond_4
    invoke-virtual {v4, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcn/com/xy/sms/sdk/net/util/e;->j:Ljava/lang/String;

    goto :goto_2

    :cond_5
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcn/com/xy/sms/sdk/net/util/e;->l:Ljava/util/Map;

    goto :goto_1

    :cond_6
    iget-object v5, p0, Lcn/com/xy/sms/sdk/net/util/e;->l:Ljava/util/Map;

    aget-object v4, v4, v1

    const-string/jumbo v6, "true"

    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_7
    return-void
.end method

.method private e()Z
    .locals 1

    iget-boolean v0, p0, Lcn/com/xy/sms/sdk/net/util/e;->g:Z

    return v0
.end method

.method private f()I
    .locals 1

    iget v0, p0, Lcn/com/xy/sms/sdk/net/util/e;->h:I

    return v0
.end method

.method private g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/com/xy/sms/sdk/net/util/e;->i:Ljava/lang/String;

    return-object v0
.end method

.method private h()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcn/com/xy/sms/sdk/net/util/e;->l:Ljava/util/Map;

    return-object v0
.end method

.method private i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/com/xy/sms/sdk/net/util/e;->m:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcn/com/xy/sms/sdk/net/util/e;->f:I

    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/com/xy/sms/sdk/net/util/e;->j:Ljava/lang/String;

    return-object v0
.end method

.method public final c()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/com/xy/sms/sdk/net/util/e;->k:[Ljava/lang/String;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    const-string/jumbo v1, "cmd : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/com/xy/sms/sdk/net/util/e;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, "\n targetTo interface:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v0, p0, Lcn/com/xy/sms/sdk/net/util/e;->f:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcn/com/xy/sms/sdk/net/util/e;->f:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, "\n execute right now? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-boolean v1, p0, Lcn/com/xy/sms/sdk/net/util/e;->g:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, "\n just for this ids:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v0, p0, Lcn/com/xy/sms/sdk/net/util/e;->k:[Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/com/xy/sms/sdk/net/util/e;->k:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, "\n reset Wait Date Period to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v0, p0, Lcn/com/xy/sms/sdk/net/util/e;->h:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    iget v0, p0, Lcn/com/xy/sms/sdk/net/util/e;->h:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, "\n reset Domain Url to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v0, p0, Lcn/com/xy/sms/sdk/net/util/e;->i:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcn/com/xy/sms/sdk/net/util/e;->i:Ljava/lang/String;

    :goto_3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, "\n sql:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v0, p0, Lcn/com/xy/sms/sdk/net/util/e;->j:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcn/com/xy/sms/sdk/net/util/e;->j:Ljava/lang/String;

    :goto_4
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\n other cmd:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcn/com/xy/sms/sdk/net/util/e;->l:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, "all"

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "all"

    goto :goto_1

    :cond_2
    const-string/jumbo v0, "no change"

    goto :goto_2

    :cond_3
    const-string/jumbo v0, "no change"

    goto :goto_3

    :cond_4
    const-string/jumbo v0, "nosql to execute"

    goto :goto_4
.end method
