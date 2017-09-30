.class public Lcom/android/contacts/common/location/CountryDetector;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/location/CountryDetector$LocationChangedReceiver;,
        Lcom/android/contacts/common/location/CountryDetector$LocaleProvider;
    }
.end annotation


# static fields
.field private static a:Lcom/android/contacts/common/location/CountryDetector;


# instance fields
.field private final b:Landroid/telephony/TelephonyManager;

.field private final c:Landroid/location/LocationManager;

.field private final d:Lcom/android/contacts/common/location/CountryDetector$LocaleProvider;

.field private final e:Ljava/lang/String;

.field private final f:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    const-string v1, "location"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    new-instance v2, Lcom/android/contacts/common/location/CountryDetector$LocaleProvider;

    invoke-direct {v2}, Lcom/android/contacts/common/location/CountryDetector$LocaleProvider;-><init>()V

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/contacts/common/location/CountryDetector;-><init>(Landroid/content/Context;Landroid/telephony/TelephonyManager;Landroid/location/LocationManager;Lcom/android/contacts/common/location/CountryDetector$LocaleProvider;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/telephony/TelephonyManager;Landroid/location/LocationManager;Lcom/android/contacts/common/location/CountryDetector$LocaleProvider;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "US"

    iput-object v0, p0, Lcom/android/contacts/common/location/CountryDetector;->e:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/contacts/common/location/CountryDetector;->b:Landroid/telephony/TelephonyManager;

    iput-object p3, p0, Lcom/android/contacts/common/location/CountryDetector;->c:Landroid/location/LocationManager;

    iput-object p4, p0, Lcom/android/contacts/common/location/CountryDetector;->d:Lcom/android/contacts/common/location/CountryDetector$LocaleProvider;

    iput-object p1, p0, Lcom/android/contacts/common/location/CountryDetector;->f:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/contacts/common/location/CountryDetector;->c:Landroid/location/LocationManager;

    invoke-static {p1, v0}, Lcom/android/contacts/common/location/CountryDetector;->a(Landroid/content/Context;Landroid/location/LocationManager;)V

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/android/contacts/common/location/CountryDetector;
    .locals 3

    const-class v1, Lcom/android/contacts/common/location/CountryDetector;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/contacts/common/location/CountryDetector;->a:Lcom/android/contacts/common/location/CountryDetector;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/contacts/common/location/CountryDetector;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/contacts/common/location/CountryDetector;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/contacts/common/location/CountryDetector;->a:Lcom/android/contacts/common/location/CountryDetector;

    :cond_0
    sget-object v0, Lcom/android/contacts/common/location/CountryDetector;->a:Lcom/android/contacts/common/location/CountryDetector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Landroid/content/Context;Landroid/location/LocationManager;)V
    .locals 6

    invoke-static {p0}, Lcom/android/contacts/common/util/PermissionsUtil;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "CountryDetector"

    const-string v1, "No location permissions, not registering for location updates."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Landroid/location/Geocoder;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/common/location/CountryDetector$LocationChangedReceiver;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x0

    const/high16 v2, 0x8000000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    const-string v1, "passive"

    const-wide/32 v2, 0x2932e00

    const v4, 0x459c4000    # 5000.0f

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method private b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/location/CountryDetector;->b:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private c()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    invoke-static {}, Landroid/location/Geocoder;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/common/location/CountryDetector;->f:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/contacts/common/util/PermissionsUtil;->b(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/android/contacts/common/location/CountryDetector;->f:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "preference_current_country"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/location/CountryDetector;->b:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/location/CountryDetector;->d:Lcom/android/contacts/common/location/CountryDetector$LocaleProvider;

    invoke-virtual {v0}, Lcom/android/contacts/common/location/CountryDetector$LocaleProvider;->a()Ljava/util/Locale;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private f()Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/contacts/common/location/CountryDetector;->b:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/contacts/common/location/CountryDetector;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/contacts/common/location/CountryDetector;->b()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/contacts/common/location/CountryDetector;->c()Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/android/contacts/common/location/CountryDetector;->d()Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/android/contacts/common/location/CountryDetector;->e()Ljava/lang/String;

    move-result-object v0

    :cond_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v0, "US"

    :cond_4
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
