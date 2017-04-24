.class public Lcom/android/settings/applications/DefaultEmergencyPreference;
.super Lcom/android/settings/AppListPreference;
.source "DefaultEmergencyPreference.java"

# interfaces
.implements Lcom/android/settings/SelfAvailablePreference;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/DefaultEmergencyPreference$1;
    }
.end annotation


# static fields
.field public static final QUERY_INTENT:Landroid/content/Intent;


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method static synthetic -get0(Lcom/android/settings/applications/DefaultEmergencyPreference;)Landroid/content/ContentResolver;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/DefaultEmergencyPreference;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/settings/applications/DefaultEmergencyPreference;)Ljava/util/Set;
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/applications/DefaultEmergencyPreference;->resolveAssistPackageAndQueryApps()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.telephony.action.EMERGENCY_ASSISTANCE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/applications/DefaultEmergencyPreference;->QUERY_INTENT:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    invoke-direct {p0, p1, p2}, Lcom/android/settings/AppListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/applications/DefaultEmergencyPreference;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {p0}, Lcom/android/settings/applications/DefaultEmergencyPreference;->resolveAssistPackageAndQueryApps()Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/applications/DefaultEmergencyPreference;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "emergency_assistance_application"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/CharSequence;

    invoke-virtual {p0, v2, v0}, Lcom/android/settings/applications/DefaultEmergencyPreference;->setPackageNames([Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    const v2, 0x7f0b03ae

    invoke-virtual {p0, v2}, Lcom/android/settings/applications/DefaultEmergencyPreference;->setResDescription(I)V

    return-void
.end method

.method public static hasEmergencyPreference(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 4

    const/4 v2, 0x0

    new-instance v0, Landroid/content/Intent;

    sget-object v3, Lcom/android/settings/applications/DefaultEmergencyPreference;->QUERY_INTENT:Landroid/content/Intent;

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private static isCapable(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x112005c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private static isSystemApp(Landroid/content/pm/PackageInfo;)Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private resolveAssistPackageAndQueryApps()Ljava/util/Set;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v12, Landroid/util/ArraySet;

    invoke-direct {v12}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/DefaultEmergencyPreference;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    sget-object v14, Lcom/android/settings/applications/DefaultEmergencyPreference;->QUERY_INTENT:Landroid/content/Intent;

    const/4 v15, 0x0

    invoke-virtual {v10, v14, v15}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v8

    const/4 v2, 0x0

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v13

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v13, :cond_3

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    if-eqz v7, :cond_0

    iget-object v14, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v14, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    iget-object v14, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v14, v14, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v12, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_0

    iget-object v14, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v14, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v12, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v14, 0x0

    :try_start_0
    invoke-virtual {v10, v11, v14}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    invoke-static {v9}, Lcom/android/settings/applications/DefaultEmergencyPreference;->isSystemApp(Landroid/content/pm/PackageInfo;)Z

    move-result v14

    if-eqz v14, :cond_0

    if-eqz v2, :cond_2

    iget-wide v14, v2, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    iget-wide v0, v9, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    move-wide/from16 v16, v0

    cmp-long v14, v14, v16

    if-lez v14, :cond_0

    :cond_2
    move-object v2, v9

    goto :goto_1

    :catch_0
    move-exception v5

    goto :goto_1

    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/applications/DefaultEmergencyPreference;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v15, "emergency_assistance_application"

    invoke-static {v14, v15}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_5

    invoke-interface {v12, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    const/4 v3, 0x0

    :goto_2
    if-eqz v2, :cond_4

    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/applications/DefaultEmergencyPreference;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v15, "emergency_assistance_application"

    iget-object v0, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_4
    return-object v12

    :cond_5
    const/4 v3, 0x1

    goto :goto_2

    :cond_6
    const/4 v3, 0x1

    goto :goto_2
.end method


# virtual methods
.method public isAvailable(Landroid/content/Context;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected persistString(Ljava/lang/String;)Z
    .locals 3

    iget-object v1, p0, Lcom/android/settings/applications/DefaultEmergencyPreference;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "emergency_assistance_application"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/applications/DefaultEmergencyPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/DefaultEmergencyPreference;->setSummary(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    return v1

    :cond_1
    iget-object v1, p0, Lcom/android/settings/applications/DefaultEmergencyPreference;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "emergency_assistance_application"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method
