.class public Lcom/android/systemui/tuner/PluginFragment;
.super Landroid/support/v14/preference/PreferenceFragment;
.source "PluginFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/tuner/PluginFragment$1;,
        Lcom/android/systemui/tuner/PluginFragment$PluginPreference;
    }
.end annotation


# instance fields
.field private mPluginPrefs:Lcom/android/systemui/plugins/PluginPrefs;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static synthetic -wrap0(Lcom/android/systemui/tuner/PluginFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/tuner/PluginFragment;->loadPrefs()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v14/preference/PreferenceFragment;-><init>()V

    new-instance v0, Lcom/android/systemui/tuner/PluginFragment$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/tuner/PluginFragment$1;-><init>(Lcom/android/systemui/tuner/PluginFragment;)V

    iput-object v0, p0, Lcom/android/systemui/tuner/PluginFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private loadPrefs()V
    .locals 17

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/tuner/PluginFragment;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/tuner/PluginFragment;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/support/v7/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/support/v7/preference/PreferenceScreen;->setOrderingAsAdded(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/tuner/PluginFragment;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v14

    invoke-virtual {v14}, Landroid/support/v7/preference/PreferenceManager;->getContext()Landroid/content/Context;

    move-result-object v11

    new-instance v14, Lcom/android/systemui/plugins/PluginPrefs;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/tuner/PluginFragment;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-direct {v14, v15}, Lcom/android/systemui/plugins/PluginPrefs;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/systemui/tuner/PluginFragment;->mPluginPrefs:Lcom/android/systemui/plugins/PluginPrefs;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/tuner/PluginFragment;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/tuner/PluginFragment;->mPluginPrefs:Lcom/android/systemui/plugins/PluginPrefs;

    invoke-virtual {v14}, Lcom/android/systemui/plugins/PluginPrefs;->getPluginList()Ljava/util/Set;

    move-result-object v8

    new-instance v9, Landroid/util/ArrayMap;

    invoke-direct {v9}, Landroid/util/ArrayMap;-><init>()V

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/tuner/PluginFragment;->toName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v15, 0x200

    invoke-virtual {v10, v14, v15}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v14, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v14, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v7}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1

    new-instance v14, Landroid/util/ArraySet;

    invoke-direct {v14}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {v9, v7, v14}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v9, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/util/ArraySet;

    invoke-virtual {v14, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/String;

    const-string/jumbo v15, "com.android.systemui.permission.PLUGIN"

    const/16 v16, 0x0

    aput-object v15, v14, v16

    const/16 v15, 0x204

    invoke-virtual {v10, v14, v15}, Landroid/content/pm/PackageManager;->getPackagesHoldingPermissions([Ljava/lang/String;I)Ljava/util/List;

    move-result-object v3

    new-instance v14, Lcom/android/systemui/tuner/-$Lambda$UDFMOt0ssYl7h45SkHFyoARHrq8$2;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v9, v11, v13}, Lcom/android/systemui/tuner/-$Lambda$UDFMOt0ssYl7h45SkHFyoARHrq8$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v3, v14}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/systemui/tuner/PluginFragment;->setPreferenceScreen(Landroid/support/v7/preference/PreferenceScreen;)V

    return-void
.end method

.method private toName(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const/4 v8, 0x1

    const/4 v4, 0x0

    const-string/jumbo v3, "com.android.systemui.action.PLUGIN_"

    const-string/jumbo v5, ""

    invoke-virtual {p1, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    move v3, v4

    :goto_0
    if-ge v3, v6, :cond_1

    aget-object v1, v5, v3

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-eqz v7, :cond_0

    const/16 v7, 0x20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v1, v4, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private toString(Landroid/util/ArraySet;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method synthetic lambda$-com_android_systemui_tuner_PluginFragment_3913(Landroid/util/ArrayMap;Landroid/content/Context;Landroid/support/v7/preference/PreferenceScreen;Landroid/content/pm/PackageInfo;)V
    .locals 3

    iget-object v1, p4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/android/systemui/tuner/PluginFragment$PluginPreference;

    invoke-direct {v0, p2, p4}, Lcom/android/systemui/tuner/PluginFragment$PluginPreference;-><init>(Landroid/content/Context;Landroid/content/pm/PackageInfo;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Plugins: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    invoke-direct {p0, v1}, Lcom/android/systemui/tuner/PluginFragment;->toString(Landroid/util/ArraySet;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p3, v0}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/support/v14/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/tuner/PluginFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/tuner/PluginFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.USER_UNLOCKED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/tuner/PluginFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/tuner/PluginFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/tuner/PluginFragment;->loadPrefs()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/support/v14/preference/PreferenceFragment;->onDestroy()V

    invoke-virtual {p0}, Lcom/android/systemui/tuner/PluginFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/tuner/PluginFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
