.class public Lcom/samsung/android/app/CustomBootMsgDialog;
.super Landroid/app/Dialog;
.source "CustomBootMsgDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/CustomBootMsgDialog$1;
    }
.end annotation


# static fields
.field private static final RESET_BIG_GEAR_DEGREE:I = 0x384


# instance fields
.field final TAG:Ljava/lang/String;

.field private mAnimationRunnable:Ljava/lang/Runnable;

.field private mAnimationRunning:Z

.field private mBigGear:Landroid/view/View;

.field mCurrent:I

.field private mHandler:Landroid/os/Handler;

.field mMax:I

.field private mPreviousTime:J

.field mProgressBar:Landroid/widget/ProgressBar;

.field private mSmallGear:Landroid/view/View;

.field mUpgradeProgressMsg:Landroid/widget/TextView;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/app/CustomBootMsgDialog;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/CustomBootMsgDialog;->mAnimationRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/app/CustomBootMsgDialog;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/app/CustomBootMsgDialog;->mAnimationRunning:Z

    return v0
.end method

.method static synthetic -get2(Lcom/samsung/android/app/CustomBootMsgDialog;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/CustomBootMsgDialog;->mBigGear:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/app/CustomBootMsgDialog;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/CustomBootMsgDialog;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/app/CustomBootMsgDialog;)J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/app/CustomBootMsgDialog;->mPreviousTime:J

    return-wide v0
.end method

.method static synthetic -get5(Lcom/samsung/android/app/CustomBootMsgDialog;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/CustomBootMsgDialog;->mSmallGear:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/app/CustomBootMsgDialog;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/app/CustomBootMsgDialog;->mAnimationRunning:Z

    return p1
.end method

.method static synthetic -set1(Lcom/samsung/android/app/CustomBootMsgDialog;J)J
    .locals 1

    iput-wide p1, p0, Lcom/samsung/android/app/CustomBootMsgDialog;->mPreviousTime:J

    return-wide p1
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 13

    const/4 v12, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const v9, 0x103000e

    invoke-direct {p0, p1, v9}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const-string/jumbo v9, "CustomBootMsgDialog"

    iput-object v9, p0, Lcom/samsung/android/app/CustomBootMsgDialog;->TAG:Ljava/lang/String;

    iput-object v11, p0, Lcom/samsung/android/app/CustomBootMsgDialog;->mUpgradeProgressMsg:Landroid/widget/TextView;

    iput-object v11, p0, Lcom/samsung/android/app/CustomBootMsgDialog;->mProgressBar:Landroid/widget/ProgressBar;

    iput v10, p0, Lcom/samsung/android/app/CustomBootMsgDialog;->mMax:I

    iput v10, p0, Lcom/samsung/android/app/CustomBootMsgDialog;->mCurrent:I

    iput-boolean v10, p0, Lcom/samsung/android/app/CustomBootMsgDialog;->mAnimationRunning:Z

    new-instance v9, Lcom/samsung/android/app/CustomBootMsgDialog$1;

    invoke-direct {v9, p0}, Lcom/samsung/android/app/CustomBootMsgDialog$1;-><init>(Lcom/samsung/android/app/CustomBootMsgDialog;)V

    iput-object v9, p0, Lcom/samsung/android/app/CustomBootMsgDialog;->mAnimationRunnable:Ljava/lang/Runnable;

    const-string/jumbo v9, "sys.config.fota_low_brightness"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "true"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const-string/jumbo v0, "/sys/class/leds/lcd-backlight/brightness"

    const/4 v3, 0x0

    :try_start_0
    const-string/jumbo v9, "CustomBootMsgDialog"

    const-string/jumbo v10, "/sys/class/leds/lcd-backlight/brightness is set at CustomBootMsgDialog"

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/io/FileOutputStream;

    const-string/jumbo v9, "/sys/class/leds/lcd-backlight/brightness"

    invoke-direct {v4, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string/jumbo v9, "110"

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v4, :cond_0

    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    const/16 v9, 0x7e5

    iput v9, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    iget v9, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v9, v9, 0x580

    iput v9, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v9, 0x5

    iput v9, v6, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    iput v12, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v12, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v9, 0x1090171

    invoke-virtual {v5, v9, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    const v9, 0x102050c

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const v9, 0x102050d

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcom/samsung/android/app/CustomBootMsgDialog;->mUpgradeProgressMsg:Landroid/widget/TextView;

    const v9, 0x102050e

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ProgressBar;

    iput-object v9, p0, Lcom/samsung/android/app/CustomBootMsgDialog;->mProgressBar:Landroid/widget/ProgressBar;

    const v9, 0x102050a

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/android/app/CustomBootMsgDialog;->mBigGear:Landroid/view/View;

    const v9, 0x102050b

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/android/app/CustomBootMsgDialog;->mSmallGear:Landroid/view/View;

    new-instance v9, Landroid/os/Handler;

    invoke-direct {v9}, Landroid/os/Handler;-><init>()V

    iput-object v9, p0, Lcom/samsung/android/app/CustomBootMsgDialog;->mHandler:Landroid/os/Handler;

    iget-object v9, p0, Lcom/samsung/android/app/CustomBootMsgDialog;->mBigGear:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v9

    new-instance v10, Lcom/samsung/android/app/CustomBootMsgDialog$2;

    invoke-direct {v10, p0}, Lcom/samsung/android/app/CustomBootMsgDialog$2;-><init>(Lcom/samsung/android/app/CustomBootMsgDialog;)V

    invoke-virtual {v9, v10}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v8}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    return-void

    :catch_0
    move-exception v2

    goto/16 :goto_0

    :catch_1
    move-exception v2

    :goto_1
    :try_start_3
    const-string/jumbo v9, "CustomBootMsgDialog"

    const-string/jumbo v10, "/sys/class/leds/lcd-backlight/brightness read/write error"

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v3, :cond_0

    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v2

    goto/16 :goto_0

    :catch_3
    move-exception v1

    :goto_2
    :try_start_5
    const-string/jumbo v9, "CustomBootMsgDialog"

    const-string/jumbo v10, "/sys/class/leds/lcd-backlight/brightness is not found"

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v3, :cond_0

    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto/16 :goto_0

    :catch_4
    move-exception v2

    goto/16 :goto_0

    :catchall_0
    move-exception v9

    :goto_3
    if-eqz v3, :cond_1

    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    :cond_1
    :goto_4
    throw v9

    :catch_5
    move-exception v2

    goto :goto_4

    :catchall_1
    move-exception v9

    move-object v3, v4

    goto :goto_3

    :catch_6
    move-exception v1

    move-object v3, v4

    goto :goto_2

    :catch_7
    move-exception v2

    move-object v3, v4

    goto :goto_1
.end method

.method private parseDigit(Ljava/lang/String;)V
    .locals 7

    const/4 v0, 0x0

    const/4 v4, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_2

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_0

    mul-int/lit8 v5, v4, 0xa

    invoke-static {v1}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v6

    add-int v4, v5, v6

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-eqz v4, :cond_1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_6

    if-nez v4, :cond_3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-le v4, v5, :cond_4

    move v5, v4

    :goto_4
    iput v5, p0, Lcom/samsung/android/app/CustomBootMsgDialog;->mMax:I

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-gt v4, v5, :cond_5

    move v5, v4

    :goto_5
    iput v5, p0, Lcom/samsung/android/app/CustomBootMsgDialog;->mCurrent:I

    goto :goto_3

    :cond_4
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_4

    :cond_5
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_5

    :cond_6
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    const-string/jumbo v0, "CustomBootMsgDialog"

    const-string/jumbo v1, "dismiss CustomBootMsg "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/CustomBootMsgDialog;->mAnimationRunning:Z

    iget-object v0, p0, Lcom/samsung/android/app/CustomBootMsgDialog;->mBigGear:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/CustomBootMsgDialog;->mBigGear:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/CustomBootMsgDialog;->mSmallGear:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/CustomBootMsgDialog;->mSmallGear:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    :cond_1
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public setProgress(Ljava/lang/String;)V
    .locals 5

    const/16 v4, 0x8

    const/4 v3, 0x0

    const-string/jumbo v0, "CustomBootMsgDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Booting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/CustomBootMsgDialog;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/app/CustomBootMsgDialog;->parseDigit(Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/app/CustomBootMsgDialog;->mMax:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/CustomBootMsgDialog;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/app/CustomBootMsgDialog;->mProgressBar:Landroid/widget/ProgressBar;

    iget v1, p0, Lcom/samsung/android/app/CustomBootMsgDialog;->mMax:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    iget-object v0, p0, Lcom/samsung/android/app/CustomBootMsgDialog;->mProgressBar:Landroid/widget/ProgressBar;

    iget v1, p0, Lcom/samsung/android/app/CustomBootMsgDialog;->mCurrent:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/CustomBootMsgDialog;->mUpgradeProgressMsg:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/CustomBootMsgDialog;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method
