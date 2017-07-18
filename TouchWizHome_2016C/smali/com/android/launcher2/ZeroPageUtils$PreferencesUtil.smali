.class public Lcom/android/launcher2/ZeroPageUtils$PreferencesUtil;
.super Ljava/lang/Object;
.source "ZeroPageUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/ZeroPageUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PreferencesUtil"
.end annotation


# static fields
.field private static mZeroClassName:Ljava/lang/String;

.field private static mZeroPackageName:Ljava/lang/String;

.field private static mZeroPageEnable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/launcher2/ZeroPageUtils$PreferencesUtil;->mZeroPackageName:Ljava/lang/String;

    sput-object v0, Lcom/android/launcher2/ZeroPageUtils$PreferencesUtil;->mZeroClassName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSavedHomeZeroPageOnOffState(Landroid/content/Context;Z)Z
    .locals 3

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->isZeropageEnable()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return v1

    :cond_0
    if-eqz p1, :cond_1

    const-string v2, "com.sec.android.app.launcher.prefs"

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "home_briefing_enable"

    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->access$000()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/launcher2/ZeroPageUtils$PreferencesUtil;->mZeroPageEnable:Z

    :cond_1
    sget-boolean v1, Lcom/android/launcher2/ZeroPageUtils$PreferencesUtil;->mZeroPageEnable:Z

    goto :goto_0
.end method

.method public static getSavedHomeZeroPageOnOffState(Z)Z
    .locals 1

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/android/launcher2/ZeroPageUtils$PreferencesUtil;->getSavedHomeZeroPageOnOffState(Landroid/content/Context;Z)Z

    move-result v0

    return v0
.end method

.method public static getZeroPageSettingDialog(Landroid/content/Context;)Z
    .locals 3

    const-string v1, "com.sec.android.app.launcher.prefs"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "zeropage_setting_dialog"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static getsaveZeroPageClassName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    sget-object v1, Lcom/android/launcher2/ZeroPageUtils$PreferencesUtil;->mZeroClassName:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "com.sec.android.app.launcher.prefs"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "home_zeropage_class_name"

    const-string v2, "first"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/launcher2/ZeroPageUtils$PreferencesUtil;->mZeroClassName:Ljava/lang/String;

    :cond_0
    sget-object v1, Lcom/android/launcher2/ZeroPageUtils$PreferencesUtil;->mZeroClassName:Ljava/lang/String;

    return-object v1
.end method

.method public static getsaveZeroPagePackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    sget-object v1, Lcom/android/launcher2/ZeroPageUtils$PreferencesUtil;->mZeroPackageName:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "com.sec.android.app.launcher.prefs"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "home_zeropage_package_name"

    const-string v2, "first"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/launcher2/ZeroPageUtils$PreferencesUtil;->mZeroPackageName:Ljava/lang/String;

    :cond_0
    sget-object v1, Lcom/android/launcher2/ZeroPageUtils$PreferencesUtil;->mZeroPackageName:Ljava/lang/String;

    return-object v1
.end method

.method public static saveHomeZeroPageOnOffState(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/launcher2/ZeroPageUtils$PreferencesUtil;->getSavedHomeZeroPageOnOffState(Z)Z

    move-result v0

    invoke-static {p0, v0}, Lcom/android/launcher2/ZeroPageUtils$PreferencesUtil;->saveHomeZeroPageOnOffState(Landroid/content/Context;Z)V

    return-void
.end method

.method public static saveHomeZeroPageOnOffState(Landroid/content/Context;Z)V
    .locals 6

    const/4 v5, 0x0

    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->isZeropageEnable()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v2, "com.sec.android.app.launcher.prefs"

    invoke-virtual {p0, v2, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "home_briefing_enable"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    sput-boolean p1, Lcom/android/launcher2/ZeroPageUtils$PreferencesUtil;->mZeroPageEnable:Z

    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saveHomeZeroPageOnOffState - mEnabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/launcher2/ZeroPageUtils$PreferencesUtil;->mZeroPageEnable:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3, v5}, Lcom/android/launcher2/Launcher;->updateCaptureFile(IZ)V

    goto :goto_0
.end method

.method public static saveZeroPageClassName(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    const-string v2, "com.sec.android.app.launcher.prefs"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    if-nez p1, :cond_0

    const-string v2, "home_zeropage_class_name"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    sput-object p1, Lcom/android/launcher2/ZeroPageUtils$PreferencesUtil;->mZeroClassName:Ljava/lang/String;

    return-void

    :cond_0
    const-string v2, "home_zeropage_class_name"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method public static saveZeroPagePackageName(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    const-string v2, "com.sec.android.app.launcher.prefs"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "home_zeropage_package_name"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    sput-object p1, Lcom/android/launcher2/ZeroPageUtils$PreferencesUtil;->mZeroPackageName:Ljava/lang/String;

    return-void
.end method

.method public static setZeroPageSettingDialog(Landroid/content/Context;Z)V
    .locals 4

    const-string v2, "com.sec.android.app.launcher.prefs"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "zeropage_setting_dialog"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
