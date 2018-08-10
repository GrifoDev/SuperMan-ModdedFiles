.class public Lcom/android/systemui/statusbar/phone/taskbar/utils/SharedPreferencesUtil;
.super Ljava/lang/Object;
.source "SharedPreferencesUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addKeyboardId(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v1, "keyboard_id"

    invoke-static {p0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/utils/SharedPreferencesUtil;->getStringArrayPref(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "keyboard_id"

    invoke-static {p0, v1, v0}, Lcom/android/systemui/statusbar/phone/taskbar/utils/SharedPreferencesUtil;->setStringArrayPref(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method public static checkCompatLaunchCount(Landroid/content/Context;)I
    .locals 1

    const-string/jumbo v0, "compat_count"

    invoke-static {p0, v0}, Lcom/android/systemui/statusbar/phone/taskbar/utils/SharedPreferencesUtil;->getIntCompatCountPref(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static checkKeyboardIdExists(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    const/4 v1, 0x0

    const-string/jumbo v2, "keyboard_id"

    invoke-static {p0, v2}, Lcom/android/systemui/statusbar/phone/taskbar/utils/SharedPreferencesUtil;->getStringArrayPref(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static checkNeedToCheckLabsStatus(Landroid/content/Context;)Z
    .locals 1

    const-string/jumbo v0, "need_to_check_labs"

    invoke-static {p0, v0}, Lcom/android/systemui/statusbar/phone/taskbar/utils/SharedPreferencesUtil;->getBoolNeedToCheckLabsPref(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static getBoolNeedToCheckLabsPref(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    const-string/jumbo v1, "taskbar_prefs"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method private static getIntCompatCountPref(Landroid/content/Context;Ljava/lang/String;)I
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v1, "taskbar_prefs"

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method private static getStringArrayPref(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v9, 0x0

    const-string/jumbo v7, "taskbar_prefs"

    const/4 v8, 0x0

    invoke-virtual {p0, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4, p1, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    if-eqz v3, :cond_0

    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v2, v7, :cond_0

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    return-object v6
.end method

.method private static setBoolNeedToCheckLabsPref(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 4

    const-string/jumbo v2, "taskbar_prefs"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private static setIntCompatCountPref(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 4

    const-string/jumbo v2, "taskbar_prefs"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private static setStringArrayPref(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v4, "taskbar_prefs"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, p1, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :goto_1
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    :cond_1
    const/4 v4, 0x0

    invoke-interface {v1, p1, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1
.end method

.method public static updateCompatLaunchCount(Landroid/content/Context;I)V
    .locals 1

    const-string/jumbo v0, "compat_count"

    invoke-static {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/utils/SharedPreferencesUtil;->setIntCompatCountPref(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public static updateNeedToCheckLabsStatus(Landroid/content/Context;Z)V
    .locals 1

    const-string/jumbo v0, "need_to_check_labs"

    invoke-static {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/utils/SharedPreferencesUtil;->setBoolNeedToCheckLabsPref(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method
