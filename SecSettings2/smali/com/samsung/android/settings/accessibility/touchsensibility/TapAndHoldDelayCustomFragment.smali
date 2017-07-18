.class public Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "TapAndHoldDelayCustomFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment$1;
    }
.end annotation


# static fields
.field private static isInFront:Ljava/lang/Boolean;


# instance fields
.field private base_time:J

.field private isOnConfigChange:Z

.field private isOnPause:Z

.field private mDescription:Landroid/widget/TextView;

.field private mDialog:Landroid/app/Dialog;

.field private mHandler:Landroid/os/Handler;

.field private mRunnable:Ljava/lang/Runnable;

.field private mSaveBttn:Landroid/widget/Button;

.field private mShownDialogId:I

.field private mTabAndHoldView:Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;

.field private mTextViewPressTime:Landroid/widget/TextView;

.field private mTextViewSec:Landroid/widget/TextView;

.field private mcancelBttn:Landroid/widget/Button;

.field private press_time:J

.field private value_spacing:F

.field private value_textSize:F


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;)J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->base_time:J

    return-wide v0
.end method

.method static synthetic -get1()Ljava/lang/Boolean;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->isInFront:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mSaveBttn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;)Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mTabAndHoldView:Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mTextViewPressTime:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get7(Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mTextViewSec:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get8(Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;)J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->press_time:J

    return-wide v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;J)J
    .locals 1

    iput-wide p1, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->base_time:J

    return-wide p1
.end method

.method static synthetic -set1(Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;J)J
    .locals 1

    iput-wide p1, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->press_time:J

    return-wide p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->showDialog(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->isInFront:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->base_time:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->press_time:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mDialog:Landroid/app/Dialog;

    iput-boolean v2, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->isOnPause:Z

    iput-boolean v2, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->isOnConfigChange:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment$1;-><init>(Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private final isMobileKeyboardCovered()Z
    .locals 9

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    :try_start_0
    const-class v7, Landroid/content/res/Configuration;

    const-string/jumbo v8, "mobileKeyboardCovered"

    invoke-virtual {v7, v8}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    const-class v7, Landroid/content/res/Configuration;

    const-string/jumbo v8, "MOBILEKEYBOARD_COVERED_YES"

    invoke-virtual {v7, v8}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    invoke-virtual {v5, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v7

    invoke-virtual {v6, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v8

    if-ne v7, v8, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v4

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_0

    :catch_2
    move-exception v3

    goto :goto_0
.end method

.method private updateLongPressTimeOut(I)V
    .locals 3

    const-string/jumbo v0, "TapAndHoldDelayCustomFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "saved : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "long_press_timeout"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10027b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public initDP()V
    .locals 5

    const/4 v4, 0x1

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0a024e

    invoke-virtual {v1, v3, v0, v4}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    iget v3, v0, Landroid/util/TypedValue;->data:I

    invoke-static {v3}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result v3

    iput v3, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->value_textSize:F

    const v3, 0x7f0a024b

    invoke-virtual {v1, v3, v0, v4}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    iget v3, v0, Landroid/util/TypedValue;->data:I

    invoke-static {v3}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result v2

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v4, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    iput v3, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->value_spacing:F

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->getView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment$2;-><init>(Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    const/4 v2, 0x1

    packed-switch p2, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :pswitch_0
    iget v1, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mShownDialogId:I

    if-ne v1, v2, :cond_0

    iget-wide v2, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->press_time:J

    long-to-int v1, v2

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->updateLongPressTimeOut(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->getMetricsCategory()I

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f10027d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iget-wide v4, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->press_time:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;IILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->finish()V

    :cond_0
    :goto_0
    return-void

    :pswitch_1
    iget v1, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mShownDialogId:I

    if-ne v1, v2, :cond_0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    :pswitch_2
    iget v1, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mShownDialogId:I

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "long_press_timeout"

    const/16 v3, 0x1f4

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->getMetricsCategory()I

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f10027c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;IILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->finish()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mSaveBttn:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/view/View;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-wide v2, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->press_time:J

    long-to-int v1, v2

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->updateLongPressTimeOut(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->getMetricsCategory()I

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f10027d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iget-wide v4, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->press_time:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;IILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->finish()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mcancelBttn:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/view/View;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "long_press_timeout"

    const/16 v3, 0x1f4

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->getMetricsCategory()I

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f10027c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;IILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->finish()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 9

    const/4 v5, 0x1

    const/4 v8, -0x1

    iput-boolean v5, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->isOnConfigChange:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->getView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    iget-boolean v4, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->isOnPause:Z

    if-nez v4, :cond_0

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->removeDialog(I)V

    :cond_0
    const v4, 0x7f0402e4

    invoke-virtual {v1, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f11068f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;

    iput-object v4, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mTabAndHoldView:Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;

    const v4, 0x7f110691

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mcancelBttn:Landroid/widget/Button;

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mcancelBttn:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v4, 0x7f110692

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mSaveBttn:Landroid/widget/Button;

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mSaveBttn:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v4, 0x7f11068b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mDescription:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mDescription:Landroid/widget/TextView;

    iget v5, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->value_spacing:F

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->setLineSpacing(FF)V

    const v4, 0x7f11068c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mTextViewPressTime:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mTextViewPressTime:Landroid/widget/TextView;

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v4, 0x7f11068e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mTextViewSec:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mTextViewSec:Landroid/widget/TextView;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->base_time:J

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->isMobileKeyboardCovered()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mTabAndHoldView:Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a029b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-direct {v5, v8, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mTabAndHoldView:Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;

    invoke-virtual {v4}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->refresh()V

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void

    :cond_1
    iget v4, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_2

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    const/4 v0, -0x1

    :goto_1
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mTabAndHoldView:Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v8, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a029a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->setRetainInstance(Z)V

    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 5

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    const/4 v2, 0x0

    return-object v2

    :pswitch_0
    const/4 v2, 0x1

    iput v2, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mShownDialogId:I

    const v2, 0x7f0b020a

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b1436

    invoke-virtual {v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x1040000

    invoke-virtual {v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b1437

    invoke-virtual {v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mDialog:Landroid/app/Dialog;

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mDialog:Landroid/app/Dialog;

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    const/4 v6, -0x1

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->initDP()V

    const v2, 0x7f0402e4

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f11068f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;

    iput-object v2, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mTabAndHoldView:Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;

    const v2, 0x7f110691

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mcancelBttn:Landroid/widget/Button;

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mcancelBttn:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f110692

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mSaveBttn:Landroid/widget/Button;

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mSaveBttn:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f11068b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mDescription:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mDescription:Landroid/widget/TextView;

    iget v3, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->value_spacing:F

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setLineSpacing(FF)V

    const v2, 0x7f11068c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mTextViewPressTime:Landroid/widget/TextView;

    const v2, 0x7f11068e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mTextViewSec:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mTextViewSec:Landroid/widget/TextView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->isMobileKeyboardCovered()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mTabAndHoldView:Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a029b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-direct {v3, v6, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->setHasOptionsMenu(Z)V

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const/4 v0, -0x1

    :goto_1
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mTabAndHoldView:Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v6, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a029a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    const/4 v1, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mTabAndHoldView:Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;

    invoke-virtual {v0}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->checkLongPressStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->showDialog(I)V

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->finish()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->isOnPause:Z

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mTabAndHoldView:Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->setActivityState(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mTabAndHoldView:Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;

    invoke-virtual {v0}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->checkAndSaveState()V

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->isInFront:Ljava/lang/Boolean;

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b160f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->isInFront:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mTabAndHoldView:Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;

    invoke-virtual {v0, v5}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->setActivityState(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mTabAndHoldView:Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;

    invoke-virtual {v0}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->checkTouchBeforeResume()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mTabAndHoldView:Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;

    invoke-virtual {v0}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->getTouchTime()J

    move-result-wide v0

    const-wide/16 v2, 0x1f4

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mTabAndHoldView:Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;

    invoke-virtual {v0}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->refresh()V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mTextViewSec:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mTextViewPressTime:Landroid/widget/TextView;

    const-string/jumbo v1, "%.2f"

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->isOnConfigChange:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->isOnPause:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->removeDialog(I)V

    :cond_1
    iput-boolean v4, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->isOnPause:Z

    iput-boolean v4, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->isOnConfigChange:Z

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    return-void
.end method
