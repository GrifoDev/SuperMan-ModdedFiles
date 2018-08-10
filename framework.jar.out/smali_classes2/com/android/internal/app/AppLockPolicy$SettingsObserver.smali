.class Lcom/android/internal/app/AppLockPolicy$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "AppLockPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/AppLockPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingsObserver"
.end annotation


# instance fields
.field isNotObserve:Z

.field mSettingContentResolver:Landroid/content/ContentResolver;

.field mSettingsObserverContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/internal/app/AppLockPolicy;


# direct methods
.method static synthetic -wrap0(Lcom/android/internal/app/AppLockPolicy$SettingsObserver;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/app/AppLockPolicy$SettingsObserver;->getLockedApps()V

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/app/AppLockPolicy;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1

    iput-object p1, p0, Lcom/android/internal/app/AppLockPolicy$SettingsObserver;->this$0:Lcom/android/internal/app/AppLockPolicy;

    invoke-direct {p0, p3}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/AppLockPolicy$SettingsObserver;->isNotObserve:Z

    iput-object p2, p0, Lcom/android/internal/app/AppLockPolicy$SettingsObserver;->mSettingsObserverContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/internal/app/AppLockPolicy$SettingsObserver;->mSettingsObserverContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/AppLockPolicy$SettingsObserver;->mSettingContentResolver:Landroid/content/ContentResolver;

    return-void
.end method

.method private getLockedApps()V
    .locals 18

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/app/AppLockPolicy$SettingsObserver;->mSettingsObserverContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string/jumbo v14, "applock_locked_apps_packages"

    const/4 v15, -0x2

    invoke-static {v13, v14, v15}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/app/AppLockPolicy$SettingsObserver;->mSettingsObserverContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string/jumbo v14, "applock_locked_apps_classes"

    const/4 v15, -0x2

    invoke-static {v13, v14, v15}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/app/AppLockPolicy$SettingsObserver;->this$0:Lcom/android/internal/app/AppLockPolicy;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/app/AppLockPolicy$SettingsObserver;->mSettingsObserverContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string/jumbo v15, "applock_lock_type"

    const/16 v16, 0x0

    const/16 v17, -0x2

    invoke-static/range {v14 .. v17}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v14

    invoke-static {v13, v14}, Lcom/android/internal/app/AppLockPolicy;->-set3(Lcom/android/internal/app/AppLockPolicy;I)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/app/AppLockPolicy$SettingsObserver;->this$0:Lcom/android/internal/app/AppLockPolicy;

    invoke-static {v13}, Lcom/android/internal/app/AppLockPolicy;->-get4(Lcom/android/internal/app/AppLockPolicy;)I

    move-result v13

    packed-switch v13, :pswitch_data_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/app/AppLockPolicy$SettingsObserver;->this$0:Lcom/android/internal/app/AppLockPolicy;

    const/4 v14, 0x0

    invoke-static {v13, v14}, Lcom/android/internal/app/AppLockPolicy;->-set2(Lcom/android/internal/app/AppLockPolicy;Ljava/lang/String;)Ljava/lang/String;

    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/app/AppLockPolicy$SettingsObserver;->this$0:Lcom/android/internal/app/AppLockPolicy;

    invoke-static {v13}, Lcom/android/internal/app/AppLockPolicy;->-get1(Lcom/android/internal/app/AppLockPolicy;)Ljava/lang/Object;

    move-result-object v14

    monitor-enter v14

    if-eqz v6, :cond_3

    :try_start_0
    const-string/jumbo v13, ","

    invoke-virtual {v6, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v13, 0x0

    array-length v15, v5

    :goto_1
    if-ge v13, v15, :cond_2

    aget-object v7, v5, v13

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AppLockPolicy$SettingsObserver;->this$0:Lcom/android/internal/app/AppLockPolicy;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/internal/app/AppLockPolicy;->-get3(Lcom/android/internal/app/AppLockPolicy;)Ljava/util/HashMap;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AppLockPolicy$SettingsObserver;->this$0:Lcom/android/internal/app/AppLockPolicy;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/internal/app/AppLockPolicy;->-get3(Lcom/android/internal/app/AppLockPolicy;)Ljava/util/HashMap;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_0
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_1

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_0

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v13

    monitor-exit v14

    throw v13

    :pswitch_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/app/AppLockPolicy$SettingsObserver;->this$0:Lcom/android/internal/app/AppLockPolicy;

    const-string/jumbo v14, "pattern_type"

    invoke-static {v13, v14}, Lcom/android/internal/app/AppLockPolicy;->-set2(Lcom/android/internal/app/AppLockPolicy;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/app/AppLockPolicy$SettingsObserver;->this$0:Lcom/android/internal/app/AppLockPolicy;

    const-string/jumbo v14, "pincode_type"

    invoke-static {v13, v14}, Lcom/android/internal/app/AppLockPolicy;->-set2(Lcom/android/internal/app/AppLockPolicy;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :pswitch_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/app/AppLockPolicy$SettingsObserver;->this$0:Lcom/android/internal/app/AppLockPolicy;

    const-string/jumbo v14, "password_type"

    invoke-static {v13, v14}, Lcom/android/internal/app/AppLockPolicy;->-set2(Lcom/android/internal/app/AppLockPolicy;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/app/AppLockPolicy$SettingsObserver;->this$0:Lcom/android/internal/app/AppLockPolicy;

    const-string/jumbo v14, "fingerprint_type"

    invoke-static {v13, v14}, Lcom/android/internal/app/AppLockPolicy;->-set2(Lcom/android/internal/app/AppLockPolicy;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/app/AppLockPolicy$SettingsObserver;->this$0:Lcom/android/internal/app/AppLockPolicy;

    const-string/jumbo v14, "fingerprint_pattern_type"

    invoke-static {v13, v14}, Lcom/android/internal/app/AppLockPolicy;->-set2(Lcom/android/internal/app/AppLockPolicy;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/app/AppLockPolicy$SettingsObserver;->this$0:Lcom/android/internal/app/AppLockPolicy;

    const-string/jumbo v14, "fingerprint_pincode_type"

    invoke-static {v13, v14}, Lcom/android/internal/app/AppLockPolicy;->-set2(Lcom/android/internal/app/AppLockPolicy;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/app/AppLockPolicy$SettingsObserver;->this$0:Lcom/android/internal/app/AppLockPolicy;

    const-string/jumbo v14, "fingerprint_password_type"

    invoke-static {v13, v14}, Lcom/android/internal/app/AppLockPolicy;->-set2(Lcom/android/internal/app/AppLockPolicy;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/app/AppLockPolicy$SettingsObserver;->this$0:Lcom/android/internal/app/AppLockPolicy;

    const-string/jumbo v14, "iris_type"

    invoke-static {v13, v14}, Lcom/android/internal/app/AppLockPolicy;->-set2(Lcom/android/internal/app/AppLockPolicy;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/app/AppLockPolicy$SettingsObserver;->this$0:Lcom/android/internal/app/AppLockPolicy;

    const-string/jumbo v14, "iris_pattern_type"

    invoke-static {v13, v14}, Lcom/android/internal/app/AppLockPolicy;->-set2(Lcom/android/internal/app/AppLockPolicy;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/app/AppLockPolicy$SettingsObserver;->this$0:Lcom/android/internal/app/AppLockPolicy;

    const-string/jumbo v14, "iris_pincode_type"

    invoke-static {v13, v14}, Lcom/android/internal/app/AppLockPolicy;->-set2(Lcom/android/internal/app/AppLockPolicy;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/app/AppLockPolicy$SettingsObserver;->this$0:Lcom/android/internal/app/AppLockPolicy;

    const-string/jumbo v14, "iris_password_type"

    invoke-static {v13, v14}, Lcom/android/internal/app/AppLockPolicy;->-set2(Lcom/android/internal/app/AppLockPolicy;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/app/AppLockPolicy$SettingsObserver;->this$0:Lcom/android/internal/app/AppLockPolicy;

    const-string/jumbo v14, "biometrics_type"

    invoke-static {v13, v14}, Lcom/android/internal/app/AppLockPolicy;->-set2(Lcom/android/internal/app/AppLockPolicy;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/app/AppLockPolicy$SettingsObserver;->this$0:Lcom/android/internal/app/AppLockPolicy;

    const-string/jumbo v14, "biometrics_pattern_type"

    invoke-static {v13, v14}, Lcom/android/internal/app/AppLockPolicy;->-set2(Lcom/android/internal/app/AppLockPolicy;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/app/AppLockPolicy$SettingsObserver;->this$0:Lcom/android/internal/app/AppLockPolicy;

    const-string/jumbo v14, "biometrics_pincode_type"

    invoke-static {v13, v14}, Lcom/android/internal/app/AppLockPolicy;->-set2(Lcom/android/internal/app/AppLockPolicy;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_e
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/app/AppLockPolicy$SettingsObserver;->this$0:Lcom/android/internal/app/AppLockPolicy;

    const-string/jumbo v14, "biometrics_password_type"

    invoke-static {v13, v14}, Lcom/android/internal/app/AppLockPolicy;->-set2(Lcom/android/internal/app/AppLockPolicy;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_f
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/app/AppLockPolicy$SettingsObserver;->this$0:Lcom/android/internal/app/AppLockPolicy;

    const-string/jumbo v14, "face_type"

    invoke-static {v13, v14}, Lcom/android/internal/app/AppLockPolicy;->-set2(Lcom/android/internal/app/AppLockPolicy;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_10
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/app/AppLockPolicy$SettingsObserver;->this$0:Lcom/android/internal/app/AppLockPolicy;

    const-string/jumbo v14, "face_pattern_type"

    invoke-static {v13, v14}, Lcom/android/internal/app/AppLockPolicy;->-set2(Lcom/android/internal/app/AppLockPolicy;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_11
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/app/AppLockPolicy$SettingsObserver;->this$0:Lcom/android/internal/app/AppLockPolicy;

    const-string/jumbo v14, "face_pincode_type"

    invoke-static {v13, v14}, Lcom/android/internal/app/AppLockPolicy;->-set2(Lcom/android/internal/app/AppLockPolicy;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_12
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/app/AppLockPolicy$SettingsObserver;->this$0:Lcom/android/internal/app/AppLockPolicy;

    const-string/jumbo v14, "face_password_type"

    invoke-static {v13, v14}, Lcom/android/internal/app/AppLockPolicy;->-set2(Lcom/android/internal/app/AppLockPolicy;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_13
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/app/AppLockPolicy$SettingsObserver;->this$0:Lcom/android/internal/app/AppLockPolicy;

    const-string/jumbo v14, "face_spass_type"

    invoke-static {v13, v14}, Lcom/android/internal/app/AppLockPolicy;->-set2(Lcom/android/internal/app/AppLockPolicy;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_14
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/app/AppLockPolicy$SettingsObserver;->this$0:Lcom/android/internal/app/AppLockPolicy;

    const-string/jumbo v14, "face_spass_pattern_type"

    invoke-static {v13, v14}, Lcom/android/internal/app/AppLockPolicy;->-set2(Lcom/android/internal/app/AppLockPolicy;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_15
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/app/AppLockPolicy$SettingsObserver;->this$0:Lcom/android/internal/app/AppLockPolicy;

    const-string/jumbo v14, "face_spass_pincode_type"

    invoke-static {v13, v14}, Lcom/android/internal/app/AppLockPolicy;->-set2(Lcom/android/internal/app/AppLockPolicy;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_16
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/app/AppLockPolicy$SettingsObserver;->this$0:Lcom/android/internal/app/AppLockPolicy;

    const-string/jumbo v14, "face_spass_password_type"

    invoke-static {v13, v14}, Lcom/android/internal/app/AppLockPolicy;->-set2(Lcom/android/internal/app/AppLockPolicy;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    :cond_1
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1

    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/app/AppLockPolicy$SettingsObserver;->this$0:Lcom/android/internal/app/AppLockPolicy;

    invoke-static {v13, v2}, Lcom/android/internal/app/AppLockPolicy;->-set1(Lcom/android/internal/app/AppLockPolicy;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    :cond_3
    if-eqz v4, :cond_7

    const-string/jumbo v13, ","

    invoke-virtual {v4, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v13, 0x0

    array-length v15, v3

    :goto_3
    if-ge v13, v15, :cond_6

    aget-object v1, v3, v13

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AppLockPolicy$SettingsObserver;->this$0:Lcom/android/internal/app/AppLockPolicy;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/internal/app/AppLockPolicy;->-get2(Lcom/android/internal/app/AppLockPolicy;)Ljava/util/HashMap;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AppLockPolicy$SettingsObserver;->this$0:Lcom/android/internal/app/AppLockPolicy;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/internal/app/AppLockPolicy;->-get2(Lcom/android/internal/app/AppLockPolicy;)Ljava/util/HashMap;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_4
    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_4

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_5
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/app/AppLockPolicy$SettingsObserver;->this$0:Lcom/android/internal/app/AppLockPolicy;

    invoke-static {v13, v2}, Lcom/android/internal/app/AppLockPolicy;->-set0(Lcom/android/internal/app/AppLockPolicy;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_7
    monitor-exit v14

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
    .end packed-switch
.end method

.method private getRelatedApps()V
    .locals 4

    iget-object v3, p0, Lcom/android/internal/app/AppLockPolicy$SettingsObserver;->mSettingsObserverContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v1, 0x0

    const/4 v0, 0x0

    return-void
.end method


# virtual methods
.method observe()V
    .locals 5

    const/4 v4, -0x1

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/internal/app/AppLockPolicy$SettingsObserver;->isNotObserve:Z

    iget-object v1, p0, Lcom/android/internal/app/AppLockPolicy$SettingsObserver;->mSettingContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "applock_locked_apps_packages"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v3, p0, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v1, p0, Lcom/android/internal/app/AppLockPolicy$SettingsObserver;->mSettingContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "applock_locked_apps_classes"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v3, p0, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v1, p0, Lcom/android/internal/app/AppLockPolicy$SettingsObserver;->mSettingContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "applock_lock_type"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v3, p0, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    new-instance v2, Lcom/android/internal/app/AppLockPolicy$SettingsObserver$1;

    invoke-direct {v2, p0}, Lcom/android/internal/app/AppLockPolicy$SettingsObserver$1;-><init>(Lcom/android/internal/app/AppLockPolicy$SettingsObserver;)V

    const-class v3, Lcom/android/internal/app/AppLockPolicy;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-direct {p0}, Lcom/android/internal/app/AppLockPolicy$SettingsObserver;->getRelatedApps()V

    invoke-direct {p0}, Lcom/android/internal/app/AppLockPolicy$SettingsObserver;->getLockedApps()V

    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/android/internal/app/AppLockPolicy;->-get0()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "onUserSwitch, observe()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onChange(Z)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/app/AppLockPolicy$SettingsObserver;->getLockedApps()V

    return-void
.end method

.method unObserve()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/AppLockPolicy$SettingsObserver;->mSettingContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
