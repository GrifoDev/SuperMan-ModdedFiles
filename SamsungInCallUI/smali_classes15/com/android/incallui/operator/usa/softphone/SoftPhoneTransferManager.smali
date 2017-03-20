.class public Lcom/android/incallui/operator/usa/softphone/SoftPhoneTransferManager;
.super Ljava/lang/Object;
.source "SoftPhoneTransferManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/operator/usa/softphone/SoftPhoneTransferManager$DeviceInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SoftPhoneTransferManager"

.field static final isTest:Z

.field private static sInstance:Lcom/android/incallui/operator/usa/softphone/SoftPhoneTransferManager;


# instance fields
.field isConnected:Z

.field mCurrentDeviceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/incallui/operator/usa/softphone/SoftPhoneTransferManager$DeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field tvDeviceInfo:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    sput-object v0, Lcom/android/incallui/operator/usa/softphone/SoftPhoneTransferManager;->sInstance:Lcom/android/incallui/operator/usa/softphone/SoftPhoneTransferManager;

    return-void
.end method

.method constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-boolean v3, p0, Lcom/android/incallui/operator/usa/softphone/SoftPhoneTransferManager;->isConnected:Z

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/operator/usa/softphone/SoftPhoneTransferManager;->mCurrentDeviceList:Ljava/util/ArrayList;

    .line 59
    const-string v0, "SoftPhoneTransferManager"

    const-string v1, "created"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 60
    iput-boolean v3, p0, Lcom/android/incallui/operator/usa/softphone/SoftPhoneTransferManager;->isConnected:Z

    .line 61
    return-void
.end method

.method public static getCountryIso(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 291
    if-nez p0, :cond_0

    .line 293
    const/4 v1, 0x0

    .line 319
    :goto_0
    return-object v1

    .line 297
    :cond_0
    const/4 v1, 0x0

    .line 299
    .local v1, "countryIso":Ljava/lang/String;
    invoke-static {p0}, Lcom/android/incallui/wrapper/CountryDetectorWrapper;->getSystemService(Landroid/content/Context;)Lcom/android/incallui/wrapper/CountryDetectorWrapper;

    move-result-object v2

    .line 301
    .local v2, "detector":Lcom/android/incallui/wrapper/CountryDetectorWrapper;
    if-eqz v2, :cond_1

    .line 303
    invoke-virtual {v2}, Lcom/android/incallui/wrapper/CountryDetectorWrapper;->detectCountry()Lcom/android/incallui/wrapper/CountryWrapper;

    move-result-object v0

    .line 305
    .local v0, "country":Lcom/android/incallui/wrapper/CountryWrapper;
    if-eqz v0, :cond_2

    .line 307
    invoke-virtual {v0}, Lcom/android/incallui/wrapper/CountryWrapper;->getCountryIso()Ljava/lang/String;

    move-result-object v1

    .line 317
    .end local v0    # "country":Lcom/android/incallui/wrapper/CountryWrapper;
    :cond_1
    :goto_1
    const-string v3, "SoftPhoneTransferManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCountryIso countryIso: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 311
    .restart local v0    # "country":Lcom/android/incallui/wrapper/CountryWrapper;
    :cond_2
    const-string v3, "SoftPhoneTransferManager"

    const-string v4, "CountryDetector.detectCountry() returned null."

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static declared-synchronized getInstance()Lcom/android/incallui/operator/usa/softphone/SoftPhoneTransferManager;
    .locals 2

    .prologue
    .line 52
    const-class v1, Lcom/android/incallui/operator/usa/softphone/SoftPhoneTransferManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/incallui/operator/usa/softphone/SoftPhoneTransferManager;->sInstance:Lcom/android/incallui/operator/usa/softphone/SoftPhoneTransferManager;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Lcom/android/incallui/operator/usa/softphone/SoftPhoneTransferManager;

    invoke-direct {v0}, Lcom/android/incallui/operator/usa/softphone/SoftPhoneTransferManager;-><init>()V

    sput-object v0, Lcom/android/incallui/operator/usa/softphone/SoftPhoneTransferManager;->sInstance:Lcom/android/incallui/operator/usa/softphone/SoftPhoneTransferManager;

    .line 55
    :cond_0
    sget-object v0, Lcom/android/incallui/operator/usa/softphone/SoftPhoneTransferManager;->sInstance:Lcom/android/incallui/operator/usa/softphone/SoftPhoneTransferManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private isSupportSoftphone()Z
    .locals 1

    .prologue
    .line 64
    const-string v0, "support_softphone"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    const/4 v0, 0x1

    .line 67
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isValidString(Ljava/lang/String;)Z
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 280
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 281
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private makeDialog(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/incallui/operator/usa/softphone/SoftPhoneTransferManager$DeviceInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 113
    .local p2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/incallui/operator/usa/softphone/SoftPhoneTransferManager$DeviceInfo;>;"
    if-nez p1, :cond_0

    .line 189
    :goto_0
    return-void

    .line 116
    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    .line 117
    .local v5, "inflater":Landroid/view/LayoutInflater;
    const v11, 0x7f04010c

    const/4 v12, 0x0

    invoke-virtual {v5, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 119
    .local v4, "dialogView":Landroid/view/View;
    const v11, 0x7f100355

    invoke-virtual {v4, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, p0, Lcom/android/incallui/operator/usa/softphone/SoftPhoneTransferManager;->tvDeviceInfo:Landroid/widget/TextView;

    .line 120
    const v11, 0x7f100356

    invoke-virtual {v4, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/RadioGroup;

    .line 122
    .local v10, "rg":Landroid/widget/RadioGroup;
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/operator/usa/softphone/SoftPhoneTransferManager$DeviceInfo;

    .line 123
    .local v2, "deviceInfo":Lcom/android/incallui/operator/usa/softphone/SoftPhoneTransferManager$DeviceInfo;
    new-instance v9, Landroid/widget/RadioButton;

    new-instance v12, Landroid/view/ContextThemeWrapper;

    const v13, 0x7f0b014b

    invoke-direct {v12, p1, v13}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v9, v12}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    .line 124
    .local v9, "rb":Landroid/widget/RadioButton;
    invoke-virtual {v2}, Lcom/android/incallui/operator/usa/softphone/SoftPhoneTransferManager$DeviceInfo;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 126
    invoke-virtual {v9, v2}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    .line 127
    new-instance v12, Lcom/android/incallui/operator/usa/softphone/SoftPhoneTransferManager$1;

    invoke-direct {v12, p0}, Lcom/android/incallui/operator/usa/softphone/SoftPhoneTransferManager$1;-><init>(Lcom/android/incallui/operator/usa/softphone/SoftPhoneTransferManager;)V

    invoke-virtual {v9, v12}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 136
    invoke-virtual {v10, v9}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 139
    .end local v2    # "deviceInfo":Lcom/android/incallui/operator/usa/softphone/SoftPhoneTransferManager$DeviceInfo;
    .end local v9    # "rb":Landroid/widget/RadioButton;
    :cond_1
    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/RadioButton;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 140
    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/RadioButton;

    invoke-virtual {v11}, Landroid/widget/RadioButton;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/incallui/operator/usa/softphone/SoftPhoneTransferManager$DeviceInfo;

    .line 141
    .local v6, "info":Lcom/android/incallui/operator/usa/softphone/SoftPhoneTransferManager$DeviceInfo;
    iget-object v11, p0, Lcom/android/incallui/operator/usa/softphone/SoftPhoneTransferManager;->tvDeviceInfo:Landroid/widget/TextView;

    invoke-virtual {v11, v6}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 143
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v1

    .line 144
    .local v1, "call":Lcom/android/incallui/Call;
    const-string v7, "no data"

    .line 145
    .local v7, "number":Ljava/lang/String;
    const-string v8, "Transfer this call"

    .line 146
    .local v8, "numberText":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 147
    invoke-virtual {v1}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 148
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v12

    invoke-static {p1}, Lcom/android/incallui/operator/usa/softphone/SoftPhoneTransferManager;->getCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 151
    :cond_2
    iget-object v11, p0, Lcom/android/incallui/operator/usa/softphone/SoftPhoneTransferManager;->tvDeviceInfo:Landroid/widget/TextView;

    invoke-virtual {v11, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    new-instance v0, Landroid/app/AlertDialog$Builder;

    new-instance v11, Landroid/view/ContextThemeWrapper;

    const v12, 0x7f0b0019

    invoke-direct {v11, p1, v12}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v11}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 154
    .local v0, "buider":Landroid/app/AlertDialog$Builder;
    const-string v11, "Transfer call"

    invoke-virtual {v0, v11}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 155
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 156
    const-string v11, "TRANSFER"

    new-instance v12, Lcom/android/incallui/operator/usa/softphone/SoftPhoneTransferManager$2;

    invoke-direct {v12, p0}, Lcom/android/incallui/operator/usa/softphone/SoftPhoneTransferManager$2;-><init>(Lcom/android/incallui/operator/usa/softphone/SoftPhoneTransferManager;)V

    invoke-virtual {v0, v11, v12}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 174
    const-string v11, "CANCEL"

    new-instance v12, Lcom/android/incallui/operator/usa/softphone/SoftPhoneTransferManager$3;

    invoke-direct {v12, p0}, Lcom/android/incallui/operator/usa/softphone/SoftPhoneTransferManager$3;-><init>(Lcom/android/incallui/operator/usa/softphone/SoftPhoneTransferManager;)V

    invoke-virtual {v0, v11, v12}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 182
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 184
    .local v3, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v11

    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Landroid/view/Window;->addFlags(I)V

    .line 185
    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v11

    const/16 v12, 0x7de

    invoke-virtual {v11, v12}, Landroid/view/Window;->setType(I)V

    .line 187
    const/4 v11, 0x0

    invoke-virtual {v3, v11}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 188
    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0
.end method

.method private parseDeviceName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x2

    .line 268
    if-eqz p1, :cond_0

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 276
    .end local p1    # "str":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 271
    .restart local p1    # "str":Ljava/lang/String;
    :cond_1
    const-string v1, ";"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 272
    .local v0, "strList":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    .line 273
    const-string v1, "SoftPhoneTransferManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parsingDeviceName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v0, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 274
    aget-object p1, v0, v4

    goto :goto_0
.end method

.method private shouldRestrictShowingMenu()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 87
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4, v2}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 88
    .local v0, "call":Lcom/android/incallui/Call;
    invoke-static {v0}, Lcom/android/incallui/util/CallTypeUtils;->checkEmergencyCall(Lcom/android/incallui/Call;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 89
    const-string v2, "SoftPhoneTransferManager"

    const-string v3, "shouldRestrictShowingMenu() - emergency call"

    invoke-static {v2, v3, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 95
    :goto_0
    return v1

    .line 91
    :cond_0
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->isMultipartyCall()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 92
    const-string v2, "SoftPhoneTransferManager"

    const-string v3, "shouldRestrictShowingMenu() - multi party call"

    invoke-static {v2, v3, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    move v1, v2

    .line 95
    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    .line 285
    const-string v0, "SoftPhoneTransferManager"

    const-string v1, "clear()"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 286
    return-void
.end method

.method public connectService(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/incallui/operator/usa/softphone/SoftPhoneTransferManager;->isSupportSoftphone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    const-string v0, "SoftPhoneTransferManager"

    const-string v1, "not tablet and ATT"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 75
    :cond_0
    return-void
.end method

.method public getDeviceList()Ljava/util/ArrayList;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/incallui/operator/usa/softphone/SoftPhoneTransferManager$DeviceInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 192
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/incallui/InCallApp;->getIMSManagerWrapper()Lcom/android/incallui/service/ims/IMSManagerWrapper;

    move-result-object v8

    .line 193
    .local v8, "imsManagerWrapper":Lcom/android/incallui/service/ims/IMSManagerWrapper;
    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/operator/usa/softphone/SoftPhoneTransferManager;->isSupportSoftphone()Z

    move-result v17

    if-eqz v17, :cond_0

    invoke-virtual {v8}, Lcom/android/incallui/service/ims/IMSManagerWrapper;->isIMSReady()Z

    move-result v17

    if-nez v17, :cond_1

    .line 194
    :cond_0
    const/16 v17, 0x0

    .line 264
    :goto_0
    return-object v17

    .line 196
    :cond_1
    const-string v17, "SoftPhoneTransferManager"

    const-string v18, "getDeviceList"

    const/16 v19, 0x1

    invoke-static/range {v17 .. v19}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 197
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/incallui/operator/usa/softphone/SoftPhoneTransferManager;->isConnected:Z

    move/from16 v17, v0

    if-nez v17, :cond_2

    .line 198
    const-string v17, "SoftPhoneTransferManager"

    const-string v18, "getDeviceList() - isConnected = false"

    const/16 v19, 0x1

    invoke-static/range {v17 .. v19}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 199
    const/16 v17, 0x0

    goto :goto_0

    .line 202
    :cond_2
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/incallui/operator/usa/softphone/SoftPhoneTransferManager;->mCurrentDeviceList:Ljava/util/ArrayList;

    .line 204
    const-string v17, "com.sec.ims.util.NameAddr"

    invoke-static/range {v17 .. v17}, Lcom/android/incallui/wrapper/ReflectUtil;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    .line 205
    .local v12, "nameAddr":Ljava/lang/Class;
    const-string v17, "com.sec.ims.util.ImsUri"

    invoke-static/range {v17 .. v17}, Lcom/android/incallui/wrapper/ReflectUtil;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    .line 207
    .local v9, "imsUri":Ljava/lang/Class;
    const/4 v5, 0x0

    .line 208
    .local v5, "getDisplayName":Ljava/lang/reflect/Method;
    const/4 v7, 0x0

    .line 209
    .local v7, "getUri":Ljava/lang/reflect/Method;
    if-eqz v12, :cond_3

    .line 210
    const-string v17, "getDisplayName"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    sget-object v20, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    aput-object v20, v18, v19

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v12, v0, v1}, Lcom/android/incallui/wrapper/ReflectUtil;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 211
    const-string v17, "getUri"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    sget-object v20, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    aput-object v20, v18, v19

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v12, v0, v1}, Lcom/android/incallui/wrapper/ReflectUtil;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 214
    :cond_3
    const/4 v6, 0x0

    .line 215
    .local v6, "getParam":Ljava/lang/reflect/Method;
    if-eqz v9, :cond_4

    .line 216
    const-string v17, "getParam"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const-class v20, Ljava/lang/String;

    aput-object v20, v18, v19

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v9, v0, v1}, Lcom/android/incallui/wrapper/ReflectUtil;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 220
    :cond_4
    const-class v17, Lcom/sec/ims/ImsRegistration;

    const-string v18, "getDeviceList"

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v19, v0

    invoke-static/range {v17 .. v19}, Lcom/android/incallui/wrapper/ReflectUtil;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 223
    .local v4, "getDeviceList":Ljava/lang/reflect/Method;
    invoke-virtual {v8}, Lcom/android/incallui/service/ims/IMSManagerWrapper;->getRegistrationInfo()[Lcom/sec/ims/ImsRegistration;

    move-result-object v17

    if-nez v17, :cond_5

    .line 224
    const-string v17, "SoftPhoneTransferManager"

    const-string v18, "getRegistrationInfo = null"

    const/16 v19, 0x1

    invoke-static/range {v17 .. v19}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 225
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 228
    :cond_5
    invoke-virtual {v8}, Lcom/android/incallui/service/ims/IMSManagerWrapper;->getRegistrationInfo()[Lcom/sec/ims/ImsRegistration;

    move-result-object v18

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v19, v0

    const/16 v17, 0x0

    :goto_1
    move/from16 v0, v17

    move/from16 v1, v19

    if-ge v0, v1, :cond_9

    aget-object v15, v18, v17

    .line 229
    .local v15, "r":Lcom/sec/ims/ImsRegistration;
    invoke-virtual {v15}, Lcom/sec/ims/ImsRegistration;->getOwnNumber()Ljava/lang/String;

    move-result-object v14

    .line 232
    .local v14, "ownNumber":Ljava/lang/String;
    const/16 v20, 0x0

    :try_start_0
    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-static {v15, v4, v0}, Lcom/android/incallui/wrapper/ReflectUtil;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    .line 233
    .local v13, "objects":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    if-nez v13, :cond_7

    .line 228
    .end local v13    # "objects":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_6
    :goto_2
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 235
    .restart local v13    # "objects":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_7
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_3
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_6

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .line 236
    .local v10, "na":Ljava/lang/Object;
    const/16 v21, 0x0

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-static {v10, v5, v0}, Lcom/android/incallui/wrapper/ReflectUtil;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 237
    .local v11, "name":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/incallui/operator/usa/softphone/SoftPhoneTransferManager;->parseDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 239
    const/16 v21, 0x0

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-static {v10, v7, v0}, Lcom/android/incallui/wrapper/ReflectUtil;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    .line 240
    .local v16, "uri":Ljava/lang/Object;
    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const-string v23, "gr"

    aput-object v23, v21, v22

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-static {v0, v6, v1}, Lcom/android/incallui/wrapper/ReflectUtil;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 242
    .local v2, "deviceId":Ljava/lang/String;
    const-string v21, "SoftPhoneTransferManager"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "name = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", deviceId = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x1

    invoke-static/range {v21 .. v23}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 244
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/incallui/operator/usa/softphone/SoftPhoneTransferManager;->isValidString(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_8

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/incallui/operator/usa/softphone/SoftPhoneTransferManager;->isValidString(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_8

    .line 245
    const-string v11, "My smartphone"

    .line 248
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/operator/usa/softphone/SoftPhoneTransferManager;->mCurrentDeviceList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    new-instance v22, Lcom/android/incallui/operator/usa/softphone/SoftPhoneTransferManager$DeviceInfo;

    move-object/from16 v0, v22

    invoke-direct {v0, v11, v2, v14}, Lcom/android/incallui/operator/usa/softphone/SoftPhoneTransferManager$DeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v21 .. v22}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    .line 250
    .end local v2    # "deviceId":Ljava/lang/String;
    .end local v10    # "na":Ljava/lang/Object;
    .end local v11    # "name":Ljava/lang/String;
    .end local v13    # "objects":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v16    # "uri":Ljava/lang/Object;
    :catch_0
    move-exception v3

    .line 251
    .local v3, "e":Ljava/lang/Exception;
    const-string v20, "SoftPhoneTransferManager"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "getDeviceList - get NameAddr error, "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x1

    invoke-static/range {v20 .. v22}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_2

    .line 261
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v14    # "ownNumber":Ljava/lang/String;
    .end local v15    # "r":Lcom/sec/ims/ImsRegistration;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/operator/usa/softphone/SoftPhoneTransferManager;->mCurrentDeviceList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    if-nez v17, :cond_a

    .line 262
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/incallui/operator/usa/softphone/SoftPhoneTransferManager;->mCurrentDeviceList:Ljava/util/ArrayList;

    .line 264
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/operator/usa/softphone/SoftPhoneTransferManager;->mCurrentDeviceList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    goto/16 :goto_0
.end method

.method public isExistDeviceList()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 78
    invoke-direct {p0}, Lcom/android/incallui/operator/usa/softphone/SoftPhoneTransferManager;->shouldRestrictShowingMenu()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 83
    :cond_0
    :goto_0
    return v1

    .line 80
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/operator/usa/softphone/SoftPhoneTransferManager;->getDeviceList()Ljava/util/ArrayList;

    move-result-object v0

    .line 81
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/incallui/operator/usa/softphone/SoftPhoneTransferManager$DeviceInfo;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 82
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public showDeviceList()V
    .locals 5

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/android/incallui/operator/usa/softphone/SoftPhoneTransferManager;->isSupportSoftphone()Z

    move-result v2

    if-nez v2, :cond_1

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    const-string v2, "SoftPhoneTransferManager"

    const-string v3, "showDeviceList()"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 102
    invoke-virtual {p0}, Lcom/android/incallui/operator/usa/softphone/SoftPhoneTransferManager;->getDeviceList()Ljava/util/ArrayList;

    .line 103
    iget-object v2, p0, Lcom/android/incallui/operator/usa/softphone/SoftPhoneTransferManager;->mCurrentDeviceList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 106
    const/4 v1, 0x0

    .line 107
    .local v1, "context":Landroid/content/Context;
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    .line 109
    .local v0, "activity":Lcom/android/incallui/InCallActivity;
    iget-object v2, p0, Lcom/android/incallui/operator/usa/softphone/SoftPhoneTransferManager;->mCurrentDeviceList:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v2}, Lcom/android/incallui/operator/usa/softphone/SoftPhoneTransferManager;->makeDialog(Landroid/content/Context;Ljava/util/ArrayList;)V

    goto :goto_0
.end method
