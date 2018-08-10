.class public Lcom/samsung/android/settings/face/FaceFasterRecognition$FaceFasterRecognitionFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "FaceFasterRecognition.java"

# interfaces
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/face/FaceFasterRecognition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FaceFasterRecognitionFragment"
.end annotation


# instance fields
.field private mDoneBtn:Lcom/samsung/android/settings/widget/BottomBarButton;

.field private mDoneButtonContainer:Landroid/widget/LinearLayout;

.field private mIsSetupwizard:Z

.field private mNextButton:Landroid/view/View;

.field private mPreviousButton:Landroid/view/View;

.field private mSetupwizardButtonContainer:Landroid/view/View;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mUserId:I

.field view:Landroid/view/View;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/face/FaceFasterRecognition$FaceFasterRecognitionFragment;)Lcom/samsung/android/settings/widget/BottomBarButton;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceFasterRecognition$FaceFasterRecognitionFragment;->mDoneBtn:Lcom/samsung/android/settings/widget/BottomBarButton;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/face/FaceFasterRecognition$FaceFasterRecognitionFragment;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/face/FaceFasterRecognition$FaceFasterRecognitionFragment;->setResult(I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    iput v0, p0, Lcom/samsung/android/settings/face/FaceFasterRecognition$FaceFasterRecognitionFragment;->mUserId:I

    iput-boolean v0, p0, Lcom/samsung/android/settings/face/FaceFasterRecognition$FaceFasterRecognitionFragment;->mIsSetupwizard:Z

    return-void
.end method

.method private setIndicatorTransparency()V
    .locals 3

    const/16 v0, 0x3002

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceFasterRecognition$FaceFasterRecognitionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x4a

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v1, "FcstFaceFasterRecognition"

    const-string/jumbo v2, "onCreate"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceFasterRecognition$FaceFasterRecognitionFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "android.intent.extra.USER_ID"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/face/FaceFasterRecognition$FaceFasterRecognitionFragment;->mUserId:I

    const-string/jumbo v1, "fromSetupwizard"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/face/FaceFasterRecognition$FaceFasterRecognitionFragment;->mIsSetupwizard:Z

    const-string/jumbo v1, "FcstFaceFasterRecognition"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "fromSetupwizard : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/samsung/android/settings/face/FaceFasterRecognition$FaceFasterRecognitionFragment;->mIsSetupwizard:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/samsung/android/settings/face/FaceFasterRecognition$FaceFasterRecognitionFragment;->mIsSetupwizard:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceFasterRecognition$FaceFasterRecognitionFragment;->setIndicatorTransparency()V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const v0, 0x7f0d02b9

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/face/FaceFasterRecognition$FaceFasterRecognitionFragment;->view:Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceFasterRecognition$FaceFasterRecognitionFragment;->view:Landroid/view/View;

    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceFasterRecognition$FaceFasterRecognitionFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceFasterRecognition$FaceFasterRecognitionFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceFasterRecognition$FaceFasterRecognitionFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    const-string/jumbo v0, "FcstFaceFasterRecognition"

    const-string/jumbo v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceFasterRecognition$FaceFasterRecognitionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceFasterRecognition$FaceFasterRecognitionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceFasterRecognition$FaceFasterRecognitionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const-string/jumbo v0, "FcstFaceFasterRecognition"

    const-string/jumbo v1, "isDesktopMode or isInMultiWindowMode is TRUE."

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceFasterRecognition$FaceFasterRecognitionFragment;->isRemoving()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceFasterRecognition$FaceFasterRecognitionFragment;->finish()V

    :cond_1
    return-void

    :cond_2
    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceFasterRecognition$FaceFasterRecognitionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/face/FaceFasterRecognition$FaceFasterRecognitionFragment;->mUserId:I

    invoke-static {v0, p2, v1}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->setFaceUnlockRecognitionSpeedUpValue(Landroid/content/Context;ZI)V

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceFasterRecognition$FaceFasterRecognitionFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p2}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const-string/jumbo v2, "FcstFaceFasterRecognition"

    const-string/jumbo v3, "onViewCreated"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v2, 0x7f0a0888

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/settings/widget/SwitchBar;

    iput-object v2, p0, Lcom/samsung/android/settings/face/FaceFasterRecognition$FaceFasterRecognitionFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceFasterRecognition$FaceFasterRecognitionFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceFasterRecognition$FaceFasterRecognitionFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v2, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceFasterRecognition$FaceFasterRecognitionFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v2}, Lcom/android/settings/widget/SwitchBar;->show()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceFasterRecognition$FaceFasterRecognitionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/settings/face/FaceFasterRecognition$FaceFasterRecognitionFragment;->mUserId:I

    invoke-static {v2, v3}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->getFaceUnlockRecognitionSpeedUpValue(Landroid/content/Context;I)Z

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceFasterRecognition$FaceFasterRecognitionFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v2, v0}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    :cond_0
    iget-boolean v2, p0, Lcom/samsung/android/settings/face/FaceFasterRecognition$FaceFasterRecognitionFragment;->mIsSetupwizard:Z

    if-eqz v2, :cond_6

    const v2, 0x7f0a0137

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/samsung/android/settings/face/FaceFasterRecognition$FaceFasterRecognitionFragment;->mSetupwizardButtonContainer:Landroid/view/View;

    const v2, 0x7f0a05eb

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/samsung/android/settings/face/FaceFasterRecognition$FaceFasterRecognitionFragment;->mDoneButtonContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceFasterRecognition$FaceFasterRecognitionFragment;->mDoneButtonContainer:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceFasterRecognition$FaceFasterRecognitionFragment;->mDoneButtonContainer:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceFasterRecognition$FaceFasterRecognitionFragment;->mSetupwizardButtonContainer:Landroid/view/View;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceFasterRecognition$FaceFasterRecognitionFragment;->mSetupwizardButtonContainer:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    const v2, 0x7f0a066e

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/samsung/android/settings/face/FaceFasterRecognition$FaceFasterRecognitionFragment;->mPreviousButton:Landroid/view/View;

    const v2, 0x7f0a05a2

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/samsung/android/settings/face/FaceFasterRecognition$FaceFasterRecognitionFragment;->mNextButton:Landroid/view/View;

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceFasterRecognition$FaceFasterRecognitionFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "show_button_background"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceFasterRecognition$FaceFasterRecognitionFragment;->mPreviousButton:Landroid/view/View;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceFasterRecognition$FaceFasterRecognitionFragment;->mPreviousButton:Landroid/view/View;

    new-instance v3, Lcom/samsung/android/settings/face/FaceFasterRecognition$FaceFasterRecognitionFragment$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/face/FaceFasterRecognition$FaceFasterRecognitionFragment$1;-><init>(Lcom/samsung/android/settings/face/FaceFasterRecognition$FaceFasterRecognitionFragment;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceFasterRecognition$FaceFasterRecognitionFragment;->mNextButton:Landroid/view/View;

    if-eqz v2, :cond_5

    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceFasterRecognition$FaceFasterRecognitionFragment;->mNextButton:Landroid/view/View;

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceFasterRecognition$FaceFasterRecognitionFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0807c2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceFasterRecognition$FaceFasterRecognitionFragment;->mNextButton:Landroid/view/View;

    new-instance v3, Lcom/samsung/android/settings/face/FaceFasterRecognition$FaceFasterRecognitionFragment$2;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/face/FaceFasterRecognition$FaceFasterRecognitionFragment$2;-><init>(Lcom/samsung/android/settings/face/FaceFasterRecognition$FaceFasterRecognitionFragment;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    :goto_0
    return-void

    :cond_6
    const v2, 0x7f0a05e6

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/widget/BottomBarButton;

    iput-object v2, p0, Lcom/samsung/android/settings/face/FaceFasterRecognition$FaceFasterRecognitionFragment;->mDoneBtn:Lcom/samsung/android/settings/widget/BottomBarButton;

    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceFasterRecognition$FaceFasterRecognitionFragment;->mDoneBtn:Lcom/samsung/android/settings/widget/BottomBarButton;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceFasterRecognition$FaceFasterRecognitionFragment;->mDoneBtn:Lcom/samsung/android/settings/widget/BottomBarButton;

    new-instance v3, Lcom/samsung/android/settings/face/FaceFasterRecognition$FaceFasterRecognitionFragment$3;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/face/FaceFasterRecognition$FaceFasterRecognitionFragment$3;-><init>(Lcom/samsung/android/settings/face/FaceFasterRecognition$FaceFasterRecognitionFragment;)V

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/widget/BottomBarButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method
