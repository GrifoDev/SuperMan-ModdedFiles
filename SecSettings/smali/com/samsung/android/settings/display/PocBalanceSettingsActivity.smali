.class public Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;
.super Lcom/android/settings/core/InstrumentedActivity;
.source "PocBalanceSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/display/PocBalanceSettingsActivity$1;,
        Lcom/samsung/android/settings/display/PocBalanceSettingsActivity$2;
    }
.end annotation


# instance fields
.field private final mApplyButtonListener:Landroid/view/View$OnClickListener;

.field private mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mBatteryLevel:I

.field private mContext:Landroid/content/Context;

.field private mMdnie:Lcom/samsung/android/hardware/display/SemMdnieManager;

.field private mPocApplyButton:Landroid/widget/Button;

.field private mPocApplyDialog:Landroid/app/AlertDialog;

.field private mPocBalanceSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

.field private mPocBatteryCheckDialog:Landroid/app/AlertDialog;

.field private mPocErrorOccuredDialog:Landroid/app/AlertDialog;

.field private mPocPreviousIndex:I

.field private mPocReadErrorOccuredOnProgressDialog:Landroid/app/AlertDialog;

.field private mStatusBarManager:Landroid/app/StatusBarManager;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->mBatteryLevel:I

    return v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;)Lcom/samsung/android/hardware/display/SemMdnieManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->mMdnie:Lcom/samsung/android/hardware/display/SemMdnieManager;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->mPocApplyButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->mPocPreviousIndex:I

    return v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->mBatteryLevel:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->showPocApplyDialog()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->showPocBatteryCheckDialog()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->startPocBalance()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedActivity;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->mMdnie:Lcom/samsung/android/hardware/display/SemMdnieManager;

    iput-object v0, p0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->mStatusBarManager:Landroid/app/StatusBarManager;

    iput-object v0, p0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->mPocApplyButton:Landroid/widget/Button;

    iput-object v0, p0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->mPocBalanceSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    iput-object v0, p0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->mPocApplyDialog:Landroid/app/AlertDialog;

    iput-object v0, p0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->mPocErrorOccuredDialog:Landroid/app/AlertDialog;

    iput-object v0, p0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->mPocReadErrorOccuredOnProgressDialog:Landroid/app/AlertDialog;

    iput v1, p0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->mPocPreviousIndex:I

    iput v1, p0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->mBatteryLevel:I

    iput-object v0, p0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->mPocBatteryCheckDialog:Landroid/app/AlertDialog;

    new-instance v0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity$1;-><init>(Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->mApplyButtonListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity$2;-><init>(Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private disableStatusBar()V
    .locals 6

    iget-object v3, p0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-nez v3, :cond_0

    const-string/jumbo v3, "statusbar"

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/StatusBarManager;

    iput-object v3, p0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->mStatusBarManager:Landroid/app/StatusBarManager;

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-eqz v3, :cond_2

    const-string/jumbo v3, "PocBalanceSettingsActivity"

    const-string/jumbo v4, "[stpoc] disableNotifications - mStatusBarManager is not null"

    invoke-static {v3, v4}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v2, 0x3210000

    const/4 v1, 0x0

    const/4 v0, 0x0

    const/high16 v3, 0x3210000

    if-eqz v3, :cond_1

    const-string/jumbo v3, "PocBalanceSettingsActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[stpoc] disableNotifications disable : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v3, v2}, Landroid/app/StatusBarManager;->disable(I)V

    :goto_0
    return-void

    :cond_1
    const-string/jumbo v3, "PocBalanceSettingsActivity"

    const-string/jumbo v4, "[stpoc] disableNotifications already disabled"

    invoke-static {v3, v4}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v3, "PocBalanceSettingsActivity"

    const-string/jumbo v4, "[stpoc] disableNotifications - mStatusBarManager is null"

    invoke-static {v3, v4}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private enableStatusBar()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "PocBalanceSettingsActivity"

    const-string/jumbo v1, "[stpoc] enableNotifications :  footerview"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "PocBalanceSettingsActivity"

    const-string/jumbo v1, "[stpoc] enableNotifications - mStatusBarManager is null"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private hasPocErrorOccurredOnBoot()Z
    .locals 11

    const/4 v10, 0x0

    const-string/jumbo v5, "/efs/etc/poc/failcount"

    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2

    const-string/jumbo v7, "PocBalanceSettingsActivity"

    const-string/jumbo v8, "[stpoc] hasErrorOccuredOnBoot failcount file exist"

    invoke-static {v7, v8}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    const/4 v3, 0x0

    :try_start_1
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/FileReader;

    invoke-direct {v7, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    const-string/jumbo v7, "PocBalanceSettingsActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "[stpoc] failcount value : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v7, "3"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string/jumbo v7, "PocBalanceSettingsActivity"

    const-string/jumbo v8, "[stpoc] hasErrorOccuredOnBoot result : true"

    invoke-static {v7, v8}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v7, 0x1

    if-eqz v4, :cond_0

    :try_start_3
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    :cond_0
    :goto_0
    return v7

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_1
    if-eqz v4, :cond_2

    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    :cond_2
    :goto_1
    :try_start_5
    const-string/jumbo v7, "PocBalanceSettingsActivity"

    const-string/jumbo v8, "[stpoc] hasErrorOccuredOnBoot result : false"

    invoke-static {v7, v8}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    return v10

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v1

    :goto_2
    :try_start_6
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v3, :cond_2

    :try_start_7
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_1

    :catchall_0
    move-exception v7

    :goto_3
    if-eqz v3, :cond_3

    :try_start_8
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    :cond_3
    :goto_4
    :try_start_9
    throw v7
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    :catch_4
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const-string/jumbo v7, "PocBalanceSettingsActivity"

    const-string/jumbo v8, "[stpoc] hasErrorOccuredOnBoot result : false"

    invoke-static {v7, v8}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    return v10

    :catch_5
    move-exception v0

    goto :goto_4

    :catchall_1
    move-exception v7

    move-object v3, v4

    goto :goto_3

    :catch_6
    move-exception v1

    move-object v3, v4

    goto :goto_2
.end method

.method private initPocUI()V
    .locals 11

    const/4 v10, -0x1

    const/4 v9, 0x0

    iget-object v6, p0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->mMdnie:Lcom/samsung/android/hardware/display/SemMdnieManager;

    invoke-static {v6, v7}, Lcom/samsung/android/settings/display/SecDisplayUtils;->initPocImageArray(Landroid/content/Context;Lcom/samsung/android/hardware/display/SemMdnieManager;)V

    const v6, 0x7f0a0645

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v6, 0x7f121479

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "\n\n"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v6, 0x7f12147a

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/16 v8, 0xa

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const v6, 0x7f0a0643

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->mPocApplyButton:Landroid/widget/Button;

    iget-object v6, p0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->mPocApplyButton:Landroid/widget/Button;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->mPocApplyButton:Landroid/widget/Button;

    iget-object v7, p0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->mApplyButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v6, p0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->mPocApplyButton:Landroid/widget/Button;

    invoke-virtual {v6, v9}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_1
    const v6, 0x7f0a0644

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/settings/widget/IntervalSeekBar;

    iput-object v6, p0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->mPocBalanceSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    iget-object v6, p0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->mPocBalanceSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->mPocBalanceSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    new-instance v7, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity$3;

    invoke-direct {v7, p0}, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity$3;-><init>(Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;)V

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    invoke-static {p0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getCurrentSeekbarIndex(Landroid/content/Context;)I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    iget-object v6, p0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->mMdnie:Lcom/samsung/android/hardware/display/SemMdnieManager;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplayUtils;->isNeedSkipPOC(Lcom/samsung/android/hardware/display/SemMdnieManager;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "sec_poc_case_d1_index"

    invoke-static {v6, v7, v10, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    const-string/jumbo v6, "/efs/etc/poc/mdnie_info"

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getStringFromFile(Ljava/lang/String;)I

    move-result v5

    const-string/jumbo v6, "PocBalanceSettingsActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "tempDB : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " /tempEFS : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    if-ne v4, v10, :cond_5

    if-ne v5, v10, :cond_4

    const/4 v1, 0x2

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "sec_poc_case_d1_index"

    invoke-static {v6, v7, v1, v9}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_2
    :goto_1
    add-int/lit8 v6, v1, 0x1

    iput v6, p0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->mPocPreviousIndex:I

    const-string/jumbo v6, "PocBalanceSettingsActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "[stpoc] current preset : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->mPocBalanceSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    invoke-virtual {v6, v1}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->setProgress(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {v1}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getPocImageFromArray(I)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_3
    return-void

    :cond_4
    add-int/lit8 v1, v5, -0x1

    goto :goto_0

    :cond_5
    move v1, v4

    goto :goto_1
.end method

.method private showPocApplyDialog()V
    .locals 8

    const/4 v4, 0x0

    const/4 v5, 0x1

    iget-object v3, p0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->mPocApplyDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->mPocApplyDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    :cond_0
    iput-object v4, p0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->mPocApplyDialog:Landroid/app/AlertDialog;

    new-instance v2, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity$4;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity$4;-><init>(Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;)V

    new-instance v0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity$5;-><init>(Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;)V

    new-instance v1, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity$6;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity$6;-><init>(Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;)V

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f12147e

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f12147a

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v5, [Ljava/lang/Object;

    const/16 v6, 0xa

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f120892

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f1205fd

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->mPocApplyDialog:Landroid/app/AlertDialog;

    iget-object v3, p0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->mPocApplyDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    iget-object v3, p0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0438

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->insertFlowLog(Landroid/content/Context;I)V

    return-void
.end method

.method private showPocBatteryCheckDialog()V
    .locals 7

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->mPocBatteryCheckDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->mPocBatteryCheckDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    iput-object v3, p0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->mPocBatteryCheckDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity$11;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity$11;-><init>(Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;)V

    new-instance v0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity$12;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity$12;-><init>(Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;)V

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f121480

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f12147f

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    const/16 v5, 0x1e

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f1205fd

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->mPocBatteryCheckDialog:Landroid/app/AlertDialog;

    iget-object v2, p0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->mPocBatteryCheckDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showPocReadErrorOccuredOnProgressDialog()V
    .locals 6

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->mPocReadErrorOccuredOnProgressDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->mPocReadErrorOccuredOnProgressDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    :cond_0
    iput-object v4, p0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->mPocReadErrorOccuredOnProgressDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b043a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iget-object v3, p0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->getMetricsCategory()I

    move-result v4

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3, v4, v1, v5}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;IILjava/lang/Object;)V

    new-instance v2, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity$9;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity$9;-><init>(Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;)V

    new-instance v0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity$10;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity$10;-><init>(Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;)V

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f121484

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f121483

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f1205fd

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->mPocReadErrorOccuredOnProgressDialog:Landroid/app/AlertDialog;

    iget-object v3, p0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->mPocReadErrorOccuredOnProgressDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showPocWriteErrorOccuredOnBootDialog()V
    .locals 6

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->mPocErrorOccuredDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->mPocErrorOccuredDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    :cond_0
    iput-object v4, p0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->mPocErrorOccuredDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b043a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iget-object v3, p0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->getMetricsCategory()I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3, v4, v1, v5}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;IILjava/lang/Object;)V

    new-instance v2, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity$7;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity$7;-><init>(Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;)V

    new-instance v0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity$8;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity$8;-><init>(Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;)V

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f12147d

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f12147b

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x7f12147c

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f1205fd

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->mPocErrorOccuredDialog:Landroid/app/AlertDialog;

    iget-object v3, p0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->mPocErrorOccuredDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private startPocBalance()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.samsung.settings.POC_BALANCE_PROGRESS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "d1_poc_index"

    iget-object v2, p0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->mPocBalanceSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    invoke-virtual {v2}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->getProgress()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v1, 0x2711

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    invoke-static {p0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->backupDefaultScreenBrightnessMode(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x1d24

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/core/InstrumentedActivity;->onActivityResult(IILandroid/content/Intent;)V

    const-string/jumbo v0, "PocBalanceSettingsActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[stpoc] onActivityResult : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x2711

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    const-string/jumbo v0, "PocBalanceSettingsActivity"

    const-string/jumbo v1, "[stpoc] POC is donepoc_fwup"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "PocBalanceSettingsActivity"

    const-string/jumbo v1, "[stpoc] POC is canceled, just finish to previous menu"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v6, 0x0

    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedActivity;->onCreate(Landroid/os/Bundle;)V

    iput-object p0, p0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "mDNIe"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/hardware/display/SemMdnieManager;

    iput-object v2, p0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->mMdnie:Lcom/samsung/android/hardware/display/SemMdnieManager;

    iget-object v2, p0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "assistant_menu"

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v2, "ModePreview"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ASSISTANT_MENU is killed when PocBalanceSettingsActivity is created, DB : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "assistant_menu"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v2, 0x7f0d01dc

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActionBar;->hide()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x1504

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->initPocUI()V

    return-void
.end method

.method public onPause()V
    .locals 3

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedActivity;->onPause()V

    const-string/jumbo v1, "PocBalanceSettingsActivity"

    const-string/jumbo v2, "[stpoc] onPause()"

    invoke-static {v1, v2}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->enableStatusBar()V

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string/jumbo v1, "PocBalanceSettingsActivity"

    const-string/jumbo v2, "[stpoc] no BatteryReceiver"

    invoke-static {v1, v2}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 5

    const/4 v3, 0x0

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedActivity;->onResume()V

    const-string/jumbo v1, "PocBalanceSettingsActivity"

    const-string/jumbo v2, "[stpoc] onResume()"

    invoke-static {v1, v2}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "PocBalanceSettingsActivity"

    const-string/jumbo v2, "[stpoc] isDesktopMode"

    invoke-static {v1, v2}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->finish()V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->disableStatusBar()V

    invoke-direct {p0}, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->hasPocErrorOccurredOnBoot()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->showPocWriteErrorOccuredOnBootDialog()V

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "sec_display_poc_application_complete"

    invoke-static {v1, v2, v3, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->showPocReadErrorOccuredOnProgressDialog()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "sec_display_poc_application_complete"

    invoke-static {v1, v2, v3, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v4, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x1504

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_0
    return-void
.end method
