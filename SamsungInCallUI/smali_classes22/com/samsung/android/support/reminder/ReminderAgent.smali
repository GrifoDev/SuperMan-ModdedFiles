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

    .prologue
    .line 24
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
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-boolean v7, p0, Lcom/samsung/android/support/reminder/ReminderAgent;->mIsDualScreenFeatureEnabled:Z

    .line 36
    iput-boolean v7, p0, Lcom/samsung/android/support/reminder/ReminderAgent;->mbSetLocation:Z

    .line 134
    sget-object v5, Lcom/samsung/android/support/reminder/ReminderAgent$OptionStyle;->OPTION_STYLE_CUSTOM:Lcom/samsung/android/support/reminder/ReminderAgent$OptionStyle;

    iput-object v5, p0, Lcom/samsung/android/support/reminder/ReminderAgent;->mStyle:Lcom/samsung/android/support/reminder/ReminderAgent$OptionStyle;

    .line 143
    const-string v5, "Reminder"

    const-string v6, "Reminder library version = 151026001"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iput-object p1, p0, Lcom/samsung/android/support/reminder/ReminderAgent;->mContext:Landroid/content/Context;

    .line 147
    :try_start_0
    new-instance v3, Lcom/samsung/android/sdk/dualscreen/SDualScreen;

    invoke-direct {v3}, Lcom/samsung/android/sdk/dualscreen/SDualScreen;-><init>()V

    .line 148
    .local v3, "mDualScreen":Lcom/samsung/android/sdk/dualscreen/SDualScreen;
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/samsung/android/sdk/dualscreen/SDualScreen;->isFeatureEnabled(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/samsung/android/support/reminder/ReminderAgent;->mIsDualScreenFeatureEnabled:Z
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    .end local v3    # "mDualScreen":Lcom/samsung/android/sdk/dualscreen/SDualScreen;
    :goto_0
    instance-of v5, p1, Landroid/app/Activity;

    if-eqz v5, :cond_0

    move-object v0, p1

    .line 155
    check-cast v0, Landroid/app/Activity;

    .line 156
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    iput v5, p0, Lcom/samsung/android/support/reminder/ReminderAgent;->mWindowFlag:I

    .line 157
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    .line 158
    .local v4, "window":Landroid/view/Window;
    if-eqz v4, :cond_0

    .line 159
    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 160
    .local v1, "decorView":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v5

    iput v5, p0, Lcom/samsung/android/support/reminder/ReminderAgent;->mWindowWidth:I

    .line 161
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v5

    iput v5, p0, Lcom/samsung/android/support/reminder/ReminderAgent;->mWindowHeight:I

    .line 166
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v1    # "decorView":Landroid/view/View;
    .end local v4    # "window":Landroid/view/Window;
    :cond_0
    iget-object v5, p0, Lcom/samsung/android/support/reminder/ReminderAgent;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/support/reminder/ReminderAgent;->mPackageName:Ljava/lang/String;

    .line 168
    return-void

    .line 149
    :catch_0
    move-exception v2

    .line 150
    .local v2, "e":Ljava/lang/NoClassDefFoundError;
    const-string v5, "Reminder"

    const-string v6, "DualScreen is not enabled"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iput-boolean v7, p0, Lcom/samsung/android/support/reminder/ReminderAgent;->mIsDualScreenFeatureEnabled:Z

    goto :goto_0
.end method

.method public static isAvailable(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 176
    invoke-static {p0}, Lcom/samsung/android/support/reminder/ReminderAgent;->isReminderInstalled(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private static isReminderInstalled(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 516
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 518
    .local v1, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    const-string v3, "com.samsung.android.app.reminder"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 521
    :goto_0
    return v2

    .line 520
    :catch_0
    move-exception v0

    .line 521
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private showDialog(I)Z
    .locals 12
    .param p1, "screen"    # I

    .prologue
    const/4 v8, 0x0

    .line 451
    iget-object v7, p0, Lcom/samsung/android/support/reminder/ReminderAgent;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/samsung/android/support/reminder/ReminderAgent;->isReminderInstalled(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 452
    const-string v7, "Reminder"

    const-string v9, "Reminder package is not exsit!"

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v8

    .line 512
    :goto_0
    return v7

    .line 456
    :cond_0
    new-instance v3, Landroid/content/Intent;

    const-string v7, "com.samsung.android.app.reminder.SHOW_DIALOG"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 457
    .local v3, "intent":Landroid/content/Intent;
    const-string v7, "version"

    const v9, 0x9007951

    invoke-virtual {v3, v7, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 458
    const-string v7, "package_name"

    iget-object v9, p0, Lcom/samsung/android/support/reminder/ReminderAgent;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v7, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 459
    const-string v7, "remind_contents"

    iget-object v9, p0, Lcom/samsung/android/support/reminder/ReminderAgent;->mRemindContents:Lcom/samsung/android/support/reminder/RemindContents;

    invoke-virtual {v3, v7, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 460
    iget-object v7, p0, Lcom/samsung/android/support/reminder/ReminderAgent;->mScreenshotConfig:Lcom/samsung/android/support/reminder/ScreenshotConfig;

    if-eqz v7, :cond_1

    .line 461
    const-string v7, "screenshot_config"

    iget-object v9, p0, Lcom/samsung/android/support/reminder/ReminderAgent;->mScreenshotConfig:Lcom/samsung/android/support/reminder/ScreenshotConfig;

    invoke-virtual {v3, v7, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 463
    :cond_1
    const-string v7, "option_style"

    iget-object v9, p0, Lcom/samsung/android/support/reminder/ReminderAgent;->mStyle:Lcom/samsung/android/support/reminder/ReminderAgent$OptionStyle;

    invoke-virtual {v9}, Lcom/samsung/android/support/reminder/ReminderAgent$OptionStyle;->getValue()I

    move-result v9

    invoke-virtual {v3, v7, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 464
    const-string v7, "scale_info"

    iget-object v9, p0, Lcom/samsung/android/support/reminder/ReminderAgent;->mScaleInfo:Landroid/graphics/PointF;

    invoke-virtual {v3, v7, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 466
    invoke-static {}, Lcom/samsung/android/support/reminder/ReminderAgent;->$SWITCH_TABLE$com$samsung$android$support$reminder$ReminderAgent$OptionStyle()[I

    move-result-object v7

    iget-object v9, p0, Lcom/samsung/android/support/reminder/ReminderAgent;->mStyle:Lcom/samsung/android/support/reminder/ReminderAgent$OptionStyle;

    invoke-virtual {v9}, Lcom/samsung/android/support/reminder/ReminderAgent$OptionStyle;->ordinal()I

    move-result v9

    aget v7, v7, v9

    packed-switch v7, :pswitch_data_0

    .line 487
    :goto_1
    const-string v7, "is_def_loc"

    iget-boolean v9, p0, Lcom/samsung/android/support/reminder/ReminderAgent;->mbSetLocation:Z

    invoke-virtual {v3, v7, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 488
    const-string v7, "def_loc_lat"

    iget-wide v10, p0, Lcom/samsung/android/support/reminder/ReminderAgent;->mLatitude:D

    invoke-virtual {v3, v7, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 489
    const-string v7, "def_loc_long"

    iget-wide v10, p0, Lcom/samsung/android/support/reminder/ReminderAgent;->mLongitude:D

    invoke-virtual {v3, v7, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 491
    iget-boolean v7, p0, Lcom/samsung/android/support/reminder/ReminderAgent;->mIsDualScreenFeatureEnabled:Z

    if-eqz v7, :cond_2

    .line 492
    sget-object v4, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;->MAIN:Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    .line 493
    .local v4, "targetScreen":Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;
    packed-switch p1, :pswitch_data_1

    .line 502
    :goto_2
    iget-object v7, p0, Lcom/samsung/android/support/reminder/ReminderAgent;->mContext:Landroid/content/Context;

    invoke-static {v7, v3, v4, v8}, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->makeIntent(Landroid/content/Context;Landroid/content/Intent;Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;I)Landroid/content/Intent;

    .line 506
    .end local v4    # "targetScreen":Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;
    :cond_2
    :try_start_0
    iget-object v7, p0, Lcom/samsung/android/support/reminder/ReminderAgent;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 512
    const/4 v7, 0x1

    goto :goto_0

    .line 468
    :pswitch_0
    iget-object v7, p0, Lcom/samsung/android/support/reminder/ReminderAgent;->mOptions:Lcom/samsung/android/support/reminder/Options;

    invoke-virtual {v7}, Lcom/samsung/android/support/reminder/Options;->getCustomTimeList()Ljava/util/ArrayList;

    move-result-object v6

    .line 469
    .local v6, "timeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v5, 0x0

    .line 470
    .local v5, "timeArray":[J
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_3

    .line 471
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 472
    .local v0, "count":I
    new-array v5, v0, [J

    .line 473
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    if-lt v2, v0, :cond_4

    .line 478
    .end local v0    # "count":I
    .end local v2    # "i":I
    :cond_3
    const-string v7, "option_preset_time_array_in_seconds"

    invoke-virtual {v3, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 479
    const-string v7, "option_preset_time_contextual"

    iget-object v9, p0, Lcom/samsung/android/support/reminder/ReminderAgent;->mOptions:Lcom/samsung/android/support/reminder/Options;

    invoke-virtual {v9}, Lcom/samsung/android/support/reminder/Options;->isContextualTimeEnabled()Z

    move-result v9

    invoke-virtual {v3, v7, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 480
    const-string v7, "option_custom_time"

    iget-object v9, p0, Lcom/samsung/android/support/reminder/ReminderAgent;->mOptions:Lcom/samsung/android/support/reminder/Options;

    invoke-virtual {v9}, Lcom/samsung/android/support/reminder/Options;->isCustomTimeEnabled()Z

    move-result v9

    invoke-virtual {v3, v7, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 481
    const-string v7, "option_location"

    iget-object v9, p0, Lcom/samsung/android/support/reminder/ReminderAgent;->mOptions:Lcom/samsung/android/support/reminder/Options;

    invoke-virtual {v9}, Lcom/samsung/android/support/reminder/Options;->isLocationEnabled()Z

    move-result v9

    invoke-virtual {v3, v7, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_1

    .line 474
    .restart local v0    # "count":I
    .restart local v2    # "i":I
    :cond_4
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    aput-wide v10, v5, v2

    .line 473
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 495
    .end local v0    # "count":I
    .end local v2    # "i":I
    .end local v5    # "timeArray":[J
    .end local v6    # "timeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local v4    # "targetScreen":Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;
    :pswitch_1
    sget-object v4, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;->SUB:Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    .line 496
    goto :goto_2

    .line 498
    :pswitch_2
    sget-object v4, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;->FULL:Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    goto :goto_2

    .line 507
    .end local v4    # "targetScreen":Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;
    :catch_0
    move-exception v1

    .line 508
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    move v7, v8

    .line 509
    goto/16 :goto_0

    .line 466
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch

    .line 493
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public register(Lcom/samsung/android/support/reminder/RemindContents;Lcom/samsung/android/support/reminder/Options;)Z
    .locals 1
    .param p1, "remindContents"    # Lcom/samsung/android/support/reminder/RemindContents;
    .param p2, "options"    # Lcom/samsung/android/support/reminder/Options;

    .prologue
    .line 380
    sget-object v0, Lcom/samsung/android/support/reminder/ReminderAgent$OptionStyle;->OPTION_STYLE_CUSTOM:Lcom/samsung/android/support/reminder/ReminderAgent$OptionStyle;

    iput-object v0, p0, Lcom/samsung/android/support/reminder/ReminderAgent;->mStyle:Lcom/samsung/android/support/reminder/ReminderAgent$OptionStyle;

    .line 381
    iput-object p1, p0, Lcom/samsung/android/support/reminder/ReminderAgent;->mRemindContents:Lcom/samsung/android/support/reminder/RemindContents;

    .line 382
    iput-object p2, p0, Lcom/samsung/android/support/reminder/ReminderAgent;->mOptions:Lcom/samsung/android/support/reminder/Options;

    .line 384
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/reminder/ReminderAgent;->showDialog(I)Z

    move-result v0

    return v0
.end method

.method public register(Lcom/samsung/android/support/reminder/RemindContents;Lcom/samsung/android/support/reminder/Options;Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;)Z
    .locals 2
    .param p1, "remindContents"    # Lcom/samsung/android/support/reminder/RemindContents;
    .param p2, "options"    # Lcom/samsung/android/support/reminder/Options;
    .param p3, "screen"    # Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    .prologue
    .line 432
    sget-object v1, Lcom/samsung/android/support/reminder/ReminderAgent$OptionStyle;->OPTION_STYLE_CUSTOM:Lcom/samsung/android/support/reminder/ReminderAgent$OptionStyle;

    iput-object v1, p0, Lcom/samsung/android/support/reminder/ReminderAgent;->mStyle:Lcom/samsung/android/support/reminder/ReminderAgent$OptionStyle;

    .line 433
    iput-object p1, p0, Lcom/samsung/android/support/reminder/ReminderAgent;->mRemindContents:Lcom/samsung/android/support/reminder/RemindContents;

    .line 434
    iput-object p2, p0, Lcom/samsung/android/support/reminder/ReminderAgent;->mOptions:Lcom/samsung/android/support/reminder/Options;

    .line 435
    const/4 v0, 0x0

    .line 436
    .local v0, "screenToShow":I
    iget-boolean v1, p0, Lcom/samsung/android/support/reminder/ReminderAgent;->mIsDualScreenFeatureEnabled:Z

    if-eqz v1, :cond_0

    .line 437
    sget-object v1, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;->MAIN:Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    invoke-virtual {v1, p3}, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 438
    const/4 v0, 0x0

    .line 446
    :cond_0
    :goto_0
    invoke-direct {p0, v0}, Lcom/samsung/android/support/reminder/ReminderAgent;->showDialog(I)Z

    move-result v1

    return v1

    .line 439
    :cond_1
    sget-object v1, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;->SUB:Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    invoke-virtual {v1, p3}, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 440
    const/4 v0, 0x1

    .line 441
    goto :goto_0

    :cond_2
    sget-object v1, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;->FULL:Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    invoke-virtual {v1, p3}, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 442
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public register(Lcom/samsung/android/support/reminder/RemindContents;Lcom/samsung/android/support/reminder/ReminderAgent$OptionStyle;)Z
    .locals 2
    .param p1, "remindContents"    # Lcom/samsung/android/support/reminder/RemindContents;
    .param p2, "style"    # Lcom/samsung/android/support/reminder/ReminderAgent$OptionStyle;

    .prologue
    .line 269
    sget-object v0, Lcom/samsung/android/support/reminder/ReminderAgent$OptionStyle;->OPTION_STYLE_CUSTOM:Lcom/samsung/android/support/reminder/ReminderAgent$OptionStyle;

    if-ne p2, v0, :cond_0

    .line 270
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unable to set OPTION_STYLE_CUSTOM manually"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 273
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/support/reminder/ReminderAgent;->mRemindContents:Lcom/samsung/android/support/reminder/RemindContents;

    .line 274
    iput-object p2, p0, Lcom/samsung/android/support/reminder/ReminderAgent;->mStyle:Lcom/samsung/android/support/reminder/ReminderAgent$OptionStyle;

    .line 276
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/reminder/ReminderAgent;->showDialog(I)Z

    move-result v0

    return v0
.end method

.method public register(Lcom/samsung/android/support/reminder/RemindContents;Lcom/samsung/android/support/reminder/ReminderAgent$OptionStyle;Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;)Z
    .locals 3
    .param p1, "remindContents"    # Lcom/samsung/android/support/reminder/RemindContents;
    .param p2, "style"    # Lcom/samsung/android/support/reminder/ReminderAgent$OptionStyle;
    .param p3, "screen"    # Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    .prologue
    .line 316
    sget-object v1, Lcom/samsung/android/support/reminder/ReminderAgent$OptionStyle;->OPTION_STYLE_CUSTOM:Lcom/samsung/android/support/reminder/ReminderAgent$OptionStyle;

    if-ne p2, v1, :cond_0

    .line 317
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "unable to set OPTION_STYLE_CUSTOM manually"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 320
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/support/reminder/ReminderAgent;->mRemindContents:Lcom/samsung/android/support/reminder/RemindContents;

    .line 321
    iput-object p2, p0, Lcom/samsung/android/support/reminder/ReminderAgent;->mStyle:Lcom/samsung/android/support/reminder/ReminderAgent$OptionStyle;

    .line 323
    const/4 v0, 0x0

    .line 324
    .local v0, "screenToShow":I
    iget-boolean v1, p0, Lcom/samsung/android/support/reminder/ReminderAgent;->mIsDualScreenFeatureEnabled:Z

    if-eqz v1, :cond_1

    .line 325
    sget-object v1, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;->MAIN:Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    invoke-virtual {v1, p3}, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 326
    const/4 v0, 0x0

    .line 333
    :cond_1
    :goto_0
    invoke-direct {p0, v0}, Lcom/samsung/android/support/reminder/ReminderAgent;->showDialog(I)Z

    move-result v1

    return v1

    .line 327
    :cond_2
    sget-object v1, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;->SUB:Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    invoke-virtual {v1, p3}, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 328
    const/4 v0, 0x1

    .line 329
    goto :goto_0

    :cond_3
    sget-object v1, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;->FULL:Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    invoke-virtual {v1, p3}, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 330
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public setDefaultLocation(DD)V
    .locals 1
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D

    .prologue
    .line 230
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/reminder/ReminderAgent;->mbSetLocation:Z

    .line 231
    iput-wide p1, p0, Lcom/samsung/android/support/reminder/ReminderAgent;->mLatitude:D

    .line 232
    iput-wide p3, p0, Lcom/samsung/android/support/reminder/ReminderAgent;->mLongitude:D

    .line 233
    return-void
.end method

.method public setScaleInfo(Landroid/graphics/PointF;)V
    .locals 0
    .param p1, "scaleInfo"    # Landroid/graphics/PointF;

    .prologue
    .line 220
    iput-object p1, p0, Lcom/samsung/android/support/reminder/ReminderAgent;->mScaleInfo:Landroid/graphics/PointF;

    .line 221
    return-void
.end method

.method public setScreenshotConfig(Lcom/samsung/android/support/reminder/ScreenshotConfig;)V
    .locals 2
    .param p1, "config"    # Lcom/samsung/android/support/reminder/ScreenshotConfig;

    .prologue
    .line 191
    if-eqz p1, :cond_0

    .line 192
    iput-object p1, p0, Lcom/samsung/android/support/reminder/ReminderAgent;->mScreenshotConfig:Lcom/samsung/android/support/reminder/ScreenshotConfig;

    .line 193
    iget-object v0, p0, Lcom/samsung/android/support/reminder/ReminderAgent;->mScreenshotConfig:Lcom/samsung/android/support/reminder/ScreenshotConfig;

    iget v1, p0, Lcom/samsung/android/support/reminder/ReminderAgent;->mWindowFlag:I

    iput v1, v0, Lcom/samsung/android/support/reminder/ScreenshotConfig;->mWindowFlags:I

    .line 194
    iget-object v0, p0, Lcom/samsung/android/support/reminder/ReminderAgent;->mScreenshotConfig:Lcom/samsung/android/support/reminder/ScreenshotConfig;

    iget v1, p0, Lcom/samsung/android/support/reminder/ReminderAgent;->mWindowWidth:I

    iput v1, v0, Lcom/samsung/android/support/reminder/ScreenshotConfig;->mWindowWidth:I

    .line 195
    iget-object v0, p0, Lcom/samsung/android/support/reminder/ReminderAgent;->mScreenshotConfig:Lcom/samsung/android/support/reminder/ScreenshotConfig;

    iget v1, p0, Lcom/samsung/android/support/reminder/ReminderAgent;->mWindowHeight:I

    iput v1, v0, Lcom/samsung/android/support/reminder/ScreenshotConfig;->mWindowHeight:I

    .line 197
    :cond_0
    return-void
.end method
