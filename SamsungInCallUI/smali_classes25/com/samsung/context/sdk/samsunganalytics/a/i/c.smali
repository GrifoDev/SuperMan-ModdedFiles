.class public Lcom/samsung/context/sdk/samsunganalytics/a/i/c;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String; = "SamsungAnalyticsPrefs"

.field public static final b:Ljava/lang/String; = "SASettingPref"

.field public static final c:Ljava/lang/String; = "deviceId"

.field public static final d:Ljava/lang/String; = "auidType"

.field public static final e:Ljava/lang/String; = "AppPrefs"

.field public static final f:Ljava/lang/String; = "status_sent_date"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    const-string v0, "SamsungAnalyticsPrefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method
