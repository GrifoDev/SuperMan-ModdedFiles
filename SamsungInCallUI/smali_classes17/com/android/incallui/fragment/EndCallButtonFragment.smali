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

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 103
    invoke-direct {p0}, Lcom/android/incallui/fragment/CallButtonFragment;-><init>()V

    .line 135
    iput-boolean v1, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->isUiEntery:Z

    .line 139
    iput-object v0, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mAction:Ljava/lang/String;

    .line 140
    iput-object v0, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mUri:Ljava/lang/String;

    .line 142
    iput v1, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->SIM_SLOT_1:I

    .line 143
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->SIM_SLOT_2:I

    .line 154
    iput-boolean v1, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->isMultiNmber:Z

    .line 155
    iput v1, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->multiSimId:I

    .line 156
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->subNumberIdList:Ljava/util/ArrayList;

    .line 157
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->subNumberPhoneList:Ljava/util/ArrayList;

    .line 159
    iput-boolean v1, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->isAleadyBlockedNumber:Z

    .line 161
    new-instance v0, Lcom/android/incallui/fragment/EndCallButtonFragment$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/fragment/EndCallButtonFragment$1;-><init>(Lcom/android/incallui/fragment/EndCallButtonFragment;)V

    iput-object v0, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/fragment/EndCallButtonFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/fragment/EndCallButtonFragment;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private getCurrentPhoneId()I
    .locals 5

    .prologue
    .line 1340
    const/4 v1, 0x0

    .line 1341
    .local v1, "phoneId":I
    const-string v2, "feature_multisim"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1342
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 1343
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_0

    .line 1344
    invoke-static {v0}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getPhoneId(Lcom/android/incallui/Call;)I

    move-result v1

    .line 1347
    .end local v0    # "call":Lcom/android/incallui/Call;
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

    .line 1348
    return v1
.end method

.method private getPaddingSide(I)I
    .locals 3
    .param p1, "buttons"    # I

    .prologue
    .line 948
    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00ad

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    .line 949
    .local v0, "padding":I
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 950
    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0270

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    .line 956
    :cond_0
    :goto_0
    return v0

    .line 951
    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 952
    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00ae

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    goto :goto_0

    .line 953
    :cond_2
    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    .line 954
    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a013e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    goto :goto_0
.end method

.method private static final isNonSeparator(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 855
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

    .prologue
    const/4 v6, 0x1

    .line 371
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->getDisconnectingCall()Lcom/android/incallui/Call;

    move-result-object v1

    .line 372
    .local v1, "call":Lcom/android/incallui/Call;
    if-nez v1, :cond_0

    .line 373
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->getDisconnectedCall()Lcom/android/incallui/Call;

    move-result-object v1

    .line 375
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

    .line 376
    const/4 v2, 0x0

    .line 377
    .local v2, "msisdn":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 378
    invoke-virtual {v1}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v2

    .line 379
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

    .line 381
    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 382
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 383
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "ARG_MSISDN"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    const-string v3, "ARG_COLUMNS"

    sget-object v4, Lcom/android/incallui/UIEntryPointsContract;->UI_ENTRY_POINTS_UNANSWERED_COLUMNS:[Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 385
    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v3

    invoke-virtual {v3, v6, v0, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 389
    .end local v0    # "bundle":Landroid/os/Bundle;
    :goto_0
    return-void

    .line 387
    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/app/LoaderManager;->destroyLoader(I)V

    goto :goto_0
.end method

.method private removeSubPrefix(ILjava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "simId"    # I
    .param p2, "mNumber"    # Ljava/lang/String;

    .prologue
    .line 1315
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

    .line 1316
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    .line 1317
    .local v1, "number_length":I
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/4 v3, 0x3

    if-gt v0, v3, :cond_1

    .line 1318
    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {p1, v0, v3}, Lcom/android/incallui/InCallUISystemDB;->getSubPrefix(IILandroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 1319
    .local v2, "subPre":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 1320
    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-le v1, v3, :cond_0

    .line 1321
    const-string v3, ""

    invoke-virtual {p2, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 1322
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

    .line 1317
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1326
    .end local v2    # "subPre":Ljava/lang/String;
    :cond_1
    return-object p2
.end method

.method private static stripSeparators(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 838
    if-nez p0, :cond_0

    .line 839
    const/4 v4, 0x0

    .line 851
    :goto_0
    return-object v4

    .line 841
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 842
    .local v2, "len":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 844
    .local v3, "ret":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 845
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 846
    .local v0, "c":C
    invoke-static {v0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 847
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 844
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 850
    .end local v0    # "c":C
    :cond_2
    const-string v4, "InCall"

    const-string v5, "EndCallButtonFragment striping done...."

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 851
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private turnOffSpeaker()V
    .locals 2

    .prologue
    .line 1004
    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->getAudioMode()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 1005
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->setAudioMode(I)V

    .line 1007
    :cond_0
    return-void
.end method

.method private updateMultiSimEndCallButtonDrawable()V
    .locals 7

    .prologue
    const/16 v6, 0x16

    const/16 v5, 0x14

    const/4 v4, 0x0

    .line 707
    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->SIM_SLOT_1:I

    invoke-static {v3, v5}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getSimImage(II)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 708
    .local v0, "voiceCallSim1Button":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->SIM_SLOT_2:I

    invoke-static {v3, v5}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getSimImage(II)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 709
    .local v1, "voiceCallSim2Button":Landroid/graphics/drawable/Drawable;
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isOnehandModeOn()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 710
    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->SIM_SLOT_1:I

    invoke-static {v3, v6}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getSimImage(II)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 711
    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->SIM_SLOT_2:I

    invoke-static {v3, v6}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getSimImage(II)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 712
    const-string v2, "EndCallButtonFragment"

    const-string v3, "tien.hien isOnehandModeOn "

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    :cond_0
    iget-object v2, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mVoiceCallSim1Button:Landroid/widget/Button;

    if-eqz v2, :cond_1

    .line 716
    iget-object v2, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mVoiceCallSim1Button:Landroid/widget/Button;

    invoke-virtual {v2, v4, v0, v4, v4}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 718
    :cond_1
    iget-object v2, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mVoiceCallSim2Button:Landroid/widget/Button;

    if-eqz v2, :cond_2

    .line 719
    iget-object v2, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mVoiceCallSim2Button:Landroid/widget/Button;

    invoke-virtual {v2, v4, v1, v4, v4}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 721
    :cond_2
    return-void
.end method

.method private updatePaddingInternal(Landroid/view/ViewGroup;)V
    .locals 5
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x0

    .line 934
    if-nez p1, :cond_0

    .line 945
    :goto_0
    return-void

    .line 937
    :cond_0
    const/4 v0, 0x0

    .line 938
    .local v0, "buttons":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 939
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    .line 940
    add-int/lit8 v0, v0, 0x1

    .line 938
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 943
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getPaddingSide(I)I

    move-result v2

    .line 944
    .local v2, "paddingSide":I
    invoke-virtual {p1, v2, v4, v2, v4}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto :goto_0
.end method

.method private updateSmartCallBlockButton()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1485
    iget-object v2, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mSmartCallBlockButton:Landroid/widget/Button;

    if-nez v2, :cond_1

    .line 1500
    :cond_0
    :goto_0
    return-void

    .line 1486
    :cond_1
    const/16 v0, 0x64

    .line 1487
    .local v0, "AUTOREJECT_MAXCOUNT":I
    invoke-static {}, Lcom/android/incallui/smartcall/SmartCallUtil;->getAutoRejectNumber()Landroid/database/Cursor;

    move-result-object v1

    .line 1488
    .local v1, "cursor":Landroid/database/Cursor;
    if-eqz v1, :cond_0

    .line 1489
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    const/16 v3, 0x64

    if-ne v2, v3, :cond_2

    .line 1490
    iget-object v2, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mSmartCallBlockButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1491
    iget-object v2, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mSmartCallBlockButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setClickable(Z)V

    .line 1492
    iget-object v2, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mSmartCallBlockButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setFocusable(Z)V

    .line 1498
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1494
    :cond_2
    iget-object v2, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mSmartCallBlockButton:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1495
    iget-object v2, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mSmartCallBlockButton:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setClickable(Z)V

    .line 1496
    iget-object v2, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mSmartCallBlockButton:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setFocusable(Z)V

    goto :goto_1
.end method

.method private voiceCallClicked(I)V
    .locals 1
    .param p1, "simId"    # I

    .prologue
    .line 1042
    invoke-direct {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->turnOffSpeaker()V

    .line 1043
    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->voiceCallClicked(ILjava/lang/String;)V

    .line 1044
    return-void
.end method

.method private voiceCallClicked(ILjava/lang/String;)V
    .locals 9
    .param p1, "simId"    # I
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1047
    invoke-virtual {p0, v7}, Lcom/android/incallui/fragment/EndCallButtonFragment;->setEnabled(Z)V

    .line 1049
    if-nez p2, :cond_0

    .line 1050
    const-string v5, "EndCallButtonFragment"

    const-string v6, "voiceCallClicked: number is null"

    invoke-static {v5, v6, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1071
    :goto_0
    return-void

    .line 1053
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "telecom"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telecom/TelecomManager;

    .line 1054
    .local v4, "tm":Landroid/telecom/TelecomManager;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1055
    .local v1, "extras":Landroid/os/Bundle;
    invoke-virtual {v4}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccounts()Ljava/util/List;

    move-result-object v0

    .line 1056
    .local v0, "accountHandle":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/PhoneAccountHandle;

    .line 1057
    .local v3, "subscription":Landroid/telecom/PhoneAccountHandle;
    const-string v5, "android.telecom.extra.PHONE_ACCOUNT_HANDLE"

    invoke-virtual {v1, v5, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1058
    const-string v5, "disable_call"

    invoke-static {v5}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1059
    const-string v5, "simSlot"

    invoke-virtual {v1, v5, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1062
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "spam_call_enable"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 1063
    .local v2, "mSpamEnable":I
    const-string v5, "support_spam_call"

    invoke-static {v5}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1064
    const-string v6, "setUseSpamCallCache"

    if-ne v2, v8, :cond_3

    const-string v5, "true"

    :goto_1
    invoke-virtual {v1, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1067
    :cond_2
    const-string v5, "tel"

    const/4 v6, 0x0

    invoke-static {v5, p2, v6}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Landroid/telecom/TelecomManager;->placeCall(Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 1069
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/CallList;->clearDisconnectedTimeoutEvent()Z

    .line 1070
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/CallList;->delayToNotify()V

    goto :goto_0

    .line 1064
    :cond_3
    const-string v5, "false"

    goto :goto_1
.end method

.method private voiceCallClicked(Ljava/lang/String;)V
    .locals 7
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1010
    invoke-virtual {p0, v5}, Lcom/android/incallui/fragment/EndCallButtonFragment;->setEnabled(Z)V

    .line 1012
    if-nez p1, :cond_0

    .line 1013
    const-string v3, "EndCallButtonFragment"

    const-string v4, "voiceCallClicked: number is null"

    invoke-static {v3, v4, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1039
    :goto_0
    return-void

    .line 1016
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "telecom"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/TelecomManager;

    .line 1017
    .local v2, "tm":Landroid/telecom/TelecomManager;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1018
    .local v0, "extras":Landroid/os/Bundle;
    const-string v3, "roaming_auto_dial"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1019
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isRoamingArea()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "feature_lgt"

    .line 1020
    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1021
    const-string v4, "RADDialOption"

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isCallNumberConverted()Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "korea"

    :goto_1
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1023
    :cond_1
    const-string v3, "support_twophone"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1024
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isTwoPhoneRegistered()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1025
    const-string v4, "TwoPhoneDialOption"

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isActiveTwoPhone()Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, "twophone"

    :goto_2
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1027
    :cond_2
    const-string v3, "feature_multisim"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1028
    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->setAvailablePhoneAccountHandle(Landroid/content/Context;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 1031
    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "spam_call_enable"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1032
    .local v1, "mSpamEnable":I
    const-string v3, "support_spam_call"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1033
    const-string v4, "setUseSpamCallCache"

    if-ne v1, v6, :cond_8

    const-string v3, "true"

    :goto_3
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1035
    :cond_4
    const-string v3, "jansky_info_for_tmo"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1036
    const-string v3, "jansky_msisdn"

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->getLineMSISDN()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1038
    :cond_5
    const-string v3, "tel"

    const/4 v4, 0x0

    invoke-static {v3, p1, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Landroid/telecom/TelecomManager;->placeCall(Landroid/net/Uri;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 1021
    .end local v1    # "mSpamEnable":I
    :cond_6
    const-string v3, "abroad"

    goto :goto_1

    .line 1025
    :cond_7
    const-string v3, "onephone"

    goto :goto_2

    .line 1033
    .restart local v1    # "mSpamEnable":I
    :cond_8
    const-string v3, "false"

    goto :goto_3
.end method


# virtual methods
.method protected changeMessageIcon()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1459
    invoke-static {}, Lcom/android/incallui/util/SystemServiceUtils;->isImsRegistered()Z

    move-result v1

    .line 1460
    .local v1, "isIMSReg":Z
    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/sec/ims/options/Capabilities;->FEATURE_CHAT:I

    invoke-static {v3, v4}, Lcom/android/incallui/util/InCallUtils;->checkIMSCapability(Landroid/content/Context;I)Z

    move-result v0

    .line 1461
    .local v0, "isIMSCapa":Z
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

    .line 1462
    const-string v3, "tmo_volte_ui"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 1463
    const-string v3, "changeMessageIcon()"

    invoke-static {p0, v3, v7}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 1464
    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0201a0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1465
    .local v2, "messageButtonRcs":Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mMessageButton:Landroid/widget/Button;

    if-eqz v3, :cond_0

    .line 1466
    iget-object v3, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mMessageButton:Landroid/widget/Button;

    invoke-virtual {v3, v6, v2, v6, v6}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1468
    .end local v2    # "messageButtonRcs":Landroid/graphics/drawable/Drawable;
    :cond_0
    return-void
.end method

.method protected changeVideoCallIcon(Z)V
    .locals 4
    .param p1, "show"    # Z

    .prologue
    const/4 v3, 0x0

    .line 1445
    iget-object v1, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mVideoCallButton:Landroid/widget/Button;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    const-string v1, "usa_gsm_volte_ui"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1456
    :cond_0
    :goto_0
    return-void

    .line 1446
    :cond_1
    const-string v1, "att_volte_ui"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "tmo_volte_ui"

    .line 1447
    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1448
    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1449
    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/util/InCallUtils;->isCapableVideoCall(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    const v1, 0x7f0201a6

    .line 1448
    :goto_1
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1452
    .local v0, "videoCallButtonAtt":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mVideoCallButton:Landroid/widget/Button;

    invoke-virtual {v1, v3, v0, v3, v3}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1449
    .end local v0    # "videoCallButtonAtt":Landroid/graphics/drawable/Drawable;
    :cond_3
    const v1, 0x7f0201a7

    goto :goto_1

    .line 1454
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

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1311
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

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1305
    const-string v4, "sub_number_enable_cmcc"

    invoke-static {v4, v3}, Lcom/android/incallui/InCallUISystemDB;->getSettingDB(Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_0

    move v0, v2

    .line 1306
    .local v0, "mEnableMultiCall":Z
    :goto_0
    const-string v4, "sub_keypad_cmcc_preference"

    invoke-static {v4, v3}, Lcom/android/incallui/InCallUISystemDB;->getSettingDB(Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_1

    move v1, v2

    .line 1307
    .local v1, "mSubKyepad":Z
    :goto_1
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    :goto_2
    return v2

    .end local v0    # "mEnableMultiCall":Z
    .end local v1    # "mSubKyepad":Z
    :cond_0
    move v0, v3

    .line 1305
    goto :goto_0

    .restart local v0    # "mEnableMultiCall":Z
    :cond_1
    move v1, v3

    .line 1306
    goto :goto_1

    .restart local v1    # "mSubKyepad":Z
    :cond_2
    move v2, v3

    .line 1307
    goto :goto_2
.end method

.method protected enableEndCallUnderButtons(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "enabled"    # Ljava/lang/Boolean;

    .prologue
    .line 1477
    iget-object v0, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mVoiceCallButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mVoiceCallButton:Landroid/widget/Button;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1478
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mVideoCallButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mVideoCallButton:Landroid/widget/Button;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1479
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mMessageButton:Landroid/widget/Button;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mMessageButton:Landroid/widget/Button;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1480
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mVoiceCallSim1Button:Landroid/widget/Button;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mVoiceCallSim1Button:Landroid/widget/Button;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1481
    :cond_3
    iget-object v0, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mVoiceCallSim2Button:Landroid/widget/Button;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mVoiceCallSim2Button:Landroid/widget/Button;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1482
    :cond_4
    return-void
.end method

.method protected enableEndCallUpperButtons(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "enabled"    # Ljava/lang/Boolean;

    .prologue
    .line 1471
    iget-object v0, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mSmartCallBlockButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mSmartCallBlockButton:Landroid/widget/Button;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1472
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mSmartCallReportButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mSmartCallReportButton:Landroid/widget/Button;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1473
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mAddReminderButton:Landroid/widget/Button;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mAddReminderButton:Landroid/widget/Button;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1474
    :cond_2
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 905
    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method protected getNumber()Ljava/lang/String;
    .locals 9

    .prologue
    .line 960
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 961
    .local v0, "call":Lcom/android/incallui/Call;
    const/4 v4, 0x0

    .line 962
    .local v4, "number":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 963
    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v2

    .line 964
    .local v2, "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    if-eqz v2, :cond_0

    .line 965
    iget-object v4, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    .line 966
    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/contacts/common/util/TelephonyManagerUtils;->getVoiceMailAlphaTag(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 967
    .local v5, "voiceMailTag":Ljava/lang/String;
    const-string v6, "emergency_find_lost_phone"

    invoke-static {v6}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->originalNumber:Ljava/lang/String;

    .line 968
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 969
    iget-object v4, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->originalNumber:Ljava/lang/String;

    .line 994
    .end local v2    # "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .end local v5    # "voiceMailTag":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v4

    .line 970
    .restart local v2    # "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .restart local v5    # "voiceMailTag":Ljava/lang/String;
    :cond_1
    iget-object v6, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->originalNumber:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    iget-boolean v6, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isEmergency:Z

    if-nez v6, :cond_2

    iget-boolean v6, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isVoiceMail:Z

    if-eqz v6, :cond_3

    .line 971
    :cond_2
    const-string v6, "EndCallButtonFragment"

    const-string v7, "getNumber(), set original number"

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 972
    iget-object v4, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->originalNumber:Ljava/lang/String;

    goto :goto_0

    .line 973
    :cond_3
    const-string v6, "roaming_auto_dial"

    invoke-static {v6}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 974
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isRoamingArea()Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, "feature_lgt"

    .line 975
    invoke-static {v6}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 976
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isCallNumberConverted()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 977
    invoke-static {}, Lcom/android/incallui/util/NameNumberUtils;->getOriginalNumber()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 978
    :cond_4
    iget-object v6, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->originalNumber:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 979
    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/contacts/common/util/TelephonyManagerUtils;->getCurrentCountryIso(Landroid/content/Context;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 980
    .local v1, "currentIso":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 981
    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget-object v6, v6, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v6}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 983
    :cond_5
    iget-object v6, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->originalNumber:Ljava/lang/String;

    invoke-static {v6, v1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 984
    .local v3, "formattedNumber":Ljava/lang/String;
    if-eqz v3, :cond_0

    iget-object v6, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->originalNumber:Ljava/lang/String;

    .line 985
    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/incallui/util/NameNumberUtils;->isKorIsoWithNationalNumber(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 986
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

    .line 987
    iget-object v4, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->originalNumber:Ljava/lang/String;

    goto/16 :goto_0

    .line 989
    .end local v1    # "currentIso":Ljava/lang/String;
    .end local v3    # "formattedNumber":Ljava/lang/String;
    :cond_6
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 990
    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/incallui/util/InCallUtils;->getVoiceMailNumber(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0
.end method

.method public getPhoneNumber(Landroid/content/Context;Lcom/android/incallui/Call;)Ljava/lang/String;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v1, 0x0

    .line 826
    if-nez p2, :cond_1

    .line 834
    :cond_0
    :goto_0
    return-object v1

    .line 829
    :cond_1
    invoke-static {p1}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v2

    .line 830
    invoke-virtual {p2}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v3

    .line 829
    invoke-virtual {v2, v3}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v0

    .line 831
    .local v0, "contactCacheEntry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    if-eqz v0, :cond_0

    .line 832
    iget-object v1, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/incallui/fragment/EndCallButtonFragment;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getSubPhone(IILandroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p1, "simId"    # I
    .param p2, "subId"    # I
    .param p3, "mContext"    # Landroid/content/Context;

    .prologue
    .line 1370
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

    .line 1371
    packed-switch p2, :pswitch_data_0

    .line 1397
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1373
    :pswitch_0
    if-nez p1, :cond_0

    .line 1374
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "SUB_PHONE_NUMBER_ONE"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1377
    :cond_0
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "SUB_PHONE_NUMBER_ONE_SIM2"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1381
    :pswitch_1
    if-nez p1, :cond_1

    .line 1382
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "SUB_PHONE_NUMBER_TWO"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1385
    :cond_1
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "SUB_PHONE_NUMBER_TWO_SIM2"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1389
    :pswitch_2
    if-nez p1, :cond_2

    .line 1390
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "SUB_PHONE_NUMBER_THREE"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1393
    :cond_2
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "SUB_PHONE_NUMBER_THREE_SIM2"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1371
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

    .prologue
    .line 1353
    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/util/VoWifiStateTracker;->getInstance(Landroid/content/Context;)Lcom/android/incallui/util/VoWifiStateTracker;

    move-result-object v0

    return-object v0
.end method

.method protected hideDelayedEndCallButtonsLayout()V
    .locals 5

    .prologue
    const/16 v4, 0x64

    .line 353
    const/4 v0, 0x0

    .line 355
    .local v0, "delayed":Z
    iget-object v1, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mEndCallButtonsLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    .line 356
    iget-object v1, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mEndCallButtonsLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 357
    const/4 v0, 0x1

    .line 360
    :cond_0
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_2

    .line 361
    iget-object v1, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 368
    :goto_0
    return-void

    .line 362
    :cond_1
    const-string v1, "EndCallButtonFragment"

    const-string v2, "hideDelayedEndCallButtonsLayout send SHOW_DELAYED_ENDCALL_BUTTONS"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    iget-object v1, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 366
    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->updateEndCallButtons()V

    goto :goto_0
.end method

.method public isEnabledTwoPhoneEndButtons()Z
    .locals 1

    .prologue
    .line 894
    const-string v0, "support_twophone"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isTwoPhoneRegistered()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 895
    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/util/InCallUtils;->getCurrentUserId(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isActiveTwoPhone()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 896
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/util/InCallUtils;->getCurrentUserId(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isActiveTwoPhone()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 897
    :cond_1
    const/4 v0, 0x1

    .line 900
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected messageClicked()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 1158
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/android/incallui/fragment/EndCallButtonFragment;->setEnabled(Z)V

    .line 1160
    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getNumber()Ljava/lang/String;

    move-result-object v4

    .line 1161
    .local v4, "number":Ljava/lang/String;
    if-nez v4, :cond_0

    .line 1162
    const-string v5, "EndCallButtonFragment"

    const-string v6, "messageClicked: number is null"

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1200
    :goto_0
    return-void

    .line 1165
    :cond_0
    const/4 v3, 0x0

    .line 1166
    .local v3, "msisdn":Ljava/lang/String;
    const-string v5, "support_twophone"

    invoke-static {v5}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isActiveTwoPhone()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1167
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "*77"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1170
    :cond_1
    const-string v5, "jansky_info_for_tmo"

    invoke-static {v5}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1171
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->getLineMSISDN()Ljava/lang/String;

    move-result-object v3

    .line 1173
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.SENDTO"

    const-string v6, "smsto"

    const-string v7, ""

    invoke-static {v6, v7, v8}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1174
    .local v0, "checkIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v0}, Lcom/android/incallui/util/InCallUtils;->isIntentRegistered(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1175
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.SENDTO"

    const-string v6, "sms"

    invoke-static {v6, v4, v8}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1176
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v5, 0x14000000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1178
    const-string v5, "jansky_info_for_tmo"

    invoke-static {v5}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1179
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1180
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

    .line 1181
    const-string v5, "jansky_msisdn"

    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1185
    :cond_3
    :try_start_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1186
    :catch_0
    move-exception v1

    .line 1187
    .local v1, "e":Landroid/content/ActivityNotFoundException;
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

    .line 1190
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_4
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1191
    .restart local v2    # "intent":Landroid/content/Intent;
    const-string v5, "com.sec.android.app.popupuireceiver"

    const-string v6, "com.sec.android.app.popupuireceiver.DisableApp"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1192
    const-string v5, "app_package_name"

    invoke-static {}, Lcom/android/incallui/InCallUIFeature;->getMessagePackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1193
    const/high16 v5, 0x10000000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1195
    :try_start_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 1196
    :catch_1
    move-exception v1

    .line 1197
    .restart local v1    # "e":Landroid/content/ActivityNotFoundException;
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
    .param p1, "subId"    # I

    .prologue
    const/4 v8, 0x0

    .line 1118
    invoke-virtual {p0, v8}, Lcom/android/incallui/fragment/EndCallButtonFragment;->setEnabled(Z)V

    .line 1119
    const/4 v0, 0x0

    .line 1120
    .local v0, "MultiNumberID":I
    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getNumber()Ljava/lang/String;

    move-result-object v3

    .line 1121
    .local v3, "phoneNumber":Ljava/lang/String;
    const-string v7, "feature_multisim"

    invoke-static {v7}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1122
    invoke-direct {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getCurrentPhoneId()I

    move-result v7

    invoke-direct {p0, v7, v3}, Lcom/android/incallui/fragment/EndCallButtonFragment;->removeSubPrefix(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1127
    :goto_0
    iget v4, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->multiSimId:I

    .line 1128
    .local v4, "simId":I
    if-lez p1, :cond_3

    .line 1129
    move v0, p1

    .line 1138
    if-eqz v3, :cond_1

    if-lez v0, :cond_1

    .line 1139
    new-instance v2, Landroid/content/Intent;

    const-string v7, "android.intent.action.CALL_PRIVILEGED"

    const-string v8, "tel"

    const/4 v9, 0x0

    invoke-static {v8, v3, v9}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-direct {v2, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1141
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v7, 0x10000000

    invoke-virtual {v2, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1142
    const-string v7, "MultiSubCall"

    const/4 v8, 0x1

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1143
    const-string v7, "subNumberId"

    invoke-virtual {v2, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1144
    const-string v7, "feature_multisim"

    invoke-static {v7}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1146
    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "telecom"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telecom/TelecomManager;

    .line 1147
    .local v6, "telecomManager":Landroid/telecom/TelecomManager;
    invoke-virtual {v6}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccounts()Ljava/util/List;

    move-result-object v1

    .line 1149
    .local v1, "accountHandle":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telecom/PhoneAccountHandle;

    .line 1150
    .local v5, "subscription":Landroid/telecom/PhoneAccountHandle;
    const-string v7, "android.telecom.extra.PHONE_ACCOUNT_HANDLE"

    invoke-virtual {v2, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1152
    .end local v1    # "accountHandle":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    .end local v5    # "subscription":Landroid/telecom/PhoneAccountHandle;
    .end local v6    # "telecomManager":Landroid/telecom/TelecomManager;
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/incallui/fragment/EndCallButtonFragment;->startActivity(Landroid/content/Intent;)V

    .line 1154
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_1
    :goto_1
    return-void

    .line 1124
    .end local v4    # "simId":I
    :cond_2
    invoke-direct {p0, v8, v3}, Lcom/android/incallui/fragment/EndCallButtonFragment;->removeSubPrefix(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 1131
    .restart local v4    # "simId":I
    :cond_3
    const-string v7, "feature_multisim"

    invoke-static {v7}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 1132
    invoke-direct {p0, v3}, Lcom/android/incallui/fragment/EndCallButtonFragment;->voiceCallClicked(Ljava/lang/String;)V

    goto :goto_1

    .line 1134
    :cond_4
    invoke-direct {p0, v4, v3}, Lcom/android/incallui/fragment/EndCallButtonFragment;->voiceCallClicked(ILjava/lang/String;)V

    goto :goto_1
.end method

.method protected needToShowVideoCallButton(ZLcom/android/incallui/Call;)Z
    .locals 11
    .param p1, "enabled"    # Z
    .param p2, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1402
    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isSafetyAssistanceMode()Z

    move-result v0

    .line 1403
    .local v0, "isSafetyAssistanceMode":Z
    invoke-static {}, Lcom/android/incallui/util/ImsCommonUtils;->isAvailablePSVT()Z

    move-result v2

    .line 1404
    .local v2, "isVTReg":Z
    const-string v7, "feature_multisim"

    invoke-static {v7}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1405
    invoke-static {}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getDefaultVoiceSubscriptionId()I

    move-result v7

    invoke-static {v7}, Lcom/android/incallui/util/ImsCommonUtils;->isAvailablePSVT(I)Z

    move-result v2

    .line 1408
    :cond_0
    const-string v7, "vzw_volte_ui"

    invoke-static {v7}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1409
    const/high16 v7, 0x10000000

    invoke-virtual {p2, v7}, Lcom/android/incallui/Call;->can(I)Z

    move-result v3

    .line 1410
    .local v3, "modifyCall":Z
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->getTtySetting()I

    move-result v7

    if-nez v7, :cond_2

    move v1, v5

    .line 1411
    .local v1, "isTtyOff":Z
    :goto_0
    if-eqz v3, :cond_3

    if-eqz v2, :cond_3

    if-eqz v1, :cond_3

    move v4, v5

    .line 1412
    .local v4, "showVideoIcon":Z
    :goto_1
    const-string v7, "EndCallButtonFragment"

    const-string v8, "showVideoCall - modifyCall : %b, isVTReg : %b, isTtyOff : %b"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    .line 1413
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

    .line 1412
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v4

    .line 1441
    .end local v1    # "isTtyOff":Z
    .end local v3    # "modifyCall":Z
    .end local v4    # "showVideoIcon":Z
    :cond_1
    :goto_2
    return v6

    .restart local v3    # "modifyCall":Z
    :cond_2
    move v1, v6

    .line 1410
    goto :goto_0

    .restart local v1    # "isTtyOff":Z
    :cond_3
    move v4, v6

    .line 1411
    goto :goto_1

    .line 1417
    .end local v1    # "isTtyOff":Z
    .end local v3    # "modifyCall":Z
    :cond_4
    const-string v7, "usa_gsm_volte_ui"

    invoke-static {v7}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1418
    const-string v5, "psvt_support"

    invoke-static {v5}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    goto :goto_2

    .line 1421
    :cond_5
    const-string v7, "hide_vt_button_during_unsupported"

    invoke-static {v7}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    const-string v7, "csvt_supprt"

    .line 1422
    invoke-static {v7}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_6

    const-string v7, "psvt_support"

    .line 1423
    invoke-static {v7}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    if-eqz v2, :cond_1

    .line 1428
    :cond_6
    const-string v7, "vicommon_enabled"

    invoke-static {v7}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "block_vt_outgoing"

    .line 1429
    invoke-static {v7}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1430
    invoke-static {}, Lcom/android/incallui/InCallUIConfig;->isSEATELSIM()Z

    move-result v7

    if-nez v7, :cond_1

    if-nez v0, :cond_1

    .line 1434
    const-string v7, "BLOCK_VT_DURING_PS_CALL"

    invoke-static {v7}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 1435
    invoke-static {}, Lcom/android/incallui/InCallUIConfig;->isEVRSIM()Z

    move-result v7

    if-nez v7, :cond_7

    invoke-static {}, Lcom/android/incallui/InCallUIConfig;->isCellCSIM()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1436
    :cond_7
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isPSDomain()Z

    move-result v7

    if-nez v7, :cond_1

    .line 1440
    :cond_8
    const-string v6, "EndCallButtonFragment"

    const-string v7, "needToShowVideoCallButton : true"

    invoke-static {v6, v7}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v5

    .line 1441
    goto :goto_2
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 336
    invoke-super {p0, p1}, Lcom/android/incallui/fragment/CallButtonFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 337
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->isShowMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mEndCallButtonsContainer:Landroid/view/View;

    iget-object v1, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mEndCallButtonsUpper:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mEndCallButtonsUnder:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/incallui/fragment/EndCallButtonFragment;->updateVerticalMargin(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    .line 340
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 11
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 725
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    .line 726
    .local v3, "id":I
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

    .line 727
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7, v10}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 728
    .local v0, "call":Lcom/android/incallui/Call;
    sparse-switch v3, :sswitch_data_0

    .line 820
    const-string v6, "EndCallButtonFragment"

    const-string v7, "onClick: unexpected"

    invoke-static {v6, v7}, Lcom/android/incallui/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    :cond_0
    :goto_0
    return-void

    .line 730
    :sswitch_0
    invoke-static {v0}, Lcom/android/incallui/util/CommonAppLogging;->endCall_voiceCallButton(Lcom/android/incallui/Call;)V

    .line 732
    const-string v6, "multi_number_cmcc"

    invoke-static {v6}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 733
    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->checkMulitNumberServiceEnable()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 734
    invoke-direct {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getCurrentPhoneId()I

    move-result v6

    invoke-virtual {p0, v6, v9}, Lcom/android/incallui/fragment/EndCallButtonFragment;->setMultiNumberCall(IZ)V

    goto :goto_0

    .line 736
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->voiceCallClicked()V

    goto :goto_0

    .line 740
    :sswitch_1
    invoke-static {v0}, Lcom/android/incallui/util/CommonAppLogging;->endCall_voiceCallSim1Button(Lcom/android/incallui/Call;)V

    .line 742
    const-string v6, "multi_number_cmcc"

    invoke-static {v6}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 743
    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->checkMulitNumberServiceEnable()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 744
    invoke-virtual {p0, v10, v9}, Lcom/android/incallui/fragment/EndCallButtonFragment;->setMultiNumberCall(IZ)V

    goto :goto_0

    .line 746
    :cond_2
    iget v6, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->SIM_SLOT_1:I

    invoke-direct {p0, v6}, Lcom/android/incallui/fragment/EndCallButtonFragment;->voiceCallClicked(I)V

    goto :goto_0

    .line 750
    :sswitch_2
    invoke-static {v0}, Lcom/android/incallui/util/CommonAppLogging;->endCall_voiceCallSim2Button(Lcom/android/incallui/Call;)V

    .line 752
    const-string v6, "multi_number_cmcc"

    invoke-static {v6}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 753
    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->checkMulitNumberServiceEnable()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 754
    invoke-virtual {p0, v9, v9}, Lcom/android/incallui/fragment/EndCallButtonFragment;->setMultiNumberCall(IZ)V

    goto :goto_0

    .line 756
    :cond_3
    iget v6, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->SIM_SLOT_2:I

    invoke-direct {p0, v6}, Lcom/android/incallui/fragment/EndCallButtonFragment;->voiceCallClicked(I)V

    goto :goto_0

    .line 761
    :sswitch_3
    invoke-static {v0}, Lcom/android/incallui/util/CommonAppLogging;->endCall_videoCallButton(Lcom/android/incallui/Call;)V

    .line 763
    sget-boolean v6, Lcom/android/incallui/service/vt/VideoCallConfig;->UI_DATA_USAGE_LIMITED_GSM:Z

    if-eqz v6, :cond_4

    .line 764
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->checkAndNotifyDataUsageLimit()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 765
    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->videoCallClicked()V

    goto :goto_0

    .line 768
    :cond_4
    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->videoCallClicked()V

    goto :goto_0

    .line 772
    :sswitch_4
    const-string v6, "ims_crane"

    invoke-static {v6}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 773
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 774
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {p0, v1, v0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getPhoneNumber(Landroid/content/Context;Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v5

    .line 775
    .local v5, "number":Ljava/lang/String;
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

    .line 776
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 777
    .local v4, "intent":Landroid/content/Intent;
    const-string v6, "com.samsung.crane.addreason.LAUNCH"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 778
    if-eqz v5, :cond_5

    .line 779
    const-string v6, "sip"

    invoke-virtual {v4, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 782
    :cond_5
    :try_start_0
    invoke-virtual {p0, v4}, Lcom/android/incallui/fragment/EndCallButtonFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 783
    :catch_0
    move-exception v2

    .line 784
    .local v2, "e":Landroid/content/ActivityNotFoundException;
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

    .line 787
    .end local v1    # "context":Landroid/content/Context;
    .end local v2    # "e":Landroid/content/ActivityNotFoundException;
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "number":Ljava/lang/String;
    :cond_6
    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 788
    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v6

    check-cast v6, Lcom/android/incallui/CallButtonPresenter;

    iget-object v7, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mAction:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mUri:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lcom/android/incallui/CallButtonPresenter;->callPlusClicked(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 792
    :sswitch_5
    invoke-static {v0}, Lcom/android/incallui/util/CommonAppLogging;->endCall_messageButton(Lcom/android/incallui/Call;)V

    .line 794
    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->messageClicked()V

    goto/16 :goto_0

    .line 797
    :sswitch_6
    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "com.android.incallui"

    const-string v8, "EVCB"

    const-string v9, "EVOC"

    invoke-static {v6, v7, v8, v9}, Lcom/android/incallui/util/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 801
    invoke-direct {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getCurrentPhoneId()I

    move-result v6

    invoke-virtual {p0, v6, v10}, Lcom/android/incallui/fragment/EndCallButtonFragment;->setMultiNumberCall(IZ)V

    goto/16 :goto_0

    .line 804
    :sswitch_7
    const-string v6, "onClick spam_reject"

    invoke-static {p0, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 805
    iget-boolean v6, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->isAleadyBlockedNumber:Z

    invoke-static {v0, v6}, Lcom/android/incallui/util/CommonAppLogging;->endCall_blockNumber(Lcom/android/incallui/Call;Z)V

    .line 807
    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v0}, Lcom/android/incallui/util/PackageHelpers;->spamBlockClicked(Landroid/content/Context;Lcom/android/incallui/Call;)V

    goto/16 :goto_0

    .line 810
    :sswitch_8
    const-string v6, "onClick spam_report"

    invoke-static {p0, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 811
    invoke-static {v0}, Lcom/android/incallui/util/CommonAppLogging;->endCall_reportNumber(Lcom/android/incallui/Call;)V

    .line 813
    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v0}, Lcom/android/incallui/util/PackageHelpers;->spamReportClicked(Landroid/content/Context;Lcom/android/incallui/Call;)V

    goto/16 :goto_0

    .line 816
    :sswitch_9
    const-string v6, "onClick add reminder"

    invoke-static {p0, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 817
    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "end"

    invoke-static {v6, v7}, Lcom/android/incallui/util/InCallUtils;->sendBroadcastReminder(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 728
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
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 181
    invoke-super {p0, p1}, Lcom/android/incallui/fragment/CallButtonFragment;->onCreate(Landroid/os/Bundle;)V

    .line 182
    const-string v0, "ims_crane"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    invoke-direct {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->queryForCallPlus()V

    .line 185
    :cond_0
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 8
    .param p1, "loaderID"    # I
    .param p2, "args"    # Landroid/os/Bundle;
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

    .prologue
    const/4 v4, 0x0

    .line 393
    const-string v0, "ARG_MSISDN"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 394
    .local v7, "msisdn":Ljava/lang/String;
    const-string v0, "ARG_COLUMNS"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 395
    .local v3, "columns":[Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    move-object v0, v4

    .line 402
    :goto_0
    return-object v0

    .line 397
    :pswitch_0
    const-string v0, "EndCallButtonFragment"

    const-string v1, "onCreateLoader UI_ENTRY_POINTS_LOADER :"

    const/4 v5, 0x1

    invoke-static {v0, v1, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 398
    sget-object v0, Lcom/android/incallui/UIEntryPointsContract;->UI_ENTRY_POINTS_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 399
    .local v2, "uri":Landroid/net/Uri;
    new-instance v0, Landroid/content/CursorLoader;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 395
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 190
    const v2, 0x7f0400d0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 191
    .local v1, "parent":Landroid/view/View;
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/UiAdapter;->isShowMultiWindowMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 192
    :cond_0
    const v2, 0x7f0400d1

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 195
    :cond_1
    const v2, 0x7f100289

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mNavigationBarArea:Landroid/view/View;

    .line 196
    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->updateNavigationBar()V

    .line 199
    const-string v2, "multi_number_cmcc"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 200
    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->checkMultivalue()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->isMultiNmber:Z

    .line 201
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

    .line 204
    :cond_2
    const v2, 0x7f1001cd

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mEndCallButtonsLayout:Landroid/widget/LinearLayout;

    .line 205
    const v2, 0x7f100280

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mEndCallButtonsContainer:Landroid/view/View;

    .line 207
    const v2, 0x7f100281

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mEndCallButtonsUpper:Landroid/view/ViewGroup;

    .line 208
    const v2, 0x7f100285

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mEndCallButtonsUnder:Landroid/view/ViewGroup;

    .line 209
    const v2, 0x7f1001ce

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mVoiceCallButton:Landroid/widget/Button;

    .line 210
    iget-object v2, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mVoiceCallButton:Landroid/widget/Button;

    if-eqz v2, :cond_3

    .line 211
    iget-object v2, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mVoiceCallButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    iget-object v2, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mVoiceCallButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 214
    :cond_3
    const v2, 0x7f1001d0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mVideoCallButton:Landroid/widget/Button;

    .line 215
    iget-object v2, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mVideoCallButton:Landroid/widget/Button;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mVideoCallButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    :cond_4
    const v2, 0x7f1001cf

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mMessageButton:Landroid/widget/Button;

    .line 217
    iget-object v2, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mMessageButton:Landroid/widget/Button;

    if-eqz v2, :cond_5

    .line 218
    iget-object v2, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mMessageButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    iget-object v4, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mMessageButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/incallui/util/SystemServiceUtils;->isSmsCapable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_e

    move v2, v3

    :goto_0
    invoke-virtual {v4, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 223
    :cond_5
    const-string v2, "ims_crane"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 224
    const v2, 0x7f100286

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    iput-object v2, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mEndCallButtonsMiddleStub:Landroid/view/ViewStub;

    .line 225
    iget-object v2, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mEndCallButtonsMiddleStub:Landroid/view/ViewStub;

    if-eqz v2, :cond_6

    .line 226
    iget-object v2, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mEndCallButtonsMiddleStub:Landroid/view/ViewStub;

    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 227
    const v2, 0x7f10028a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mEndCallButtonsMiddle:Landroid/view/ViewGroup;

    .line 228
    const v2, 0x7f10019d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mCallPlus:Landroid/widget/Button;

    .line 229
    iget-object v2, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mCallPlus:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 233
    :cond_6
    const-string v2, "multi_number_cmcc"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 234
    const v2, 0x7f100288

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    iput-object v2, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mSubVoiceCallButtonStub:Landroid/view/ViewStub;

    .line 235
    iget-object v2, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mSubVoiceCallButtonStub:Landroid/view/ViewStub;

    if-eqz v2, :cond_7

    iget-boolean v2, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->isMultiNmber:Z

    if-eqz v2, :cond_7

    .line 236
    iget-object v2, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mSubVoiceCallButtonStub:Landroid/view/ViewStub;

    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 237
    iget-object v2, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mSubVoiceCallButtonStub:Landroid/view/ViewStub;

    invoke-virtual {v2, v3}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 238
    const v2, 0x7f100117

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mSubVoiceCallButton:Landroid/widget/Button;

    .line 239
    iget-object v2, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mSubVoiceCallButton:Landroid/widget/Button;

    if-eqz v2, :cond_7

    .line 240
    iget-object v2, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mSubVoiceCallButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 241
    iget-object v2, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mSubVoiceCallButton:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 246
    :cond_7
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->supportSmartCallButton()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 247
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-static {v2, v6, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 248
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/incallui/smartcall/SmartCallUtil;->checkAlreadyCallBlocked(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    const/4 v2, 0x1

    :goto_1
    iput-boolean v2, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->isAleadyBlockedNumber:Z

    .line 249
    const v2, 0x7f100282

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mSmartCallBlockButton:Landroid/widget/Button;

    .line 250
    iget-object v2, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mSmartCallBlockButton:Landroid/widget/Button;

    if-eqz v2, :cond_8

    .line 251
    iget-object v2, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mSmartCallBlockButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 252
    const-string v2, "support_spam_call_report"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 253
    iget-object v2, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mSmartCallBlockButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090131

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 261
    :cond_8
    :goto_2
    const v2, 0x7f100283

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mSmartCallReportButton:Landroid/widget/Button;

    .line 262
    iget-object v2, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mSmartCallReportButton:Landroid/widget/Button;

    if-eqz v2, :cond_9

    .line 263
    iget-object v2, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mSmartCallReportButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 264
    const-string v2, "support_spam_call_report"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 265
    iget-object v2, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mSmartCallReportButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090133

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 270
    .end local v0    # "call":Lcom/android/incallui/Call;
    :cond_9
    const-string v2, "show_reminder_button"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "com.samsung.android.app.reminder"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->isApplicationEnabled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 271
    const v2, 0x7f100284

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mAddReminderButton:Landroid/widget/Button;

    .line 272
    iget-object v2, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mAddReminderButton:Landroid/widget/Button;

    if-eqz v2, :cond_a

    .line 273
    iget-object v2, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mAddReminderButton:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 274
    iget-object v2, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mAddReminderButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 278
    :cond_a
    const-string v2, "feature_multisim"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 279
    invoke-virtual {p0, v1}, Lcom/android/incallui/fragment/EndCallButtonFragment;->updateMultiSimEndCallButton(Landroid/view/View;)V

    .line 281
    :cond_b
    const-string v2, "usa_gsm_volte_ui"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 282
    const-string v2, "psvt_support"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/incallui/fragment/EndCallButtonFragment;->changeVideoCallIcon(Z)V

    .line 283
    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->changeMessageIcon()V

    .line 284
    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->updatePadding()V

    .line 289
    :cond_c
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Contact_SupportWhitePages"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 290
    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/whitepages/nameid/NameIDHelper;->isNameIDInstalledAndEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 291
    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/whitepages/nameid/NameIDHelper;->init(Landroid/content/Context;)V

    .line 294
    :cond_d
    return-object v1

    .line 219
    :cond_e
    const/16 v2, 0x8

    goto/16 :goto_0

    .restart local v0    # "call":Lcom/android/incallui/Call;
    :cond_f
    move v2, v3

    .line 248
    goto/16 :goto_1

    .line 254
    :cond_10
    iget-boolean v2, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->isAleadyBlockedNumber:Z

    if-eqz v2, :cond_8

    .line 255
    iget-object v2, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mSmartCallBlockButton:Landroid/widget/Button;

    .line 256
    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0201a4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 255
    invoke-virtual {v2, v6, v4, v6, v6}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 257
    iget-object v2, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mSmartCallBlockButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0902b9

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    const/16 v1, 0x64

    .line 324
    iget-object v0, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 327
    :cond_0
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/CallList;->setOutgoingCallPlusFlag(Z)V

    .line 329
    invoke-static {}, Lcom/android/incallui/util/VideoCallAppLogging;->resetRotationValue()V

    .line 331
    invoke-super {p0}, Lcom/android/incallui/fragment/CallButtonFragment;->onDestroyView()V

    .line 332
    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 1
    .param p2, "data"    # Landroid/database/Cursor;
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

    .prologue
    .line 408
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v0

    .line 409
    .local v0, "id":I
    packed-switch v0, :pswitch_data_0

    .line 415
    :goto_0
    return-void

    .line 411
    :pswitch_0
    invoke-virtual {p0, p2}, Lcom/android/incallui/fragment/EndCallButtonFragment;->updateView(Landroid/database/Cursor;)V

    goto :goto_0

    .line 409
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 103
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

    .prologue
    .line 419
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v0

    .line 420
    .local v0, "id":I
    packed-switch v0, :pswitch_data_0

    .line 426
    :goto_0
    return-void

    .line 422
    :pswitch_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/incallui/fragment/EndCallButtonFragment;->updateView(Landroid/database/Cursor;)V

    goto :goto_0

    .line 420
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1203
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 1204
    .local v0, "id":I
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

    .line 1206
    packed-switch v0, :pswitch_data_0

    .line 1213
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 1208
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->voiceCallLongClicked()V

    goto :goto_0

    .line 1206
    nop

    :pswitch_data_0
    .packed-switch 0x7f1001ce
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 349
    invoke-super {p0}, Lcom/android/incallui/fragment/CallButtonFragment;->onPause()V

    .line 350
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 344
    invoke-super {p0}, Lcom/android/incallui/fragment/CallButtonFragment;->onResume()V

    .line 345
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 299
    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 300
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    new-instance v1, Lcom/android/incallui/fragment/EndCallButtonFragment$2;

    invoke-direct {v1, p0}, Lcom/android/incallui/fragment/EndCallButtonFragment$2;-><init>(Lcom/android/incallui/fragment/EndCallButtonFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 319
    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->updateEndCallButtons()V

    .line 320
    return-void
.end method

.method public setEnabled(Z)V
    .locals 4
    .param p1, "isEnabled"    # Z

    .prologue
    const/4 v3, 0x0

    const v1, 0x3ecccccd    # 0.4f

    .line 860
    iget-object v0, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mVoiceCallButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mVoiceCallButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 861
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mVideoCallButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mVideoCallButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 862
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mMessageButton:Landroid/widget/Button;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mMessageButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 863
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mSmartCallBlockButton:Landroid/widget/Button;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mSmartCallBlockButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 864
    :cond_3
    iget-object v0, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mSmartCallReportButton:Landroid/widget/Button;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mSmartCallReportButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 865
    :cond_4
    iget-object v0, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mAddReminderButton:Landroid/widget/Button;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mAddReminderButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 866
    :cond_5
    const-string v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 867
    iget-object v0, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mVoiceCallSim1Button:Landroid/widget/Button;

    if-eqz v0, :cond_6

    .line 868
    iget-object v0, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mVoiceCallSim1Button:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 869
    if-nez p1, :cond_6

    iget-object v0, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mVoiceCallSim1Button:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setAlpha(F)V

    .line 871
    :cond_6
    iget-object v0, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mVoiceCallSim2Button:Landroid/widget/Button;

    if-eqz v0, :cond_7

    .line 872
    iget-object v0, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mVoiceCallSim2Button:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 873
    if-nez p1, :cond_7

    iget-object v0, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mVoiceCallSim2Button:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setAlpha(F)V

    .line 876
    :cond_7
    const-string v0, "multi_number_cmcc"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 877
    iget-object v0, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mSubVoiceCallButton:Landroid/widget/Button;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mSubVoiceCallButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 880
    :cond_8
    const-string v0, "support_twophone"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isTwoPhoneRegistered()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 881
    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->isEnabledTwoPhoneEndButtons()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->enableEndCallUpperButtons(Ljava/lang/Boolean;)V

    .line 884
    :cond_9
    const-string v0, "feature_lgt"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 885
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isRoamingArea()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "support_volte_roaming"

    .line 886
    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {}, Lcom/android/incallui/util/ImsCommonUtils;->isAvailablePSVT()Z

    move-result v0

    if-nez v0, :cond_b

    .line 887
    :cond_a
    const-string v0, "EndCallButtonFragment"

    const-string v1, "The LGU+ does not support VT on the roaming area."

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 888
    iget-object v0, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mVideoCallButton:Landroid/widget/Button;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mVideoCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 891
    :cond_b
    return-void
.end method

.method public setMultiNumberCall(IZ)V
    .locals 13
    .param p1, "simId"    # I
    .param p2, "isMain"    # Z

    .prologue
    .line 1250
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

    .line 1251
    const/4 v6, 0x0

    .line 1253
    .local v6, "count":I
    iget-object v0, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->subNumberIdList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1254
    iget-object v0, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->subNumberPhoneList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1255
    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->checkMultivalue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1256
    const-string v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1257
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/fragment/EndCallButtonFragment;->removeSubPrefix(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->voiceCallClicked(Ljava/lang/String;)V

    .line 1302
    :cond_0
    :goto_0
    return-void

    .line 1259
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/fragment/EndCallButtonFragment;->removeSubPrefix(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->voiceCallClicked(ILjava/lang/String;)V

    goto :goto_0

    .line 1263
    :cond_2
    if-eqz p2, :cond_3

    .line 1264
    iget-object v0, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->subNumberIdList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1265
    iget-object v0, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->subNumberPhoneList:Ljava/util/ArrayList;

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "count":I
    .local v7, "count":I
    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0901cb

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    move v6, v7

    .line 1267
    .end local v7    # "count":I
    .restart local v6    # "count":I
    :cond_3
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    const/4 v0, 0x3

    if-ge v8, v0, :cond_5

    .line 1268
    add-int/lit8 v0, v8, 0x1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getSubPhone(IILandroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    .line 1269
    .local v10, "subPho":Ljava/lang/String;
    if-eqz v10, :cond_4

    .line 1270
    iget-object v0, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->subNumberPhoneList:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0902c7

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

    .line 1272
    iget-object v0, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->subNumberIdList:Ljava/util/ArrayList;

    add-int/lit8 v1, v8, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1273
    add-int/lit8 v6, v6, 0x1

    .line 1267
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1276
    .end local v10    # "subPho":Ljava/lang/String;
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

    .line 1277
    if-nez v6, :cond_6

    .line 1278
    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/incallui/fragment/EndCallButtonFragment;->showSubNumberDialog(Landroid/content/Context;ILjava/lang/String;[Ljava/lang/String;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 1280
    :cond_6
    const/4 v0, 0x1

    if-ne v6, v0, :cond_9

    .line 1281
    if-eqz p2, :cond_8

    .line 1282
    const-string v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1283
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/fragment/EndCallButtonFragment;->removeSubPrefix(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->voiceCallClicked(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1285
    :cond_7
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/fragment/EndCallButtonFragment;->removeSubPrefix(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->voiceCallClicked(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 1288
    :cond_8
    iput p1, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->multiSimId:I

    .line 1289
    iget-object v0, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->subNumberIdList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->multiNumberCall(I)V

    goto/16 :goto_0

    .line 1293
    :cond_9
    iget-object v0, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->subNumberPhoneList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v4, v0, [Ljava/lang/String;

    .line 1295
    .local v4, "mSubList":[Ljava/lang/String;
    if-lez v6, :cond_0

    .line 1296
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_2
    iget-object v0, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->subNumberPhoneList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v9, v0, :cond_a

    .line 1297
    iget-object v0, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->subNumberPhoneList:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v4, v9

    .line 1296
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 1299
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

    .prologue
    const/16 v5, 0x64

    .line 440
    const-string v2, "EndCallButtonFragment"

    const-string v3, "showDelayedEndCallButtonsLayout"

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->hasLiveCallToDisplay()Z

    move-result v1

    .line 442
    .local v1, "hasLiveCall":Z
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 443
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/16 v3, 0xa

    if-eq v2, v3, :cond_1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/16 v3, 0x9

    if-eq v2, v3, :cond_1

    .line 444
    const-string v2, "EndCallButtonFragment"

    const-string v3, "hasLiveCall(), mEndCallButtonsLayout is GONE"

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    :cond_0
    :goto_0
    return-void

    .line 447
    :cond_1
    iget-object v2, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mEndCallButtonsLayout:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_0

    .line 448
    iget-object v2, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 449
    const-string v2, "EndCallButtonFragment"

    const-string v3, "showDelayedEndCallButtonsLayout remove SHOW_DELAYED_ENDCALL_BUTTONS"

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    iget-object v2, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 452
    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->updateEndCallButtons()V

    goto :goto_0
.end method

.method public showMultiCall(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 1331
    const/16 v0, 0x80

    invoke-static {v0}, Lcom/android/incallui/util/InCallUtils;->needToDisableForKnox(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1332
    const/4 p1, 0x0

    .line 1335
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mSubVoiceCallButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 1336
    iget-object v1, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mSubVoiceCallButton:Landroid/widget/Button;

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 1337
    :cond_1
    return-void

    .line 1336
    :cond_2
    const/16 v0, 0x8

    goto :goto_0
.end method

.method protected showSmartCallButton(Z)V
    .locals 4
    .param p1, "show"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 909
    iget-object v0, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mSmartCallBlockButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 910
    iget-object v3, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mSmartCallBlockButton:Landroid/widget/Button;

    if-eqz p1, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 911
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mSmartCallReportButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 912
    iget-object v0, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mSmartCallReportButton:Landroid/widget/Button;

    if-eqz p1, :cond_3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 913
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 910
    goto :goto_0

    :cond_3
    move v1, v2

    .line 912
    goto :goto_1
.end method

.method public showSubNumberDialog(Landroid/content/Context;ILjava/lang/String;[Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "simId"    # I
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "items"    # [Ljava/lang/String;
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

    .prologue
    .line 1358
    .local p5, "sumIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/incallui/util/SecSubNumberDialogActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1359
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p3, :cond_0

    .line 1360
    const-string v1, "sim_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1361
    const-string v1, "number"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1362
    const-string v1, "items"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 1363
    const-string v1, "sub_id_list"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1365
    :cond_0
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1366
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1367
    return-void
.end method

.method protected showVideoCall(Z)V
    .locals 5
    .param p1, "show"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 916
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

    .line 918
    const/16 v0, 0x80

    invoke-static {v0}, Lcom/android/incallui/util/InCallUtils;->needToDisableForKnox(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 919
    const/4 p1, 0x0

    .line 922
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mVideoCallButtonStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_1

    .line 923
    iget-object v3, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mVideoCallButtonStub:Landroid/view/ViewStub;

    if-eqz p1, :cond_3

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 924
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mVideoCallButton:Landroid/widget/Button;

    if-eqz v0, :cond_2

    .line 925
    iget-object v0, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mVideoCallButton:Landroid/widget/Button;

    if-eqz p1, :cond_4

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 926
    :cond_2
    return-void

    :cond_3
    move v0, v2

    .line 923
    goto :goto_0

    :cond_4
    move v1, v2

    .line 925
    goto :goto_1
.end method

.method protected supportSmartCallButton()Z
    .locals 11

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1503
    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isEmergencyMode()Z

    move-result v9

    if-nez v9, :cond_0

    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isUltraPowerSavingMode()Z

    move-result v9

    if-eqz v9, :cond_2

    :cond_0
    move v2, v8

    .line 1504
    .local v2, "emergencyMode":Z
    :goto_0
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->checkPrimaryEmergencyCall()Z

    move-result v1

    .line 1505
    .local v1, "emergencyCall":Z
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isPrimaryConferenceCall()Z

    move-result v4

    .line 1506
    .local v4, "isConferenceCall":Z
    const/4 v5, 0x0

    .line 1507
    .local v5, "isVoiceMail":Z
    const/4 v6, 0x0

    .line 1509
    .local v6, "isYellowPage":Z
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v9, v10, v7}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 1510
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_1

    .line 1511
    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v9

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v3

    .line 1512
    .local v3, "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    if-eqz v3, :cond_1

    .line 1513
    iget-boolean v5, v3, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isVoiceMail:Z

    .line 1514
    iget-boolean v6, v3, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isYellowPage:Z

    .line 1518
    .end local v3    # "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    :cond_1
    if-nez v2, :cond_3

    if-nez v1, :cond_3

    if-nez v4, :cond_3

    if-nez v5, :cond_3

    if-nez v6, :cond_3

    :goto_1
    return v8

    .end local v0    # "call":Lcom/android/incallui/Call;
    .end local v1    # "emergencyCall":Z
    .end local v2    # "emergencyMode":Z
    .end local v4    # "isConferenceCall":Z
    .end local v5    # "isVoiceMail":Z
    .end local v6    # "isYellowPage":Z
    :cond_2
    move v2, v7

    .line 1503
    goto :goto_0

    .restart local v0    # "call":Lcom/android/incallui/Call;
    .restart local v1    # "emergencyCall":Z
    .restart local v2    # "emergencyMode":Z
    .restart local v4    # "isConferenceCall":Z
    .restart local v5    # "isVoiceMail":Z
    .restart local v6    # "isYellowPage":Z
    :cond_3
    move v8, v7

    .line 1518
    goto :goto_1
.end method

.method protected updateEndCallButtons()V
    .locals 14

    .prologue
    .line 457
    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->isAdded()Z

    move-result v11

    if-nez v11, :cond_1

    .line 458
    const-string v11, "EndCallButtonFragment"

    const-string v12, "fragment is detached from activity, return"

    invoke-static {v11, v12}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    :cond_0
    :goto_0
    return-void

    .line 461
    :cond_1
    const-string v11, "EndCallButtonFragment"

    const-string v12, "updateEndCallButtons()..."

    invoke-static {v11, v12}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 463
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_0

    .line 465
    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v11

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v3

    .line 467
    .local v3, "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    const/4 v4, 0x0

    .line 468
    .local v4, "isEmergency":Z
    const/4 v1, 0x0

    .line 469
    .local v1, "contactExists":Z
    const/4 v6, 0x1

    .line 470
    .local v6, "isNumberExists":Z
    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isUltraPowerSavingMode()Z

    move-result v7

    .line 471
    .local v7, "isUltraPowerSavingMode":Z
    const/4 v5, 0x0

    .line 473
    .local v5, "isMultiNmberShow":Z
    if-eqz v3, :cond_3

    .line 474
    iget-boolean v4, v3, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isEmergency:Z

    .line 475
    iget-boolean v1, v3, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactExists:Z

    .line 476
    iget v11, v3, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->presentation:I

    const/4 v12, 0x2

    if-eq v11, v12, :cond_2

    iget v11, v3, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->presentation:I

    const/4 v12, 0x3

    if-eq v11, v12, :cond_2

    iget-object v11, v3, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    .line 478
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 479
    :cond_2
    const/4 v6, 0x0

    .line 483
    :cond_3
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v11

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/incallui/CallList;->isNotUpdatingCall(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 484
    const-string v11, "EndCallButtonFragment"

    const-string v12, "updateEndCallButtons - hide buttons becauase conference call is under disconnecting"

    invoke-static {v11, v12}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    const/4 v6, 0x0

    .line 488
    :cond_4
    iget-object v11, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mEndCallButtonsLayout:Landroid/widget/LinearLayout;

    if-eqz v11, :cond_5

    .line 489
    iget-object v12, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mEndCallButtonsLayout:Landroid/widget/LinearLayout;

    if-eqz v6, :cond_27

    const/4 v11, 0x0

    :goto_1
    invoke-virtual {v12, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 494
    :cond_5
    const/16 v11, 0x80

    invoke-static {v11}, Lcom/android/incallui/util/InCallUtils;->needToDisableForKnox(I)Z

    move-result v11

    if-nez v11, :cond_8

    .line 495
    iget-object v11, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mVoiceCallSim1Button:Landroid/widget/Button;

    if-eqz v11, :cond_28

    iget-object v11, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mVoiceCallSim2Button:Landroid/widget/Button;

    if-eqz v11, :cond_28

    .line 496
    iget-object v11, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mVoiceCallSim1Button:Landroid/widget/Button;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setVisibility(I)V

    .line 497
    iget-object v11, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mVoiceCallSim2Button:Landroid/widget/Button;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setVisibility(I)V

    .line 501
    :cond_6
    :goto_2
    iget-object v11, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mVideoCallButton:Landroid/widget/Button;

    if-eqz v11, :cond_7

    iget-object v11, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mVideoCallButton:Landroid/widget/Button;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setVisibility(I)V

    .line 502
    :cond_7
    iget-object v11, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mMessageButton:Landroid/widget/Button;

    if-eqz v11, :cond_8

    .line 503
    iget-object v12, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mMessageButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/android/incallui/util/SystemServiceUtils;->isSmsCapable(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_29

    const/4 v11, 0x0

    :goto_3
    invoke-virtual {v12, v11}, Landroid/widget/Button;->setVisibility(I)V

    .line 508
    :cond_8
    const-string v11, "ims_crane"

    invoke-static {v11}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 509
    const-string v11, "EndCallButtonFragment"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "is crane available : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    sget-boolean v13, Lcom/android/incallui/secrcs/RcsShareUI;->isCrane:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    invoke-static {v11, v12, v13}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 510
    const-string v11, "EndCallButtonFragment"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mIsSelfCapable : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    sget-boolean v13, Lcom/android/incallui/secrcs/RcsShareUI;->mIsSelfCapable:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    invoke-static {v11, v12, v13}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 511
    const-string v11, "EndCallButtonFragment"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "isCraneOnlineRemote : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    sget-boolean v13, Lcom/android/incallui/secrcs/RcsShareUI;->isCraneOnlineRemote:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    invoke-static {v11, v12, v13}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 512
    const-string v11, "EndCallButtonFragment"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "isCraneOnlineSelf : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    sget-boolean v13, Lcom/android/incallui/secrcs/RcsShareUI;->isCraneOnlineSelf:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    invoke-static {v11, v12, v13}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 513
    const-string v11, "EndCallButtonFragment"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "isCraneSelf : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    sget-boolean v13, Lcom/android/incallui/secrcs/RcsShareUI;->isCraneSelf:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    invoke-static {v11, v12, v13}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 514
    const-string v11, "EndCallButtonFragment"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "isCraneRemote : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    sget-boolean v13, Lcom/android/incallui/secrcs/RcsShareUI;->isCraneRemote:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    invoke-static {v11, v12, v13}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 515
    sget-boolean v11, Lcom/android/incallui/secrcs/RcsShareUI;->isCraneSelf:Z

    if-eqz v11, :cond_2a

    sget-boolean v11, Lcom/android/incallui/secrcs/RcsShareUI;->isCraneRemote:Z

    if-eqz v11, :cond_2a

    sget-boolean v11, Lcom/android/incallui/secrcs/RcsShareUI;->isCraneOnlineSelf:Z

    if-eqz v11, :cond_2a

    sget-boolean v11, Lcom/android/incallui/secrcs/RcsShareUI;->isCraneOnlineRemote:Z

    if-eqz v11, :cond_2a

    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    sget-boolean v11, Lcom/android/incallui/secrcs/RcsShareUI;->mIsSelfCapable:Z

    if-eqz v11, :cond_2a

    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    sget-boolean v11, Lcom/android/incallui/secrcs/RcsShareUI;->isCrane:Z

    if-eqz v11, :cond_2a

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/incallui/CallList;->getOutgoingCallPlusFlag()Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v11

    invoke-virtual {v11}, Landroid/telecom/DisconnectCause;->getCode()I

    move-result v11

    const/4 v12, 0x2

    if-eq v11, v12, :cond_a

    :cond_9
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v11

    invoke-virtual {v11}, Landroid/telecom/DisconnectCause;->getCode()I

    move-result v11

    if-eqz v11, :cond_a

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v11

    invoke-virtual {v11}, Landroid/telecom/DisconnectCause;->getCode()I

    move-result v11

    const/4 v12, 0x5

    if-eq v11, v12, :cond_a

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v11

    invoke-virtual {v11}, Landroid/telecom/DisconnectCause;->getCode()I

    move-result v11

    const/4 v12, 0x7

    if-ne v11, v12, :cond_2a

    .line 516
    :cond_a
    const-string v11, "EndCallButtonFragment"

    const-string v12, "show entry point crane: "

    const/4 v13, 0x1

    invoke-static {v11, v12, v13}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 517
    iget-object v11, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mVideoCallButton:Landroid/widget/Button;

    if-eqz v11, :cond_b

    iget-object v11, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mVideoCallButton:Landroid/widget/Button;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setVisibility(I)V

    .line 518
    :cond_b
    iget-object v11, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mCallPlus:Landroid/widget/Button;

    if-eqz v11, :cond_c

    .line 519
    iget-object v11, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mCallPlus:Landroid/widget/Button;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setVisibility(I)V

    .line 520
    iget-object v11, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mCallPlus:Landroid/widget/Button;

    sget-boolean v12, Lcom/android/incallui/secrcs/RcsShareUI;->mIsSelfCapable:Z

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setEnabled(Z)V

    .line 522
    :cond_c
    iget-object v11, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mEndCallButtonsMiddle:Landroid/view/ViewGroup;

    if-eqz v11, :cond_d

    .line 523
    iget-object v11, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mEndCallButtonsMiddle:Landroid/view/ViewGroup;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 532
    :cond_d
    :goto_4
    const-string v11, "ims_crane"

    invoke-static {v11}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_10

    const-string v11, "ims_callplus"

    invoke-static {v11}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_10

    .line 533
    iget-boolean v11, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->isUiEntery:Z

    if-eqz v11, :cond_2d

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/incallui/CallList;->isUnansweredCall()Z

    move-result v11

    if-eqz v11, :cond_2d

    .line 534
    const-string v11, "EndCallButtonFragment"

    const-string v12, "show callplus entry pointin callplus :"

    const/4 v13, 0x1

    invoke-static {v11, v12, v13}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 535
    const-string v11, "EndCallButtonFragment"

    const-string v12, "show callplus entry point :"

    const/4 v13, 0x1

    invoke-static {v11, v12, v13}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 536
    iget-object v11, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mVideoCallButton:Landroid/widget/Button;

    if-eqz v11, :cond_e

    iget-object v11, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mVideoCallButton:Landroid/widget/Button;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setVisibility(I)V

    .line 537
    :cond_e
    iget-object v11, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mCallPlus:Landroid/widget/Button;

    if-eqz v11, :cond_f

    iget-object v11, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mCallPlus:Landroid/widget/Button;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setVisibility(I)V

    .line 538
    :cond_f
    iget-object v11, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mEndCallButtonsMiddle:Landroid/view/ViewGroup;

    if-eqz v11, :cond_10

    .line 539
    iget-object v11, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mEndCallButtonsMiddle:Landroid/view/ViewGroup;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 549
    :cond_10
    :goto_5
    const-string v11, "multi_number_cmcc"

    invoke-static {v11}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_11

    .line 550
    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->checkMultivalue()Z

    move-result v5

    .line 551
    const-string v11, "EndCallButtonFragment"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "isMultiNmberShow : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    :cond_11
    const-string v11, "EndCallButtonFragment"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "isEmergency : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    const-string v11, "EndCallButtonFragment"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "isNumberExists : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    const-string v11, "EndCallButtonFragment"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "isUltraPowerSavingMode : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    const-string v11, "support_smart_call"

    invoke-static {v11}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_12

    const-string v11, "support_spam_call_report"

    .line 559
    invoke-static {v11}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_14

    :cond_12
    invoke-static {}, Lcom/android/incallui/smartcall/SmartCallUtil;->isSpamEnable()Z

    move-result v11

    if-eqz v11, :cond_14

    .line 560
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/incallui/util/NameNumberUtils;->isUnknownNumber(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_30

    if-nez v1, :cond_30

    const/4 v9, 0x1

    .line 561
    .local v9, "show":Z
    :goto_6
    const-string v11, "support_smart_call"

    invoke-static {v11}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_13

    invoke-static {v0}, Lcom/android/incallui/smartcall/SmartCallUtil;->getSmartCallState(Lcom/android/incallui/Call;)I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_13

    .line 562
    const/4 v9, 0x0

    .line 564
    :cond_13
    invoke-virtual {p0, v9}, Lcom/android/incallui/fragment/EndCallButtonFragment;->showSmartCallButton(Z)V

    .line 565
    invoke-direct {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->updateSmartCallBlockButton()V

    .line 568
    .end local v9    # "show":Z
    :cond_14
    if-nez v4, :cond_31

    if-eqz v6, :cond_31

    const/4 v2, 0x1

    .line 569
    .local v2, "enabled":Z
    :goto_7
    invoke-static {}, Lcom/android/incallui/bike/BikeModeUtils;->isBikeMode()Z

    move-result v11

    if-eqz v11, :cond_15

    .line 570
    const-string v11, "updateEndCallButtons - disable buttons when bike call is present"

    invoke-static {p0, v11}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 571
    const/4 v2, 0x0

    .line 573
    :cond_15
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v11

    const/16 v12, 0x9

    if-ne v11, v12, :cond_16

    .line 574
    const-string v11, "updateEndCallButtons - disable buttons on disconnecting"

    invoke-static {p0, v11}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 575
    const/4 v2, 0x0

    .line 578
    :cond_16
    invoke-virtual {p0, v2}, Lcom/android/incallui/fragment/EndCallButtonFragment;->setEnabled(Z)V

    .line 580
    invoke-virtual {p0, v2, v0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->needToShowVideoCallButton(ZLcom/android/incallui/Call;)Z

    move-result v10

    .line 581
    .local v10, "showVideoCallButton":Z
    invoke-virtual {p0, v10}, Lcom/android/incallui/fragment/EndCallButtonFragment;->showVideoCall(Z)V

    .line 582
    invoke-virtual {p0, v10}, Lcom/android/incallui/fragment/EndCallButtonFragment;->changeVideoCallIcon(Z)V

    .line 584
    const-string v11, "usa_gsm_volte_ui"

    invoke-static {v11}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_17

    .line 585
    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->changeMessageIcon()V

    .line 588
    :cond_17
    const-string v11, "support_twophone"

    invoke-static {v11}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_18

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isTwoPhoneRegistered()Z

    move-result v11

    if-eqz v11, :cond_18

    .line 589
    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->isEnabledTwoPhoneEndButtons()Z

    move-result v11

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/android/incallui/fragment/EndCallButtonFragment;->enableEndCallUpperButtons(Ljava/lang/Boolean;)V

    .line 593
    :cond_18
    const/16 v11, 0x80

    invoke-static {v11}, Lcom/android/incallui/util/InCallUtils;->needToDisableForKnox(I)Z

    move-result v11

    if-eqz v11, :cond_1d

    .line 594
    iget-object v11, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mVoiceCallButton:Landroid/widget/Button;

    if-eqz v11, :cond_19

    iget-object v11, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mVoiceCallButton:Landroid/widget/Button;

    const/4 v12, 0x4

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setVisibility(I)V

    .line 595
    :cond_19
    iget-object v11, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mVideoCallButton:Landroid/widget/Button;

    if-eqz v11, :cond_1a

    iget-object v11, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mVideoCallButton:Landroid/widget/Button;

    const/4 v12, 0x4

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setVisibility(I)V

    .line 596
    :cond_1a
    iget-object v11, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mMessageButton:Landroid/widget/Button;

    if-eqz v11, :cond_1b

    iget-object v11, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mMessageButton:Landroid/widget/Button;

    const/4 v12, 0x4

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setVisibility(I)V

    .line 597
    :cond_1b
    iget-object v11, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mVoiceCallSim1Button:Landroid/widget/Button;

    if-eqz v11, :cond_1c

    iget-object v11, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mVoiceCallSim1Button:Landroid/widget/Button;

    const/4 v12, 0x4

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setVisibility(I)V

    .line 598
    :cond_1c
    iget-object v11, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mVoiceCallSim2Button:Landroid/widget/Button;

    if-eqz v11, :cond_1d

    iget-object v11, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mVoiceCallSim2Button:Landroid/widget/Button;

    const/4 v12, 0x4

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setVisibility(I)V

    .line 602
    :cond_1d
    const-string v11, "feature_lgt"

    invoke-static {v11}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1f

    .line 603
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isRoamingArea()Z

    move-result v11

    if-eqz v11, :cond_1f

    const-string v11, "support_volte_roaming"

    .line 604
    invoke-static {v11}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1e

    invoke-static {}, Lcom/android/incallui/util/ImsCommonUtils;->isAvailablePSVT()Z

    move-result v11

    if-nez v11, :cond_1f

    .line 605
    :cond_1e
    const-string v11, "EndCallButtonFragment"

    const-string v12, "The LGU+ does not support VT on the roaming area."

    const/4 v13, 0x1

    invoke-static {v11, v12, v13}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 606
    iget-object v11, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mVideoCallButton:Landroid/widget/Button;

    if-eqz v11, :cond_1f

    iget-object v11, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mVideoCallButton:Landroid/widget/Button;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setEnabled(Z)V

    .line 610
    :cond_1f
    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->updateVolteEndCallButtonIcon()V

    .line 612
    const-string v11, "emergency_find_lost_phone"

    invoke-static {v11}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_22

    .line 613
    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getNumber()Ljava/lang/String;

    move-result-object v8

    .line 614
    .local v8, "number":Ljava/lang/String;
    invoke-static {v8}, Lcom/android/incallui/util/NameNumberUtils;->isFindServiceNumber(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-nez v11, :cond_20

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isFindService()Z

    move-result v11

    if-eqz v11, :cond_22

    .line 615
    :cond_20
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lcom/android/incallui/fragment/EndCallButtonFragment;->setEnabled(Z)V

    .line 616
    iget-object v11, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mSmartCallBlockButton:Landroid/widget/Button;

    if-eqz v11, :cond_21

    .line 617
    iget-object v11, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mSmartCallBlockButton:Landroid/widget/Button;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setVisibility(I)V

    .line 618
    :cond_21
    iget-object v11, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mSmartCallReportButton:Landroid/widget/Button;

    if-eqz v11, :cond_22

    .line 619
    iget-object v11, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mSmartCallReportButton:Landroid/widget/Button;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setVisibility(I)V

    .line 624
    .end local v8    # "number":Ljava/lang/String;
    :cond_22
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v11

    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getVoWifiTracker()Lcom/android/incallui/util/VoWifiStateTracker;

    const-string v12, "CscFeature_Common_EnableSprintExtension"

    invoke-virtual {v11, v12}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_23

    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getVoWifiTracker()Lcom/android/incallui/util/VoWifiStateTracker;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/incallui/util/VoWifiStateTracker;->isKinetoVowifiExist()Z

    move-result v11

    if-eqz v11, :cond_23

    .line 625
    iget-object v11, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mVoiceCallButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getVoWifiTracker()Lcom/android/incallui/util/VoWifiStateTracker;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/incallui/util/VoWifiStateTracker;->isVoWiFiRegistered()Z

    move-result v12

    invoke-virtual {p0, v11, v12}, Lcom/android/incallui/fragment/EndCallButtonFragment;->updateVoiceCallButton(Landroid/widget/Button;Z)V

    .line 629
    :cond_23
    const-string v11, "spr_vowifi_ui"

    invoke-static {v11}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_24

    const-string v11, "show_vowifi_voicecall_button"

    .line 630
    invoke-static {v11}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_25

    .line 631
    :cond_24
    iget-object v11, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mVoiceCallButton:Landroid/widget/Button;

    if-eqz v11, :cond_25

    .line 632
    iget-object v11, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mVoiceCallButton:Landroid/widget/Button;

    invoke-static {}, Lcom/android/incallui/util/ImsCommonUtils;->isAvailableVoWFi()Z

    move-result v12

    invoke-virtual {p0, v11, v12}, Lcom/android/incallui/fragment/EndCallButtonFragment;->updateVoiceCallButton(Landroid/widget/Button;Z)V

    .line 637
    :cond_25
    const-string v11, "multi_number_cmcc"

    invoke-static {v11}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_26

    .line 638
    invoke-virtual {p0, v5}, Lcom/android/incallui/fragment/EndCallButtonFragment;->showMultiCall(Z)V

    .line 640
    :cond_26
    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->updatePadding()V

    goto/16 :goto_0

    .line 489
    .end local v2    # "enabled":Z
    .end local v10    # "showVideoCallButton":Z
    :cond_27
    const/4 v11, 0x4

    goto/16 :goto_1

    .line 499
    :cond_28
    iget-object v11, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mVoiceCallButton:Landroid/widget/Button;

    if-eqz v11, :cond_6

    iget-object v11, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mVoiceCallButton:Landroid/widget/Button;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_2

    .line 503
    :cond_29
    const/16 v11, 0x8

    goto/16 :goto_3

    .line 525
    :cond_2a
    const-string v11, "EndCallButtonFragment"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "hide crane entry point : Disconnect Cause "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v13

    invoke-virtual {v13}, Landroid/telecom/DisconnectCause;->getCode()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    invoke-static {v11, v12, v13}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 526
    iget-object v11, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mVideoCallButton:Landroid/widget/Button;

    if-eqz v11, :cond_2b

    iget-object v11, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mVideoCallButton:Landroid/widget/Button;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setVisibility(I)V

    .line 527
    :cond_2b
    iget-object v11, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mCallPlus:Landroid/widget/Button;

    if-eqz v11, :cond_2c

    iget-object v11, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mCallPlus:Landroid/widget/Button;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setVisibility(I)V

    .line 528
    :cond_2c
    iget-object v11, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mEndCallButtonsMiddle:Landroid/view/ViewGroup;

    if-eqz v11, :cond_d

    iget-object v11, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mEndCallButtonsMiddle:Landroid/view/ViewGroup;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_4

    .line 541
    :cond_2d
    const-string v11, "EndCallButtonFragment"

    const-string v12, "hide callplus entry point :"

    const/4 v13, 0x1

    invoke-static {v11, v12, v13}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 542
    iget-object v11, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mVideoCallButton:Landroid/widget/Button;

    if-eqz v11, :cond_2e

    iget-object v11, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mVideoCallButton:Landroid/widget/Button;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setVisibility(I)V

    .line 543
    :cond_2e
    iget-object v11, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mCallPlus:Landroid/widget/Button;

    if-eqz v11, :cond_2f

    iget-object v11, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mCallPlus:Landroid/widget/Button;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setVisibility(I)V

    .line 544
    :cond_2f
    iget-object v11, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mEndCallButtonsMiddle:Landroid/view/ViewGroup;

    if-eqz v11, :cond_10

    iget-object v11, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mEndCallButtonsMiddle:Landroid/view/ViewGroup;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_5

    .line 560
    :cond_30
    const/4 v9, 0x0

    goto/16 :goto_6

    .line 568
    :cond_31
    const/4 v2, 0x0

    goto/16 :goto_7
.end method

.method protected updateMultiSimEndCallButton(Landroid/view/View;)V
    .locals 2
    .param p1, "parent"    # Landroid/view/View;

    .prologue
    .line 686
    invoke-static {}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->checkMultiSim()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 687
    const v0, 0x7f100287

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mVoiceCallMultiSimCallBtnStub:Landroid/view/ViewStub;

    .line 688
    iget-object v0, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mVoiceCallMultiSimCallBtnStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_2

    .line 689
    iget-object v0, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mVoiceCallMultiSimCallBtnStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 690
    const v0, 0x7f100115

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mVoiceCallSim1Button:Landroid/widget/Button;

    .line 691
    const v0, 0x7f100116

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mVoiceCallSim2Button:Landroid/widget/Button;

    .line 692
    iget-object v0, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mVoiceCallSim1Button:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 693
    iget-object v0, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mVoiceCallSim1Button:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 695
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mVoiceCallSim2Button:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 696
    iget-object v0, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mVoiceCallSim2Button:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 698
    :cond_1
    invoke-direct {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->updateMultiSimEndCallButtonDrawable()V

    .line 699
    iget-object v0, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mVoiceCallButton:Landroid/widget/Button;

    if-eqz v0, :cond_2

    .line 700
    iget-object v0, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mVoiceCallButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 704
    :cond_2
    return-void
.end method

.method protected updatePadding()V
    .locals 1

    .prologue
    .line 929
    iget-object v0, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mEndCallButtonsUpper:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mEndCallButtonsUpper:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->updatePaddingInternal(Landroid/view/ViewGroup;)V

    .line 930
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mEndCallButtonsUnder:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mEndCallButtonsUnder:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->updatePaddingInternal(Landroid/view/ViewGroup;)V

    .line 931
    :cond_1
    return-void
.end method

.method public updateView(Landroid/database/Cursor;)V
    .locals 5
    .param p1, "data"    # Landroid/database/Cursor;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 429
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

    .line 430
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 431
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mAction:Ljava/lang/String;

    .line 432
    const/4 v2, 0x2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mUri:Ljava/lang/String;

    .line 433
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

    .line 434
    iget-object v2, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mAction:Ljava/lang/String;

    if-eqz v2, :cond_1

    :goto_0
    iput-boolean v0, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->isUiEntery:Z

    .line 435
    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->updateEndCallButtons()V

    .line 437
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 434
    goto :goto_0
.end method

.method protected updateVoiceCallButton(Landroid/widget/Button;Z)V
    .locals 3
    .param p1, "voiceCallButton_update"    # Landroid/widget/Button;
    .param p2, "isRegistered"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1237
    const v0, 0x7f0201a8

    .line 1238
    .local v0, "iconRes":I
    if-eqz p2, :cond_0

    .line 1239
    const-string v1, "spr_vowifi_ui"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1240
    const v0, 0x7f0201aa

    .line 1246
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1245
    invoke-virtual {p1, v2, v1, v2, v2}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1247
    return-void

    .line 1242
    :cond_1
    const v0, 0x7f0201a9

    goto :goto_0
.end method

.method protected updateVolteEndCallButtonIcon()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 644
    const-string v1, "common_volte_kor"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 645
    invoke-static {}, Lcom/android/incallui/util/ImsCommonUtils;->isVolteIconPossible()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isChecked3GHDVoiceForKT()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 646
    :cond_0
    const v0, 0x7f02018e

    .line 647
    .local v0, "voiceCallIcon":I
    const-string v1, "feature_skt"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 648
    const v0, 0x7f020191

    .line 655
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mVoiceCallButton:Landroid/widget/Button;

    if-eqz v1, :cond_2

    .line 656
    iget-object v1, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mVoiceCallButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v3, v2, v3, v3}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 657
    iget-object v1, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mVoiceCallButton:Landroid/widget/Button;

    invoke-static {}, Lcom/android/incallui/StringManager;->getInstance()Lcom/android/incallui/StringManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "secVolteCall"

    invoke-virtual {v2, v3, v4}, Lcom/android/incallui/StringManager;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 658
    const-string v1, "feature_lgt"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 659
    iget-object v1, p0, Lcom/android/incallui/fragment/EndCallButtonFragment;->mVoiceCallButton:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setAllCaps(Z)V

    .line 663
    .end local v0    # "voiceCallIcon":I
    :cond_2
    return-void

    .line 649
    .restart local v0    # "voiceCallIcon":I
    :cond_3
    const-string v1, "feature_ktt"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 650
    const v0, 0x7f02018f

    goto :goto_0

    .line 651
    :cond_4
    const-string v1, "feature_lgt"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 652
    const v0, 0x7f020190

    goto :goto_0
.end method

.method protected videoCallClicked()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1074
    invoke-virtual {p0, v7}, Lcom/android/incallui/fragment/EndCallButtonFragment;->setEnabled(Z)V

    .line 1076
    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isEmergencyMode()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1077
    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isUltraPowerSavingMode()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1084
    :cond_0
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_CAN_BMC()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_CAN_VMC()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1085
    :cond_1
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    .line 1086
    .local v0, "activity":Lcom/android/incallui/InCallActivity;
    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->showDataChargeAlertDialog()V

    .line 1089
    .end local v0    # "activity":Lcom/android/incallui/InCallActivity;
    :cond_2
    sget v5, Lcom/android/incallui/service/vt/VideoCallCapability;->HANDOVER_NOTIFICATION:I

    invoke-static {v5}, Lcom/android/incallui/service/vt/VideoCallCapability;->can(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1090
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/CallList;->getDisconnectingOrDisconnectedCall()Lcom/android/incallui/Call;

    move-result-object v1

    .line 1091
    .local v1, "call":Lcom/android/incallui/Call;
    if-eqz v1, :cond_4

    .line 1092
    invoke-static {v1}, Lcom/android/incallui/util/EpdgErrorUtils;->handeEpdgNotification(Lcom/android/incallui/Call;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1114
    .end local v1    # "call":Lcom/android/incallui/Call;
    :goto_0
    return-void

    .line 1080
    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0901ea

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1098
    :cond_4
    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getNumber()Ljava/lang/String;

    move-result-object v3

    .line 1099
    .local v3, "number":Ljava/lang/String;
    if-nez v3, :cond_5

    .line 1100
    const-string v5, "EndCallButtonFragment"

    const-string v6, "videoCallClicked: number is null"

    invoke-static {v5, v6, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 1103
    :cond_5
    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "telecom"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telecom/TelecomManager;

    .line 1104
    .local v4, "tm":Landroid/telecom/TelecomManager;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1105
    .local v2, "extras":Landroid/os/Bundle;
    const-string v5, "videocall"

    invoke-virtual {v2, v5, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1106
    const-string v5, "support_twophone"

    invoke-static {v5}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1107
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isTwoPhoneRegistered()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1108
    const-string v6, "TwoPhoneDialOption"

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isActiveTwoPhone()Z

    move-result v5

    if-eqz v5, :cond_8

    const-string v5, "twophone"

    :goto_1
    invoke-virtual {v2, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1110
    :cond_6
    const-string v5, "jansky_info_for_tmo"

    invoke-static {v5}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1111
    const-string v5, "jansky_msisdn"

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->getLineMSISDN()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1113
    :cond_7
    const-string v5, "tel"

    const/4 v6, 0x0

    invoke-static {v5, v3, v6}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Landroid/telecom/TelecomManager;->placeCall(Landroid/net/Uri;Landroid/os/Bundle;)V

    goto :goto_0

    .line 1108
    :cond_8
    const-string v5, "onephone"

    goto :goto_1
.end method

.method protected voiceCallClicked()V
    .locals 1

    .prologue
    .line 998
    invoke-direct {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->turnOffSpeaker()V

    .line 999
    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->voiceCallClicked(Ljava/lang/String;)V

    .line 1000
    return-void
.end method

.method public voiceCallLongClicked()V
    .locals 6

    .prologue
    .line 1217
    const-string v3, "ims_support_multimedia_caller_id"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1218
    invoke-static {}, Lcom/android/incallui/util/SystemServiceUtils;->isDeviceOnLTE()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/incallui/util/ImsCommonUtils;->isAvailableVoLTE()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1219
    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "emergency_mode"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    .line 1220
    invoke-virtual {p0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getNumber()Ljava/lang/String;

    move-result-object v2

    .line 1221
    .local v2, "number":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 1222
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1223
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "com.android.phone"

    const-string v4, "com.android.phone.photoring.PhotoRingScreen"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1224
    const-string v3, "dest_number"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1225
    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1227
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/incallui/fragment/EndCallButtonFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1234
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "number":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 1228
    .restart local v1    # "intent":Landroid/content/Intent;
    .restart local v2    # "number":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1229
    .local v0, "e":Landroid/content/ActivityNotFoundException;
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
