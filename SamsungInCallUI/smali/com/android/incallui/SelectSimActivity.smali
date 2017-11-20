.class public Lcom/android/incallui/SelectSimActivity;
.super Landroid/app/Activity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/SelectSimActivity$SelectAccountListAdapter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field static alertDialog:Landroid/app/AlertDialog;

.field private static fragment:Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;

.field public static instance:Lcom/android/incallui/SelectSimActivity;

.field private static mIsDisplayCallbackDialog:Z

.field private static mIsSelected:Z

.field private static mPreferredSim:I

.field private static mRecentlyUsedSim:I


# instance fields
.field private isVideoCall:Z

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

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mTelecomManager:Landroid/telecom/TelecomManager;

.field private number:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/incallui/SelectSimActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/SelectSimActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/android/incallui/SelectSimActivity;->number:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/SelectSimActivity;->isVideoCall:Z

    new-instance v0, Lcom/android/incallui/SelectSimActivity$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/SelectSimActivity$1;-><init>(Lcom/android/incallui/SelectSimActivity;)V

    iput-object v0, p0, Lcom/android/incallui/SelectSimActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/incallui/SelectSimActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/incallui/SelectSimActivity;->mIsSelected:Z

    return p0
.end method

.method static synthetic access$200(Lcom/android/incallui/SelectSimActivity;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SelectSimActivity;->mAccountHandles:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/incallui/SelectSimActivity;)Landroid/telecom/TelecomManager;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SelectSimActivity;->mTelecomManager:Landroid/telecom/TelecomManager;

    return-object v0
.end method

.method static synthetic access$500()Z
    .locals 1

    sget-boolean v0, Lcom/android/incallui/SelectSimActivity;->mIsDisplayCallbackDialog:Z

    return v0
.end method

.method static synthetic access$600()I
    .locals 1

    sget v0, Lcom/android/incallui/SelectSimActivity;->mRecentlyUsedSim:I

    return v0
.end method

.method static synthetic access$700()I
    .locals 1

    sget v0, Lcom/android/incallui/SelectSimActivity;->mPreferredSim:I

    return v0
.end method

.method public static dismissDialog()V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/android/incallui/SelectSimActivity;->TAG:Ljava/lang/String;

    const-string v1, "  dismissDialog()..."

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/incallui/SelectSimActivity;->mIsSelected:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/incallui/SelectSimActivity;->instance:Lcom/android/incallui/SelectSimActivity;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->cancelAccountSelection()V

    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/incallui/SelectSimActivity;->mIsSelected:Z

    sget-object v0, Lcom/android/incallui/SelectSimActivity;->alertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/incallui/SelectSimActivity;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/incallui/SelectSimActivity;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    sget-object v0, Lcom/android/incallui/SelectSimActivity;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    sput-object v2, Lcom/android/incallui/SelectSimActivity;->alertDialog:Landroid/app/AlertDialog;

    :cond_1
    sget-object v0, Lcom/android/incallui/SelectSimActivity;->instance:Lcom/android/incallui/SelectSimActivity;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/incallui/SelectSimActivity;->instance:Lcom/android/incallui/SelectSimActivity;

    sput-object v2, Lcom/android/incallui/SelectSimActivity;->instance:Lcom/android/incallui/SelectSimActivity;

    invoke-virtual {v0}, Lcom/android/incallui/SelectSimActivity;->finish()V

    :cond_2
    return-void
.end method

.method public static dismissDialogFromOutside()V
    .locals 2

    sget-object v0, Lcom/android/incallui/SelectSimActivity;->TAG:Ljava/lang/String;

    const-string v1, "  dismissDialogFromOutside()..."

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/incallui/SelectSimActivity;->instance:Lcom/android/incallui/SelectSimActivity;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/incallui/SelectSimActivity;->instance:Lcom/android/incallui/SelectSimActivity;

    invoke-virtual {v0}, Lcom/android/incallui/SelectSimActivity;->finish()V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/android/incallui/SelectSimActivity;->dismissDialog()V

    goto :goto_0
.end method


# virtual methods
.method public finish()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->finish()V

    sget-object v0, Lcom/android/incallui/SelectSimActivity;->TAG:Ljava/lang/String;

    const-string v1, "finish"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/incallui/SelectSimActivity;->instance:Lcom/android/incallui/SelectSimActivity;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/SelectSimActivity;->dismissDialog()V

    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/android/incallui/SelectSimActivity;->instance:Lcom/android/incallui/SelectSimActivity;

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    sget-object v0, Lcom/android/incallui/SelectSimActivity;->TAG:Ljava/lang/String;

    const-string v1, "onCreate..."

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sput-object p0, Lcom/android/incallui/SelectSimActivity;->instance:Lcom/android/incallui/SelectSimActivity;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/incallui/SelectSimActivity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/android/incallui/SelectSimActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x80000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {p0}, Lcom/android/incallui/SelectSimActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/SelectSimActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/incallui/SelectSimActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/android/incallui/SelectSimActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/incallui/SelectSimActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    sget-object v0, Lcom/android/incallui/SelectSimActivity;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    sget-object v0, Lcom/android/incallui/SelectSimActivity;->TAG:Ljava/lang/String;

    const-string v1, "  onPause()..."

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onResume()V
    .locals 9

    const v8, 0x7f09031d

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    sget-object v0, Lcom/android/incallui/SelectSimActivity;->TAG:Ljava/lang/String;

    const-string v3, "onResume..."

    invoke-static {v0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sput-boolean v1, Lcom/android/incallui/SelectSimActivity;->mIsSelected:Z

    const-string v0, "telecom"

    invoke-virtual {p0, v0}, Lcom/android/incallui/SelectSimActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    iput-object v0, p0, Lcom/android/incallui/SelectSimActivity;->mTelecomManager:Landroid/telecom/TelecomManager;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/SelectSimActivity;->mAccountHandles:Ljava/util/List;

    iget-object v0, p0, Lcom/android/incallui/SelectSimActivity;->mTelecomManager:Landroid/telecom/TelecomManager;

    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccounts()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/PhoneAccountHandle;

    iget-object v4, p0, Lcom/android/incallui/SelectSimActivity;->mTelecomManager:Landroid/telecom/TelecomManager;

    invoke-virtual {v4, v0}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v4

    if-eqz v4, :cond_0

    const-string v5, "tel"

    invoke-virtual {v4, v5}, Landroid/telecom/PhoneAccount;->supportsUriScheme(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/incallui/SelectSimActivity;->mAccountHandles:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v3, Lcom/android/incallui/SelectSimActivity$2;

    invoke-direct {v3, p0}, Lcom/android/incallui/SelectSimActivity$2;-><init>(Lcom/android/incallui/SelectSimActivity;)V

    sget-object v0, Lcom/android/incallui/SelectSimActivity;->alertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/incallui/SelectSimActivity;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :goto_1
    return-void

    :cond_2
    sput-boolean v1, Lcom/android/incallui/SelectSimActivity;->mIsDisplayCallbackDialog:Z

    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v5, Lcom/android/incallui/SelectSimActivity$SelectAccountListAdapter;

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v0

    const v6, 0x7f04018f

    iget-object v7, p0, Lcom/android/incallui/SelectSimActivity;->mAccountHandles:Ljava/util/List;

    invoke-direct {v5, p0, v0, v6, v7}, Lcom/android/incallui/SelectSimActivity$SelectAccountListAdapter;-><init>(Lcom/android/incallui/SelectSimActivity;Landroid/content/Context;ILjava/util/List;)V

    const-string v0, "feature_multisim_adaptive_callback"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v6, "prefered_voice_call"

    invoke-static {v0, v6, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const-string v6, "feature_chn"

    invoke-static {v6}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    sput-boolean v2, Lcom/android/incallui/SelectSimActivity;->mIsDisplayCallbackDialog:Z

    sput v0, Lcom/android/incallui/SelectSimActivity;->mPreferredSim:I

    :cond_3
    :goto_2
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->getSimReceiveId()I

    move-result v0

    sput v0, Lcom/android/incallui/SelectSimActivity;->mRecentlyUsedSim:I

    sget v0, Lcom/android/incallui/SelectSimActivity;->mRecentlyUsedSim:I

    const/4 v6, -0x1

    if-ne v0, v6, :cond_4

    sget v0, Lcom/android/incallui/SelectSimActivity;->mPreferredSim:I

    if-ne v0, v2, :cond_6

    move v0, v1

    :goto_3
    sput v0, Lcom/android/incallui/SelectSimActivity;->mRecentlyUsedSim:I

    :cond_4
    sget-boolean v0, Lcom/android/incallui/SelectSimActivity;->mIsDisplayCallbackDialog:Z

    if-eqz v0, :cond_7

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04018e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f10008b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v2, Lcom/android/incallui/SelectSimActivity$3;

    invoke-direct {v2, p0}, Lcom/android/incallui/SelectSimActivity$3;-><init>(Lcom/android/incallui/SelectSimActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const v0, 0x7f09031a

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/SelectSimActivity;->alertDialog:Landroid/app/AlertDialog;

    :goto_4
    sget-object v0, Lcom/android/incallui/SelectSimActivity;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x80000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    sget-object v1, Lcom/android/incallui/SelectSimActivity;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    sget-object v0, Lcom/android/incallui/SelectSimActivity;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7de

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    sget-object v0, Lcom/android/incallui/SelectSimActivity;->alertDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/android/incallui/SelectSimActivity$4;

    invoke-direct {v1, p0}, Lcom/android/incallui/SelectSimActivity$4;-><init>(Lcom/android/incallui/SelectSimActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    sget-object v0, Lcom/android/incallui/SelectSimActivity;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_1

    :cond_5
    if-eqz v0, :cond_3

    sput-boolean v2, Lcom/android/incallui/SelectSimActivity;->mIsDisplayCallbackDialog:Z

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/android/incallui/SelectSimActivity;->mPreferredSim:I

    goto/16 :goto_2

    :cond_6
    move v0, v2

    goto :goto_3

    :cond_7
    invoke-virtual {v4, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v5, v3}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/SelectSimActivity;->alertDialog:Landroid/app/AlertDialog;

    goto :goto_4

    :cond_8
    invoke-virtual {v4, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v5, v3}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/SelectSimActivity;->alertDialog:Landroid/app/AlertDialog;

    goto :goto_4
.end method

.method public onUserLeaveHint()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onUserLeaveHint()V

    invoke-virtual {p0}, Lcom/android/incallui/SelectSimActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/incallui/SelectSimActivity;->TAG:Ljava/lang/String;

    const-string v1, "home button pressed"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/SelectSimActivity;->finish()V

    :cond_0
    return-void
.end method
