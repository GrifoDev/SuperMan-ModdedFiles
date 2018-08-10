.class public Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;
.super Landroid/app/Activity;
.source "SamsungKnoxPrivacyNotice.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice$EulaDownloader;
    }
.end annotation


# static fields
.field private static DEVICE_GDPR:I

.field private static DEVICE_GLOBAL:I

.field private static DEVICE_KOREA:I


# instance fields
.field private final GDPRUrl:Ljava/lang/String;

.field private final GlobalUrl:Ljava/lang/String;

.field private final KEY_DEVICE_TYPE:Ljava/lang/String;

.field private final KEY_DOWNLOAD_LANGUAGE:Ljava/lang/String;

.field private final KEY_LATEST_EULA:Ljava/lang/String;

.field private final KEY_LATEST_VERSION:Ljava/lang/String;

.field private final PPInfoUrl:Ljava/lang/String;

.field private final baseUrl:Ljava/lang/String;

.field private final baseUrl_china:Ljava/lang/String;

.field private final baseUrl_dev:Ljava/lang/String;

.field private final baseUrl_dev_china:Ljava/lang/String;

.field private chkException:Z

.field private contentView1:Landroid/widget/TextView;

.field private contentView2:Landroid/widget/TextView;

.field private context:Landroid/content/Context;

.field private defualtGDPR:Ljava/lang/String;

.field private deviceType:I

.field private final eulaUrl:Ljava/lang/String;

.field private mProgress:Landroid/app/ProgressDialog;

.field private mSharedPref:Landroid/content/SharedPreferences;

.field private saveVersion:Lorg/json/JSONObject;


# direct methods
.method static synthetic -get0()I
    .locals 1

    sget v0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->DEVICE_GDPR:I

    return v0
.end method

.method static synthetic -get1()I
    .locals 1

    sget v0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->DEVICE_GLOBAL:I

    return v0
.end method

.method static synthetic -get2()I
    .locals 1

    sget v0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->DEVICE_KOREA:I

    return v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->deviceType:I

    return v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;)Landroid/content/SharedPreferences;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->mSharedPref:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;)Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->saveVersion:Lorg/json/JSONObject;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->chkException:Z

    return p1
.end method

.method static synthetic -set1(Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->deviceType:I

    return p1
.end method

.method static synthetic -set2(Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->saveVersion:Lorg/json/JSONObject;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;Lorg/json/JSONObject;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->isNeedUpdate(Lorg/json/JSONObject;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->isProductShipBinary()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->setLatestEULA(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->DEVICE_GLOBAL:I

    const/4 v0, 0x1

    sput v0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->DEVICE_KOREA:I

    const/4 v0, 0x2

    sput v0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->DEVICE_GDPR:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-string/jumbo v0, "https://eula.secb2b.com"

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->baseUrl:Ljava/lang/String;

    const-string/jumbo v0, "https://eula.secb2b.com.cn"

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->baseUrl_china:Ljava/lang/String;

    const-string/jumbo v0, "https://eula-dev.secb2b.com"

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->baseUrl_dev:Ljava/lang/String;

    const-string/jumbo v0, "https://eula-dev.secb2b.com.cn"

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->baseUrl_dev_china:Ljava/lang/String;

    const-string/jumbo v0, "/EULA"

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->eulaUrl:Ljava/lang/String;

    const-string/jumbo v0, "/PPInfo"

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->PPInfoUrl:Ljava/lang/String;

    const-string/jumbo v0, "/GDPR"

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->GDPRUrl:Ljava/lang/String;

    const-string/jumbo v0, "/KLMS"

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->GlobalUrl:Ljava/lang/String;

    const-string/jumbo v0, "LATEST_EULA"

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->KEY_LATEST_EULA:Ljava/lang/String;

    const-string/jumbo v0, "DOWNLOAD_LANGUAGE"

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->KEY_DOWNLOAD_LANGUAGE:Ljava/lang/String;

    const-string/jumbo v0, "DEVICE_TYPE"

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->KEY_DEVICE_TYPE:Ljava/lang/String;

    const-string/jumbo v0, "LATEST_VERSION"

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->KEY_LATEST_VERSION:Ljava/lang/String;

    const-string/jumbo v0, "AT, BE, BG, HR, CY, CZ, DK, EE, FI, FR, DE, GR, HU, IE, IT, LV, LT, LU, MT, NL, PL, PT, RO, SK, SI, ES, SE, GB, IS, LI, NO, CH"

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->defualtGDPR:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->mSharedPref:Landroid/content/SharedPreferences;

    iput-object v1, p0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->context:Landroid/content/Context;

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->deviceType:I

    iput-object v1, p0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->saveVersion:Lorg/json/JSONObject;

    iput-object v1, p0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->contentView1:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->contentView2:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->mProgress:Landroid/app/ProgressDialog;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->chkException:Z

    return-void
.end method

.method private checkVersion(Lorg/json/JSONObject;)Z
    .locals 8

    const/4 v7, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    iget-object v4, p0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->mSharedPref:Landroid/content/SharedPreferences;

    const-string/jumbo v5, "LATEST_VERSION"

    const-string/jumbo v6, "{\"KO\" : \"1\",\"GDPR\" : \"1\",\"GLOBAL\" : \"1\"}"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->deviceType:I

    sget v5, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->DEVICE_GLOBAL:I

    if-ne v4, v5, :cond_0

    const-string/jumbo v4, "GLOBAL"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v4, "GLOBAL"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    if-ge v1, v2, :cond_2

    return v7

    :cond_0
    iget v4, p0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->deviceType:I

    sget v5, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->DEVICE_KOREA:I

    if-ne v4, v5, :cond_1

    const-string/jumbo v4, "KO"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v4, "KO"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    if-ge v1, v2, :cond_2

    return v7

    :cond_1
    iget v4, p0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->deviceType:I

    sget v5, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->DEVICE_GDPR:I

    if-ne v4, v5, :cond_2

    const-string/jumbo v4, "GDPR"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v4, "GDPR"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-ge v1, v2, :cond_2

    return v7

    :catch_0
    move-exception v0

    const-string/jumbo v4, "KnoxNotice"

    const-string/jumbo v5, "KnoxNotice Receiver check Update fail"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    const/4 v4, 0x0

    return v4
.end method

.method private convertTitleStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    :try_start_0
    invoke-static {}, Landroid/os/SemSystemProperties;->getCountryIso()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "JP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "Samsung "

    const-string/jumbo v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    :cond_0
    :goto_0
    return-object p1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "KnoxNotice"

    const-string/jumbo v2, "convert Title fail."

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private defaultEula()V
    .locals 6

    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->contentView1:Landroid/widget/TextView;

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->contentView2:Landroid/widget/TextView;

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string/jumbo v3, "KOREA"

    invoke-static {}, Landroid/os/SemSystemProperties;->getCountryCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->contentView1:Landroid/widget/TextView;

    const v4, 0x7f120f25

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->contentView1:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->contentView2:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    return-void

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->defualtGDPR:Ljava/lang/String;

    invoke-static {}, Landroid/os/SemSystemProperties;->getCountryIso()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f120f27

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v2, :cond_1

    const-string/jumbo v0, ""

    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f120f1b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "DD"

    const-string/jumbo v4, "25"

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "MM"

    const-string/jumbo v4, "05"

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "YYYY"

    const-string/jumbo v4, "2018"

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f120f1d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f120f1e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f120f1f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f120f20

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f120f21

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f120f22

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f120f23

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f120f24

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f120f1c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->contentView1:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->contentView2:Landroid/widget/TextView;

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->contentView1:Landroid/widget/TextView;

    const v4, 0x7f120f19

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->contentView2:Landroid/widget/TextView;

    const v4, 0x7f120f1a

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0
.end method

.method private isNeedUpdate(Lorg/json/JSONObject;)Z
    .locals 12

    const/4 v11, -0x1

    const/4 v10, 0x1

    :try_start_0
    const-string/jumbo v7, "GDPR"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    iget-object v7, p0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->mSharedPref:Landroid/content/SharedPreferences;

    const-string/jumbo v8, "DEVICE_TYPE"

    const/4 v9, -0x1

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->deviceType:I

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Landroid/os/SemSystemProperties;->getCountryIso()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v4, 0x0

    iget v7, p0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->deviceType:I

    sget v8, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->DEVICE_GDPR:I

    if-ne v7, v8, :cond_0

    const/4 v4, 0x1

    :cond_0
    iget v7, p0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->deviceType:I

    if-eq v7, v11, :cond_1

    if-eq v4, v2, :cond_2

    :cond_1
    return v10

    :cond_2
    iget v7, p0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->deviceType:I

    if-ne v7, v11, :cond_3

    return v10

    :cond_3
    const-string/jumbo v7, "version"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->checkVersion(Lorg/json/JSONObject;)Z

    move-result v6

    if-eqz v6, :cond_4

    return v10

    :cond_4
    iget-object v7, p0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->mSharedPref:Landroid/content/SharedPreferences;

    const-string/jumbo v8, "DOWNLOAD_LANGUAGE"

    const-string/jumbo v9, ""

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-nez v7, :cond_5

    return v10

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    const/4 v7, 0x0

    return v7
.end method

.method private isPossibleNetwork()Z
    .locals 4

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->context:Landroid/content/Context;

    const-string/jumbo v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v2

    return v2

    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method private isProductShipBinary()Z
    .locals 11

    const/4 v8, 0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const-string/jumbo v9, "android.os.SystemProperties"

    invoke-virtual {v2, v9}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v9, 0x1

    new-array v6, v9, [Ljava/lang/Class;

    const-class v9, Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v9, v6, v10

    const-string/jumbo v9, "get"

    invoke-virtual {v0, v9, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const/4 v9, 0x1

    new-array v7, v9, [Ljava/lang/Object;

    const-string/jumbo v9, "ro.product_ship"

    const/4 v10, 0x0

    aput-object v9, v7, v10

    invoke-virtual {v5, v0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    :cond_0
    :goto_0
    return v8

    :catch_0
    move-exception v3

    const-string/jumbo v9, "KnoxNotice"

    const-string/jumbo v10, "Unknown exception"

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v4

    const-string/jumbo v9, "KnoxNotice"

    const-string/jumbo v10, "IllegalArgumentException"

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method

.method private setLatestEULA(Ljava/lang/String;)V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->contentView1:Landroid/widget/TextView;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->contentView2:Landroid/widget/TextView;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :try_start_0
    const-string/jumbo v2, "<body>"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v3, "<body>"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    const-string/jumbo v3, "</body>"

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "</Br>"

    const-string/jumbo v3, "<br>"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->contentView1:Landroid/widget/TextView;

    const/16 v3, 0x3f

    invoke-static {v0, v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->contentView1:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->contentView2:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v2, "KnoxNotice"

    const-string/jumbo v3, "initEula_GDPR - error parsing html or hrmlString is null"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->defaultEula()V

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public final getEulaFromHtml(Ljava/lang/String;)Ljava/lang/String;
    .locals 14

    const/4 v6, 0x0

    const/4 v11, 0x0

    const/4 v8, 0x0

    :try_start_0
    new-instance v10, Ljava/net/URL;

    invoke-direct {v10, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v12

    move-object v0, v12

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    move-object v11, v0

    const/16 v12, 0x2710

    invoke-virtual {v11, v12}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    const/16 v12, 0x4e20

    invoke-virtual {v11, v12}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-virtual {v11}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v12

    invoke-direct {v7, v12}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v12, 0x1fa0

    new-array v1, v12, [C

    const/4 v2, 0x0

    :goto_0
    const/4 v12, 0x0

    const/16 v13, 0x1fa0

    invoke-virtual {v7, v1, v12, v13}, Ljava/io/InputStreamReader;->read([CII)I

    move-result v2

    const/4 v12, -0x1

    if-eq v2, v12, :cond_2

    const/4 v12, 0x0

    invoke-virtual {v9, v1, v12, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v5

    move-object v6, v7

    :goto_1
    :try_start_2
    const-string/jumbo v12, "KnoxNotice"

    const-string/jumbo v13, "getEulaFromHtml() has SocketTimeoutException."

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Ljava/net/SocketTimeoutException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v11, :cond_0

    invoke-virtual {v11}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_0
    if-eqz v6, :cond_1

    :try_start_3
    invoke-virtual {v6}, Ljava/io/InputStreamReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    :cond_1
    :goto_2
    return-object v8

    :cond_2
    :try_start_4
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v8

    if-eqz v11, :cond_3

    invoke-virtual {v11}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_3
    if-eqz v7, :cond_4

    :try_start_5
    invoke-virtual {v7}, Ljava/io/InputStreamReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :cond_4
    :goto_3
    move-object v6, v7

    goto :goto_2

    :catch_1
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catch_2
    move-exception v4

    :goto_4
    :try_start_6
    const-string/jumbo v12, "KnoxNotice"

    const-string/jumbo v13, "getEulaFromHtml() has Exception."

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v11, :cond_5

    invoke-virtual {v11}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_5
    if-eqz v6, :cond_1

    :try_start_7
    invoke-virtual {v6}, Ljava/io/InputStreamReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_2

    :catch_3
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catch_4
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catchall_0
    move-exception v12

    :goto_5
    if-eqz v11, :cond_6

    invoke-virtual {v11}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_6
    if-eqz v6, :cond_7

    :try_start_8
    invoke-virtual {v6}, Ljava/io/InputStreamReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    :cond_7
    :goto_6
    throw v12

    :catch_5
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    :catchall_1
    move-exception v12

    move-object v6, v7

    goto :goto_5

    :catch_6
    move-exception v5

    goto :goto_1

    :catch_7
    move-exception v4

    move-object v6, v7

    goto :goto_4
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v5, 0x7f0d027b

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->setContentView(I)V

    iput-object p0, p0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->context:Landroid/content/Context;

    iput-boolean v8, p0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->chkException:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f120f27

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->convertTitleStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->setTitle(Ljava/lang/CharSequence;)V

    const v5, 0x7f0a0466

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->contentView1:Landroid/widget/TextView;

    const v5, 0x7f0a0467

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->contentView2:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->context:Landroid/content/Context;

    const-string/jumbo v6, "KnoxNotice"

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->mSharedPref:Landroid/content/SharedPreferences;

    new-instance v5, Landroid/app/ProgressDialog;

    iget-object v6, p0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->context:Landroid/content/Context;

    const v7, 0x7f1300fe

    invoke-direct {v5, v6, v7}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iput-object v5, p0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->mProgress:Landroid/app/ProgressDialog;

    iget-object v5, p0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v5, v8}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v5, p0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v5, v8}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v5, "com.samsung.android.knox.intent.action.UPDATE_NOTICE"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v5, "com.samsung.android.SettingsReceiver"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v5, "com.samsung.android.knox.intent.action.DELETE_NOTIFICATION"

    invoke-virtual {v3, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v5, p0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->context:Landroid/content/Context;

    invoke-virtual {v5, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-direct {p0, v9}, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->setLatestEULA(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->show()V

    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->isPossibleNetwork()Z

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->mSharedPref:Landroid/content/SharedPreferences;

    const-string/jumbo v6, "LATEST_EULA"

    invoke-interface {v5, v6, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v4, :cond_1

    :try_start_0
    new-instance v5, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice$EulaDownloader;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice$EulaDownloader;-><init>(Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;)V

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Void;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice$EulaDownloader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->setLatestEULA(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->setLatestEULA(Ljava/lang/String;)V

    :cond_2
    :try_start_1
    iget-object v5, p0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
