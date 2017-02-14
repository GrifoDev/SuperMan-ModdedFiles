.class public Lcom/android/incallui/service/SecCallPopupWaitingCall;
.super Ljava/lang/Object;
.source "SecCallPopupWaitingCall.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final GSM_CONFERENCECALL_MAX_SIZE:I

.field private mContext:Landroid/content/Context;

.field private mSecCallPopupService:Lcom/android/incallui/service/SecCallPopupService;

.field private mWaitingCallDialog:Landroid/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/incallui/service/SecCallPopupWaitingCall;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/service/SecCallPopupWaitingCall;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/incallui/service/SecCallPopupService;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/incallui/service/SecCallPopupWaitingCall;->GSM_CONFERENCECALL_MAX_SIZE:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/service/SecCallPopupWaitingCall;->mWaitingCallDialog:Landroid/app/AlertDialog;

    iput-object p1, p0, Lcom/android/incallui/service/SecCallPopupWaitingCall;->mSecCallPopupService:Lcom/android/incallui/service/SecCallPopupService;

    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupWaitingCall;->mSecCallPopupService:Lcom/android/incallui/service/SecCallPopupService;

    invoke-virtual {v0}, Lcom/android/incallui/service/SecCallPopupService;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/service/SecCallPopupWaitingCall;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/service/SecCallPopupWaitingCall;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupWaitingCall;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/incallui/service/SecCallPopupWaitingCall;)Lcom/android/incallui/service/SecCallPopupService;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupWaitingCall;->mSecCallPopupService:Lcom/android/incallui/service/SecCallPopupService;

    return-object v0
.end method

.method private getCallerName(Lcom/android/incallui/Call;)Ljava/lang/String;
    .locals 3

    if-nez p1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupWaitingCall;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/util/CallTypeUtils;->isSrvccConference(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "getCallerName: isSrvccConference"

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090242

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/incallui/service/SecCallPopupWaitingCall;->getCallerName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getCallerName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    iget-object v3, p0, Lcom/android/incallui/service/SecCallPopupWaitingCall;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->namePrimary:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCallerName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object v2

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCallerName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isWaitingCallPopupShowing()Z
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupWaitingCall;->mWaitingCallDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupWaitingCall;->mWaitingCallDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showWaitingCallDialog(Landroid/app/AlertDialog$Builder;)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupWaitingCall;->mWaitingCallDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/incallui/service/SecCallPopupWaitingCall$7;

    invoke-direct {v0, p0}, Lcom/android/incallui/service/SecCallPopupWaitingCall$7;-><init>(Lcom/android/incallui/service/SecCallPopupWaitingCall;)V

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/service/SecCallPopupWaitingCall;->mWaitingCallDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupWaitingCall;->mWaitingCallDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d8

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupWaitingCall;->mWaitingCallDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :cond_0
    return-void
.end method


# virtual methods
.method public DisplayWaitingCallDialogWhenDoNotHaveHoldingCall()V
    .locals 12

    const-string v9, "DisplayWaitingCallDialogWhenDoNotHaveHoldingCall"

    invoke-static {p0, v9}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v5

    const/4 v8, 0x1

    const/4 v1, 0x0

    if-nez v5, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v5}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {v5}, Lcom/android/incallui/Call;->getChildCallIds()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/android/incallui/service/SecCallPopupWaitingCall;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f090089

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_1
    if-nez v6, :cond_1

    const-string v6, ""

    :cond_1
    const-string v0, "%s"

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/android/incallui/service/ui/JanskyPopupUI;->checkIsShowMergeforJansky(Lcom/android/incallui/Call;Lcom/android/incallui/Call;)Z

    move-result v9

    if-nez v9, :cond_2

    const/4 v8, 0x0

    :cond_2
    const-string v9, "att_volte_ui"

    invoke-static {v9}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    const-string v9, "tmo_volte_ui"

    invoke-static {v9}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    const-string v9, "mpcs_volte_ui"

    invoke-static {v9}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    const-string v9, "canada_volte_ui"

    invoke-static {v9}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    :cond_3
    const/4 v9, 0x5

    if-ge v1, v9, :cond_5

    if-eqz v8, :cond_5

    const/4 v9, 0x3

    new-array v3, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/incallui/service/SecCallPopupWaitingCall;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f090319

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, "%s"

    invoke-virtual {v10, v11, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v3, v9

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/android/incallui/service/SecCallPopupWaitingCall;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f09031a

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, "%s"

    invoke-virtual {v10, v11, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v3, v9

    const/4 v9, 0x2

    iget-object v10, p0, Lcom/android/incallui/service/SecCallPopupWaitingCall;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f090318

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, "%s"

    invoke-virtual {v10, v11, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v3, v9

    iget-object v9, p0, Lcom/android/incallui/service/SecCallPopupWaitingCall;->mContext:Landroid/content/Context;

    const v10, 0x7f09031d

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v9, 0x0

    aget-object v9, v3, v9

    const/4 v10, 0x1

    aget-object v10, v3, v10

    const/4 v11, 0x2

    aget-object v11, v3, v11

    invoke-virtual {p0, v4, v9, v10, v11}, Lcom/android/incallui/service/SecCallPopupWaitingCall;->showWaitingCallDialogGSM(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    invoke-direct {p0, v5}, Lcom/android/incallui/service/SecCallPopupWaitingCall;->getCallerName(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    :cond_5
    const/4 v9, 0x2

    new-array v3, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/incallui/service/SecCallPopupWaitingCall;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f090319

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, "%s"

    invoke-virtual {v10, v11, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v3, v9

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/android/incallui/service/SecCallPopupWaitingCall;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f090318

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, "%s"

    invoke-virtual {v10, v11, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v3, v9

    iget-object v9, p0, Lcom/android/incallui/service/SecCallPopupWaitingCall;->mContext:Landroid/content/Context;

    const v10, 0x7f09031d

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v9, 0x0

    aget-object v9, v3, v9

    const/4 v10, 0x1

    aget-object v10, v3, v10

    invoke-virtual {p0, v4, v9, v10}, Lcom/android/incallui/service/SecCallPopupWaitingCall;->showWaitingCallDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public DisplayWaitingCallDialogWhenHaveHoldingCall()V
    .locals 14

    const-string v11, "DisplayWaitingCallDialogWhenHaveHoldingCall"

    invoke-static {p0, v11}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v8, 0x0

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v7

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v2

    const v10, 0x7f09031d

    const v6, 0x7f090110

    if-eqz v7, :cond_0

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v7}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-virtual {v7}, Lcom/android/incallui/Call;->getChildCallIds()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v9

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/android/incallui/service/SecCallPopupWaitingCall;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f090089

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v2}, Lcom/android/incallui/service/SecCallPopupWaitingCall;->getCallerName(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    const/4 v11, 0x3

    new-array v4, v11, [Ljava/lang/String;

    const-string v0, "%s"

    if-nez v8, :cond_2

    const-string v8, ""

    :cond_2
    if-nez v1, :cond_3

    const-string v1, ""

    :cond_3
    const v11, 0x7f090318

    if-ne v6, v11, :cond_6

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/android/incallui/service/SecCallPopupWaitingCall;->mContext:Landroid/content/Context;

    invoke-virtual {v12, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    const-string v13, "%s"

    invoke-virtual {v12, v13, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v4, v11

    const/4 v11, 0x1

    iget-object v12, p0, Lcom/android/incallui/service/SecCallPopupWaitingCall;->mContext:Landroid/content/Context;

    invoke-virtual {v12, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    const-string v13, "%s"

    invoke-virtual {v12, v13, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v4, v11

    :goto_2
    const/4 v11, 0x2

    iget-object v12, p0, Lcom/android/incallui/service/SecCallPopupWaitingCall;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f090111

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v4, v11

    iget-object v11, p0, Lcom/android/incallui/service/SecCallPopupWaitingCall;->mContext:Landroid/content/Context;

    invoke-virtual {v11, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v11, 0x0

    aget-object v11, v4, v11

    const/4 v12, 0x1

    aget-object v12, v4, v12

    const/4 v13, 0x2

    aget-object v13, v4, v13

    invoke-virtual {p0, v5, v11, v12, v13}, Lcom/android/incallui/service/SecCallPopupWaitingCall;->showWaitingCallDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    invoke-virtual {v2}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-direct {p0, v7}, Lcom/android/incallui/service/SecCallPopupWaitingCall;->getCallerName(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getChildCallIds()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v9

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/android/incallui/service/SecCallPopupWaitingCall;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f09011f

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    :cond_5
    invoke-direct {p0, v7}, Lcom/android/incallui/service/SecCallPopupWaitingCall;->getCallerName(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v2}, Lcom/android/incallui/service/SecCallPopupWaitingCall;->getCallerName(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v1

    const v10, 0x7f09031d

    const v6, 0x7f090318

    goto/16 :goto_1

    :cond_6
    const/4 v11, 0x0

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, p0, Lcom/android/incallui/service/SecCallPopupWaitingCall;->mContext:Landroid/content/Context;

    invoke-virtual {v13, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v4, v11

    const/4 v11, 0x1

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, p0, Lcom/android/incallui/service/SecCallPopupWaitingCall;->mContext:Landroid/content/Context;

    invoke-virtual {v13, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v4, v11

    goto/16 :goto_2
.end method

.method public controlWaitingCall()V
    .locals 8

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v6, "controlWaitingCall"

    invoke-static {p0, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v6

    if-eqz v6, :cond_1

    move v2, v4

    :goto_0
    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v6

    if-eqz v6, :cond_2

    move v3, v4

    :goto_1
    if-eqz v2, :cond_4

    if-eqz v3, :cond_4

    const-string v4, "internalAnswerCall: answering (both lines in use!)..."

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/accessory/AccessoryEventHandler;->isCoverClosed()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {v5}, Lcom/android/incallui/service/SecCallPopupUtils;->hangUpThenAnswer(I)V

    :cond_0
    :goto_2
    return-void

    :cond_1
    move v2, v5

    goto :goto_0

    :cond_2
    move v3, v5

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lcom/android/incallui/service/SecCallPopupWaitingCall;->mSecCallPopupService:Lcom/android/incallui/service/SecCallPopupService;

    invoke-virtual {v4}, Lcom/android/incallui/service/SecCallPopupService;->toggleRejectMsgContent()V

    iget-object v4, p0, Lcom/android/incallui/service/SecCallPopupWaitingCall;->mSecCallPopupService:Lcom/android/incallui/service/SecCallPopupService;

    invoke-virtual {v4}, Lcom/android/incallui/service/SecCallPopupService;->animateForHideNotStopSelf()V

    invoke-virtual {p0}, Lcom/android/incallui/service/SecCallPopupWaitingCall;->DisplayWaitingCallDialogWhenHaveHoldingCall()V

    goto :goto_2

    :cond_4
    if-eqz v2, :cond_7

    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/accessory/AccessoryEventHandler;->isCoverClosed()Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "vzw_volte_ui"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_5
    iget-object v4, p0, Lcom/android/incallui/service/SecCallPopupWaitingCall;->mContext:Landroid/content/Context;

    invoke-static {v4, v5}, Lcom/android/incallui/service/SecCallPopupUtils;->onAnswer(Landroid/content/Context;I)V

    goto :goto_2

    :cond_6
    iget-object v4, p0, Lcom/android/incallui/service/SecCallPopupWaitingCall;->mSecCallPopupService:Lcom/android/incallui/service/SecCallPopupService;

    invoke-virtual {v4}, Lcom/android/incallui/service/SecCallPopupService;->toggleRejectMsgContent()V

    iget-object v4, p0, Lcom/android/incallui/service/SecCallPopupWaitingCall;->mSecCallPopupService:Lcom/android/incallui/service/SecCallPopupService;

    invoke-virtual {v4}, Lcom/android/incallui/service/SecCallPopupService;->animateForHideNotStopSelf()V

    invoke-virtual {p0}, Lcom/android/incallui/service/SecCallPopupWaitingCall;->DisplayWaitingCallDialogWhenDoNotHaveHoldingCall()V

    goto :goto_2

    :cond_7
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7, v4}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v4, Lcom/android/incallui/service/SecCallPopupWaitingCall;->LOG_TAG:Ljava/lang/String;

    const-string v6, "animateForAnswerCall.. "

    invoke-static {v4, v6}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6, v5}, Lcom/android/incallui/TelecomAdapter;->answerCall(Ljava/lang/String;I)V

    goto :goto_2
.end method

.method public dismissWaitingCallPopup()V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupWaitingCall;->mWaitingCallDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupWaitingCall;->mWaitingCallDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/service/SecCallPopupWaitingCall;->mWaitingCallDialog:Landroid/app/AlertDialog;

    :cond_0
    return-void
.end method

.method public getWaitingDialg()Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupWaitingCall;->mWaitingCallDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method public showWaitingCallDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    const-string v2, "wating_calloption_invisible"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "showWaitingCallDialog : call answered without poup"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "wating_calloption_hold"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/incallui/service/SecCallPopupUtils;->onAnswer()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v2, "wating_calloption_end"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v5}, Lcom/android/incallui/service/SecCallPopupUtils;->hangUpThenAnswer(I)V

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    new-instance v2, Landroid/view/ContextThemeWrapper;

    iget-object v3, p0, Lcom/android/incallui/service/SecCallPopupWaitingCall;->mContext:Landroid/content/Context;

    const v4, 0x7f0b0010

    invoke-direct {v2, v3, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/String;

    aput-object p2, v1, v5

    const/4 v2, 0x1

    aput-object p3, v1, v2

    new-instance v2, Lcom/android/incallui/service/SecCallPopupWaitingCall$5;

    invoke-direct {v2, p0}, Lcom/android/incallui/service/SecCallPopupWaitingCall$5;-><init>(Lcom/android/incallui/service/SecCallPopupWaitingCall;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/android/incallui/service/SecCallPopupWaitingCall$6;

    invoke-direct {v2, p0}, Lcom/android/incallui/service/SecCallPopupWaitingCall$6;-><init>(Lcom/android/incallui/service/SecCallPopupWaitingCall;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-direct {p0, v0}, Lcom/android/incallui/service/SecCallPopupWaitingCall;->showWaitingCallDialog(Landroid/app/AlertDialog$Builder;)V

    goto :goto_0
.end method

.method public showWaitingCallDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    new-instance v0, Landroid/app/AlertDialog$Builder;

    new-instance v2, Landroid/view/ContextThemeWrapper;

    iget-object v3, p0, Lcom/android/incallui/service/SecCallPopupWaitingCall;->mContext:Landroid/content/Context;

    const v4, 0x7f0b0010

    invoke-direct {v2, v3, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x3

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    const/4 v2, 0x2

    aput-object p4, v1, v2

    new-instance v2, Lcom/android/incallui/service/SecCallPopupWaitingCall$1;

    invoke-direct {v2, p0}, Lcom/android/incallui/service/SecCallPopupWaitingCall$1;-><init>(Lcom/android/incallui/service/SecCallPopupWaitingCall;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/android/incallui/service/SecCallPopupWaitingCall$2;

    invoke-direct {v2, p0}, Lcom/android/incallui/service/SecCallPopupWaitingCall$2;-><init>(Lcom/android/incallui/service/SecCallPopupWaitingCall;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-direct {p0, v0}, Lcom/android/incallui/service/SecCallPopupWaitingCall;->showWaitingCallDialog(Landroid/app/AlertDialog$Builder;)V

    return-void
.end method

.method public showWaitingCallDialogGSM(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    new-instance v0, Landroid/app/AlertDialog$Builder;

    new-instance v2, Landroid/view/ContextThemeWrapper;

    iget-object v3, p0, Lcom/android/incallui/service/SecCallPopupWaitingCall;->mContext:Landroid/content/Context;

    const v4, 0x7f0b0010

    invoke-direct {v2, v3, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x3

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    const/4 v2, 0x2

    aput-object p4, v1, v2

    new-instance v2, Lcom/android/incallui/service/SecCallPopupWaitingCall$3;

    invoke-direct {v2, p0}, Lcom/android/incallui/service/SecCallPopupWaitingCall$3;-><init>(Lcom/android/incallui/service/SecCallPopupWaitingCall;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/android/incallui/service/SecCallPopupWaitingCall$4;

    invoke-direct {v2, p0}, Lcom/android/incallui/service/SecCallPopupWaitingCall$4;-><init>(Lcom/android/incallui/service/SecCallPopupWaitingCall;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-direct {p0, v0}, Lcom/android/incallui/service/SecCallPopupWaitingCall;->showWaitingCallDialog(Landroid/app/AlertDialog$Builder;)V

    return-void
.end method
