.class public Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;
.super Landroid/app/AlertDialog;
.source "EthernetConfigDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/ethernet/EthernetConfigDialog$1;
    }
.end annotation


# instance fields
.field ipTextWatcher:Landroid/text/TextWatcher;

.field private mConTypeDhcp:Landroid/widget/RadioButton;

.field private mConTypeManual:Landroid/widget/RadioButton;

.field private mContext:Landroid/content/Context;

.field private mDevList:Landroid/widget/Spinner;

.field private mDevs:Landroid/widget/TextView;

.field private mDns:Landroid/widget/EditText;

.field private mEnablePending:Z

.field private mEthEnabler:Lcom/samsung/android/settings/ethernet/EthernetEnabler;

.field private mEthInfo:Landroid/net/EthernetDevInfo;

.field private mEthLayer:Lcom/samsung/android/settings/ethernet/EthernetLayer;

.field private mEthManager:Landroid/net/EthernetManager;

.field private mGw:Landroid/widget/EditText;

.field private mIpaddr:Landroid/widget/EditText;

.field private mMask:Landroid/widget/EditText;

.field private mOuterLayout:Landroid/widget/LinearLayout;

.field private mView:Landroid/view/View;

.field private staticInputView:Landroid/view/View;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;)Landroid/widget/RadioButton;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mConTypeManual:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mDns:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mGw:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mIpaddr:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mMask:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->staticInputView:Landroid/view/View;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/settings/ethernet/EthernetEnabler;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog$1;-><init>(Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;)V

    iput-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->ipTextWatcher:Landroid/text/TextWatcher;

    iput-object p1, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/samsung/android/settings/ethernet/EthernetLayer;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/ethernet/EthernetLayer;-><init>(Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;)V

    iput-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mEthLayer:Lcom/samsung/android/settings/ethernet/EthernetLayer;

    iput-object p2, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mEthEnabler:Lcom/samsung/android/settings/ethernet/EthernetEnabler;

    invoke-virtual {p2}, Lcom/samsung/android/settings/ethernet/EthernetEnabler;->getManager()Landroid/net/EthernetManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mEthManager:Landroid/net/EthernetManager;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->buildDialogContent(Landroid/content/Context;)I

    return-void
.end method

.method private handle_saveconf()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    new-instance v0, Landroid/net/EthernetDevInfo;

    invoke-direct {v0}, Landroid/net/EthernetDevInfo;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mDevList:Landroid/widget/Spinner;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mDevList:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mEthEnabler:Lcom/samsung/android/settings/ethernet/EthernetEnabler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/ethernet/EthernetEnabler;->setCheckBox(I)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mDevList:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/EthernetDevInfo;->setIfName(Ljava/lang/String;)V

    const-string/jumbo v1, "EtherenetSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Config device for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mDevList:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mConTypeDhcp:Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "EtherenetSettings"

    const-string/jumbo v2, "mode dhcp"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "dhcp"

    invoke-virtual {v0, v1}, Landroid/net/EthernetDevInfo;->setConnectMode(Ljava/lang/String;)Z

    invoke-virtual {v0, v4}, Landroid/net/EthernetDevInfo;->setIpAddress(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroid/net/EthernetDevInfo;->setRouteAddr(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroid/net/EthernetDevInfo;->setDnsAddr(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Landroid/net/EthernetDevInfo;->setNetMask(I)V

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mEthManager:Landroid/net/EthernetManager;

    invoke-virtual {v1, v0}, Landroid/net/EthernetManager;->UpdateEthDevInfo(Landroid/net/EthernetDevInfo;)V

    iget-boolean v1, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mEnablePending:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mEthEnabler:Lcom/samsung/android/settings/ethernet/EthernetEnabler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/ethernet/EthernetEnabler;->setCheckBox(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mEthManager:Landroid/net/EthernetManager;

    invoke-virtual {v1, v5}, Landroid/net/EthernetManager;->setUserDisabled(Z)V

    iput-boolean v5, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mEnablePending:Z

    :cond_2
    return-void

    :cond_3
    const-string/jumbo v1, "EtherenetSettings"

    const-string/jumbo v2, "mode manual"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "manual"

    invoke-virtual {v0, v1}, Landroid/net/EthernetDevInfo;->setConnectMode(Ljava/lang/String;)Z

    iget-object v1, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mIpaddr:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/EthernetDevInfo;->setIpAddress(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mGw:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/EthernetDevInfo;->setRouteAddr(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mDns:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/EthernetDevInfo;->setDnsAddr(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mMask:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->invertNetMask(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/EthernetDevInfo;->setNetMask(I)V

    goto :goto_0
.end method

.method private ipAndProxyFieldsAreValid()Z
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v1, "EtherenetSettings"

    const-string/jumbo v2, "ipAndProxyFieldsAreValid"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mConTypeManual:Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->validateIpConfigFields()I

    move-result v0

    if-eqz v0, :cond_0

    return v3

    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method private validateIpConfigField(Landroid/widget/EditText;)I
    .locals 5

    const-string/jumbo v3, "EtherenetSettings"

    const-string/jumbo v4, "validateIpConfigField"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    return v3

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-static {v2}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    const/4 v3, 0x0

    return v3

    :catch_0
    move-exception v0

    const-string/jumbo v3, "EtherenetSettings"

    const-string/jumbo v4, "validateIpConfigField : has IllegalArgumentException"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x2

    return v3
.end method

.method private validateIpConfigFields()I
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x0

    const-string/jumbo v0, "EtherenetSettings"

    const-string/jumbo v1, "validateIpConfigFields"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mIpaddr:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->validateIpConfigField(Landroid/widget/EditText;)I

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "EtherenetSettings"

    const-string/jumbo v1, "mIpaddr is not valid"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mDns:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->validateIpConfigField(Landroid/widget/EditText;)I

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "EtherenetSettings"

    const-string/jumbo v1, "mDns is not valid"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mGw:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->validateIpConfigField(Landroid/widget/EditText;)I

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "EtherenetSettings"

    const-string/jumbo v1, "mGw is not valid"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mMask:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->validateIpConfigField(Landroid/widget/EditText;)I

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "EtherenetSettings"

    const-string/jumbo v1, "mMask is not valid"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_3
    return v2
.end method


# virtual methods
.method public buildDialogContent(Landroid/content/Context;)I
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0400eb

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->setView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mView:Landroid/view/View;

    const v1, 0x7f110356

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->staticInputView:Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mView:Landroid/view/View;

    const v1, 0x7f110350

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mDevs:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mView:Landroid/view/View;

    const v1, 0x7f110351

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mDevList:Landroid/widget/Spinner;

    iget-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mView:Landroid/view/View;

    const v1, 0x7f110354

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mConTypeDhcp:Landroid/widget/RadioButton;

    iget-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mView:Landroid/view/View;

    const v1, 0x7f110355

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mConTypeManual:Landroid/widget/RadioButton;

    iget-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mView:Landroid/view/View;

    const v1, 0x7f110358

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mIpaddr:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mIpaddr:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->ipTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mView:Landroid/view/View;

    const v1, 0x7f11035a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mMask:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mMask:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->ipTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mView:Landroid/view/View;

    const v1, 0x7f11035c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mDns:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mDns:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->ipTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mView:Landroid/view/View;

    const v1, 0x7f11035e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mGw:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mGw:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->ipTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mView:Landroid/view/View;

    const v1, 0x7f11034e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mOuterLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mConTypeDhcp:Landroid/widget/RadioButton;

    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mConTypeManual:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mIpaddr:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mMask:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mDns:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mGw:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mConTypeManual:Landroid/widget/RadioButton;

    new-instance v1, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog$2;-><init>(Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mConTypeDhcp:Landroid/widget/RadioButton;

    new-instance v1, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog$3;-><init>(Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->setInverseBackgroundForced(Z)V

    const v0, 0x7f0b1428

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0, p0}, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const v0, 0x7f0b1429

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, -0x2

    invoke-virtual {p0, v1, v0, p0}, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return v3
.end method

.method public enableSaveIfAppropriate()V
    .locals 4

    const-string/jumbo v2, "EtherenetSettings"

    const-string/jumbo v3, "enableSaveIfAppropriate"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    if-nez v1, :cond_0

    const-string/jumbo v2, "EtherenetSettings"

    const-string/jumbo v3, "save button is not set"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->ipAndProxyFieldsAreValid()Z

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mEthManager:Landroid/net/EthernetManager;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mEthManager:Landroid/net/EthernetManager;

    invoke-virtual {v2}, Landroid/net/EthernetManager;->isEthConnected()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "EtherenetSettings"

    const-string/jumbo v3, "Ethernet state is enabled so disabling save button"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :cond_1
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method public invertNetMask(Ljava/lang/String;)I
    .locals 3

    const-string/jumbo v0, "EtherenetSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invertNetMask:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "255.0.0.0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    return v0

    :cond_0
    const-string/jumbo v0, "255.255.0.0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x10

    return v0

    :cond_1
    const-string/jumbo v0, "255.255.255.0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x18

    return v0

    :cond_2
    const-string/jumbo v0, "255.255.255.255"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x20

    return v0

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    packed-switch p2, :pswitch_data_0

    const-string/jumbo v0, "EtherenetSettings"

    const-string/jumbo v1, "Unknow button"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->handle_saveconf()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mEthEnabler:Lcom/samsung/android/settings/ethernet/EthernetEnabler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/ethernet/EthernetEnabler;->setCheckBox(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mEthEnabler:Lcom/samsung/android/settings/ethernet/EthernetEnabler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/ethernet/EthernetEnabler;->setCheckBox(I)V

    invoke-super {p0, p1, p2}, Landroid/app/AlertDialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :cond_0
    return v0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    return-void
.end method

.method protected onStart()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string/jumbo v2, "EtherenetSettings"

    const-string/jumbo v3, "onStart to initialze/re-set"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v2, "eth0"

    aput-object v2, v0, v5

    const-string/jumbo v2, "eth0"

    aput-object v2, v0, v5

    iget-object v2, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mEthManager:Landroid/net/EthernetManager;

    invoke-virtual {v2}, Landroid/net/EthernetManager;->isEthConnected()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "EtherenetSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "found device: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v0, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->updateDevNameList([Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mEthManager:Landroid/net/EthernetManager;

    invoke-virtual {v2}, Landroid/net/EthernetManager;->getSavedEthConfig()Landroid/net/EthernetDevInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mEthInfo:Landroid/net/EthernetDevInfo;

    iget-object v2, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mEthInfo:Landroid/net/EthernetDevInfo;

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    aget-object v2, v0, v1

    iget-object v3, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mEthInfo:Landroid/net/EthernetDevInfo;

    invoke-virtual {v3}, Landroid/net/EthernetDevInfo;->getIfName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mDevList:Landroid/widget/Spinner;

    invoke-virtual {v2, v1}, Landroid/widget/Spinner;->setSelection(I)V

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mIpaddr:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mEthInfo:Landroid/net/EthernetDevInfo;

    invoke-virtual {v3}, Landroid/net/EthernetDevInfo;->getIpAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mGw:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mEthInfo:Landroid/net/EthernetDevInfo;

    invoke-virtual {v3}, Landroid/net/EthernetDevInfo;->getRouteAddr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mDns:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mEthInfo:Landroid/net/EthernetDevInfo;

    invoke-virtual {v3}, Landroid/net/EthernetDevInfo;->getDnsAddr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mMask:Landroid/widget/EditText;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mEthInfo:Landroid/net/EthernetDevInfo;

    invoke-virtual {v4}, Landroid/net/EthernetDevInfo;->getNetMask()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mEthInfo:Landroid/net/EthernetDevInfo;

    invoke-virtual {v2}, Landroid/net/EthernetDevInfo;->getConnectMode()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "dhcp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mConTypeDhcp:Landroid/widget/RadioButton;

    invoke-virtual {v2, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mConTypeManual:Landroid/widget/RadioButton;

    invoke-virtual {v2, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->staticInputView:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mIpaddr:Landroid/widget/EditText;

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mDns:Landroid/widget/EditText;

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mGw:Landroid/widget/EditText;

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mMask:Landroid/widget/EditText;

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->enableSaveIfAppropriate()V

    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->enableSaveIfAppropriate()V

    iget-object v2, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mOuterLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->requestFocus()Z

    invoke-super {p0}, Landroid/app/AlertDialog;->onStart()V

    return-void

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mConTypeDhcp:Landroid/widget/RadioButton;

    invoke-virtual {v2, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mConTypeManual:Landroid/widget/RadioButton;

    invoke-virtual {v2, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mIpaddr:Landroid/widget/EditText;

    invoke-virtual {v2, v6}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mDns:Landroid/widget/EditText;

    invoke-virtual {v2, v6}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mGw:Landroid/widget/EditText;

    invoke-virtual {v2, v6}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mMask:Landroid/widget/EditText;

    invoke-virtual {v2, v6}, Landroid/widget/EditText;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->enableSaveIfAppropriate()V

    goto :goto_1
.end method

.method public updateDevNameList([Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_0

    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1090008

    invoke-direct {v0, v1, v2, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const v1, 0x1090009

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mDevList:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    :cond_0
    return-void
.end method
