.class public Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;
.super Landroid/support/v7/preference/SecPreference;
.source "PaymentDropDownPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$Callback;,
        Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$ResultHandler;,
        Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$SimListArrayAdapter;
    }
.end annotation


# static fields
.field private static mPlmnSIM:[Ljava/lang/String;


# instance fields
.field private SimState_1:Ljava/lang/String;

.field private SimState_2:Ljava/lang/String;

.field private dialog:Landroid/app/ProgressDialog;

.field entries:[Ljava/lang/CharSequence;

.field entryValues:[Ljava/lang/CharSequence;

.field private hasClicked:Z

.field private final mAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCallback:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$Callback;

.field public final mContext:Landroid/content/Context;

.field private final mHiddenValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mIndex:I

.field private mListAdapter:Landroid/widget/ListAdapter;

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private final mSpinner:Landroid/widget/Spinner;

.field private final mValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field simIcon:[Landroid/graphics/drawable/Drawable;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->dialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mIndex:I

    return v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;)Landroid/nfc/NfcAdapter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    return-object v0
.end method

.method static synthetic -get3()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mPlmnSIM:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;)Landroid/widget/Spinner;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mSpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->hasClicked:Z

    return p1
.end method

.method static synthetic -set1(Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mIndex:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->isMultiSim()Z

    move-result v0

    return v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/SecPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v0, 0x9

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->simIcon:[Landroid/graphics/drawable/Drawable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mValues:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mHiddenValues:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    new-instance v0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$1;

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mContext:Landroid/content/Context;

    const v2, 0x1090008

    invoke-direct {v0, p0, v1, v2}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$1;-><init>(Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    const v1, 0x1090009

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mPlmnSIM:[Ljava/lang/String;

    invoke-direct {p0}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->isMultiSim()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ril.ICC_TYPE0"

    const-string/jumbo v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->SimState_1:Ljava/lang/String;

    const-string/jumbo v0, "ril.ICC_TYPE1"

    const-string/jumbo v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->SimState_2:Ljava/lang/String;

    :cond_0
    new-instance v0, Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mSpinner:Landroid/widget/Spinner;

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mSpinner:Landroid/widget/Spinner;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mSpinner:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->onUpdateAdapter()V

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mSpinner:Landroid/widget/Spinner;

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mListAdapter:Landroid/widget/ListAdapter;

    check-cast v0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$SimListArrayAdapter;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mSpinner:Landroid/widget/Spinner;

    iget v1, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mIndex:I

    invoke-virtual {v0, v1, v3}, Landroid/widget/Spinner;->setSelection(IZ)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mSpinner:Landroid/widget/Spinner;

    new-instance v1, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$2;-><init>(Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->setPersistent(Z)V

    new-instance v0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$3;-><init>(Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method

.method public static getRatString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v1, ":"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "UMTS"

    aget-object v2, v0, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "HSPA"

    aget-object v2, v0, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "HSDPA"

    aget-object v2, v0, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "HSUPA"

    aget-object v2, v0, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "HSPAP"

    aget-object v2, v0, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "TD-SCDMA"

    aget-object v2, v0, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string/jumbo v1, " 3G"

    return-object v1

    :cond_1
    const-string/jumbo v1, "LTE"

    aget-object v2, v0, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, " 4G"

    return-object v1

    :cond_2
    const-string/jumbo v1, ""

    return-object v1
.end method

.method private getSimIcon(I)Landroid/graphics/drawable/Drawable;
    .locals 8

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    :try_start_0
    iget-object v6, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "select_icon_1"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v4

    iget-object v6, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "select_icon_2"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    :goto_0
    if-nez p1, :cond_0

    move v3, v4

    :goto_1
    const-string/jumbo v1, ""

    packed-switch v3, :pswitch_data_0

    :goto_2
    iget-object v6, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string/jumbo v7, "drawable"

    invoke-virtual {p0, v1, v7}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->getResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_0

    :cond_0
    move v3, v5

    goto :goto_1

    :pswitch_0
    const-string/jumbo v1, "@drawable/sim_card_ic_01"

    goto :goto_2

    :pswitch_1
    const-string/jumbo v1, "@drawable/sim_card_ic_02"

    goto :goto_2

    :pswitch_2
    const-string/jumbo v1, "@drawable/sim_card_ic_call"

    goto :goto_2

    :pswitch_3
    const-string/jumbo v1, "@drawable/sim_card_ic_sms"

    goto :goto_2

    :pswitch_4
    const-string/jumbo v1, "@drawable/sim_card_ic_mms"

    goto :goto_2

    :pswitch_5
    const-string/jumbo v1, "@drawable/sim_card_ic_internet"

    goto :goto_2

    :pswitch_6
    const-string/jumbo v1, "@drawable/sim_card_ic_home"

    goto :goto_2

    :pswitch_7
    const-string/jumbo v1, "@drawable/sim_card_ic_office"

    goto :goto_2

    :pswitch_8
    const-string/jumbo v1, "@drawable/sim_card_ic_heart"

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private isMultiSim()Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addItem(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mValues:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public chinaDisabled_offslot(I)Z
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "phone1_on"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v4, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "phone2_on"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v4, :cond_2

    const/4 v1, 0x1

    :goto_1
    const-string/jumbo v2, "ril.ICC_TYPE0"

    const-string/jumbo v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->SimState_1:Ljava/lang/String;

    const-string/jumbo v2, "ril.ICC_TYPE1"

    const-string/jumbo v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->SimState_2:Ljava/lang/String;

    if-nez p1, :cond_3

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->SimState_1:Ljava/lang/String;

    const-string/jumbo v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_0
    return v4

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    if-ne p1, v4, :cond_5

    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->SimState_2:Ljava/lang/String;

    const-string/jumbo v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    return v4

    :cond_5
    return v5
.end method

.method public clearItems()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mValues:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public getEntryArray()[Ljava/lang/String;
    .locals 4

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "select_name_1"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "select_name_2"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    return-object v2
.end method

.method public getPhonePLMNName(I)Ljava/lang/String;
    .locals 9

    const/4 v8, 0x0

    const-string/jumbo v1, ""

    iget-object v6, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f1207e9

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "phone"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v6

    aget v6, v6, v8

    invoke-virtual {v4, v6}, Landroid/telephony/TelephonyManager;->getServiceStateForSubscriber(I)Landroid/telephony/ServiceState;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    const-string/jumbo v6, "gsm.operator.alpha"

    invoke-static {p1, v6, v5}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isChinaHKTWModel()Z

    move-result v6

    if-eqz v6, :cond_f

    :cond_0
    const/4 v6, 0x1

    if-eq v2, v6, :cond_1

    const/4 v6, 0x3

    if-ne v2, v6, :cond_3

    :cond_1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10404ae

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_2
    :goto_0
    return-object v1

    :cond_3
    const/4 v6, 0x2

    if-ne v2, v6, :cond_4

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10402f8

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_4
    iget-object v6, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v7

    aget v7, v7, v8

    invoke-virtual {v6, v7}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v6, "CMCC"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string/jumbo v6, "CHINA MOBILE"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    :cond_5
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10401d3

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_6
    :goto_1
    const-string/jumbo v6, "gsm.network.type"

    const-string/jumbo v7, "0"

    invoke-static {p1, v6, v7}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v0}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->getRatString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_7
    const-string/jumbo v6, "CHN-UNICOM"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    const-string/jumbo v6, "CHN-CUGSM"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    :cond_8
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1040250

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_9
    const-string/jumbo v6, "Chunghwa Telecom"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10401b4

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_a
    const-string/jumbo v6, "Far EasTone"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1040353

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_b
    const-string/jumbo v6, "VIBO"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c

    const-string/jumbo v6, "T Star"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    :cond_c
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1040ae6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    :cond_d
    const-string/jumbo v6, "TW Mobile"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1040a89

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    :cond_e
    const-string/jumbo v6, "China Telecom"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1040245

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    :cond_f
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v6

    aget v6, v6, v8

    invoke-virtual {v4, v6}, Landroid/telephony/TelephonyManager;->getSimOperatorName(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v6, ""

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    move-object v1, v3

    goto/16 :goto_0
.end method

.method public getResId(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, p2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/support/v7/preference/SecPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    iget-object v1, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public onUpdateAdapter()V
    .locals 10

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "0"

    aput-object v1, v0, v3

    const-string/jumbo v1, "1"

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->entryValues:[Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->simIcon:[Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->getSimIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v0, v3

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->simIcon:[Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v4}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->getSimIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->getEntryArray()[Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->entries:[Ljava/lang/CharSequence;

    sget-object v0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mPlmnSIM:[Ljava/lang/String;

    const-string/jumbo v1, "ril.ICC_TYPE0"

    const-string/jumbo v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-direct {p0}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->isMultiSim()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mPlmnSIM:[Ljava/lang/String;

    const-string/jumbo v1, "ril.ICC_TYPE1"

    const-string/jumbo v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    :cond_0
    const/4 v9, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getPreferredSimSlot()I

    move-result v9

    const/4 v0, -0x1

    if-ne v9, v0, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mIndex:I
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    iput v9, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mIndex:I

    new-instance v0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$SimListArrayAdapter;

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "@layout/nfc_sim_dropdown_list_view_row"

    const-string/jumbo v3, "layout"

    invoke-virtual {p0, v1, v3}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->getResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->entries:[Ljava/lang/CharSequence;

    iget v5, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mIndex:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$SimListArrayAdapter;-><init>(Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;Landroid/content/Context;I[Ljava/lang/CharSequence;I)V

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mListAdapter:Landroid/widget/ListAdapter;

    return-void

    :catch_0
    move-exception v7

    const-string/jumbo v0, "PaymentDropDownPreference"

    const-string/jumbo v1, "Dual SWP nullpointerexception"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v6

    const-string/jumbo v0, "PaymentDropDownPreference"

    const-string/jumbo v1, "Dual SWP not support"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6}, Ljava/lang/NoSuchMethodError;->printStackTrace()V

    goto :goto_0
.end method

.method public setCallback(Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mCallback:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$Callback;

    return-void
.end method

.method public setPLMNName(Ljava/lang/String;I)V
    .locals 9

    const/4 v8, 0x1

    const v7, 0x7f1207e9

    const/4 v6, 0x0

    const-string/jumbo v3, "PaymentDropDownPreference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setPLMN Name() plmn = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " slot = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    new-array v1, v3, [Ljava/lang/String;

    const-string/jumbo v3, "ril.MSIMM"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "1"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    aget-object v3, v1, v6

    aput-object v3, v1, v8

    const-string/jumbo v3, "0"

    aput-object v3, v1, v6

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    if-ge v2, v3, :cond_4

    if-ne p2, v2, :cond_1

    sget-object v4, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mPlmnSIM:[Ljava/lang/String;

    const-string/jumbo v3, "0"

    aget-object v5, v1, v2

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    move-object v3, p1

    :goto_1
    aput-object v3, v4, v2

    if-nez p2, :cond_3

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->SimState_1:Ljava/lang/String;

    const-string/jumbo v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mPlmnSIM:[Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_3
    if-ne p2, v8, :cond_1

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->SimState_2:Ljava/lang/String;

    const-string/jumbo v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mPlmnSIM:[Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    goto :goto_2

    :cond_4
    return-void
.end method

.method public setResult(I)Z
    .locals 8

    const/4 v7, 0x1

    const/4 v4, 0x0

    move v2, p1

    iget-boolean v3, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->hasClicked:Z

    if-eqz v3, :cond_0

    iput-boolean v4, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->hasClicked:Z

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->chinaDisabled_offslot(I)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$ResultHandler;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$ResultHandler;-><init>(Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;)V

    new-instance v1, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$ResultHandler;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$ResultHandler;-><init>(Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;)V

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mContext:Landroid/content/Context;

    const-string/jumbo v4, ""

    iget-object v5, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mContext:Landroid/content/Context;

    const v6, 0x7f1212bc

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5, v7}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->dialog:Landroid/app/ProgressDialog;

    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$4;

    invoke-direct {v4, p0, p1, v0, v1}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$4;-><init>(Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;ILcom/samsung/android/settings/nfc/PaymentDropDownPreference$ResultHandler;Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$ResultHandler;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    return v7

    :cond_0
    return v4
.end method

.method public setSelectedItem(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->setSelectedItem(IZ)V

    return-void
.end method

.method public setSelectedItem(IZ)V
    .locals 3

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mValues:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz p2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mCallback:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$Callback;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mCallback:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$Callback;

    invoke-interface {v2, p1, v1}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$Callback;->onItemSelected(ILjava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, p1}, Landroid/widget/Spinner;->setSelection(I)V

    iput p1, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mIndex:I

    if-nez v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->notifyDependencyChange(Z)V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSelectedValue(Ljava/lang/Object;Z)V
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->entryValues:[Ljava/lang/CharSequence;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v1, v1, v2

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    invoke-virtual {p0, v0, p2}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->setSelectedItem(IZ)V

    :cond_0
    return-void
.end method
