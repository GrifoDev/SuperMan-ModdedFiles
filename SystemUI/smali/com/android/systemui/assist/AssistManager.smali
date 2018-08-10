.class public Lcom/android/systemui/assist/AssistManager;
.super Ljava/lang/Object;
.source "AssistManager.java"

# interfaces
.implements Lcom/android/systemui/ConfigurationChangedReceiver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/assist/AssistManager$1;,
        Lcom/android/systemui/assist/AssistManager$2;,
        Lcom/android/systemui/assist/AssistManager$AssistanceAppItemList;,
        Lcom/android/systemui/assist/AssistManager$AssistanceAppItemListAdapter;
    }
.end annotation


# instance fields
.field private final mAssistDisclosure:Lcom/android/systemui/assist/AssistDisclosure;

.field protected final mAssistUtils:Lcom/android/internal/app/AssistUtils;

.field private mAssistanceAppSettingAlertDialog:Landroid/app/AlertDialog;

.field protected final mContext:Landroid/content/Context;

.field private final mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

.field private mHideRunnable:Ljava/lang/Runnable;

.field private final mInterestingConfigChanges:Lcom/android/settingslib/applications/InterestingConfigChanges;

.field private mIsAssistAppAvailable:Z

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mShowCallback:Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;

.field private mView:Lcom/android/systemui/assist/AssistOrbContainer;

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/assist/AssistManager;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/assist/AssistManager;->mHideRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/assist/AssistManager;)Landroid/view/LayoutInflater;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/assist/AssistManager;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/assist/AssistManager;)Lcom/android/systemui/assist/AssistOrbContainer;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/assist/AssistManager;->mView:Lcom/android/systemui/assist/AssistOrbContainer;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/assist/AssistManager;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/assist/AssistManager;->mAssistanceAppSettingAlertDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/assist/AssistManager;Lcom/android/systemui/assist/AssistManager$AssistanceAppItemList;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/assist/AssistManager;->setAssistanceAppSetting(Lcom/android/systemui/assist/AssistManager$AssistanceAppItemList;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/assist/AssistManager;->mIsAssistAppAvailable:Z

    new-instance v0, Lcom/android/systemui/assist/AssistManager$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/assist/AssistManager$1;-><init>(Lcom/android/systemui/assist/AssistManager;)V

    iput-object v0, p0, Lcom/android/systemui/assist/AssistManager;->mShowCallback:Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;

    new-instance v0, Lcom/android/systemui/assist/AssistManager$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/assist/AssistManager$2;-><init>(Lcom/android/systemui/assist/AssistManager;)V

    iput-object v0, p0, Lcom/android/systemui/assist/AssistManager;->mHideRunnable:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/android/systemui/assist/AssistManager;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/android/systemui/assist/AssistManager;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    iget-object v0, p0, Lcom/android/systemui/assist/AssistManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/systemui/assist/AssistManager;->mWindowManager:Landroid/view/WindowManager;

    new-instance v0, Lcom/android/internal/app/AssistUtils;

    invoke-direct {v0, p2}, Lcom/android/internal/app/AssistUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/assist/AssistManager;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    new-instance v0, Lcom/android/systemui/assist/AssistDisclosure;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p2, v1}, Lcom/android/systemui/assist/AssistDisclosure;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/assist/AssistManager;->mAssistDisclosure:Lcom/android/systemui/assist/AssistDisclosure;

    sget-boolean v0, Lcom/android/systemui/Rune;->ASSIST_SUPPORT_ASSISTANCE_APP_SETTING_POPUP:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Lcom/android/systemui/assist/AssistManager;->mContext:Landroid/content/Context;

    const v2, 0x1030132

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/assist/AssistManager;->mLayoutInflater:Landroid/view/LayoutInflater;

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/assist/AssistManager;->registerVoiceInteractionSessionListener()V

    new-instance v0, Lcom/android/settingslib/applications/InterestingConfigChanges;

    const v1, -0x7ffffc7c

    invoke-direct {v0, v1}, Lcom/android/settingslib/applications/InterestingConfigChanges;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/assist/AssistManager;->mInterestingConfigChanges:Lcom/android/settingslib/applications/InterestingConfigChanges;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/assist/AssistManager;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method private addAssistanceAppItems(Ljava/util/ArrayList;Ljava/lang/String;)I
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/assist/AssistManager$AssistanceAppItemList;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/assist/AssistManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v22

    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    const-string/jumbo v6, ""

    const/4 v14, -0x1

    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v7, "android.service.voice.VoiceInteractionService"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v7, 0x80

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v7}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v24

    const/16 v16, 0x0

    :goto_0
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v0, v16

    if-ge v0, v3, :cond_3

    move-object/from16 v0, v24

    move/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/content/pm/ResolveInfo;

    new-instance v4, Landroid/service/voice/VoiceInteractionServiceInfo;

    move-object/from16 v0, v23

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v0, v22

    invoke-direct {v4, v0, v3}, Landroid/service/voice/VoiceInteractionServiceInfo;-><init>(Landroid/content/pm/PackageManager;Landroid/content/pm/ServiceInfo;)V

    move-object/from16 v0, v23

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual {v4}, Landroid/service/voice/VoiceInteractionServiceInfo;->getSupportsAssist()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v14, v3, -0x1

    :cond_2
    const/4 v3, 0x0

    :try_start_0
    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v19

    const/4 v3, 0x1

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManager;->semGetApplicationIconForIconTray(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object/from16 v0, v19

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    :goto_2
    new-instance v2, Lcom/android/systemui/assist/AssistManager$AssistanceAppItemList;

    new-instance v3, Landroid/content/ComponentName;

    move-object/from16 v0, v23

    iget-object v7, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-direct {v3, v0, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x1

    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/assist/AssistManager$AssistanceAppItemList;-><init>(Landroid/content/ComponentName;Landroid/service/voice/VoiceInteractionServiceInfo;Landroid/graphics/drawable/Drawable;Ljava/lang/String;I)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catch_0
    move-exception v18

    const-string/jumbo v3, "AssistManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Failed to add assistance app "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v18

    invoke-static {v3, v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :catch_1
    move-exception v17

    const-string/jumbo v3, "AssistManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Failed to add assistance app "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v17

    invoke-static {v3, v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :catch_2
    move-exception v15

    const-string/jumbo v3, "AssistManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Failed to add assistance app "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " not found"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :cond_3
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v7, "android.intent.action.ASSIST"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v7, 0x10000

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v13

    const/16 v16, 0x0

    :goto_3
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v0, v16

    if-ge v0, v3, :cond_6

    move/from16 v0, v16

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v23

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :goto_4
    add-int/lit8 v16, v16, 0x1

    goto :goto_3

    :cond_4
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v14, v3, -0x1

    :cond_5
    const/4 v3, 0x0

    :try_start_1
    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v19

    const/4 v3, 0x1

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManager;->semGetApplicationIconForIconTray(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object/from16 v0, v19

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v6

    :goto_5
    new-instance v2, Lcom/android/systemui/assist/AssistManager$AssistanceAppItemList;

    new-instance v8, Landroid/content/ComponentName;

    move-object/from16 v0, v23

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-direct {v8, v0, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x0

    const/4 v12, 0x2

    move-object v7, v2

    move-object v10, v5

    move-object v11, v6

    invoke-direct/range {v7 .. v12}, Lcom/android/systemui/assist/AssistManager$AssistanceAppItemList;-><init>(Landroid/content/ComponentName;Landroid/service/voice/VoiceInteractionServiceInfo;Landroid/graphics/drawable/Drawable;Ljava/lang/String;I)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :catch_3
    move-exception v18

    const-string/jumbo v3, "AssistManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Failed to add assistance app "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v18

    invoke-static {v3, v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    :catch_4
    move-exception v17

    const-string/jumbo v3, "AssistManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Failed to add assistance app "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v17

    invoke-static {v3, v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    :catch_5
    move-exception v15

    const-string/jumbo v3, "AssistManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Failed to add assistance app "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " not found"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5

    :cond_6
    new-instance v7, Lcom/android/systemui/assist/AssistManager$AssistanceAppItemList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/assist/AssistManager;->mContext:Landroid/content/Context;

    const v8, 0x7f0802ce

    invoke-virtual {v3, v8}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/assist/AssistManager;->mContext:Landroid/content/Context;

    const v8, 0x7f12012f

    invoke-virtual {v3, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    invoke-direct/range {v7 .. v12}, Lcom/android/systemui/assist/AssistManager$AssistanceAppItemList;-><init>(Landroid/content/ComponentName;Landroid/service/voice/VoiceInteractionServiceInfo;Landroid/graphics/drawable/Drawable;Ljava/lang/String;I)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-gez v14, :cond_7

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v14

    :cond_7
    return v14
.end method

.method private getAssistInfo()Landroid/content/ComponentName;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/assist/AssistManager;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AssistUtils;->getAssistComponentForUser(I)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method private getDefaultRecognizer()Ljava/lang/String;
    .locals 4

    iget-object v1, p0, Lcom/android/systemui/assist/AssistManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.speech.RecognitionService"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v1, :cond_1

    :cond_0
    const-string/jumbo v1, "AssistManager"

    const-string/jumbo v2, "Unable to resolve default voice recognition service."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, ""

    return-object v1

    :cond_1
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 6

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/android/systemui/assist/AssistManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07006e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const/4 v1, -0x1

    const/16 v3, 0x7f1

    const/16 v4, 0x118

    const/4 v5, -0x3

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x1000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    :cond_0
    const v1, 0x800053

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const-string/jumbo v1, "AssistPreviewPanel"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const/16 v1, 0x31

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    return-object v0
.end method

.method private isVoiceSessionRunning()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/assist/AssistManager;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    invoke-virtual {v0}, Lcom/android/internal/app/AssistUtils;->isSessionRunning()Z

    move-result v0

    return v0
.end method

.method private maybeSwapSearchIcon(Landroid/content/ComponentName;Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/assist/AssistManager;->mView:Lcom/android/systemui/assist/AssistOrbContainer;

    invoke-virtual {v0}, Lcom/android/systemui/assist/AssistOrbContainer;->getOrb()Lcom/android/systemui/assist/AssistOrbView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/assist/AssistOrbView;->getLogo()Landroid/widget/ImageView;

    move-result-object v0

    const-string/jumbo v1, "com.android.systemui.action_assist_icon"

    invoke-virtual {p0, v0, p1, v1, p2}, Lcom/android/systemui/assist/AssistManager;->replaceDrawable(Landroid/widget/ImageView;Landroid/content/ComponentName;Ljava/lang/String;Z)V

    return-void
.end method

.method private sendSelectedAssistanceAppInfo(Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string/jumbo v3, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v2, "app_id"

    const-string/jumbo v3, "com.android.systemui.assist"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "feature"

    const-string/jumbo v3, "AST1"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string/jumbo v2, "extra"

    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "data"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.android.providers.context"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/systemui/assist/AssistManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method private setAssistanceAppSetting(Lcom/android/systemui/assist/AssistManager$AssistanceAppItemList;)V
    .locals 7

    invoke-virtual {p1}, Lcom/android/systemui/assist/AssistManager$AssistanceAppItemList;->getAssistanceAppType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    const-string/jumbo v0, ""

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    const-string/jumbo v4, ""

    :goto_0
    iget-object v5, p0, Lcom/android/systemui/assist/AssistManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "assistant"

    invoke-static {v5, v6, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v5, p0, Lcom/android/systemui/assist/AssistManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "voice_interaction_service"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v5, p0, Lcom/android/systemui/assist/AssistManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "voice_recognition_service"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-direct {p0, v0}, Lcom/android/systemui/assist/AssistManager;->sendSelectedAssistanceAppInfo(Ljava/lang/String;)V

    return-void

    :pswitch_0
    const-string/jumbo v0, "None"

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    invoke-direct {p0}, Lcom/android/systemui/assist/AssistManager;->getDefaultRecognizer()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Lcom/android/systemui/assist/AssistManager$AssistanceAppItemList;->getAssistanceComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/systemui/assist/AssistManager$AssistanceAppItemList;->getAssistanceComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    new-instance v5, Landroid/content/ComponentName;

    invoke-virtual {p1}, Lcom/android/systemui/assist/AssistManager$AssistanceAppItemList;->getAssistanceVoiceInteractionService()Landroid/service/voice/VoiceInteractionServiceInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/service/voice/VoiceInteractionServiceInfo;->getRecognitionService()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v0, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :pswitch_2
    invoke-virtual {p1}, Lcom/android/systemui/assist/AssistManager$AssistanceAppItemList;->getAssistanceComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/systemui/assist/AssistManager$AssistanceAppItemList;->getAssistanceComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-direct {p0}, Lcom/android/systemui/assist/AssistManager;->getDefaultRecognizer()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private showAssistanceAppSettingAlertDialog()V
    .locals 13

    const/4 v12, 0x0

    iget-object v9, p0, Lcom/android/systemui/assist/AssistManager;->mAssistanceAppSettingAlertDialog:Landroid/app/AlertDialog;

    if-nez v9, :cond_1

    iget-object v9, p0, Lcom/android/systemui/assist/AssistManager;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v10, 0x7f0d0020

    invoke-virtual {v9, v10, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    const v9, 0x7f0a0532

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iget-object v9, p0, Lcom/android/systemui/assist/AssistManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f12012e

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/android/systemui/assist/AssistManager$AssistanceAppItemListAdapter;

    iget-object v9, p0, Lcom/android/systemui/assist/AssistManager;->mContext:Landroid/content/Context;

    const v10, 0x7f0d0021

    invoke-direct {v0, p0, v9, v10, v6}, Lcom/android/systemui/assist/AssistManager$AssistanceAppItemListAdapter;-><init>(Lcom/android/systemui/assist/AssistManager;Landroid/content/Context;ILjava/util/ArrayList;)V

    iget-object v9, p0, Lcom/android/systemui/assist/AssistManager;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/android/internal/app/AssistUtils;->getAssistComponentForUser(I)Landroid/content/ComponentName;

    move-result-object v3

    const-string/jumbo v4, ""

    if-eqz v3, :cond_0

    iget-object v9, p0, Lcom/android/systemui/assist/AssistManager;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/android/internal/app/AssistUtils;->getAssistComponentForUser(I)Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    :cond_0
    invoke-direct {p0, v6, v4}, Lcom/android/systemui/assist/AssistManager;->addAssistanceAppItems(Ljava/util/ArrayList;Ljava/lang/String;)I

    move-result v5

    move-object v9, v0

    check-cast v9, Lcom/android/systemui/assist/AssistManager$AssistanceAppItemListAdapter;

    invoke-virtual {v9, v5}, Lcom/android/systemui/assist/AssistManager$AssistanceAppItemListAdapter;->setSelectedItem(I)V

    const-string/jumbo v9, "AssistManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Current assistance app - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " package name - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " defaultItem - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/android/systemui/assist/AssistManager$5;

    invoke-direct {v1, p0, v6, v0}, Lcom/android/systemui/assist/AssistManager$5;-><init>(Lcom/android/systemui/assist/AssistManager;Ljava/util/ArrayList;Landroid/widget/ArrayAdapter;)V

    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/android/systemui/assist/AssistManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v7}, Landroid/app/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2, v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v9, 0x1040000

    invoke-virtual {v2, v9, v12}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v9, Lcom/android/systemui/assist/AssistManager$6;

    invoke-direct {v9, p0, v0}, Lcom/android/systemui/assist/AssistManager$6;-><init>(Lcom/android/systemui/assist/AssistManager;Landroid/widget/ArrayAdapter;)V

    const v10, 0x104000a

    invoke-virtual {v2, v10, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v9, Lcom/android/systemui/assist/AssistManager$7;

    invoke-direct {v9, p0}, Lcom/android/systemui/assist/AssistManager$7;-><init>(Lcom/android/systemui/assist/AssistManager;)V

    invoke-virtual {v2, v9}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    iput-object v9, p0, Lcom/android/systemui/assist/AssistManager;->mAssistanceAppSettingAlertDialog:Landroid/app/AlertDialog;

    iget-object v9, p0, Lcom/android/systemui/assist/AssistManager;->mAssistanceAppSettingAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v9}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    const/16 v10, 0x7d9

    invoke-virtual {v9, v10}, Landroid/view/Window;->setType(I)V

    iget-object v9, p0, Lcom/android/systemui/assist/AssistManager;->mAssistanceAppSettingAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v9}, Landroid/app/AlertDialog;->show()V

    :cond_1
    return-void
.end method

.method private showOrb(Landroid/content/ComponentName;Z)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/assist/AssistManager;->maybeSwapSearchIcon(Landroid/content/ComponentName;Z)V

    iget-object v0, p0, Lcom/android/systemui/assist/AssistManager;->mView:Lcom/android/systemui/assist/AssistOrbContainer;

    invoke-virtual {v0, v1, v1}, Lcom/android/systemui/assist/AssistOrbContainer;->show(ZZ)V

    return-void
.end method

.method private startAssistActivity(Landroid/os/Bundle;Landroid/content/ComponentName;)V
    .locals 8

    iget-object v4, p0, Lcom/android/systemui/assist/AssistManager;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-interface {v4}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->isDeviceProvisioned()Z

    move-result v4

    if-nez v4, :cond_0

    return-void

    :cond_0
    iget-object v4, p0, Lcom/android/systemui/assist/AssistManager;->mContext:Landroid/content/Context;

    const-class v5, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v4, v5}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/CommandQueue;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/CommandQueue;->animateCollapsePanels(I)V

    iget-object v4, p0, Lcom/android/systemui/assist/AssistManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "assist_structure_enabled"

    const/4 v6, 0x1

    const/4 v7, -0x2

    invoke-static {v4, v5, v6, v7}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x1

    :goto_0
    iget-object v4, p0, Lcom/android/systemui/assist/AssistManager;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "search"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/SearchManager;

    invoke-virtual {v4, v3}, Landroid/app/SearchManager;->getAssistIntent(Z)Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_2

    return-void

    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {v1, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {v1, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/assist/AssistManager;->showDisclosure()V

    :cond_3
    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/assist/AssistManager;->mContext:Landroid/content/Context;

    const v5, 0x7f0100c0

    const v6, 0x7f0100c1

    invoke-static {v4, v5, v6}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v2

    const/high16 v4, 0x10000000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v4, Lcom/android/systemui/assist/AssistManager$4;

    invoke-direct {v4, p0, v1, v2}, Lcom/android/systemui/assist/AssistManager$4;-><init>(Lcom/android/systemui/assist/AssistManager;Landroid/content/Intent;Landroid/app/ActivityOptions;)V

    invoke-static {v4}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v4, "AssistManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Activity not found for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private startAssistInternal(Landroid/os/Bundle;Landroid/content/ComponentName;Z)V
    .locals 1

    sget-boolean v0, Lcom/android/systemui/Rune;->ASSIST_SUPPORT_ASSISTANCE_APP_SETTING_POPUP:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/assist/AssistManager;->mIsAssistAppAvailable:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/assist/AssistManager;->showAssistanceAppSettingAlertDialog()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/assist/AssistManager;->mIsAssistAppAvailable:Z

    :cond_0
    if-eqz p3, :cond_1

    invoke-direct {p0, p1}, Lcom/android/systemui/assist/AssistManager;->startVoiceInteractor(Landroid/os/Bundle;)V

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/assist/AssistManager;->startAssistActivity(Landroid/os/Bundle;Landroid/content/ComponentName;)V

    goto :goto_0
.end method

.method private startVoiceInteractor(Landroid/os/Bundle;)V
    .locals 5

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/assist/AssistManager;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    iget-object v2, p0, Lcom/android/systemui/assist/AssistManager;->mShowCallback:Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-virtual {v1, p1, v3, v2, v4}, Lcom/android/internal/app/AssistUtils;->showSessionForActiveService(Landroid/os/Bundle;ILcom/android/internal/app/IVoiceInteractionSessionShowCallback;Landroid/os/IBinder;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "AssistManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startVoiceInteractor() NullPointerException! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public canVoiceAssistBeLaunchedFromKeyguard()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/assist/AssistManager;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    invoke-virtual {v0}, Lcom/android/internal/app/AssistUtils;->activeServiceSupportsLaunchFromKeyguard()Z

    move-result v0

    return v0
.end method

.method public getVoiceInteractorComponentName()Landroid/content/ComponentName;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/assist/AssistManager;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    invoke-virtual {v0}, Lcom/android/internal/app/AssistUtils;->getActiveServiceComponentName()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public hideAssist()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/assist/AssistManager;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    invoke-virtual {v0}, Lcom/android/internal/app/AssistUtils;->hideCurrentSession()V

    return-void
.end method

.method public launchVoiceAssistFromKeyguard()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/assist/AssistManager;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    invoke-virtual {v0}, Lcom/android/internal/app/AssistUtils;->launchVoiceAssistFromKeyguard()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/systemui/assist/AssistManager;->mInterestingConfigChanges:Lcom/android/settingslib/applications/InterestingConfigChanges;

    iget-object v3, p0, Lcom/android/systemui/assist/AssistManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settingslib/applications/InterestingConfigChanges;->applyNewConfig(Landroid/content/res/Resources;)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/assist/AssistManager;->mView:Lcom/android/systemui/assist/AssistOrbContainer;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/assist/AssistManager;->mView:Lcom/android/systemui/assist/AssistOrbContainer;

    invoke-virtual {v2}, Lcom/android/systemui/assist/AssistOrbContainer;->isShowing()Z

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/assist/AssistManager;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/android/systemui/assist/AssistManager;->mView:Lcom/android/systemui/assist/AssistOrbContainer;

    invoke-interface {v2, v3}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/assist/AssistManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0d001f

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/assist/AssistOrbContainer;

    iput-object v2, p0, Lcom/android/systemui/assist/AssistManager;->mView:Lcom/android/systemui/assist/AssistOrbContainer;

    iget-object v2, p0, Lcom/android/systemui/assist/AssistManager;->mView:Lcom/android/systemui/assist/AssistOrbContainer;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/android/systemui/assist/AssistOrbContainer;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/systemui/assist/AssistManager;->mView:Lcom/android/systemui/assist/AssistOrbContainer;

    const/16 v3, 0x700

    invoke-virtual {v2, v3}, Lcom/android/systemui/assist/AssistOrbContainer;->setSystemUiVisibility(I)V

    invoke-direct {p0}, Lcom/android/systemui/assist/AssistManager;->getLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/assist/AssistManager;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/android/systemui/assist/AssistManager;->mView:Lcom/android/systemui/assist/AssistOrbContainer;

    invoke-interface {v2, v3, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/android/systemui/assist/AssistManager;->mView:Lcom/android/systemui/assist/AssistOrbContainer;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/assist/AssistOrbContainer;->show(ZZ)V

    :cond_2
    return-void
.end method

.method public onLockscreenShown()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/assist/AssistManager;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    invoke-virtual {v0}, Lcom/android/internal/app/AssistUtils;->onLockscreenShown()V

    return-void
.end method

.method protected registerVoiceInteractionSessionListener()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/assist/AssistManager;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    new-instance v1, Lcom/android/systemui/assist/AssistManager$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/assist/AssistManager$3;-><init>(Lcom/android/systemui/assist/AssistManager;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AssistUtils;->registerVoiceInteractionSessionListener(Lcom/android/internal/app/IVoiceInteractionSessionListener;)V

    return-void
.end method

.method public replaceDrawable(Landroid/widget/ImageView;Landroid/content/ComponentName;Ljava/lang/String;Z)V
    .locals 10

    const/4 v7, 0x0

    const/4 v9, 0x0

    if-eqz p2, :cond_1

    :try_start_0
    iget-object v6, p0, Lcom/android/systemui/assist/AssistManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    if-eqz p4, :cond_0

    const/16 v6, 0x80

    invoke-virtual {v4, p2, v6}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v6

    iget-object v2, v6, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {v2, p3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_0
    const/16 v6, 0x80

    invoke-virtual {v4, p2, v6}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v6

    iget-object v2, v6, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    const-string/jumbo v6, "AssistManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Failed to swap drawable from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    invoke-virtual {p1, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    :catch_1
    move-exception v0

    sget-boolean v6, Lcom/android/systemui/Rune;->ASSIST_SUPPORT_ASSISTANCE_APP_SETTING_POPUP:Z

    if-eqz v6, :cond_2

    iput-boolean v7, p0, Lcom/android/systemui/assist/AssistManager;->mIsAssistAppAvailable:Z

    :cond_2
    const-string/jumbo v6, "AssistManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Assistant component "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " not found"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected shouldShowOrb()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public showDisclosure()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/assist/AssistManager;->mAssistDisclosure:Lcom/android/systemui/assist/AssistDisclosure;

    invoke-virtual {v0}, Lcom/android/systemui/assist/AssistDisclosure;->postShow()V

    return-void
.end method

.method public startAssist(Landroid/os/Bundle;)V
    .locals 6

    sget-boolean v2, Lcom/android/systemui/Rune;->ASSIST_SUPPORT_ASSISTANCE_APP_SETTING_POPUP:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/assist/AssistManager;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "AssistanceAppSettingAlreadySelected"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/systemui/Prefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/assist/AssistManager;->showAssistanceAppSettingAlertDialog()V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistManager;->getAssistInfo()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/assist/AssistManager;->getVoiceInteractorComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/assist/AssistManager;->isVoiceSessionRunning()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/assist/AssistManager;->shouldShowOrb()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/assist/AssistManager;->showOrb(Landroid/content/ComponentName;Z)V

    iget-object v4, p0, Lcom/android/systemui/assist/AssistManager;->mView:Lcom/android/systemui/assist/AssistOrbContainer;

    iget-object v5, p0, Lcom/android/systemui/assist/AssistManager;->mHideRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_4

    const-wide/16 v2, 0x9c4

    :goto_0
    invoke-virtual {v4, v5, v2, v3}, Lcom/android/systemui/assist/AssistOrbContainer;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/assist/AssistManager;->startAssistInternal(Landroid/os/Bundle;Landroid/content/ComponentName;Z)V

    return-void

    :cond_4
    const-wide/16 v2, 0x3e8

    goto :goto_0
.end method
