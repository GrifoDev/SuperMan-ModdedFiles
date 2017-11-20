.class public Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;
.super Landroid/app/DialogFragment;


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

.method public static dismissDialog(Z)V
    .locals 1

    sget-object v0, Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;->fragment:Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->cancelAccountSelection()V

    :cond_0
    sget-object v0, Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;->fragment:Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;

    invoke-virtual {v0}, Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;->fragment:Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;

    invoke-virtual {v0}, Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_1
    sget-object v0, Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;->fragment:Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;->fragment:Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;

    invoke-virtual {v0}, Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;->fragment:Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;

    invoke-virtual {v0}, Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;->dismiss()V

    :cond_2
    const/4 v0, 0x0

    sput-object v0, Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;->fragment:Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;

    :cond_3
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
    .locals 9

    const v8, 0x7f09031d

    const/4 v7, 0x0

    const/4 v6, 0x1

    iput-boolean v7, p0, Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;->mIsSelected:Z

    invoke-virtual {p0}, Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "telecom"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    iput-object v0, p0, Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;->mTelecomManager:Landroid/telecom/TelecomManager;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;->mAccountHandles:Ljava/util/List;

    iget-object v0, p0, Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;->mTelecomManager:Landroid/telecom/TelecomManager;

    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccounts()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/PhoneAccountHandle;

    iget-object v2, p0, Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;->mTelecomManager:Landroid/telecom/TelecomManager;

    invoke-virtual {v2, v0}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "tel"

    invoke-virtual {v2, v3}, Landroid/telecom/PhoneAccount;->supportsUriScheme(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;->mAccountHandles:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/android/incallui/SelectPhoneSimAccountDialogFragment$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/SelectPhoneSimAccountDialogFragment$1;-><init>(Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/android/incallui/SelectPhoneSimAccountDialogFragment$SelectAccountListAdapter;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f04018f

    iget-object v5, p0, Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;->mAccountHandles:Ljava/util/List;

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/android/incallui/SelectPhoneSimAccountDialogFragment$SelectAccountListAdapter;-><init>(Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;Landroid/content/Context;ILjava/util/List;)V

    sput-boolean v7, Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;->mIsDisplayCallbackDialog:Z

    const-string v3, "feature_multisim_adaptive_callback"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "prefered_voice_call"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const-string v4, "feature_chn"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    sput-boolean v6, Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;->mIsDisplayCallbackDialog:Z

    sput v3, Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;->mPreferredSim:I

    :cond_2
    :goto_1
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->getSimReceiveId()I

    move-result v3

    sput v3, Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;->mRecentlyUsedSim:I

    sget-boolean v3, Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;->mIsDisplayCallbackDialog:Z

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x7f04018e

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v0, 0x7f10008b

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v2, Lcom/android/incallui/SelectPhoneSimAccountDialogFragment$2;

    invoke-direct {v2, p0}, Lcom/android/incallui/SelectPhoneSimAccountDialogFragment$2;-><init>(Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const v0, 0x7f09031a

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    :goto_2
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d2

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    return-object v0

    :cond_3
    if-eqz v3, :cond_2

    sput-boolean v6, Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;->mIsDisplayCallbackDialog:Z

    add-int/lit8 v3, v3, -0x1

    sput v3, Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;->mPreferredSim:I

    goto :goto_1

    :cond_4
    invoke-virtual {v1, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_2

    :cond_5
    invoke-virtual {v1, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_2
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 2

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;->mIsSelected:Z

    if-nez v0, :cond_0

    invoke-static {v1}, Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;->dismissDialog(Z)V

    invoke-static {v1}, Lcom/android/incallui/bike/BikeModeUtils;->setIsBMOutCallHandled(I)V

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
