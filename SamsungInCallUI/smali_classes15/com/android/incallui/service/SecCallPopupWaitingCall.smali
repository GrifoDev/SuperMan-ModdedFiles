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

    .prologue
    .line 26
    const-class v0, Lcom/android/incallui/service/SecCallPopupWaitingCall;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/service/SecCallPopupWaitingCall;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/incallui/service/SecCallPopupService;)V
    .locals 1
    .param p1, "secCallPopupService"    # Lcom/android/incallui/service/SecCallPopupService;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/incallui/service/SecCallPopupWaitingCall;->GSM_CONFERENCECALL_MAX_SIZE:I

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/service/SecCallPopupWaitingCall;->mWaitingCallDialog:Landroid/app/AlertDialog;

    .line 36
    iput-object p1, p0, Lcom/android/incallui/service/SecCallPopupWaitingCall;->mSecCallPopupService:Lcom/android/incallui/service/SecCallPopupService;

    .line 37
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupWaitingCall;->mSecCallPopupService:Lcom/android/incallui/service/SecCallPopupService;

    invoke-virtual {v0}, Lcom/android/incallui/service/SecCallPopupService;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/service/SecCallPopupWaitingCall;->mContext:Landroid/content/Context;

    .line 38
    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/service/SecCallPopupWaitingCall;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/service/SecCallPopupWaitingCall;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupWaitingCall;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/incallui/service/SecCallPopupWaitingCall;)Lcom/android/incallui/service/SecCallPopupService;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/service/SecCallPopupWaitingCall;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupWaitingCall;->mSecCallPopupService:Lcom/android/incallui/service/SecCallPopupService;

    return-object v0
.end method

.method private getCallerName(Lcom/android/incallui/Call;)Ljava/lang/String;
    .locals 3
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 354
    if-nez p1, :cond_0

    const/4 v1, 0x0

    .line 360
    :goto_0
    return-object v1

    .line 355
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupWaitingCall;->mContext:Landroid/content/Context;

    .line 356
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/util/CallTypeUtils;->isSrvccConference(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 357
    const-string v1, "getCallerName: isSrvccConference"

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 358
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09024d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 360
    :cond_1
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/incallui/service/SecCallPopupWaitingCall;->getCallerName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getCallerName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 364
    iget-object v3, p0, Lcom/android/incallui/service/SecCallPopupWaitingCall;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v0

    .line 365
    .local v0, "contactCacheEntry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    if-eqz v0, :cond_1

    .line 366
    iget-object v1, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->namePrimary:Ljava/lang/String;

    .line 367
    .local v1, "name":Ljava/lang/String;
    iget-object v2, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    .line 368
    .local v2, "number":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 369
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

    .line 376
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "number":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 372
    .restart local v1    # "name":Ljava/lang/String;
    .restart local v2    # "number":Ljava/lang/String;
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

    .line 373
    goto :goto_0

    .line 376
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "number":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isWaitingCallPopupShowing()Z
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupWaitingCall;->mWaitingCallDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupWaitingCall;->mWaitingCallDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    .line 349
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showWaitingCallDialog(Landroid/app/AlertDialog$Builder;)V
    .locals 2
    .param p1, "dialog"    # Landroid/app/AlertDialog$Builder;

    .prologue
    .line 317
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupWaitingCall;->mWaitingCallDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    .line 318
    new-instance v0, Lcom/android/incallui/service/SecCallPopupWaitingCall$7;

    invoke-direct {v0, p0}, Lcom/android/incallui/service/SecCallPopupWaitingCall$7;-><init>(Lcom/android/incallui/service/SecCallPopupWaitingCall;)V

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 329
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/service/SecCallPopupWaitingCall;->mWaitingCallDialog:Landroid/app/AlertDialog;

    .line 330
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupWaitingCall;->mWaitingCallDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d8

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 331
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupWaitingCall;->mWaitingCallDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 333
    :cond_0
    return-void
.end method


# virtual methods
.method public DisplayWaitingCallDialogWhenDoNotHaveHoldingCall()V
    .locals 12

    .prologue
    .line 81
    const-string v9, "DisplayWaitingCallDialogWhenDoNotHaveHoldingCall"

    invoke-static {p0, v9}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    const/4 v6, 0x0

    .line 83
    .local v6, "name":Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    .line 84
    .local v2, "calls":Lcom/android/incallui/CallList;
    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v5

    .line 85
    .local v5, "fgCall":Lcom/android/incallui/Call;
    const/4 v8, 0x1

    .line 87
    .local v8, "showMergeOption":Z
    const/4 v1, 0x0

    .line 88
    .local v1, "activeCallsCounts":I
    if-nez v5, :cond_0

    .line 128
    :goto_0
    return-void

    .line 90
    :cond_0
    invoke-virtual {v5}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 91
    invoke-virtual {v5}, Lcom/android/incallui/Call;->getChildCallIds()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    .line 93
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/android/incallui/service/SecCallPopupWaitingCall;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f09008b

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

    .line 98
    :goto_1
    if-nez v6, :cond_1

    const-string v6, ""

    .line 100
    :cond_1
    const-string v0, "%s"

    .line 102
    .local v0, "SRC_TAGS":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v7

    .line 103
    .local v7, "ringingCall":Lcom/android/incallui/Call;
    invoke-static {v5, v7}, Lcom/android/incallui/service/ui/JanskyPopupUI;->checkIsShowMergeforJansky(Lcom/android/incallui/Call;Lcom/android/incallui/Call;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 104
    const/4 v8, 0x0

    .line 107
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

    .line 108
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

    .line 111
    const/4 v9, 0x3

    new-array v3, v9, [Ljava/lang/String;

    .line 112
    .local v3, "dialogItems":[Ljava/lang/String;
    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/incallui/service/SecCallPopupWaitingCall;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f090325

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, "%s"

    invoke-virtual {v10, v11, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v3, v9

    .line 113
    const/4 v9, 0x1

    iget-object v10, p0, Lcom/android/incallui/service/SecCallPopupWaitingCall;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f090326

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, "%s"

    invoke-virtual {v10, v11, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v3, v9

    .line 114
    const/4 v9, 0x2

    iget-object v10, p0, Lcom/android/incallui/service/SecCallPopupWaitingCall;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f090324

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, "%s"

    invoke-virtual {v10, v11, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v3, v9

    .line 115
    iget-object v9, p0, Lcom/android/incallui/service/SecCallPopupWaitingCall;->mContext:Landroid/content/Context;

    const v10, 0x7f090329

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 117
    .local v4, "dialogTitle":Ljava/lang/String;
    const/4 v9, 0x0

    aget-object v9, v3, v9

    const/4 v10, 0x1

    aget-object v10, v3, v10

    const/4 v11, 0x2

    aget-object v11, v3, v11

    invoke-virtual {p0, v4, v9, v10, v11}, Lcom/android/incallui/service/SecCallPopupWaitingCall;->showWaitingCallDialogGSM(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 95
    .end local v0    # "SRC_TAGS":Ljava/lang/String;
    .end local v3    # "dialogItems":[Ljava/lang/String;
    .end local v4    # "dialogTitle":Ljava/lang/String;
    .end local v7    # "ringingCall":Lcom/android/incallui/Call;
    :cond_4
    invoke-direct {p0, v5}, Lcom/android/incallui/service/SecCallPopupWaitingCall;->getCallerName(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    .line 119
    .restart local v0    # "SRC_TAGS":Ljava/lang/String;
    .restart local v7    # "ringingCall":Lcom/android/incallui/Call;
    :cond_5
    const/4 v9, 0x2

    new-array v3, v9, [Ljava/lang/String;

    .line 120
    .restart local v3    # "dialogItems":[Ljava/lang/String;
    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/incallui/service/SecCallPopupWaitingCall;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f090325

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, "%s"

    invoke-virtual {v10, v11, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v3, v9

    .line 122
    const/4 v9, 0x1

    iget-object v10, p0, Lcom/android/incallui/service/SecCallPopupWaitingCall;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f090324

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, "%s"

    invoke-virtual {v10, v11, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v3, v9

    .line 124
    iget-object v9, p0, Lcom/android/incallui/service/SecCallPopupWaitingCall;->mContext:Landroid/content/Context;

    const v10, 0x7f090329

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 126
    .restart local v4    # "dialogTitle":Ljava/lang/String;
    const/4 v9, 0x0

    aget-object v9, v3, v9

    const/4 v10, 0x1

    aget-object v10, v3, v10

    invoke-virtual {p0, v4, v9, v10}, Lcom/android/incallui/service/SecCallPopupWaitingCall;->showWaitingCallDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public DisplayWaitingCallDialogWhenHaveHoldingCall()V
    .locals 14

    .prologue
    .line 135
    const-string v11, "DisplayWaitingCallDialogWhenHaveHoldingCall"

    invoke-static {p0, v11}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    const/4 v8, 0x0

    .line 137
    .local v8, "foreName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 138
    .local v1, "backName":Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    .line 141
    .local v3, "calls":Lcom/android/incallui/CallList;
    invoke-virtual {v3}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v7

    .line 142
    .local v7, "fgCall":Lcom/android/incallui/Call;
    invoke-virtual {v3}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v2

    .line 144
    .local v2, "bgCall":Lcom/android/incallui/Call;
    const v10, 0x7f090329

    .line 145
    .local v10, "titleTextID":I
    const v6, 0x7f090112

    .line 147
    .local v6, "endOrEndingTextID":I
    if-eqz v7, :cond_0

    if-nez v2, :cond_1

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    invoke-virtual {v7}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 150
    invoke-virtual {v7}, Lcom/android/incallui/Call;->getChildCallIds()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v9

    .line 151
    .local v9, "size":I
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/android/incallui/service/SecCallPopupWaitingCall;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f09008b

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 152
    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 153
    invoke-direct {p0, v2}, Lcom/android/incallui/service/SecCallPopupWaitingCall;->getCallerName(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v1

    .line 166
    .end local v9    # "size":I
    :goto_1
    const/4 v11, 0x3

    new-array v4, v11, [Ljava/lang/String;

    .line 167
    .local v4, "dialogItems":[Ljava/lang/String;
    const-string v0, "%s"

    .line 169
    .local v0, "SRC_TAGS":Ljava/lang/String;
    if-nez v8, :cond_2

    const-string v8, ""

    .line 170
    :cond_2
    if-nez v1, :cond_3

    const-string v1, ""

    .line 173
    :cond_3
    const v11, 0x7f090324

    if-ne v6, v11, :cond_6

    .line 174
    const/4 v11, 0x0

    iget-object v12, p0, Lcom/android/incallui/service/SecCallPopupWaitingCall;->mContext:Landroid/content/Context;

    invoke-virtual {v12, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    const-string v13, "%s"

    .line 175
    invoke-virtual {v12, v13, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v4, v11

    .line 176
    const/4 v11, 0x1

    iget-object v12, p0, Lcom/android/incallui/service/SecCallPopupWaitingCall;->mContext:Landroid/content/Context;

    invoke-virtual {v12, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    const-string v13, "%s"

    .line 177
    invoke-virtual {v12, v13, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v4, v11

    .line 182
    :goto_2
    const/4 v11, 0x2

    iget-object v12, p0, Lcom/android/incallui/service/SecCallPopupWaitingCall;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f090113

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v4, v11

    .line 183
    iget-object v11, p0, Lcom/android/incallui/service/SecCallPopupWaitingCall;->mContext:Landroid/content/Context;

    invoke-virtual {v11, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 185
    .local v5, "dialogTitle":Ljava/lang/String;
    const/4 v11, 0x0

    aget-object v11, v4, v11

    const/4 v12, 0x1

    aget-object v12, v4, v12

    const/4 v13, 0x2

    aget-object v13, v4, v13

    invoke-virtual {p0, v5, v11, v12, v13}, Lcom/android/incallui/service/SecCallPopupWaitingCall;->showWaitingCallDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 154
    .end local v0    # "SRC_TAGS":Ljava/lang/String;
    .end local v4    # "dialogItems":[Ljava/lang/String;
    .end local v5    # "dialogTitle":Ljava/lang/String;
    :cond_4
    invoke-virtual {v2}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 155
    invoke-direct {p0, v7}, Lcom/android/incallui/service/SecCallPopupWaitingCall;->getCallerName(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v8

    .line 156
    invoke-virtual {v2}, Lcom/android/incallui/Call;->getChildCallIds()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v9

    .line 157
    .restart local v9    # "size":I
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/android/incallui/service/SecCallPopupWaitingCall;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f090121

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

    .line 159
    goto/16 :goto_1

    .line 160
    .end local v9    # "size":I
    :cond_5
    invoke-direct {p0, v7}, Lcom/android/incallui/service/SecCallPopupWaitingCall;->getCallerName(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v8

    .line 161
    invoke-direct {p0, v2}, Lcom/android/incallui/service/SecCallPopupWaitingCall;->getCallerName(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v1

    .line 162
    const v10, 0x7f090329

    .line 163
    const v6, 0x7f090324

    goto/16 :goto_1

    .line 179
    .restart local v0    # "SRC_TAGS":Ljava/lang/String;
    .restart local v4    # "dialogItems":[Ljava/lang/String;
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

    .line 180
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

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 41
    const-string v6, "controlWaitingCall"

    invoke-static {p0, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    .line 43
    .local v1, "callList":Lcom/android/incallui/CallList;
    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v6

    if-eqz v6, :cond_1

    move v2, v4

    .line 44
    .local v2, "hasActiveCall":Z
    :goto_0
    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v6

    if-eqz v6, :cond_2

    move v3, v4

    .line 46
    .local v3, "hasBackgroundCall":Z
    :goto_1
    if-eqz v2, :cond_4

    if-eqz v3, :cond_4

    .line 47
    const-string v4, "internalAnswerCall: answering (both lines in use!)..."

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/accessory/AccessoryEventHandler;->isCoverClosed()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 50
    invoke-static {v5}, Lcom/android/incallui/service/SecCallPopupUtils;->hangUpThenAnswer(I)V

    .line 74
    :cond_0
    :goto_2
    return-void

    .end local v2    # "hasActiveCall":Z
    .end local v3    # "hasBackgroundCall":Z
    :cond_1
    move v2, v5

    .line 43
    goto :goto_0

    .restart local v2    # "hasActiveCall":Z
    :cond_2
    move v3, v5

    .line 44
    goto :goto_1

    .line 52
    .restart local v3    # "hasBackgroundCall":Z
    :cond_3
    iget-object v4, p0, Lcom/android/incallui/service/SecCallPopupWaitingCall;->mSecCallPopupService:Lcom/android/incallui/service/SecCallPopupService;

    invoke-virtual {v4}, Lcom/android/incallui/service/SecCallPopupService;->toggleRejectMsgContent()V

    .line 53
    iget-object v4, p0, Lcom/android/incallui/service/SecCallPopupWaitingCall;->mSecCallPopupService:Lcom/android/incallui/service/SecCallPopupService;

    invoke-virtual {v4}, Lcom/android/incallui/service/SecCallPopupService;->animateForHideNotStopSelf()V

    .line 54
    invoke-virtual {p0}, Lcom/android/incallui/service/SecCallPopupWaitingCall;->DisplayWaitingCallDialogWhenHaveHoldingCall()V

    goto :goto_2

    .line 56
    :cond_4
    if-eqz v2, :cond_7

    .line 58
    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/accessory/AccessoryEventHandler;->isCoverClosed()Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "vzw_volte_ui"

    .line 59
    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 60
    :cond_5
    iget-object v4, p0, Lcom/android/incallui/service/SecCallPopupWaitingCall;->mContext:Landroid/content/Context;

    invoke-static {v4, v5}, Lcom/android/incallui/service/SecCallPopupUtils;->onAnswer(Landroid/content/Context;I)V

    goto :goto_2

    .line 62
    :cond_6
    iget-object v4, p0, Lcom/android/incallui/service/SecCallPopupWaitingCall;->mSecCallPopupService:Lcom/android/incallui/service/SecCallPopupService;

    invoke-virtual {v4}, Lcom/android/incallui/service/SecCallPopupService;->toggleRejectMsgContent()V

    .line 63
    iget-object v4, p0, Lcom/android/incallui/service/SecCallPopupWaitingCall;->mSecCallPopupService:Lcom/android/incallui/service/SecCallPopupService;

    invoke-virtual {v4}, Lcom/android/incallui/service/SecCallPopupService;->animateForHideNotStopSelf()V

    .line 64
    invoke-virtual {p0}, Lcom/android/incallui/service/SecCallPopupWaitingCall;->DisplayWaitingCallDialogWhenDoNotHaveHoldingCall()V

    goto :goto_2

    .line 68
    :cond_7
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7, v4}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 69
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_0

    .line 70
    sget-object v4, Lcom/android/incallui/service/SecCallPopupWaitingCall;->LOG_TAG:Ljava/lang/String;

    const-string v6, "animateForAnswerCall.. "

    invoke-static {v4, v6}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6, v5}, Lcom/android/incallui/TelecomAdapter;->answerCall(Ljava/lang/String;I)V

    goto :goto_2
.end method

.method public dismissWaitingCallPopup()V
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupWaitingCall;->mWaitingCallDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupWaitingCall;->mWaitingCallDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 341
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/service/SecCallPopupWaitingCall;->mWaitingCallDialog:Landroid/app/AlertDialog;

    .line 343
    :cond_0
    return-void
.end method

.method public getWaitingDialg()Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupWaitingCall;->mWaitingCallDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method public showWaitingCallDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "firstDialogItem"    # Ljava/lang/String;
    .param p3, "secondDialogItem"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 273
    const-string v2, "wating_calloption_invisible"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 274
    const-string v2, "showWaitingCallDialog : call answered without poup"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 275
    const-string v2, "wating_calloption_hold"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 276
    invoke-static {}, Lcom/android/incallui/service/SecCallPopupUtils;->onAnswer()V

    .line 314
    :cond_0
    :goto_0
    return-void

    .line 277
    :cond_1
    const-string v2, "wating_calloption_end"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 278
    invoke-static {v5}, Lcom/android/incallui/service/SecCallPopupUtils;->hangUpThenAnswer(I)V

    goto :goto_0

    .line 282
    :cond_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    new-instance v2, Landroid/view/ContextThemeWrapper;

    iget-object v3, p0, Lcom/android/incallui/service/SecCallPopupWaitingCall;->mContext:Landroid/content/Context;

    const v4, 0x7f0b0010

    invoke-direct {v2, v3, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 283
    .local v0, "dialog":Landroid/app/AlertDialog$Builder;
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/String;

    .line 284
    .local v1, "dialogItems":[Ljava/lang/String;
    aput-object p2, v1, v5

    .line 285
    const/4 v2, 0x1

    aput-object p3, v1, v2

    .line 286
    new-instance v2, Lcom/android/incallui/service/SecCallPopupWaitingCall$5;

    invoke-direct {v2, p0}, Lcom/android/incallui/service/SecCallPopupWaitingCall$5;-><init>(Lcom/android/incallui/service/SecCallPopupWaitingCall;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 302
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 308
    new-instance v2, Lcom/android/incallui/service/SecCallPopupWaitingCall$6;

    invoke-direct {v2, p0}, Lcom/android/incallui/service/SecCallPopupWaitingCall$6;-><init>(Lcom/android/incallui/service/SecCallPopupWaitingCall;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 313
    invoke-direct {p0, v0}, Lcom/android/incallui/service/SecCallPopupWaitingCall;->showWaitingCallDialog(Landroid/app/AlertDialog$Builder;)V

    goto :goto_0
.end method

.method public showWaitingCallDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "firstDialogItem"    # Ljava/lang/String;
    .param p3, "secondDialogItem"    # Ljava/lang/String;
    .param p4, "thirdDialogItem"    # Ljava/lang/String;

    .prologue
    .line 191
    new-instance v0, Landroid/app/AlertDialog$Builder;

    new-instance v2, Landroid/view/ContextThemeWrapper;

    iget-object v3, p0, Lcom/android/incallui/service/SecCallPopupWaitingCall;->mContext:Landroid/content/Context;

    const v4, 0x7f0b0010

    invoke-direct {v2, v3, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 192
    .local v0, "dialog":Landroid/app/AlertDialog$Builder;
    const/4 v2, 0x3

    new-array v1, v2, [Ljava/lang/String;

    .line 193
    .local v1, "dialogItems":[Ljava/lang/String;
    const/4 v2, 0x0

    aput-object p2, v1, v2

    .line 194
    const/4 v2, 0x1

    aput-object p3, v1, v2

    .line 195
    const/4 v2, 0x2

    aput-object p4, v1, v2

    .line 197
    new-instance v2, Lcom/android/incallui/service/SecCallPopupWaitingCall$1;

    invoke-direct {v2, p0}, Lcom/android/incallui/service/SecCallPopupWaitingCall$1;-><init>(Lcom/android/incallui/service/SecCallPopupWaitingCall;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 216
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 222
    new-instance v2, Lcom/android/incallui/service/SecCallPopupWaitingCall$2;

    invoke-direct {v2, p0}, Lcom/android/incallui/service/SecCallPopupWaitingCall$2;-><init>(Lcom/android/incallui/service/SecCallPopupWaitingCall;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 227
    invoke-direct {p0, v0}, Lcom/android/incallui/service/SecCallPopupWaitingCall;->showWaitingCallDialog(Landroid/app/AlertDialog$Builder;)V

    .line 228
    return-void
.end method

.method public showWaitingCallDialogGSM(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "firstDialogItem"    # Ljava/lang/String;
    .param p3, "secondDialogItem"    # Ljava/lang/String;
    .param p4, "thirdDialogItem"    # Ljava/lang/String;

    .prologue
    .line 233
    new-instance v0, Landroid/app/AlertDialog$Builder;

    new-instance v2, Landroid/view/ContextThemeWrapper;

    iget-object v3, p0, Lcom/android/incallui/service/SecCallPopupWaitingCall;->mContext:Landroid/content/Context;

    const v4, 0x7f0b0010

    invoke-direct {v2, v3, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 234
    .local v0, "dialog":Landroid/app/AlertDialog$Builder;
    const/4 v2, 0x3

    new-array v1, v2, [Ljava/lang/String;

    .line 235
    .local v1, "dialogItems":[Ljava/lang/String;
    const/4 v2, 0x0

    aput-object p2, v1, v2

    .line 236
    const/4 v2, 0x1

    aput-object p3, v1, v2

    .line 237
    const/4 v2, 0x2

    aput-object p4, v1, v2

    .line 239
    new-instance v2, Lcom/android/incallui/service/SecCallPopupWaitingCall$3;

    invoke-direct {v2, p0}, Lcom/android/incallui/service/SecCallPopupWaitingCall$3;-><init>(Lcom/android/incallui/service/SecCallPopupWaitingCall;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 258
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 264
    new-instance v2, Lcom/android/incallui/service/SecCallPopupWaitingCall$4;

    invoke-direct {v2, p0}, Lcom/android/incallui/service/SecCallPopupWaitingCall$4;-><init>(Lcom/android/incallui/service/SecCallPopupWaitingCall;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 269
    invoke-direct {p0, v0}, Lcom/android/incallui/service/SecCallPopupWaitingCall;->showWaitingCallDialog(Landroid/app/AlertDialog$Builder;)V

    .line 270
    return-void
.end method
