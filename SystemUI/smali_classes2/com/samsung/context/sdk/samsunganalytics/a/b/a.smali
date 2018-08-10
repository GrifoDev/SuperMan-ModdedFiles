.class public Lcom/samsung/context/sdk/samsunganalytics/a/b/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v3, ""

    iput-object v3, p0, Lcom/samsung/context/sdk/samsunganalytics/a/b/a;->a:Ljava/lang/String;

    const-string/jumbo v3, ""

    iput-object v3, p0, Lcom/samsung/context/sdk/samsunganalytics/a/b/a;->b:Ljava/lang/String;

    const-string/jumbo v3, ""

    iput-object v3, p0, Lcom/samsung/context/sdk/samsunganalytics/a/b/a;->c:Ljava/lang/String;

    const-string/jumbo v3, ""

    iput-object v3, p0, Lcom/samsung/context/sdk/samsunganalytics/a/b/a;->d:Ljava/lang/String;

    const-string/jumbo v3, ""

    iput-object v3, p0, Lcom/samsung/context/sdk/samsunganalytics/a/b/a;->e:Ljava/lang/String;

    const-string/jumbo v3, ""

    iput-object v3, p0, Lcom/samsung/context/sdk/samsunganalytics/a/b/a;->f:Ljava/lang/String;

    const-string/jumbo v3, ""

    iput-object v3, p0, Lcom/samsung/context/sdk/samsunganalytics/a/b/a;->g:Ljava/lang/String;

    const-string/jumbo v3, ""

    iput-object v3, p0, Lcom/samsung/context/sdk/samsunganalytics/a/b/a;->h:Ljava/lang/String;

    const-string/jumbo v3, ""

    iput-object v3, p0, Lcom/samsung/context/sdk/samsunganalytics/a/b/a;->i:Ljava/lang/String;

    const-string/jumbo v3, ""

    iput-object v3, p0, Lcom/samsung/context/sdk/samsunganalytics/a/b/a;->j:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v0, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getDisplayCountry()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/context/sdk/samsunganalytics/a/b/a;->a:Ljava/lang/String;

    const-string/jumbo v3, "phone"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/context/sdk/samsunganalytics/a/b/a;->b:Ljava/lang/String;

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v3, p0, Lcom/samsung/context/sdk/samsunganalytics/a/b/a;->c:Ljava/lang/String;

    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    iput-object v3, p0, Lcom/samsung/context/sdk/samsunganalytics/a/b/a;->d:Ljava/lang/String;

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v3, p0, Lcom/samsung/context/sdk/samsunganalytics/a/b/a;->e:Ljava/lang/String;

    sget-object v3, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    iput-object v3, p0, Lcom/samsung/context/sdk/samsunganalytics/a/b/a;->j:Ljava/lang/String;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/context/sdk/samsunganalytics/a/b/a;->i:Ljava/lang/String;

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v3, p0, Lcom/samsung/context/sdk/samsunganalytics/a/b/a;->f:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_1
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v3, v4, :cond_0

    invoke-virtual {v2, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/context/sdk/samsunganalytics/a/b/a;->g:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/context/sdk/samsunganalytics/a/b/a;->h:Ljava/lang/String;

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/samsung/context/sdk/samsunganalytics/a/h/a;->a(Ljava/lang/Class;Ljava/lang/Exception;)V

    goto :goto_1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/b/a;->g:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/b/a;->h:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/b/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/b/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/b/a;->e:Ljava/lang/String;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/b/a;->f:Ljava/lang/String;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/b/a;->i:Ljava/lang/String;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/b/a;->j:Ljava/lang/String;

    return-object v0
.end method
