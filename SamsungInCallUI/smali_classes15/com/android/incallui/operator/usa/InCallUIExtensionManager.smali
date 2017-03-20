.class public Lcom/android/incallui/operator/usa/InCallUIExtensionManager;
.super Ljava/lang/Object;
.source "InCallUIExtensionManager.java"


# static fields
.field private static final DBG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "InCallUIExtensionManager"

.field private static final VDBG:Z = true

.field private static final sInstance:Lcom/android/incallui/operator/usa/InCallUIExtensionManager;


# instance fields
.field private mCallRoamingGuardDialog:Landroid/app/AlertDialog;

.field private final mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mServiceState:I

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    new-instance v0, Lcom/android/incallui/operator/usa/InCallUIExtensionManager;

    invoke-direct {v0}, Lcom/android/incallui/operator/usa/InCallUIExtensionManager;-><init>()V

    sput-object v0, Lcom/android/incallui/operator/usa/InCallUIExtensionManager;->sInstance:Lcom/android/incallui/operator/usa/InCallUIExtensionManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/incallui/operator/usa/InCallUIExtensionManager;->mServiceState:I

    .line 72
    new-instance v0, Lcom/android/incallui/operator/usa/InCallUIExtensionManager$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/operator/usa/InCallUIExtensionManager$1;-><init>(Lcom/android/incallui/operator/usa/InCallUIExtensionManager;)V

    iput-object v0, p0, Lcom/android/incallui/operator/usa/InCallUIExtensionManager;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/operator/usa/InCallUIExtensionManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/operator/usa/InCallUIExtensionManager;

    .prologue
    .line 44
    iget v0, p0, Lcom/android/incallui/operator/usa/InCallUIExtensionManager;->mServiceState:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/incallui/operator/usa/InCallUIExtensionManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/operator/usa/InCallUIExtensionManager;
    .param p1, "x1"    # I

    .prologue
    .line 44
    iput p1, p0, Lcom/android/incallui/operator/usa/InCallUIExtensionManager;->mServiceState:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/incallui/operator/usa/InCallUIExtensionManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/operator/usa/InCallUIExtensionManager;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/incallui/operator/usa/InCallUIExtensionManager;->dismissCallRoamingGuardDialog()V

    return-void
.end method

.method private dismissCallRoamingGuardDialog()V
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/incallui/operator/usa/InCallUIExtensionManager;->mCallRoamingGuardDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/android/incallui/operator/usa/InCallUIExtensionManager;->mCallRoamingGuardDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 186
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/operator/usa/InCallUIExtensionManager;->mCallRoamingGuardDialog:Landroid/app/AlertDialog;

    .line 188
    :cond_0
    return-void
.end method

.method private getCallRoamingGuardMessage(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v4, 0x7f09044b

    .line 147
    invoke-static {}, Lcom/android/incallui/operator/usa/InCallUIExtensionManager;->getPhoneType()I

    move-result v1

    .line 148
    .local v1, "phoneType":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCallRoamingGuardMessage : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    const/4 v0, 0x0

    .line 150
    .local v0, "message":Ljava/lang/String;
    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 151
    invoke-static {}, Lcom/android/incallui/operator/usa/InCallUIExtension;->isRoamingSettingInService()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 152
    invoke-static {}, Lcom/android/incallui/operator/usa/InCallUIExtension;->isDomesticRoamingSettingInService()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 153
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09044a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 166
    :cond_0
    :goto_0
    return-object v0

    .line 154
    :cond_1
    invoke-static {}, Lcom/android/incallui/operator/usa/InCallUIExtension;->isInternationalRoamingSettingInService()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 155
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 157
    :cond_2
    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    .line 159
    :cond_3
    invoke-static {}, Lcom/android/incallui/operator/usa/InCallUIExtension;->isInternationalRoamingSettingInServiceGsm()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 160
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 163
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected phone type : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getInstance()Lcom/android/incallui/operator/usa/InCallUIExtensionManager;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/android/incallui/operator/usa/InCallUIExtensionManager;->sInstance:Lcom/android/incallui/operator/usa/InCallUIExtensionManager;

    return-object v0
.end method

.method private static getPhoneType()I
    .locals 4

    .prologue
    .line 170
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 171
    .local v0, "context":Landroid/content/Context;
    const-string v3, "phone"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 172
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    .line 173
    .local v1, "phoneType":I
    return v1
.end method

.method private showCallRoamingGuardDialog(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "systemDialog"    # Z

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/android/incallui/operator/usa/InCallUIExtensionManager;->isCallRoamingGuardDialogShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    :goto_0
    return-void

    .line 121
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 122
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040014

    .line 123
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    .line 124
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/incallui/operator/usa/InCallUIExtensionManager$3;

    invoke-direct {v2, p0}, Lcom/android/incallui/operator/usa/InCallUIExtensionManager$3;-><init>(Lcom/android/incallui/operator/usa/InCallUIExtensionManager;)V

    .line 125
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/incallui/operator/usa/InCallUIExtensionManager$2;

    invoke-direct {v1, p0}, Lcom/android/incallui/operator/usa/InCallUIExtensionManager$2;-><init>(Lcom/android/incallui/operator/usa/InCallUIExtensionManager;)V

    .line 129
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 138
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/operator/usa/InCallUIExtensionManager;->mCallRoamingGuardDialog:Landroid/app/AlertDialog;

    .line 139
    if-eqz p3, :cond_1

    .line 140
    iget-object v0, p0, Lcom/android/incallui/operator/usa/InCallUIExtensionManager;->mCallRoamingGuardDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d8

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 141
    iget-object v0, p0, Lcom/android/incallui/operator/usa/InCallUIExtensionManager;->mCallRoamingGuardDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x961

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 143
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/operator/usa/InCallUIExtensionManager;->mCallRoamingGuardDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method private showHDVoiceCallText(Landroid/content/Context;Landroid/view/View;Z)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hDVoiceCallText"    # Landroid/view/View;
    .param p3, "show"    # Z

    .prologue
    const/4 v3, 0x0

    .line 216
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showHDVoiceCallText - show : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 217
    if-eqz p2, :cond_1

    .line 218
    if-eqz p3, :cond_0

    .line 219
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0904e0

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 220
    .local v1, "hdVoiceCallTextResource":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v4, ""

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "hdVoiceCallTextFormat":Ljava/lang/String;
    move-object v2, p2

    .line 221
    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    .end local v0    # "hdVoiceCallTextFormat":Ljava/lang/String;
    .end local v1    # "hdVoiceCallTextResource":Ljava/lang/String;
    :cond_0
    if-eqz p3, :cond_2

    move v2, v3

    :goto_0
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 225
    :cond_1
    return-void

    .line 223
    :cond_2
    const/16 v2, 0x8

    goto :goto_0
.end method


# virtual methods
.method public dismissCallRoamingGuardDialog(Z)V
    .locals 1
    .param p1, "force"    # Z

    .prologue
    .line 191
    invoke-virtual {p0}, Lcom/android/incallui/operator/usa/InCallUIExtensionManager;->isCallRoamingGuardDialogShowing()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    .line 192
    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/operator/usa/InCallUIExtensionManager;->dismissCallRoamingGuardDialog()V

    .line 193
    :cond_1
    return-void
.end method

.method public isCallRoamingGuardDialog(Landroid/content/Context;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/android/incallui/operator/usa/InCallUIExtensionManager;->getCallRoamingGuardMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, "message":Ljava/lang/String;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 108
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isCallRoamingGuardDialogShowing()Z
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/incallui/operator/usa/InCallUIExtensionManager;->mCallRoamingGuardDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/android/incallui/operator/usa/InCallUIExtensionManager;->mCallRoamingGuardDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    .line 180
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showCallRoamingGuardDialog(Landroid/content/Context;Lcom/android/incallui/Call;Z)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "call"    # Lcom/android/incallui/Call;
    .param p3, "systemDialog"    # Z

    .prologue
    .line 112
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 113
    invoke-direct {p0, p1}, Lcom/android/incallui/operator/usa/InCallUIExtensionManager;->getCallRoamingGuardMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, "message":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-direct {p0, p1, v0, p3}, Lcom/android/incallui/operator/usa/InCallUIExtensionManager;->showCallRoamingGuardDialog(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 116
    .end local v0    # "message":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public showHDVoiceCallIcon(Landroid/view/View;Landroid/view/View;Z)V
    .locals 4
    .param p1, "hDVoiceCallStatus"    # Landroid/view/View;
    .param p2, "hDVoiceCallIcon"    # Landroid/view/View;
    .param p3, "show"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showHDVoiceCallIcon - show : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 197
    if-eqz p1, :cond_0

    .line 198
    if-eqz p3, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 199
    :cond_0
    if-eqz p2, :cond_1

    if-eqz p3, :cond_3

    :goto_1
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 200
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 198
    goto :goto_0

    :cond_3
    move v1, v2

    .line 199
    goto :goto_1
.end method

.method public telephonyManager(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/incallui/operator/usa/InCallUIExtensionManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 69
    iget-object v0, p0, Lcom/android/incallui/operator/usa/InCallUIExtensionManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/incallui/operator/usa/InCallUIExtensionManager;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 70
    return-void
.end method

.method public updateHDVoiceCallText(Landroid/content/Context;Landroid/view/View;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hDVoiceCallText"    # Landroid/view/View;
    .param p3, "state"    # I

    .prologue
    .line 203
    packed-switch p3, :pswitch_data_0

    .line 210
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/incallui/operator/usa/InCallUIExtensionManager;->showHDVoiceCallText(Landroid/content/Context;Landroid/view/View;Z)V

    .line 213
    :goto_0
    return-void

    .line 207
    :pswitch_0
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/incallui/operator/usa/InCallUIExtensionManager;->showHDVoiceCallText(Landroid/content/Context;Landroid/view/View;Z)V

    goto :goto_0

    .line 203
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
