.class public Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;
.super Landroid/app/DialogFragment;
.source "SelectPhoneSimAccountDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/SelectPhoneSimAccountDialogFragment$SelectAccountListAdapter;
    }
.end annotation


# static fields
.field private static fragment:Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;

.field private static mIsDisplayCallbackDialog:Z

.field private static mPreferredSim:I

.field private static mRecentlyUsedSim:I


# instance fields
.field private mAccountHandles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telecom/PhoneAccountHandle;",
            ">;"
        }
    .end annotation
.end field

.field private mIsSelected:Z

.field private mTelecomManager:Landroid/telecom/TelecomManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;->mIsSelected:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;->mAccountHandles:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;)Landroid/telecom/TelecomManager;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;->mTelecomManager:Landroid/telecom/TelecomManager;

    return-object v0
.end method

.method static synthetic access$400()Z
    .locals 1

    sget-boolean v0, Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;->mIsDisplayCallbackDialog:Z

    return v0
.end method

.method static synthetic access$500()I
    .locals 1

    sget v0, Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;->mRecentlyUsedSim:I

    return v0
.end method

.method static synthetic access$600()I
    .locals 1

    sget v0, Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;->mPreferredSim:I

    return v0
.end method

.method public static dismissDialog()V
    .locals 1

    sget-object v0, Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;->fragment:Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->cancelAccountSelection()V

    sget-object v0, Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;->fragment:Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;

    invoke-virtual {v0}, Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;->fragment:Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;

    invoke-virtual {v0}, Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    sget-object v0, Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;->fragment:Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;->fragment:Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;

    invoke-virtual {v0}, Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;->fragment:Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;

    invoke-virtual {v0}, Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;->dismiss()V

    :cond_1
    const/4 v0, 0x0

    sput-object v0, Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;->fragment:Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;

    :cond_2
    return-void
.end method

.method public static show(Landroid/app/FragmentManager;)V
    .locals 2

    new-instance v0, Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;

    invoke-direct {v0}, Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;-><init>()V

    sput-object v0, Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;->fragment:Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;

    sget-object v0, Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;->fragment:Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;

    const-string v1, "selectAccount"

    invoke-virtual {v0, p0, v1}, Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 12

    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;->mIsSelected:Z

    invoke-virtual {p0}, Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const-string v10, "telecom"

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/telecom/TelecomManager;

    iput-object v9, p0, Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;->mTelecomManager:Landroid/telecom/TelecomManager;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;->mAccountHandles:Ljava/util/List;

    iget-object v9, p0, Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;->mTelecomManager:Landroid/telecom/TelecomManager;

    invoke-virtual {v9}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccounts()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/PhoneAccountHandle;

    iget-object v10, p0, Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;->mTelecomManager:Landroid/telecom/TelecomManager;

    invoke-virtual {v10, v1}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v10, "tel"

    invoke-virtual {v0, v10}, Landroid/telecom/PhoneAccount;->supportsUriScheme(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;->mAccountHandles:Ljava/util/List;

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v8, Lcom/android/incallui/SelectPhoneSimAccountDialogFragment$1;

    invoke-direct {v8, p0}, Lcom/android/incallui/SelectPhoneSimAccountDialogFragment$1;-><init>(Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;)V

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v3, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v7, Lcom/android/incallui/SelectPhoneSimAccountDialogFragment$SelectAccountListAdapter;

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f04017a

    iget-object v11, p0, Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;->mAccountHandles:Ljava/util/List;

    invoke-direct {v7, p0, v9, v10, v11}, Lcom/android/incallui/SelectPhoneSimAccountDialogFragment$SelectAccountListAdapter;-><init>(Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;Landroid/content/Context;ILjava/util/List;)V

    const/4 v9, 0x0

    sput-boolean v9, Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;->mIsDisplayCallbackDialog:Z

    const-string v9, "feature_multisim_adaptive_callback"

    invoke-static {v9}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/incallui/InCallApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "prefered_voice_call"

    const/4 v11, 0x1

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    const-string v9, "feature_chn"

    invoke-static {v9}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    const/4 v9, 0x1

    sput-boolean v9, Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;->mIsDisplayCallbackDialog:Z

    sput v6, Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;->mPreferredSim:I

    :cond_2
    :goto_1
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->getSimReceiveId()I

    move-result v9

    sput v9, Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;->mRecentlyUsedSim:I

    sget-boolean v9, Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;->mIsDisplayCallbackDialog:Z

    if-eqz v9, :cond_4

    invoke-virtual {p0}, Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    const v10, 0x7f040179

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    const v9, 0x7f100428

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ListView;

    invoke-virtual {v5, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v9, Lcom/android/incallui/SelectPhoneSimAccountDialogFragment$2;

    invoke-direct {v9, p0}, Lcom/android/incallui/SelectPhoneSimAccountDialogFragment$2;-><init>(Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;)V

    invoke-virtual {v5, v9}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const v9, 0x7f0902aa

    invoke-virtual {v3, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    :goto_2
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    const/16 v10, 0x7d2

    invoke-virtual {v9, v10}, Landroid/view/Window;->setType(I)V

    return-object v2

    :cond_3
    if-eqz v6, :cond_2

    const/4 v9, 0x1

    sput-boolean v9, Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;->mIsDisplayCallbackDialog:Z

    add-int/lit8 v9, v6, -0x1

    sput v9, Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;->mPreferredSim:I

    goto :goto_1

    :cond_4
    const v9, 0x7f0902ad

    invoke-virtual {v3, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9, v7, v8}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    goto :goto_2

    :cond_5
    const v9, 0x7f0902ad

    invoke-virtual {v3, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9, v7, v8}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    goto :goto_2
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;->mIsSelected:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;->dismissDialog()V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/incallui/bike/BikeModeUtils;->setIsBMOutCallHandled(I)V

    :cond_0
    invoke-super {p0}, Landroid/app/DialogFragment;->onPause()V

    invoke-virtual {p0}, Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method
