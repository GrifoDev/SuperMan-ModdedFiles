.class Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;
.super Ljava/lang/Object;
.source "SecuredLockSettingsMenu.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 15

    const/4 v13, 0x0

    iget-object v12, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v12}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get2(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v12

    invoke-virtual {v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v12, "MakePatternVisibleOn"

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    iget-object v12, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v12}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get5(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Landroid/preference/SwitchPreference;

    move-result-object v12

    invoke-virtual {v12}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v12

    if-eqz v12, :cond_1

    iget-object v12, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v12}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get2(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v12

    sget-object v13, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v12, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v12}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get5(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Landroid/preference/SwitchPreference;

    move-result-object v12

    iget-object v13, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-virtual {v13}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v12, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v12}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get2(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v12

    sget-object v13, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v12, "MakePatternVisibleOff"

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    iget-object v12, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v12}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get5(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Landroid/preference/SwitchPreference;

    move-result-object v12

    invoke-virtual {v12}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v12

    if-nez v12, :cond_3

    iget-object v12, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v12}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get2(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v12

    sget-object v13, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_0

    :cond_3
    iget-object v12, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v12}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get5(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Landroid/preference/SwitchPreference;

    move-result-object v12

    iget-object v13, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-virtual {v13}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v12, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v12}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get2(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v12

    sget-object v13, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_0

    :cond_4
    const-string/jumbo v12, "LockAutomatically"

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    iget-object v12, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v12}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get3(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Lcom/samsung/android/settings/SettingsListPreference;

    move-result-object v12

    iget-object v13, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-virtual {v13}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/samsung/android/settings/SettingsListPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v12, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v12}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get2(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v12

    sget-object v13, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_0

    :cond_5
    const-string/jumbo v12, "LockAutomaticallySet"

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_14

    iget-object v12, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v12}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get2(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v12

    invoke-virtual {v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v2

    const-wide/16 v0, -0x1

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_7

    :cond_6
    :goto_1
    const-wide/16 v12, 0x0

    cmp-long v12, v0, v12

    if-nez v12, :cond_b

    iget-object v12, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    iget-object v13, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v13}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get3(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Lcom/samsung/android/settings/SettingsListPreference;

    move-result-object v13

    const-string/jumbo v14, "0"

    invoke-virtual {v12, v13, v14}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    iget-object v12, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v12}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get2(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v12

    sget-object v13, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v12, ""

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_6

    :try_start_0
    const-string/jumbo v12, ", "

    const-string/jumbo v13, ""

    invoke-virtual {v2, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const/16 v12, 0x6d

    invoke-virtual {v2, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    add-int/lit8 v12, v12, 0x1

    invoke-virtual {v2, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const/16 v12, 0x64

    invoke-virtual {v2, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    const/4 v13, 0x0

    invoke-virtual {v2, v13, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    const/16 v12, 0x64

    invoke-virtual {v2, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    add-int/lit8 v12, v12, 0x1

    const/16 v13, 0x68

    invoke-virtual {v2, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    invoke-virtual {v2, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    const/16 v12, 0x68

    invoke-virtual {v2, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    add-int/lit8 v12, v12, 0x1

    const/16 v13, 0x6d

    invoke-virtual {v2, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    invoke-virtual {v2, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    const/16 v12, 0x6d

    invoke-virtual {v2, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    add-int/lit8 v12, v12, 0x1

    const/16 v13, 0x73

    invoke-virtual {v2, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    invoke-virtual {v2, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "0"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    const-string/jumbo v12, "0"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v12

    if-eqz v12, :cond_a

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz v10, :cond_8

    :try_start_1
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v5

    :cond_8
    :goto_2
    if-eqz v11, :cond_9

    :try_start_2
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v6

    :cond_9
    :goto_3
    mul-int/lit8 v12, v5, 0x3c

    mul-int/lit16 v12, v12, 0x3e8

    mul-int/lit16 v13, v6, 0x3e8

    add-int/2addr v12, v13

    int-to-long v0, v12

    goto/16 :goto_1

    :cond_a
    :try_start_3
    iget-object v12, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v12}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get2(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v12

    sget-object v13, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_2

    return-void

    :catch_0
    move-exception v3

    const/4 v5, 0x0

    goto :goto_2

    :catch_1
    move-exception v3

    const/4 v6, 0x0

    goto :goto_3

    :cond_b
    const-wide/16 v12, 0x1388

    cmp-long v12, v0, v12

    if-nez v12, :cond_c

    iget-object v12, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    iget-object v13, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v13}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get3(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Lcom/samsung/android/settings/SettingsListPreference;

    move-result-object v13

    const-string/jumbo v14, "5000"

    invoke-virtual {v12, v13, v14}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    iget-object v12, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v12}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get2(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v12

    sget-object v13, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_c
    const-wide/16 v12, 0x3a98

    cmp-long v12, v0, v12

    if-nez v12, :cond_d

    iget-object v12, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    iget-object v13, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v13}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get3(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Lcom/samsung/android/settings/SettingsListPreference;

    move-result-object v13

    const-string/jumbo v14, "15000"

    invoke-virtual {v12, v13, v14}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    iget-object v12, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v12}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get2(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v12

    sget-object v13, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_d
    const-wide/16 v12, 0x7530

    cmp-long v12, v0, v12

    if-nez v12, :cond_e

    iget-object v12, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    iget-object v13, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v13}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get3(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Lcom/samsung/android/settings/SettingsListPreference;

    move-result-object v13

    const-string/jumbo v14, "30000"

    invoke-virtual {v12, v13, v14}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    iget-object v12, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v12}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get2(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v12

    sget-object v13, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_e
    const-wide/32 v12, 0xea60

    cmp-long v12, v0, v12

    if-nez v12, :cond_f

    iget-object v12, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    iget-object v13, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v13}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get3(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Lcom/samsung/android/settings/SettingsListPreference;

    move-result-object v13

    const-string/jumbo v14, "60000"

    invoke-virtual {v12, v13, v14}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    iget-object v12, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v12}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get2(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v12

    sget-object v13, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_f
    const-wide/32 v12, 0x1d4c0

    cmp-long v12, v0, v12

    if-nez v12, :cond_10

    iget-object v12, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    iget-object v13, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v13}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get3(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Lcom/samsung/android/settings/SettingsListPreference;

    move-result-object v13

    const-string/jumbo v14, "120000"

    invoke-virtual {v12, v13, v14}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    iget-object v12, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v12}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get2(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v12

    sget-object v13, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_10
    const-wide/32 v12, 0x493e0

    cmp-long v12, v0, v12

    if-nez v12, :cond_11

    iget-object v12, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    iget-object v13, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v13}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get3(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Lcom/samsung/android/settings/SettingsListPreference;

    move-result-object v13

    const-string/jumbo v14, "300000"

    invoke-virtual {v12, v13, v14}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    iget-object v12, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v12}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get2(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v12

    sget-object v13, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_11
    const-wide/32 v12, 0x927c0

    cmp-long v12, v0, v12

    if-nez v12, :cond_12

    iget-object v12, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    iget-object v13, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v13}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get3(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Lcom/samsung/android/settings/SettingsListPreference;

    move-result-object v13

    const-string/jumbo v14, "600000"

    invoke-virtual {v12, v13, v14}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    iget-object v12, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v12}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get2(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v12

    sget-object v13, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_12
    const-wide/32 v12, 0x1b7740

    cmp-long v12, v0, v12

    if-nez v12, :cond_13

    iget-object v12, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    iget-object v13, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v13}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get3(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Lcom/samsung/android/settings/SettingsListPreference;

    move-result-object v13

    const-string/jumbo v14, "1800000"

    invoke-virtual {v12, v13, v14}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    iget-object v12, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v12}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get2(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v12

    sget-object v13, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_13
    iget-object v12, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v12}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get2(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v12

    sget-object v13, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_14
    const-string/jumbo v12, "LockInstantlyWithPowerKeyOn"

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_16

    iget-object v12, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v12}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get4(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Landroid/preference/SwitchPreference;

    move-result-object v12

    invoke-virtual {v12}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v12

    if-eqz v12, :cond_15

    iget-object v12, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v12}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get2(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v12

    sget-object v13, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_15
    iget-object v12, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v12}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get4(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Landroid/preference/SwitchPreference;

    move-result-object v12

    iget-object v13, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-virtual {v13}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v12, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v12}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get2(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v12

    sget-object v13, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_16
    const-string/jumbo v12, "LockInstantlyWithPowerKeyOff"

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_18

    iget-object v12, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v12}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get4(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Landroid/preference/SwitchPreference;

    move-result-object v12

    invoke-virtual {v12}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v12

    if-nez v12, :cond_17

    iget-object v12, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v12}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get2(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v12

    sget-object v13, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_17
    iget-object v12, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v12}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get4(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Landroid/preference/SwitchPreference;

    move-result-object v12

    iget-object v13, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-virtual {v13}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v12, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v12}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get2(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v12

    sget-object v13, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_18
    const-string/jumbo v12, "AutoFactoryResetOn"

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1a

    iget-object v12, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v12}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get1(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Landroid/preference/SwitchPreference;

    move-result-object v12

    invoke-virtual {v12}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v12

    if-eqz v12, :cond_19

    iget-object v12, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v12}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get2(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v12

    sget-object v13, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_19
    iget-object v12, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v12}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get1(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Landroid/preference/SwitchPreference;

    move-result-object v12

    iget-object v13, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-virtual {v13}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v12, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v12}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get2(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v12

    sget-object v13, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_1a
    const-string/jumbo v12, "AutoFactoryResetOff"

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1c

    iget-object v12, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v12}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get1(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Landroid/preference/SwitchPreference;

    move-result-object v12

    invoke-virtual {v12}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v12

    if-nez v12, :cond_1b

    iget-object v12, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v12}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get2(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v12

    sget-object v13, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_1b
    iget-object v12, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v12}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get1(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Landroid/preference/SwitchPreference;

    move-result-object v12

    iget-object v13, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-virtual {v13}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v12, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v12}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get2(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v12

    sget-object v13, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_1c
    const-string/jumbo v12, "SmartLock"

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    iget-object v12, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v12}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get6(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Landroid/preference/Preference;

    move-result-object v12

    iget-object v13, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-virtual {v13}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v12, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v12}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get2(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v12

    sget-object v13, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :catch_2
    move-exception v4

    goto/16 :goto_1
.end method
