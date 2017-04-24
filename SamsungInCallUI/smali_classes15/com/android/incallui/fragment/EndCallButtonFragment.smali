.class public Lcom/android/incallui/fragment/EndCallButtonFragment;
.super Lcom/android/incallui/fragment/CallButtonFragment;
.source "EndCallButtonFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/incallui/fragment/CallButtonFragment;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/view/View$OnLongClickListener;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# static fields
.field private static final ARG_COLUMNS:Ljava/lang/String; = "ARG_COLUMNS"

.field private static final ARG_MSISDN:Ljava/lang/String; = "ARG_MSISDN"

.field private static final LOG_TAG:Ljava/lang/String; = "EndCallButtonFragment"

.field private static final PAUSE:C = ','

.field private static final SHOW_DELAYED_ENDCALL_BUTTONS:I = 0x64

.field private static final SHOW_DELAYED_ENDCALL_BUTTONS_DELAY:I = 0x1f4

.field public static final SUB_ID_1:I = 0x1

.field public static final SUB_ID_2:I = 0x2

.field public static final SUB_ID_3:I = 0x3

.field private static final UI_ENTRY_POINTS_LOADER:I = 0x1

.field private static final WAIT:C = ';'

.field private static final WILD:C = 'N'


# instance fields
.field private SIM_SLOT_1:I

.field private SIM_SLOT_2:I

.field private isAleadyBlockedNumber:Z

.field private isMultiNmber:Z

.field private isUiEntery:Z

.field private mAction:Ljava/lang/String;

.field protected mAddReminderButton:Landroid/widget/Button;

.field protected mCallPlus:Landroid/widget/Button;

.field protected mEndCallButtonsContainer:Landroid/view/View;

.field protected mEndCallButtonsLayout:Landroid/widget/LinearLayout;

.field protected mEndCallButtonsMiddle:Landroid/view/ViewGroup;

.field protected mEndCallButtonsMiddleStub:Landroid/view/ViewStub;

.field protected mEndCallButtonsUnder:Landroid/view/ViewGroup;

.field protected mEndCallButtonsUpper:Landroid/view/ViewGroup;

.field private mHandler:Landroid/os/Handler;

.field protected mMessageButton:Landroid/widget/Button;

.field protected mSmartCallBlockButton:Landroid/widget/Button;

.field protected mSmartCallReportButton:Landroid/widget/Button;

.field private mSubVoiceCallButton:Landroid/widget/Button;

.field private mSubVoiceCallButtonStub:Landroid/view/ViewStub;

.field private mUri:Ljava/lang/String;

.field protected mVideoCallButton:Landroid/widget/Button;

.field protected mVideoCallButtonStub:Landroid/view/ViewStub;

.field protected mVoiceCallButton:Landroid/widget/Button;

.field protected mVoiceCallMultiSimCallBtnStub:Landroid/view/ViewStub;

.field protected mVoiceCallSim1Button:Landroid/widget/Button;

.field protected mVoiceCallSim2Button:Landroid/widget/Button;

.field private multiSimId:I

.field private subNumberIdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private subNumberPhoneList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/incallui/fragment/CallButtonFragment;-><init>()V

    iput-boolean v1, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->isUiEntery:Z

    iput-object v0, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mAction:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mUri:Ljava/lang/String;

    iput v1, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->SIM_SLOT_1:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->SIM_SLOT_2:I

    iput-boolean v1, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->isMultiNmber:Z

    iput v1, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->multiSimId:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->subNumberIdList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->subNumberPhoneList:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->isAleadyBlockedNumber:Z

    new-instance v0, Lcom/android/incallui/fragment/EndCallButtonFragment$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/fragment/EndCallButtonFragment$1;-><init>(Lcom/android/incallui/fragment/EndCallButtonFragment;)V

    iput-object v0, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/fragment/EndCallButtonFragment;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private getCurrentPhoneId()I
    .locals 5

    const/4 v1, 0x0

    const-string v2, "feature_multisim"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getPhoneId(Lcom/android/incallui/Call;)I

    move-result v1

    :cond_0
    const-string v2, "EndCallButtonFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCurrentPhoneId(), phoneId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method private getPaddingSide(I)I
    .locals 3

    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00ae

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a026c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00af

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a013d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    goto :goto_0
.end method

.method private getPrefixForMcid()Ljava/lang/String;
    .locals 8

    const-string v2, ""

    const-string v5, "support_twophone"

    invoke-static {v5}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    move-object v3, v2

    :goto_0
    return-object v3

    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isTwoPhoneRegistered()Z

    move-result v4

    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/incallui/util/InCallUtils;->getCurrentUserId(Landroid/content/Context;)I

    move-result v5

    if-nez v5, :cond_2

    const/4 v1, 0x1

    :goto_1
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isActiveTwoPhone()Z

    move-result v0

    if-eqz v4, :cond_1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    const-string v2, "*77"

    :cond_1
    const-string v5, "EndCallButtonFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getPrefixForMcid prefix : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private static final isNonSeparator(C)Z
    .locals 1

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x2a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x23

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2b

    if-eq p0, v0, :cond_1

    const/16 v0, 0x4e

    if-eq p0, v0, :cond_1

    const/16 v0, 0x3b

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2c

    if-ne p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private queryForCallPlus()V
    .locals 7

    const/4 v6, 0x1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->getDisconnectingCall()Lcom/android/incallui/Call;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->getDisconnectedCall()Lcom/android/incallui/Call;

    move-result-object v1

    :cond_0
    const-string v3, "EndCallButtonFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "QueryForCallPlus :call : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v2

    const-string v3, "EndCallButtonFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "QueryForCallPlus msisdn : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v3, "ARG_MSISDN"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "ARG_COLUMNS"

    sget-object v4, Lcom/android/incallui/UIEntryPointsContract;->UI_ENTRY_POINTS_UNANSWERED_COLUMNS:[Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v3

    invoke-virtual {v3, v6, v0, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/app/LoaderManager;->destroyLoader(I)V

    goto :goto_0
.end method

.method private removeSubPrefix(ILjava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string v3, "EndCallButtonFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "removeSubPrefix  simId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; mNumber = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x1

    :goto_0
    const/4 v3, 0x3

    if-gt v0, v3, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {p1, v0, v3}, Lcom/android/incallui/InCallUISystemDB;->getSubPrefix(IILandroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-le v1, v3, :cond_0

    const-string v3, ""

    invoke-virtual {p2, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    const-string v3, "EndCallButtonFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "removeSubPrefix   subPre = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; mNumber = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p2
.end method

.method private static stripSeparators(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    if-nez p0, :cond_0

    const/4 v4, 0x0

    :goto_0
    return-object v4

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const-string v4, "InCall"

    const-string v5, "EndCallButtonFragment striping done...."

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private turnOffSpeaker()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->getAudioMode()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->setAudioMode(I)V

    :cond_0
    return-void
.end method

.method private updateMultiSimEndCallButtonDrawable()V
    .locals 7

    const/16 v6, 0x16

    const/16 v5, 0x14

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->SIM_SLOT_1:I

    invoke-static {v3, v5}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getSimImage(II)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->SIM_SLOT_2:I

    invoke-static {v3, v5}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getSimImage(II)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isOnehandModeOn()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->SIM_SLOT_1:I

    invoke-static {v3, v6}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getSimImage(II)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->SIM_SLOT_2:I

    invoke-static {v3, v6}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getSimImage(II)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const-string v2, "EndCallButtonFragment"

    const-string v3, "tien.hien isOnehandModeOn "

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v2, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mVoiceCallSim1Button:Landroid/widget/Button;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mVoiceCallSim1Button:Landroid/widget/Button;

    invoke-virtual {v2, v4, v0, v4, v4}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_1
    iget-object v2, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mVoiceCallSim2Button:Landroid/widget/Button;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mVoiceCallSim2Button:Landroid/widget/Button;

    invoke-virtual {v2, v4, v1, v4, v4}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void
.end method

.method private updatePaddingInternal(Landroid/view/ViewGroup;)V
    .locals 5

    const/4 v4, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_2

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-direct {p0, v0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getPaddingSide(I)I

    move-result v2

    invoke-virtual {p1, v2, v4, v2, v4}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto :goto_0
.end method

.method private updateSmartCallBlockButton()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mSmartCallBlockButton:Landroid/widget/Button;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v0, 0x64

    invoke-static {}, Lcom/android/incallui/smartcall/SmartCallUtil;->getAutoRejectNumber()Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    const/16 v3, 0x64

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mSmartCallBlockButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mSmartCallBlockButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setClickable(Z)V

    iget-object v2, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mSmartCallBlockButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setFocusable(Z)V

    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mSmartCallBlockButton:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mSmartCallBlockButton:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setClickable(Z)V

    iget-object v2, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mSmartCallBlockButton:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setFocusable(Z)V

    goto :goto_1
.end method

.method private voiceCallClicked(I)V
    .locals 1

    invoke-direct {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->turnOffSpeaker()V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->voiceCallClicked(ILjava/lang/String;)V

    return-void
.end method

.method private voiceCallClicked(ILjava/lang/String;)V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/android/incallui/fragment/EndCallButtonFragment;->setEnabled(Z)V

    if-nez p2, :cond_0

    const-string v5, "EndCallButtonFragment"

    const-string v6, "voiceCallClicked: number is null"

    invoke-static {v5, v6, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "telecom"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telecom/TelecomManager;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v4}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccounts()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/PhoneAccountHandle;

    const-string v5, "android.telecom.extra.PHONE_ACCOUNT_HANDLE"

    invoke-virtual {v1, v5, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v5, "disable_call"

    invoke-static {v5}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "simSlot"

    invoke-virtual {v1, v5, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "spam_call_enable"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const-string v5, "support_spam_call"

    invoke-static {v5}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v6, "setUseSpamCallCache"

    if-ne v2, v8, :cond_3

    const-string v5, "true"

    :goto_1
    invoke-virtual {v1, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string v5, "tel"

    const/4 v6, 0x0

    invoke-static {v5, p2, v6}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Landroid/telecom/TelecomManager;->placeCall(Landroid/net/Uri;Landroid/os/Bundle;)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/CallList;->clearDisconnectedTimeoutEvent()Z

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/CallList;->delayToNotify()V

    goto :goto_0

    :cond_3
    const-string v5, "false"

    goto :goto_1
.end method

.method private voiceCallClicked(Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/android/incallui/fragment/EndCallButtonFragment;->setEnabled(Z)V

    if-nez p1, :cond_0

    const-string v3, "EndCallButtonFragment"

    const-string v4, "voiceCallClicked: number is null"

    invoke-static {v3, v4, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "telecom"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/TelecomManager;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v3, "roaming_auto_dial"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isRoamingArea()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "feature_lgt"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v4, "RADDialOption"

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isCallNumberConverted()Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "korea"

    :goto_1
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v3, "support_twophone"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isTwoPhoneRegistered()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v4, "TwoPhoneDialOption"

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isActiveTwoPhone()Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, "twophone"

    :goto_2
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string v3, "feature_multisim"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->setAvailablePhoneAccountHandle(Landroid/content/Context;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "spam_call_enable"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const-string v3, "support_spam_call"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v4, "setUseSpamCallCache"

    if-ne v1, v6, :cond_8

    const-string v3, "true"

    :goto_3
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const-string v3, "jansky_info_for_tmo"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "jansky_msisdn"

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->getLineMSISDN()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    const-string v3, "tel"

    const/4 v4, 0x0

    invoke-static {v3, p1, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Landroid/telecom/TelecomManager;->placeCall(Landroid/net/Uri;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_6
    const-string v3, "abroad"

    goto :goto_1

    :cond_7
    const-string v3, "onephone"

    goto :goto_2

    :cond_8
    const-string v3, "false"

    goto :goto_3
.end method


# virtual methods
.method protected changeMessageIcon()V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-static {}, Lcom/android/incallui/util/SystemServiceUtils;->isImsRegistered()Z

    move-result v1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/sec/ims/options/Capabilities;->FEATURE_CHAT:I

    invoke-static {v3, v4}, Lcom/android/incallui/util/InCallUtils;->checkIMSCapability(Landroid/content/Context;I)Z

    move-result v0

    const-string v3, "common_volte_kor"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/sec/ims/options/Capabilities;->FEATURE_SESSION_MODE_MSG:I

    invoke-static {v3, v4}, Lcom/android/incallui/util/InCallUtils;->checkIMSCapability(Landroid/content/Context;I)Z

    move-result v0

    :cond_0
    const-string v3, "EndCallButtonFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isIMSReg: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", isIMSCapa: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v7}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    const-string v3, "changeMessageIcon()"

    invoke-static {p0, v3, v7}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02019f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mMessageButton:Landroid/widget/Button;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mMessageButton:Landroid/widget/Button;

    invoke-virtual {v3, v6, v2, v6, v6}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method protected changeVideoCallIcon(Z)V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mVideoCallButton:Landroid/widget/Button;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    const-string v1, "usa_gsm_volte_ui"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "att_volte_ui"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "tmo_volte_ui"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/util/InCallUtils;->isCapableVideoCall(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    const v1, 0x7f0201a5

    :goto_1
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mVideoCallButton:Landroid/widget/Button;

    invoke-virtual {v1, v3, v0, v3, v3}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_3
    const v1, 0x7f0201a6

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mVideoCallButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/incallui/util/InCallUtils;->isCapableVideoCall(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method public checkMulitNumberServiceEnable()Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "sub_number_enable_cmcc"

    invoke-static {v2, v1}, Lcom/android/incallui/InCallUISystemDB;->getSettingDB(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public checkMultivalue()Z
    .locals 5

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "sub_number_enable_cmcc"

    invoke-static {v4, v3}, Lcom/android/incallui/InCallUISystemDB;->getSettingDB(Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_0

    move v0, v2

    :goto_0
    const-string v4, "sub_keypad_cmcc_preference"

    invoke-static {v4, v3}, Lcom/android/incallui/InCallUISystemDB;->getSettingDB(Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_1

    move v1, v2

    :goto_1
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    :goto_2
    return v2

    :cond_0
    move v0, v3

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_1

    :cond_2
    move v2, v3

    goto :goto_2
.end method

.method protected enableEndCallUnderButtons(Ljava/lang/Boolean;)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mVoiceCallButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mVoiceCallButton:Landroid/widget/Button;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mVideoCallButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mVideoCallButton:Landroid/widget/Button;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mMessageButton:Landroid/widget/Button;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mMessageButton:Landroid/widget/Button;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mVoiceCallSim1Button:Landroid/widget/Button;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mVoiceCallSim1Button:Landroid/widget/Button;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mVoiceCallSim2Button:Landroid/widget/Button;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mVoiceCallSim2Button:Landroid/widget/Button;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_4
    return-void
.end method

.method protected enableEndCallUpperButtons(Ljava/lang/Boolean;)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mSmartCallBlockButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mSmartCallBlockButton:Landroid/widget/Button;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mSmartCallReportButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mSmartCallReportButton:Landroid/widget/Button;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mAddReminderButton:Landroid/widget/Button;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mAddReminderButton:Landroid/widget/Button;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_2
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method protected getNumber()Ljava/lang/String;
    .locals 9

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v4, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/contacts/common/util/TelephonyManagerUtils;->getVoiceMailAlphaTag(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "emergency_find_lost_phone"

    invoke-static {v6}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->originalNumber:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v4, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->originalNumber:Ljava/lang/String;

    :cond_0
    :goto_0
    return-object v4

    :cond_1
    iget-object v6, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->originalNumber:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    iget-boolean v6, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isEmergency:Z

    if-nez v6, :cond_2

    iget-boolean v6, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isVoiceMail:Z

    if-eqz v6, :cond_3

    :cond_2
    const-string v6, "EndCallButtonFragment"

    const-string v7, "getNumber(), set original number"

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v4, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->originalNumber:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const-string v6, "roaming_auto_dial"

    invoke-static {v6}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isRoamingArea()Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, "feature_lgt"

    invoke-static {v6}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isCallNumberConverted()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {}, Lcom/android/incallui/util/NameNumberUtils;->getOriginalNumber()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_4
    iget-object v6, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->originalNumber:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/contacts/common/util/TelephonyManagerUtils;->getCurrentCountryIso(Landroid/content/Context;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget-object v6, v6, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v6}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    :cond_5
    iget-object v6, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->originalNumber:Ljava/lang/String;

    invoke-static {v6, v1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v6, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->originalNumber:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/incallui/util/NameNumberUtils;->isKorIsoWithNationalNumber(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "EndCallButtonFragment"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getNumber(), set original number for kor iso"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->originalNumber:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->originalNumber:Ljava/lang/String;

    goto/16 :goto_0

    :cond_6
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/incallui/util/InCallUtils;->getVoiceMailNumber(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0
.end method

.method public getPhoneNumber(Landroid/content/Context;Lcom/android/incallui/Call;)Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    invoke-static {p1}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/incallui/fragment/EndCallButtonFragment;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getSubPhone(IILandroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, "EndCallButtonFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSubPreNumber simId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";  subNumberId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    packed-switch p2, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    if-nez p1, :cond_0

    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "SUB_PHONE_NUMBER_ONE"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "SUB_PHONE_NUMBER_ONE_SIM2"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    if-nez p1, :cond_1

    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "SUB_PHONE_NUMBER_TWO"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "SUB_PHONE_NUMBER_TWO_SIM2"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    if-nez p1, :cond_2

    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "SUB_PHONE_NUMBER_THREE"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "SUB_PHONE_NUMBER_THREE_SIM2"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected getVoWifiTracker()Lcom/android/incallui/util/VoWifiStateTracker;
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/util/VoWifiStateTracker;->getInstance(Landroid/content/Context;)Lcom/android/incallui/util/VoWifiStateTracker;

    move-result-object v0

    return-object v0
.end method

.method protected hideDelayedEndCallButtonsLayout()V
    .locals 5

    const/16 v4, 0x64

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mEndCallButtonsLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mEndCallButtonsLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v0, 0x1

    :cond_0
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    return-void

    :cond_1
    const-string v1, "EndCallButtonFragment"

    const-string v2, "hideDelayedEndCallButtonsLayout send SHOW_DELAYED_ENDCALL_BUTTONS"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->updateEndCallButtons()V

    goto :goto_0
.end method

.method public isEnabledTwoPhoneEndButtons()Z
    .locals 1

    const-string v0, "support_twophone"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isTwoPhoneRegistered()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/util/InCallUtils;->getCurrentUserId(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isActiveTwoPhone()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/util/InCallUtils;->getCurrentUserId(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isActiveTwoPhone()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected messageClicked()V
    .locals 9

    const/4 v8, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/android/incallui/fragment/EndCallButtonFragment;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getNumber()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    const-string v5, "EndCallButtonFragment"

    const-string v6, "messageClicked: number is null"

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void

    :cond_0
    const/4 v3, 0x0

    const-string v5, "support_twophone"

    invoke-static {v5}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isActiveTwoPhone()Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "*77"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_1
    const-string v5, "jansky_info_for_tmo"

    invoke-static {v5}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->getLineMSISDN()Ljava/lang/String;

    move-result-object v3

    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.SENDTO"

    const-string v6, "smsto"

    const-string v7, ""

    invoke-static {v6, v7, v8}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v0}, Lcom/android/incallui/util/InCallUtils;->isIntentRegistered(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v5

    if-eqz v5, :cond_4

    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.SENDTO"

    const-string v6, "sms"

    invoke-static {v6, v4, v8}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v5, 0x14000000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v5, "jansky_info_for_tmo"

    invoke-static {v5}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "EndCallButtonFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "messageClicked: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "jansky_msisdn"

    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_3
    :try_start_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    const-string v5, "EndCallButtonFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "startActivity() failed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v5, "com.sec.android.app.popupuireceiver"

    const-string v6, "com.sec.android.app.popupuireceiver.DisableApp"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "app_package_name"

    invoke-static {}, Lcom/android/incallui/InCallUIFeature;->getMessagePackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v5, 0x10000000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v1

    const-string v5, "EndCallButtonFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "startActivity() failed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public multiNumberCall(I)V
    .locals 10

    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/android/incallui/fragment/EndCallButtonFragment;->setEnabled(Z)V

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getNumber()Ljava/lang/String;

    move-result-object v3

    const-string v7, "feature_multisim"

    invoke-static {v7}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-direct {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getCurrentPhoneId()I

    move-result v7

    invoke-direct {p0, v7, v3}, Lcom/android/incallui/fragment/EndCallButtonFragment;->removeSubPrefix(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_0
    iget v4, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->multiSimId:I

    if-lez p1, :cond_3

    move v0, p1

    if-eqz v3, :cond_1

    if-lez v0, :cond_1

    new-instance v2, Landroid/content/Intent;

    const-string v7, "android.intent.action.CALL_PRIVILEGED"

    const-string v8, "tel"

    const/4 v9, 0x0

    invoke-static {v8, v3, v9}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-direct {v2, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v7, 0x10000000

    invoke-virtual {v2, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v7, "MultiSubCall"

    const/4 v8, 0x1

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v7, "subNumberId"

    invoke-virtual {v2, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v7, "feature_multisim"

    invoke-static {v7}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "telecom"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telecom/TelecomManager;

    invoke-virtual {v6}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccounts()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telecom/PhoneAccountHandle;

    const-string v7, "android.telecom.extra.PHONE_ACCOUNT_HANDLE"

    invoke-virtual {v2, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/incallui/fragment/EndCallButtonFragment;->startActivity(Landroid/content/Intent;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-direct {p0, v8, v3}, Lcom/android/incallui/fragment/EndCallButtonFragment;->removeSubPrefix(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_3
    const-string v7, "feature_multisim"

    invoke-static {v7}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    invoke-direct {p0, v3}, Lcom/android/incallui/fragment/EndCallButtonFragment;->voiceCallClicked(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    invoke-direct {p0, v4, v3}, Lcom/android/incallui/fragment/EndCallButtonFragment;->voiceCallClicked(ILjava/lang/String;)V

    goto :goto_1
.end method

.method protected needToShowVideoCallButton(ZLcom/android/incallui/Call;)Z
    .locals 11

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isSafetyAssistanceMode()Z

    move-result v0

    invoke-static {}, Lcom/android/incallui/util/ImsCommonUtils;->isAvailablePSVT()Z

    move-result v2

    const-string v7, "feature_multisim"

    invoke-static {v7}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-static {}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getDefaultVoiceSubscriptionId()I

    move-result v7

    invoke-static {v7}, Lcom/android/incallui/util/ImsCommonUtils;->isAvailablePSVT(I)Z

    move-result v2

    :cond_0
    const-string v7, "vzw_volte_ui"

    invoke-static {v7}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    const/high16 v7, 0x10000000

    invoke-virtual {p2, v7}, Lcom/android/incallui/Call;->can(I)Z

    move-result v3

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->getTtySetting()I

    move-result v7

    if-nez v7, :cond_2

    move v1, v5

    :goto_0
    if-eqz v3, :cond_3

    if-eqz v2, :cond_3

    if-eqz v1, :cond_3

    move v4, v5

    :goto_1
    const-string v7, "EndCallButtonFragment"

    const-string v8, "showVideoCall - modifyCall : %b, isVTReg : %b, isTtyOff : %b"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v9, v6

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v9, v5

    const/4 v5, 0x2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v9, v5

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v4

    :cond_1
    :goto_2
    return v6

    :cond_2
    move v1, v6

    goto :goto_0

    :cond_3
    move v4, v6

    goto :goto_1

    :cond_4
    const-string v7, "usa_gsm_volte_ui"

    invoke-static {v7}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    const-string v5, "psvt_support"

    invoke-static {v5}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    goto :goto_2

    :cond_5
    const-string v7, "hide_vt_button_during_unsupported"

    invoke-static {v7}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    const-string v7, "csvt_supprt"

    invoke-static {v7}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_6

    const-string v7, "psvt_support"

    invoke-static {v7}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    if-eqz v2, :cond_1

    :cond_6
    const-string v7, "vicommon_enabled"

    invoke-static {v7}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "block_vt_outgoing"

    invoke-static {v7}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallUIConfig;->isSEATELSIM()Z

    move-result v7

    if-nez v7, :cond_1

    if-nez v0, :cond_1

    const-string v7, "BLOCK_VT_DURING_PS_CALL"

    invoke-static {v7}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_7

    invoke-static {}, Lcom/android/incallui/InCallUIConfig;->isEVRSIM()Z

    move-result v7

    if-nez v7, :cond_7

    invoke-static {}, Lcom/android/incallui/InCallUIConfig;->isCellCSIM()Z

    move-result v7

    if-eqz v7, :cond_8

    :cond_7
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isPSDomain()Z

    move-result v7

    if-nez v7, :cond_1

    :cond_8
    const-string v6, "EndCallButtonFragment"

    const-string v7, "needToShowVideoCallButton : true"

    invoke-static {v6, v7}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v5

    goto :goto_2
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/incallui/fragment/CallButtonFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->isShowMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mEndCallButtonsContainer:Landroid/view/View;

    iget-object v1, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mEndCallButtonsUpper:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mEndCallButtonsUnder:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/incallui/fragment/EndCallButtonFragment;->updateVerticalMargin(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 11

    const/4 v10, 0x0

    const/4 v9, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    const-string v6, "EndCallButtonFragment"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onClick(View "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", id "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")..."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7, v10}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    sparse-switch v3, :sswitch_data_0

    const-string v6, "EndCallButtonFragment"

    const-string v7, "onClick: unexpected"

    invoke-static {v6, v7}, Lcom/android/incallui/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    invoke-static {v0}, Lcom/android/incallui/util/CommonAppLogging;->endCall_voiceCallButton(Lcom/android/incallui/Call;)V

    const-string v6, "multi_number_cmcc"

    invoke-static {v6}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->checkMulitNumberServiceEnable()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-direct {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getCurrentPhoneId()I

    move-result v6

    invoke-virtual {p0, v6, v9}, Lcom/android/incallui/fragment/EndCallButtonFragment;->setMultiNumberCall(IZ)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->voiceCallClicked()V

    goto :goto_0

    :sswitch_1
    invoke-static {v0}, Lcom/android/incallui/util/CommonAppLogging;->endCall_voiceCallSim1Button(Lcom/android/incallui/Call;)V

    const-string v6, "multi_number_cmcc"

    invoke-static {v6}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->checkMulitNumberServiceEnable()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p0, v10, v9}, Lcom/android/incallui/fragment/EndCallButtonFragment;->setMultiNumberCall(IZ)V

    goto :goto_0

    :cond_2
    iget v6, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->SIM_SLOT_1:I

    invoke-direct {p0, v6}, Lcom/android/incallui/fragment/EndCallButtonFragment;->voiceCallClicked(I)V

    goto :goto_0

    :sswitch_2
    invoke-static {v0}, Lcom/android/incallui/util/CommonAppLogging;->endCall_voiceCallSim2Button(Lcom/android/incallui/Call;)V

    const-string v6, "multi_number_cmcc"

    invoke-static {v6}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->checkMulitNumberServiceEnable()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {p0, v9, v9}, Lcom/android/incallui/fragment/EndCallButtonFragment;->setMultiNumberCall(IZ)V

    goto :goto_0

    :cond_3
    iget v6, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->SIM_SLOT_2:I

    invoke-direct {p0, v6}, Lcom/android/incallui/fragment/EndCallButtonFragment;->voiceCallClicked(I)V

    goto :goto_0

    :sswitch_3
    invoke-static {v0}, Lcom/android/incallui/util/CommonAppLogging;->endCall_videoCallButton(Lcom/android/incallui/Call;)V

    sget-boolean v6, Lcom/android/incallui/service/vt/VideoCallConfig;->UI_DATA_USAGE_LIMITED_GSM:Z

    if-eqz v6, :cond_4

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->checkAndNotifyDataUsageLimit()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->videoCallClicked()V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->videoCallClicked()V

    goto :goto_0

    :sswitch_4
    const-string v6, "ims_crane"

    invoke-static {v6}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getPhoneNumber(Landroid/content/Context;Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Munish number="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string v6, "com.samsung.crane.addreason.LAUNCH"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    if-eqz v5, :cond_5

    const-string v6, "sip"

    invoke-virtual {v4, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_5
    :try_start_0
    invoke-virtual {p0, v4}, Lcom/android/incallui/fragment/EndCallButtonFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Did not find AddReason activity..."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v6

    check-cast v6, Lcom/android/incallui/CallButtonPresenter;

    iget-object v7, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mAction:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mUri:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lcom/android/incallui/CallButtonPresenter;->callPlusClicked(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_5
    invoke-static {v0}, Lcom/android/incallui/util/CommonAppLogging;->endCall_messageButton(Lcom/android/incallui/Call;)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->messageClicked()V

    goto/16 :goto_0

    :sswitch_6
    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "com.android.incallui"

    const-string v8, "EVCB"

    const-string v9, "EVOC"

    invoke-static {v6, v7, v8, v9}, Lcom/android/incallui/util/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getCurrentPhoneId()I

    move-result v6

    invoke-virtual {p0, v6, v10}, Lcom/android/incallui/fragment/EndCallButtonFragment;->setMultiNumberCall(IZ)V

    goto/16 :goto_0

    :sswitch_7
    const-string v6, "onClick spam_reject"

    invoke-static {p0, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v6, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->isAleadyBlockedNumber:Z

    invoke-static {v0, v6}, Lcom/android/incallui/util/CommonAppLogging;->endCall_blockNumber(Lcom/android/incallui/Call;Z)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v0}, Lcom/android/incallui/util/PackageHelpers;->spamBlockClicked(Landroid/content/Context;Lcom/android/incallui/Call;)V

    goto/16 :goto_0

    :sswitch_8
    const-string v6, "onClick spam_report"

    invoke-static {p0, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/incallui/util/CommonAppLogging;->endCall_reportNumber(Lcom/android/incallui/Call;)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v0}, Lcom/android/incallui/util/PackageHelpers;->spamReportClicked(Landroid/content/Context;Lcom/android/incallui/Call;)V

    goto/16 :goto_0

    :sswitch_9
    const-string v6, "onClick add reminder"

    invoke-static {p0, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "end"

    invoke-static {v6, v7}, Lcom/android/incallui/util/InCallUtils;->sendBroadcastReminder(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f100115 -> :sswitch_1
        0x7f100116 -> :sswitch_2
        0x7f100117 -> :sswitch_6
        0x7f100118 -> :sswitch_3
        0x7f10019d -> :sswitch_4
        0x7f1001ce -> :sswitch_0
        0x7f1001cf -> :sswitch_5
        0x7f1001d0 -> :sswitch_3
        0x7f100282 -> :sswitch_7
        0x7f100283 -> :sswitch_8
        0x7f100284 -> :sswitch_9
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/incallui/fragment/CallButtonFragment;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "ims_crane"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->queryForCallPlus()V

    :cond_0
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x0

    const-string v0, "ARG_MSISDN"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v0, "ARG_COLUMNS"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    packed-switch p1, :pswitch_data_0

    move-object v0, v4

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "EndCallButtonFragment"

    const-string v1, "onCreateLoader UI_ENTRY_POINTS_LOADER :"

    const/4 v5, 0x1

    invoke-static {v0, v1, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object v0, Lcom/android/incallui/UIEntryPointsContract;->UI_ENTRY_POINTS_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v0, Landroid/content/CursorLoader;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    const/4 v6, 0x0

    const/4 v3, 0x0

    const v2, 0x7f0400d0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/UiAdapter;->isShowMultiWindowMode()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const v2, 0x7f0400d1

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    :cond_1
    const v2, 0x7f100289

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mNavigationBarArea:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->updateNavigationBar()V

    const-string v2, "multi_number_cmcc"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->checkMultivalue()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->isMultiNmber:Z

    const-string v2, "EndCallButtonFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isMultiNmber="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->isMultiNmber:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const v2, 0x7f1001cd

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mEndCallButtonsLayout:Landroid/widget/LinearLayout;

    const v2, 0x7f100280

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mEndCallButtonsContainer:Landroid/view/View;

    const v2, 0x7f100281

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mEndCallButtonsUpper:Landroid/view/ViewGroup;

    const v2, 0x7f100285

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mEndCallButtonsUnder:Landroid/view/ViewGroup;

    const v2, 0x7f1001ce

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mVoiceCallButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mVoiceCallButton:Landroid/widget/Button;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mVoiceCallButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mVoiceCallButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_3
    const v2, 0x7f1001d0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mVideoCallButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mVideoCallButton:Landroid/widget/Button;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mVideoCallButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    const v2, 0x7f1001cf

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mMessageButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mMessageButton:Landroid/widget/Button;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mMessageButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mMessageButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/incallui/util/SystemServiceUtils;->isSmsCapable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_f

    move v2, v3

    :goto_0
    invoke-virtual {v4, v2}, Landroid/widget/Button;->setVisibility(I)V

    :cond_5
    const-string v2, "ims_crane"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    const v2, 0x7f100286

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    iput-object v2, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mEndCallButtonsMiddleStub:Landroid/view/ViewStub;

    iget-object v2, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mEndCallButtonsMiddleStub:Landroid/view/ViewStub;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mEndCallButtonsMiddleStub:Landroid/view/ViewStub;

    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const v2, 0x7f10028a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mEndCallButtonsMiddle:Landroid/view/ViewGroup;

    const v2, 0x7f10019d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mCallPlus:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mCallPlus:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6
    const-string v2, "multi_number_cmcc"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    const v2, 0x7f100288

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    iput-object v2, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mSubVoiceCallButtonStub:Landroid/view/ViewStub;

    iget-object v2, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mSubVoiceCallButtonStub:Landroid/view/ViewStub;

    if-eqz v2, :cond_7

    iget-boolean v2, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->isMultiNmber:Z

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mSubVoiceCallButtonStub:Landroid/view/ViewStub;

    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    iget-object v2, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mSubVoiceCallButtonStub:Landroid/view/ViewStub;

    invoke-virtual {v2, v3}, Landroid/view/ViewStub;->setVisibility(I)V

    const v2, 0x7f100117

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mSubVoiceCallButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mSubVoiceCallButton:Landroid/widget/Button;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mSubVoiceCallButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mSubVoiceCallButton:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    :cond_7
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->supportSmartCallButton()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-static {v2, v6, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/incallui/smartcall/SmartCallUtil;->checkAlreadyCallBlocked(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    const/4 v2, 0x1

    :goto_1
    iput-boolean v2, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->isAleadyBlockedNumber:Z

    const v2, 0x7f100282

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mSmartCallBlockButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mSmartCallBlockButton:Landroid/widget/Button;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mSmartCallBlockButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v2, "support_spam_call_report"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mSmartCallBlockButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090137

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_8
    :goto_2
    const v2, 0x7f100283

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mSmartCallReportButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mSmartCallReportButton:Landroid/widget/Button;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mSmartCallReportButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v2, "support_spam_call_report"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mSmartCallReportButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090139

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    const-string v2, "show_reminder_button"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "com.samsung.android.app.reminder"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->isApplicationEnabled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    const v2, 0x7f100284

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mAddReminderButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mAddReminderButton:Landroid/widget/Button;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mAddReminderButton:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mAddReminderButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_a
    const-string v2, "feature_multisim"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {p0, v1}, Lcom/android/incallui/fragment/EndCallButtonFragment;->updateMultiSimEndCallButton(Landroid/view/View;)V

    :cond_b
    const-string v2, "usa_gsm_volte_ui"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    const-string v2, "psvt_support"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/incallui/fragment/EndCallButtonFragment;->changeVideoCallIcon(Z)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->updatePadding()V

    :cond_c
    const-string v2, "ims_capability_check_on_call_end"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->changeMessageIcon()V

    :cond_d
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Contact_SupportWhitePages"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/whitepages/nameid/NameIDHelper;->isNameIDInstalledAndEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/whitepages/nameid/NameIDHelper;->init(Landroid/content/Context;)V

    :cond_e
    return-object v1

    :cond_f
    const/16 v2, 0x8

    goto/16 :goto_0

    :cond_10
    move v2, v3

    goto/16 :goto_1

    :cond_11
    iget-boolean v2, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->isAleadyBlockedNumber:Z

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mSmartCallBlockButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0201a3

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v6, v4, v6, v6}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mSmartCallBlockButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0902c6

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2
.end method

.method public onDestroyView()V
    .locals 2

    const/16 v1, 0x64

    iget-object v0, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/CallList;->setOutgoingCallPlusFlag(Z)V

    invoke-static {}, Lcom/android/incallui/util/VideoCallAppLogging;->resetRotationValue()V

    invoke-super {p0}, Lcom/android/incallui/fragment/CallButtonFragment;->onDestroyView()V

    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0, p2}, Lcom/android/incallui/fragment/EndCallButtonFragment;->updateView(Landroid/database/Cursor;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/android/incallui/fragment/EndCallButtonFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/incallui/fragment/EndCallButtonFragment;->updateView(Landroid/database/Cursor;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "EndCallButtonFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onLongClick(View "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    packed-switch v0, :pswitch_data_0

    :goto_0
    const/4 v1, 0x0

    return v1

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->voiceCallLongClicked()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f1001ce
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Lcom/android/incallui/fragment/CallButtonFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/android/incallui/fragment/CallButtonFragment;->onResume()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/android/incallui/fragment/EndCallButtonFragment$2;

    invoke-direct {v1, p0}, Lcom/android/incallui/fragment/EndCallButtonFragment$2;-><init>(Lcom/android/incallui/fragment/EndCallButtonFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->updateEndCallButtons()V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 4

    const v1, 0x3ecccccd    # 0.4f

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mVoiceCallButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mVoiceCallButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mVideoCallButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mVideoCallButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mMessageButton:Landroid/widget/Button;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mMessageButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mSmartCallBlockButton:Landroid/widget/Button;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mSmartCallBlockButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mSmartCallReportButton:Landroid/widget/Button;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mSmartCallReportButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mAddReminderButton:Landroid/widget/Button;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mAddReminderButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_5
    const-string v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mVoiceCallSim1Button:Landroid/widget/Button;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mVoiceCallSim1Button:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    if-nez p1, :cond_6

    iget-object v0, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mVoiceCallSim1Button:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setAlpha(F)V

    :cond_6
    iget-object v0, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mVoiceCallSim2Button:Landroid/widget/Button;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mVoiceCallSim2Button:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    if-nez p1, :cond_7

    iget-object v0, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mVoiceCallSim2Button:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setAlpha(F)V

    :cond_7
    const-string v0, "multi_number_cmcc"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mSubVoiceCallButton:Landroid/widget/Button;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mSubVoiceCallButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_8
    const-string v0, "support_twophone"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isTwoPhoneRegistered()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->isEnabledTwoPhoneEndButtons()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->enableEndCallUpperButtons(Ljava/lang/Boolean;)V

    :cond_9
    const-string v0, "feature_lgt"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isRoamingArea()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "support_volte_roaming"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {}, Lcom/android/incallui/util/ImsCommonUtils;->isAvailablePSVT()Z

    move-result v0

    if-nez v0, :cond_b

    :cond_a
    const-string v0, "EndCallButtonFragment"

    const-string v1, "The LGU+ does not support VT on the roaming area."

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mVideoCallButton:Landroid/widget/Button;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mVideoCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_b
    :goto_0
    return-void

    :cond_c
    const-string v0, "att_volte_ui"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, Lcom/android/incallui/util/ImsCommonUtils;->isATTVideoCallEnabled()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mVideoCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method public setMultiNumberCall(IZ)V
    .locals 13

    const-string v0, "EndCallButtonFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " setMultiNumberCall isMain = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; simId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->subNumberIdList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->subNumberPhoneList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->checkMultivalue()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/fragment/EndCallButtonFragment;->removeSubPrefix(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->voiceCallClicked(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/fragment/EndCallButtonFragment;->removeSubPrefix(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->voiceCallClicked(ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    iget-object v0, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->subNumberIdList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->subNumberPhoneList:Ljava/util/ArrayList;

    add-int/lit8 v7, v6, 0x1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0901d1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    move v6, v7

    :cond_3
    const/4 v8, 0x0

    :goto_1
    const/4 v0, 0x3

    if-ge v8, v0, :cond_5

    add-int/lit8 v0, v8, 0x1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getSubPhone(IILandroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_4

    iget-object v0, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->subNumberPhoneList:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0902d4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v11, 0x0

    add-int/lit8 v12, v8, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v5, v11

    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->subNumberIdList:Ljava/util/ArrayList;

    add-int/lit8 v1, v8, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v6, v6, 0x1

    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_5
    const-string v0, "EndCallButtonFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " setMultiNumberCall count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v6, :cond_6

    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/incallui/fragment/EndCallButtonFragment;->showSubNumberDialog(Landroid/content/Context;ILjava/lang/String;[Ljava/lang/String;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    :cond_6
    const/4 v0, 0x1

    if-ne v6, v0, :cond_9

    if-eqz p2, :cond_8

    const-string v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/fragment/EndCallButtonFragment;->removeSubPrefix(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->voiceCallClicked(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/fragment/EndCallButtonFragment;->removeSubPrefix(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->voiceCallClicked(ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    iput p1, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->multiSimId:I

    iget-object v0, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->subNumberIdList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->multiNumberCall(I)V

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->subNumberPhoneList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v4, v0, [Ljava/lang/String;

    if-lez v6, :cond_0

    const/4 v9, 0x0

    :goto_2
    iget-object v0, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->subNumberPhoneList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v9, v0, :cond_a

    iget-object v0, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->subNumberPhoneList:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v4, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_a
    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getNumber()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->subNumberIdList:Ljava/util/ArrayList;

    move-object v0, p0

    move v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/incallui/fragment/EndCallButtonFragment;->showSubNumberDialog(Landroid/content/Context;ILjava/lang/String;[Ljava/lang/String;Ljava/util/ArrayList;)V

    goto/16 :goto_0
.end method

.method public showDelayedEndCallButtonsLayout()V
    .locals 6

    const/16 v5, 0x64

    const-string v2, "EndCallButtonFragment"

    const-string v3, "showDelayedEndCallButtonsLayout"

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->hasLiveCallToDisplay()Z

    move-result v1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/16 v3, 0xa

    if-eq v2, v3, :cond_1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/16 v3, 0x9

    if-eq v2, v3, :cond_1

    const-string v2, "EndCallButtonFragment"

    const-string v3, "hasLiveCall(), mEndCallButtonsLayout is GONE"

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mEndCallButtonsLayout:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "EndCallButtonFragment"

    const-string v3, "showDelayedEndCallButtonsLayout remove SHOW_DELAYED_ENDCALL_BUTTONS"

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->updateEndCallButtons()V

    goto :goto_0
.end method

.method public showMultiCall(Z)V
    .locals 2

    const/16 v0, 0x80

    invoke-static {v0}, Lcom/android/incallui/util/InCallUtils;->needToDisableForKnox(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mSubVoiceCallButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mSubVoiceCallButton:Landroid/widget/Button;

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    :cond_1
    return-void

    :cond_2
    const/16 v0, 0x8

    goto :goto_0
.end method

.method protected showSmartCallButton(Z)V
    .locals 4

    const/16 v2, 0x8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mSmartCallBlockButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mSmartCallBlockButton:Landroid/widget/Button;

    if-eqz p1, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/Button;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mSmartCallReportButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mSmartCallReportButton:Landroid/widget/Button;

    if-eqz p1, :cond_3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :cond_1
    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method public showSubNumberDialog(Landroid/content/Context;ILjava/lang/String;[Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/incallui/util/SecSubNumberDialogActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz p3, :cond_0

    const-string v1, "sim_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "number"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "items"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "sub_id_list"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    :cond_0
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected showVideoCall(Z)V
    .locals 5

    const/16 v2, 0x8

    const/4 v1, 0x0

    const-string v0, "EndCallButtonFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showVideoCall = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v0, v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v0, 0x80

    invoke-static {v0}, Lcom/android/incallui/util/InCallUtils;->needToDisableForKnox(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mVideoCallButtonStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mVideoCallButtonStub:Landroid/view/ViewStub;

    if-eqz p1, :cond_3

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/ViewStub;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mVideoCallButton:Landroid/widget/Button;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mVideoCallButton:Landroid/widget/Button;

    if-eqz p1, :cond_4

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :cond_2
    return-void

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_1
.end method

.method protected supportSmartCallButton()Z
    .locals 11

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isEmergencyMode()Z

    move-result v9

    if-nez v9, :cond_0

    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isUltraPowerSavingMode()Z

    move-result v9

    if-eqz v9, :cond_2

    :cond_0
    move v2, v8

    :goto_0
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->checkPrimaryEmergencyCall()Z

    move-result v1

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isPrimaryConferenceCall()Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v9, v10, v7}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v9

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-boolean v5, v3, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isVoiceMail:Z

    iget-boolean v6, v3, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isYellowPage:Z

    :cond_1
    if-nez v2, :cond_3

    if-nez v1, :cond_3

    if-nez v4, :cond_3

    if-nez v5, :cond_3

    if-nez v6, :cond_3

    :goto_1
    return v8

    :cond_2
    move v2, v7

    goto :goto_0

    :cond_3
    move v8, v7

    goto :goto_1
.end method

.method protected updateEndCallButtons()V
    .locals 15

    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->isAdded()Z

    move-result v12

    if-nez v12, :cond_1

    const-string v12, "EndCallButtonFragment"

    const-string v13, "fragment is detached from activity, return"

    invoke-static {v12, v13}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v12, "EndCallButtonFragment"

    const-string v13, "updateEndCallButtons()..."

    invoke-static {v12, v13}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v12

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v6, 0x1

    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isUltraPowerSavingMode()Z

    move-result v8

    const/4 v5, 0x0

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isSetupWizardComplete()Z

    move-result v7

    if-eqz v3, :cond_3

    iget-boolean v4, v3, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isEmergency:Z

    iget-boolean v1, v3, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactExists:Z

    iget v12, v3, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->presentation:I

    const/4 v13, 0x2

    if-eq v12, v13, :cond_2

    iget v12, v3, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->presentation:I

    const/4 v13, 0x3

    if-eq v12, v13, :cond_2

    iget-object v12, v3, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_3

    :cond_2
    const/4 v6, 0x0

    :cond_3
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v12

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/incallui/CallList;->isNotUpdatingCall(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    const-string v12, "EndCallButtonFragment"

    const-string v13, "updateEndCallButtons - hide buttons becauase conference call is under disconnecting"

    invoke-static {v12, v13}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    :cond_4
    iget-object v12, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mEndCallButtonsLayout:Landroid/widget/LinearLayout;

    if-eqz v12, :cond_5

    iget-object v13, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mEndCallButtonsLayout:Landroid/widget/LinearLayout;

    if-eqz v6, :cond_27

    if-eqz v7, :cond_27

    const/4 v12, 0x0

    :goto_1
    invoke-virtual {v13, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_5
    const/16 v12, 0x80

    invoke-static {v12}, Lcom/android/incallui/util/InCallUtils;->needToDisableForKnox(I)Z

    move-result v12

    if-nez v12, :cond_8

    iget-object v12, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mVoiceCallSim1Button:Landroid/widget/Button;

    if-eqz v12, :cond_28

    iget-object v12, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mVoiceCallSim2Button:Landroid/widget/Button;

    if-eqz v12, :cond_28

    iget-object v12, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mVoiceCallSim1Button:Landroid/widget/Button;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v12, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mVoiceCallSim2Button:Landroid/widget/Button;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setVisibility(I)V

    :cond_6
    :goto_2
    iget-object v12, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mVideoCallButton:Landroid/widget/Button;

    if-eqz v12, :cond_7

    iget-object v12, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mVideoCallButton:Landroid/widget/Button;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setVisibility(I)V

    :cond_7
    iget-object v12, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mMessageButton:Landroid/widget/Button;

    if-eqz v12, :cond_8

    iget-object v13, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mMessageButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Lcom/android/incallui/util/SystemServiceUtils;->isSmsCapable(Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_29

    const/4 v12, 0x0

    :goto_3
    invoke-virtual {v13, v12}, Landroid/widget/Button;->setVisibility(I)V

    :cond_8
    const-string v12, "ims_crane"

    invoke-static {v12}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_d

    const-string v12, "EndCallButtonFragment"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "is crane available : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    sget-boolean v14, Lcom/android/incallui/secrcs/RcsShareUI;->isCrane:Z

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    invoke-static {v12, v13, v14}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v12, "EndCallButtonFragment"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "mIsSelfCapable : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    sget-boolean v14, Lcom/android/incallui/secrcs/RcsShareUI;->mIsSelfCapable:Z

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    invoke-static {v12, v13, v14}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v12, "EndCallButtonFragment"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "isCraneOnlineRemote : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    sget-boolean v14, Lcom/android/incallui/secrcs/RcsShareUI;->isCraneOnlineRemote:Z

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    invoke-static {v12, v13, v14}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v12, "EndCallButtonFragment"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "isCraneOnlineSelf : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    sget-boolean v14, Lcom/android/incallui/secrcs/RcsShareUI;->isCraneOnlineSelf:Z

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    invoke-static {v12, v13, v14}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v12, "EndCallButtonFragment"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "isCraneSelf : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    sget-boolean v14, Lcom/android/incallui/secrcs/RcsShareUI;->isCraneSelf:Z

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    invoke-static {v12, v13, v14}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v12, "EndCallButtonFragment"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "isCraneRemote : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    sget-boolean v14, Lcom/android/incallui/secrcs/RcsShareUI;->isCraneRemote:Z

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    invoke-static {v12, v13, v14}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    sget-boolean v12, Lcom/android/incallui/secrcs/RcsShareUI;->isCraneSelf:Z

    if-eqz v12, :cond_2a

    sget-boolean v12, Lcom/android/incallui/secrcs/RcsShareUI;->isCraneRemote:Z

    if-eqz v12, :cond_2a

    sget-boolean v12, Lcom/android/incallui/secrcs/RcsShareUI;->isCraneOnlineSelf:Z

    if-eqz v12, :cond_2a

    sget-boolean v12, Lcom/android/incallui/secrcs/RcsShareUI;->isCraneOnlineRemote:Z

    if-eqz v12, :cond_2a

    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    sget-boolean v12, Lcom/android/incallui/secrcs/RcsShareUI;->mIsSelfCapable:Z

    if-eqz v12, :cond_2a

    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    sget-boolean v12, Lcom/android/incallui/secrcs/RcsShareUI;->isCrane:Z

    if-eqz v12, :cond_2a

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/incallui/CallList;->getOutgoingCallPlusFlag()Z

    move-result v12

    if-eqz v12, :cond_9

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v12

    invoke-virtual {v12}, Landroid/telecom/DisconnectCause;->getCode()I

    move-result v12

    const/4 v13, 0x2

    if-eq v12, v13, :cond_a

    :cond_9
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v12

    invoke-virtual {v12}, Landroid/telecom/DisconnectCause;->getCode()I

    move-result v12

    if-eqz v12, :cond_a

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v12

    invoke-virtual {v12}, Landroid/telecom/DisconnectCause;->getCode()I

    move-result v12

    const/4 v13, 0x5

    if-eq v12, v13, :cond_a

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v12

    invoke-virtual {v12}, Landroid/telecom/DisconnectCause;->getCode()I

    move-result v12

    const/4 v13, 0x7

    if-ne v12, v13, :cond_2a

    :cond_a
    const-string v12, "EndCallButtonFragment"

    const-string v13, "show entry point crane: "

    const/4 v14, 0x1

    invoke-static {v12, v13, v14}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v12, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mVideoCallButton:Landroid/widget/Button;

    if-eqz v12, :cond_b

    iget-object v12, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mVideoCallButton:Landroid/widget/Button;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setVisibility(I)V

    :cond_b
    iget-object v12, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mCallPlus:Landroid/widget/Button;

    if-eqz v12, :cond_c

    iget-object v12, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mCallPlus:Landroid/widget/Button;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v12, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mCallPlus:Landroid/widget/Button;

    sget-boolean v13, Lcom/android/incallui/secrcs/RcsShareUI;->mIsSelfCapable:Z

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_c
    iget-object v12, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mEndCallButtonsMiddle:Landroid/view/ViewGroup;

    if-eqz v12, :cond_d

    iget-object v12, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mEndCallButtonsMiddle:Landroid/view/ViewGroup;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_d
    :goto_4
    const-string v12, "ims_crane"

    invoke-static {v12}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_10

    const-string v12, "ims_callplus"

    invoke-static {v12}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_10

    iget-boolean v12, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->isUiEntery:Z

    if-eqz v12, :cond_2d

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/incallui/CallList;->isUnansweredCall()Z

    move-result v12

    if-eqz v12, :cond_2d

    const-string v12, "EndCallButtonFragment"

    const-string v13, "show callplus entry pointin callplus :"

    const/4 v14, 0x1

    invoke-static {v12, v13, v14}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v12, "EndCallButtonFragment"

    const-string v13, "show callplus entry point :"

    const/4 v14, 0x1

    invoke-static {v12, v13, v14}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v12, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mVideoCallButton:Landroid/widget/Button;

    if-eqz v12, :cond_e

    iget-object v12, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mVideoCallButton:Landroid/widget/Button;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setVisibility(I)V

    :cond_e
    iget-object v12, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mCallPlus:Landroid/widget/Button;

    if-eqz v12, :cond_f

    iget-object v12, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mCallPlus:Landroid/widget/Button;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setVisibility(I)V

    :cond_f
    iget-object v12, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mEndCallButtonsMiddle:Landroid/view/ViewGroup;

    if-eqz v12, :cond_10

    iget-object v12, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mEndCallButtonsMiddle:Landroid/view/ViewGroup;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_10
    :goto_5
    const-string v12, "multi_number_cmcc"

    invoke-static {v12}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_11

    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->checkMultivalue()Z

    move-result v5

    const-string v12, "EndCallButtonFragment"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "isMultiNmberShow : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    const-string v12, "EndCallButtonFragment"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "isEmergency : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string v12, "EndCallButtonFragment"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "isNumberExists : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string v12, "EndCallButtonFragment"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "isUltraPowerSavingMode : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string v12, "support_smart_call"

    invoke-static {v12}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_12

    const-string v12, "support_spam_call_report"

    invoke-static {v12}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_14

    :cond_12
    invoke-static {}, Lcom/android/incallui/smartcall/SmartCallUtil;->isSpamEnable()Z

    move-result v12

    if-eqz v12, :cond_14

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/incallui/util/NameNumberUtils;->isUnknownNumber(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_30

    if-nez v1, :cond_30

    const/4 v10, 0x1

    :goto_6
    const-string v12, "support_smart_call"

    invoke-static {v12}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_13

    invoke-static {v0}, Lcom/android/incallui/smartcall/SmartCallUtil;->getSmartCallState(Lcom/android/incallui/Call;)I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_13

    const/4 v10, 0x0

    :cond_13
    invoke-virtual {p0, v10}, Lcom/android/incallui/fragment/EndCallButtonFragment;->showSmartCallButton(Z)V

    invoke-direct {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->updateSmartCallBlockButton()V

    :cond_14
    if-nez v4, :cond_31

    if-eqz v6, :cond_31

    const/4 v2, 0x1

    :goto_7
    invoke-static {}, Lcom/android/incallui/bike/BikeModeUtils;->isBikeMode()Z

    move-result v12

    if-eqz v12, :cond_15

    const-string v12, "updateEndCallButtons - disable buttons when bike call is present"

    invoke-static {p0, v12}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_15
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v12

    const/16 v13, 0x9

    if-ne v12, v13, :cond_16

    const-string v12, "updateEndCallButtons - disable buttons on disconnecting"

    invoke-static {p0, v12}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_16
    invoke-virtual {p0, v2}, Lcom/android/incallui/fragment/EndCallButtonFragment;->setEnabled(Z)V

    invoke-virtual {p0, v2, v0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->needToShowVideoCallButton(ZLcom/android/incallui/Call;)Z

    move-result v11

    invoke-virtual {p0, v11}, Lcom/android/incallui/fragment/EndCallButtonFragment;->showVideoCall(Z)V

    invoke-virtual {p0, v11}, Lcom/android/incallui/fragment/EndCallButtonFragment;->changeVideoCallIcon(Z)V

    const-string v12, "ims_capability_check_on_call_end"

    invoke-static {v12}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_17

    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->changeMessageIcon()V

    :cond_17
    const-string v12, "support_twophone"

    invoke-static {v12}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_18

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isTwoPhoneRegistered()Z

    move-result v12

    if-eqz v12, :cond_18

    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->isEnabledTwoPhoneEndButtons()Z

    move-result v12

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {p0, v12}, Lcom/android/incallui/fragment/EndCallButtonFragment;->enableEndCallUpperButtons(Ljava/lang/Boolean;)V

    :cond_18
    const/16 v12, 0x80

    invoke-static {v12}, Lcom/android/incallui/util/InCallUtils;->needToDisableForKnox(I)Z

    move-result v12

    if-eqz v12, :cond_1d

    iget-object v12, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mVoiceCallButton:Landroid/widget/Button;

    if-eqz v12, :cond_19

    iget-object v12, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mVoiceCallButton:Landroid/widget/Button;

    const/4 v13, 0x4

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setVisibility(I)V

    :cond_19
    iget-object v12, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mVideoCallButton:Landroid/widget/Button;

    if-eqz v12, :cond_1a

    iget-object v12, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mVideoCallButton:Landroid/widget/Button;

    const/4 v13, 0x4

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setVisibility(I)V

    :cond_1a
    iget-object v12, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mMessageButton:Landroid/widget/Button;

    if-eqz v12, :cond_1b

    iget-object v12, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mMessageButton:Landroid/widget/Button;

    const/4 v13, 0x4

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setVisibility(I)V

    :cond_1b
    iget-object v12, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mVoiceCallSim1Button:Landroid/widget/Button;

    if-eqz v12, :cond_1c

    iget-object v12, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mVoiceCallSim1Button:Landroid/widget/Button;

    const/4 v13, 0x4

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setVisibility(I)V

    :cond_1c
    iget-object v12, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mVoiceCallSim2Button:Landroid/widget/Button;

    if-eqz v12, :cond_1d

    iget-object v12, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mVoiceCallSim2Button:Landroid/widget/Button;

    const/4 v13, 0x4

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setVisibility(I)V

    :cond_1d
    const-string v12, "feature_lgt"

    invoke-static {v12}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_32

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isRoamingArea()Z

    move-result v12

    if-eqz v12, :cond_1f

    const-string v12, "support_volte_roaming"

    invoke-static {v12}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1e

    invoke-static {}, Lcom/android/incallui/util/ImsCommonUtils;->isAvailablePSVT()Z

    move-result v12

    if-nez v12, :cond_1f

    :cond_1e
    const-string v12, "EndCallButtonFragment"

    const-string v13, "The LGU+ does not support VT on the roaming area."

    const/4 v14, 0x1

    invoke-static {v12, v13, v14}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v12, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mVideoCallButton:Landroid/widget/Button;

    if-eqz v12, :cond_1f

    iget-object v12, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mVideoCallButton:Landroid/widget/Button;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_1f
    :goto_8
    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->updateVolteEndCallButtonIcon()V

    const-string v12, "emergency_find_lost_phone"

    invoke-static {v12}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_22

    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getNumber()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/incallui/util/NameNumberUtils;->isFindServiceNumber(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-nez v12, :cond_20

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isFindService()Z

    move-result v12

    if-eqz v12, :cond_22

    :cond_20
    const/4 v12, 0x0

    invoke-virtual {p0, v12}, Lcom/android/incallui/fragment/EndCallButtonFragment;->setEnabled(Z)V

    iget-object v12, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mSmartCallBlockButton:Landroid/widget/Button;

    if-eqz v12, :cond_21

    iget-object v12, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mSmartCallBlockButton:Landroid/widget/Button;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setVisibility(I)V

    :cond_21
    iget-object v12, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mSmartCallReportButton:Landroid/widget/Button;

    if-eqz v12, :cond_22

    iget-object v12, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mSmartCallReportButton:Landroid/widget/Button;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setVisibility(I)V

    :cond_22
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v12

    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getVoWifiTracker()Lcom/android/incallui/util/VoWifiStateTracker;

    const-string v13, "CscFeature_Common_EnableSprintExtension"

    invoke-virtual {v12, v13}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_23

    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getVoWifiTracker()Lcom/android/incallui/util/VoWifiStateTracker;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/incallui/util/VoWifiStateTracker;->isKinetoVowifiExist()Z

    move-result v12

    if-eqz v12, :cond_23

    iget-object v12, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mVoiceCallButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getVoWifiTracker()Lcom/android/incallui/util/VoWifiStateTracker;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/incallui/util/VoWifiStateTracker;->isVoWiFiRegistered()Z

    move-result v13

    invoke-virtual {p0, v12, v13}, Lcom/android/incallui/fragment/EndCallButtonFragment;->updateVoiceCallButton(Landroid/widget/Button;Z)V

    :cond_23
    const-string v12, "spr_vowifi_ui"

    invoke-static {v12}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_24

    const-string v12, "show_vowifi_voicecall_button"

    invoke-static {v12}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_25

    :cond_24
    iget-object v12, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mVoiceCallButton:Landroid/widget/Button;

    if-eqz v12, :cond_25

    iget-object v12, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mVoiceCallButton:Landroid/widget/Button;

    invoke-static {}, Lcom/android/incallui/util/ImsCommonUtils;->isAvailableVoWFi()Z

    move-result v13

    invoke-virtual {p0, v12, v13}, Lcom/android/incallui/fragment/EndCallButtonFragment;->updateVoiceCallButton(Landroid/widget/Button;Z)V

    :cond_25
    const-string v12, "multi_number_cmcc"

    invoke-static {v12}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_26

    invoke-virtual {p0, v5}, Lcom/android/incallui/fragment/EndCallButtonFragment;->showMultiCall(Z)V

    :cond_26
    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->updatePadding()V

    goto/16 :goto_0

    :cond_27
    const/4 v12, 0x4

    goto/16 :goto_1

    :cond_28
    iget-object v12, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mVoiceCallButton:Landroid/widget/Button;

    if-eqz v12, :cond_6

    iget-object v12, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mVoiceCallButton:Landroid/widget/Button;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_2

    :cond_29
    const/16 v12, 0x8

    goto/16 :goto_3

    :cond_2a
    const-string v12, "EndCallButtonFragment"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "hide crane entry point : Disconnect Cause "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v14

    invoke-virtual {v14}, Landroid/telecom/DisconnectCause;->getCode()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    invoke-static {v12, v13, v14}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v12, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mVideoCallButton:Landroid/widget/Button;

    if-eqz v12, :cond_2b

    iget-object v12, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mVideoCallButton:Landroid/widget/Button;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setVisibility(I)V

    :cond_2b
    iget-object v12, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mCallPlus:Landroid/widget/Button;

    if-eqz v12, :cond_2c

    iget-object v12, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mCallPlus:Landroid/widget/Button;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setVisibility(I)V

    :cond_2c
    iget-object v12, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mEndCallButtonsMiddle:Landroid/view/ViewGroup;

    if-eqz v12, :cond_d

    iget-object v12, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mEndCallButtonsMiddle:Landroid/view/ViewGroup;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_4

    :cond_2d
    const-string v12, "EndCallButtonFragment"

    const-string v13, "hide callplus entry point :"

    const/4 v14, 0x1

    invoke-static {v12, v13, v14}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v12, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mVideoCallButton:Landroid/widget/Button;

    if-eqz v12, :cond_2e

    iget-object v12, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mVideoCallButton:Landroid/widget/Button;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setVisibility(I)V

    :cond_2e
    iget-object v12, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mCallPlus:Landroid/widget/Button;

    if-eqz v12, :cond_2f

    iget-object v12, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mCallPlus:Landroid/widget/Button;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setVisibility(I)V

    :cond_2f
    iget-object v12, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mEndCallButtonsMiddle:Landroid/view/ViewGroup;

    if-eqz v12, :cond_10

    iget-object v12, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mEndCallButtonsMiddle:Landroid/view/ViewGroup;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_5

    :cond_30
    const/4 v10, 0x0

    goto/16 :goto_6

    :cond_31
    const/4 v2, 0x0

    goto/16 :goto_7

    :cond_32
    const-string v12, "att_volte_ui"

    invoke-static {v12}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1f

    invoke-static {}, Lcom/android/incallui/util/ImsCommonUtils;->isATTVideoCallEnabled()Z

    move-result v12

    if-nez v12, :cond_1f

    iget-object v12, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mVideoCallButton:Landroid/widget/Button;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_8
.end method

.method protected updateMultiSimEndCallButton(Landroid/view/View;)V
    .locals 2

    invoke-static {}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->checkMultiSim()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f100287

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mVoiceCallMultiSimCallBtnStub:Landroid/view/ViewStub;

    iget-object v0, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mVoiceCallMultiSimCallBtnStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mVoiceCallMultiSimCallBtnStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const v0, 0x7f100115

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mVoiceCallSim1Button:Landroid/widget/Button;

    const v0, 0x7f100116

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mVoiceCallSim2Button:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mVoiceCallSim1Button:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mVoiceCallSim1Button:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mVoiceCallSim2Button:Landroid/widget/Button;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mVoiceCallSim2Button:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    invoke-direct {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->updateMultiSimEndCallButtonDrawable()V

    iget-object v0, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mVoiceCallButton:Landroid/widget/Button;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mVoiceCallButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method protected updatePadding()V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mEndCallButtonsUpper:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mEndCallButtonsUpper:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->updatePaddingInternal(Landroid/view/ViewGroup;)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mEndCallButtonsUnder:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mEndCallButtonsUnder:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->updatePaddingInternal(Landroid/view/ViewGroup;)V

    :cond_1
    return-void
.end method

.method public updateView(Landroid/database/Cursor;)V
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x1

    const-string v2, "EndCallButtonFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateView data :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mAction:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mUri:Ljava/lang/String;

    const-string v2, "EndCallButtonFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateView mAction :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mAction:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "mUri: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mUri:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mAction:Ljava/lang/String;

    if-eqz v2, :cond_1

    :goto_0
    iput-boolean v0, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->isUiEntery:Z

    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->updateEndCallButtons()V

    :cond_0
    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method protected updateVoiceCallButton(Landroid/widget/Button;Z)V
    .locals 3

    const/4 v2, 0x0

    const v0, 0x7f0201a7

    if-eqz p2, :cond_0

    const-string v1, "spr_vowifi_ui"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const v0, 0x7f0201a9

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v2, v1, v2, v2}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_1
    const v0, 0x7f0201a8

    goto :goto_0
.end method

.method protected updateVolteEndCallButtonIcon()V
    .locals 5

    const/4 v3, 0x0

    const-string v1, "common_volte_kor"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/incallui/util/ImsCommonUtils;->isVolteIconPossible()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isChecked3GHDVoiceForKT()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const v0, 0x7f02018d

    const-string v1, "feature_skt"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const v0, 0x7f020190

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mVoiceCallButton:Landroid/widget/Button;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mVoiceCallButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v3, v2, v3, v3}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mVoiceCallButton:Landroid/widget/Button;

    invoke-static {}, Lcom/android/incallui/StringManager;->getInstance()Lcom/android/incallui/StringManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "secVolteCall"

    invoke-virtual {v2, v3, v4}, Lcom/android/incallui/StringManager;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const-string v1, "feature_lgt"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mVoiceCallButton:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setAllCaps(Z)V

    :cond_2
    return-void

    :cond_3
    const-string v1, "feature_ktt"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const v0, 0x7f02018e

    goto :goto_0

    :cond_4
    const-string v1, "feature_lgt"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const v0, 0x7f02018f

    goto :goto_0
.end method

.method protected videoCallClicked()V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/android/incallui/fragment/EndCallButtonFragment;->setEnabled(Z)V

    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isEmergencyMode()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isUltraPowerSavingMode()Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_0
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_CAN_BMC()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_CAN_VMC()Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->showDataChargeAlertDialog()V

    :cond_2
    sget v5, Lcom/android/incallui/service/vt/VideoCallCapability;->HANDOVER_NOTIFICATION:I

    invoke-static {v5}, Lcom/android/incallui/service/vt/VideoCallCapability;->can(I)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/CallList;->getDisconnectingOrDisconnectedCall()Lcom/android/incallui/Call;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-static {v1}, Lcom/android/incallui/util/EpdgErrorUtils;->handeEpdgNotification(Lcom/android/incallui/Call;)Z

    move-result v5

    if-eqz v5, :cond_4

    :goto_0
    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0901f0

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getNumber()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_5

    const-string v5, "EndCallButtonFragment"

    const-string v6, "videoCallClicked: number is null"

    invoke-static {v5, v6, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "telecom"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telecom/TelecomManager;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v5, "videocall"

    invoke-virtual {v2, v5, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v5, "support_twophone"

    invoke-static {v5}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isTwoPhoneRegistered()Z

    move-result v5

    if-eqz v5, :cond_6

    const-string v6, "TwoPhoneDialOption"

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isActiveTwoPhone()Z

    move-result v5

    if-eqz v5, :cond_8

    const-string v5, "twophone"

    :goto_1
    invoke-virtual {v2, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    const-string v5, "jansky_info_for_tmo"

    invoke-static {v5}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    const-string v5, "jansky_msisdn"

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->getLineMSISDN()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    const-string v5, "tel"

    const/4 v6, 0x0

    invoke-static {v5, v3, v6}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Landroid/telecom/TelecomManager;->placeCall(Landroid/net/Uri;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_8
    const-string v5, "onephone"

    goto :goto_1
.end method

.method protected voiceCallClicked()V
    .locals 1

    invoke-direct {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->turnOffSpeaker()V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->voiceCallClicked(Ljava/lang/String;)V

    return-void
.end method

.method public voiceCallLongClicked()V
    .locals 6

    const-string v3, "ims_support_multimedia_caller_id"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/android/incallui/util/SystemServiceUtils;->isDeviceOnLTE()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/android/incallui/util/ImsCommonUtils;->isAvailableVoLTE()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "emergency_mode"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getNumber()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v3, "support_twophone"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getPrefixForMcid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_0
    const-string v3, "com.android.phone"

    const-string v4, "com.android.phone.photoring.PhotoRingScreen"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "dest_number"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/incallui/fragment/EndCallButtonFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v3, "EndCallButtonFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startActivity() failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
