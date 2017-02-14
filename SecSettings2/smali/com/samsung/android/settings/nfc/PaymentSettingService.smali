.class public Lcom/samsung/android/settings/nfc/PaymentSettingService;
.super Landroid/app/Service;
.source "PaymentSettingService.java"


# instance fields
.field private appInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mAdapter:Landroid/nfc/NfcAdapter;

.field private mCardEmuManager:Landroid/nfc/cardemulation/CardEmulation;

.field private mPaymentBackend:Lcom/samsung/android/settings/nfc/PaymentBackend;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private getPaymentAppInfosComponent(Landroid/content/Context;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/settings/nfc/PaymentSettingService;->mAdapter:Landroid/nfc/NfcAdapter;

    iget-object v5, p0, Lcom/samsung/android/settings/nfc/PaymentSettingService;->mAdapter:Landroid/nfc/NfcAdapter;

    invoke-static {v5}, Landroid/nfc/cardemulation/CardEmulation;->getInstance(Landroid/nfc/NfcAdapter;)Landroid/nfc/cardemulation/CardEmulation;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/settings/nfc/PaymentSettingService;->mCardEmuManager:Landroid/nfc/cardemulation/CardEmulation;

    iget-object v5, p0, Lcom/samsung/android/settings/nfc/PaymentSettingService;->mCardEmuManager:Landroid/nfc/cardemulation/CardEmulation;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/samsung/android/settings/nfc/PaymentSettingService;->mCardEmuManager:Landroid/nfc/cardemulation/CardEmulation;

    const-string/jumbo v6, "payment"

    invoke-virtual {v5, v6}, Landroid/nfc/cardemulation/CardEmulation;->getServices(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-nez v4, :cond_1

    const-string/jumbo v5, "TapandpayWidget:PaymentSettingService"

    const-string/jumbo v6, "appInfos is null!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/nfc/cardemulation/ApduServiceInfo;

    new-instance v0, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    invoke-direct {v0}, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;-><init>()V

    invoke-virtual {v2}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    iput-object v5, v0, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-object v1
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 6

    const/16 v4, -0xa

    if-eqz p1, :cond_0

    const-string/jumbo v3, "INDEX"

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_1

    const-string/jumbo v3, "TapandpayWidget:PaymentSettingService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "index is not initalized. out of index : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    if-nez p1, :cond_9

    const-string/jumbo v3, "TapandpayWidget:PaymentSettingService"

    const-string/jumbo v4, "Intetnt is null - onStartCommand"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x2

    return v3

    :cond_1
    invoke-direct {p0, p0}, Lcom/samsung/android/settings/nfc/PaymentSettingService;->getPaymentAppInfosComponent(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/nfc/PaymentSettingService;->appInfos:Ljava/util/List;

    new-instance v3, Lcom/samsung/android/settings/nfc/PaymentBackend;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/nfc/PaymentBackend;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/samsung/android/settings/nfc/PaymentSettingService;->mPaymentBackend:Lcom/samsung/android/settings/nfc/PaymentBackend;

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/PaymentSettingService;->appInfos:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/PaymentSettingService;->appInfos:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/PaymentSettingService;->mPaymentBackend:Lcom/samsung/android/settings/nfc/PaymentBackend;

    if-eqz v3, :cond_0

    const/4 v3, -0x1

    if-eq v1, v3, :cond_2

    const/4 v3, -0x8

    if-ne v1, v3, :cond_4

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/settings/nfc/PaymentSettingService;->appInfos:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    :cond_3
    :goto_1
    if-gez v1, :cond_6

    const-string/jumbo v3, "TapandpayWidget:PaymentSettingService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "out of index < 0 : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/samsung/android/settings/nfc/PaymentSettingService;->appInfos:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eq v1, v3, :cond_5

    const/4 v3, -0x6

    if-ne v1, v3, :cond_3

    :cond_5
    const/4 v1, 0x0

    goto :goto_1

    :cond_6
    iget-object v3, p0, Lcom/samsung/android/settings/nfc/PaymentSettingService;->appInfos:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_8

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/PaymentSettingService;->appInfos:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    iget-object v3, v0, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/PaymentSettingService;->mPaymentBackend:Lcom/samsung/android/settings/nfc/PaymentBackend;

    iget-object v4, v0, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/nfc/PaymentBackend;->setDefaultPaymentApp(Landroid/content/ComponentName;)V

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.sec.settings.action.NFC_PAYMENT_REFRESH"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "com.sec.android.widgetapp.tapandpay"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/nfc/PaymentSettingService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const-string/jumbo v3, "TapandpayWidget:PaymentSettingService"

    const-string/jumbo v4, "Tap and pay widget update."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v3, "TapandpayWidget:PaymentSettingService"

    const-string/jumbo v4, "appInfo\'s componentName is null."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_8
    const-string/jumbo v3, "TapandpayWidget:PaymentSettingService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "out of index : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_9
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v3

    return v3
.end method
