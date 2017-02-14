.class public Lcom/samsung/android/settings/nfc/OtherBackend;
.super Ljava/lang/Object;
.source "OtherBackend.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;
    }
.end annotation


# static fields
.field static final DBG:Z


# instance fields
.field private final mAdapter:Landroid/nfc/NfcAdapter;

.field private final mCardEmuManager:Landroid/nfc/cardemulation/CardEmulation;

.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/samsung/android/settings/nfc/PaymentSettings;->DBG:Z

    sput-boolean v0, Lcom/samsung/android/settings/nfc/OtherBackend;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/OtherBackend;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/OtherBackend;->mAdapter:Landroid/nfc/NfcAdapter;

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/OtherBackend;->mAdapter:Landroid/nfc/NfcAdapter;

    invoke-static {v0}, Landroid/nfc/cardemulation/CardEmulation;->getInstance(Landroid/nfc/NfcAdapter;)Landroid/nfc/cardemulation/CardEmulation;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/OtherBackend;->mCardEmuManager:Landroid/nfc/cardemulation/CardEmulation;

    return-void
.end method


# virtual methods
.method public disableDefaultOtherApp(Landroid/content/ComponentName;)V
    .locals 2

    sget-boolean v0, Lcom/samsung/android/settings/nfc/OtherBackend;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "Settings.OtherBackend"

    const-string/jumbo v1, "support other category - unsetOtherService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/OtherBackend;->mCardEmuManager:Landroid/nfc/cardemulation/CardEmulation;

    invoke-virtual {v0, p1}, Landroid/nfc/cardemulation/CardEmulation;->unsetOtherService(Landroid/content/ComponentName;)Z

    return-void
.end method

.method public enableDefaultOtherApp(Landroid/content/ComponentName;)V
    .locals 2

    sget-boolean v0, Lcom/samsung/android/settings/nfc/OtherBackend;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "Settings.OtherBackend"

    const-string/jumbo v1, "support other category - setOtherService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/OtherBackend;->mCardEmuManager:Landroid/nfc/cardemulation/CardEmulation;

    invoke-virtual {v0, p1}, Landroid/nfc/cardemulation/CardEmulation;->setOtherService(Landroid/content/ComponentName;)Z

    return-void
.end method

.method public getOtherAppInfos()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;",
            ">;"
        }
    .end annotation

    iget-object v7, p0, Lcom/samsung/android/settings/nfc/OtherBackend;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v7, p0, Lcom/samsung/android/settings/nfc/OtherBackend;->mCardEmuManager:Landroid/nfc/cardemulation/CardEmulation;

    const-string/jumbo v8, "other"

    invoke-virtual {v7, v8}, Landroid/nfc/cardemulation/CardEmulation;->getServices(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-nez v6, :cond_0

    return-object v1

    :cond_0
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/nfc/cardemulation/ApduServiceInfo;

    invoke-virtual {v4}, Landroid/nfc/cardemulation/ApduServiceInfo;->isOnHost()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v7

    const-string/jumbo v8, "CscFeature_NFC_EnableFelica"

    invoke-virtual {v7, v8}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    :cond_2
    new-instance v0, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;

    invoke-direct {v0}, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;-><init>()V

    invoke-virtual {v4, v3}, Landroid/nfc/cardemulation/ApduServiceInfo;->loadBanner(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, v0, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;->banner:Landroid/graphics/drawable/Drawable;

    iget-object v7, v0, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;->banner:Landroid/graphics/drawable/Drawable;

    if-nez v7, :cond_3

    iget-object v7, p0, Lcom/samsung/android/settings/nfc/OtherBackend;->mAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v4}, Landroid/nfc/cardemulation/ApduServiceInfo;->getBannerName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/nfc/NfcAdapter;->loadBanner(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_3

    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v7, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v7, v0, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;->banner:Landroid/graphics/drawable/Drawable;

    :cond_3
    invoke-virtual {v4, v3}, Landroid/nfc/cardemulation/ApduServiceInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, v0, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;->icon:Landroid/graphics/drawable/Drawable;

    iget-object v7, v0, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;->banner:Landroid/graphics/drawable/Drawable;

    if-nez v7, :cond_4

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v7

    const-string/jumbo v8, "CscFeature_NFC_EnableFelica"

    invoke-virtual {v7, v8}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v4, v3}, Landroid/nfc/cardemulation/ApduServiceInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, v0, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;->banner:Landroid/graphics/drawable/Drawable;

    :cond_4
    invoke-virtual {v4}, Landroid/nfc/cardemulation/ApduServiceInfo;->getDescription()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;->caption:Ljava/lang/CharSequence;

    invoke-virtual {v4, v3}, Landroid/nfc/cardemulation/ApduServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    iput-object v7, v0, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;->title:Ljava/lang/CharSequence;

    iget-object v7, v0, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;->caption:Ljava/lang/CharSequence;

    if-nez v7, :cond_5

    invoke-virtual {v4, v3}, Landroid/nfc/cardemulation/ApduServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    iput-object v7, v0, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;->caption:Ljava/lang/CharSequence;

    :cond_5
    invoke-virtual {v4}, Landroid/nfc/cardemulation/ApduServiceInfo;->isSelectedOtherService()Z

    move-result v7

    iput-boolean v7, v0, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;->isSelected:Z

    invoke-virtual {v4}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    iput-object v7, v0, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_6
    return-object v1
.end method
