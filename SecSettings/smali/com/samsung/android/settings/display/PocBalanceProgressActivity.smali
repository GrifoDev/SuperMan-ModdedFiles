.class public Lcom/samsung/android/settings/display/PocBalanceProgressActivity;
.super Lcom/android/settings/core/InstrumentedActivity;
.source "PocBalanceProgressActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/display/PocBalanceProgressActivity$1;,
        Lcom/samsung/android/settings/display/PocBalanceProgressActivity$2;,
        Lcom/samsung/android/settings/display/PocBalanceProgressActivity$3;,
        Lcom/samsung/android/settings/display/PocBalanceProgressActivity$UIThreadPOC;
    }
.end annotation


# static fields
.field private static COMMAND_FILE:Ljava/io/File;

.field private static final RECOVERY_DIR:Ljava/io/File;


# instance fields
.field private bIsCallFirst:Z

.field private bIsForceWatingForShortModel:Z

.field private backgroundThread:Ljava/lang/Runnable;

.field currentPos:I

.field private isPocRunning:Z

.field public mEstimatedTime:J

.field public mIsProgressStop:Z

.field private mMdnie:Lcom/samsung/android/hardware/display/SemMdnieManager;

.field private mPercentageTextView:Landroid/widget/TextView;

.field private mPocCancelDialog:Landroid/app/AlertDialog;

.field private final mPocObserver:Landroid/database/ContentObserver;

.field private mPocProgressStatus:I

.field private mPocTask:Lcom/samsung/android/settings/display/PocBalanceProgressActivity$UIThreadPOC;

.field private mPocWasStoppedDialog:Landroid/app/AlertDialog;

.field private mPocWriteValue:I

.field mProgressBar:Landroid/widget/ProgressBar;

.field private volatile mProgressBarThread:Ljava/lang/Thread;

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field pgBarHandler:Landroid/os/Handler;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/display/PocBalanceProgressActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->bIsForceWatingForShortModel:Z

    return v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/display/PocBalanceProgressActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->isPocRunning:Z

    return v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/display/PocBalanceProgressActivity;)Lcom/samsung/android/hardware/display/SemMdnieManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mMdnie:Lcom/samsung/android/hardware/display/SemMdnieManager;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/display/PocBalanceProgressActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mPercentageTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/display/PocBalanceProgressActivity;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mPocProgressStatus:I

    return v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/display/PocBalanceProgressActivity;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mPocWriteValue:I

    return v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/display/PocBalanceProgressActivity;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mPocProgressStatus:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/display/PocBalanceProgressActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->insertProgressReadErrorLog()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/display/PocBalanceProgressActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->removeEfsPocErrorOccurredOnBoot()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/display/PocBalanceProgressActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->stopPoc()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/samsung/android/settings/display/PocBalanceProgressActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->writeCommandForRecovery()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/samsung/android/settings/display/PocBalanceProgressActivity;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->writeEfsApplyVersion(II)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/cache/recovery"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->RECOVERY_DIR:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->RECOVERY_DIR:Ljava/io/File;

    const-string/jumbo v2, "command"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->COMMAND_FILE:Ljava/io/File;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedActivity;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mMdnie:Lcom/samsung/android/hardware/display/SemMdnieManager;

    iput v2, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->currentPos:I

    iput v2, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mPocProgressStatus:I

    iput-object v0, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mPocCancelDialog:Landroid/app/AlertDialog;

    iput-object v0, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mPocWasStoppedDialog:Landroid/app/AlertDialog;

    iput-boolean v2, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->isPocRunning:Z

    iput-boolean v2, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->bIsForceWatingForShortModel:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->bIsCallFirst:Z

    iput v2, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mPocWriteValue:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mEstimatedTime:J

    iput-boolean v2, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mIsProgressStop:Z

    new-instance v0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity$1;-><init>(Lcom/samsung/android/settings/display/PocBalanceProgressActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mPocObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity$2;-><init>(Lcom/samsung/android/settings/display/PocBalanceProgressActivity;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->backgroundThread:Ljava/lang/Runnable;

    new-instance v0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity$3;-><init>(Lcom/samsung/android/settings/display/PocBalanceProgressActivity;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->pgBarHandler:Landroid/os/Handler;

    return-void
.end method

.method private blockHWkey()V
    .locals 5

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/Window;->setCloseOnTouchOutside(Z)V

    const-string/jumbo v2, "window"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    const/4 v3, 0x4

    const/4 v4, 0x1

    invoke-interface {v1, v3, v2, v4}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    const/16 v3, 0x43a

    const/4 v4, 0x1

    invoke-interface {v1, v3, v2, v4}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    const/4 v3, 0x3

    const/4 v4, 0x1

    invoke-interface {v1, v3, v2, v4}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    const/16 v3, 0xa4

    const/4 v4, 0x1

    invoke-interface {v1, v3, v2, v4}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    const/16 v3, 0x18

    const/4 v4, 0x1

    invoke-interface {v1, v3, v2, v4}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    const/16 v3, 0x19

    const/4 v4, 0x1

    invoke-interface {v1, v3, v2, v4}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    const/16 v3, 0x1a

    const/4 v4, 0x1

    invoke-interface {v1, v3, v2, v4}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    const/16 v3, 0x24

    const/4 v4, 0x1

    invoke-interface {v1, v3, v2, v4}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    const/16 v3, 0x25

    const/4 v4, 0x1

    invoke-interface {v1, v3, v2, v4}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    const/16 v3, 0xbb

    const/4 v4, 0x1

    invoke-interface {v1, v3, v2, v4}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    const/16 v3, 0x3e9

    const/4 v4, 0x1

    invoke-interface {v1, v3, v2, v4}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private initUI()V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    const v4, 0x7f0a0647

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mEstimatedTime:J

    const-wide/32 v6, 0x668a0

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    iput-boolean v8, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->bIsForceWatingForShortModel:Z

    :goto_0
    const v4, 0x7f12147a

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v9, [Ljava/lang/Object;

    const/16 v6, 0xa

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getPocUserIndexTemp(Landroid/content/Context;)I

    move-result v1

    add-int/lit8 v4, v1, -0x1

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getPocImageFromArray(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_1
    return-void

    :cond_2
    iput-boolean v9, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->bIsForceWatingForShortModel:Z

    goto :goto_0
.end method

.method private insertProgressReadErrorLog()V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0439

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->getMetricsCategory()I

    move-result v1

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p0, v1, v0, v2}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;IILjava/lang/Object;)V

    return-void
.end method

.method private removeEfsPocErrorOccurredOnBoot()V
    .locals 5

    const-string/jumbo v2, "/efs/etc/poc/failcount"

    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_0
    const-string/jumbo v3, "PocBalanceProgressActivity"

    const-string/jumbo v4, "[stpoc] removeEfsPocErrorOccurredOnBoot"

    invoke-static {v3, v4}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private showPocCancelDialog()V
    .locals 5

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mPocCancelDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mPocCancelDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    :cond_0
    iput-object v4, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mPocCancelDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/samsung/android/settings/display/PocBalanceProgressActivity$5;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity$5;-><init>(Lcom/samsung/android/settings/display/PocBalanceProgressActivity;)V

    new-instance v2, Lcom/samsung/android/settings/display/PocBalanceProgressActivity$6;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity$6;-><init>(Lcom/samsung/android/settings/display/PocBalanceProgressActivity;)V

    new-instance v0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity$7;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity$7;-><init>(Lcom/samsung/android/settings/display/PocBalanceProgressActivity;)V

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f121485

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f121486

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f12053d

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mPocCancelDialog:Landroid/app/AlertDialog;

    iget-object v3, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mPocCancelDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showPocWasStoppedDialog()V
    .locals 5

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mPocWasStoppedDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mPocWasStoppedDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    :cond_0
    iput-object v4, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mPocWasStoppedDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0439

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->getMetricsCategory()I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p0, v3, v1, v4}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;IILjava/lang/Object;)V

    new-instance v2, Lcom/samsung/android/settings/display/PocBalanceProgressActivity$8;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity$8;-><init>(Lcom/samsung/android/settings/display/PocBalanceProgressActivity;)V

    new-instance v0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity$9;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity$9;-><init>(Lcom/samsung/android/settings/display/PocBalanceProgressActivity;)V

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f121484

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f121483

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f1205fd

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mPocWasStoppedDialog:Landroid/app/AlertDialog;

    iget-object v3, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mPocWasStoppedDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private startPoc()V
    .locals 5

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getUserPocValue(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mPocWriteValue:I

    const-string/jumbo v0, "PocBalanceProgressActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[stpoc] startPoc, previous state : Running - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->isPocRunning:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "PocBalanceProgressActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[stpoc] startPoc, reqeust userPoc : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mPocWriteValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->isPocRunning:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->bIsCallFirst:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mMdnie:Lcom/samsung/android/hardware/display/SemMdnieManager;

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->isNeedSkipPOC(Lcom/samsung/android/hardware/display/SemMdnieManager;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity$UIThreadPOC;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity$UIThreadPOC;-><init>(Lcom/samsung/android/settings/display/PocBalanceProgressActivity;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mPocTask:Lcom/samsung/android/settings/display/PocBalanceProgressActivity$UIThreadPOC;

    iget-object v0, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mPocTask:Lcom/samsung/android/settings/display/PocBalanceProgressActivity$UIThreadPOC;

    new-array v1, v4, [Ljava/lang/Integer;

    iget v2, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mPocWriteValue:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity$UIThreadPOC;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    iput-boolean v4, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->isPocRunning:Z

    const-string/jumbo v0, "PocBalanceProgressActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[stpoc] startPoc, isPocRunning : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->isPocRunning:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private stopPoc()V
    .locals 3

    const-string/jumbo v0, "PocBalanceProgressActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[stpoc] stopPoc, previous state : Running - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->isPocRunning:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->isPocRunning:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mMdnie:Lcom/samsung/android/hardware/display/SemMdnieManager;

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->isNeedSkipPOC(Lcom/samsung/android/hardware/display/SemMdnieManager;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mMdnie:Lcom/samsung/android/hardware/display/SemMdnieManager;

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->stopReadPoc(Lcom/samsung/android/hardware/display/SemMdnieManager;)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->isPocRunning:Z

    return-void
.end method

.method private writeCommandForRecovery()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v1, Ljava/io/RandomAccessFile;

    sget-object v2, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->COMMAND_FILE:Ljava/io/File;

    const-string/jumbo v3, "rwd"

    invoke-direct {v1, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string/jumbo v0, "--copy_poc_file"

    :try_start_0
    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->writeBytes(Ljava/lang/String;)V

    const-string/jumbo v2, "PocBalanceProgressActivity"

    const-string/jumbo v3, "[stpoc] !@RecoverySystem before fsync syscall!!"

    invoke-static {v2, v3}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/FileDescriptor;->sync()V

    const-string/jumbo v2, "PocBalanceProgressActivity"

    const-string/jumbo v3, "[stpoc] !@RecoverySystem after fsync syscall!!"

    invoke-static {v2, v3}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    sget-object v2, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->COMMAND_FILE:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "PocBalanceProgressActivity"

    const-string/jumbo v3, "[stpoc] COMMAND_FILE is already exist!!"

    invoke-static {v2, v3}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    throw v2
.end method

.method private writeEfsApplyVersion(II)V
    .locals 9

    const-string/jumbo v4, "/efs/FactoryApp/apply_version"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    :cond_0
    new-instance v6, Ljava/io/FileWriter;

    invoke-direct {v6, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v6, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v6, :cond_1

    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    :goto_0
    move-object v5, v6

    :cond_2
    :goto_1
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v2

    :goto_2
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v5, :cond_2

    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catchall_0
    move-exception v7

    :goto_3
    if-eqz v5, :cond_3

    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_3
    :goto_4
    throw v7

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :catchall_1
    move-exception v7

    move-object v5, v6

    goto :goto_3

    :catch_4
    move-exception v2

    move-object v5, v6

    goto :goto_2
.end method


# virtual methods
.method public disableStatusBar()V
    .locals 6

    iget-object v3, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-nez v3, :cond_0

    const-string/jumbo v3, "statusbar"

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/StatusBarManager;

    iput-object v3, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mStatusBarManager:Landroid/app/StatusBarManager;

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-eqz v3, :cond_2

    const-string/jumbo v3, "PocBalanceProgressActivity"

    const-string/jumbo v4, "[stpoc] disableNotifications - mStatusBarManager is not null"

    invoke-static {v3, v4}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v2, 0x3210000

    const/4 v1, 0x0

    const/4 v0, 0x0

    const/high16 v3, 0x3210000

    if-eqz v3, :cond_1

    const-string/jumbo v3, "PocBalanceProgressActivity"

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

    iget-object v3, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v3, v2}, Landroid/app/StatusBarManager;->disable(I)V

    :goto_0
    return-void

    :cond_1
    const-string/jumbo v3, "PocBalanceProgressActivity"

    const-string/jumbo v4, "[stpoc] disableNotifications already disabled"

    invoke-static {v3, v4}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v3, "PocBalanceProgressActivity"

    const-string/jumbo v4, "[stpoc] disableNotifications - mStatusBarManager is null"

    invoke-static {v3, v4}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public enableStatusBar()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "PocBalanceProgressActivity"

    const-string/jumbo v1, "[stpoc] enableNotifications :  footerview"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "PocBalanceProgressActivity"

    const-string/jumbo v1, "[stpoc] enableNotifications - mStatusBarManager is null"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public declared-synchronized finishReadPoc()V
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "PocBalanceProgressActivity"

    const-string/jumbo v1, "[stpoc] finishReadPoc"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mProgressBarThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "PocBalanceProgressActivity"

    const-string/jumbo v1, "[stpoc] stop progressbar"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mProgressBarThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mProgressBarThread:Ljava/lang/Thread;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mIsProgressStop:Z

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->isPocRunning:Z

    invoke-static {p0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->restoreDefaultScreenBrightnessMode(Landroid/content/Context;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/samsung/android/settings/display/PocBalanceProgressActivity$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity$4;-><init>(Lcom/samsung/android/settings/display/PocBalanceProgressActivity;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x1d25

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v5, 0x0

    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "mDNIe"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/hardware/display/SemMdnieManager;

    iput-object v3, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mMdnie:Lcom/samsung/android/hardware/display/SemMdnieManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ActionBar;->hide()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x1504

    invoke-virtual {v0, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    const v3, 0x7f0d01dd

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "sec_display_poc_application_complete"

    invoke-static {v3, v4, v5, v5}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    invoke-direct {p0}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->blockHWkey()V

    const-string/jumbo v3, "power"

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    const-string/jumbo v3, "PocBalanceProgressActivity"

    const v4, 0x3000001a

    invoke-virtual {v1, v4, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v3, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    const v3, 0x7f0a0692

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    iput-object v3, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mProgressBar:Landroid/widget/ProgressBar;

    const v3, 0x7f0a01d7

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mPercentageTextView:Landroid/widget/TextView;

    iput-boolean v5, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mIsProgressStop:Z

    iget-object v3, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mMdnie:Lcom/samsung/android/hardware/display/SemMdnieManager;

    invoke-static {v3}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getPocEstimatedTime(Lcom/samsung/android/hardware/display/SemMdnieManager;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mEstimatedTime:J

    invoke-direct {p0}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->initUI()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->startProgressBar()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    sparse-switch p1, :sswitch_data_0

    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/core/InstrumentedActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    :sswitch_0
    const/4 v0, 0x1

    return v0

    :sswitch_1
    invoke-direct {p0}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->showPocCancelDialog()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x4 -> :sswitch_1
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x1a -> :sswitch_0
        0x24 -> :sswitch_0
        0x25 -> :sswitch_0
        0xa4 -> :sswitch_0
        0xbb -> :sswitch_0
        0x3e9 -> :sswitch_0
        0x43a -> :sswitch_0
    .end sparse-switch
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedActivity;->onPause()V

    const-string/jumbo v0, "PocBalanceProgressActivity"

    const-string/jumbo v1, "[stpoc] onPause()"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->enableStatusBar()V

    iget-object v0, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->restoreDefaultScreenBrightnessMode(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->stopPocAndProgressThread()V

    return-void
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedActivity;->onResume()V

    const-string/jumbo v0, "PocBalanceProgressActivity"

    const-string/jumbo v1, "[stpoc] onResume()"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->disableStatusBar()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "sec_display_poc_application_complete"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mPocObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-boolean v0, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->bIsCallFirst:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "PocBalanceProgressActivity"

    const-string/jumbo v1, "[stpoc] onResume() startPoc"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->startPoc()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->bIsCallFirst:Z

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->showPocWasStoppedDialog()V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedActivity;->onStop()V

    const-string/jumbo v0, "PocBalanceProgressActivity"

    const-string/jumbo v1, "[stpoc] onStop()"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->stopPocAndProgressThread()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x1504

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_0
    return-void
.end method

.method public declared-synchronized startProgressBar()V
    .locals 3

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->backgroundThread:Ljava/lang/Runnable;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mProgressBarThread:Ljava/lang/Thread;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->currentPos:I

    iget-object v0, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mProgressBarThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public stopPocAndProgressThread()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->stopPoc()V

    iget-object v1, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mPocTask:Lcom/samsung/android/settings/display/PocBalanceProgressActivity$UIThreadPOC;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mPocTask:Lcom/samsung/android/settings/display/PocBalanceProgressActivity$UIThreadPOC;

    invoke-virtual {v1, v4}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity$UIThreadPOC;->cancel(Z)Z

    iput-object v3, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mPocTask:Lcom/samsung/android/settings/display/PocBalanceProgressActivity$UIThreadPOC;

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mPocObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mProgressBarThread:Ljava/lang/Thread;

    if-eqz v1, :cond_1

    const-string/jumbo v1, "PocBalanceProgressActivity"

    const-string/jumbo v2, "[stpoc] stop progressbar"

    invoke-static {v1, v2}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mProgressBarThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    iput-object v3, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mProgressBarThread:Ljava/lang/Thread;

    iput-boolean v4, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mIsProgressStop:Z

    :cond_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string/jumbo v1, "PocBalanceProgressActivity"

    const-string/jumbo v2, "[stpoc] no mPocObserver"

    invoke-static {v1, v2}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
