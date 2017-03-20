.class public Lcom/android/incallui/SelectSimActivity;
.super Landroid/app/Activity;
.source "SelectSimActivity.java"


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

.field private static mIsSelected:Z


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

    .prologue
    .line 58
    const-class v0, Lcom/android/incallui/SelectSimActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/SelectSimActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 59
    const-string v0, ""

    iput-object v0, p0, Lcom/android/incallui/SelectSimActivity;->number:Ljava/lang/String;

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/SelectSimActivity;->isVideoCall:Z

    .line 62
    new-instance v0, Lcom/android/incallui/SelectSimActivity$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/SelectSimActivity$1;-><init>(Lcom/android/incallui/SelectSimActivity;)V

    iput-object v0, p0, Lcom/android/incallui/SelectSimActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/android/incallui/SelectSimActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 51
    sput-boolean p0, Lcom/android/incallui/SelectSimActivity;->mIsSelected:Z

    return p0
.end method

.method static synthetic access$200(Lcom/android/incallui/SelectSimActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/SelectSimActivity;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/incallui/SelectSimActivity;->mAccountHandles:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/incallui/SelectSimActivity;)Landroid/telecom/TelecomManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/SelectSimActivity;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/incallui/SelectSimActivity;->mTelecomManager:Landroid/telecom/TelecomManager;

    return-object v0
.end method

.method public static dismissDialog()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 158
    sget-object v1, Lcom/android/incallui/SelectSimActivity;->TAG:Ljava/lang/String;

    const-string v2, "  dismissDialog()..."

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    sget-boolean v1, Lcom/android/incallui/SelectSimActivity;->mIsSelected:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/incallui/SelectSimActivity;->instance:Lcom/android/incallui/SelectSimActivity;

    if-eqz v1, :cond_0

    .line 160
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->cancelAccountSelection()V

    .line 162
    :cond_0
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/incallui/SelectSimActivity;->mIsSelected:Z

    .line 163
    sget-object v1, Lcom/android/incallui/SelectSimActivity;->alertDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/incallui/SelectSimActivity;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 164
    sget-object v1, Lcom/android/incallui/SelectSimActivity;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 165
    sget-object v1, Lcom/android/incallui/SelectSimActivity;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 166
    sput-object v3, Lcom/android/incallui/SelectSimActivity;->alertDialog:Landroid/app/AlertDialog;

    .line 169
    :cond_1
    sget-object v1, Lcom/android/incallui/SelectSimActivity;->instance:Lcom/android/incallui/SelectSimActivity;

    if-eqz v1, :cond_2

    .line 170
    sget-object v0, Lcom/android/incallui/SelectSimActivity;->instance:Lcom/android/incallui/SelectSimActivity;

    .line 171
    .local v0, "tmp":Lcom/android/incallui/SelectSimActivity;
    sput-object v3, Lcom/android/incallui/SelectSimActivity;->instance:Lcom/android/incallui/SelectSimActivity;

    .line 172
    invoke-virtual {v0}, Lcom/android/incallui/SelectSimActivity;->finish()V

    .line 174
    :cond_2
    return-void
.end method

.method public static dismissDialogFromOutside()V
    .locals 2

    .prologue
    .line 150
    sget-object v0, Lcom/android/incallui/SelectSimActivity;->TAG:Ljava/lang/String;

    const-string v1, "  dismissDialogFromOutside()..."

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    sget-object v0, Lcom/android/incallui/SelectSimActivity;->instance:Lcom/android/incallui/SelectSimActivity;

    if-eqz v0, :cond_0

    .line 152
    sget-object v0, Lcom/android/incallui/SelectSimActivity;->instance:Lcom/android/incallui/SelectSimActivity;

    invoke-virtual {v0}, Lcom/android/incallui/SelectSimActivity;->finish()V

    .line 155
    :goto_0
    return-void

    .line 154
    :cond_0
    invoke-static {}, Lcom/android/incallui/SelectSimActivity;->dismissDialog()V

    goto :goto_0
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    .line 178
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 179
    sget-object v0, Lcom/android/incallui/SelectSimActivity;->TAG:Ljava/lang/String;

    const-string v1, "finish"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    sget-object v0, Lcom/android/incallui/SelectSimActivity;->instance:Lcom/android/incallui/SelectSimActivity;

    if-eqz v0, :cond_0

    .line 181
    invoke-static {}, Lcom/android/incallui/SelectSimActivity;->dismissDialog()V

    .line 182
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/android/incallui/SelectSimActivity;->instance:Lcom/android/incallui/SelectSimActivity;

    .line 183
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 129
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 130
    sget-object v2, Lcom/android/incallui/SelectSimActivity;->TAG:Ljava/lang/String;

    const-string v3, "onCreate..."

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    sput-object p0, Lcom/android/incallui/SelectSimActivity;->instance:Lcom/android/incallui/SelectSimActivity;

    .line 132
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/incallui/SelectSimActivity;->requestWindowFeature(I)Z

    .line 134
    invoke-virtual {p0}, Lcom/android/incallui/SelectSimActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 135
    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x80000

    or-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 136
    invoke-virtual {p0}, Lcom/android/incallui/SelectSimActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 138
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 139
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 140
    iget-object v2, p0, Lcom/android/incallui/SelectSimActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/android/incallui/SelectSimActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 141
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 196
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 197
    iget-object v0, p0, Lcom/android/incallui/SelectSimActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/incallui/SelectSimActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 199
    sget-object v0, Lcom/android/incallui/SelectSimActivity;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 145
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 146
    sget-object v0, Lcom/android/incallui/SelectSimActivity;->TAG:Ljava/lang/String;

    const-string v1, "  onPause()..."

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    return-void
.end method

.method protected onResume()V
    .locals 9

    .prologue
    .line 74
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 75
    sget-object v6, Lcom/android/incallui/SelectSimActivity;->TAG:Ljava/lang/String;

    const-string v7, "onResume..."

    invoke-static {v6, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const/4 v6, 0x0

    sput-boolean v6, Lcom/android/incallui/SelectSimActivity;->mIsSelected:Z

    .line 77
    const-string v6, "telecom"

    invoke-virtual {p0, v6}, Lcom/android/incallui/SelectSimActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telecom/TelecomManager;

    iput-object v6, p0, Lcom/android/incallui/SelectSimActivity;->mTelecomManager:Landroid/telecom/TelecomManager;

    .line 78
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/android/incallui/SelectSimActivity;->mAccountHandles:Ljava/util/List;

    .line 79
    iget-object v6, p0, Lcom/android/incallui/SelectSimActivity;->mTelecomManager:Landroid/telecom/TelecomManager;

    invoke-virtual {v6}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccounts()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/PhoneAccountHandle;

    .line 80
    .local v1, "accountHandle":Landroid/telecom/PhoneAccountHandle;
    iget-object v7, p0, Lcom/android/incallui/SelectSimActivity;->mTelecomManager:Landroid/telecom/TelecomManager;

    invoke-virtual {v7, v1}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v0

    .line 81
    .local v0, "account":Landroid/telecom/PhoneAccount;
    if-eqz v0, :cond_0

    const-string v7, "tel"

    invoke-virtual {v0, v7}, Landroid/telecom/PhoneAccount;->supportsUriScheme(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 82
    iget-object v7, p0, Lcom/android/incallui/SelectSimActivity;->mAccountHandles:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 85
    .end local v0    # "account":Landroid/telecom/PhoneAccount;
    .end local v1    # "accountHandle":Landroid/telecom/PhoneAccountHandle;
    :cond_1
    new-instance v5, Lcom/android/incallui/SelectSimActivity$2;

    invoke-direct {v5, p0}, Lcom/android/incallui/SelectSimActivity$2;-><init>(Lcom/android/incallui/SelectSimActivity;)V

    .line 100
    .local v5, "selectionListener":Landroid/content/DialogInterface$OnClickListener;
    sget-object v6, Lcom/android/incallui/SelectSimActivity;->alertDialog:Landroid/app/AlertDialog;

    if-eqz v6, :cond_2

    .line 101
    sget-object v6, Lcom/android/incallui/SelectSimActivity;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    .line 125
    :goto_1
    return-void

    .line 104
    :cond_2
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 105
    .local v2, "builder":Landroid/app/AlertDialog$Builder;
    new-instance v4, Lcom/android/incallui/SelectSimActivity$SelectAccountListAdapter;

    .line 106
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f04017a

    iget-object v8, p0, Lcom/android/incallui/SelectSimActivity;->mAccountHandles:Ljava/util/List;

    invoke-direct {v4, p0, v6, v7, v8}, Lcom/android/incallui/SelectSimActivity$SelectAccountListAdapter;-><init>(Lcom/android/incallui/SelectSimActivity;Landroid/content/Context;ILjava/util/List;)V

    .line 110
    .local v4, "selectAccountListAdapter":Landroid/widget/ListAdapter;
    const v6, 0x7f0902ac

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 111
    invoke-virtual {v6, v4, v5}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 112
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    sput-object v6, Lcom/android/incallui/SelectSimActivity;->alertDialog:Landroid/app/AlertDialog;

    .line 113
    sget-object v6, Lcom/android/incallui/SelectSimActivity;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 114
    .local v3, "lpDialog":Landroid/view/WindowManager$LayoutParams;
    iget v6, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v7, 0x80000

    or-int/2addr v6, v7

    iput v6, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 115
    sget-object v6, Lcom/android/incallui/SelectSimActivity;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 116
    sget-object v6, Lcom/android/incallui/SelectSimActivity;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x7de

    invoke-virtual {v6, v7}, Landroid/view/Window;->setType(I)V

    .line 118
    sget-object v6, Lcom/android/incallui/SelectSimActivity;->alertDialog:Landroid/app/AlertDialog;

    new-instance v7, Lcom/android/incallui/SelectSimActivity$3;

    invoke-direct {v7, p0}, Lcom/android/incallui/SelectSimActivity$3;-><init>(Lcom/android/incallui/SelectSimActivity;)V

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 123
    sget-object v6, Lcom/android/incallui/SelectSimActivity;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    goto :goto_1
.end method

.method public onUserLeaveHint()V
    .locals 2

    .prologue
    .line 186
    invoke-super {p0}, Landroid/app/Activity;->onUserLeaveHint()V

    .line 187
    invoke-virtual {p0}, Lcom/android/incallui/SelectSimActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 188
    sget-object v0, Lcom/android/incallui/SelectSimActivity;->TAG:Ljava/lang/String;

    const-string v1, "home button pressed"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    invoke-virtual {p0}, Lcom/android/incallui/SelectSimActivity;->finish()V

    .line 192
    :cond_0
    return-void
.end method
