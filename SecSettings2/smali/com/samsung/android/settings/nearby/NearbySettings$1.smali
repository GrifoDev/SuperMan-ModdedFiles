.class Lcom/samsung/android/settings/nearby/NearbySettings$1;
.super Landroid/content/BroadcastReceiver;
.source "NearbySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/nearby/NearbySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/nearby/NearbySettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/nearby/NearbySettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/nearby/NearbySettings$1;->this$0:Lcom/samsung/android/settings/nearby/NearbySettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 26

    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v21, "NearbySettings"

    const-string/jumbo v22, "BroadcastReceiver"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "onReceive(): "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v21 .. v23}, Lcom/samsung/android/settings/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v21, "android.intent.action.MEDIA_MOUNTED"

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_0

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v21

    const-string/jumbo v22, "android.intent.action.MEDIA_EJECT"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_6

    :cond_0
    const-string/jumbo v21, "NearbySettings"

    const-string/jumbo v22, "BroadcastReceiver"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "media mount changed: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v21 .. v23}, Lcom/samsung/android/settings/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/nearby/NearbySettings$1;->isInitialStickyBroadcast()Z

    move-result v21

    if-eqz v21, :cond_1

    const-string/jumbo v21, "NearbySettings"

    const-string/jumbo v22, "BroadcastReceiver"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "isInitialStickyBroadcast: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v21 .. v23}, Lcom/samsung/android/settings/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    return-void

    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/nearby/NearbySettings$1;->this$0:Lcom/samsung/android/settings/nearby/NearbySettings;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/samsung/android/settings/nearby/NearbySettings;->isExternalStorageSdMounted()Z

    move-result v21

    if-nez v21, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/nearby/NearbySettings$1;->this$0:Lcom/samsung/android/settings/nearby/NearbySettings;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/settings/nearby/NearbySettings;->-get2(Lcom/samsung/android/settings/nearby/NearbySettings;)Landroid/preference/ListPreference;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v21

    const-string/jumbo v22, "1"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/nearby/NearbySettings$1;->this$0:Lcom/samsung/android/settings/nearby/NearbySettings;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/settings/nearby/NearbySettings;->-get2(Lcom/samsung/android/settings/nearby/NearbySettings;)Landroid/preference/ListPreference;

    move-result-object v21

    const-string/jumbo v22, "0"

    invoke-virtual/range {v21 .. v22}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/nearby/NearbySettings$1;->this$0:Lcom/samsung/android/settings/nearby/NearbySettings;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/settings/nearby/NearbySettings;->-get4(Lcom/samsung/android/settings/nearby/NearbySettings;)Lcom/samsung/android/settings/nearby/NearbyEnabler;

    move-result-object v21

    if-eqz v21, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/nearby/NearbySettings$1;->this$0:Lcom/samsung/android/settings/nearby/NearbySettings;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/settings/nearby/NearbySettings;->-get4(Lcom/samsung/android/settings/nearby/NearbySettings;)Lcom/samsung/android/settings/nearby/NearbyEnabler;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/nearby/NearbySettings$1;->this$0:Lcom/samsung/android/settings/nearby/NearbySettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/nearby/NearbySettings;->-get2(Lcom/samsung/android/settings/nearby/NearbySettings;)Landroid/preference/ListPreference;

    move-result-object v22

    const-string/jumbo v23, "0"

    invoke-virtual/range {v21 .. v23}, Lcom/samsung/android/settings/nearby/NearbyEnabler;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/nearby/NearbySettings$1;->this$0:Lcom/samsung/android/settings/nearby/NearbySettings;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/settings/nearby/NearbySettings;->-get2(Lcom/samsung/android/settings/nearby/NearbySettings;)Landroid/preference/ListPreference;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/preference/ListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v7

    check-cast v7, Landroid/app/AlertDialog;

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Landroid/app/AlertDialog;->dismiss()V

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/nearby/NearbySettings$1;->this$0:Lcom/samsung/android/settings/nearby/NearbySettings;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/settings/nearby/NearbySettings;->-get2(Lcom/samsung/android/settings/nearby/NearbySettings;)Landroid/preference/ListPreference;

    move-result-object v21

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/preference/ListPreference;->setEnabled(Z)V

    :cond_4
    :goto_0
    return-void

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/nearby/NearbySettings$1;->this$0:Lcom/samsung/android/settings/nearby/NearbySettings;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/samsung/android/settings/nearby/NearbySettings;->isExternalStorageSdMounted()Z

    move-result v21

    if-eqz v21, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/nearby/NearbySettings$1;->this$0:Lcom/samsung/android/settings/nearby/NearbySettings;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/settings/nearby/NearbySettings;->-get2(Lcom/samsung/android/settings/nearby/NearbySettings;)Landroid/preference/ListPreference;

    move-result-object v21

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Landroid/preference/ListPreference;->setEnabled(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v9

    :try_start_2
    const-string/jumbo v21, "NearbySettings"

    const-string/jumbo v22, "BroadcastReceiver"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "Exception:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v21 .. v23}, Lcom/samsung/android/settings/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_1
    move-exception v8

    const-string/jumbo v21, "NearbySettings"

    const-string/jumbo v22, "BroadcastReceiver"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "NotFoundException: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v21 .. v23}, Lcom/samsung/android/settings/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    :try_start_3
    const-string/jumbo v21, "com.android.settings.allshare.UPDATE_LIST"

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_9

    const-string/jumbo v21, "NearbySettings"

    const-string/jumbo v22, "BroadcastReceiver"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, "ACCEPTLIST"

    const/16 v25, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v21 .. v23}, Lcom/samsung/android/settings/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v21, "ACCEPTLIST"

    const/16 v22, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v14

    const-string/jumbo v21, "INDEX"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v13

    if-eqz v14, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/nearby/NearbySettings$1;->this$0:Lcom/samsung/android/settings/nearby/NearbySettings;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/settings/nearby/NearbySettings;->-get0(Lcom/samsung/android/settings/nearby/NearbySettings;)Lcom/samsung/android/settings/nearby/AcceptListPreference;

    move-result-object v20

    :goto_1
    invoke-virtual/range {v20 .. v20}, Landroid/preference/MultiSelectListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v11

    new-instance v17, Ljava/util/HashSet;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashSet;-><init>()V

    if-eqz v13, :cond_8

    const/4 v12, 0x0

    :goto_2
    array-length v0, v13

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v12, v0, :cond_8

    const-string/jumbo v21, "NearbySettings"

    const-string/jumbo v22, "BroadcastReceiver"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "Index: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    aget v24, v13, v12

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    aget v24, v13, v12

    aget-object v24, v11, v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v21 .. v23}, Lcom/samsung/android/settings/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aget v21, v13, v12

    aget-object v21, v11, v21

    check-cast v21, Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/nearby/NearbySettings$1;->this$0:Lcom/samsung/android/settings/nearby/NearbySettings;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/settings/nearby/NearbySettings;->-get5(Lcom/samsung/android/settings/nearby/NearbySettings;)Lcom/samsung/android/settings/nearby/RejectListPreference;

    move-result-object v20

    goto :goto_1

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/nearby/NearbySettings$1;->this$0:Lcom/samsung/android/settings/nearby/NearbySettings;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/settings/nearby/NearbySettings;->-get4(Lcom/samsung/android/settings/nearby/NearbySettings;)Lcom/samsung/android/settings/nearby/NearbyEnabler;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/nearby/NearbyEnabler;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v10

    const-string/jumbo v21, "NearbySettings"

    const-string/jumbo v22, "BroadcastReceiver"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "Exception: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v21 .. v23}, Lcom/samsung/android/settings/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    :try_start_4
    const-string/jumbo v21, "com.samsung.android.nearby.mediaserver.REFRESH_DEVICE_LIST"

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_b

    const-string/jumbo v21, "NearbySettings"

    const-string/jumbo v22, "BroadcastReceiver"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, "LIST"

    const/16 v25, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v21 .. v23}, Lcom/samsung/android/settings/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v21, "LIST"

    const/16 v22, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/nearby/NearbySettings$1;->this$0:Lcom/samsung/android/settings/nearby/NearbySettings;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/settings/nearby/NearbySettings;->-get0(Lcom/samsung/android/settings/nearby/NearbySettings;)Lcom/samsung/android/settings/nearby/AcceptListPreference;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/samsung/android/settings/nearby/AcceptListPreference;->updateDialog()Z

    move-result v21

    if-eqz v21, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/nearby/NearbySettings$1;->this$0:Lcom/samsung/android/settings/nearby/NearbySettings;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/settings/nearby/NearbySettings;->-get0(Lcom/samsung/android/settings/nearby/NearbySettings;)Lcom/samsung/android/settings/nearby/AcceptListPreference;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/samsung/android/settings/nearby/AcceptListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v7

    check-cast v7, Landroid/app/AlertDialog;

    if-eqz v7, :cond_4

    const/16 v21, -0x1

    move/from16 v0, v21

    invoke-virtual {v7, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v19

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    invoke-virtual {v7}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v16

    if-eqz v16, :cond_4

    new-instance v15, Lcom/samsung/android/settings/nearby/ListItemListener;

    move-object/from16 v0, v19

    invoke-direct {v15, v0}, Lcom/samsung/android/settings/nearby/ListItemListener;-><init>(Landroid/widget/Button;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v6, Lcom/samsung/android/settings/nearby/DeleteButtonListener;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/nearby/NearbySettings$1;->this$0:Lcom/samsung/android/settings/nearby/NearbySettings;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/settings/nearby/NearbySettings;->-get1(Lcom/samsung/android/settings/nearby/NearbySettings;)Landroid/content/Context;

    move-result-object v21

    const/16 v22, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v6, v15, v7, v0, v1}, Lcom/samsung/android/settings/nearby/DeleteButtonListener;-><init>(Lcom/samsung/android/settings/nearby/ListItemListener;Landroid/app/Dialog;Landroid/content/Context;Z)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/nearby/NearbySettings$1;->this$0:Lcom/samsung/android/settings/nearby/NearbySettings;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/settings/nearby/NearbySettings;->-get5(Lcom/samsung/android/settings/nearby/NearbySettings;)Lcom/samsung/android/settings/nearby/RejectListPreference;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/samsung/android/settings/nearby/RejectListPreference;->updateDialog()Z

    move-result v21

    if-eqz v21, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/nearby/NearbySettings$1;->this$0:Lcom/samsung/android/settings/nearby/NearbySettings;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/settings/nearby/NearbySettings;->-get5(Lcom/samsung/android/settings/nearby/NearbySettings;)Lcom/samsung/android/settings/nearby/RejectListPreference;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/samsung/android/settings/nearby/RejectListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v7

    check-cast v7, Landroid/app/AlertDialog;

    if-eqz v7, :cond_4

    const/16 v21, -0x1

    move/from16 v0, v21

    invoke-virtual {v7, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v19

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    invoke-virtual {v7}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v16

    if-eqz v16, :cond_4

    new-instance v15, Lcom/samsung/android/settings/nearby/ListItemListener;

    move-object/from16 v0, v19

    invoke-direct {v15, v0}, Lcom/samsung/android/settings/nearby/ListItemListener;-><init>(Landroid/widget/Button;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v6, Lcom/samsung/android/settings/nearby/DeleteButtonListener;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/nearby/NearbySettings$1;->this$0:Lcom/samsung/android/settings/nearby/NearbySettings;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/settings/nearby/NearbySettings;->-get1(Lcom/samsung/android/settings/nearby/NearbySettings;)Landroid/content/Context;

    move-result-object v21

    const/16 v22, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v6, v15, v7, v0, v1}, Lcom/samsung/android/settings/nearby/DeleteButtonListener;-><init>(Lcom/samsung/android/settings/nearby/ListItemListener;Landroid/app/Dialog;Landroid/content/Context;Z)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    :cond_b
    const-string/jumbo v21, "com.android.settings.allshare.ACTIVITY_START"

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/nearby/NearbySettings$1;->this$0:Lcom/samsung/android/settings/nearby/NearbySettings;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/samsung/android/settings/nearby/NearbySettings;->getActivity()Landroid/app/Activity;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/Intent;->getFlags()I

    move-result v5

    const-string/jumbo v21, "FLAG"

    const/16 v22, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v18

    move/from16 v0, v18

    if-eq v5, v0, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/nearby/NearbySettings$1;->this$0:Lcom/samsung/android/settings/nearby/NearbySettings;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/settings/nearby/NearbySettings;->-get3(Lcom/samsung/android/settings/nearby/NearbySettings;)Landroid/os/Handler;

    move-result-object v21

    const/16 v22, 0xbbb

    invoke-virtual/range {v21 .. v22}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0
.end method
