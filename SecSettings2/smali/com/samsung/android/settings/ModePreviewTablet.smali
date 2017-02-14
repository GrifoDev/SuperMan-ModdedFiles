.class public Lcom/samsung/android/settings/ModePreviewTablet;
.super Lcom/android/internal/app/AlertActivity;
.source "ModePreviewTablet.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/ModePreviewTablet$1;
    }
.end annotation


# static fields
.field public static mModePreviewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mModePreviewValueList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAutoAdaptiveTextView:Landroid/widget/TextView;

.field mCurrentSelection:I

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsPositivePressed:Z

.field private mListView:Landroid/widget/ListView;

.field private mMdnie:Lcom/samsung/android/hardware/display/SemMdnieManager;

.field private mModePreviewAdapter:Lcom/samsung/android/settings/ModePreviewAdapter;

.field private mOldSelection:I

.field private mScreenModeObserver:Landroid/database/ContentObserver;


# direct methods
.method static synthetic -wrap0(Lcom/samsung/android/settings/ModePreviewTablet;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/ModePreviewTablet;->updateState()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/ModePreviewTablet;->mModePreviewList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/ModePreviewTablet;->mModePreviewValueList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, -0x1

    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mModePreviewAdapter:Lcom/samsung/android/settings/ModePreviewAdapter;

    iput v1, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mCurrentSelection:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mIsPositivePressed:Z

    iput v1, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mOldSelection:I

    new-instance v0, Lcom/samsung/android/settings/ModePreviewTablet$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/ModePreviewTablet$1;-><init>(Lcom/samsung/android/settings/ModePreviewTablet;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mScreenModeObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method private getDBValueByIndex(I)I
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/ModePreviewTablet;->mModePreviewValueList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private getIndexByDBValue()I
    .locals 5

    const/4 v4, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/ModePreviewTablet;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "screen_mode_automatic_setting"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v4, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/ModePreviewTablet;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "screen_mode_setting"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    sget-object v2, Lcom/samsung/android/settings/ModePreviewTablet;->mModePreviewValueList:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    goto :goto_0
.end method

.method private updateState()V
    .locals 4

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mIsPositivePressed:Z

    invoke-direct {p0}, Lcom/samsung/android/settings/ModePreviewTablet;->getIndexByDBValue()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mCurrentSelection:I

    iget v0, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mCurrentSelection:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    const-string/jumbo v0, "ModePreview"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateState() positoin : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mCurrentSelection:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mListView:Landroid/widget/ListView;

    iget v1, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mCurrentSelection:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    iget-object v0, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mListView:Landroid/widget/ListView;

    iget v1, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mCurrentSelection:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    iget v0, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mCurrentSelection:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mAutoAdaptiveTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mAutoAdaptiveTextView:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "ModePreview"

    const-string/jumbo v1, "updateState() positoin : -1"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public finish()V
    .locals 5

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/ModePreviewTablet;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mIsPositivePressed:Z

    if-nez v2, :cond_1

    iget v2, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mOldSelection:I

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/ModePreviewTablet;->getDBValueByIndex(I)I

    move-result v0

    const-string/jumbo v2, "ModePreview"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SemMdnieManager.setScreenMode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mMdnie:Lcom/samsung/android/hardware/display/SemMdnieManager;

    invoke-virtual {v2, v0}, Lcom/samsung/android/hardware/display/SemMdnieManager;->setScreenMode(I)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/ModePreviewTablet;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "screen_mode_automatic_setting"

    iget v4, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mOldSelection:I

    if-nez v4, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/ModePreviewTablet;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "screen_mode_setting"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mIsPositivePressed:Z

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/ModePreviewTablet;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "mDNIe"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/hardware/display/SemMdnieManager;

    iput-object v1, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mMdnie:Lcom/samsung/android/hardware/display/SemMdnieManager;

    sget-object v1, Lcom/samsung/android/settings/ModePreviewTablet;->mModePreviewList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    sget-object v1, Lcom/samsung/android/settings/ModePreviewTablet;->mModePreviewValueList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    sget-object v1, Lcom/samsung/android/settings/ModePreviewTablet;->mModePreviewList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/samsung/android/settings/ModePreviewTablet;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b05c1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/samsung/android/settings/ModePreviewTablet;->mModePreviewList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/samsung/android/settings/ModePreviewTablet;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b05c0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/samsung/android/settings/ModePreviewTablet;->mModePreviewList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/samsung/android/settings/ModePreviewTablet;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b05c2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/samsung/android/settings/ModePreviewTablet;->mModePreviewList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/samsung/android/settings/ModePreviewTablet;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b05c3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/samsung/android/settings/ModePreviewTablet;->mModePreviewList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/samsung/android/settings/ModePreviewTablet;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b05bc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/samsung/android/settings/ModePreviewTablet;->mModePreviewValueList:Ljava/util/ArrayList;

    const-string/jumbo v2, "4"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/samsung/android/settings/ModePreviewTablet;->mModePreviewValueList:Ljava/util/ArrayList;

    const-string/jumbo v2, "0"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/samsung/android/settings/ModePreviewTablet;->mModePreviewValueList:Ljava/util/ArrayList;

    const-string/jumbo v2, "1"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/samsung/android/settings/ModePreviewTablet;->mModePreviewValueList:Ljava/util/ArrayList;

    const-string/jumbo v2, "2"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/samsung/android/settings/ModePreviewTablet;->mModePreviewValueList:Ljava/util/ArrayList;

    const-string/jumbo v2, "5"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mModePreviewAdapter:Lcom/samsung/android/settings/ModePreviewAdapter;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/settings/ModePreviewAdapter;

    sget-object v2, Lcom/samsung/android/settings/ModePreviewTablet;->mModePreviewList:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v4, v4, v2}, Lcom/samsung/android/settings/ModePreviewAdapter;-><init>(Landroid/content/Context;IILjava/util/ArrayList;)V

    iput-object v1, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mModePreviewAdapter:Lcom/samsung/android/settings/ModePreviewAdapter;

    :cond_0
    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/ModePreviewTablet;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mInflater:Landroid/view/LayoutInflater;

    iget-object v0, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    invoke-virtual {p0}, Lcom/samsung/android/settings/ModePreviewTablet;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0599

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f040183

    invoke-virtual {v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    const v1, 0x7f0b0fd8

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/ModePreviewTablet;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    const v1, 0x7f0b1412

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/ModePreviewTablet;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    iget-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v2, 0x7f11049c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mAutoAdaptiveTextView:Landroid/widget/TextView;

    iget-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v2, 0x7f11024a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v1, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mModePreviewAdapter:Lcom/samsung/android/settings/ModePreviewAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v1, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/ModePreviewTablet;->setupAlert()V

    invoke-direct {p0}, Lcom/samsung/android/settings/ModePreviewTablet;->updateState()V

    iget v1, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mCurrentSelection:I

    iput v1, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mOldSelection:I

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0, p3}, Lcom/samsung/android/settings/ModePreviewTablet;->getDBValueByIndex(I)I

    move-result v0

    const-string/jumbo v2, "ModePreview"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SemMdnieManager.setScreenMode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mMdnie:Lcom/samsung/android/hardware/display/SemMdnieManager;

    invoke-virtual {v2, v0}, Lcom/samsung/android/hardware/display/SemMdnieManager;->setScreenMode(I)Z

    if-nez p3, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mAutoAdaptiveTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/ModePreviewTablet;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "screen_mode_automatic_setting"

    if-nez p3, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/ModePreviewTablet;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "screen_mode_setting"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mAutoAdaptiveTextView:Landroid/widget/TextView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onPause()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/ModePreviewTablet;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mScreenModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 6

    const/4 v5, -0x1

    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v1

    const-string/jumbo v2, "MODE_PREVIEW_POSITION"

    invoke-virtual {p1, v2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string/jumbo v2, "ModePreview"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onRestoreInstanceState restoreMode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " selectMode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "ModePreview"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onRestoreInstanceState mOldSelection : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mOldSelection:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v0, v5, :cond_0

    if-eq v0, v1, :cond_0

    iput v0, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mOldSelection:I

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 4

    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onResume()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/ModePreviewTablet;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_mode_setting"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mScreenModeObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    iget-object v1, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v0

    const-string/jumbo v1, "ModePreview"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onSaveInstanceState position : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " mOldSelection : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mOldSelection:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-boolean v1, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mIsPositivePressed:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mOldSelection:I

    if-eq v0, v1, :cond_0

    const-string/jumbo v1, "MODE_PREVIEW_POSITION"

    iget v2, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mOldSelection:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
