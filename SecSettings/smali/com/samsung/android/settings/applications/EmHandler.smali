.class public Lcom/samsung/android/settings/applications/EmHandler;
.super Ljava/lang/Object;
.source "EmHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/applications/EmHandler$EmHandlerCallback;,
        Lcom/samsung/android/settings/applications/EmHandler$MainHandler;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mActionObject:Ljava/lang/Object;

.field private mActionType:I

.field private mCallback:Lcom/samsung/android/settings/applications/EmHandler$EmHandlerCallback;

.field private mIsFinished:Z

.field final mMainHandler:Lcom/samsung/android/settings/applications/EmHandler$MainHandler;

.field private mReqRetryCount:I

.field private mReqTimeOut:I

.field private mResult:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

.field private mResultNLG:[Ljava/lang/String;

.field private mScreenNLG:[Ljava/lang/String;

.field private mStateId:Ljava/lang/String;

.field private mStateIdNLG:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/applications/EmHandler;)Lcom/samsung/android/settings/applications/EmHandler$EmHandlerCallback;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/applications/EmHandler;->mCallback:Lcom/samsung/android/settings/applications/EmHandler$EmHandlerCallback;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/settings/applications/EmHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/applications/EmHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/settings/applications/EmHandler$EmHandlerCallback;)V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/settings/applications/EmHandler;->mActionType:I

    iput-object v3, p0, Lcom/samsung/android/settings/applications/EmHandler;->mActionObject:Ljava/lang/Object;

    iput-object v3, p0, Lcom/samsung/android/settings/applications/EmHandler;->mStateId:Ljava/lang/String;

    iput v2, p0, Lcom/samsung/android/settings/applications/EmHandler;->mReqTimeOut:I

    iput v2, p0, Lcom/samsung/android/settings/applications/EmHandler;->mReqRetryCount:I

    iput-boolean v2, p0, Lcom/samsung/android/settings/applications/EmHandler;->mIsFinished:Z

    iput-object v3, p0, Lcom/samsung/android/settings/applications/EmHandler;->mResult:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/settings/applications/EmHandler;->mStateIdNLG:Ljava/lang/String;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, ""

    aput-object v1, v0, v2

    const-string/jumbo v1, ""

    aput-object v1, v0, v4

    const-string/jumbo v1, ""

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/samsung/android/settings/applications/EmHandler;->mScreenNLG:[Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, ""

    aput-object v1, v0, v2

    const-string/jumbo v1, ""

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/samsung/android/settings/applications/EmHandler;->mResultNLG:[Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/settings/applications/EmHandler$MainHandler;

    invoke-direct {v0, p0, v3}, Lcom/samsung/android/settings/applications/EmHandler$MainHandler;-><init>(Lcom/samsung/android/settings/applications/EmHandler;Lcom/samsung/android/settings/applications/EmHandler$MainHandler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/applications/EmHandler;->mMainHandler:Lcom/samsung/android/settings/applications/EmHandler$MainHandler;

    iput-object p1, p0, Lcom/samsung/android/settings/applications/EmHandler;->mCallback:Lcom/samsung/android/settings/applications/EmHandler$EmHandlerCallback;

    return-void
.end method


# virtual methods
.method public exeOptBasicAction(Landroid/content/Context;Landroid/view/Menu;)Z
    .locals 7

    const/4 v6, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/applications/EmHandler;->getActionObj()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    instance-of v3, v1, Ljava/lang/Integer;

    if-eqz v3, :cond_1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz p2, :cond_0

    if-nez v2, :cond_2

    :cond_0
    sget-object v3, Lcom/samsung/android/settings/applications/EmHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "exeOptBasicAction) optionMenu="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", optionRes="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_1
    sget-object v3, Lcom/samsung/android/settings/applications/EmHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "exeOptBasicAction() obj is not integer."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_2
    check-cast p1, Lcom/android/settings/SettingsActivity;

    invoke-virtual {p1}, Lcom/android/settings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const v4, 0x7f0a04ff

    invoke-virtual {v3, v4}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/app/Fragment;->isVisible()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_4

    :cond_3
    sget-object v3, Lcom/samsung/android/settings/applications/EmHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "exeOptBasicAction) currentFrag is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_4
    invoke-interface {p2, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    const/4 v3, 0x1

    return v3
.end method

.method public exePrefBasicAction(Landroid/support/v7/preference/PreferenceScreen;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/settings/applications/EmHandler;->exePrefBasicAction(Landroid/support/v7/preference/PreferenceScreen;Z)Z

    move-result v0

    return v0
.end method

.method public exePrefBasicAction(Landroid/support/v7/preference/PreferenceScreen;Z)Z
    .locals 6

    const/4 v5, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/applications/EmHandler;->getActionObj()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v2, v0, Landroid/support/v7/preference/Preference;

    if-eqz v2, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/support/v7/preference/Preference;

    if-eqz p1, :cond_0

    if-nez v1, :cond_2

    :cond_0
    sget-object v2, Lcom/samsung/android/settings/applications/EmHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "exePrefBasicAction) prefScreen="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", pref="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_1
    sget-object v2, Lcom/samsung/android/settings/applications/EmHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "exePrefBasicAction) obj is not preference."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_2
    invoke-virtual {v1}, Landroid/support/v7/preference/Preference;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Lcom/samsung/android/settings/applications/EmHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "exePrefBasicAction) pref is disabled."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_3
    if-nez p2, :cond_4

    sget-object v2, Lcom/samsung/android/settings/applications/EmHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "exePrefBasicAction) pref.performClick"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Landroid/support/v7/preference/Preference;->performClick()V

    :goto_0
    const/4 v2, 0x1

    return v2

    :cond_4
    sget-object v2, Lcom/samsung/android/settings/applications/EmHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "exePrefBasicAction)  has extra condition/action"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public exeViewBasicAction()Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/applications/EmHandler;->exeViewBasicAction(Z)Z

    move-result v0

    return v0
.end method

.method public exeViewBasicAction(Z)Z
    .locals 6

    const/4 v5, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/applications/EmHandler;->getActionObj()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v2, v0, Landroid/view/View;

    if-eqz v2, :cond_0

    move-object v1, v0

    check-cast v1, Landroid/view/View;

    if-nez v1, :cond_1

    sget-object v2, Lcom/samsung/android/settings/applications/EmHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "exeViewBasicAction) View="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_0
    sget-object v2, Lcom/samsung/android/settings/applications/EmHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "exeViewBasicAction) obj is not preference."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/samsung/android/settings/applications/EmHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "exeViewBasicAction) View is disabled."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_2
    if-nez p1, :cond_3

    sget-object v2, Lcom/samsung/android/settings/applications/EmHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "exeViewBasicAction) view.performClick"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Landroid/view/View;->performClick()Z

    :goto_0
    const/4 v2, 0x1

    return v2

    :cond_3
    sget-object v2, Lcom/samsung/android/settings/applications/EmHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "exeViewBasicAction) view has extra condition/action"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public finish()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/applications/EmHandler;->mIsFinished:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/applications/EmHandler;->mReqRetryCount:I

    iget-object v0, p0, Lcom/samsung/android/settings/applications/EmHandler;->mMainHandler:Lcom/samsung/android/settings/applications/EmHandler$MainHandler;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/applications/EmHandler$MainHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public getActionObj()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/applications/EmHandler;->mActionObject:Ljava/lang/Object;

    return-object v0
.end method

.method public getStateId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/applications/EmHandler;->mStateId:Ljava/lang/String;

    return-object v0
.end method

.method public retryAction()V
    .locals 7

    const/4 v6, 0x1

    const/4 v3, -0x1

    const-wide/16 v4, 0xc8

    sget-object v0, Lcom/samsung/android/settings/applications/EmHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "retryAction()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/samsung/android/settings/applications/EmHandler;->mActionType:I

    if-ne v0, v3, :cond_0

    sget-object v0, Lcom/samsung/android/settings/applications/EmHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Action type is not set."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v0, p0, Lcom/samsung/android/settings/applications/EmHandler;->mReqRetryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/settings/applications/EmHandler;->mReqRetryCount:I

    sget-object v0, Lcom/samsung/android/settings/applications/EmHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mReqRetryCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/settings/applications/EmHandler;->mReqRetryCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", Max ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/settings/applications/EmHandler;->mReqTimeOut:I

    div-int/lit16 v2, v2, 0xc8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/settings/applications/EmHandler;->mIsFinished:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/samsung/android/settings/applications/EmHandler;->mReqRetryCount:I

    iget v1, p0, Lcom/samsung/android/settings/applications/EmHandler;->mReqTimeOut:I

    div-int/lit16 v1, v1, 0xc8

    if-gt v0, v1, :cond_1

    iget v0, p0, Lcom/samsung/android/settings/applications/EmHandler;->mActionType:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/settings/applications/EmHandler;->mMainHandler:Lcom/samsung/android/settings/applications/EmHandler$MainHandler;

    invoke-virtual {v0, v6, v4, v5}, Lcom/samsung/android/settings/applications/EmHandler$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/settings/applications/EmHandler;->mMainHandler:Lcom/samsung/android/settings/applications/EmHandler$MainHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v4, v5}, Lcom/samsung/android/settings/applications/EmHandler$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/settings/applications/EmHandler;->mMainHandler:Lcom/samsung/android/settings/applications/EmHandler$MainHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v4, v5}, Lcom/samsung/android/settings/applications/EmHandler$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/samsung/android/settings/applications/EmHandler;->mMainHandler:Lcom/samsung/android/settings/applications/EmHandler$MainHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v4, v5}, Lcom/samsung/android/settings/applications/EmHandler$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/samsung/android/settings/applications/EmHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Time out to retry"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v6, p0, Lcom/samsung/android/settings/applications/EmHandler;->mIsFinished:Z

    sget-object v0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    iput-object v0, p0, Lcom/samsung/android/settings/applications/EmHandler;->mResult:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    iget-object v0, p0, Lcom/samsung/android/settings/applications/EmHandler;->mMainHandler:Lcom/samsung/android/settings/applications/EmHandler$MainHandler;

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/applications/EmHandler$MainHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public sendResult(Lcom/samsung/android/settings/bixby/EmSettingsManager;)V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/applications/EmHandler;->mResult:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lcom/samsung/android/settings/applications/EmHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "emManager="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mResult="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/applications/EmHandler;->mResult:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/applications/EmHandler;->mResult:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    sget-object v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_2
    const-string/jumbo v0, ""

    iget-object v1, p0, Lcom/samsung/android/settings/applications/EmHandler;->mScreenNLG:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, ""

    iget-object v1, p0, Lcom/samsung/android/settings/applications/EmHandler;->mScreenNLG:[Ljava/lang/String;

    aget-object v1, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    const-string/jumbo v0, ""

    iget-object v1, p0, Lcom/samsung/android/settings/applications/EmHandler;->mScreenNLG:[Ljava/lang/String;

    aget-object v1, v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/applications/EmHandler;->mScreenNLG:[Ljava/lang/String;

    aget-object v0, v0, v3

    iget-object v1, p0, Lcom/samsung/android/settings/applications/EmHandler;->mScreenNLG:[Ljava/lang/String;

    aget-object v1, v1, v4

    iget-object v2, p0, Lcom/samsung/android/settings/applications/EmHandler;->mScreenNLG:[Ljava/lang/String;

    aget-object v2, v2, v5

    invoke-virtual {p1, v0, v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-string/jumbo v0, ""

    iget-object v1, p0, Lcom/samsung/android/settings/applications/EmHandler;->mResultNLG:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string/jumbo v0, ""

    iget-object v1, p0, Lcom/samsung/android/settings/applications/EmHandler;->mResultNLG:[Ljava/lang/String;

    aget-object v1, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/applications/EmHandler;->mResultNLG:[Ljava/lang/String;

    aget-object v0, v0, v3

    iget-object v1, p0, Lcom/samsung/android/settings/applications/EmHandler;->mResultNLG:[Ljava/lang/String;

    aget-object v1, v1, v4

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/applications/EmHandler;->mStateIdNLG:Ljava/lang/String;

    const-string/jumbo v1, "AdvancedNotificationsMoreOptionsResetAppPreferences"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/settings/applications/EmHandler;->mStateIdNLG:Ljava/lang/String;

    const-string/jumbo v1, "AdvancedNotificationsMoreOptionsShowSystemApps"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_5
    const-string/jumbo v0, "Advancednotifications"

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_6
    :goto_0
    sget-object v0, Lcom/samsung/android/settings/applications/EmHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendResult["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/applications/EmHandler;->mStateIdNLG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/applications/EmHandler;->mResult:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mScreenNLG="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/applications/EmHandler;->mScreenNLG:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/applications/EmHandler;->mScreenNLG:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/applications/EmHandler;->mScreenNLG:[Ljava/lang/String;

    aget-object v2, v2, v5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mResultNLG="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/applications/EmHandler;->mResultNLG:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/applications/EmHandler;->mResultNLG:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/applications/EmHandler;->mResult:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_7
    iget-object v0, p0, Lcom/samsung/android/settings/applications/EmHandler;->mStateIdNLG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setAction(ILjava/lang/Object;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/applications/EmHandler;->mActionType:I

    iput-object p2, p0, Lcom/samsung/android/settings/applications/EmHandler;->mActionObject:Ljava/lang/Object;

    iput p3, p0, Lcom/samsung/android/settings/applications/EmHandler;->mReqTimeOut:I

    return-void
.end method

.method public setResult(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Ljava/lang/String;)V
    .locals 6

    const-string/jumbo v3, ""

    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/settings/applications/EmHandler;->setResult(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setResult(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const-string/jumbo v6, ""

    const-string/jumbo v7, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/settings/applications/EmHandler;->setResult(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setResult(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/samsung/android/settings/applications/EmHandler;->mResult:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    iput-object p2, p0, Lcom/samsung/android/settings/applications/EmHandler;->mStateIdNLG:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/settings/applications/EmHandler;->mScreenNLG:[Ljava/lang/String;

    aput-object p3, v0, v2

    iget-object v0, p0, Lcom/samsung/android/settings/applications/EmHandler;->mScreenNLG:[Ljava/lang/String;

    aput-object p4, v0, v3

    iget-object v0, p0, Lcom/samsung/android/settings/applications/EmHandler;->mScreenNLG:[Ljava/lang/String;

    const/4 v1, 0x2

    aput-object p5, v0, v1

    iget-object v0, p0, Lcom/samsung/android/settings/applications/EmHandler;->mResultNLG:[Ljava/lang/String;

    aput-object p6, v0, v2

    iget-object v0, p0, Lcom/samsung/android/settings/applications/EmHandler;->mResultNLG:[Ljava/lang/String;

    aput-object p7, v0, v3

    return-void
.end method

.method public setStateId(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/settings/applications/EmHandler;->mStateId:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/settings/applications/EmHandler;->mCallback:Lcom/samsung/android/settings/applications/EmHandler$EmHandlerCallback;

    invoke-interface {v0, p1}, Lcom/samsung/android/settings/applications/EmHandler$EmHandlerCallback;->setActionType(Ljava/lang/String;)V

    return-void
.end method

.method public startAction()V
    .locals 2

    iget v0, p0, Lcom/samsung/android/settings/applications/EmHandler;->mActionType:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/samsung/android/settings/applications/EmHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Action type is not set."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v0, p0, Lcom/samsung/android/settings/applications/EmHandler;->mActionType:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/settings/applications/EmHandler;->mMainHandler:Lcom/samsung/android/settings/applications/EmHandler$MainHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/applications/EmHandler$MainHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/settings/applications/EmHandler;->mMainHandler:Lcom/samsung/android/settings/applications/EmHandler$MainHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/applications/EmHandler$MainHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/settings/applications/EmHandler;->mMainHandler:Lcom/samsung/android/settings/applications/EmHandler$MainHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/applications/EmHandler$MainHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/samsung/android/settings/applications/EmHandler;->mMainHandler:Lcom/samsung/android/settings/applications/EmHandler$MainHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/applications/EmHandler$MainHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public updateActionObj(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/applications/EmHandler;->mActionObject:Ljava/lang/Object;

    return-void
.end method
