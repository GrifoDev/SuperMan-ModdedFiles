.class Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment$5;
.super Ljava/lang/Thread;
.source "AssistantPlusFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->fetchData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment$5;->this$0:Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment$5;->this$0:Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;

    iget-object v14, v14, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->context:Landroid/app/Activity;

    invoke-virtual {v14}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    const/16 v15, 0x1000

    invoke-virtual {v14, v15}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_0
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/PackageInfo;

    if-eqz v11, :cond_0

    const/4 v13, 0x0

    iget-object v9, v11, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v9, :cond_1

    const/4 v14, 0x0

    array-length v15, v9

    :goto_1
    if-ge v14, v15, :cond_1

    aget-object v8, v9, v14

    const-string/jumbo v16, "com.samsung.android.app.assistantmenu.permission.ADVERTISE_ASSISTANTMENU"

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_6

    const/4 v13, 0x1

    :cond_1
    if-eqz v13, :cond_0

    iget-object v14, v11, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v15, "com.chrome.deviceextras.samsung"

    invoke-virtual {v14, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_0

    const/4 v14, 0x0

    invoke-static {v14}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v14

    if-eqz v14, :cond_2

    iget-object v14, v11, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v15, "com.android.settings"

    invoke-virtual {v14, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment$5;->this$0:Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;

    iget-object v14, v14, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->packMngr:Landroid/content/pm/PackageManager;

    iget-object v15, v11, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment$5;->this$0:Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;

    iget-object v14, v14, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->packMngr:Landroid/content/pm/PackageManager;

    invoke-virtual {v14, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-interface {v14}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v14, "EAMEditor"

    invoke-static {v14, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v14, v11, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v15, "com.android.contacts"

    invoke-virtual {v14, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment$5;->this$0:Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;

    invoke-static {v14}, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->-get10(Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v14

    if-eqz v14, :cond_4

    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment$5;->this$0:Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;

    iget-object v14, v14, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->packMngr:Landroid/content/pm/PackageManager;

    const-string/jumbo v15, "com.android.phone"

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v10

    const/4 v2, 0x0

    if-eqz v10, :cond_3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment$5;->this$0:Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;

    iget-object v14, v14, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->packMngr:Landroid/content/pm/PackageManager;

    invoke-virtual {v14, v10}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-interface {v14}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_3
    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment$5;->this$0:Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;

    invoke-virtual {v14}, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-static {v14}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v14

    if-nez v14, :cond_4

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    :cond_4
    :goto_2
    :try_start_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment$5;->this$0:Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;

    invoke-static {v14}, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->-get1(Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;)I

    move-result v15

    add-int/lit8 v15, v15, 0x1

    invoke-static {v14, v15}, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->-set0(Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;I)I

    new-instance v4, Landroid/preference/SwitchPreference;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment$5;->this$0:Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;

    iget-object v14, v14, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->context:Landroid/app/Activity;

    invoke-direct {v4, v14}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    iget-object v14, v11, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v14}, Landroid/preference/SwitchPreference;->setKey(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Landroid/preference/SwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment$5;->this$0:Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;

    invoke-static {v14}, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->-get0(Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;)Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment$5;->this$0:Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment$5;->this$0:Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;

    iget-object v15, v15, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->packMngr:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v15}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->-wrap0(Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-virtual {v4, v14}, Landroid/preference/SwitchPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment$5;->this$0:Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;

    invoke-static {v14}, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->-get5(Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;)Landroid/content/SharedPreferences;

    move-result-object v14

    iget-object v15, v11, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/16 v16, 0x1

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    const/4 v14, 0x1

    if-ne v6, v14, :cond_7

    const/4 v14, 0x1

    invoke-virtual {v4, v14}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment$5;->this$0:Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;

    invoke-static {v14}, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->-get2(Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;)I

    move-result v15

    add-int/lit8 v15, v15, 0x1

    invoke-static {v14, v15}, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->-set1(Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;I)I

    sget-object v14, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "[c] increment count:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment$5;->this$0:Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->-get2(Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment$5;->this$0:Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;

    invoke-virtual {v4, v14}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment$5;->this$0:Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;

    invoke-static {v14}, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->-get4(Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;)Landroid/preference/PreferenceScreen;

    move-result-object v14

    invoke-virtual {v14, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment$5;->this$0:Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;

    invoke-static {v14}, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->-get7(Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;)I

    move-result v14

    if-nez v14, :cond_0

    const/4 v14, 0x0

    invoke-virtual {v4, v14}, Landroid/preference/SwitchPreference;->setEnabled(Z)V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v5

    invoke-virtual {v5}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment$5;->this$0:Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;

    invoke-static {v14}, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->-get0(Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;)Ljava/util/ArrayList;

    move-result-object v14

    invoke-static {v14}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment$5;->this$0:Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;

    invoke-static {v14}, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->-wrap1(Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment$5;->this$0:Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;

    invoke-static {v14}, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->-get8(Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;)Landroid/os/Handler;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_6
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_1

    :cond_7
    const/4 v14, 0x0

    :try_start_3
    invoke-virtual {v4, v14}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    sget-object v14, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "[c] decrement count:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment$5;->this$0:Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->-get2(Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    :catch_1
    move-exception v5

    goto/16 :goto_2
.end method
