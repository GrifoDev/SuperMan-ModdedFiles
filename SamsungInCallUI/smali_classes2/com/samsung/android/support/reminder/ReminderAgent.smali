.class public Lcom/samsung/android/support/reminder/ReminderAgent;
.super Ljava/lang/Object;
.source "ReminderAgent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/reminder/ReminderAgent$OptionStyle;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$samsung$android$support$reminder$ReminderAgent$OptionStyle:[I = null

.field private static final DUAL_SCREEN_FULL:I = 0x2

.field private static final DUAL_SCREEN_MAIN:I = 0x0

.field private static final DUAL_SCREEN_SUB:I = 0x1

.field public static final LIBRARY_VERSION:I = 0x9007951

.field private static final TAG:Ljava/lang/String; = "Reminder"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsDualScreenFeatureEnabled:Z

.field private mLatitude:D

.field private mLongitude:D

.field private mOptions:Lcom/samsung/android/support/reminder/Options;

.field private mPackageName:Ljava/lang/String;

.field private mRemindContents:Lcom/samsung/android/support/reminder/RemindContents;

.field private mScaleInfo:Landroid/graphics/PointF;

.field private mScreenshotConfig:Lcom/samsung/android/support/reminder/ScreenshotConfig;

.field private mStyle:Lcom/samsung/android/support/reminder/ReminderAgent$OptionStyle;

.field private mWindowFlag:I

.field private mWindowHeight:I

.field private mWindowWidth:I

.field private mbSetLocation:Z


# direct methods
.method static synthetic $SWITCH_TABLE$com$samsung$android$support$reminder$ReminderAgent$OptionStyle()[I
    .locals 3

    sget-object v0, Lcom/samsung/android/support/reminder/ReminderAgent;->$SWITCH_TABLE$com$samsung$android$support$reminder$ReminderAgent$OptionStyle:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/reminder/ReminderAgent$OptionStyle;->values()[Lcom/samsung/android/support/reminder/ReminderAgent$OptionStyle;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/samsung/android/support/reminder/ReminderAgent$OptionStyle;->OPTION_STYLE_CUSTOM:Lcom/samsung/android/support/reminder/ReminderAgent$OptionStyle;

    invoke-virtual {v1}, Lcom/samsung/android/support/reminder/ReminderAgent$OptionStyle;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_1
    :try_start_1
    sget-object v1, Lcom/samsung/android/support/reminder/ReminderAgent$OptionStyle;->OPTION_STYLE_FULL:Lcom/samsung/android/support/reminder/ReminderAgent$OptionStyle;

    invoke-virtual {v1}, Lcom/samsung/android/support/reminder/ReminderAgent$OptionStyle;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_2
    :try_start_2
    sget-object v1, Lcom/samsung/android/support/reminder/ReminderAgent$OptionStyle;->OPTION_STYLE_PRESET_TIME:Lcom/samsung/android/support/reminder/ReminderAgent$OptionStyle;

    invoke-virtual {v1}, Lcom/samsung/android/support/reminder/ReminderAgent$OptionStyle;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    :try_start_3
    sget-object v1, Lcom/samsung/android/support/reminder/ReminderAgent$OptionStyle;->OPTION_STYLE_SPECIFIC_TIME:Lcom/samsung/android/support/reminder/ReminderAgent$OptionStyle;

    invoke-virtual {v1}, Lcom/samsung/android/support/reminder/ReminderAgent$OptionStyle;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_4
    :try_start_4
    sget-object v1, Lcom/samsung/android/support/reminder/ReminderAgent$OptionStyle;->OPTION_STYLE_TIME:Lcom/samsung/android/support/reminder/ReminderAgent$OptionStyle;

    invoke-virtual {v1}, Lcom/samsung/android/support/reminder/ReminderAgent$OptionStyle;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_5
    sput-object v0, Lcom/samsung/android/support/reminder/ReminderAgent;->$SWITCH_TABLE$com$samsung$android$support$reminder$ReminderAgent$OptionStyle:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    const/4 v7, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v7, p0, Lcom/samsung/android/support/reminder/ReminderAgent;->mIsDualScreenFeatureEnabled:Z

    iput-boolean v7, p0, Lcom/samsung/android/support/reminder/ReminderAgent;->mbSetLocation:Z

    sget-object v5, Lcom/samsung/android/support/reminder/ReminderAgent$OptionStyle;->OPTION_STYLE_CUSTOM:Lcom/samsung/android/support/reminder/ReminderAgent$OptionStyle;

    iput-object v5, p0, Lcom/samsung/android/support/reminder/ReminderAgent;->mStyle:Lcom/samsung/android/support/reminder/ReminderAgent$OptionStyle;

    const-string v5, "Reminder"

    const-string v6, "Reminder library version = 151026001"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/samsung/android/support/reminder/ReminderAgent;->mContext:Landroid/content/Context;

    :try_start_0
    new-instance v3, Lcom/samsung/android/sdk/dualscreen/SDualScreen;

    invoke-direct {v3}, Lcom/samsung/android/sdk/dualscreen/SDualScreen;-><init>()V

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/samsung/android/sdk/dualscreen/SDualScreen;->isFeatureEnabled(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/samsung/android/support/reminder/ReminderAgent;->mIsDualScreenFeatureEnabled:Z
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    instance-of v5, p1, Landroid/app/Activity;

    if-eqz v5, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    iput v5, p0, Lcom/samsung/android/support/reminder/ReminderAgent;->mWindowFlag:I

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v5

    iput v5, p0, Lcom/samsung/android/support/reminder/ReminderAgent;->mWindowWidth:I

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v5

    iput v5, p0, Lcom/samsung/android/support/reminder/ReminderAgent;->mWindowHeight:I

    :cond_0
    iget-object v5, p0, Lcom/samsung/android/support/reminder/ReminderAgent;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/support/reminder/ReminderAgent;->mPackageName:Ljava/lang/String;

    return-void

    :catch_0
    move-exception v2

    const-string v5, "Reminder"

    const-string v6, "DualScreen is not enabled"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v7, p0, Lcom/samsung/android/support/reminder/ReminderAgent;->mIsDualScreenFeatureEnabled:Z

    goto :goto_0
.end method

.method public static isAvailable(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/support/reminder/ReminderAgent;->isReminderInstalled(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private static isReminderInstalled(Landroid/content/Context;)Z
    .locals 5

    const/4 v2, 0x1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    :try_start_0
    const-string v3, "com.samsung.android.app.reminder"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v2

    :catch_0
    move-exception v0

    const/4 v2, 0x0

    goto :goto_0
.end method

.method private showDialog(I)Z
    .locals 12

    const/4 v8, 0x0

    iget-object v7, p0, Lcom/samsung/android/support/reminder/ReminderAgent;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/samsung/android/support/reminder/ReminderAgent;->isReminderInstalled(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "Reminder"

    const-string v9, "Reminder package is not exsit!"

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v8

    :goto_0
    return v7

    :cond_0
    new-instance v3, Landroid/content/Intent;

    const-string v7, "com.samsung.android.app.reminder.SHOW_DIALOG"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v7, "version"

    const v9, 0x9007951

    invoke-virtual {v3, v7, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v7, "package_name"

    iget-object v9, p0, Lcom/samsung/android/support/reminder/ReminderAgent;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v7, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v7, "remind_contents"

    iget-object v9, p0, Lcom/samsung/android/support/reminder/ReminderAgent;->mRemindContents:Lcom/samsung/android/support/reminder/RemindContents;

    invoke-virtual {v3, v7, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v7, p0, Lcom/samsung/android/support/reminder/ReminderAgent;->mScreenshotConfig:Lcom/samsung/android/support/reminder/ScreenshotConfig;

    if-eqz v7, :cond_1

    const-string v7, "screenshot_config"

    iget-object v9, p0, Lcom/samsung/android/support/reminder/ReminderAgent;->mScreenshotConfig:Lcom/samsung/android/support/reminder/ScreenshotConfig;

    invoke-virtual {v3, v7, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_1
    const-string v7, "option_style"

    iget-object v9, p0, Lcom/samsung/android/support/reminder/ReminderAgent;->mStyle:Lcom/samsung/android/support/reminder/ReminderAgent$OptionStyle;

    invoke-virtual {v9}, Lcom/samsung/android/support/reminder/ReminderAgent$OptionStyle;->getValue()I

    move-result v9

    invoke-virtual {v3, v7, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v7, "scale_info"

    iget-object v9, p0, Lcom/samsung/android/support/reminder/ReminderAgent;->mScaleInfo:Landroid/graphics/PointF;

    invoke-virtual {v3, v7, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-static {}, Lcom/samsung/android/support/reminder/ReminderAgent;->$SWITCH_TABLE$com$samsung$android$support$reminder$ReminderAgent$OptionStyle()[I

    move-result-object v7

    iget-object v9, p0, Lcom/samsung/android/support/reminder/ReminderAgent;->mStyle:Lcom/samsung/android/support/reminder/ReminderAgent$OptionStyle;

    invoke-virtual {v9}, Lcom/samsung/android/support/reminder/ReminderAgent$OptionStyle;->ordinal()I

    move-result v9

    aget v7, v7, v9

    packed-switch v7, :pswitch_data_0

    :goto_1
    const-string v7, "is_def_loc"

    iget-boolean v9, p0, Lcom/samsung/android/support/reminder/ReminderAgent;->mbSetLocation:Z

    invoke-virtual {v3, v7, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v7, "def_loc_lat"

    iget-wide v10, p0, Lcom/samsung/android/support/reminder/ReminderAgent;->mLatitude:D

    invoke-virtual {v3, v7, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    const-string v7, "def_loc_long"

    iget-wide v10, p0, Lcom/samsung/android/support/reminder/ReminderAgent;->mLongitude:D

    invoke-virtual {v3, v7, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    iget-boolean v7, p0, Lcom/samsung/android/support/reminder/ReminderAgent;->mIsDualScreenFeatureEnabled:Z

    if-eqz v7, :cond_2

    sget-object v4, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;->MAIN:Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    packed-switch p1, :pswitch_data_1

    :goto_2
    iget-object v7, p0, Lcom/samsung/android/support/reminder/ReminderAgent;->mContext:Landroid/content/Context;

    invoke-static {v7, v3, v4, v8}, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->makeIntent(Landroid/content/Context;Landroid/content/Intent;Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;I)Landroid/content/Intent;

    :cond_2
    :try_start_0
    iget-object v7, p0, Lcom/samsung/android/support/reminder/ReminderAgent;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v7, 0x1

    goto :goto_0

    :pswitch_0
    iget-object v7, p0, Lcom/samsung/android/support/reminder/ReminderAgent;->mOptions:Lcom/samsung/android/support/reminder/Options;

    invoke-virtual {v7}, Lcom/samsung/android/support/reminder/Options;->getCustomTimeList()Ljava/util/ArrayList;

    move-result-object v6

    const/4 v5, 0x0

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v5, v0, [J

    const/4 v2, 0x0

    :goto_3
    if-lt v2, v0, :cond_4

    :cond_3
    const-string v7, "option_preset_time_array_in_seconds"

    invoke-virtual {v3, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    const-string v7, "option_preset_time_contextual"

    iget-object v9, p0, Lcom/samsung/android/support/reminder/ReminderAgent;->mOptions:Lcom/samsung/android/support/reminder/Options;

    invoke-virtual {v9}, Lcom/samsung/android/support/reminder/Options;->isContextualTimeEnabled()Z

    move-result v9

    invoke-virtual {v3, v7, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v7, "option_custom_time"

    iget-object v9, p0, Lcom/samsung/android/support/reminder/ReminderAgent;->mOptions:Lcom/samsung/android/support/reminder/Options;

    invoke-virtual {v9}, Lcom/samsung/android/support/reminder/Options;->isCustomTimeEnabled()Z

    move-result v9

    invoke-virtual {v3, v7, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v7, "option_location"

    iget-object v9, p0, Lcom/samsung/android/support/reminder/ReminderAgent;->mOptions:Lcom/samsung/android/support/reminder/Options;

    invoke-virtual {v9}, Lcom/samsung/android/support/reminder/Options;->isLocationEnabled()Z

    move-result v9

    invoke-virtual {v3, v7, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_1

    :cond_4
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    aput-wide v10, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :pswitch_1
    sget-object v4, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;->SUB:Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    goto :goto_2

    :pswitch_2
    sget-object v4, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;->FULL:Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    goto :goto_2

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    move v7, v8

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public register(Lcom/samsung/android/support/reminder/RemindContents;Lcom/samsung/android/support/reminder/Options;)Z
    .locals 1

    sget-object v0, Lcom/samsung/android/support/reminder/ReminderAgent$OptionStyle;->OPTION_STYLE_CUSTOM:Lcom/samsung/android/support/reminder/ReminderAgent$OptionStyle;

    iput-object v0, p0, Lcom/samsung/android/support/reminder/ReminderAgent;->mStyle:Lcom/samsung/android/support/reminder/ReminderAgent$OptionStyle;

    iput-object p1, p0, Lcom/samsung/android/support/reminder/ReminderAgent;->mRemindContents:Lcom/samsung/android/support/reminder/RemindContents;

    iput-object p2, p0, Lcom/samsung/android/support/reminder/ReminderAgent;->mOptions:Lcom/samsung/android/support/reminder/Options;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/reminder/ReminderAgent;->showDialog(I)Z

    move-result v0

    return v0
.end method

.method public register(Lcom/samsung/android/support/reminder/RemindContents;Lcom/samsung/android/support/reminder/Options;Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;)Z
    .locals 2

    sget-object v1, Lcom/samsung/android/support/reminder/ReminderAgent$OptionStyle;->OPTION_STYLE_CUSTOM:Lcom/samsung/android/support/reminder/ReminderAgent$OptionStyle;

    iput-object v1, p0, Lcom/samsung/android/support/reminder/ReminderAgent;->mStyle:Lcom/samsung/android/support/reminder/ReminderAgent$OptionStyle;

    iput-object p1, p0, Lcom/samsung/android/support/reminder/ReminderAgent;->mRemindContents:Lcom/samsung/android/support/reminder/RemindContents;

    iput-object p2, p0, Lcom/samsung/android/support/reminder/ReminderAgent;->mOptions:Lcom/samsung/android/support/reminder/Options;

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/samsung/android/support/reminder/ReminderAgent;->mIsDualScreenFeatureEnabled:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;->MAIN:Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    invoke-virtual {v1, p3}, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-direct {p0, v0}, Lcom/samsung/android/support/reminder/ReminderAgent;->showDialog(I)Z

    move-result v1

    return v1

    :cond_1
    sget-object v1, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;->SUB:Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    invoke-virtual {v1, p3}, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;->FULL:Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    invoke-virtual {v1, p3}, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0
.end method

.method public register(Lcom/samsung/android/support/reminder/RemindContents;Lcom/samsung/android/support/reminder/ReminderAgent$OptionStyle;)Z
    .locals 2

    sget-object v0, Lcom/samsung/android/support/reminder/ReminderAgent$OptionStyle;->OPTION_STYLE_CUSTOM:Lcom/samsung/android/support/reminder/ReminderAgent$OptionStyle;

    if-ne p2, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unable to set OPTION_STYLE_CUSTOM manually"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/support/reminder/ReminderAgent;->mRemindContents:Lcom/samsung/android/support/reminder/RemindContents;

    iput-object p2, p0, Lcom/samsung/android/support/reminder/ReminderAgent;->mStyle:Lcom/samsung/android/support/reminder/ReminderAgent$OptionStyle;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/reminder/ReminderAgent;->showDialog(I)Z

    move-result v0

    return v0
.end method

.method public register(Lcom/samsung/android/support/reminder/RemindContents;Lcom/samsung/android/support/reminder/ReminderAgent$OptionStyle;Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;)Z
    .locals 3

    sget-object v1, Lcom/samsung/android/support/reminder/ReminderAgent$OptionStyle;->OPTION_STYLE_CUSTOM:Lcom/samsung/android/support/reminder/ReminderAgent$OptionStyle;

    if-ne p2, v1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "unable to set OPTION_STYLE_CUSTOM manually"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/support/reminder/ReminderAgent;->mRemindContents:Lcom/samsung/android/support/reminder/RemindContents;

    iput-object p2, p0, Lcom/samsung/android/support/reminder/ReminderAgent;->mStyle:Lcom/samsung/android/support/reminder/ReminderAgent$OptionStyle;

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/samsung/android/support/reminder/ReminderAgent;->mIsDualScreenFeatureEnabled:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;->MAIN:Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    invoke-virtual {v1, p3}, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    :cond_1
    :goto_0
    invoke-direct {p0, v0}, Lcom/samsung/android/support/reminder/ReminderAgent;->showDialog(I)Z

    move-result v1

    return v1

    :cond_2
    sget-object v1, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;->SUB:Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    invoke-virtual {v1, p3}, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;->FULL:Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    invoke-virtual {v1, p3}, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x2

    goto :goto_0
.end method

.method public setDefaultLocation(DD)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/reminder/ReminderAgent;->mbSetLocation:Z

    iput-wide p1, p0, Lcom/samsung/android/support/reminder/ReminderAgent;->mLatitude:D

    iput-wide p3, p0, Lcom/samsung/android/support/reminder/ReminderAgent;->mLongitude:D

    return-void
.end method

.method public setScaleInfo(Landroid/graphics/PointF;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/reminder/ReminderAgent;->mScaleInfo:Landroid/graphics/PointF;

    return-void
.end method

.method public setScreenshotConfig(Lcom/samsung/android/support/reminder/ScreenshotConfig;)V
    .locals 2

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/samsung/android/support/reminder/ReminderAgent;->mScreenshotConfig:Lcom/samsung/android/support/reminder/ScreenshotConfig;

    iget-object v0, p0, Lcom/samsung/android/support/reminder/ReminderAgent;->mScreenshotConfig:Lcom/samsung/android/support/reminder/ScreenshotConfig;

    iget v1, p0, Lcom/samsung/android/support/reminder/ReminderAgent;->mWindowFlag:I

    iput v1, v0, Lcom/samsung/android/support/reminder/ScreenshotConfig;->mWindowFlags:I

    iget-object v0, p0, Lcom/samsung/android/support/reminder/ReminderAgent;->mScreenshotConfig:Lcom/samsung/android/support/reminder/ScreenshotConfig;

    iget v1, p0, Lcom/samsung/android/support/reminder/ReminderAgent;->mWindowWidth:I

    iput v1, v0, Lcom/samsung/android/support/reminder/ScreenshotConfig;->mWindowWidth:I

    iget-object v0, p0, Lcom/samsung/android/support/reminder/ReminderAgent;->mScreenshotConfig:Lcom/samsung/android/support/reminder/ScreenshotConfig;

    iget v1, p0, Lcom/samsung/android/support/reminder/ReminderAgent;->mWindowHeight:I

    iput v1, v0, Lcom/samsung/android/support/reminder/ScreenshotConfig;->mWindowHeight:I

    :cond_0
    return-void
.end method
